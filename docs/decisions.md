# Decision log

## 2026-09-19 — Exterior-only first phase
Decision: reconstruct the exterior before attempting the interior.

## 2026-09-19 — Reproducible asset acquisition
Decision: keep source manifests/download scripts in Git; do not commit all web image originals as ordinary Git objects.

## 2026-09-19 — Script-first Blender workflow
Decision: repeated and structural geometry should be generated/parameterised with Blender Python where practical.

## 2026-09-26 — Version Commons provenance
Decision: keep `sources/commons_download_metadata.jsonl` under version control as evidence for per-file licence and provenance; keep downloaded image binaries and transient contact sheets local.

## 2026-09-26 — Keep the massing gate ahead of tower detail
Decision: remove corner pinnacles from the first tower-massing pass and leave them for the later detail stage. Iteration 2 aligns the west gable and conch roof springs with their adjoining wall masses. Keep the massing gate open while the M02 southeast camera/scale registration remains unresolved.

## 2026-09-26 — Treat GPS conversion and camera aim as separate evidence
Decision: estimate the crossing geographic anchor from the OSM footprint bounds and the P01-derived west/east extents, cross-checked against M02's depicted-place coordinate. Convert each photo's GPS to a candidate local camera position, but keep local height and aim explicitly inferred. M02 retains its GPS-derived position and 27 mm equivalent focal length; its fitted aim restores the correct visible landmark order but not the image scale. M04's converted position falls within the current south-conch mass, so a 6.3 m southward test offset is used only as an inferred camera pose. Its side silhouette still fails. Preserve both discrepancies and keep the massing gate closed.

## 2026-09-26 — Align plan coordinates to the mapped footprint
Decision: rotate plan-derived building geometry 7.13 degrees north of true east around the crossing. The angle is derived from the minimum-area rectangle of OSM way 34333680 and is an approximate current-footprint alignment, not a survey measurement. Keep world X=east, Y=north, Z=up. Iteration 4 renders show that this correction alone does not resolve the M02 image scale or M04 side silhouette, so the massing gate remains closed.
