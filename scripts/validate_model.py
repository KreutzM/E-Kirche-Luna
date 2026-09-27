#!/usr/bin/env python3
"""Validate quantitative camera evidence and the massing-gate prerequisites.

This is deliberately separate from scripts/validate_dataset.py. Dataset
validation checks provenance/schema consistency; this script checks whether
annotated evidence cameras have current numerical fits with acceptable
reprojection error.
"""
from __future__ import annotations

import argparse
import hashlib
import json
from pathlib import Path
from typing import Any

import yaml

ROOT = Path(__file__).resolve().parents[1]
DEFAULT_OBSERVATIONS = ROOT / "validation" / "camera_landmarks.yaml"
DEFAULT_FITS = ROOT / "validation" / "camera_fits"


def normalized_view_hash(view: dict[str, Any]) -> str:
    payload = json.dumps(view, sort_keys=True, separators=(",", ":"), ensure_ascii=True)
    return hashlib.sha256(payload.encode("utf-8")).hexdigest()


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--observations", type=Path, default=DEFAULT_OBSERVATIONS)
    parser.add_argument("--fit-dir", type=Path, default=DEFAULT_FITS)
    args = parser.parse_args()

    data = yaml.safe_load(args.observations.read_text(encoding="utf-8")) or {}
    views = data.get("views", {})
    requirements = data.get("massing_requirements", {})
    minimum_accepted = int(requirements.get("minimum_accepted_views", 3))

    errors: list[str] = []
    accepted: list[str] = []
    annotated: list[str] = []
    pending: list[str] = []

    for view_id, view in views.items():
        status = view.get("status", "needs_annotation")
        if status != "annotated":
            pending.append(view_id)
            continue

        annotated.append(view_id)
        acceptance = view.get("acceptance", {})
        min_landmarks = int(acceptance.get("min_landmarks", 8))
        landmarks = view.get("landmarks") or []
        if len(landmarks) < min_landmarks:
            errors.append(
                f"{view_id}: annotated but only {len(landmarks)} landmarks; need {min_landmarks}"
            )
            continue

        fit_path = args.fit_dir / f"{view_id}.json"
        if not fit_path.exists():
            errors.append(f"{view_id}: missing fit {fit_path.relative_to(ROOT)}")
            continue
        try:
            fit = json.loads(fit_path.read_text(encoding="utf-8"))
        except Exception as exc:
            errors.append(f"{view_id}: cannot read fit JSON: {exc}")
            continue

        expected_hash = normalized_view_hash(view)
        if fit.get("observations_sha256") != expected_hash:
            errors.append(f"{view_id}: fit is stale; observations changed since the fit was generated")
            continue
        if not fit.get("success"):
            errors.append(f"{view_id}: optimizer did not report success")
            continue

        metrics = fit.get("metrics_px", {})
        rms = float(metrics.get("rms", float("inf")))
        p95 = float(metrics.get("p95", float("inf")))
        rms_max = float(acceptance.get("rms_px_max", 15.0))
        p95_max = float(acceptance.get("p95_px_max", 30.0))
        if rms > rms_max or p95 > p95_max:
            errors.append(
                f"{view_id}: reprojection error too high "
                f"(rms={rms:.2f}px <= {rms_max:g}, p95={p95:.2f}px <= {p95_max:g})"
            )
            continue
        if not fit.get("accepted"):
            errors.append(f"{view_id}: fit did not mark itself accepted")
            continue
        accepted.append(view_id)

    if len(accepted) < minimum_accepted:
        errors.append(
            f"massing calibration needs at least {minimum_accepted} accepted independent views; "
            f"have {len(accepted)} ({', '.join(accepted) or 'none'})"
        )

    print("MODEL CAMERA VALIDATION")
    print(f" annotated: {len(annotated)}")
    print(f" accepted:  {len(accepted)}")
    print(f" pending:   {len(pending)}")
    if pending:
        print(" pending views:", ", ".join(sorted(pending)))
    if accepted:
        print(" accepted views:", ", ".join(sorted(accepted)))

    if errors:
        print("MODEL VALIDATION FAILED")
        for error in errors:
            print(" -", error)
        print(
            "Quantitative camera validation is not complete. Do not pass the massing gate "
            "or infer geometry from unresolved camera overlays."
        )
        return 2

    print("MODEL CAMERA VALIDATION OK")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
