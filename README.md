# Elisabethkirche Marburg — 3D-Rekonstruktion

Reproduzierbare, quellenbasierte 3D-Rekonstruktion der **Außenarchitektur** der Elisabethkirche in Marburg.

## Ziel

Ein metrisch kohärentes Blender-Modell aus frei verfügbaren Web-Ressourcen, dokumentierten Maßen,
historischen Plänen und explizit dokumentierten geometrischen Annahmen.

## Grundprinzipien

- Fakten, Quellen und Annahmen sind getrennt versioniert.
- Blender-Geometrie soll möglichst durch Python und Parameter reproduzierbar sein.
- Moderne Fotos definieren den heutigen Außenbestand.
- Historische Pläne/Fotos sind zusätzliche Evidenz, nicht automatisch der heutige Zustand.
- Jede nicht dokumentierte Dimension wird in `data/assumptions.yaml` erfasst.
- Modelländerungen werden gegen definierte Referenzansichten validiert.

## Einstieg für Astra

1. Lies zuerst `AGENTS.md`.
2. Lies `PROJECT.md`.
3. Prüfe `data/dimensions.yaml`, `data/manifest.json` und `docs/evidence_policy.md`.
4. Lies in der Massing-Phase zusätzlich `docs/camera_calibration.md`.
5. Nutze `make validate-data` für Datenkonsistenz; `make validate` verlangt zusätzlich quantitative Kameravalidierung.
6. Arbeite coarse-to-fine und dokumentiere jede neue Annahme.

## Referenzdaten

Die Binärbilder werden nicht als unkontrollierter Datenberg in Git gehalten.
`python scripts/fetch_assets.py` lädt die kuratierte freie Wikimedia-Commons-Auswahl und
schreibt aktuelle Lizenz-/Provenienzmetadaten mit.

## Schnellstart

```bash
python -m pip install -r requirements.txt
python scripts/validate_dataset.py
# During massing, annotate validation/camera_landmarks.yaml and run:
# make camera-fit VIEW=M02
# make validate-model
python scripts/fetch_assets.py --priority 1 --max-width 2500
python scripts/make_contact_sheets.py
```

Blender-Dateien und große Binärartefakte sind für Git LFS vorbereitet.