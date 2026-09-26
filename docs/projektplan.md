# Projektplan — Außenrekonstruktion der Elisabethkirche

## Ziel und Abgrenzung

Ein metrisch kohärentes, nachvollziehbar belegtes Blender-Modell des heutigen Außenbaus. Die Innenarchitektur bleibt außerhalb des Projektumfangs; Innenmaße dienen nur als ausdrücklich gekennzeichnete Maßstabsanker. Das Modell entsteht reproduzierbar aus Blender-Python, dokumentierten Maßen und protokollierten Annahmen.

Die festgelegte Orientierung bleibt unverändert: Meter, X nach Osten, Y nach Norden, Z nach oben; Ursprung in der Mitte der Vierung auf nominaler Fußbodenhöhe.

## Ausgangslage

- Repository auf `main`, Ausgangscommit `397ee64`.
- `python scripts/validate_dataset.py` besteht: 32 Referenzeinträge und 6 dokumentierte Maße.
- Der Manifest enthält 19 moderne Fotos, 5 historische Fotos und 8 historische Pläne/Ansichten. Die Bilddateien und Kontaktbögen liegen noch nicht im Arbeitsverzeichnis.
- `data/assumptions.yaml` ist leer. Das ist konsistent damit, dass noch keine abgeleitete Architektur modelliert wurde.
- `scripts/blender/10_massing.py` erzeugt nur drei ausgeblendete Maßstabs-Hilfskörper in `REFERENCE`, keine Gebäudemassen. Ein gespeichertes `.blend`, Validierungskameras, Landmarken und Render fehlen.
- Die sechs Maße umfassen auch Innenmaße und dürfen nicht als Außenabmessungen übernommen werden.

## Umsetzungsstand

Seit diesem Plan wurden alle 32 Referenzen mit Provenienz gesichert. Der Validator besteht aktuell mit 41 protokollierten Geometrieannahmen. Die parametrische Blender-Szene, Hauptmassen, zwei Westtürme, Dachmassen, Evidenzkameras und sieben Renderansichten sind angelegt. Die Arbeitspakete Referenzen, Evidenz und Grundszene sind abgeschlossen.

Iteration 4 richtet die planbasierten Massen mit 7,13° zur geografischen Ostachse aus; der Vierungsursprung und die Weltachsen X=Ost, Y=Nord, Z=Oben bleiben unverändert. Iteration 5 vergrößert die inferierte Außenlänge und Querhausspanne anhand der minimalen OSM-Umrisshülle auf 70,4 × 44,6 m. Iteration 6 kalibriert die horizontale Sensorbreite von M02 anhand seines 3696×3053-Crops auf 28,3 mm äquivalent und verschiebt den dokumentierten Zielpunkt auf [-15, 0, 29] m. Iteration 7 verwendet M05 als separate Südsicht mit dessen GPS, 30-mm-Äquivalentbrennweite und Portraitformat; nur der Blickzielpunkt ist inferiert. Ein Test mit 32 m Konchendachhöhe wurde in M02/M05 zu hoch und auf 29 m zurückgesetzt. Das sind Karten-/Kamerableitungen, keine Vermessungsmaße. Validator und vollständiger Szenenaufbau bestehen; die Prüfrenders lassen sich reproduzieren.

Iteration 8 testet für M05 zwei zusätzliche Blickposen 4 m und 8 m näher am Modell sowie ein niedrigeres Blickziel. Beide schärfen den Ausschnitt der nahen Südfassade; Turmspitze, Dachlinie und Ostchor lassen sich damit nicht zugleich an die Fotokomposition anpassen. Die offizielle GPS-basierte Kameraposition und die bestehende Zielhypothese bleiben deshalb erhalten. Es wurde keine Geometrie geändert.

Iteration 9 vergleicht einen 30-m-Konchendachfirst mit dem gespeicherten 29-m-Stand in den gleichen sieben Kameras. Der Zwischenwert hebt die Firste geringfügig an, beseitigt die gegensätzlichen M02-/M05-Restabweichungen aber nicht. Der gespeicherte Wert bleibt 29 m; als Nächstes sind Dachform und Kamerafit getrennt zu prüfen.

Das Massing-Prüftor bleibt offen: M02s Landmarken und Gesamtbreite liegen nach Iteration 6 ungefähr an den Quellpositionen, die blockige Dach-/Konchensilhouette weicht aber weiterhin ab. M05 bestätigt die grobe Südseitenfolge von Langhausdach, Dachreiter und Ostchor, jedoch keinen vollständigen Silhouettenpass; getestete Offsetposen lösen die Ausrichtung nicht. M04 bleibt ungelöst: GPS-Projektion und verfügbare Testposen liefern keine passende Fotokomposition. Keine Folgephase vor Beseitigung dieser Abweichungen beginnen.

## Durchführung und Prüftore

### 0. Reproduzierbare Ausgangsbasis

1. Validator und Git-Status als Ausgangszustand festhalten.
2. Asset-Downloader prüfen: Er leert die Provenienzdatei bei jedem Lauf. Deshalb entweder den vollständigen Manifest in einem Lauf abrufen oder das Skript vorher um sicheres Fortsetzen/Ergänzen erweitern.
3. Lizenzgeprüfte Referenzen laden; für jede Datei Provenienz, Lizenz, Abmessungen und Downloadstatus erhalten. Nicht verfügbare oder nicht akzeptierte Lizenzen dokumentieren, nicht umgehen.
4. Kontaktbögen erzeugen und die Referenzen nach Ansicht, Sichtbarkeit, Perspektive, Restaurierungszustand und Eignung für Geometrie/Kamerakalibrierung sichten.

**Prüftor:** Manifest bleibt valide; jeder der 32 Einträge hat einen nachvollziehbaren Status; heruntergeladene Dateien sind den IDs zugeordnet; Kontaktbögen zeigen die tatsächlich verfügbaren Bilder. Keine Bildmetadaten ergänzen, die nicht vorliegen.

### 1. Evidenz und Maßgrundlage

1. Außenansichten, Grundriss, Längs-/Querschnitte und Turmquerschnitt gegeneinander lesen. Historische Pläne als Strukturbeleg verwenden, moderne Fotos für den heutigen sichtbaren Zustand.
2. Dokumentierte Maße samt Geltungsbereich und Quelle beibehalten. Innenmaße nicht stillschweigend auf Außenflächen übertragen.
3. Für jede benötigte, nicht belegte Geometrie vor dem Modellieren eine Annahme mit Wert, Einheit, Begründung, Konfidenz, Evidenz-IDs und Iteration in `data/assumptions.yaml` erfassen.
4. Bildabdeckung und ungelöste Widersprüche in `data/coverage.yaml` bzw. `docs/decisions.md` aktualisieren.

**Prüftor:** Jeder verwendete Parameter ist als dokumentiert, bild-/planbasiert oder abgeleitet unterscheidbar. Es gibt keine als Messwert ausgegebene Inferenz.

### 2. Blender-Grundlage und Grundriss

1. Szene mit `00_scene_setup.py` erzeugen; Meter, Achsen, Ursprung und verlangte Sammlungen prüfen.
2. Parameter für reproduzierbare Grundrissgeometrie in Skripten oder einer maschinenlesbaren Parameterdatei führen.
3. Zuerst nur Gebäude-Fußabdruck, Vierung, Langhaus, Querhaus und Ostabschluss als einfache Grundkörper aufbauen. Referenz-Hilfskörper bleiben klar als nicht-architektonische Guides markiert.

**Prüftor:** Orientierung und Maßstab sind reproduzierbar; Grundrisslogik stimmt mit den orthografischen Belegen und mindestens einer modernen Übersichtsansicht überein; alle neu eingeführten Maße stehen im Annahmenlog.

### 3. Grobe Außenmassen

In der vorgegebenen Reihenfolge ergänzen, zunächst ohne Fassadendetails:

1. Langhaus-/Hallenkörper, Querhaus und dreikonchiger Ostabschluss einschließlich evidenzgestützter Sakristei-Masse.
2. Westbau und beide Türme.
3. Hauptdächer, Querhausdächer, Chor-/Konchendächer und kleinere Dachkörper.

Die Geometrie bleibt als lesbare, benannte Objekte in `MASSING`, `TOWERS` und `ROOFS` organisiert. Verdeckte oder innere Details werden nicht modelliert, sofern sie keine Außenform bestimmen.

**Prüftor Massing:** Evidenzbezogene Kameras und Landmarken für West, Süd, Nord, Südost sowie geeignete Südwest-/Nordostansichten einrichten. Silhouette, relative Höhen, Grundrissausdehnung und Dachanschlüsse vergleichen. Die Ostansicht bleibt als dokumentierte Evidenzlücke sichtbar, falls keine moderne Direktansicht verfügbar ist. Erst nach protokolliertem Massing-Pass mit Strebewerk und Öffnungen fortfahren.

### 4. Strebewerk und Außenstützen

Strebepfeiler, Strebebögen und weitere tragende Außenkörper maß- bzw. annahmenbasiert und parametrisch ergänzen. Wiederholungen über gemeinsame Parameter erzeugen. Danach erneut gegen Ansichten und Silhouette prüfen.

**Prüftor:** Anzahl, Lage und Höhenstaffelung sind anhand von Evidenz begründet; Abweichungen sind als offene Punkte notiert; keine Detailarbeit verdeckt einen Massingfehler.

### 5. Öffnungen, Maßwerk und Ornament

1. Tür-, Fenster- und Galerieöffnungen als einfache Öffnungsgeometrie ergänzen.
2. Maßwerk erst nach stabiler Öffnungsform ergänzen.
3. Ornament ausschließlich dort ergänzen, wo Referenzen es tragen; keine dekorativen Ergänzungen aus bloßer Plausibilität.

Objekte getrennt in `OPENINGS`, `TRACERY` und `DETAIL` organisieren. Nach jedem größeren Satz Änderungen betroffene Referenzansichten aktualisieren und Abweichungen festhalten.

**Prüftor:** Öffnungen und Details stimmen in Lage, Proportion und Silhouette mit geeigneten modernen Ansichten überein; historische Abweichungen sind auf Restaurierungs-/Zustandsunterschiede geprüft.

### 6. Endprüfung und Lieferung

1. `python scripts/validate_dataset.py` ausführen.
2. Blender-Szene aus den Skripten reproduzieren und gespeichertes Arbeitsmodell in `blender/scene/elisabethkirche.blend` ablegen.
3. Validierungsrender für alle kalibrierten Hauptansichten nach `validation/renders/` schreiben.
4. Landmarken, ungelöste Diskrepanzen, Annahmen und Evidenzabdeckung aktualisieren.
5. Skripte, Parameter, Manifest, Lizenz-/Provenienzmetadaten, Blender-Datei und Render gemeinsam auf Reproduzierbarkeit und Sammlungseinteilung prüfen. GLTF/OBJ nur bei tatsächlichem Bedarf exportieren.

**Abnahmekriterien:** Validator besteht; Modell liegt im Projektkoordinatensystem und umfasst nur die Außenrekonstruktion; Hauptmassen und Silhouetten sind für die belegbaren Ansichten verglichen; alle Inferenzmaße sind protokolliert; Render und Blender-Datei lassen sich aus den versionierten Generatoren aktualisieren; offene Evidenzlücken sind benannt.

## Arbeitsregeln während der Umsetzung

- Reihenfolge strikt einhalten: Grundriss → Hauptmassen → Türme → Dächer → Strebewerk → Öffnungen → Maßwerk → Ornament.
- Keine Validierungskamera nur zur optischen Verbesserung der Übereinstimmung verändern. Kalibrierungsänderung und Grund dafür dokumentieren.
- Referenzdateien nie überschreiben oder nach dem Modell retuschieren.
- Nach jeder wesentlichen Geometrieänderung Dataset-Validator, betroffene Render, Vergleich und Annahmenlog aktualisieren.
- Änderungen in nachvollziehbaren Arbeitseinheiten versionieren; große/binäre Referenzdaten nur entsprechend Repository-Regeln und bestätigter Lizenz/Provenienz behandeln.

## Hauptrisiken und Gegenmaßnahmen

| Risiko | Gegenmaßnahme |
|---|---|
| Referenzdateien oder Lizenzen fehlen | Assetstatus pro Manifest-ID erfassen; fehlende Evidenz als Lücke führen und nicht durch erfundene Metadaten ersetzen. |
| Innenmaße werden als Außenmaß fehlinterpretiert | Geltungsbereich jedes Maßes prüfen; Außenkontur aus mehreren Fotos/Plänen ableiten und Inferenz dokumentieren. |
| Historische Ansichten zeigen einen früheren Zustand | Moderne Fotos für den Ist-Zustand priorisieren und Unterschiede explizit notieren. |
| Perspektivische Verzerrung führt zu falscher Maßableitung | Kameras anhand belegter Landmarken kalibrieren; Panorama-/Stitching-Aufnahmen nicht als gewöhnliche Lochkamera behandeln. |
| Detailarbeit beginnt vor belastbarer Grundform | Massing-Prüftor verbindlich vor Strebewerk, Öffnungen und Ornament setzen. |

## Nächster konkreter Arbeitsschritt

Die M02-Projektion und den Grundriss anhand von P01, den modernen Ansichten und der OSM-Außenkontur gemeinsam prüfen: Kamerastandort und Brennweite aus Metadaten beibehalten, unbekannte Blickrichtung explizit fitten, anschließend westliche und östliche Extrempunkte sowie Querhausbreite am Foto- und Planmaßstab messen. Für M04 die GPS-/Georeferenz-Diskrepanz gesondert prüfen. Jede weitere Maßänderung als Inferenz protokollieren und alle betroffenen Ansichten neu vergleichen; Massing-Gate erst nach bestandenem Silhouettenvergleich freigeben.
