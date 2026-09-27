"""Render M21 bearing and target-height candidates within the Commons NW sector."""
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

# Commons records cardinal NW, not a precise azimuth. Test bearings within that
# cardinal sector and target heights separately; all are visual-fit inferences.
origin = Vector(camera.location)
camera.data.lens = 29.0
camera.data.sensor_fit = "HORIZONTAL"
camera.data.sensor_width = 14.42
scene.camera = camera
scene.render.resolution_x = 836
scene.render.resolution_y = 1192
scene.render.resolution_percentage = 100
scene.render.image_settings.file_format = "PNG"
for heading_degrees in (325.0, 330.0, 335.0):
    heading = math.radians(heading_degrees)
    for target_z in (17.0, 22.0, 27.0, 32.0):
        target = Vector((origin.x + 32.0 * math.sin(heading),
                         origin.y + 32.0 * math.cos(heading), target_z))
        camera.rotation_euler = (target - origin).to_track_quat("-Z", "Y").to_euler()
        scene.render.filepath = str(OUT / f"VAL_M21_DIAG_H{int(heading_degrees)}_Z{int(target_z)}.png")
        bpy.ops.render.render(write_still=True)
        print(f"rendered M21 inferred NW-sector candidate: heading={heading_degrees:g}, target z={target_z:g} m")
