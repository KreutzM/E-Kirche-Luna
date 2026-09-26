"""Import the open Hessian LoD2 church geometry as a viewport-only reference."""
from pathlib import Path
import json
import math
import xml.etree.ElementTree as ET

import bpy
import bmesh


ROOT = Path.cwd()
SOURCE_FILE = ROOT / "sources" / "geodata" / "G01_Building_DEHE06210000EgxB.gml"
COORDS = json.loads((ROOT / "validation" / "camera_parameters.json").read_text(encoding="utf-8"))
ANCHOR = COORDS["view_origin_wgs84_approximate"]
LAT0 = math.radians(float(ANCHOR["latitude"]))
LON0 = math.radians(float(ANCHOR["longitude"]))
EARTH_RADIUS_M = 6378137.0
VERTEX_Z_QUANTUM = 0.001

GML = "http://www.opengis.net/gml/3.2"
FEATURE = "http://inspire.ec.europa.eu/schemas/bu-core3d/4.0"
SOURCE_ID = "G01"


def local_name(tag):
    return tag.rsplit("}", 1)[-1]


def ref_collection():
    collection = bpy.data.collections.get("REFERENCE")
    if collection is None:
        collection = bpy.data.collections.new("REFERENCE")
        bpy.context.scene.collection.children.link(collection)
    return collection


def get_position_list(polygon):
    exterior = polygon.find(f"{{{GML}}}exterior")
    if exterior is None:
        return []
    ring = exterior.find(f"{{{GML}}}LinearRing")
    if ring is None:
        return []
    pos_list = ring.find(f"{{{GML}}}posList")
    if pos_list is None or not pos_list.text:
        return []
    values = [float(value) for value in pos_list.text.split()]
    dimension = int(pos_list.get("srsDimension", "3"))
    if dimension != 3 or len(values) % dimension:
        raise ValueError(f"Unexpected GML coordinate dimension in {SOURCE_FILE}")
    return [values[index:index + 3] for index in range(0, len(values), dimension)]


def project_to_scene(latitude, longitude, elevation, vertical_zero):
    # The GML uses EPSG:4326 axis order (latitude, longitude) and DHHN2016-NH Z.
    lat = math.radians(latitude)
    lon = math.radians(longitude)
    east = EARTH_RADIUS_M * math.cos(LAT0) * (lon - LON0)
    north = EARTH_RADIUS_M * (lat - LAT0)
    return (east, north, elevation - vertical_zero)


def source_parts():
    tree = ET.parse(SOURCE_FILE)
    building = next((element for element in tree.iter()
                     if element.tag == f"{{{FEATURE}}}Building"), None)
    if building is None:
        raise RuntimeError(f"No Building feature found in {SOURCE_FILE}")
    parts = [element for element in building.iter()
             if element.tag == f"{{{FEATURE}}}BuildingPart"]
    if not parts:
        raise RuntimeError(f"No BuildingPart geometries found in {SOURCE_FILE}")

    absolute_elevations = []
    parsed = []
    for part in parts:
        geom = next((element for element in part.iter()
                     if local_name(element.tag) == "geometry3DLoD2"), None)
        if geom is None:
            continue
        polygons = [element for element in geom.iter()
                    if element.tag == f"{{{GML}}}Polygon"]
        faces = []
        for polygon in polygons:
            ring = get_position_list(polygon)
            if len(ring) > 1 and ring[0] == ring[-1]:
                ring.pop()
            if len(ring) < 3:
                continue
            faces.append(ring)
            absolute_elevations.extend(point[2] for point in ring)
        if faces:
            part_id = next((element.text.strip() for element in part.iter()
                            if local_name(element.tag) == "identifier" and element.text),
                           next((value for key, value in part.attrib.items()
                                 if key.endswith("}id")), "part"))
            parsed.append((part_id, faces))
    if not parsed or not absolute_elevations:
        raise RuntimeError(f"No 3D LoD2 polygon surfaces found in {SOURCE_FILE}")
    return parsed, min(absolute_elevations)


def remove_prior_imports():
    for obj in list(bpy.data.objects):
        if obj.get("geodata_source_id") == SOURCE_ID:
            bpy.data.objects.remove(obj, do_unlink=True)


parts, vertical_zero = source_parts()
remove_prior_imports()
collection = ref_collection()
material = bpy.data.materials.get("LoD2 reference wire") or bpy.data.materials.new("LoD2 reference wire")
material.diffuse_color = (0.08, 0.42, 0.88, 1.0)
material.use_nodes = True
material.node_tree.nodes.get("Principled BSDF").inputs["Base Color"].default_value = (0.08, 0.42, 0.88, 1.0)

total_faces = 0
total_vertices = 0
for part_index, (part_id, rings) in enumerate(parts, 1):
    vertex_map = {}
    vertices = []
    faces = []
    for ring in rings:
        face = []
        for latitude, longitude, elevation in ring:
            point = project_to_scene(latitude, longitude, elevation, vertical_zero)
            key = (round(point[0], 5), round(point[1], 5),
                   round(point[2] / VERTEX_Z_QUANTUM))
            index = vertex_map.get(key)
            if index is None:
                index = len(vertices)
                vertex_map[key] = index
                vertices.append(point)
            if not face or face[-1] != index:
                face.append(index)
        if len(face) > 2 and face[0] == face[-1]:
            face.pop()
        if len(face) >= 3:
            faces.append(face)

    mesh = bpy.data.meshes.new(f"REF_G01_Part_{part_index:02d}_Mesh")
    mesh.from_pydata(vertices, [], faces)
    mesh.validate(clean_customdata=True)
    bm = bmesh.new()
    bm.from_mesh(mesh)
    bmesh.ops.recalc_face_normals(bm, faces=bm.faces)
    bm.to_mesh(mesh)
    bm.free()
    mesh.update()

    obj = bpy.data.objects.new(f"REF_G01_Part_{part_index:02d}", mesh)
    collection.objects.link(obj)
    obj.data.materials.append(material)
    obj.display_type = "WIRE"
    obj.show_wire = True
    obj.show_all_edges = True
    obj.hide_render = True
    obj["geodata_source_id"] = SOURCE_ID
    obj["source_part_id"] = part_id
    obj["evidence_status"] = "open generalized LoD2 reference geometry; not the project reconstruction"
    obj["vertical_datum_origin_m"] = vertical_zero
    total_faces += len(faces)
    total_vertices += len(vertices)

scene = bpy.context.scene
scene["geodata_reference_id"] = SOURCE_ID
scene["geodata_source_file"] = str(SOURCE_FILE.relative_to(ROOT))
scene["geodata_parts"] = len(parts)
scene["geodata_vertical_zero_dhhn2016_m"] = vertical_zero
scene_path = ROOT / "blender" / "scene" / "elisabethkirche.blend"
bpy.ops.wm.save_as_mainfile(filepath=str(scene_path))
print(f"Imported {SOURCE_ID}: {len(parts)} parts, {total_vertices} vertices, "
      f"{total_faces} polygons; DHHN2016 comparison zero={vertical_zero:.3f} m")
