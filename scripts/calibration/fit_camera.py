#!/usr/bin/env python3
"""Fit evidence-camera parameters from explicit 2D<->3D landmark correspondences.

The solver intentionally replaces manual heading/target-height grids with a
numerical reprojection-error objective. It can keep camera position fixed or
use soft GPS/height priors and can optionally refine focal scale, principal
point, and simple radial distortion (k1/k2).

Input: validation/camera_landmarks.yaml
Output: validation/camera_fits/<VIEW>.json
"""
from __future__ import annotations

import argparse
import hashlib
import json
import math
from pathlib import Path
from typing import Any

import numpy as np
import yaml
from scipy.optimize import least_squares
from scipy.spatial.transform import Rotation

ROOT = Path(__file__).resolve().parents[2]
DEFAULT_OBSERVATIONS = ROOT / "validation" / "camera_landmarks.yaml"
DEFAULT_OUT = ROOT / "validation" / "camera_fits"


def _vec(value, n: int, name: str) -> np.ndarray:
    arr = np.asarray(value, dtype=float)
    if arr.shape != (n,):
        raise ValueError(f"{name} must contain exactly {n} numeric values")
    return arr


def _look_at_world_to_camera(position: np.ndarray, target: np.ndarray) -> np.ndarray:
    """Return a right-handed world->camera matrix with x right, y down, z forward."""
    forward = target - position
    norm = np.linalg.norm(forward)
    if norm < 1e-9:
        raise ValueError("camera position and target must differ")
    forward /= norm
    world_up = np.array([0.0, 0.0, 1.0])
    right = np.cross(forward, world_up)
    if np.linalg.norm(right) < 1e-8:
        world_up = np.array([0.0, 1.0, 0.0])
        right = np.cross(forward, world_up)
    right /= np.linalg.norm(right)
    up = np.cross(right, forward)
    up /= np.linalg.norm(up)
    return np.vstack([right, -up, forward])


def _camera_intrinsics(view: dict[str, Any]) -> tuple[float, float, float, float]:
    width, height = map(float, view["image_size_px"])
    camera = view["initial_camera"]
    if "focal_px" in camera:
        fx = float(camera["focal_px"])
    else:
        focal_mm = float(camera["focal_length_mm"])
        sensor_width_mm = float(camera["sensor_width_mm"])
        fx = focal_mm / sensor_width_mm * width
    pixel_aspect = float(camera.get("pixel_aspect", 1.0))
    fy = fx * pixel_aspect
    principal = camera.get("principal_point_px", [width / 2.0, height / 2.0])
    cx, cy = map(float, principal)
    return fx, fy, cx, cy


def _normalized_view_hash(view: dict[str, Any]) -> str:
    payload = json.dumps(view, sort_keys=True, separators=(",", ":"), ensure_ascii=True)
    return hashlib.sha256(payload.encode("utf-8")).hexdigest()


def _pack_initial(view: dict[str, Any]):
    camera = view["initial_camera"]
    position0 = _vec(camera["position_m"], 3, "initial_camera.position_m")
    target0 = _vec(camera["target_m"], 3, "initial_camera.target_m")
    r0 = Rotation.from_matrix(_look_at_world_to_camera(position0, target0)).as_rotvec()
    fx0, fy0, cx0, cy0 = _camera_intrinsics(view)
    k0 = _vec(camera.get("distortion_k1_k2", [0.0, 0.0]), 2, "distortion_k1_k2")
    optimize = view.get("optimize", {})

    values = {
        "rotation": r0.copy(),
        "position": position0.copy(),
        "log_focal_scale": 0.0,
        "principal_shift": np.zeros(2),
        "distortion": k0.copy(),
    }
    fields: list[tuple[str, int]] = []
    if optimize.get("rotation", True):
        fields.append(("rotation", 3))
    if optimize.get("position", False):
        fields.append(("position", 3))
    if optimize.get("focal_scale", False):
        fields.append(("log_focal_scale", 1))
    if optimize.get("principal_point", False):
        fields.append(("principal_shift", 2))
    if optimize.get("radial_distortion", False):
        fields.append(("distortion", 2))

    chunks = []
    for key, n in fields:
        arr = np.atleast_1d(values[key]).astype(float)
        if arr.size != n:
            raise AssertionError((key, arr, n))
        chunks.append(arr)
    x0 = np.concatenate(chunks) if chunks else np.zeros(0)
    return values, fields, x0, (fx0, fy0, cx0, cy0), r0, position0


def _unpack(base: dict[str, Any], fields, x: np.ndarray):
    values = {
        "rotation": np.asarray(base["rotation"], dtype=float).copy(),
        "position": np.asarray(base["position"], dtype=float).copy(),
        "log_focal_scale": float(base["log_focal_scale"]),
        "principal_shift": np.asarray(base["principal_shift"], dtype=float).copy(),
        "distortion": np.asarray(base["distortion"], dtype=float).copy(),
    }
    idx = 0
    for key, n in fields:
        part = x[idx : idx + n]
        idx += n
        values[key] = float(part[0]) if n == 1 else part.copy()
    return values


def _project(points: np.ndarray, values, intrinsics):
    fx0, fy0, cx0, cy0 = intrinsics
    scale = math.exp(float(values["log_focal_scale"]))
    fx, fy = fx0 * scale, fy0 * scale
    cx = cx0 + float(values["principal_shift"][0])
    cy = cy0 + float(values["principal_shift"][1])
    k1, k2 = map(float, values["distortion"])

    rotation = Rotation.from_rotvec(np.asarray(values["rotation"], dtype=float))
    pc = rotation.apply(points - np.asarray(values["position"], dtype=float))
    z = pc[:, 2]
    if np.any(z <= 1e-6):
        return None, pc

    x = pc[:, 0] / z
    y = pc[:, 1] / z
    r2 = x * x + y * y
    radial = 1.0 + k1 * r2 + k2 * r2 * r2
    xd, yd = x * radial, y * radial
    uv = np.column_stack([fx * xd + cx, fy * yd + cy])
    return uv, pc


def _fit_view(view_id: str, view: dict[str, Any]) -> dict[str, Any]:
    landmarks = view.get("landmarks") or []
    acceptance = view.get("acceptance", {})
    min_landmarks = int(acceptance.get("min_landmarks", 8))
    if len(landmarks) < min_landmarks:
        raise ValueError(
            f"{view_id}: need at least {min_landmarks} landmarks, found {len(landmarks)}"
        )

    object_points = np.asarray([lm["model_xyz_m"] for lm in landmarks], dtype=float)
    image_points = np.asarray([lm["image_xy_px"] for lm in landmarks], dtype=float)
    sigma_px = np.asarray([float(lm.get("sigma_px", 3.0)) for lm in landmarks], dtype=float)
    if object_points.shape != (len(landmarks), 3):
        raise ValueError(f"{view_id}: every model_xyz_m must have 3 values")
    if image_points.shape != (len(landmarks), 2):
        raise ValueError(f"{view_id}: every image_xy_px must have 2 values")
    if np.any(sigma_px <= 0):
        raise ValueError(f"{view_id}: landmark sigma_px must be positive")

    base, fields, x0, intrinsics, r0, position0 = _pack_initial(view)
    priors = view.get("priors", {})

    def residual(x):
        values = _unpack(base, fields, x)
        uv, pc = _project(object_points, values, intrinsics)
        if uv is None:
            bad = np.maximum(1e-3, -pc[:, 2] + 1e-3)
            pixel = np.full((len(landmarks), 2), 1e4)
            return np.concatenate([pixel.ravel(), bad * 1e4])
        res = ((uv - image_points) / sigma_px[:, None]).ravel()
        extra = []

        if "position_m" in priors:
            p_ref = _vec(priors["position_m"], 3, "priors.position_m")
            p_sigma = np.asarray(priors.get("position_sigma_m", [5.0, 5.0, 3.0]), dtype=float)
            if p_sigma.shape == ():
                p_sigma = np.repeat(float(p_sigma), 3)
            if p_sigma.shape != (3,) or np.any(p_sigma <= 0):
                raise ValueError(f"{view_id}: position_sigma_m must be positive scalar or vec3")
            extra.extend((np.asarray(values["position"]) - p_ref) / p_sigma)

        rot_sigma_deg = priors.get("rotation_sigma_deg")
        if rot_sigma_deg is not None:
            sigma = math.radians(float(rot_sigma_deg))
            if sigma <= 0:
                raise ValueError(f"{view_id}: rotation_sigma_deg must be positive")
            delta = Rotation.from_rotvec(np.asarray(values["rotation"])) * Rotation.from_rotvec(r0).inv()
            extra.extend(delta.as_rotvec() / sigma)

        focal_sigma = priors.get("focal_scale_sigma")
        if focal_sigma is not None:
            sigma = float(focal_sigma)
            if sigma <= 0:
                raise ValueError(f"{view_id}: focal_scale_sigma must be positive")
            extra.append(float(values["log_focal_scale"]) / sigma)

        pp_sigma = priors.get("principal_point_sigma_px")
        if pp_sigma is not None:
            sigma = float(pp_sigma)
            if sigma <= 0:
                raise ValueError(f"{view_id}: principal_point_sigma_px must be positive")
            extra.extend(np.asarray(values["principal_shift"]) / sigma)

        radial_sigma = priors.get("radial_sigma")
        if radial_sigma is not None:
            sigma = float(radial_sigma)
            if sigma <= 0:
                raise ValueError(f"{view_id}: radial_sigma must be positive")
            extra.extend(np.asarray(values["distortion"]) / sigma)

        return np.concatenate([res, np.asarray(extra, dtype=float)]) if extra else res

    if x0.size:
        result = least_squares(
            residual,
            x0,
            method="trf",
            loss=str(view.get("robust_loss", "soft_l1")),
            f_scale=float(view.get("robust_f_scale", 2.0)),
            max_nfev=int(view.get("max_nfev", 4000)),
        )
        values = _unpack(base, fields, result.x)
        success = bool(result.success)
        message = result.message
        nfev = int(result.nfev)
    else:
        values = base
        success = True
        message = "no free parameters; evaluated initial camera only"
        nfev = 0

    uv, pc = _project(object_points, values, intrinsics)
    if uv is None:
        raise RuntimeError(f"{view_id}: fitted pose leaves landmarks behind camera")
    errors = np.linalg.norm(uv - image_points, axis=1)
    rms = float(np.sqrt(np.mean(errors**2)))
    median = float(np.median(errors))
    p95 = float(np.percentile(errors, 95))
    max_error = float(np.max(errors))

    fx0, fy0, cx0, cy0 = intrinsics
    scale = math.exp(float(values["log_focal_scale"]))
    rotation_matrix = Rotation.from_rotvec(np.asarray(values["rotation"])).as_matrix()
    out = {
        "view_id": view_id,
        "observations_sha256": _normalized_view_hash(view),
        "success": success,
        "optimizer_message": str(message),
        "nfev": nfev,
        "landmark_count": len(landmarks),
        "metrics_px": {
            "rms": rms,
            "median": median,
            "p95": p95,
            "max": max_error,
        },
        "camera": {
            "position_m": [float(v) for v in values["position"]],
            "rotation_world_to_camera": [[float(v) for v in row] for row in rotation_matrix],
            "focal_scale": scale,
            "fx_px": float(fx0 * scale),
            "fy_px": float(fy0 * scale),
            "principal_point_px": [
                float(cx0 + values["principal_shift"][0]),
                float(cy0 + values["principal_shift"][1]),
            ],
            "distortion_k1_k2": [float(v) for v in values["distortion"]],
        },
        "initial_camera": {
            "position_m": [float(v) for v in position0],
            "fx_px": float(fx0),
            "fy_px": float(fy0),
            "principal_point_px": [float(cx0), float(cy0)],
        },
        "landmarks": [
            {
                "id": str(lm["id"]),
                "observed_px": [float(v) for v in image_points[i]],
                "projected_px": [float(v) for v in uv[i]],
                "error_px": float(errors[i]),
                "depth_m": float(pc[i, 2]),
            }
            for i, lm in enumerate(landmarks)
        ],
        "acceptance": {
            "min_landmarks": min_landmarks,
            "rms_px_max": float(acceptance.get("rms_px_max", 15.0)),
            "p95_px_max": float(acceptance.get("p95_px_max", 30.0)),
        },
    }
    out["accepted"] = bool(
        success
        and len(landmarks) >= out["acceptance"]["min_landmarks"]
        and rms <= out["acceptance"]["rms_px_max"]
        and p95 <= out["acceptance"]["p95_px_max"]
    )
    return out


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--view", required=True, help="View id in validation/camera_landmarks.yaml")
    parser.add_argument("--observations", type=Path, default=DEFAULT_OBSERVATIONS)
    parser.add_argument("--out-dir", type=Path, default=DEFAULT_OUT)
    args = parser.parse_args()

    data = yaml.safe_load(args.observations.read_text(encoding="utf-8")) or {}
    views = data.get("views", {})
    if args.view not in views:
        raise SystemExit(f"unknown view {args.view!r}; available: {', '.join(sorted(views))}")
    view = views[args.view]
    if view.get("status") != "annotated":
        raise SystemExit(
            f"{args.view}: status is {view.get('status', 'missing')!r}; annotate landmarks and set status: annotated first"
        )

    fit = _fit_view(args.view, view)
    args.out_dir.mkdir(parents=True, exist_ok=True)
    out_path = args.out_dir / f"{args.view}.json"
    out_path.write_text(json.dumps(fit, indent=2) + "\n", encoding="utf-8")
    print(
        f"{args.view}: rms={fit['metrics_px']['rms']:.2f}px "
        f"p95={fit['metrics_px']['p95']:.2f}px "
        f"landmarks={fit['landmark_count']} accepted={fit['accepted']}"
    )
    print(out_path)
    return 0 if fit["accepted"] else 2


if __name__ == "__main__":
    raise SystemExit(main())
