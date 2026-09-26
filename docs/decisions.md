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

## 2026-09-26 — Revise plan extents against the mapped outline
Decision: update the inferred outer length and transept span to 70.4 m and 44.6 m from the long and short sides of the OSM minimum-area rectangle, with the crossing offsets retained from P01 asymmetry. These are map-derived approximations cross-checked against plans and modern photos, not surveyed dimensions. Iteration 5 improves M02 framing, but the view remains too narrow and block-like; M04 remains obstructed by the near south conch. Keep the gate closed.

## 2026-09-26 — Recalibrate cropped-photo cameras from active image dimensions
Decision: model M02's saved 3696×3053 crop with a 28.3 mm horizontal full-frame-equivalent sensor width at the recorded 27 mm equivalent focal length. Iteration 6 candidate renders show improved M02 framing when the aim is shifted west/down to [-15, 0, 29] m; this remains an inferred pose because heading is absent. The updated M02 render is still geometrically too blocky at the conches and roofs. Correct portrait framing makes the current M04 camera nearly wall-only; four additional west/south pose tests are occluded by coarse masses. No camera fit is accepted for M04. Keep the massing gate closed and resolve geometry/pose against independent views before detail work.

## 2026-09-26 — Use M05 as an independent south-side camera candidate
Decision: render the south validation view from M05's own GPS, 30 mm full-frame-equivalent focal length and 2464×3696 portrait dimensions. Retain the GPS-derived camera position; document the target [0, -10, 23] m as an inferred aim because M05 has no heading. Its render recovers the gross roof/turret/conch ordering, but remains a partial comparison due to blank wall masses and simplified roof planes. A 32 m conch-roof peak test appeared too high against both M02 and M05 and was reverted to the earlier 29 m low-confidence inference. M04 remains separately unresolved; the M05 view does not claim to solve it.

## 2026-09-26 — Reject additional M05 camera offsets
Decision: keep the official M05 GPS-derived camera location and [0, -10, 23] m target. Diagnostic poses shifted 4 m and 8 m toward the model, with the target lowered to z=15 m, enlarge/crop the near south elevation and do not align the turret, roof and conch simultaneously. The lower aim raises the turret in frame but shifts the roof/conch profile and lower facade inconsistently; no tested pose is accepted as a calibration. This leaves M05 as a partial gross-massing check and keeps the massing gate closed. The diagnostics do not alter the GPS evidence or model geometry.
