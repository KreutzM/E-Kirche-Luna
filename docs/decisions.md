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

## 2026-09-26 — Keep the conch roof at the 29 m candidate
Decision: render an intermediate 30 m roof-peak candidate with the same saved cameras and render settings as 29 m. It raises the conch peaks slightly but does not improve the M02 and M05 silhouette comparisons together; the residuals are larger than this one-metre adjustment can explain. Retain 29 m, keep it marked low-confidence, and investigate roof form and camera fit separately rather than treating the height as measured.

## 2026-09-26 — Refine the M05 visual-fit aim
Decision: retain M05's GPS-derived camera position, 30 mm equivalent focal length and portrait framing. Compare target heights z=16, 18, 20 and 23 m at fixed horizontal target [0, -10]. The z=18 m aim best places the roof turret, conch roof peak and facade base together against M05; record it as an inferred aim, not a solved heading. The view remains partial, and M04 remains unresolved.

## 2026-09-26 — Cross-check the mapped footprint against Hessian LoD2
Decision: add M20 and M21 as licensed present-day photo evidence, and retain the Hessian LoD2 church feature G01 as a hidden `REFERENCE` object. Preserve the Commons structured camera position and 315° heading for M21, which are on the file page but absent from its EXIF metadata export; use them for a separate diagnostic camera with inferred height and pitch. A reproducible local-tangent-plane minimum rectangle over G01's 5,233 coordinates measures 70.359 × 44.378 m at 7.406° from east, close to the current OSM-derived 70.4 × 44.6 m at 7.13°. Keep the existing dimensions and alignment as approximate inferences; G01 is generalized geodata, not a survey. Its 80.118 m total vertical extent is only a coarse cross-check against the documented approximate tower height. The source's simplified complex roofs do not resolve the photo silhouette, so the massing gate remains open.

## 2026-09-26 — Test the M21 heading-based roof view
Decision: keep the M21 camera's Commons location, 315° heading and recorded 29 mm focal length fixed; render target heights z=20, 24, 28 and 32 m at the same 32 m inferred horizontal aim distance. The roof apex remains too far right relative to M21 and the west tower spires appear in the model where the source crop omits them. Target-height changes only alter vertical framing, so accept none as a solved camera pose and make no geometry change. Check the approximate crossing georeference and the gross model against G01 before attributing this horizontal residual to either camera or geometry. The massing gate remains open.

## 2026-09-26 — Probe M21 horizontal registration without accepting a camera offset
Decision: with the Commons camera location, 29 mm focal length and 32 m inferred aim distance fixed, compare horizontal aim bearings 315°, 320°, 325° and 330°. The +15° candidate better places the coarse south-conch roof/turret order in M21, but it contradicts the source's 315° heading and is not adopted. The residual points to the approximate crossing georeference or gross model alignment as unresolved; use the G01 geospatial footprint to test those independently before changing the project anchor or masses.
