# Validation

## Rebuild the scene and renders

From the repository root, run:

```powershell
./scripts/blender/build_scene.ps1 -BlenderExe "C:\Program Files\Blender Foundation\Blender 5.2\blender.exe"
```

The wrapper initializes the scene once, then opens the saved `.blend` for every geometry, camera, and render script. The ordered scripts are `00_scene_setup.py`, `10_massing.py`, `20_towers_roofs.py`, `40_validation_cameras.py`, and `90_validation.py`. The resulting render files are written to the ignored local `validation/renders/` folder.

Validation cameras should be named `VAL_*` in Blender and tied to entries in `reference_views.yaml`.
Executable camera positions, projection types, image framing and the evidence/calibration notes are
stored in `camera_parameters.json`. GPS and focal lengths are used only where present in the
per-image Commons metadata; local camera height or aim is labelled as inferred when unknown.

Do not create visually convenient cameras and then claim agreement. Camera changes should be motivated by image evidence or documented calibration assumptions.
