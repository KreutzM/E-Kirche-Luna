"""Render one shared-pose candidate against the M21 portrait crop."""
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

# Candidate selected from the M21 portrait crop after checking the wider M18
# frame from the same Commons-mapped point. Commons records cardinal NW, not a
# precise azimuth. Heading 325, the 32 m aim distance and 32 m target height
# are visual-fit inferences; source GPS, lens and portrait crop remain fixed.
origin = Vector(camera.location)
heading = math.radians(325.0)
target = Vector((origin.x + 32.0 * math.sin(heading),
                 origin.y + 32.0 * math.cos(heading), 32.0))
camera.rotation_euler = (target - origin).to_track_quat("-Z", "Y").to_euler()
camera.data.lens = 29.0
camera.data.sensor_fit = "HORIZONTAL"
camera.data.sensor_width = 14.42
scene.camera = camera
scene.render.resolution_x = 836
scene.render.resolution_y = 1192
scene.render.resolution_percentage = 100
scene.render.image_settings.file_format = "PNG"
scene.render.filepath = str(OUT / "VAL_M21_DIAG_H325_Z32.png")
bpy.ops.render.render(write_still=True)
print("rendered M21 inferred NW-sector candidate: heading=325, target z=32 m")
