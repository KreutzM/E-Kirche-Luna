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
Decision: add M20 and M21 as licensed present-day photo evidence, and retain the Hessian LoD2 church feature G01 as a hidden `REFERENCE` object. Preserve M21's Commons camera position and cardinal NW heading, which are on the file page but absent from its EXIF metadata export; 315° is the cardinal center, not an exact azimuth. Use a separate diagnostic camera with inferred height and aim. A reproducible local-tangent-plane minimum rectangle over G01's 5,233 coordinates measures 70.359 × 44.378 m at 7.406° from east, close to the current OSM-derived 70.4 × 44.6 m at 7.13°. Keep the existing dimensions and alignment as approximate inferences; G01 is generalized geodata, not a survey. Its 80.118 m total vertical extent is only a coarse cross-check against the documented approximate tower height. The source's simplified complex roofs do not resolve the photo silhouette, so the massing gate remains open.

## 2026-09-26 — Test the M21 heading-based roof view
Decision: keep the M21 camera's Commons location and recorded 29 mm focal length fixed; the file-page template records cardinal NW, whose nominal center is 315°, not a degree-level heading. Render target heights z=20, 24, 28 and 32 m at a 32 m inferred horizontal aim distance. The roof apex remains horizontally displaced and tower spires enter the crop differently from the source. Target-height changes only alter vertical framing; keep the camera candidate unresolved and check the approximate crossing anchor and gross model against G01 before attributing the residual.

## 2026-09-26 — Probe M21 horizontal registration without accepting a camera offset
Decision: with the Commons camera location, 29 mm focal length and 32 m inferred aim distance fixed, compare horizontal aim bearings 315°, 320°, 325° and 330° within the page's cardinal NW heading. The 325° candidate places the M21 conch peak and turret order closer together, but relative turret height and silhouette remain unresolved. Retain this as a visual-fit candidate, not an exact source azimuth or accepted camera solution.

## 2026-09-26 — Cross-check the crossing anchor from G01
Decision: derive the centre of G01's horizontal minimum-area rectangle, then apply the existing P01 14.75 m eastward crossing offset along the geodata long axis. This candidate lies 0.85 m from the existing OSM-derived crossing anchor. Record it as a coarse cross-check, not as a surveyed coordinate or accuracy estimate. Keep the project anchor and M21 camera unchanged; the small difference does not explain the +15° heading diagnostic, so continue investigating the south-east mass layout and source-heading precision.

## 2026-09-26 — Compare G01 surfaces without promoting them to model geometry
Decision: compare G01 `terrainIntersection` ground lines with the reconstruction from TOP, M21 and SE. TOP suggests broad footprint/anchor agreement, with visible residuals around the east/conch footprint; M21 and SE show ground lines near the image base and do not validate roof silhouettes. Keep the G01 surfaces hidden from final renders and do not copy generalized complex roof shapes over modern photographs or the historical plan. Keep the massing gate open.

## 2026-09-26 — Add an elevated southwest silhouette reference
Decision: add M22, A. Savin's 2022 Schlossberg view, to extend the tower and overall-mass comparison from the southwest. Commons documents 86 mm full-frame-equivalent focal length, camera coordinates and the Free Art License; retain the original page/EXIF coordinate distinction and complete file provenance in the download metadata. The view is distant and has no recorded heading, so use it only for visual silhouette reference, not a camera solve or metric dimension. Do not adjust geometry from this image alone.

## 2026-09-26 — Use cardinal heading precision for M18/M21
Decision: re-read the original Commons `Location` template for M18 and M21; both pages record `heading:NW`, not a measured 315° azimuth. Treat 315° only as the nominal center of the cardinal sector. Add M18's 24 mm landscape view as a separate evidence camera at the Commons-mapped point; 330° bearing, 32 m aim distance and target z=32 m are documented visual-fit inferences. A 325°/z=32 m M21 diagnostic aligns the conch peak and turret order better than the nominal-center view, but apparent turret height and coarse massing remain unresolved. No architectural geometry change is accepted.

## 2026-09-26 — Raise the crossing roof-turret silhouette candidate
Decision: fixed-camera in-memory tests compare the current 12 m roof-turret rise with 16–32 m candidates in M02 and 12–24 m in M21. M02's independent southeast view and M18/M21's detailed roof views all show a substantially taller turret silhouette than the 12 m model. Adopt 20 m above the main ridge as a low-confidence inferred candidate; it is not a measured dimension and the M18/M21 images share one mapped camera location. Re-render the standard views and keep the massing gate open until the height, roof connections and full silhouettes agree across views.

## 2026-09-26 — Overlay calibrated-view candidates with source photographs
Decision: generate full-frame 50% photo/render blends for M02, M05, M18 and M21 without changing source images, camera records or geometry. M18/M21 preserve their source framing and show the 20 m roof-turret candidate closer in relative height and broad roof/tower order; M02 also improves on the former 12 m candidate. M05's inferred aim and several roof/conch edges remain visibly displaced. Because the camera targets are not solved and the blends include the rendered background, use them to locate qualitative residuals only; accept no further dimension or camera offset from these overlays alone. Keep the massing gate open.
