"""Render M23 camera candidates using its Commons GPS, heading and focal metadata.

GPS XY, the page's 315-degree heading, camera model, focal length and source
dimensions are held fixed. Local camera Z, horizontal aim distance and target
elevation are visual-fit candidates; this script does not save the scene or
change the accepted validation cameras.
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

# Commons file-page point of view and the project's approximate crossing anchor.
lat0, lon0 = 50.814923, 8.770172
lat, lon = 50.814755, 8.771063
camera_xy = (
    math.radians(lon - lon0) * 6378137.0 * math.cos(math.radians(lat0)),
    math.radians(lat - lat0) * 6378137.0,
)
heading_degrees = 315.0  # Explicit Commons heading metadata, not a sector center.
heading = math.radians(heading_degrees)

# The source page records Canon EOS 550D, 18 mm, and a 5184x3456 original.
camera.data.type = "PERSP"
camera.data.sensor_fit = "HORIZONTAL"
camera.data.sensor_width = 22.3
camera.data.lens = 18.0
scene.render.resolution_x = 1296
scene.render.resolution_y = 864
scene.render.resolution_percentage = 100
scene.render.image_settings.file_format = "PNG"

for aim_distance in (45.0, 60.0, 75.0):
    target_xy = (camera_xy[0] + aim_distance * math.sin(heading),
                 camera_xy[1] + aim_distance * math.cos(heading))
    for target_z in (15.0, 22.0, 29.0):
        camera.location = (camera_xy[0], camera_xy[1], 1.7)
        target = Vector((target_xy[0], target_xy[1], target_z))
        camera.rotation_euler = (target - camera.location).to_track_quat("-Z", "Y").to_euler()
        scene.camera = camera
        scene.render.filepath = str(
            OUT / f"VAL_M23_DIAG_D{int(aim_distance)}_ZT{int(target_z)}.png"
        )
        bpy.ops.render.render(write_still=True)
        print(
            "rendered M23 candidate: "
            f"GPS-derived XY=({camera_xy[0]:.1f},{camera_xy[1]:.1f}) m, "
            f"heading={heading_degrees:g} deg, eye-height=1.7 m, "
            f"aim distance={aim_distance:g} m, target z={target_z:g} m"
        )
