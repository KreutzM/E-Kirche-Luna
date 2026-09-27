# Evidence-based massing gate after disconnected web SfM

## Context

Issue #7 attempted progressively stronger photo-camera validation:

1. manual pose grids;
2. quantitative 2D<->3D camera fits;
3. model-independent COLMAP SfM;
4. targeted bridge-image acquisition;
5. controlled south-transition sequence;
6. final south/southwest bridge attempt.

The final public-web SfM graph still has no verified connection between the
combined west/north evidence and the southeast/south evidence. That limitation
is now an evidence property of the curated public corpus, not a reason to keep
loosening matching thresholds or adding arbitrary images.

Therefore a single global photogrammetric camera network is no longer a
required precondition for the coarse-massing gate.

## Replacement principle

Coarse massing should be validated against the strongest evidence available for
each type of claim:

- metric/geospatial envelope and height: official Hessian LoD2 G01, DGM1 and
  documented architectural dimensions;
- plan topology and proportions: P01/P02/P06/P07/P08;
- present-day component order and silhouette: modern photographs, evaluated
  within directional clusters rather than forced into one global camera frame;
- details below massing scale: explicitly deferred.

This is not a relaxation of evidence quality. It removes an unavailable global
camera-network requirement and replaces it with independent numerical checks
that directly address the quantities massing is supposed to establish.

## Why LoD2 is appropriate here

Hessian LoD2 uses ALKIS/ATKIS plan geometry and derives height information from
3D geobasis data. The provider states approximately 1 m vertical accuracy for
LoD2 while warning that complex or unrecognized roof forms can deviate more.
Roof forms are standardized/generalized and must not be copied as architectural
survey geometry.

For this project LoD2 is therefore suitable for:

- whole-building horizontal envelope;
- longitudinal/transverse orientation;
- coarse component placement;
- tower/roof/eave height cross-checks;
- identifying metre-scale massing contradictions.

It is not suitable for:

- exact tracery, buttress or opening geometry;
- pinnacles and thin spires as surveyed detail;
- conservation-grade roof facet reconstruction;
- sub-metre facade offsets.

## Reproducible LoD2 part analysis

Run:

    python scripts/analyze_lod2_massing.py

This writes:

    validation/lod2_massing_reference.json

For each LoD2 BuildingPart the JSON records:

- official `heightAboveGround` where supplied;
- source geometry and terrain-intersection point counts;
- centroid in project east/north coordinates;
- centroid and bounds in the church-aligned longitudinal/transverse frame;
- absolute DHHN2016 elevation bounds;
- terrain-derived local ground level;
- relative top height;
- repeated source Z levels useful for identifying coarse eave/ridge planes.

The script deliberately does not assign architectural names to LoD2 parts.
Semantic mapping must be reviewed from position, extent, height and the imported
G01 reference geometry. If a part cannot be identified unambiguously, leave it
unmapped rather than forcing a match.

## Gate layers

### 1. Hard global metric checks

`validation/massing_gate_spec.yaml` defines numerical checks for:

- overall exterior length;
- transverse span;
- building-axis orientation;
- crossing-anchor consistency;
- total vertical extent / tower-height scale.

These use tolerances appropriate to coarse LoD2 validation, not detail work.

### 2. Local LoD2 component checks

After generating the part analysis, map only unambiguous LoD2 parts to coarse
architectural components. At minimum inspect:

- west tower masses;
- main hall roof/wall mass;
- crossing/transept roof mass;
- east and side conches;
- sacristy.

Compare metre-scale component bounds and height levels to the reconstruction.
For simple large roof/tower levels use roughly 1.5 m vertical tolerance. For
explicitly complex generalized roofs a wider tolerance up to 2.5 m may be used
only with a written rationale.

### 3. Directional modern-photo checks

Use the two evidence networks independently:

- west/north cluster for tower pair, west-front mass order and north-side
  continuation;
- southeast/south cluster for triconch topology, roof hierarchy, crossing
  turret, south/east roof continuity and sacristy placement.

These checks are blockers only when multiple independent modern photos show a
repeatable coarse architectural contradiction. Perspective/crop mismatches
without a solved camera are not by themselves geometry errors.

## What can remain unresolved when massing passes

The gate may still pass with explicitly deferred:

- openings and bay-window geometry;
- buttress profiles;
- tracery and ornament;
- pinnacles;
- sub-metre roof-edge shaping;
- camera-pose conflicts that do not contradict independent metric evidence.

Passing the gate means the coarse building volumes, extents, primary roof/tower
levels and component topology are defensible. It does not claim that detail
geometry is solved.

## Workflow

1. Generate `validation/lod2_massing_reference.json`.
2. Review LoD2 parts and create/update the semantic component mapping.
3. Compare model parameters and component envelopes against the mapped LoD2
   parts plus documented dimensions.
4. Make only evidence-supported metre-scale massing corrections.
5. Re-run the LoD2 analysis and dataset validation.
6. Update directional photo-cluster findings.
7. Evaluate the pass rule in `validation/massing_gate_spec.yaml`.
8. Only after the gate passes begin buttresses/openings/tracery/detail.

Global web-photo SfM remains archived as diagnostic evidence. Do not resume
public-web image acquisition unless genuinely new source material becomes
available.
