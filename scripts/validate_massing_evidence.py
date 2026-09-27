#!/usr/bin/env python3
"""Validate the evidence-based coarse massing gate for Issue #7.

This gate is deliberately independent of scripts/validate_model.py, which
remains the historical direct-camera diagnostic. It checks the reviewed G01
analysis/map, the parameterized model values, hard metric tolerances, local
component height tolerances, and the two independent photo-cluster reviews.
"""
from __future__ import annotations

import argparse
import json
from pathlib import Path
from typing import Any

import yaml

ROOT = Path(__file__).resolve().parents[1]


def read_yaml(path: Path) -> dict[str, Any]:
    value = yaml.safe_load(path.read_text(encoding="utf-8")) or {}
    if not isinstance(value, dict):
        raise ValueError(f"expected a YAML mapping in {path}")
    return value


def nested_value(data: dict[str, Any], path: str) -> float:
    current: Any = data
    for key in path.split("."):
        if not isinstance(current, dict) or key not in current:
            raise KeyError(path)
        current = current[key]
    return float(current)


def model_value(parameters: dict[str, Any], path: str) -> float:
    inferred = parameters.get("inferred", {})
    if path == "derived.transept_roof_ridge_height":
        return float(inferred["main_roof_ridge_height"]) - float(
            inferred["transept_ridge_reduction"]
        )
    if path in {"derived.crossing_u_extent", "derived.crossing_v_extent"}:
        return float(inferred["exterior_crossing_width"])
    if path == "derived.east_conch_u_extent":
        return float(inferred["choir_exterior_width"]) / 2 + float(inferred["roof_overhang"])
    if path == "derived.east_conch_v_extent":
        return float(inferred["choir_exterior_width"]) + 2 * float(inferred["roof_overhang"])
    return nested_value(parameters, path)


def report(name: str, measured: float, reference: float, tolerance: float, unit: str) -> bool:
    delta = abs(measured - reference)
    passed = delta <= tolerance
    verdict = "PASS" if passed else "FAIL"
    print(
        f"[{verdict}] {name}: model={measured:.3f} {unit}, "
        f"G01={reference:.3f} {unit}, |delta|={delta:.3f} {unit} "
        f"(tolerance {tolerance:.3f} {unit})"
    )
    return passed


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--root", type=Path, default=ROOT)
    args = parser.parse_args()
    root = args.root.resolve()
    spec = read_yaml(root / "validation" / "massing_gate_spec.yaml")
    component_map = read_yaml(root / "validation" / "lod2_component_map.yaml")
    parameters = json.loads((root / "data" / "model_parameters.json").read_text(encoding="utf-8"))
    lod2 = json.loads((root / "validation" / "lod2_massing_reference.json").read_text(encoding="utf-8"))
    acceptance = read_yaml(root / "validation" / "landmarks.yaml").get("acceptance", {})

    errors: list[str] = []
    checks: list[bool] = []
    if lod2.get("source_id") != "G01" or not lod2.get("parts"):
        errors.append("missing or invalid G01 LoD2 analysis")
    part_by_id = {part.get("part_id"): part for part in lod2.get("parts", [])}
    if component_map.get("review_status") != "reviewed":
        errors.append("LoD2 component map is not marked reviewed")

    print("ISSUE #7 MASSING EVIDENCE GATE")
    print("Hard global metric checks")
    hard = spec.get("hard_metric_checks", {})
    global_params = parameters.get("inferred", {})
    global_mapping = {
        "global_length": (float(global_params.get("overall_exterior_length", float("nan"))), "m"),
        "global_transverse_span": (float(global_params.get("exterior_transept_span", float("nan"))), "m"),
        "building_axis": (float(parameters.get("building_axis_orientation_degrees_from_east", float("nan"))), "deg"),
        "total_vertical_extent": (float(parameters.get("documented_anchors", {}).get("tower_height", float("nan"))), "m"),
    }
    for name, (value, unit) in global_mapping.items():
        criterion = hard.get(name)
        if not isinstance(criterion, dict) or "evidence_value_m" not in criterion and "evidence_value_deg" not in criterion:
            errors.append(f"missing hard metric criterion: {name}")
            continue
        reference = float(criterion.get("evidence_value_deg" if unit == "deg" else "evidence_value_m"))
        tolerance = float(criterion.get("tolerance_deg" if unit == "deg" else "tolerance_m", -1))
        checks.append(report(name, value, reference, tolerance, unit))
    crossing = hard.get("crossing_anchor", {})
    if not crossing or "evidence_offset_from_project_anchor_m" not in crossing:
        errors.append("missing hard metric criterion: crossing_anchor")
    else:
        checks.append(report(
            "crossing_anchor_offset",
            float(crossing["evidence_offset_from_project_anchor_m"]),
            0.0,
            float(crossing.get("tolerance_m", -1)),
            "m",
        ))

    print("Reviewed local LoD2 component checks")
    local_spec = spec.get("local_lod2_component_checks", {})
    if local_spec.get("required") is not True or local_spec.get("status") != "reviewed":
        errors.append("required local LoD2 component review is missing")
    components = component_map.get("components", {})
    required_components = {
        "west_towers", "nave_hall", "crossing_transept", "east_choir_east_conch",
        "north_conch", "south_conch", "sacristy",
    }
    for name in sorted(required_components):
        if name not in components or not components[name].get("part_ids"):
            errors.append(f"required component is not mapped: {name}")
            continue
        if not components[name].get("identification") or not components[name].get("reason"):
            errors.append(f"required component mapping lacks an identification rationale: {name}")
        checks_for_component = components[name].get("comparisons")
        if checks_for_component is None:
            checks_for_component = [components[name].get("comparison", {})]
        if not checks_for_component or any(not item for item in checks_for_component):
            errors.append(f"required component has no numerical comparison: {name}")
            continue
        for comparison in checks_for_component:
            label = comparison.get("label", name)
            try:
                comparison_tolerance = float(comparison.get("tolerance_m", -1))
            except (TypeError, ValueError):
                comparison_tolerance = -1
            if not comparison.get("model_parameter") or comparison_tolerance < 0:
                errors.append(f"{name}/{label}: model parameter or nonnegative tolerance is missing")
                continue
            ids = comparison.get("part_ids", components[name].get("part_ids", []))
            missing = [part_id for part_id in ids if part_id not in part_by_id]
            if missing:
                errors.append(f"{name}/{label}: unknown G01 part IDs: {', '.join(missing)}")
                continue
            metric = comparison.get("lod2_metric")
            if metric not in {"max_measured_height_above_ground_m", "extent_u_m", "extent_v_m"}:
                errors.append(f"{name}/{label}: unsupported or missing LoD2 metric {metric!r}")
                continue
            expected_type = "vertical_peak" if metric == "max_measured_height_above_ground_m" else "horizontal_extent"
            if comparison.get("type") != expected_type or not comparison.get("rationale"):
                errors.append(f"{name}/{label}: comparison type/rationale is missing")
                continue
            try:
                model = model_value(parameters, comparison["model_parameter"])
            except (KeyError, TypeError, ValueError):
                errors.append(f"{name}/{label}: invalid model parameter {comparison.get('model_parameter')!r}")
                continue
            recorded = comparison.get("model_value_m")
            if recorded is None or abs(float(recorded) - model) > 0.01:
                errors.append(f"{name}/{label}: recorded model_value_m is missing or stale")
                continue
            if metric == "max_measured_height_above_ground_m":
                values = [part_by_id[part_id].get("measured_height_above_ground_m") for part_id in ids]
                values = [float(value) for value in values if value is not None]
                if not values:
                    errors.append(f"{name}/{label}: no official heightAboveGround value")
                    continue
                reference = max(values)
            else:
                axis = "u_longitudinal" if metric == "extent_u_m" else "v_transverse"
                bounds = [part_by_id[part_id].get("building_uv_bounds_m", {}).get(axis) for part_id in ids]
                bounds = [value for value in bounds if isinstance(value, list) and len(value) == 2]
                if len(bounds) != len(ids):
                    errors.append(f"{name}/{label}: missing LoD2 {metric} bounds")
                    continue
                reference = max(float(value[1]) for value in bounds) - min(float(value[0]) for value in bounds)
            checks.append(report(f"{name}/{label}", model, reference, comparison_tolerance, "m"))

    # Every source part must either have a reviewed architectural assignment
    # or an explicit ambiguity note. This makes unmapped evidence visible.
    assigned: list[str] = []
    for component in components.values():
        assigned.extend(component.get("part_ids", []))
    unmapped = component_map.get("unmapped_parts", [])
    unmapped_ids = [item.get("part_id") for item in unmapped if item.get("part_id") and item.get("reason")]
    duplicates = sorted({part_id for part_id in assigned if assigned.count(part_id) > 1})
    unaccounted = sorted(set(part_by_id) - set(assigned) - set(unmapped_ids))
    invalid_unmapped = [item.get("part_id", "<unknown>") for item in unmapped if not item.get("reason") or item.get("reason") == "None"]
    mapping_ok = not duplicates and not unaccounted and not invalid_unmapped
    print(
        f"[{ 'PASS' if mapping_ok else 'FAIL' }] part mapping coverage: "
        f"{len(set(assigned))} mapped, {len(set(unmapped_ids))} explicitly unmapped, "
        f"{len(unaccounted)} unaccounted, {len(duplicates)} duplicate assignments"
    )
    if not mapping_ok:
        errors.append(f"invalid LoD2 part accounting; unaccounted={unaccounted}, duplicates={duplicates}, invalid_unmapped={invalid_unmapped}")
    checks.append(mapping_ok)

    print("Independent directional photo-cluster checks")
    photo_checks = spec.get("directional_photo_checks", {})
    for name in ("west_north_cluster", "southeast_south_cluster"):
        cluster = photo_checks.get(name, {})
        review = cluster.get("review", {})
        ok = (
            review.get("status") == "no_repeated_coarse_contradiction"
            and set(cluster.get("evidence_ids", [])).issubset(set(review.get("reviewed_ids", [])))
            and len(review.get("reviewed_ids", [])) >= 2
            and bool(review.get("findings"))
        )
        print(f"[{ 'PASS' if ok else 'FAIL' }] {name}: {review.get('status', 'missing review')}")
        if not ok:
            errors.append(f"required photo-cluster review missing or contradictory: {name}")
        checks.append(ok)

    limitations = spec.get("remaining_limitations", [])
    limitation_ok = bool(limitations) and all(str(item).strip() for item in limitations)
    if not limitation_ok:
        errors.append("remaining unresolved items are not explicitly documented")
    checks.append(limitation_ok)
    print(f"[{ 'PASS' if limitation_ok else 'FAIL' }] unresolved evidence limitations documented ({len(limitations)})")

    gate_marked = spec.get("gate_decision") == "passed" and acceptance.get("massing_gate_passed") is True
    print(f"[{ 'PASS' if gate_marked else 'FAIL' }] final gate decision recorded in spec and landmarks")
    if not gate_marked:
        errors.append("final gate decision is not consistently recorded as passed")
    checks.append(gate_marked)

    failures = sum(1 for passed in checks if not passed)
    if errors or failures:
        print(f"MASSING EVIDENCE GATE FAILED ({failures} failed checks, {len(errors)} errors)")
        for error in errors:
            print(f" - {error}")
        return 2
    print(f"MASSING EVIDENCE GATE PASSED ({len(checks)} criteria)")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
