# Quantitative camera calibration

## Purpose

Photo overlays are useful for diagnosis, but they are not a camera solution. During the massing phase, geometry may only be changed from a photographic discrepancy after the corresponding evidence camera has a numerical 2D-to-3D fit with a reported reprojection error.

The project therefore separates:

- dataset validation: provenance, schema, dimensions and assumption bookkeeping;
- camera/model validation: numerical photo registration against explicit architectural landmarks.

## Required workflow

1. Work on the exact source raster whose pixel dimensions are recorded in validation/camera_landmarks.yaml.
2. Select stable architectural landmarks that are unambiguous in both image and current parametric model. Prefer corners, ridge intersections, tower tips, eave intersections, conch facet vertices and other high-contrast structural points. Avoid vegetation, shadows, temporary objects and poorly defined decorative points.
3. Record at least the configured minimum number of landmarks across the image, not only in one local cluster. Each landmark must contain:
   - a stable id;
   - model_xyz_m in project coordinates;
   - image_xy_px in source-raster pixels;
   - sigma_px expressing annotation uncertainty.
4. Set the view status to annotated.
5. Run:
   make camera-fit VIEW=M02
6. Inspect validation/camera_fits/M02.json. The fit records RMS, median, P95 and maximum pixel error, the fitted camera position/orientation, focal scale, principal point, distortion terms and per-landmark residuals.
7. Only an accepted fit may be used to argue that a remaining image discrepancy is a geometry discrepancy.
8. After a geometry change, update any affected model landmark coordinates and refit. The fit JSON contains a hash of its observation block; changed observations make the fit stale.

## Priors and metadata

Published GPS, focal length, sensor information and direction metadata are evidence, not values to silently overwrite. Use them as fixed values or explicit priors according to their reliability.

A camera target point is not metadata and must never be treated as a measured quantity. The old heading/target-height sweep scripts are retained as historical diagnostics, but they are no longer the default calibration method.

If image-page and EXIF positions conflict, preserve both facts and use a broad or mixture-like position prior rather than selecting the one that visually fits best without documentation.

## Camera height and terrain

Do not assume that every camera is at project z=1.7 m. That value is only an eye-height placeholder relative to an unknown local ground level. When absolute camera altitude or suitable terrain data are available, tie the camera to the same vertical datum as the project and use the resulting local z as a prior.

## Wide-angle images

An ideal pinhole camera can fail on wide-angle images even when the pose is otherwise correct. For such images, radial distortion refinement may be enabled. M25 is configured this way because its 15 mm lens and crop make pinhole-only registration especially questionable.

Do not use distortion to absorb obvious geometry errors. Large fitted k1/k2 values, large principal-point shifts or large focal-scale changes are diagnostic warnings and must be discussed before accepting the camera.

## Acceptance

The current massing requirement is at least three accepted independent photo fits, preferably spanning different directions. Passing that numerical threshold is necessary but not sufficient to pass the massing gate: the dimensional evidence, roof topology, silhouette and documented unresolved conflicts must still be reviewed.

Run:

- make validate-data for provenance/schema consistency only;
- make validate-model for quantitative camera evidence;
- make validate for both.

A green dataset validator alone does not mean the 3D model is correct.
