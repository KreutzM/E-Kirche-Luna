"""Render G01 terrain-intersection outlines over the reconstruction."""
from pathlib import Path

import bpy


ROOT = Path.cwd()
OUT = ROOT / "validation" / "renders"
OUT.mkdir(parents=True, exist_ok=True)
scene = bpy.context.scene
references = [obj for obj in bpy.data.objects
              if obj.get("geodata_source_id") == "G01_FOOTPRINT"]
if not references:
    raise RuntimeError("G01 ground lines are missing; run 30_import_lod2_reference.py first")

previous_visibility = {obj.name: obj.hide_render for obj in references}
try:
    for obj in references:
        obj.hide_render = False

    for view in ("TOP", "M21", "SE"):
        camera = bpy.data.objects.get("VAL_" + view)
        if camera is None:
            raise RuntimeError(f"Missing validation camera VAL_{view}")
        scene.camera = camera
        scene.render.resolution_x = int(camera.get("render_resolution_x", 1200))
        scene.render.resolution_y = int(camera.get("render_resolution_y", 1200))
        scene.render.resolution_percentage = 100
        scene.render.image_settings.file_format = "PNG"
        scene.render.filepath = str(OUT / f"LOD2_G01_OVERLAY_{view}.png")
        bpy.ops.render.render(write_still=True)
        print("rendered G01 overlay", view)
finally:
    for obj in references:
        obj.hide_render = previous_visibility[obj.name]
