# Codex goal: finish massing validation quantitatively

Stop adding new reference images and stop expanding manual heading / target-height camera grids unless they are required only to initialize the numerical solver.

The immediate objective is to finish Issue #7 by replacing visual camera guessing with quantitative 2D-to-3D registration.

## Required work

1. Read docs/camera_calibration.md and validation/camera_landmarks.yaml.
2. Use the exact local source rasters for the candidate views already listed there.
3. For each useful view, annotate at least the configured minimum number of stable structural landmarks across the full image. Record exact image pixel coordinates and corresponding project-space model coordinates.
4. Start with M02 and M05, then solve at least one independent west/north view. M23/M25 are candidates but may remain qualitative if their metadata cannot support a stable solution. Prefer evidence quality over forcing a pass.
5. Run make camera-fit VIEW=<ID> and inspect per-landmark errors. Reject outliers only for documented identification reasons; do not remove points merely because they disagree with the model.
6. Investigate camera z using terrain / vertical-datum evidence where feasible instead of leaving all GPS cameras at a generic 1.7 m local z.
7. For M25 keep radial distortion enabled and report whether a pinhole-only model is materially worse.
8. Do not alter building geometry until at least one camera fit is accepted and the residual pattern indicates a geometry error rather than a camera/intrinsic error.
9. Once at least three independent camera fits are accepted, compare the same architectural dimensions across views and only then make the smallest evidence-supported massing corrections.
10. After each geometry change, update affected 3D landmark coordinates, refit all affected cameras, regenerate relevant renders and run make validate.
11. Do not start buttresses, openings, tracery or ornament until the massing gate is explicitly passed.

## Definition of done

- At least three accepted independent quantitative camera fits are versioned in validation/camera_fits/.
- Each accepted fit has enough distributed landmarks and meets its RMS/P95 thresholds.
- GPS/focal/heading conflicts and any terrain-height assumptions are documented.
- Remaining silhouette discrepancies are classified as camera/intrinsic, model geometry, source ambiguity or unresolved.
- validation/landmarks.yaml records the final massing decision.
- make validate passes.
- Issue #7 can be closed without relying on a purely visual camera-grid judgment.
