"""Create evidence-linked validation cameras and a neutral exterior render setup."""
from pathlib import Path
import json
import bpy
from mathutils import Vector

ROOT = Path.cwd()
CONFIG = json.loads((ROOT / "validation" / "camera_parameters.json").read_text(encoding="utf-8"))


def collection(name):
    result = bpy.data.collections.get(name)
    if result is None:
        result = bpy.data.collections.new(name)
        bpy.context.scene.collection.children.link(result)
    return result


def clear_collection(name):
    for obj in list(collection(name).objects):
        bpy.data.objects.remove(obj, do_unlink=True)


def look_at(obj, target):
    direction = Vector(target) - obj.location
    obj.rotation_euler = direction.to_track_quat("-Z", "Y").to_euler()


clear_collection("CAMERAS")
clear_collection("LIGHTING")

for key, spec in CONFIG["views"].items():
    data = bpy.data.cameras.new("VAL_" + key + "_Data")
    obj = bpy.data.objects.new("VAL_" + key, data)
    collection("CAMERAS").objects.link(obj)
    obj.location = spec["location"]
    look_at(obj, spec["target"])
    data.type = spec["projection"]
    if data.type == "ORTHO":
        data.ortho_scale = spec["ortho_scale"]
    else:
        data.sensor_width = spec.get("sensor_width", 36.0)
        data.lens = spec.get("lens_35mm_equivalent", spec.get("lens", 50.0))
        data.sensor_fit = "HORIZONTAL"
    obj["view_id"] = key
    obj["evidence_ids"] = ",".join(spec["evidence_ids"])
    obj["render_resolution_x"] = spec["resolution"][0]
    obj["render_resolution_y"] = spec["resolution"][1]
    obj["calibration_note"] = spec.get("calibration", spec.get("camera_height_basis", "Evidence-linked approximate camera; see validation/camera_parameters.json."))
    if spec.get("gps_image_id"):
        obj["gps_image_id"] = spec["gps_image_id"]
        obj["gps_latitude"] = spec["gps_latitude"]
        obj["gps_longitude"] = spec["gps_longitude"]
    if spec.get("lens_35mm_equivalent"):
        obj["lens_35mm_equivalent"] = spec["lens_35mm_equivalent"]

scene = bpy.context.scene
available_engines = set(bpy.types.RenderSettings.bl_rna.properties["engine"].enum_items.keys())
scene.render.engine = "BLENDER_EEVEE_NEXT" if "BLENDER_EEVEE_NEXT" in available_engines else "BLENDER_EEVEE"
scene.render.resolution_percentage = 100
scene.render.image_settings.file_format = "PNG"
scene.render.film_transparent = False
scene.render.image_settings.color_mode = "RGBA"
scene.render.resolution_x = 1600
scene.render.resolution_y = 1200
scene.render.resolution_percentage = 100
scene.render.image_settings.compression = 15
scene.render.filepath = str(ROOT / "validation" / "renders" / "VAL.png")
scene.render.resolution_percentage = 100
scene.render.threads_mode = "FIXED"
scene.render.threads = 8
scene.render.image_settings.color_depth = "8"
scene.render.resolution_percentage = 100
scene.render.use_file_extension = True
scene.render.dither_intensity = 0.0

world = scene.world or bpy.data.worlds.new("Exterior validation world")
scene.world = world
world.use_nodes = True
background = world.node_tree.nodes.get("Background")
background.inputs["Color"].default_value = (0.55, 0.59, 0.64, 1.0)
background.inputs["Strength"].default_value = 0.8

sun_data = bpy.data.lights.new("Validation Sun", type="SUN")
sun_data.energy = 2.2
sun_data.angle = 0.12
sun = bpy.data.objects.new("Validation Sun", sun_data)
collection("LIGHTING").objects.link(sun)
sun.location = (-35.0, -55.0, 90.0)
look_at(sun, (0.0, 0.0, 18.0))

area_data = bpy.data.lights.new("Validation Fill", type="AREA")
area_data.energy = 35000.0
area_data.shape = "DISK"
area_data.size = 45.0
area = bpy.data.objects.new("Validation Fill", area_data)
collection("LIGHTING").objects.link(area)
area.location = (10.0, 45.0, 62.0)
look_at(area, (-12.0, 0.0, 23.0))

scene["validation_camera_config"] = "validation/camera_parameters.json"
scene_path = ROOT / "blender" / "scene" / "elisabethkirche.blend"
bpy.ops.wm.save_as_mainfile(filepath=str(scene_path))
print("Created evidence-linked cameras:", ", ".join("VAL_" + k for k in CONFIG["views"]))
