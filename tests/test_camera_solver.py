import importlib.util
import unittest
from pathlib import Path

import numpy as np
from scipy.spatial.transform import Rotation


ROOT = Path(__file__).resolve().parents[1]
SPEC = importlib.util.spec_from_file_location(
    "fit_camera", ROOT / "scripts" / "calibration" / "fit_camera.py"
)
fit_camera = importlib.util.module_from_spec(SPEC)
assert SPEC.loader is not None
SPEC.loader.exec_module(fit_camera)


class CameraSolverTest(unittest.TestCase):
    def test_recovers_synthetic_pose_and_focal_length(self):
        position = np.array([10.0, -20.0, 5.0])
        target = np.array([0.0, 0.0, 10.0])
        rotation = Rotation.from_matrix(
            fit_camera._look_at_world_to_camera(position, target)
        ).as_rotvec()

        points = np.array(
            [
                [-5.0, -3.0, 0.0],
                [0.0, -3.0, 0.0],
                [5.0, -3.0, 0.0],
                [-5.0, 3.0, 0.0],
                [0.0, 3.0, 0.0],
                [5.0, 3.0, 0.0],
                [-4.0, -2.0, 10.0],
                [4.0, -2.0, 10.0],
                [-4.0, 2.0, 15.0],
                [4.0, 2.0, 15.0],
            ],
            dtype=float,
        )
        true_values = {
            "rotation": rotation,
            "position": position,
            "log_focal_scale": 0.0,
            "principal_shift": np.zeros(2),
            "distortion": np.zeros(2),
        }
        observed, _ = fit_camera._project(
            points, true_values, (1200.0, 1200.0, 1000.0, 750.0)
        )

        view = {
            "image_size_px": [2000, 1500],
            "initial_camera": {
                "position_m": [11.0, -19.0, 6.0],
                "target_m": [0.0, 0.0, 10.0],
                "focal_px": 1180.0,
                "principal_point_px": [1000.0, 750.0],
            },
            "priors": {
                "position_m": [10.0, -20.0, 5.0],
                "position_sigma_m": [2.0, 2.0, 2.0],
                "focal_scale_sigma": 0.1,
                "principal_point_sigma_px": 30.0,
                "rotation_sigma_deg": 20.0,
            },
            "optimize": {
                "rotation": True,
                "position": True,
                "focal_scale": True,
                "principal_point": True,
                "radial_distortion": False,
            },
            "acceptance": {
                "min_landmarks": 8,
                "rms_px_max": 1.0,
                "p95_px_max": 2.0,
            },
            "landmarks": [
                {
                    "id": f"L{i}",
                    "model_xyz_m": points[i].tolist(),
                    "image_xy_px": observed[i].tolist(),
                    "sigma_px": 1.0,
                }
                for i in range(len(points))
            ],
        }

        fit = fit_camera._fit_view("SYNTHETIC", view)
        self.assertTrue(fit["accepted"])
        self.assertLess(fit["metrics_px"]["rms"], 0.05)
        self.assertLess(
            np.linalg.norm(np.asarray(fit["camera"]["position_m"]) - position), 0.05
        )
        self.assertAlmostEqual(fit["camera"]["fx_px"], 1200.0, delta=0.5)


if __name__ == "__main__":
    unittest.main()
