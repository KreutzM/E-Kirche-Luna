# Codex goal: recover cameras independently with SfM

Issue #7 remains open. The direct model-based fits for M02, M05, M10 and M25 were correctly rejected. Do not change church geometry and do not keep tuning those PnP fits.

Immediate objective: recover relative camera poses and sparse architectural structure from image-to-image correspondences, independently of the current Blender massing.

## Required work

1. Read `AGENTS.md`, `docs/sfm_calibration.md`, `validation/sfm_config.yaml`, and the existing Issue #7 calibration report.
2. Verify COLMAP is available locally. Use the current COLMAP CLI; do not vendor binaries into the repository.
3. Run the independent core reconstruction:
   `python scripts/sfm/run_colmap_sfm.py --group core --force`
   Use CPU by default; add `--gpu` only if a working supported GPU build is already available.
4. The first pass must use the ordinary incremental mapper. Do not use `pose_prior_mapper`, Blender geometry, GPS constraints, DGM Z priors, or hand-authored 3D landmarks during this relative reconstruction.
5. Inspect `validation/sfm_results/core.json` plus the local COLMAP logs/model. Determine:
   - how many input images register;
   - whether multiple view directions form one connected component;
   - whether sparse points lie on stable church architecture;
   - whether estimated focal/radial parameters are plausible rather than extreme;
   - which images fail to register or form disconnected components.
6. If the core set fragments or fails, run only the diagnostic fallback groups needed to understand connectivity:
   `southeast`, `west`, and/or `north`.
7. Do not add new web references merely to force SfM unless the existing overlap graph is demonstrably insufficient and the missing view direction is identified first.
8. Preserve all generated compact JSON summaries under `validation/sfm_results/`; keep COLMAP databases, staged images, logs and sparse binaries under the gitignored `validation/sfm_work/`.
9. If a coherent relative reconstruction exists, stop before changing Blender geometry. Document the reconstruction quality and commit/push that state.
10. Only after the relative result is reviewed should you implement a second georegistration/scale stage using independent evidence. Prefer reliable published camera XY, DGM1+eye-height Z priors, LoD2/plan control and documented dimensions. Keep conflicting EXIF altitudes weak or excluded, and do not silently average M25's conflicting GPS positions.

## Specific caveats

- M02's current hand-derived processed-crop intrinsic approximation is provisional. Its EXIF reports 18 mm physical focal length and 27 mm 35-mm equivalent; do not treat the 28.3 mm active-width approximation from the old direct fit as measured calibration.
- Each heterogeneous Internet image should initially have its own SIMPLE_RADIAL camera.
- Keep principal-point refinement conservative; do not use a high-parameter camera model to absorb geometry or crop errors.
- Historic images and virtual-tour cube faces are excluded from the first core reconstruction.

## Definition of done for this goal

- At least the core SfM attempt is completed and versioned as `validation/sfm_results/core.json`.
- If core is fragmented, the relevant fallback-group summaries are versioned and explain the connectivity failure.
- Relative-camera/SfM findings are added to Issue #7 and the decision log.
- No architectural geometry changes are made.
- The massing gate remains closed unless a later, separately reviewed georegistration stage supports a defensible comparison.
- Working tree is clean and the results are pushed.
