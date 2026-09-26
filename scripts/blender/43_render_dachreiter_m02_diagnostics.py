"""Compare crossing-turret height variants from the M02 southeast view."""
from pathlib import Path
import json

import bpy


ROOT = Path.cwd()
OUT = ROOT / "validation" / "renders"
OUT.mkdir(parents=True, exist_ok=True)
PARAMS = json.loads((ROOT / "data" / "model_parameters.json").read_text(encoding="utf-8"))
scene = bpy.context.scene
camera = bpy.data.objects.get("VAL_SE")
spire = bpy.data.objects.get("ROOF_DachreiterSpire")
if camera is None or spire is None:
    raise RuntimeError("VAL_SE or ROOF_DachreiterSpire is missing; rebuild the scene first")

# Keep the existing M02 GPS/focal/crop visual-fit camera fixed. Only the
# low-confidence roof-turret spire rise changes in memory; no file is saved.
scene.camera = camera
scene.render.resolution_x = 1200
scene.render.resolution_y = 991
scene.render.resolution_percentage = 100
scene.render.image_settings.file_format = "PNG"
ridge = float(PARAMS["inferred"]["main_roof_ridge_height"])
body_height = float(PARAMS["inferred"]["dachreiter_body_height"])
embed = float(PARAMS["inferred"]["dachreiter_roof_embed"])
base_z = ridge - embed + body_height
old_top_z = ridge + float(PARAMS["inferred"]["dachreiter_height_above_ridge"])
original_z = [vertex.co.z for vertex in spire.data.vertices]
for rise in (12.0, 16.0, 20.0, 24.0, 28.0, 32.0):
    new_top_z = ridge + rise
    ratio = (new_top_z - base_z) / (old_top_z - base_z)
    for vertex, old_z in zip(spire.data.vertices, original_z):
        vertex.co.z = base_z + (old_z - base_z) * ratio
    spire.data.update()
    scene.render.filepath = str(OUT / f"VAL_SE_TURRET_DIAG_RISE{int(rise)}.png")
    bpy.ops.render.render(write_still=True)
    print(f"rendered M02-view temporary roof-turret rise={rise:g} m")
