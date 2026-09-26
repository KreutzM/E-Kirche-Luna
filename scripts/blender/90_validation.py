"""Render the named evidence-linked validation views."""
from pathlib import Path
import bpy

ROOT = Path.cwd()
OUT = ROOT / "validation" / "renders"
OUT.mkdir(parents=True, exist_ok=True)

scene = bpy.context.scene
available_engines = set(bpy.types.RenderSettings.bl_rna.properties["engine"].enum_items.keys())
scene.render.engine = "BLENDER_EEVEE_NEXT" if "BLENDER_EEVEE_NEXT" in available_engines else "BLENDER_EEVEE"
scene.render.image_settings.file_format = "PNG"
scene.render.image_settings.color_mode = "RGBA"
scene.render.resolution_percentage = 100
scene.render.film_transparent = False

cameras = [obj for obj in bpy.data.objects if obj.type == "CAMERA" and obj.name.startswith("VAL_")]
if not cameras:
    raise RuntimeError("No validation cameras named VAL_* exist. Run 40_validation_cameras.py first.")

for camera in sorted(cameras, key=lambda obj: obj.name):
    scene.camera = camera
    scene.render.resolution_x = int(camera.get("render_resolution_x", 1600))
    scene.render.resolution_y = int(camera.get("render_resolution_y", 1200))
    scene.render.filepath = str(OUT / (camera.name + ".png"))
    bpy.ops.render.render(write_still=True)
    print("rendered", camera.name, scene.render.resolution_x, scene.render.resolution_y,
          "evidence", camera.get("evidence_ids", ""))
