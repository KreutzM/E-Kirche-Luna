# Independent SfM calibration

## Why this step exists

The direct 2D<->3D camera fits in Issue #7 are useful diagnostics but they
cannot yet separate camera uncertainty from errors in the current Blender
massing. The next step therefore estimates relative camera poses and a sparse
3D structure from image-to-image correspondences only.

This is deliberately independent of:
- Blender geometry;
- the current massing parameters;
- GPS / EXIF altitude priors;
- DGM-derived local camera Z.

Only after a relative reconstruction is internally coherent should it be
aligned to metric / geospatial evidence and compared to the Blender model.

## Tooling

The runner uses the external COLMAP command-line executable. COLMAP 4.x
supports SIFT feature extraction, exhaustive matching, incremental mapping,
per-image camera models, model analysis and text export.

For heterogeneous Internet photos, use a simple radial model first. The
project therefore starts with one `SIMPLE_RADIAL` camera per image. Principal
points remain at COLMAP defaults during the initial mapping.

Set `COLMAP_EXECUTABLE` if `colmap` / `COLMAP.bat` is not on PATH.

## Inputs

Image groups are declared in `validation/sfm_config.yaml`.

The first run should use `core`. It contains present-day exterior photographs
with broad directional overlap. It intentionally excludes:
- historic photographs;
- distant telephoto context images;
- virtual-tour cube faces;
- the known problematic M04 close crop.

Fallback groups (`southeast`, `west`, `north`) exist only to diagnose
connectivity when the core image graph fragments.

The script copies local evidence rasters into a gitignored workspace and records
their SHA-256, dimensions and available EXIF make/model/focal metadata. It does
not edit the source files. Current COLMAP versions may import EXIF GPS data into
the database as pose-prior rows; when `use_pose_priors` is false, the runner
explicitly deletes those rows before matching and mapping. The compact JSON also
records verified two-view overlap-graph components, including isolated images.

## Run

Prepare only:

    make sfm-prepare

Run CPU SfM:

    make sfm

Run a fallback group:

    make sfm GROUP=southeast

Direct invocation:

    python scripts/sfm/run_colmap_sfm.py --group core --force

GPU extraction/matching may be enabled explicitly:

    python scripts/sfm/run_colmap_sfm.py --group core --force --gpu

CPU is the default for portability.

## Pipeline

For each group the runner performs:

1. stage exact local source files;
2. SIFT feature extraction;
3. exhaustive pair matching with guided matching;
4. ordinary incremental `mapper`;
5. sparse-model conversion to COLMAP text;
6. model analysis and compact JSON summary.

The ordinary mapper is intentional. Do **not** replace it with
`pose_prior_mapper` for the first pass. The relative reconstruction must be
independent of the disputed GPS / EXIF / DGM camera priors.

Local COLMAP databases, copied images, logs and sparse binaries live under
`validation/sfm_work/` and are ignored by Git.

The compact, reviewable result is written to
`validation/sfm_results/<group>.json` and should be committed.

## How to evaluate the result

Do not treat a single low bundle-adjustment error as proof that the church
massing is correct.

First evaluate whether:
- a non-trivial connected model is reconstructed;
- images from multiple directions register in the same component;
- the registered-image list matches the intended evidence group;
- estimated focal lengths / radial terms are plausible rather than extreme;
- sparse points visibly cover stable architectural structure rather than only
  vegetation, sky edges or foreground;
- repeated runs are stable enough to preserve the same broad camera ordering.

If the core set fragments, run the fallback groups to identify which views form
usable overlap clusters. Do not add arbitrary geometry constraints to force
components together.

## Georegistration comes second

Only after a coherent relative reconstruction exists should it be transformed
into the project coordinate frame.

Preferred evidence for that alignment, in order:
1. reliable published camera XY positions with documented uncertainty;
2. official DGM1 terrain plus a documented eye/tripod-height prior for camera Z;
3. LoD2 / plan control features identifiable in the sparse reconstruction;
4. documented architectural dimensions for scale cross-checks.

Conflicting EXIF altitudes are not hard constraints. M25's two conflicting GPS
positions must remain separate evidence, not silently averaged into a
pseudo-measurement.

After alignment, compare solved image cameras and sparse structure against the
Blender model. Only residuals that persist after this independent camera
solution may be considered evidence for massing changes.

## M02 intrinsic caveat

M02 is a Photoshop-processed 3696x3053 crop from a Nikon D5100. Its EXIF reports
18 mm physical focal length and 27 mm 35-mm-equivalent focal length. The current
direct camera-fit file approximates the active horizontal sensor width from the
processed crop. That approximation is not a measured crop calibration and must
not be treated as a hard intrinsic solution.

The independent SfM pass avoids relying on that hand-derived crop model by
giving M02 its own `SIMPLE_RADIAL` camera and allowing COLMAP bundle adjustment
to refine the image geometry from cross-image correspondences.
