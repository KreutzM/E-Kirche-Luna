# Codex goal: test targeted SfM bridge images

Issue #7 remains open and the massing gate remains closed. The first independent SfM pass demonstrated that the existing evidence graph is disconnected: southeast, west and north do not form one coherent reconstruction.

Do not tune the Blender model and do not georegister yet.

## Immediate objective

Test whether exactly three newly curated broad exterior images (M26-M28) connect the existing southeast, west and north SfM components.

## Required work

1. Read:
   - AGENTS.md
   - docs/sfm_calibration.md
   - validation/sfm_bridge_candidates.yaml
   - validation/sfm_config.yaml
   - validation/issue_7_camera_calibration.md

2. Fetch only M26-M28 as exact Commons originals:
   python scripts/fetch_assets.py --ids M26 M27 M28 --originals

3. Verify that the fetch script records current licence/provenance metadata and source image dimensions. Do not manually substitute a thumbnail.

4. Run the targeted bridge group:
   python scripts/sfm/run_colmap_sfm.py --group bridge --force

5. Evaluate the verified two-view graph before interpreting mapper output.
   The primary question is whether the new images create actual graph edges across the previously separate components:
   - west <-> southeast/south
   - west <-> north

6. Record, for each M26-M28:
   - which existing images it has verified two-view geometry with;
   - geometric inlier counts;
   - whether it belongs to a component containing multiple prior view directions;
   - whether it registers in a sparse model;
   - its fitted SIMPLE_RADIAL focal/radial values if registered.

7. A low reprojection error is not enough. Reject a reconstruction as globally useful if it still has implausible intrinsics or remains directionally disconnected.

8. If and only if the bridge graph connects the formerly separate directions with plausible pairwise matches, run:
   python scripts/sfm/run_colmap_sfm.py --group core_plus_bridges --force

9. If bridge connectivity succeeds but the incremental mapper still fragments:
   - inspect the verified pairs and initialization failure;
   - do not add more images immediately;
   - do not add GPS/DGM/Blender pose priors;
   - you may test conservative intrinsic initialization from reliable EXIF focal/camera metadata, but keep one camera per heterogeneous image and document the change.

10. If M26-M28 fail to create the needed cross-component edges, stop. Document exactly which transition is still missing; do not search broadly for more images in the same run.

11. No georegistration, Blender comparison, or geometry change in this goal.

## Definition of done

- M26-M28 originals and their Commons provenance are available locally.
- validation/sfm_results/bridge.json is versioned.
- core_plus_bridges.json is versioned only if the bridge graph justifies running it.
- Issue #7 report and docs/decisions.md state which bridge hypotheses succeeded or failed.
- No church geometry changed.
- Massing gate remains closed unless a later separately reviewed stage establishes a coherent multi-direction reconstruction.
- Commit and push the result; working tree clean.
