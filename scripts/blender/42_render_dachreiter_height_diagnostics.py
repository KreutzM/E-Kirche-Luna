"""Compare crossing-turret height candidates without saving scene changes."""
from pathlib import Path
import math
import json

import bpy
from mathutils import Vector


ROOT = Path.cwd()
OUT = ROOT / "validation" / "renders"
OUT.mkdir(parents=True, exist_ok=True)
PARAMS = json.loads((ROOT / "data" / "model_parameters.json").read_text(encoding="utf-8"))
scene = bpy.context.scene
camera = bpy.data.objects.get("VAL_M21")
spire = bpy.data.objects.get("ROOF_DachreiterSpire")
if camera is None or spire is None:
    raise RuntimeError("VAL_M21 or ROOF_DachreiterSpire is missing; rebuild the scene first")

# Hold the M21 GPS point, portrait crop, lens and NW-sector candidate pose
# fixed. Only the inferred spire rise above the main ridge varies. This is an
# in-memory shape diagnostic and does not save the .blend or model parameters.
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

ridge = float(PARAMS["inferred"]["main_roof_ridge_height"])
body_height = float(PARAMS["inferred"]["dachreiter_body_height"])
embed = float(PARAMS["inferred"]["dachreiter_roof_embed"])
base_z = ridge - embed + body_height
old_top_z = ridge + float(PARAMS["inferred"]["dachreiter_height_above_ridge"])
original_z = [vertex.co.z for vertex in spire.data.vertices]
for rise in (12.0, 16.0, 20.0, 24.0):
    new_top_z = ridge + rise
    ratio = (new_top_z - base_z) / (old_top_z - base_z)
    for vertex, old_z in zip(spire.data.vertices, original_z):
        vertex.co.z = base_z + (old_z - base_z) * ratio
    spire.data.update()
    scene.render.filepath = str(OUT / f"VAL_M21_TURRET_DIAG_RISE{int(rise)}.png")
    bpy.ops.render.render(write_still=True)
    print(f"rendered temporary roof-turret rise={rise:g} m")
