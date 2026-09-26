"""Render M21 camera target-height candidates without changing the saved camera."""
from pathlib import Path

import bpy
from mathutils import Vector


ROOT = Path.cwd()
OUT = ROOT / "validation" / "renders"
OUT.mkdir(parents=True, exist_ok=True)
scene = bpy.context.scene
camera = bpy.data.objects.get("VAL_M21")
if camera is None:
    raise RuntimeError("VAL_M21 is missing; rebuild the validation cameras first")

# The Commons camera location, heading and focal length stay fixed. Each candidate
# changes only inferred target height; horizontal aim remains 32 m along heading 315°.
target_x, target_y = -4.67, -19.52
for target_z in (20.0, 24.0, 28.0, 32.0):
    direction = Vector((target_x, target_y, target_z)) - camera.location
    camera.rotation_euler = direction.to_track_quat("-Z", "Y").to_euler()
    scene.camera = camera
    scene.render.resolution_x = 836
    scene.render.resolution_y = 1192
    scene.render.resolution_percentage = 100
    scene.render.image_settings.file_format = "PNG"
    scene.render.filepath = str(OUT / f"VAL_M21_DIAG_Z{int(target_z)}.png")
    bpy.ops.render.render(write_still=True)
    print(f"rendered M21 target-height diagnostic z={target_z:g} m")
