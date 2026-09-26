"""Render the generalized G01 source geometry by itself for shape comparison."""
from pathlib import Path

import bpy


ROOT = Path.cwd()
OUT = ROOT / "validation" / "renders"
OUT.mkdir(parents=True, exist_ok=True)
scene = bpy.context.scene

reference_objects = [obj for obj in bpy.data.objects
                     if obj.get("geodata_source_id") == "G01"]
if not reference_objects:
    raise RuntimeError("G01 is missing; run 30_import_lod2_reference.py first")

model_collections = ("MASSING", "TOWERS", "ROOFS", "BUTTRESSES", "OPENINGS", "TRACERY", "DETAIL")
model_objects = [obj for collection_name in model_collections
                 if bpy.data.collections.get(collection_name)
                 for obj in bpy.data.collections[collection_name].objects]
previous_reference_visibility = {obj.name: obj.hide_render for obj in reference_objects}
previous_model_visibility = {obj.name: obj.hide_render for obj in model_objects}

try:
    for obj in reference_objects:
        obj.hide_render = False
    for obj in model_objects:
        obj.hide_render = True

    for view in ("SE", "S", "TOP"):
        camera = bpy.data.objects.get("VAL_" + view)
        if camera is None:
            raise RuntimeError(f"Missing validation camera VAL_{view}")
        scene.camera = camera
        scene.render.resolution_x = int(camera.get("render_resolution_x", 1600))
        scene.render.resolution_y = int(camera.get("render_resolution_y", 1200))
        scene.render.resolution_percentage = 100
        scene.render.image_settings.file_format = "PNG"
        scene.render.filepath = str(OUT / f"LOD2_G01_{view}.png")
        bpy.ops.render.render(write_still=True)
        print("rendered generalized source geometry", view)
finally:
    for obj in reference_objects:
        obj.hide_render = previous_reference_visibility[obj.name]
    for obj in model_objects:
        obj.hide_render = previous_model_visibility[obj.name]
