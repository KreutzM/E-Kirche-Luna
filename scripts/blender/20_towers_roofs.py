"""Generate the west tower masses and roof masses from the evidence-linked parameters."""
from pathlib import Path
import sys
import json
import math
import bpy
import bmesh
sys.path.insert(0, str(Path(__file__).resolve().parent))
from geometry_transform import rotate_building_vertices

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
    for obj in list(col(name).objects):
        bpy.data.objects.remove(obj, do_unlink=True)


def material(name, color, roughness=0.9):
    mat = bpy.data.materials.get(name) or bpy.data.materials.new(name)
    mat.diffuse_color = (*color, 1.0)
    mat.use_nodes = True
    shader = mat.node_tree.nodes.get("Principled BSDF")
    if shader:
        shader.inputs["Base Color"].default_value = (*color, 1.0)
        shader.inputs["Roughness"].default_value = roughness
    return mat


STONE = material("Sandstone - pale Marburg", (0.55, 0.40, 0.28))
SLATE = material("Slate roofing", (0.12, 0.16, 0.19), 0.78)


def add_mesh(name, vertices, faces, collection_name, mat, evidence, status):
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
    obj.data.materials.append(mat)
    obj["evidence_status"] = status
    obj["source_ids"] = evidence
    return obj


def box(name, cx, cy, dx, dy, z0, z1, collection_name, mat, evidence):
    x0, x1 = cx - dx / 2, cx + dx / 2
    y0, y1 = cy - dy / 2, cy + dy / 2
    points = [(x0, y0), (x1, y0), (x1, y1), (x0, y1)]
    n = len(points)
    vertices = [(x, y, z0) for x, y in points] + [(x, y, z1) for x, y in points]
    faces = [tuple(reversed(range(n))), tuple(range(n, 2 * n))]
    faces.extend((j, (j + 1) % n, (j + 1) % n + n, j + n) for j in range(n))
    return add_mesh(name, vertices, faces, collection_name, mat, evidence, "inferred exterior mass")


def taper(name, cx, cy, rx, ry, z0, z1, collection_name, mat, evidence, sides=8, top_ratio=0.03):
    vertices = []
    for z, ratio in ((z0, 1.0), (z1, top_ratio)):
        for i in range(sides):
            angle = math.pi / sides + 2 * math.pi * i / sides
            vertices.append((cx + rx * ratio * math.cos(angle),
                             cy + ry * ratio * math.sin(angle), z))
    faces = [tuple(reversed(range(sides))), tuple(range(sides, 2 * sides))]
    faces.extend((i, (i + 1) % sides, (i + 1) % sides + sides, i + sides)
                 for i in range(sides))
    return add_mesh(name, vertices, faces, collection_name, mat, evidence, "inferred exterior mass")


def extruded_profile(name, start, end, profile, axis, collection_name, mat, evidence):
    # profile pairs are (cross-axis coordinate, height); axis is X or Y.
    n = len(profile)
    if axis == "X":
        vertices = [(start, u, z) for u, z in profile] + [(end, u, z) for u, z in profile]
    else:
        vertices = [(u, start, z) for u, z in profile] + [(u, end, z) for u, z in profile]
    faces = [tuple(reversed(range(n))), tuple(range(n, 2 * n))]
    faces.extend((i, (i + 1) % n, (i + 1) % n + n, i + n) for i in range(n))
    return add_mesh(name, vertices, faces, collection_name, mat, evidence, "inferred roof mass")


def gable_x(name, x0, x1, half_width, eave, ridge, collection_name="ROOFS", evidence="P02,P06,M01,M02,M04,M05"):
    thickness = I["roof_shell_thickness"]
    profile = [(-half_width, eave), (0.0, ridge), (half_width, eave),
               (half_width, eave - thickness), (0.0, ridge - thickness), (-half_width, eave - thickness)]
    return extruded_profile(name, x0, x1, profile, "X", collection_name, SLATE, evidence)


def gable_y(name, y0, y1, half_width, eave, ridge, collection_name="ROOFS", evidence="P01,P08,M01,M02"):
    thickness = I["roof_shell_thickness"]
    profile = [(-half_width, eave), (0.0, ridge), (half_width, eave),
               (half_width, eave - thickness), (0.0, ridge - thickness), (-half_width, eave - thickness)]
    return extruded_profile(name, y0, y1, profile, "Y", collection_name, SLATE, evidence)


def longitudinal_hip_roof(name, negative_eaves, positive_eaves, eave_z, ridge_z, evidence):
    """Create faceted conch roof slopes that meet along a longitudinal ridge."""
    if len(negative_eaves) != len(positive_eaves) or len(negative_eaves) < 3:
        raise ValueError(f"{name}: paired eave paths must have equal length >= 3")
    station_count = len(negative_eaves)
    ridge_line = [((left[0] + right[0]) / 2,
                   (left[1] + right[1]) / 2,
                   ridge_z)
                  for left, right in zip(negative_eaves, positive_eaves)]
    vertices = ([(x, y, eave_z) for x, y in negative_eaves]
                + [(x, y, eave_z) for x, y in positive_eaves]
                + ridge_line)
    ridge_offset = station_count * 2
    faces = []
    for i in range(station_count - 1):
        faces.append((i, i + 1, ridge_offset + i + 1, ridge_offset + i))
        faces.append((station_count + i, ridge_offset + i,
                      ridge_offset + i + 1, station_count + i + 1))
    # Close the spring end and the concealed underside so the roof is a solid.
    faces.append((0, station_count, ridge_offset))
    # The final hip slopes from the longitudinal ridge to the flat end chord.
    faces.append((station_count - 1, station_count * 2 - 1,
                  ridge_offset + station_count - 1))
    eave_ring = list(range(station_count)) + list(
        range(station_count * 2 - 1, station_count - 1, -1))
    faces.append(tuple(reversed(eave_ring)))
    return add_mesh(name, vertices, faces, "ROOFS", SLATE, evidence, "inferred polygonal roof mass")


clear_collection("TOWERS")
clear_collection("ROOFS")

# Two matching west towers: massive two-level bases, upper belfry tier and stone spires.
west_extent = I["west_extent_from_crossing"]
tower_depth = I["west_tower_depth"]
tower_width = I["west_tower_width"]
hall_half = I["exterior_hall_width"] / 2
tower_cx = -west_extent + tower_depth / 2
tower_offset = hall_half - tower_width / 2
belfry_start = I["tower_belfry_start_height"]
spire_start = I["tower_spire_start_height"]
total_height = PARAMS["documented_anchors"]["tower_height"]

for sign, label in ((1, "North"), (-1, "South")):
    cy = sign * tower_offset
    box("TOWER_" + label + "_Lower", tower_cx, cy, tower_depth, tower_width,
        0.0, I["main_wall_top_height"], "TOWERS", STONE, "P01,P07,M09,M10,M11")
    box("TOWER_" + label + "_UpperShaft", tower_cx, cy,
        tower_depth - I["tower_upper_shaft_depth_reduction"],
        tower_width - I["tower_upper_shaft_width_reduction"],
        I["main_wall_top_height"], I["tower_midshaft_top_height"], "TOWERS", STONE, "P07,M09,M10,M11")
    box("TOWER_" + label + "_Setback", tower_cx, cy,
        tower_depth - I["tower_setback_depth_reduction"],
        tower_width - I["tower_setback_width_reduction"],
        I["tower_midshaft_top_height"], belfry_start, "TOWERS", STONE, "P07,M09,M10,M11")
    belfry_w = I["tower_belfry_width"]
    box("TOWER_" + label + "_BelfryMass", tower_cx, cy, belfry_w, belfry_w,
        belfry_start, spire_start, "TOWERS", STONE, "P07,M09,M10,M11")
    taper("TOWER_" + label + "_OctagonalSpire", tower_cx, cy, belfry_w * 0.48, belfry_w * 0.48,
          spire_start, total_height, "ROOFS", SLATE, "P07,M09,M10,M11", sides=8, top_ratio=0.012)

# Primary hall roof and intersecting transept roof.
nave_west = -I["exterior_crossing_width"] / 2 - I["nave_hall_length"]
nave_east = -I["exterior_crossing_width"] / 2
gable_x("ROOF_MainHall", nave_west, nave_east,
        I["exterior_hall_width"] / 2 + I["roof_overhang"],
        I["main_wall_top_height"], I["main_roof_ridge_height"])
gable_y("ROOF_TranseptCross", -I["side_arm_straight_length"] - I["exterior_crossing_width"] / 2,
        I["side_arm_straight_length"] + I["exterior_crossing_width"] / 2,
        I["transept_body_depth"] / 2 + I["roof_overhang"],
        I["main_wall_top_height"], I["main_roof_ridge_height"] - I["transept_ridge_reduction"])

# Three conch roofs read as polygonal hip roofs in the present-day raised views.
choir_half = I["choir_exterior_width"] / 2
choir_base = I["east_extent_from_crossing"] - choir_half
gable_x("ROOF_EastChoirBay", I["exterior_crossing_width"] / 2 - I["roof_joint_overlap"], choir_base,
        choir_half + I["roof_overhang"], I["east_choir_bay_top_height"],
        I["conch_roof_peak_height"])
east_tip = I["east_extent_from_crossing"]
east_projection = east_tip + I["roof_overhang"] - choir_base
east_stations = (0.0, 0.28, 0.60, 0.87, 1.0)
east_half_widths = (choir_half + I["roof_overhang"], choir_half * 0.92 + I["roof_overhang"],
                    choir_half * 0.70 + I["roof_overhang"], choir_half * 0.38 + I["roof_overhang"],
                    I["conch_end_chord_width"] / 2 + I["roof_overhang"])
east_negative_eaves = [(choir_base + east_projection * station, -half_width)
                       for station, half_width in zip(east_stations, east_half_widths)]
east_positive_eaves = [(x, -y) for x, y in east_negative_eaves]
longitudinal_hip_roof("ROOF_EastConch", east_negative_eaves, east_positive_eaves,
                      I["east_conch_body_top_height"], I["conch_roof_peak_height"],
                      "P08,M01,M02,M18,M19,H06")

arm_xhalf = I["transept_body_depth"] / 2
arm_spring = I["exterior_crossing_width"] / 2 + I["side_arm_straight_length"]
arm_tip = I["exterior_transept_span"] / 2
for sign, label in ((1, "North"), (-1, "South")):
    gable_y(f"ROOF_{label}Arm", sign * (I["exterior_crossing_width"] / 2),
            sign * arm_spring, arm_xhalf + I["roof_overhang"],
            I["main_wall_top_height"], I["conch_roof_peak_height"])
    projection = arm_tip + I["roof_overhang"] - arm_spring
    end_half_width = I["conch_end_chord_width"] / 2 + I["roof_overhang"]
    stations = (0.0, 0.28, 0.60, 0.87, 1.0)
    half_widths = (arm_xhalf + I["roof_overhang"], arm_xhalf * 0.92 + I["roof_overhang"],
                   arm_xhalf * 0.70 + I["roof_overhang"], arm_xhalf * 0.38 + I["roof_overhang"],
                   end_half_width)
    negative_eaves = [(-width, sign * (arm_spring + projection * station))
                      for width, station in zip(half_widths, stations)]
    positive_eaves = [(width, y) for (x, y), width in zip(negative_eaves, half_widths)]
    longitudinal_hip_roof(f"ROOF_{label}Conch", negative_eaves, positive_eaves,
                          I["side_conch_body_top_height"], I["conch_roof_peak_height"],
                          "P01,P08,M01,M02,M03,M19,M20,H06")

# Two-storey north-east sacristy with a steep pyramidal roof (Dehio, M15-M17).
sac = I["sacristy_footprint_width"]
sx0 = I["sacristy_x_min"]
sy0 = I["sacristy_y_min"]
eave = I["sacristy_eave_height"]
apex = I["sacristy_roof_peak_height"]
roof_vertices = [(sx0, sy0, eave), (sx0 + sac, sy0, eave),
                 (sx0 + sac, sy0 + sac, eave), (sx0, sy0 + sac, eave),
                 (sx0 + sac / 2, sy0 + sac / 2, apex)]
roof_faces = [(3, 2, 1, 0), (0, 1, 4), (1, 2, 4), (2, 3, 4), (3, 0, 4)]
add_mesh("ROOF_SacristyPyramid", roof_vertices, roof_faces, "ROOFS", SLATE,
         "P01,P02,M15,M16,M17", "inferred pyramidal roof mass")

# Current crossing roof turret (Dachreiter), documented as replaced in 1931.
turret_width = I["dachreiter_width"]
turret_base = I["main_roof_ridge_height"] - I["dachreiter_roof_embed"]
turret_top = I["main_roof_ridge_height"] + I["dachreiter_height_above_ridge"]
body_height = I["dachreiter_body_height"]
taper("ROOF_DachreiterBody", 0.0, 0.0, turret_width / 2, turret_width / 2,
      turret_base, turret_base + body_height, "ROOFS", STONE,
      "M01,M02,M18", sides=8, top_ratio=0.86)
taper("ROOF_DachreiterSpire", 0.0, 0.0, turret_width * 0.42, turret_width * 0.42,
      turret_base + body_height, turret_top, "ROOFS", SLATE,
      "M01,M02,M18", sides=8, top_ratio=0.008)

scene = bpy.context.scene
scene["tower_height_anchor_m"] = total_height
scene["roof_model_evidence"] = "P01,P02,P06,P07,P08,M01,M02,M03,M04,M05,M09,M10,M11,M15,M16,M17,M18,M19"
scene_path = ROOT / "blender" / "scene" / "elisabethkirche.blend"
bpy.ops.wm.save_as_mainfile(filepath=str(scene_path))
print("Generated west towers, roofs, three conches, sacristy roof and crossing turret.")
