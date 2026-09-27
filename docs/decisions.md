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

## 2026-09-27 — Separate M21 bearing and target-height diagnostics
Correction: the earlier M21 overlay helper paired the photograph with a diagnostic render at 325°/z=32 m, not with the saved `VAL_M21` camera. That comparison was not the standard camera view and should not be read as evidence that the saved view aligns. Render a diagnostic matrix using the same Commons-mapped position and 29 mm lens, with bearings 325°, 330° and 335° and target heights z=17, 22, 27 and 32 m at an inferred 32 m horizontal aim distance. The overlays show strong framing sensitivity; no unique camera pose is established, and apparent roof/spire residuals remain entangled with camera pitch and crop. Keep the 20 m roof-turret rise as a low-confidence geometry candidate, accept no geometry change from this comparison, and keep the massing gate open.

## 2026-09-27 — Check west and north source frames without treating them as calibrated
Decision: add M10/M11 west-photo and M06 north-photo overlays against the saved orthographic W/N elevation proxies to inspect what the current evidence views can establish. They show large camera-projection differences: the paired west towers have different apparent heights in the photos, while the model proxy is orthographic; M06 is also a perspective oblique view. These residuals cannot be assigned to geometry without matching camera poses. Correct the cyan-outline letterbox mask so padded regions remain transparent. Keep W/N silhouette status partial and the massing gate open; accept no geometry changes.

## 2026-09-27 — Use M06 camera metadata for a north-view diagnostic
Evidence: the Commons M06 file page records a point-of-view location, Nikon D5100, 16 mm focal length (24 mm full-frame equivalent), portrait image dimensions and 182 m absolute altitude. Keep the GPS-derived local X/Y position and focal field for perspective tests; do not translate the absolute altitude into project Z because the camera-site ground elevation is unknown. A temporary matrix tests bearings 205/215/225 degrees, aim distances 55/65/75 m and target heights z=20/30/40 m. H205/D65/z40 is a plausible broad framing candidate, but the towers and coarse wall/roof silhouette still diverge and no unique pose is solved. Preserve `VAL_N` as an orthographic proxy; accept neither camera nor geometry changes from this diagnostic.

## 2026-09-27 — Add four elevated exterior panorama references

Evidence: the official church page links the Flying Impressions exterior tour; its published tour script identifies four panoramas named Ostansicht, Elisabethkirche, Westansicht and Südansicht. Cache each panorama's 3072 × 3072 front cube face locally from 36 tiles, with per-tile URLs and SHA-256 values recorded in `sources/virtual_tour_metadata.json`. These provide new elevated oblique views of the whole church and eastern roof/conch layout, extending the visual cross-check beyond the previous ground-level photographs. The tour does not publish panorama world positions or a metrically calibrated photo solution; use T01–T04 for broad geometry reference only. Do not derive dimensions or adjust geometry from the views alone. The tour reuse licence is unstated; local experimental use is explicitly authorized by the user, with licence review deferred and redistribution pending that review.

## 2026-09-27 — Reframe the top-down plan validation view

Correction: the saved 82 m orthographic TOP frame, centered at x=-8 m, clipped the west end of the current approximate footprint (west/east extents -50.0/+20.4 m). Recenter it at x=-15 m, the midpoint of those recorded extents, and widen to 100 m so the full footprint and roof arrangement have visible margin. This is a coverage correction motivated by the plan/model envelope, not an attempt to improve a photo fit. Regenerate `VAL_TOP` and verify that both ends are in frame before using it for the plan check.

## 2026-09-27 — Flatten the three conch plan termini

Decision: replace each pointed conch footprint tip with a 4.5 m flat terminal chord. The chord is an inferred low-confidence dimension, estimated as about 30% of the 15 m east-choir width in the P01 plan; modern M01 and M18/M19 support faceted present-day apse outlines. G01's generalized LoD2 surfaces are only a broad cross-check, not a measuring source. Record the value in `data/assumptions.yaml` and `data/model_parameters.json`; generate body and roof boundaries from that shared parameter. The iteration 25 TOP and oblique validation renders show the new flat facets. Roof crests remain crude single-point fans and their joints remain unresolved, so do not pass the massing gate.

## 2026-09-27 — Add the LAGIS eastern conch preview

Evidence: add H06, the LAGIS/CVMA preview captioned “Blick von Osten auf Ost- und Nordkonche mit Sakristei” (CVMA III/3, p. 337, fig. 412). Cache the 250 × 333 image locally and record its page, direct image URL, SHA-256 and known limitations in `sources/lagis_reference_metadata.yaml`. The capture date and image reuse rights are not stated; local experimental use is authorized by the user and redistribution remains deferred. Use it only for broad historical component ordering, not for present-day geometry or dimensions. Add an explicit historic contact sheet.

## 2026-09-27 — Extend the three conch roof ridges

Decision: replace each single-apex conch fan with paired polygonal roof slopes meeting along a longitudinal ridge from the gable spring to the terminal hip facet. M01/M20 aerial or elevated views and M18/M19 roof views support the broad ridge-and-hip form; P08 is a section cross-check, while H06 is a historical qualitative view only. No new dimension is introduced: ridge endpoints follow the already recorded conch extents and 29 m peak-height inference. Raise side-conch wall tops from 23 to 24 m and the east-conch wall top from 22 to 23 m to meet the adjoining arm/choir gable eaves; both remain low-confidence and are recorded as iteration 26. Close each roof's concealed underside and spring cap. Blender reports 11 faces, no boundary/non-manifold edges and no zero-area faces per conch roof. Updated oblique views improve continuity, but roof proportions and the crossing joints still need validation; keep the massing gate open.

## 2026-09-27 — Reclassify M04 as a qualitative south-facade reference

Evidence: Commons records M04's camera location as 50.814770, 8.770192, its portrait size as 2600×3900 and its focal length as 24 mm equivalent. Relative to the approximate crossing anchor, this gives about (1.4 m east, 17.0 m south), or (-0.7 m, -17.1 m) in unrotated plan coordinates after applying the documented 7.13° building alignment. That point falls inside the current coarse south-conch footprint. The photograph is a close, steep upward view of the south facade and west towers and does not show the complete church silhouette. Do not offset the recorded GPS or solve whole-building massing from this frame. Retain M04 as qualitative facade/tower evidence for later phases, and leave the GPS-anchor versus coarse-footprint discrepancy unresolved. The Commons page identifies CC BY-SA 4.0; this does not change the project's local-use decision.

## 2026-09-27 — Reposition the north-east sacristy mass

Decision: move the inferred sacristy east so its north-side footprint meets the straight east-choir bay instead of sitting beside the crossing. P01 and M15/M16 show a two-bay side attachment; M17 supports a pyramidal roof. The G01 terrain outline spans approximately x=5.7–17.5 m and y=5.8–15.2 m in the plan frame, broadly confirming the eastern placement but remaining generalized. Set the modeled footprint to x=6.0–16.0 m and y=7.5–15.0 m: 10.0 m east-west by 7.5 m north-south, both low-confidence inferences recorded at iteration 27. The previous square 7.5 m block was too far west and did not express the two-bay plan. Rebuild body and roof from the same parameters and update TOP/NE validation views. The sacristy still lacks detailed facade openings, and its exact connection and roof proportions remain unresolved; keep the massing gate open.

## 2026-09-27 — Separate the crossing roof from the straight transept arms

Decision: limit `ROOF_TranseptCross` to the crossing square. It previously extended across both straight north/south arm reaches while separate lower arm roofs occupied those same spans, creating overlapping roof volumes and incompatible ridge heights. P01 separates the crossing and arm footprints; P08 and modern M18/M20 views show the high crossing roof and lower conch/arm roof masses as distinct forms. The revised roof layout preserves the existing 12 m crossing span, 6 m straight-arm lengths, 33 m crossing ridge and 29 m arm/conch ridges; it introduces no new dimension. Rebuild and compare TOP, NE, SE and M18 views. The visible step and roof valleys remain simplified and require joint silhouette review; keep the massing gate open.

## 2026-09-27 — Test M22 from its published southwest viewpoint

Evidence: re-check the Commons page for M22 and use its published camera point (50.810361, 8.767583), Sony ILCE-7RM3, 86 mm full-frame-equivalent focal length, and 7642×5095 source dimensions. The local tangent-plane conversion from the approximate crossing anchor gives camera XY about (-182.1, -507.8) m. Because the page gives no camera heading or usable absolute camera altitude, render diagnostic headings 15/20/25° and local camera Z values 75/100/125 m, aiming at z=40 m; these are pose candidates, not source measurements. A bearing near 18–19° improves the projected tower-pair horizontal placement, but the current model outline still mismatches and foreground obscures the lower church. Keep M22 as an independent qualitative tower/global-order reference only; do not infer geometry from it or count it as a massing-gate camera.

## 2026-09-27 — Add M23 and test its southeast camera metadata

Evidence: add the 5184×3456 Commons view from Firmaneiplatz, with published camera coordinates (50.814755, 8.771063), explicit heading 315 degrees, Canon EOS 550D and 18 mm focal length. Retain the GPS-derived local XY (62.7, -18.7 m), heading, focal length and 22.3 mm sensor width; render nine temporary combinations of eye-level camera Z=1.7 m, aim distances 45/60/75 m and target z=15/22/29 m. The overlays remain visibly displaced, and target-height variation does not resolve the alignment. Do not infer a geometry change or treat M23 as a calibrated massing view. Commons' description says 20 June 2021 while the EXIF says 20 June 2025; retain both dates pending resolution. Local experimental use is covered by the user's authorization; redistribution still awaits licence review.

## 2026-09-27 — Recheck M23 heading against the mapped building direction

Correction: the previous camera matrix fixed the Commons 315-degree heading and therefore did not test whether the published bearing could explain the displacement. From the published GPS (50.814755, 8.771063), the approximate project crossing anchor lies at bearing 286.6 degrees. Render a temporary heading sweep 280–315 degrees with the GPS, 18 mm focal length and sensor fixed, then refine 298/300/302/304/306 degrees and test aim distances 50/60/70 m with target heights 15/22/29 m near 300 degrees. Broad horizontal placement improves around 300–302 degrees versus 315 degrees, but tower spacing, crossing-turret position and roof contours still diverge; camera pose remains unresolved and no geometry change is accepted. Retain the mismatch between the Commons heading and visual candidate in the camera record.

## 2026-09-27 — Add M24 as a remote tower and roof reference

Evidence: add the 4957×3298 Commons photograph taken 2021-09-02 from Spiegelslustturm with a Nikon D780 and 260 mm focal length. The file page documents CC BY-SA 4.0, but publishes no camera coordinates or heading. The long-lens frame shows the west tower pair and part of the roofscape; foreground buildings crop the lower church and east choir. Record M24 for qualitative tower/roof context only. It cannot calibrate a camera, support dimensions, validate the full silhouette or pass the massing gate. No geometry changes; no geometry iteration is added.
