"""Render non-destructive M25 camera diagnostics from Commons GPS and focal data.

M25 is a cropped portrait frame from an ILCE-7RM3. The published page gives
the image and EXIF metadata but no heading or camera altitude. The active
sensor width and all pose values below are explicit diagnostic hypotheses;
the script never saves them to the working scene.
"""
import math
from pathlib import Path

import bpy
from mathutils import Vector


ROOT = Path.cwd()
OUT = ROOT / "validation" / "renders"
OUT.mkdir(parents=True, exist_ok=True)
scene = bpy.context.scene
camera = bpy.data.objects.get("VAL_W")
if camera is None:
    raise RuntimeError("VAL_W is missing; rebuild the validation cameras first")

# Commons file-page point and embedded EXIF point are both retained. They
# differ by about 15 m, so each is rendered as a separate diagnostic basis.
lat0, lon0 = 50.814923, 8.770172
camera_points = {
    "PAGEGPS": (50.8144166667, 8.7688611111),
    "EXIFGPS": (50.814533055, 8.768971111666666),
}

# The Commons raster is 3795x4744 while embedded EXIF reports a portrait
# 5304x7952 camera frame. Assuming the original portrait sensor width is
# 23.8 mm, the crop implies a 17.0 mm active horizontal width.
camera.data.type = "PERSP"
camera.data.sensor_fit = "HORIZONTAL"
camera.data.sensor_width = 23.8 * 3795.0 / 5304.0
camera.data.lens = 15.0
scene.render.resolution_x = 950
scene.render.resolution_y = 1187
scene.render.resolution_percentage = 100
scene.render.image_settings.file_format = "PNG"

for gps_basis, (lat, lon) in camera_points.items():
    camera_xy = (
        math.radians(lon - lon0) * 6378137.0 * math.cos(math.radians(lat0)),
        math.radians(lat - lat0) * 6378137.0,
    )
    # Aim at the west-facade center in the rotated east/north plan; numeric
    # heading remains swept around this image-informed direction.
    angle = math.radians(7.13)
    aim_xy = (-50.0 * math.cos(angle), -50.0 * math.sin(angle))
    dx, dy = aim_xy[0] - camera_xy[0], aim_xy[1] - camera_xy[1]
    aim_distance = math.hypot(dx, dy)
    center_heading = math.degrees(math.atan2(dx, dy)) % 360.0
    for heading_degrees in (center_heading - 8, center_heading - 4,
                            center_heading, center_heading + 4,
                            center_heading + 8):
        heading = math.radians(heading_degrees)
        target_xy = (camera_xy[0] + aim_distance * math.sin(heading),
                     camera_xy[1] + aim_distance * math.cos(heading))
        for camera_z in (2.0, 7.0):
            for target_z in (30.0, 45.0):
                camera.location = (camera_xy[0], camera_xy[1], camera_z)
                target = Vector((target_xy[0], target_xy[1], target_z))
                camera.rotation_euler = (target - camera.location).to_track_quat("-Z", "Y").to_euler()
                scene.camera = camera
                name = (f"VAL_M25_{gps_basis}_H{heading_degrees:.1f}_"
                        f"ZCAM{int(camera_z)}_ZT{int(target_z)}.png")
                scene.render.filepath = str(OUT / name)
                bpy.ops.render.render(write_still=True)
                print(
                    f"rendered {name}: GPS XY=({camera_xy[0]:.1f},{camera_xy[1]:.1f}) m, "
                    f"heading={heading_degrees:.1f} (center={center_heading:.1f}), "
                    f"camera Z={camera_z:g} m, target Z={target_z:g} m; "
                    "heading/height/aim are inferred"
                )
