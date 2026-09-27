"""Render diagnostic M22 camera poses from its Commons GPS and focal metadata.

The camera site is retained exactly as published on the Commons file page. Its
absolute altitude is unavailable, so candidate local heights are explicitly
visual-fit diagnostics. This script never saves the Blender scene or changes
the accepted validation cameras.
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

# Commons file-page point of view and project's approximate crossing anchor.
lat0, lon0 = 50.814923, 8.770172
lat, lon = 50.810361, 8.767583
camera_xy = (
    math.radians(lon - lon0) * 6378137.0 * math.cos(math.radians(lat0)),
    math.radians(lat - lat0) * 6378137.0,
)
distance = math.hypot(*camera_xy)

# Commons records Sony ILCE-7RM3, 86 mm full-frame focal length and source POV.
# The heading is not recorded. Candidates bracket the bearing to the crossing
# (about 20 degrees); local camera height and aim elevation remain inferred.
camera.data.type = "PERSP"
camera.data.sensor_fit = "HORIZONTAL"
camera.data.sensor_width = 36.0
camera.data.lens = 86.0
scene.render.resolution_x = 1280
scene.render.resolution_y = 853
scene.render.resolution_percentage = 100
scene.render.image_settings.file_format = "PNG"

for heading_degrees in (15.0, 20.0, 25.0):
    heading = math.radians(heading_degrees)
    target_xy = (camera_xy[0] + distance * math.sin(heading),
                 camera_xy[1] + distance * math.cos(heading))
    for camera_z in (75.0, 100.0, 125.0):
        camera.location = (camera_xy[0], camera_xy[1], camera_z)
        target = Vector((target_xy[0], target_xy[1], 40.0))
        camera.rotation_euler = (target - camera.location).to_track_quat("-Z", "Y").to_euler()
        scene.camera = camera
        scene.render.filepath = str(
            OUT / f"VAL_M22_DIAG_H{int(heading_degrees)}_ZCAM{int(camera_z)}.png"
        )
        bpy.ops.render.render(write_still=True)
        print(
            "rendered M22 candidate: "
            f"GPS-derived XY=({camera_xy[0]:.1f},{camera_xy[1]:.1f}) m, "
            f"heading={heading_degrees:g} deg, local camera Z={camera_z:g} m, "
            "aim elevation=40 m (all pose values except published XY/focal are inferred)"
        )
