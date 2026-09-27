#!/usr/bin/env python3
"""Derive reproducible coarse-massing measurements from Hessian LoD2 G01.

The purpose of this script is *not* to replace the church reconstruction with
generalized LoD2 geometry. It extracts an independent metric envelope and
per-BuildingPart statistics that can be compared to the Blender massing after
global web-photo SfM proved disconnected.

Output coordinates use the project convention:
- X = east
- Y = north
- Z = DHHN2016-NH for source elevations
and additionally a building-aligned frame:
- U = longitudinal axis (west/east)
- V = transverse axis (south/north)
with the project crossing anchor as U=V=0.

The generated JSON is evidence/diagnostic data. Component semantics remain a
separate reviewed mapping step because LoD2 BuildingPart segmentation is
generalized and not guaranteed to match architectural elements one-to-one.
"""
from __future__ import annotations

import argparse
import json
import math
import statistics
import xml.etree.ElementTree as ET
from pathlib import Path
from typing import Any

ROOT = Path(__file__).resolve().parents[1]
DEFAULT_SOURCE = ROOT / "sources" / "geodata" / "G01_Building_DEHE06210000EgxB.gml"
DEFAULT_OUTPUT = ROOT / "validation" / "lod2_massing_reference.json"
CAMERA_PARAMETERS = ROOT / "validation" / "camera_parameters.json"
MODEL_PARAMETERS = ROOT / "data" / "model_parameters.json"

GML = "http://www.opengis.net/gml/3.2"
BU_BASE = "http://inspire.ec.europa.eu/schemas/bu-base/4.0"
BU_CORE3D = "http://inspire.ec.europa.eu/schemas/bu-core3d/4.0"
EARTH_RADIUS_M = 6378137.0


def local_name(tag: str) -> str:
    return tag.rsplit("}", 1)[-1]


def read_triplets(pos_list: ET.Element) -> list[tuple[float, float, float]]:
    if not pos_list.text:
        return []
    values = [float(v) for v in pos_list.text.split()]
    dimension = int(pos_list.get("srsDimension", "3"))
    if dimension != 3 or len(values) % 3:
        raise ValueError("unexpected GML coordinate dimension")
    return [
        (values[i], values[i + 1], values[i + 2])
        for i in range(0, len(values), 3)
    ]


def project_local(
    point: tuple[float, float, float],
    lat0: float,
    lon0: float,
) -> tuple[float, float, float]:
    lat, lon, z = point
    lat_r = math.radians(lat)
    lon_r = math.radians(lon)
    east = EARTH_RADIUS_M * math.cos(lat0) * (lon_r - lon0)
    north = EARTH_RADIUS_M * (lat_r - lat0)
    return east, north, z


def building_frame(
    point: tuple[float, float, float],
    axis_radians: float,
) -> tuple[float, float, float]:
    east, north, z = point
    c = math.cos(axis_radians)
    s = math.sin(axis_radians)
    u = c * east + s * north
    v = -s * east + c * north
    return u, v, z


def bounds(values: list[float]) -> list[float]:
    return [min(values), max(values)]


def median_or_none(values: list[float]) -> float | None:
    return statistics.median(values) if values else None


def clustered_levels(values: list[float], quantum: float = 0.1) -> list[dict[str, Any]]:
    """Return repeated elevation levels, rounded only for descriptive diagnosis."""
    counts: dict[float, int] = {}
    for value in values:
        key = round(round(value / quantum) * quantum, 3)
        counts[key] = counts.get(key, 0) + 1
    return [
        {"elevation_m": key, "count": count}
        for key, count in sorted(counts.items(), key=lambda item: (-item[1], item[0]))
        if count >= 3
    ][:20]


def part_identifier(part: ET.Element) -> str:
    gml_id = part.attrib.get(f"{{{GML}}}id")
    if gml_id:
        return gml_id
    for element in part.iter():
        if local_name(element.tag) == "identifier" and element.text:
            return element.text.strip()
    return "unknown_part"


def measured_height(part: ET.Element) -> float | None:
    for height in part.iter(f"{{{BU_BASE}}}heightAboveGround"):
        for value in height.iter(f"{{{BU_BASE}}}value"):
            if value.text:
                try:
                    return float(value.text.strip())
                except ValueError:
                    return None
    return None


def collect_geometry_points(part: ET.Element) -> list[tuple[float, float, float]]:
    geometry_points: list[tuple[float, float, float]] = []
    geometry = next(
        (element for element in part.iter() if local_name(element.tag) == "geometry3DLoD2"),
        None,
    )
    if geometry is None:
        return geometry_points
    for pos_list in geometry.iter(f"{{{GML}}}posList"):
        geometry_points.extend(read_triplets(pos_list))
    return geometry_points


def collect_terrain_points(part: ET.Element) -> list[tuple[float, float, float]]:
    terrain_points: list[tuple[float, float, float]] = []
    terrain = next(
        (element for element in part.iter() if local_name(element.tag) == "terrainIntersection"),
        None,
    )
    if terrain is None:
        return terrain_points
    for pos_list in terrain.iter(f"{{{GML}}}posList"):
        terrain_points.extend(read_triplets(pos_list))
    return terrain_points


def summarize_part(
    part: ET.Element,
    lat0: float,
    lon0: float,
    axis_radians: float,
) -> dict[str, Any] | None:
    source_points = collect_geometry_points(part)
    if not source_points:
        return None
    terrain_source = collect_terrain_points(part)

    points = [project_local(point, lat0, lon0) for point in source_points]
    aligned = [building_frame(point, axis_radians) for point in points]
    terrain = [project_local(point, lat0, lon0) for point in terrain_source]
    terrain_aligned = [building_frame(point, axis_radians) for point in terrain]

    east = [p[0] for p in points]
    north = [p[1] for p in points]
    z = [p[2] for p in points]
    u = [p[0] for p in aligned]
    v = [p[1] for p in aligned]

    terrain_z = [p[2] for p in terrain]
    ground = median_or_none(terrain_z)
    if ground is None:
        ground = min(z)

    u_min, u_max = min(u), max(u)
    v_min, v_max = min(v), max(v)
    z_min, z_max = min(z), max(z)

    return {
        "part_id": part_identifier(part),
        "measured_height_above_ground_m": measured_height(part),
        "geometry_point_count": len(source_points),
        "terrain_point_count": len(terrain_source),
        "centroid_project_xy_m": {
            "east": round(statistics.mean(east), 3),
            "north": round(statistics.mean(north), 3),
        },
        "centroid_building_uv_m": {
            "u_longitudinal": round(statistics.mean(u), 3),
            "v_transverse": round(statistics.mean(v), 3),
        },
        "project_xy_bounds_m": {
            "east": [round(x, 3) for x in bounds(east)],
            "north": [round(x, 3) for x in bounds(north)],
        },
        "building_uv_bounds_m": {
            "u_longitudinal": [round(u_min, 3), round(u_max, 3)],
            "v_transverse": [round(v_min, 3), round(v_max, 3)],
        },
        "building_uv_extent_m": {
            "longitudinal": round(u_max - u_min, 3),
            "transverse": round(v_max - v_min, 3),
        },
        "absolute_elevation_bounds_m": [round(z_min, 3), round(z_max, 3)],
        "ground_elevation_m": round(ground, 3),
        "relative_top_height_m": round(z_max - ground, 3),
        "relative_geometry_min_m": round(z_min - ground, 3),
        "repeated_absolute_z_levels": clustered_levels(z),
        "repeated_relative_z_levels": clustered_levels([value - ground for value in z]),
    }


def summarize_global(parts: list[dict[str, Any]], model: dict[str, Any]) -> dict[str, Any]:
    all_u = [
        value
        for part in parts
        for value in part["building_uv_bounds_m"]["u_longitudinal"]
    ]
    all_v = [
        value
        for part in parts
        for value in part["building_uv_bounds_m"]["v_transverse"]
    ]
    all_z = [
        value
        for part in parts
        for value in part["absolute_elevation_bounds_m"]
    ]
    u_min, u_max = min(all_u), max(all_u)
    v_min, v_max = min(all_v), max(all_v)
    z_min, z_max = min(all_z), max(all_z)

    inferred = model.get("inferred", {})
    documented = model.get("documented_anchors", {})
    return {
        "lod2_envelope": {
            "u_longitudinal_bounds_m": [round(u_min, 3), round(u_max, 3)],
            "v_transverse_bounds_m": [round(v_min, 3), round(v_max, 3)],
            "longitudinal_extent_m": round(u_max - u_min, 3),
            "transverse_extent_m": round(v_max - v_min, 3),
            "absolute_z_bounds_m": [round(z_min, 3), round(z_max, 3)],
            "vertical_extent_m": round(z_max - z_min, 3),
        },
        "current_model_parameter_crosscheck": {
            "overall_exterior_length_m": inferred.get("overall_exterior_length"),
            "exterior_transept_span_m": inferred.get("exterior_transept_span"),
            "tower_height_m": documented.get("tower_height"),
            "building_axis_orientation_degrees_from_east": model.get(
                "building_axis_orientation_degrees_from_east"
            ),
        },
    }


def main() -> int:
    parser = argparse.ArgumentParser()
    parser.add_argument("--source", type=Path, default=DEFAULT_SOURCE)
    parser.add_argument("--output", type=Path, default=DEFAULT_OUTPUT)
    args = parser.parse_args()

    camera = json.loads(CAMERA_PARAMETERS.read_text(encoding="utf-8"))
    model = json.loads(MODEL_PARAMETERS.read_text(encoding="utf-8"))
    anchor = camera["view_origin_wgs84_approximate"]
    lat0 = math.radians(float(anchor["latitude"]))
    lon0 = math.radians(float(anchor["longitude"]))
    axis_deg = float(model["building_axis_orientation_degrees_from_east"])
    axis_rad = math.radians(axis_deg)

    root = ET.parse(args.source).getroot()
    building = next(
        (element for element in root.iter() if element.tag == f"{{{BU_CORE3D}}}Building"),
        None,
    )
    if building is None:
        raise RuntimeError("no bu-core3d:Building found")

    parts: list[dict[str, Any]] = []
    for part in building.iter(f"{{{BU_CORE3D}}}BuildingPart"):
        summary = summarize_part(part, lat0, lon0, axis_rad)
        if summary:
            parts.append(summary)

    if not parts:
        raise RuntimeError("no LoD2 BuildingPart geometry found")

    parts.sort(
        key=lambda item: (
            item["centroid_building_uv_m"]["u_longitudinal"],
            item["centroid_building_uv_m"]["v_transverse"],
            item["part_id"],
        )
    )

    output = {
        "schema_version": 1,
        "source_id": "G01",
        "source_file": str(args.source.relative_to(ROOT)),
        "coordinate_frame": {
            "origin": "project crossing anchor from validation/camera_parameters.json",
            "u_longitudinal_axis_degrees_from_east": axis_deg,
            "v_transverse_axis": "90 degrees counter-clockwise from U",
            "source_vertical_datum": "DHHN2016-NH",
        },
        "interpretation": (
            "Generalized official LoD2 massing evidence. Use for coarse envelope, "
            "roof/tower height and component-placement cross-checks only. Do not "
            "copy generalized roof surfaces into the reconstruction."
        ),
        "part_count": len(parts),
        "global": summarize_global(parts, model),
        "parts": parts,
    }

    args.output.parent.mkdir(parents=True, exist_ok=True)
    args.output.write_text(json.dumps(output, indent=2) + "\n", encoding="utf-8")
    print(json.dumps(output["global"], indent=2))
    print(f"wrote {args.output.relative_to(ROOT)} with {len(parts)} parts")
    return 0


if __name__ == "__main__":
    raise SystemExit(main())
