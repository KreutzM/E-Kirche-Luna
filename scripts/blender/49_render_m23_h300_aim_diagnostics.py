"""Check M23 framing around the better-overlap 300-degree bearing candidate.

This is a diagnostic only: the published GPS and optics stay fixed, while
heading 300 degrees is explicitly treated as an inferred fit candidate.
Aim distance and target height are varied without saving the scene.
"""
import math
from pathlib import Path

import bpy
from mathutils import Vector


ROOT = Path.cwd()
OUT = ROOT / "validation" / "renders"
OUT.mkdir(parents=True, exist_ok=True)
scene = bpy.context.scene
camera = bpy.data.objects.get("VAL_SE")
if camera is None:
    raise RuntimeError("VAL_SE is missing; rebuild the validation cameras first")

lat0, lon0 = 50.814923, 8.770172
lat, lon = 50.814755, 8.771063
camera_xy = (
    math.radians(lon - lon0) * 6378137.0 * math.cos(math.radians(lat0)),
    math.radians(lat - lat0) * 6378137.0,
)
bearing = math.radians(300.0)

camera.data.type = "PERSP"
camera.data.sensor_fit = "HORIZONTAL"
camera.data.sensor_width = 22.3
camera.data.lens = 18.0
scene.render.resolution_x = 1296
scene.render.resolution_y = 864
scene.render.resolution_percentage = 100
scene.render.image_settings.file_format = "PNG"

for distance in (50.0, 60.0, 70.0):
    for target_z in (15.0, 22.0, 29.0):
        target_xy = (camera_xy[0] + distance * math.sin(bearing),
                     camera_xy[1] + distance * math.cos(bearing))
        camera.location = (camera_xy[0], camera_xy[1], 1.7)
        target = Vector((target_xy[0], target_xy[1], target_z))
        camera.rotation_euler = (target - camera.location).to_track_quat("-Z", "Y").to_euler()
        scene.camera = camera
        scene.render.filepath = str(
            OUT / f"VAL_M23_DIAG_H300_D{int(distance)}_ZT{int(target_z)}.png"
        )
        bpy.ops.render.render(write_still=True)
        print(
            f"rendered inferred bearing=300 deg, distance={distance:g} m, "
            f"target z={target_z:g} m; GPS XY=({camera_xy[0]:.1f},{camera_xy[1]:.1f}) m, "
            "camera z=1.7 m, Canon EOS 550D, 18 mm"
        )
