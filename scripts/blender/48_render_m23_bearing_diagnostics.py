"""Test M23 camera bearings against the camera-to-crossing direction.

The published GPS, 18 mm focal length and image format stay fixed. Candidate
bearings are visual diagnostics around both the published 315-degree heading
and the bearing from the published camera point to the project crossing.
Nothing is saved to the accepted validation camera or blend file.
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
crossing_bearing = math.degrees(math.atan2(-camera_xy[0], -camera_xy[1])) % 360.0

camera.data.type = "PERSP"
camera.data.sensor_fit = "HORIZONTAL"
camera.data.sensor_width = 22.3
camera.data.lens = 18.0
scene.render.resolution_x = 1296
scene.render.resolution_y = 864
scene.render.resolution_percentage = 100
scene.render.image_settings.file_format = "PNG"

for bearing in (298.0, 300.0, 302.0, 304.0, 306.0):
    distance = 60.0
    theta = math.radians(bearing)
    target_xy = (camera_xy[0] + distance * math.sin(theta),
                 camera_xy[1] + distance * math.cos(theta))
    camera.location = (camera_xy[0], camera_xy[1], 1.7)
    target = Vector((target_xy[0], target_xy[1], 22.0))
    camera.rotation_euler = (target - camera.location).to_track_quat("-Z", "Y").to_euler()
    scene.camera = camera
    scene.render.filepath = str(OUT / f"VAL_M23_DIAG_H{int(bearing)}_D60_ZT22.png")
    bpy.ops.render.render(write_still=True)
    print(
        f"rendered bearing={bearing:g} deg; published=315 deg; "
        f"camera-to-crossing={crossing_bearing:.1f} deg; "
        f"GPS XY=({camera_xy[0]:.1f},{camera_xy[1]:.1f}) m; "
        "distance=60 m, camera Z=1.7 m, target Z=22 m"
    )
