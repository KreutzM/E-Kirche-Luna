"""Generate the parametrically inferred church footprint and coarse exterior bodies."""
from pathlib import Path
import sys
import json
import bpy
import bmesh
sys.path.insert(0, str(Path(__file__).resolve().parent))
from geometry_transform import rotate_building_vertices, rotate_building_object

ROOT = Path.cwd()
PARAMS = json.loads((ROOT / "data" / "model_parameters.json").read_text(encoding="utf-8"))
I = PARAMS["inferred"]


def col(name):
    collection = bpy.data.collections.get(name)
    if collection is None:
        collection = bpy.data.collections.new(name)
        bpy.context.scene.collection.children.link(collection)
    return collection


def clear_collection(name):
    collection = col(name)
    for obj in list(collection.objects):
        bpy.data.objects.remove(obj, do_unlink=True)


def material(name, color):
    mat = bpy.data.materials.get(name) or bpy.data.materials.new(name)
    mat.diffuse_color = (*color, 1.0)
    mat.use_nodes = True
    bsdf = mat.node_tree.nodes.get("Principled BSDF")
    if bsdf:
        bsdf.inputs["Base Color"].default_value = (*color, 1.0)
        bsdf.inputs["Roughness"].default_value = 0.86
    return mat


STONE = material("Sandstone - pale Marburg", (0.55, 0.40, 0.28))
GUIDE = material("Reference guides", (0.05, 0.35, 0.8))


def mesh_object(name, vertices, faces, collection_name, mat=STONE, status="inferred exterior mass"):
    vertices = rotate_building_vertices(vertices)
    mesh = bpy.data.meshes.new(name + "Mesh")
    mesh.from_pydata(vertices, [], faces)
    mesh.validate(clean_customdata=True)
    bm = bmesh.new()
    bm.from_mesh(mesh)
    bmesh.ops.recalc_face_normals(bm, faces=bm.faces)
    bm.to_mesh(mesh)
    bm.free()
    mesh.update()
    obj = bpy.data.objects.new(name, mesh)
    col(collection_name).objects.link(obj)
    if mat:
        obj.data.materials.append(mat)
    obj["evidence_status"] = status
    obj["source_ids"] = "P01,P02,P06,P08,M01,M02,M04,M05,M06,M07,M19"
    return obj


def box(name, bounds, z0, z1, collection_name="MASSING", mat=STONE, status="inferred exterior mass"):
    xmin, xmax, ymin, ymax = bounds
    points = [(xmin, ymin), (xmax, ymin), (xmax, ymax), (xmin, ymax)]
    return footprint_prism(name, points, z0, z1, collection_name, mat, status)


def footprint_prism(name, points, z0, z1, collection_name="MASSING", mat=STONE, status="inferred exterior mass"):
    n = len(points)
    vertices = [(x, y, z0) for x, y in points] + [(x, y, z1) for x, y in points]
    faces = [tuple(reversed(range(n))), tuple(range(n, 2 * n))]
    faces.extend((i, (i + 1) % n, (i + 1) % n + n, i + n) for i in range(n))
    return mesh_object(name, vertices, faces, collection_name, mat, status)


def east_conch_points(base_x, half_width, tip_x):
    projection = tip_x - base_x
    return [
        (base_x, -half_width),
        (base_x + projection * 0.28, -half_width * 0.92),
        (base_x + projection * 0.60, -half_width * 0.70),
        (base_x + projection * 0.87, -half_width * 0.38),
        (tip_x, 0.0),
        (base_x + projection * 0.87, half_width * 0.38),
        (base_x + projection * 0.60, half_width * 0.70),
        (base_x + projection * 0.28, half_width * 0.92),
        (base_x, half_width),
    ]


def side_conch_points(sign, xhalf, spring_y, tip_y):
    projection = abs(tip_y - spring_y)
    return [
        (-xhalf, sign * spring_y),
        (-xhalf * 0.92, sign * (spring_y + projection * 0.28)),
        (-xhalf * 0.70, sign * (spring_y + projection * 0.60)),
        (-xhalf * 0.38, sign * (spring_y + projection * 0.87)),
        (0.0, sign * tip_y),
        (xhalf * 0.38, sign * (spring_y + projection * 0.87)),
        (xhalf * 0.70, sign * (spring_y + projection * 0.60)),
        (xhalf * 0.92, sign * (spring_y + projection * 0.28)),
        (xhalf, sign * spring_y),
    ]


def guide_cube(name, size_xyz, location):
    bpy.ops.mesh.primitive_cube_add(size=1.0, location=location)
    obj = bpy.context.object
    obj.name = name
    obj.dimensions = size_xyz
    bpy.ops.object.transform_apply(location=False, rotation=False, scale=True)
    rotate_building_object(obj)
    for owner in list(obj.users_collection):
        owner.objects.unlink(obj)
    col("REFERENCE").objects.link(obj)
    obj.display_type = "WIRE"
    obj.hide_render = True
    obj.data.materials.append(GUIDE)
    obj["evidence_status"] = "documented scale guide; not architectural surface"
    return obj


clear_collection("MASSING")
clear_collection("REFERENCE")

# West-to-east hall: six bays, with the crossing kept at the world origin.
west_extent = I["west_extent_from_crossing"]
east_extent = I["east_extent_from_crossing"]
hall_half_width = I["exterior_hall_width"] / 2.0
cross_outer_half = I["exterior_crossing_width"] / 2.0
west_tower_depth = I["west_tower_depth"]
nave_east = -cross_outer_half
nave_west = nave_east - I["nave_hall_length"]
main_wall_top = I["main_wall_top_height"]

box("MASS_NaveHall", (nave_west, nave_east, -hall_half_width, hall_half_width), 0.0, main_wall_top)
box("MASS_WestEntranceHall", (-west_extent, nave_west,
                               -hall_half_width, hall_half_width), 0.0, main_wall_top)

# Central crossing and the three equal-ended arms of the triconch plan.
box("MASS_Crossing", (-cross_outer_half, cross_outer_half, -cross_outer_half, cross_outer_half),
    0.0, main_wall_top)
arm_xhalf = I["transept_body_depth"] / 2.0
arm_spring = cross_outer_half + I["side_arm_straight_length"]
arm_tip = I["exterior_transept_span"] / 2.0
for sign, name in ((1, "North"), (-1, "South")):
    if sign > 0:
        body = [(-arm_xhalf, cross_outer_half), (arm_xhalf, cross_outer_half),
                (arm_xhalf, arm_spring), (-arm_xhalf, arm_spring)]
    else:
        body = [(-arm_xhalf, -arm_spring), (arm_xhalf, -arm_spring),
                (arm_xhalf, -cross_outer_half), (-arm_xhalf, -cross_outer_half)]
    footprint_prism("MASS_" + name + "Arm", body, 0.0, main_wall_top)
    footprint_prism("MASS_" + name + "Conch",
                    side_conch_points(sign, arm_xhalf, arm_spring, arm_tip),
                    0.0, I["side_conch_body_top_height"])

choir_half_width = I["choir_exterior_width"] / 2.0
choir_base_x = east_extent - choir_half_width
box("MASS_EastChoirBay", (cross_outer_half, choir_base_x, -choir_half_width, choir_half_width),
    0.0, I["east_choir_bay_top_height"])
footprint_prism("MASS_EastConch", east_conch_points(choir_base_x, choir_half_width, east_extent),
                0.0, I["east_conch_body_top_height"])

# Two-storey north-east sacristy envelope; roof is generated by the roof script.
sac = I["sacristy_footprint_width"]
box("MASS_Sacristy", (I["sacristy_x_min"], I["sacristy_x_min"] + sac,
                      I["sacristy_y_min"], I["sacristy_y_min"] + sac),
    0.0, 14.0)

# West central gable joins the towers and remains a plain mass until openings are validated.
gable_x0 = -west_extent
gable_x1 = nave_west
gable_half = max(I["west_gable_half_width_min"], hall_half_width - I["west_tower_width"])
gable_top = I["west_gable_peak_height"]
cross_section = [(-gable_half, main_wall_top), (0.0, gable_top), (gable_half, main_wall_top)]
vertices = [(x, y, z) for x in (gable_x0, gable_x1) for y, z in cross_section]
faces = [(0, 1, 2), (3, 5, 4), (0, 3, 4, 1), (1, 4, 5, 2), (2, 5, 3, 0)]
mesh_object("MASS_WestGable", vertices, faces, "MASSING")

# Guides are explicitly hidden from renders and do not count as building geometry.
guide_cube("REF_crossing_10m", (10.0, 10.0, 0.10), (0.0, 0.0, 0.05))
guide_cube("REF_hall_width_21_55m", (0.10, 21.55, 0.10), (0.0, 0.0, 0.15))
guide_cube("REF_tower_height_80m", (0.10, 0.10, 80.0), (-west_extent, 0.0, 40.0))

scene = bpy.context.scene
scene.unit_settings.system = "METRIC"
scene.unit_settings.length_unit = "METERS"
scene.unit_settings.scale_length = 1.0
scene["massing_iteration"] = 5
scene["massing_evidence"] = "P01,P02,P06,P07,P08,M01,M02,M04,M05,M06,M07,M09,M10,M11,M15,M16,M17,M18,M19"
scene_path = ROOT / "blender" / "scene" / "elisabethkirche.blend"
scene_path.parent.mkdir(parents=True, exist_ok=True)
bpy.ops.wm.save_as_mainfile(filepath=str(scene_path))
print("Generated exterior footprint and primary masses from data/model_parameters.json")
