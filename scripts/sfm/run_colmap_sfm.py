#!/usr/bin/env python3
"""Run model-independent sparse SfM for the Elisabethkirche evidence photos.

This pipeline deliberately does *not* use the Blender massing or GPS pose priors
during reconstruction. Its purpose is to estimate relative camera poses and a
sparse point cloud from image-to-image correspondences only.

COLMAP itself is an external runtime dependency. The script stages the selected
local reference rasters, runs feature extraction / exhaustive matching /
incremental mapping, converts sparse models to text, and writes a compact,
versionable JSON summary under validation/sfm_results/.
"""
from __future__ import annotations

import argparse
import hashlib
import json
import math
import os
import shutil
import subprocess
import sys
from pathlib import Path
from typing import Any

import yaml
from PIL import Image

ROOT = Path(__file__).resolve().parents[2]
CONFIG = ROOT / "validation" / "sfm_config.yaml"
MANIFEST = ROOT / "data" / "manifest.json"


def sha256(path: Path) -> str:
    h = hashlib.sha256()
    with path.open("rb") as fh:
        for chunk in iter(lambda: fh.read(1024 * 1024), b""):
            h.update(chunk)
    return h.hexdigest()


def resolve_colmap() -> str:
    explicit = os.environ.get("COLMAP_EXECUTABLE") or os.environ.get("COLMAP")
    if explicit:
        return explicit
    for candidate in ("colmap", "COLMAP.bat"):
        found = shutil.which(candidate)
        if found:
            return found
    raise RuntimeError(
        "COLMAP executable not found. Install COLMAP or set COLMAP_EXECUTABLE "
        "to colmap / COLMAP.bat."
    )


def command_argv(executable: str, args: list[str]) -> list[str]:
    path = Path(executable)
    if os.name == "nt" and path.suffix.lower() in {".bat", ".cmd"}:
        return ["cmd.exe", "/d", "/s", "/c", subprocess.list2cmdline([executable, *args])]
    return [executable, *args]


def run_command(
    executable: str,
    args: list[str],
    log_path: Path,
    *,
    check: bool = True,
) -> subprocess.CompletedProcess[str]:
    cmd = command_argv(executable, args)
    proc = subprocess.run(
        cmd,
        cwd=ROOT,
        text=True,
        stdout=subprocess.PIPE,
        stderr=subprocess.STDOUT,
        check=False,
    )
    log_path.parent.mkdir(parents=True, exist_ok=True)
    log_path.write_text(
        "$ " + subprocess.list2cmdline(cmd) + "\n\n" + (proc.stdout or ""),
        encoding="utf-8",
    )
    if check and proc.returncode != 0:
        raise RuntimeError(
            f"command failed with exit code {proc.returncode}: "
            f"{subprocess.list2cmdline(cmd)}; see {log_path.relative_to(ROOT)}"
        )
    return proc


def local_asset_path(record: dict[str, Any]) -> Path:
    if record.get("local_file"):
        return ROOT / str(record["local_file"])
    group = record["group"]
    if group == "modern":
        base = ROOT / "references" / "images" / "modern"
    elif group == "historic_pd":
        base = ROOT / "references" / "images" / "historic"
    elif group == "plans":
        base = ROOT / "references" / "plans" / "downloaded"
    else:
        raise ValueError(f"no automatic local path rule for group {group!r}")
    return base / f'{record["id"]}_{Path(record["title"]).name}'


def stage_images(
    image_ids: list[str],
    workspace: Path,
    manifest: dict[str, dict[str, Any]],
) -> list[dict[str, Any]]:
    images_dir = workspace / "images"
    images_dir.mkdir(parents=True, exist_ok=True)
    staged: list[dict[str, Any]] = []
    missing: list[str] = []

    for image_id in image_ids:
        record = manifest.get(image_id)
        if record is None:
            missing.append(f"{image_id}: absent from data/manifest.json")
            continue
        source = local_asset_path(record)
        if not source.is_file():
            missing.append(f"{image_id}: missing {source.relative_to(ROOT)}")
            continue

        suffix = source.suffix.lower() or ".jpg"
        staged_name = f"{image_id}{suffix}"
        dest = images_dir / staged_name
        shutil.copy2(source, dest)
        with Image.open(source) as im:
            width, height = im.size
            exif = im.getexif()
            exif_focal = exif.get(37386)
            camera_model = exif.get(272)
            camera_make = exif.get(271)

        staged.append(
            {
                "id": image_id,
                "source": str(source.relative_to(ROOT)),
                "staged_name": staged_name,
                "width": int(width),
                "height": int(height),
                "sha256": sha256(source),
                "camera_make": str(camera_make) if camera_make else None,
                "camera_model": str(camera_model) if camera_model else None,
                "exif_focal_length": str(exif_focal) if exif_focal else None,
            }
        )

    if missing:
        raise RuntimeError(
            "SfM input images are incomplete:\n  - " + "\n  - ".join(missing)
        )
    return staged


def qvec_to_rot(q: list[float]) -> list[list[float]]:
    qw, qx, qy, qz = q
    return [
        [
            1 - 2 * (qy * qy + qz * qz),
            2 * (qx * qy - qz * qw),
            2 * (qx * qz + qy * qw),
        ],
        [
            2 * (qx * qy + qz * qw),
            1 - 2 * (qx * qx + qz * qz),
            2 * (qy * qz - qx * qw),
        ],
        [
            2 * (qx * qz - qy * qw),
            2 * (qy * qz + qx * qw),
            1 - 2 * (qx * qx + qy * qy),
        ],
    ]


def camera_center(q: list[float], t: list[float]) -> list[float]:
    r = qvec_to_rot(q)
    # C = -R^T t
    return [
        -sum(r[row][col] * t[row] for row in range(3))
        for col in range(3)
    ]


def parse_cameras(path: Path) -> dict[int, dict[str, Any]]:
    cameras: dict[int, dict[str, Any]] = {}
    if not path.exists():
        return cameras
    for raw in path.read_text(encoding="utf-8").splitlines():
        line = raw.strip()
        if not line or line.startswith("#"):
            continue
        parts = line.split()
        if len(parts) < 5:
            continue
        camera_id = int(parts[0])
        cameras[camera_id] = {
            "model": parts[1],
            "width": int(parts[2]),
            "height": int(parts[3]),
            "params": [float(v) for v in parts[4:]],
        }
    return cameras


def parse_images(path: Path) -> list[dict[str, Any]]:
    images: list[dict[str, Any]] = []
    if not path.exists():
        return images
    for raw in path.read_text(encoding="utf-8").splitlines():
        line = raw.strip()
        if not line or line.startswith("#"):
            continue
        parts = line.split()
        if len(parts) < 10:
            continue
        try:
            image_id = int(parts[0])
            q = [float(v) for v in parts[1:5]]
            t = [float(v) for v in parts[5:8]]
            camera_id = int(parts[8])
        except ValueError:
            continue
        # Point-observation lines can be long too, but they do not have this
        # integer/pose/camera layout.
        name = " ".join(parts[9:])
        images.append(
            {
                "image_id": image_id,
                "camera_id": camera_id,
                "name": name,
                "qvec_world_to_camera": q,
                "tvec_world_to_camera": t,
                "center_sfm_units": camera_center(q, t),
            }
        )
    return images


def parse_points(path: Path) -> dict[str, Any]:
    count = 0
    errors: list[float] = []
    if not path.exists():
        return {"count": 0, "mean_reprojection_error_px": None}
    for raw in path.read_text(encoding="utf-8").splitlines():
        line = raw.strip()
        if not line or line.startswith("#"):
            continue
        parts = line.split()
        if len(parts) < 8:
            continue
        try:
            errors.append(float(parts[7]))
            count += 1
        except ValueError:
            continue
    return {
        "count": count,
        "mean_reprojection_error_px": (
            sum(errors) / len(errors) if errors else None
        ),
    }


def summarize_model(model_txt: Path, staged: list[dict[str, Any]]) -> dict[str, Any]:
    cameras = parse_cameras(model_txt / "cameras.txt")
    images = parse_images(model_txt / "images.txt")
    points = parse_points(model_txt / "points3D.txt")
    name_to_id = {item["staged_name"]: item["id"] for item in staged}
    registered_ids = [
        name_to_id.get(item["name"], item["name"]) for item in images
    ]
    return {
        "registered_image_count": len(images),
        "registered_image_ids": registered_ids,
        "unregistered_image_ids": [
            item["id"] for item in staged if item["id"] not in registered_ids
        ],
        "camera_count": len(cameras),
        "cameras": {str(k): v for k, v in cameras.items()},
        "images": images,
        "points3D": points,
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--group", default="core")
    parser.add_argument("--config", type=Path, default=CONFIG)
    parser.add_argument("--force", action="store_true", help="delete existing work folder")
    parser.add_argument("--prepare-only", action="store_true")
    parser.add_argument(
        "--gpu",
        action="store_true",
        help="allow COLMAP GPU feature extraction/matching; CPU is the portable default",
    )
    args = parser.parse_args()

    config = yaml.safe_load(args.config.read_text(encoding="utf-8"))
    groups = config.get("groups", {})
    if args.group not in groups:
        raise SystemExit(
            f"unknown group {args.group!r}; available: {', '.join(sorted(groups))}"
        )
    defaults = config.get("defaults", {})
    group = groups[args.group]
    image_ids = list(group["image_ids"])

    records = json.loads(MANIFEST.read_text(encoding="utf-8"))
    manifest = {record["id"]: record for record in records}

    workspace_root = ROOT / config.get("workspace_root", "validation/sfm_work")
    result_root = ROOT / config.get("result_root", "validation/sfm_results")
    workspace = workspace_root / args.group
    if args.force and workspace.exists():
        shutil.rmtree(workspace)
    workspace.mkdir(parents=True, exist_ok=True)

    staged = stage_images(image_ids, workspace, manifest)
    stage_manifest = {
        "group": args.group,
        "description": group.get("description"),
        "images": staged,
        "configuration": defaults,
        "important": (
            "Relative SfM only. Blender geometry and GPS pose priors are not used "
            "during feature matching or mapping."
        ),
    }
    (workspace / "staged_images.json").write_text(
        json.dumps(stage_manifest, indent=2) + "\n", encoding="utf-8"
    )
    print(f"staged {len(staged)} images in {workspace.relative_to(ROOT)}")

    if args.prepare_only:
        return 0

    colmap = resolve_colmap()
    logs = workspace / "logs"
    help_proc = run_command(colmap, ["help"], logs / "colmap_help.txt")
    first_help_lines = (help_proc.stdout or "").splitlines()[:12]

    database = workspace / "database.db"
    sparse = workspace / "sparse"
    sparse.mkdir(parents=True, exist_ok=True)

    feature_args = [
        "feature_extractor",
        "--database_path", str(database),
        "--image_path", str(workspace / "images"),
        "--ImageReader.camera_model", str(defaults.get("camera_model", "SIMPLE_RADIAL")),
        "--ImageReader.single_camera_per_image", "1",
        "--FeatureExtraction.type", "SIFT",
        "--FeatureExtraction.max_image_size", str(int(defaults.get("max_image_size", 3200))),
        "--FeatureExtraction.use_gpu", "1" if args.gpu else "0",
        "--SiftExtraction.max_num_features", str(int(defaults.get("max_num_features", 12000))),
        "--SiftExtraction.estimate_affine_shape",
        "1" if defaults.get("estimate_affine_shape", True) else "0",
        "--SiftExtraction.domain_size_pooling",
        "1" if defaults.get("domain_size_pooling", True) else "0",
    ]
    run_command(colmap, feature_args, logs / "01_feature_extractor.txt")

    matching_args = [
        "exhaustive_matcher",
        "--database_path", str(database),
        "--FeatureMatching.use_gpu", "1" if args.gpu else "0",
        "--FeatureMatching.guided_matching",
        "1" if defaults.get("guided_matching", True) else "0",
    ]
    run_command(colmap, matching_args, logs / "02_exhaustive_matcher.txt")

    # Deliberately use the ordinary mapper rather than pose_prior_mapper. GPS is
    # withheld from the objective so that this reconstruction remains
    # independent of the disputed EXIF/page positions and DGM-derived Z priors.
    run_command(
        colmap,
        [
            "mapper",
            "--database_path", str(database),
            "--image_path", str(workspace / "images"),
            "--output_path", str(sparse),
        ],
        logs / "03_mapper.txt",
    )

    model_dirs = sorted(
        [p for p in sparse.iterdir() if p.is_dir()],
        key=lambda p: p.name,
    )
    models: list[dict[str, Any]] = []
    for model_dir in model_dirs:
        txt_dir = workspace / "sparse_txt" / model_dir.name
        txt_dir.mkdir(parents=True, exist_ok=True)
        run_command(
            colmap,
            [
                "model_converter",
                "--input_path", str(model_dir),
                "--output_path", str(txt_dir),
                "--output_type", "TXT",
            ],
            logs / f"04_model_converter_{model_dir.name}.txt",
        )
        analyzer = run_command(
            colmap,
            ["model_analyzer", "--path", str(model_dir)],
            logs / f"05_model_analyzer_{model_dir.name}.txt",
            check=False,
        )
        summary = summarize_model(txt_dir, staged)
        summary["model_index"] = model_dir.name
        summary["analyzer_output"] = (analyzer.stdout or "").strip()
        models.append(summary)

    models.sort(
        key=lambda m: (
            m["registered_image_count"],
            m["points3D"]["count"],
        ),
        reverse=True,
    )
    best = models[0] if models else None
    result = {
        "schema_version": 1,
        "group": args.group,
        "input_image_count": len(staged),
        "input_images": staged,
        "camera_model_policy": (
            f"{defaults.get('camera_model', 'SIMPLE_RADIAL')} per image"
        ),
        "pose_priors_used": False,
        "blender_geometry_used": False,
        "colmap_help_header": first_help_lines,
        "model_count": len(models),
        "models": models,
        "best_model_index": best["model_index"] if best else None,
        "best_registered_image_count": (
            best["registered_image_count"] if best else 0
        ),
        "best_registered_image_ids": (
            best["registered_image_ids"] if best else []
        ),
        "best_sparse_point_count": (
            best["points3D"]["count"] if best else 0
        ),
        "best_mean_reprojection_error_px": (
            best["points3D"]["mean_reprojection_error_px"] if best else None
        ),
        "interpretation": (
            "This result estimates only relative image geometry. Do not change "
            "Blender massing from it until the reconstruction is checked for "
            "connectivity/intrinsic plausibility and then independently aligned "
            "to metric/geospatial evidence."
        ),
    }
    result_root.mkdir(parents=True, exist_ok=True)
    result_path = result_root / f"{args.group}.json"
    result_path.write_text(json.dumps(result, indent=2) + "\n", encoding="utf-8")

    print(f"models: {len(models)}")
    if best:
        print(
            f"best model {best['model_index']}: "
            f"{best['registered_image_count']}/{len(staged)} registered, "
            f"{best['points3D']['count']} sparse points, "
            f"mean reprojection error="
            f"{best['points3D']['mean_reprojection_error_px']}"
        )
    else:
        print("no sparse model reconstructed")
    print(result_path.relative_to(ROOT))
    return 0 if best else 2


if __name__ == "__main__":
    try:
        raise SystemExit(main())
    except Exception as exc:
        print(f"SFM ERROR: {exc}", file=sys.stderr)
        raise SystemExit(2)
