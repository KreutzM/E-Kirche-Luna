# Validation

## Rebuild the scene and renders

From the repository root, run:

```powershell
./scripts/blender/build_scene.ps1 -BlenderExe "C:\Program Files\Blender Foundation\Blender 5.2\blender.exe"
```

The wrapper initializes the scene once, then opens the saved `.blend` for every geometry, camera, and render script. The ordered scripts are `00_scene_setup.py`, `10_massing.py`, `20_towers_roofs.py`, `30_import_lod2_reference.py`, `40_validation_cameras.py`, and `90_validation.py`. The resulting render files are written to the ignored local `validation/renders/` folder.

Validation cameras should be named `VAL_*` in Blender and tied to entries in `reference_views.yaml`.
Executable camera positions, projection types, image framing and the evidence/calibration notes are
stored in `camera_parameters.json`. GPS and focal lengths are used only where present in the
per-image Commons metadata; local camera height or aim is labelled as inferred when unknown.
Plan-aligned architectural points are transformed into true east/north world coordinates with the
shared `scripts/blender/geometry_transform.py` helper. The current mapped axis estimate is recorded
in `data/coordinate_system.yaml` and mirrored in `data/model_parameters.json`; it rotates around
the crossing origin without changing the project axes.

The open Hessian LoD2 reference feature `G01` is imported from
`sources/geodata/G01_Building_DEHE06210000EgxB.gml` by `30_import_lod2_reference.py` into the
`REFERENCE` collection. It is mapped from WGS84/DHHN2016 to the project using the approximate
crossing coordinate and the dataset's minimum ground elevation. Its objects are wireframe guides
hidden from final renders; this vertical alignment is for visual comparison only.

Run `python scripts/analyze_lod2_reference.py` to reproduce the source coordinate count, horizontal
minimum rectangle, long-axis orientation and total elevation range recorded in
`data/geospatial_sources.yaml`. This comparison does not promote LoD2 geometry to a measured
architectural dimension. `35_render_lod2_diagnostic.py` can render G01 alone from the SE, S and TOP
validation cameras; `36_render_m21_target_diagnostics.py` compares inferred M21 target heights,
`37_render_m21_heading_diagnostics.py` compares bearings inside the recorded cardinal NW sector,
`39_render_m18_registration_diagnostics.py` renders M18 bearing candidates, and
`41_render_m21_nw_aim_candidate.py` renders an M21 matrix at bearings 325/330/335 degrees and target heights z=17/22/27/32 m. `42_render_dachreiter_height_diagnostics.py`
and `43_render_dachreiter_m02_diagnostics.py` test temporary in-memory turret heights from M21 and M02 views.
`45_render_m06_camera_candidates.py` uses M06's Commons point-of-view GPS and recorded 16 mm / 24 mm-equivalent focal lengths to test inferred headings, target distances and heights; its temporary candidates do not replace the saved N elevation proxy or constitute a solved camera.
`50_render_m25_camera_candidates.py` compares the M25 Commons-page camera point with embedded EXIF GPS. It tests headings around the west-facade bearing, inferred local camera heights and target heights while retaining the 15 mm lens. The two locations differ by about 15 m; the active sensor crop is provisional. No candidate is accepted as a camera solve or used to change tower geometry.
The selected 20 m rise remains a low-confidence inferred candidate. `38_render_lod2_overlay_diagnostic.py` overlays G01 `terrainIntersection` ground lines
on the model from TOP, M21 and SE. TOP is the useful footprint comparison; M21/SE show the same
ground lines near the image base and do not validate roof silhouettes. The lines are separate
reference curves, not roof-surface wireframes or project geometry. These temporary diagnostic renders
are ignored local files and do not change the saved camera or geometry. `44_create_evidence_overlays.py`
creates photo/render blends for M02, M05, M18, M21 candidates and the M06 orthographic proxy/perspective candidate; it preserves each full image and letterboxes
aspect-ratio mismatches. It also makes approximate W comparisons using M10/M11 against the
orthographic elevation proxy; those photos have no usable camera pose. M06 has a GPS point and focal
length, but its heading and local camera height remain unknown; both its orthographic proxy and
temporary perspective candidate are diagnostic only. Framing differences cannot yet be assigned to
model geometry. These blends are not pass/fail
metrics or calibrated camera solutions. Cyan model-envelope outlines use zero-alpha letterbox regions
so aspect-ratio padding is not mistaken for a silhouette edge.

Do not create visually convenient cameras and then claim agreement. Camera changes should be motivated by image evidence or documented calibration assumptions.

The official exterior tour exposes four named panoramas. `scripts/download_virtual_tour_faces.py` reconstructs each front cube face at 3072 × 3072 from its tiled source and records tile URLs/hashes in `sources/virtual_tour_metadata.json`; the assembled images are cached locally under the ignored `references/images/virtual_tour/` path. Their camera positions are not published. Use T01–T04 only to compare broad exterior/roof geometry, never as metric images or solved cameras. The tour reuse licence is not stated; local experimental use is user-authorized and redistribution still requires a licence review.
