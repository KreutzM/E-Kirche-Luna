"""Render M06 north-photo camera candidates from Commons GPS/focal metadata."""
import math
from pathlib import Path

import bpy
from mathutils import Vector


ROOT = Path.cwd()
OUT = ROOT / "validation" / "renders"
OUT.mkdir(parents=True, exist_ok=True)
scene = bpy.context.scene
camera = bpy.data.objects.get("VAL_N")
if camera is None:
    raise RuntimeError("VAL_N is missing; rebuild the validation cameras first")

# Commons M06 point-of-view GPS converted from WGS84 relative to the project's
# approximate crossing anchor. EXIF altitude is absolute and not translated to
# project Z because the ground elevation at the camera position is unknown.
lat0, lon0 = 50.814923, 8.770172
lat, lon = 50.815377, 8.770030
camera.location = (
    math.radians(lon - lon0) * 6378137.0 * math.cos(math.radians(lat0)),
    math.radians(lat - lat0) * 6378137.0,
    1.7,
)
camera.data.type = "PERSP"
camera.data.sensor_fit = "HORIZONTAL"
camera.data.sensor_width = 24.0
camera.data.lens = 24.0
scene.camera = camera
scene.render.resolution_x = 836
scene.render.resolution_y = 1254
scene.render.resolution_percentage = 100
scene.render.image_settings.file_format = "PNG"

for heading_degrees in (205.0, 215.0, 225.0):
    heading = math.radians(heading_degrees)
    for aim_distance in (55.0, 65.0, 75.0):
        for target_z in (20.0, 30.0, 40.0):
            target = Vector((camera.location.x + aim_distance * math.sin(heading),
                             camera.location.y + aim_distance * math.cos(heading),
                             target_z))
            camera.rotation_euler = (target - camera.location).to_track_quat("-Z", "Y").to_euler()
            scene.render.filepath = str(
                OUT / f"VAL_M06_DIAG_H{int(heading_degrees)}_D{int(aim_distance)}_Z{int(target_z)}.png"
            )
            bpy.ops.render.render(write_still=True)
            print(f"rendered M06 inferred aim: heading={heading_degrees:g}, distance={aim_distance:g} m, z={target_z:g} m")
