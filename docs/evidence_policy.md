# Evidence policy

## Current photographs
Authoritative for present-day visible exterior condition. Prefer agreement between multiple independent views.

## Historical photographs
Useful for geometry hidden today by vegetation/objects and for long-baseline proportions. They may show earlier restoration states; verify against modern evidence.

## Historical plans and drawings
Strong structural evidence, particularly for plan/section logic. They are historical documents and must not be copied blindly into a present-day reconstruction.

## Documented dimensions
Use as scale anchors with their stated scope. Interior dimensions must not be silently treated as exterior dimensions.

## Open 3D geodata
The Hessian LoD2 building object (`G01`) is a generalized, government geospatial reference with an estimated vertical accuracy of about 1 m. Use it to cross-check footprint, roof massing, and tower height; it is not a conservation survey and may simplify complex roof forms. Keep documented dimensions and consistent modern photographs ahead of it, and do not copy its geometry into the reconstruction without comparison and explicit source attribution. Its imported Blender objects stay in `REFERENCE` and are hidden from project renders.

## Inference
Inference is allowed when necessary, but must be explicit in `data/assumptions.yaml`. Confidence should be high/medium/low and supporting evidence IDs must be listed.

## Panoramas and stitched images
Use for visual evidence only unless a projection model is explicitly solved. Do not treat stitched panoramas as ordinary pinhole-camera images.
