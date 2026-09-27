PYTHON ?= python
BLENDER ?= blender

.PHONY: setup test validate validate-data validate-model fetch fetch-priority1 contacts scene camera-fit sfm-prepare sfm lod2-massing

setup:
	$(PYTHON) -m pip install -r requirements.txt

test:
	$(PYTHON) -m unittest discover -s tests -p 'test_*.py'

validate: validate-data validate-model

validate-data:
	$(PYTHON) scripts/validate_dataset.py

validate-model:
	$(PYTHON) scripts/validate_model.py

camera-fit:
	@test -n "$(VIEW)" || (echo "Usage: make camera-fit VIEW=M02" && exit 2)
	$(PYTHON) scripts/calibration/fit_camera.py --view $(VIEW)

fetch:
	$(PYTHON) scripts/fetch_assets.py --max-width 2500

fetch-priority1:
	$(PYTHON) scripts/fetch_assets.py --priority 1 --max-width 2500

contacts:
	$(PYTHON) scripts/make_contact_sheets.py

scene:
	$(BLENDER) -b --python-exit-code 1 --python scripts/blender/00_scene_setup.py
	$(BLENDER) -b blender/scene/elisabethkirche.blend --python-exit-code 1 --python scripts/blender/10_massing.py
	$(BLENDER) -b blender/scene/elisabethkirche.blend --python-exit-code 1 --python scripts/blender/20_towers_roofs.py
	$(BLENDER) -b blender/scene/elisabethkirche.blend --python-exit-code 1 --python scripts/blender/30_import_lod2_reference.py
	$(BLENDER) -b blender/scene/elisabethkirche.blend --python-exit-code 1 --python scripts/blender/40_validation_cameras.py
	$(BLENDER) -b blender/scene/elisabethkirche.blend --python-exit-code 1 --python scripts/blender/90_validation.py

sfm-prepare:
	$(PYTHON) scripts/sfm/run_colmap_sfm.py --group $(or $(GROUP),core) --force --prepare-only

sfm:
	$(PYTHON) scripts/sfm/run_colmap_sfm.py --group $(or $(GROUP),core) --force

lod2-massing:
	$(PYTHON) scripts/analyze_lod2_massing.py
