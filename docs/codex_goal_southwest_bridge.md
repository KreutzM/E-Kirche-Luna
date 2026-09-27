# Codex goal: final targeted south/southwest SfM bridge test

Issue #7 remains open. The verified west/north evidence is connected, and the
southeast/south evidence is connected, but there is still no verified path
between those two components.

This is a final targeted public-web bridge test, not a general image search.

## Required work

1. Read:
   - AGENTS.md
   - docs/sfm_calibration.md
   - validation/sfm_southwest_bridge_candidates.yaml
   - validation/sfm_config.yaml
   - validation/issue_7_camera_calibration.md

2. Fetch exactly M37, M38 and M39 as Commons originals:

   python scripts/fetch_assets.py --ids M37 M38 M39 --originals

   Verify live licence/provenance metadata, source dimensions and downloaded
   hashes. Do not substitute similarly named files.

3. Run:

   python scripts/sfm/run_colmap_sfm.py --group issue7_southwest_bridge --force

4. Evaluate the verified two-view graph before interpreting the mapper.

   The success criterion is a verified connected component containing:
   - at least one established west/north anchor from
     M09, M10, M11, M25, M26, M27; and
   - at least one established south/southeast anchor from
     M04, M05, M02, M20, M23, M29, M34.

5. For M37-M39 record every verified pair and its geometric inlier count.
   State which old component each candidate joins.

6. If no new candidate closes the graph break, stop. Do not search for more
   images in this run and do not change matching thresholds merely to create an
   edge. Document that the current curated freely available web corpus is
   insufficient for a single cross-direction SfM network.

7. If the verified graph does close the break, inspect whether the mapper
   actually registers images from both former components in the same sparse
   model. Record registration coverage, sparse point count, reprojection error
   and per-image SIMPLE_RADIAL intrinsics.

8. Graph connectivity alone does not validate camera intrinsics. Reject
   obviously degenerate focal/radial solutions. Do not change Blender geometry
   from this run.

9. Do not:
   - use GPS/DGM pose priors;
   - use Blender geometry or hand-authored 3D landmarks;
   - georegister;
   - add stitched panoramas as ordinary SIMPLE_RADIAL cameras;
   - change church geometry.

## Definition of done

- M37-M39 originals and current Commons provenance are available locally.
- validation/sfm_results/issue7_southwest_bridge.json is versioned.
- Issue #7 report and docs/decisions.md record the exact graph result.
- If the graph remains disconnected, explicitly record the evidence limitation
  and stop this web-image acquisition path.
- If it connects, record whether a common sparse model is actually obtained,
  but stop before georegistration.
- No church geometry changes.
- Commit and push; working tree clean.
