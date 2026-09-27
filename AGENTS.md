# Elisabethkirche Marburg Reconstruction

## Mission
Reconstruct the **present-day EXTERIOR only** of the Elisabethkirche in Marburg as a metrically coherent Blender model. Do not model the interior in this project phase.

## Required reading before modeling
1. `PROJECT.md`
2. `data/dimensions.yaml`
3. `data/manifest.json`
4. `docs/evidence_policy.md`
5. `data/assumptions.yaml`
6. relevant reference/contact-sheet files

## Coordinate system
- Blender units: metres.
- X = East.
- Y = North.
- Z = Up.
- Origin = centre of the crossing at nominal floor level.
- Do not silently change this convention.

## Evidence precedence
When evidence conflicts, use this order:
1. Verified/documented dimensions in `data/dimensions.yaml`
2. Multiple mutually consistent modern photographs
3. Historical architectural plans and sections
4. Historical photographs
5. Geometric inference

Never present inferred geometry as measured geometry. Every inferred dimension must be recorded in `data/assumptions.yaml` with value, unit, reason, confidence, evidence IDs and iteration.

## Modeling order
1. footprint
2. nave / transept / triconch massing
3. west towers
4. roofs
5. buttresses
6. openings
7. tracery
8. ornament

Do not begin decorative modeling until massing passes dimensional and silhouette validation.

## Reproducibility
- Prefer Blender Python for repeated/procedural geometry.
- Keep repeated architectural elements parametric where practical.
- Treat the `.blend` file as a working artifact; scripts + parameters + evidence are the reproducible source.
- Never destructively edit files under `references/`.
- Do not invent unavailable image metadata.
- Do not overwrite historical evidence to make it agree with the model.

## Collections
Use: MASSING, TOWERS, ROOFS, BUTTRESSES, OPENINGS, TRACERY, DETAIL, CAMERAS, REFERENCE.

## Validation
Dataset consistency and model/photo validation are separate.

Before using a photographic mismatch to change massing:
1. read `docs/camera_calibration.md`, `docs/sfm_calibration.md`, and `docs/massing_evidence_gate.md`;
2. direct 2D<->3D camera fits may be used when the corresponding 3D landmarks are independently trustworthy;
3. if multiple direct fits are rejected or camera/model uncertainty is coupled, run the model-independent SfM workflow first with `make sfm`;
4. require a coherent relative image reconstruction before georegistration;
5. align the relative reconstruction to independent metric/geospatial evidence before comparing it to Blender;
6. only then classify persistent residuals as possible geometry errors.


The curated public-web photo corpus is documented as insufficient for one connected cross-direction SfM network. Do not resume broad web-image acquisition or relax matching thresholds to force connectivity. For Issue #7, use the evidence-based massing gate in `validation/massing_gate_spec.yaml`: hard metric/geospatial checks plus reviewed local LoD2 component checks and directional photo-cluster checks. A disconnected global photo network is no longer itself a massing blocker once the limitation remains documented.

Manual heading / target-height grids are diagnostic initialization tools only. Do not keep expanding them as the primary calibration method. A visually improved overlay is not a solved camera. Do not tune camera intrinsics against disputed Blender geometry merely to force a fit.

After a material geometry change:
1. update affected 3D landmark coordinates;
2. refit all affected evidence cameras;
3. run `python scripts/validate_dataset.py` and `python scripts/validate_model.py`;
4. generate/update relevant validation renders;
5. compare silhouette, vanishing structure and architectural landmarks;
6. record unresolved discrepancies;
7. update assumptions if new inferred dimensions were introduced.

Do not hide a discrepancy by changing a validation camera without documenting why. Do not pass the massing gate from a green dataset validator alone.