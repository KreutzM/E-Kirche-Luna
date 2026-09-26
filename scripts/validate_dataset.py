#!/usr/bin/env python3
from pathlib import Path
import json, math, sys, yaml

ROOT = Path(__file__).resolve().parents[1]
errors = []

def fail(msg):
    errors.append(msg)

rows = json.loads((ROOT/"data"/"manifest.json").read_text(encoding="utf-8"))
ids = [r.get("id") for r in rows]
if len(ids) != len(set(ids)):
    fail("duplicate IDs in data/manifest.json")

required = {"id","group","title","view","role","priority","metric_use","commons_page"}
for i, row in enumerate(rows):
    missing = required - set(row)
    if missing:
        fail(f"manifest row {i} missing {sorted(missing)}")
    if row.get("priority") not in (1,2,3):
        fail(f'{row.get("id")}: priority must be 1..3')
    if not str(row.get("commons_page","")).startswith("https://commons.wikimedia.org/wiki/"):
        fail(f'{row.get("id")}: invalid Commons page')

dims = yaml.safe_load((ROOT/"data"/"dimensions.yaml").read_text(encoding="utf-8"))
for name, d in dims.items():
    for key in ("value","unit","confidence","scope","source_id"):
        if key not in d:
            fail(f"dimension {name} missing {key}")
    if d.get("confidence") not in ("high","medium","low"):
        fail(f"dimension {name}: invalid confidence")

coords = yaml.safe_load((ROOT/"data"/"coordinate_system.yaml").read_text(encoding="utf-8"))
if coords.get("units") != "metres":
    fail("coordinate system must use metres")
if coords.get("axes",{}).get("z_positive") != "up":
    fail("Z axis must be up")

assumptions = yaml.safe_load((ROOT/"data"/"assumptions.yaml").read_text(encoding="utf-8"))
if "assumptions" not in assumptions:
    fail("data/assumptions.yaml must contain top-level 'assumptions'")
else:
    required_assumption_fields = {"value", "unit", "reason", "confidence", "evidence_ids", "iteration"}
    for name, item in assumptions["assumptions"].items():
        missing = required_assumption_fields - set(item or {})
        if missing:
            fail(f"assumption {name} missing {sorted(missing)}")
            continue
        if item.get("unit") != "m":
            fail(f"assumption {name}: unit must be m")
        if item.get("confidence") not in ("high", "medium", "low"):
            fail(f"assumption {name}: invalid confidence")
        if not isinstance(item.get("evidence_ids"), list) or not item["evidence_ids"]:
            fail(f"assumption {name}: evidence_ids must be a non-empty list")
        elif any(evidence_id not in set(ids) for evidence_id in item["evidence_ids"]):
            fail(f"assumption {name}: unknown evidence ID")
        if not isinstance(item.get("iteration"), int) or item["iteration"] < 1:
            fail(f"assumption {name}: iteration must be a positive integer")

params_path = ROOT/"data"/"model_parameters.json"
if params_path.exists():
    params = json.loads(params_path.read_text(encoding="utf-8"))
    recorded = assumptions.get("assumptions", {})
    for name, value in params.get("inferred", {}).items():
        item = recorded.get(name)
        if item is None:
            fail(f"model parameter {name} has no assumption record")
        elif not math.isclose(float(item.get("value", float("nan"))), float(value), rel_tol=0.0, abs_tol=1e-9):
            fail(f"model parameter {name} differs from data/assumptions.yaml")
    for name in recorded:
        if name not in params.get("inferred", {}):
            fail(f"assumption {name} is not represented in data/model_parameters.json")

if errors:
    print("VALIDATION FAILED")
    for e in errors:
        print(" -", e)
    sys.exit(1)

print(f"VALIDATION OK: {len(rows)} reference records, {len(dims)} documented dimensions, "
      f"{len(assumptions.get('assumptions', {}))} recorded geometry assumptions")
