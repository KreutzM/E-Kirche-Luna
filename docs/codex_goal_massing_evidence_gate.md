# Codex goal: close Issue #7 with the evidence-based massing gate

The curated public-web image corpus has been exhausted for global SfM. Do not
search for more web images, do not relax matching thresholds, and do not resume
manual camera grids.

Issue #7 now uses the alternative gate defined in:
- docs/massing_evidence_gate.md
- validation/massing_gate_spec.yaml

## Objective

Determine whether the current coarse exterior massing is defensible from
independent metric/geospatial evidence plus local directional photo checks. Make
only metre-scale corrections that are supported by that evidence.

## Required work

1. Read:
   - AGENTS.md
   - docs/massing_evidence_gate.md
   - validation/massing_gate_spec.yaml
   - data/dimensions.yaml
   - data/model_parameters.json
   - data/assumptions.yaml
   - data/geospatial_sources.yaml
   - validation/landmarks.yaml
   - validation/issue_7_camera_calibration.md

2. Generate the LoD2 part analysis:

   python scripts/analyze_lod2_massing.py

   Commit the resulting:
   validation/lod2_massing_reference.json

3. Inspect the per-BuildingPart positions, extents, official
   heightAboveGround values, terrain intersections and repeated Z levels.

4. Create:
   validation/lod2_component_map.yaml

   Map only unambiguous G01 BuildingParts to coarse architectural components.
   At minimum attempt:
   - west towers;
   - nave/hall;
   - crossing/transept;
   - east conch / east choir;
   - north/south conches;
   - sacristy.

   Leave ambiguous parts unmapped and explain why. Do not copy G01 geometry into
   the reconstruction.

5. Evaluate all hard global checks in validation/massing_gate_spec.yaml:
   - overall length;
   - transverse span;
   - building orientation;
   - crossing-anchor consistency;
   - total vertical extent.

6. Add numerical local component comparisons wherever the LoD2 mapping is
   unambiguous. Compare model heights/envelopes to G01 using the coarse
   tolerances in the gate specification.

7. Review the two independent modern-photo evidence clusters:
   - west/north;
   - southeast/south.

   Do not require a common camera frame. Look only for repeated coarse
   contradictions in component order, gross silhouette, roof hierarchy and
   tower/apse placement. Camera framing disagreement alone is not a geometry
   error.

8. If the metric/LoD2 evidence identifies a clear metre-scale massing error,
   make the smallest supported parameter correction in data/model_parameters.json
   and data/assumptions.yaml, rebuild the affected Blender massing, regenerate
   relevant validation renders, and rerun the evidence checks.

9. Do not start buttresses, openings, tracery or ornament during this goal.

10. Implement a reproducible massing evidence validator, preferably
    scripts/validate_massing_evidence.py, that reports each gate criterion and
    fails when a required criterion is missing or outside tolerance.

11. Preserve scripts/validate_model.py as the historical/direct-camera
    diagnostic. Do not make rejected global camera fits mandatory for the new
    evidence gate.

12. Update validation/landmarks.yaml and the Issue #7 report with one explicit
    final gate decision.

## Pass rule

Issue #7 may pass only if:
- all hard global metric checks pass;
- reviewed local LoD2 component checks show no material coarse contradiction;
- both directional photo clusters show no repeated coarse contradiction;
- every remaining unresolved item is either below the coarse-massing level or
  explicitly documented as an evidence limitation.

A disconnected global photo SfM network is not itself a blocker anymore; that
limitation is already established and must remain documented.

## Definition of done

Either:

A) Issue #7 passes defensibly:
- validation/massing_gate_spec.yaml criteria are evaluated;
- numerical evidence results are versioned;
- validation/landmarks.yaml sets massing_gate_passed: true with a precise reason;
- make validate-data passes;
- the new massing-evidence validator passes;
- Issue #7 is updated/closable;
- no detail-phase geometry has been started.

or:

B) Issue #7 remains open for one concrete metre-scale contradiction:
- the failed metric/component criterion is identified numerically;
- only the smallest evidence-supported correction path is documented;
- no further web-image search or global SfM work is performed.

Commit and push the result; finish with a clean working tree.
