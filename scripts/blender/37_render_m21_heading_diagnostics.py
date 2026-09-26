"""Test small M21 heading offsets while holding source location and framing fixed."""
from pathlib import Path
import math

import bpy
from mathutils import Vector


ROOT = Path.cwd()
OUT = ROOT / "validation" / "renders"
OUT.mkdir(parents=True, exist_ok=True)
scene = bpy.context.scene
camera = bpy.data.objects.get("VAL_M21")
if camera is None:
    raise RuntimeError("VAL_M21 is missing; rebuild the validation cameras first")

origin = Vector(camera.location)
distance = 32.0
target_z = 24.0
for heading in (315.0, 320.0, 325.0, 330.0):
    angle = math.radians(heading)
    target = Vector((origin.x + distance * math.sin(angle),
                     origin.y + distance * math.cos(angle), target_z))
    camera.rotation_euler = (target - origin).to_track_quat("-Z", "Y").to_euler()
    scene.camera = camera
    scene.render.resolution_x = 836
    scene.render.resolution_y = 1192
    scene.render.resolution_percentage = 100
    scene.render.image_settings.file_format = "PNG"
    scene.render.filepath = str(OUT / f"VAL_M21_DIAG_H{int(heading)}.png")
    bpy.ops.render.render(write_still=True)
    print(f"rendered M21 heading diagnostic {heading:g} degrees")
