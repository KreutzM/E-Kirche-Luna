"""Shared conversion from architectural plan coordinates to east/north world axes."""
from pathlib import Path
import json
import math

ROOT = Path(__file__).resolve().parents[2]
PARAMS = json.loads((ROOT / "data" / "model_parameters.json").read_text(encoding="utf-8"))
ANGLE = math.radians(PARAMS["building_axis_orientation_degrees_from_east"])
COS_A = math.cos(ANGLE)
SIN_A = math.sin(ANGLE)


def rotate_building_vertices(vertices):
    """Rotate plan XY points around the crossing into east/north world coordinates."""
    return [(COS_A * x - SIN_A * y, SIN_A * x + COS_A * y, z)
            for x, y, z in vertices]


def rotate_building_object(obj):
    """Rotate a Blender object's geometry and origin around the crossing."""
    obj.data.transform(__import__("mathutils").Matrix.Rotation(ANGLE, 4, "Z"))
    x, y = obj.location.x, obj.location.y
    obj.location.x = COS_A * x - SIN_A * y
    obj.location.y = SIN_A * x + COS_A * y
    obj.rotation_euler.z += ANGLE
