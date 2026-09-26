"""Render M18 with its Commons position/heading and EXIF focal length."""
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

# M18 and M21 were photographed from the same Commons-mapped point in one
# session. The source records cardinal NW, whose nominal centre is 315 degrees;
# it does not provide a degree-level azimuth. M18 EXIF records a 24 mm lens;
# its landscape sensor width is Canon 550D's 22.3 mm. Camera height and target
# elevation remain inferred. Test bearings within the NW sector without
# automatically accepting any candidate.
origin = Vector(camera.location)
distance = 32.0
target_z = 24.0
camera.data.lens = 24.0
camera.data.sensor_fit = "HORIZONTAL"
camera.data.sensor_width = 22.3
scene.camera = camera
scene.render.resolution_x = 1200
scene.render.resolution_y = round(1200 * 3367 / 5209)
scene.render.resolution_percentage = 100
scene.render.image_settings.file_format = "PNG"
for heading_degrees in (325.0, 330.0):
    heading = math.radians(heading_degrees)
    for target_z in (24.0, 28.0, 32.0, 36.0):
        target = Vector((origin.x + distance * math.sin(heading),
                         origin.y + distance * math.cos(heading), target_z))
        camera.rotation_euler = (target - origin).to_track_quat("-Z", "Y").to_euler()
        scene.render.filepath = str(OUT / f"VAL_M18_DIAG_H{int(heading_degrees)}_Z{int(target_z)}.png")
        bpy.ops.render.render(write_still=True)
        print(f"rendered M18 candidate heading={heading_degrees:g}, target z={target_z:g} m")
