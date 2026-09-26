# Validation

Validation cameras should be named `VAL_*` in Blender and tied to entries in `reference_views.yaml`.
Executable camera positions, projection types, image framing and the evidence/calibration notes are
stored in `camera_parameters.json`. GPS and focal lengths are used only where present in the
per-image Commons metadata; local camera height or aim is labelled as inferred when unknown.

Do not create visually convenient cameras and then claim agreement. Camera changes should be motivated by image evidence or documented calibration assumptions.
