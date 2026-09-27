import importlib.util
import tempfile
import unittest
from pathlib import Path


ROOT = Path(__file__).resolve().parents[1]
SPEC = importlib.util.spec_from_file_location(
    "run_colmap_sfm", ROOT / "scripts" / "sfm" / "run_colmap_sfm.py"
)
sfm = importlib.util.module_from_spec(SPEC)
assert SPEC.loader is not None
SPEC.loader.exec_module(sfm)


class SfMHelpersTest(unittest.TestCase):
    def test_camera_center_identity_rotation(self):
        center = sfm.camera_center([1.0, 0.0, 0.0, 0.0], [1.0, 2.0, 3.0])
        self.assertEqual(center, [-1.0, -2.0, -3.0])

    def test_parse_images_ignores_points2d_line(self):
        text = """# Image list
1 1 0 0 0 1 2 3 7 M02.jpg
100.0 200.0 10 300.0 400.0 11 500.0 600.0 12
2 1 0 0 0 -1 -2 -3 8 M05.jpg

"""
        with tempfile.TemporaryDirectory() as td:
            path = Path(td) / "images.txt"
            path.write_text(text, encoding="utf-8")
            images = sfm.parse_images(path)
        self.assertEqual([item["name"] for item in images], ["M02.jpg", "M05.jpg"])
        self.assertEqual(images[0]["center_sfm_units"], [-1.0, -2.0, -3.0])


if __name__ == "__main__":
    unittest.main()
