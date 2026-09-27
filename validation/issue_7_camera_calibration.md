# Issue #7 — quantitative massing validation result

**Decision: not passed.** No geometry change was made. The available camera correspondences do not produce an accepted fit, so remaining photo/model differences cannot yet be assigned to geometry. Keep the massing gate closed and defer buttresses, openings, tracery, and ornament.

## Exact source rasters and observations

M02 and M05 were annotated first, followed by independent west views M10 and M25. Each fit used the local raster at its recorded pixel dimensions. SHA-256 values, image pixels, 3D points, and annotation uncertainty are in `validation/camera_landmarks.yaml`; numbered review overlays and an index are in `validation/annotation_overlays/`.

| View | Direction | Landmarks | RMS / P95 (px) | Limits (RMS / P95) | Result |
|---|---|---:|---:|---:|---|
| M02 | southeast | 8 | 164.91 / 297.11 | 15 / 30 | rejected |
| M05 | south | 8 | 148.02 / 272.78 | 15 / 30 | rejected |
| M10 | west | 10 | 73.45 / 134.38 | 15 / 30 | rejected |
| M25 | southwest / west | 12 | 174.19 / 339.89 | 20 / 40 | rejected |

The per-landmark projected positions and residuals are versioned in `validation/camera_fits/{M02,M05,M10,M25}.json`. All exceed both configured thresholds. There are **zero accepted independent views** against the required three.

## Calibration limitations

- **M02:** GPS-derived XY and the documented 27 mm-equivalent focal prior remain close to the fitted values, but the annotated tower/turret/conch set still has 164.91 px RMS. The large residuals around the crossing turret and conch mean this is not an accepted camera solution. A visual mismatch here cannot safely distinguish camera pose, roof correspondence, and massing.
- **M05:** the close portrait crop contains the south nave and roof/conch junction but no west towers or complete building silhouette. The optimized camera moves about 37 m from its GPS-derived horizontal position; RMS remains 148.02 px. The local crop and simplified conch geometry do not support stable whole-massing registration.
- **M10:** the view has no usable GPS position or focal-length metadata. Its fit reaches a camera position east of the church, local Z about 199 m, and focal scale about 3.66. Reject this as camera/intrinsic indeterminacy, not a geometry signal.
- **M25:** the Commons page and EXIF GPS points remain about 15 m apart. The official DGM1 gives similar ground levels at those points, so terrain does not resolve the horizontal conflict. The fitted radial model reduces RMS from 210.51 px to 174.19 px (17.3%), but still misses the 20/40 px limits by wide margins. Its k1/k2 are -0.117/-0.374, focal scale 1.153, and fitted local Z about 59.4 m; the pinhole solution is similarly implausible. Treat distortion as a diagnostic only. See `validation/camera_fits/M25_distortion_comparison.json` and `M25_pinhole.json`.

These residuals do not justify adjusting tower spacing/heights, the crossing turret, or conch roof dimensions. Some conch edge correspondences remain uncertain because the coarse model’s three adjacent polygonal roofs do not expose uniquely identifiable corners in these crops. No points were dropped solely to reduce residuals; the M02 tower spring estimates were removed because the model centerline was roof-occluded and not visible in the photograph.

## Camera-height and terrain evidence

The official Hessian 1 m DGM1 WCS coverage uses ETRS89 / UTM32 and DHHN2016-NH. Samples are recorded in `validation/terrain_camera_heights.json`, with the queried raster SHA-256 and exact coordinates. The approximate crossing ground sample is 184.457 m. Applying terrain difference plus an assumed 1.7 m eye height gives provisional local-Z priors of about 1.2 m (M02), 3.1 m (M05), 0.7 m (M06), and 5.0 m (M25).

The EXIF absolute altitudes do not consistently agree with terrain: M02 implies a camera 5.05 m above sampled ground; M05 altitude is 5.92 m below sampled ground; M06 is 1.50 m below sampled ground. Therefore those EXIF heights are retained as conflicting evidence, not fixed camera Z. DGM1 ground at the crossing is only an approximate proxy for the project’s nominal floor; the floor-to-ground offset and actual photographer eye heights are not surveyed.

## Geometry and gate status

The model remains at geometric iteration 28. No architectural geometry changed, no assumptions about church dimensions were added, and no validation renders needed regeneration for this camera-only work. The existing silhouette discrepancies remain unresolved rather than being reclassified as geometry errors. `make validate` was run; dataset validation passes, while model validation correctly fails because none of the four candidate fits is accepted.
