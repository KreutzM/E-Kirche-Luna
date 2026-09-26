"""Report reproducible footprint and height cross-checks for Hessian LoD2 G01."""
from __future__ import annotations

import json
import math
from pathlib import Path
import xml.etree.ElementTree as ET


ROOT = Path(__file__).resolve().parents[1]
SOURCE_PATH = ROOT / "sources" / "geodata" / "G01_Building_DEHE06210000EgxB.gml"
GEO_PATH = ROOT / "data" / "geospatial_sources.yaml"
CAMERA_PATH = ROOT / "validation" / "camera_parameters.json"
GML = "http://www.opengis.net/gml/3.2"


def convex_hull(points: list[tuple[float, float]]) -> list[tuple[float, float]]:
    points = sorted(set(points))

    def cross(origin, a, b):
        return ((a[0] - origin[0]) * (b[1] - origin[1])
                - (a[1] - origin[1]) * (b[0] - origin[0]))

    lower = []
    for point in points:
        while len(lower) >= 2 and cross(lower[-2], lower[-1], point) <= 0:
            lower.pop()
        lower.append(point)
    upper = []
    for point in reversed(points):
        while len(upper) >= 2 and cross(upper[-2], upper[-1], point) <= 0:
            upper.pop()
        upper.append(point)
    return lower[:-1] + upper[:-1]


def minimum_rectangle(points: list[tuple[float, float]]):
    hull = convex_hull(points)
    candidates = []
    for start, end in zip(hull, hull[1:] + hull[:1]):
        angle = math.atan2(end[1] - start[1], end[0] - start[0])
        cosine, sine = math.cos(angle), math.sin(angle)
        edge_frame = [(cosine * x + sine * y, -sine * x + cosine * y)
                      for x, y in hull]
        width = max(point[0] for point in edge_frame) - min(point[0] for point in edge_frame)
        height = max(point[1] for point in edge_frame) - min(point[1] for point in edge_frame)
        long_axis_angle = angle if width >= height else angle + math.pi / 2
        while long_axis_angle < -math.pi / 2:
            long_axis_angle += math.pi
        while long_axis_angle >= math.pi / 2:
            long_axis_angle -= math.pi
        long_u = (math.cos(long_axis_angle), math.sin(long_axis_angle))
        short_u = (-long_u[1], long_u[0])
        along = [x * long_u[0] + y * long_u[1] for x, y in hull]
        across = [x * short_u[0] + y * short_u[1] for x, y in hull]
        long_axis = max(along) - min(along)
        short_axis = max(across) - min(across)
        centre_along = (max(along) + min(along)) / 2
        centre_across = (max(across) + min(across)) / 2
        centre = (centre_along * long_u[0] + centre_across * short_u[0],
                  centre_along * long_u[1] + centre_across * short_u[1])
        candidates.append((long_axis * short_axis, long_axis, short_axis,
                           math.degrees(long_axis_angle), centre))
    _, long_axis, short_axis, angle_degrees, centre = min(candidates)
    return long_axis, short_axis, angle_degrees, centre


def read_points():
    root = ET.parse(SOURCE_PATH).getroot()
    positions = []
    for pos_list in root.iter(f"{{{GML}}}posList"):
        if not pos_list.text:
            continue
        values = [float(value) for value in pos_list.text.split()]
        dimension = int(pos_list.get("srsDimension", "3"))
        if dimension != 3 or len(values) % dimension:
            raise ValueError("G01 contains an unexpected coordinate dimension")
        positions.extend(tuple(values[i:i + dimension])
                         for i in range(0, len(values), dimension))
    if not positions:
        raise ValueError(f"No GML positions found in {SOURCE_PATH}")
    return positions


def main():
    positions = read_points()
    camera = json.loads(CAMERA_PATH.read_text(encoding="utf-8"))
    anchor = camera["view_origin_wgs84_approximate"]
    lat0 = math.radians(float(anchor["latitude"]))
    lon0 = math.radians(float(anchor["longitude"]))
    earth_radius = 6378137.0
    projected = [
        (earth_radius * math.cos(lat0) * (math.radians(lon) - lon0),
         earth_radius * (math.radians(lat) - lat0))
        for lat, lon, _ in positions
    ]
    long_axis, short_axis, angle, centre_en = minimum_rectangle(projected)
    current_crossing = (float(anchor["latitude"]), float(anchor["longitude"]))
    centre_lat = math.degrees(lat0 + centre_en[1] / earth_radius)
    centre_lon = math.degrees(lon0 + centre_en[0] / (earth_radius * math.cos(lat0)))
    angle_rad = math.radians(angle)
    crossing_east = centre_en[0] + 14.75 * math.cos(angle_rad)
    crossing_north = centre_en[1] + 14.75 * math.sin(angle_rad)
    crossing_lat = math.degrees(lat0 + crossing_north / earth_radius)
    crossing_lon = math.degrees(lon0 + crossing_east / (earth_radius * math.cos(lat0)))
    elevations = [point[2] for point in positions]
    summary = {
        "source": "G01",
        "coordinate_positions": len(positions),
        "minimum_rectangle_m": {
            "long_axis": round(long_axis, 3),
            "short_axis": round(short_axis, 3),
            "long_axis_degrees_from_east": round(angle, 3),
        },
        "minimum_rectangle_center_wgs84": {
            "latitude": round(centre_lat, 8),
            "longitude": round(centre_lon, 8),
        },
        "plan_asymmetry_crossing_candidate_wgs84": {
            "latitude": round(crossing_lat, 8),
            "longitude": round(crossing_lon, 8),
            "assumed_eastward_offset_from_rectangle_center_m": 14.75,
        },
        "candidate_offset_from_current_anchor_m": {
            "east": round(crossing_east, 3),
            "north": round(crossing_north, 3),
        },
        "vertical_extent_m": round(max(elevations) - min(elevations), 3),
        "absolute_elevation_bounds_m": [round(min(elevations), 3), round(max(elevations), 3)],
        "projection_anchor_wgs84": anchor,
    }
    print(json.dumps(summary, indent=2, ensure_ascii=False))


if __name__ == "__main__":
    main()
