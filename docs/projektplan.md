# Projektplan — Außenrekonstruktion der Elisabethkirche

## Ziel und Abgrenzung

Ein metrisch kohärentes, nachvollziehbar belegtes Blender-Modell des heutigen Außenbaus. Die Innenarchitektur bleibt außerhalb des Projektumfangs; Innenmaße dienen nur als ausdrücklich gekennzeichnete Maßstabsanker. Das Modell entsteht reproduzierbar aus Blender-Python, dokumentierten Maßen und protokollierten Annahmen.

Die festgelegte Orientierung bleibt unverändert: Meter, X nach Osten, Y nach Norden, Z nach oben; Ursprung in der Mitte der Vierung auf nominaler Fußbodenhöhe.

## Ausgangslage

- Repository auf `main`, aktueller Stand `75797e1` (27.09.2026).
- `python scripts/validate_dataset.py` besteht mit 35 Referenzeinträgen, 6 dokumentierten Maßen und 41 protokollierten Geometrieannahmen.
- Das Manifest führt 22 moderne Fotos, 5 historische Fotos und 8 historische Pläne/Ansichten. M22 ergänzt eine moderne erhöhte Südwestansicht vom Marburger Schlossberg; Bilddateien und Kontaktbögen bleiben gemäß Repository-Regeln lokal und Bildbinärdateien unveröffentlicht.
- `data/assumptions.yaml` enthält die Außenmaß-Inferenzen samt Gründen, Konfidenzen, Evidenz-IDs und Iterationen.
- Die Blender-Szene, parametrischen Hauptmassen, Türme, Dächer, Evidenzkameras, Landmarken und Prüfrenders sind angelegt. Der Szenenaufbau ist reproduzierbar; die Massing-Silhouette besteht die Evidenzprüfung jedoch noch nicht.
- Die sechs dokumentierten Maße umfassen auch Innenmaße und dürfen nicht als Außenabmessungen übernommen werden.

## Umsetzungsstand

Seit diesem Plan wurden alle 35 Referenzen mit Provenienz gesichert. Der Validator besteht aktuell mit 41 protokollierten Geometrieannahmen. Die parametrische Blender-Szene, Hauptmassen, zwei Westtürme, Dachmassen, Evidenzkameras und Haupt-Prüfansichten sind angelegt. Die Arbeitspakete Referenzen, Evidenz und Grundszene sind abgeschlossen.

Iteration 4 richtet die planbasierten Massen mit 7,13° zur geografischen Ostachse aus; der Vierungsursprung und die Weltachsen X=Ost, Y=Nord, Z=Oben bleiben unverändert. Iteration 5 vergrößert die inferierte Außenlänge und Querhausspanne anhand der minimalen OSM-Umrisshülle auf 70,4 × 44,6 m. Iteration 6 kalibriert die horizontale Sensorbreite von M02 anhand seines 3696×3053-Crops auf 28,3 mm äquivalent und verschiebt den dokumentierten Zielpunkt auf [-15, 0, 29] m. Iteration 7 verwendet M05 als separate Südsicht mit dessen GPS, 30-mm-Äquivalentbrennweite und Portraitformat; nur der Blickzielpunkt ist inferiert. Ein Test mit 32 m Konchendachhöhe wurde in M02/M05 zu hoch und auf 29 m zurückgesetzt. Das sind Karten-/Kamerableitungen, keine Vermessungsmaße. Validator und vollständiger Szenenaufbau bestehen; die Prüfrenders lassen sich reproduzieren.

Iteration 8 testet für M05 zwei zusätzliche Blickposen 4 m und 8 m näher am Modell sowie ein niedrigeres Blickziel. Beide schärfen den Ausschnitt der nahen Südfassade; Turmspitze, Dachlinie und Ostchor lassen sich damit nicht zugleich an die Fotokomposition anpassen. Die offizielle GPS-basierte Kameraposition und die bestehende Zielhypothese bleiben deshalb erhalten. Es wurde keine Geometrie geändert.

Iteration 9 vergleicht einen 30-m-Konchendachfirst mit dem gespeicherten 29-m-Stand in den gleichen sieben Kameras. Der Zwischenwert hebt die Firste geringfügig an, beseitigt die gegensätzlichen M02-/M05-Restabweichungen aber nicht. Der gespeicherte Wert bleibt 29 m; als Nächstes sind Dachform und Kamerafit getrennt zu prüfen.

Iteration 10 vergleicht M05-Blickzielhöhen z=16, 18, 20 und 23 m bei unverändertem GPS-Standort, Bildformat und 30-mm-Äquivalentbrennweite. z=18 m richtet Dachreiter, Konchendachfirst und Fassadenfuß gemeinsam am plausibelsten aus und wird als inferiertes Ziel übernommen. Der Fit bleibt partiell; die Südkamera M04 ist weiterhin nicht gelöst.

Das Massing-Prüftor bleibt offen: M02s Landmarken und Gesamtbreite liegen nach Iteration 6 ungefähr an den Quellpositionen, die blockige Dach-/Konchensilhouette weicht aber weiterhin ab. M05 bestätigt die grobe Südseitenfolge von Langhausdach, Dachreiter und Ostchor, jedoch keinen vollständigen Silhouettenpass; getestete Offsetposen lösen die Ausrichtung nicht. M04 bleibt ungelöst: GPS-Projektion und verfügbare Testposen liefern keine passende Fotokomposition. Keine Folgephase vor Beseitigung dieser Abweichungen beginnen.

Iteration 11 ergänzt M20 (moderne Südostansicht) und M21 (Dachdetail am Südchor) samt Commons-Provenienz. M18/M21 nennen denselben Kamerastandort und die Himmelsrichtung NW; 315° ist nur die nominale Sektormitte und keine exakte Blickrichtung. M21s 29-mm-Kamerakandidat und seine lokale Höhe/Zielneigung bleiben ausdrücklich inferiert. Außerdem wurde der aktuelle Hessische LoD2-Datensatz der Kirche als G01 gesichert und als render-ausgeblendete Referenz in `REFERENCE` importiert. Ein reproduzierbarer Auswerter berechnet aus 5.233 Quellkoordinaten eine orientierte Hülle von 70,359 × 44,378 m mit 7,406° Längsachse; das unabhängige geodätische Modell bestätigt damit näherungsweise die bisherigen OSM-Inferenzen 70,4 × 44,6 m und 7,13°. Die Quellhöhe von 80,118 m ist nur ein grober Plausibilitätsabgleich zur dokumentierten Turmhöhe. LoD2 generalisiert Dächer und kann bei komplexen Dachformen grob abweichen; es bestätigt daher weder die aktuelle Konchendachform noch die Foto-Silhouette. M02/M04 und das Massing-Gate bleiben offen.

Iteration 12 rendert M21 mit fixierter Commons-Position und 29 mm Brennweite sowie inferierten Zielhöhen z=20, 24, 28 und 32 m. Die Lageangabe ist kardinal NW; 315° ist nur die nominale Sektormitte. Die Zielhöhen verschieben die vertikale Bildlage, beheben aber nicht alle Abweichungen von Konchenfirst und Turmpaar. Als Nächstes werden Blickrichtungssektor und G01-zu-Projekt-Abgleich getrennt geprüft.

Iteration 13 testet Blickrichtungen 315°, 320°, 325° und 330° innerhalb der überlieferten Kardinalrichtung NW mit unverändertem Standort, 32-m-Zielabstand, z=24 m und Brennweite. 325° verbessert im M21-Render die relative Lage von Konchendach und Dachreiter; der Kamerafit bleibt wegen sichtbarer Höhen- und Silhouettenreste offen. Die Blickrichtung ist ein Fit-Kandidat, keine gemessene Kamerapose.

Iteration 14 vergleicht den G01-Mindestflächenrechteckmittelpunkt mit dem aus P01 abgeleiteten Vierungsversatz. Der so berechnete Kandidat liegt nur 0,85 m vom bestehenden OSM-abgeleiteten Projektanker entfernt. Das ist eine grobe unabhängige Gegenprüfung, keine Vermessungsgenauigkeit; sie spricht gegen einen großen Ursprungsversatz als Erklärung des M21-Winkelresiduums. Kamera und Geometrie bleiben unverändert; der M21-Rest wird weiter gegen Südost-Massierung und Richtungsevidenz geprüft.

Iteration 15 rendert G01 als temporäre Drahtüberlagerung über dem Modell aus TOP-, M21- und SE-Kamera. Die Grundrisslage stimmt im Groben mit dem unabhängig bestätigten Anker überein; an Konchenumrissen und Dachanschlüssen bleiben sichtbare Unterschiede. Da Hessens LoD2 komplexe Dächer ausdrücklich generalisiert, wird daraus keine Dachgeometrie kopiert. Es bleibt ein Hinweis, welche Teilbereiche anhand P08 und aktueller Südostfotos genauer geprüft werden müssen.

Iteration 17 korrigiert die Richtungspräzision der Commons-Angabe: M18/M21 speichern `NW`, wobei 315° lediglich die Mitte der Himmelsrichtung ist. M18 wird als eigene breite Prüfansicht mit EXIF-Brennweite 24 mm und gemeinsamem Commons-Standort in die gespeicherten Kameras aufgenommen. Ein 330°/z=32-m-Kandidat passt die breite M18-Dach-/Turmfolge besser; der M21-Portraitfit bleibt mit 325°/z=32 m ein separater visueller Kandidat. Beide Ziele und Blickrichtungen sind inferiert, die Dachreiterspitze bleibt relativ zum Modell zu niedrig und die Silhouette besteht den Prüfschritt noch nicht. Temporäre Dachreiterhöhentests ändern die gespeicherte Geometrie nicht. Das Massing-Gate bleibt offen.

Iteration 18 erhöht den inferierten Dachreiteranstieg über dem Hauptfirst von 12 auf 20 m. Fixierte M02-Kameradiagnosen sowie M18/M21-Dachvergleiche stützen die Korrektur; 20 m bleibt wegen unsicherer Zielpunkte und Kameraneigungen ein niedrig sicherer Kandidat, keine dokumentierte Messung. Die Standardansichten werden neu aufgebaut und geprüft. Die Korrektur gibt das Massing-Prüftor nicht frei; Dachanschlüsse und übrige Silhouettenabweichungen sind weiterhin zu bewerten.

Iteration 19 erzeugt reproduzierbare, unveränderte Quellbild-Render-Überlagerungen für M02, M05, M18 und M21. Die vollständigen Bildfelder bleiben erhalten; bei Formatabweichung wird der Bereich eingerahmt statt beschnitten. M18/M21 zeigen die Dachreiterhöhe und die grobe Turm-/Dachfolge näher an der Quelle; M02 stützt die Höhenkorrektur, M05 bleibt mit seinem nur visuellen Zielpunkt schlecht registriert. Die Überlagerungen belegen keine Kamerakalibrierung und liefern keine neue Maßangabe. Als Nächstes die Dachanschlüsse gezielt mit P01/P08 und der allgemeinen Draufsicht abgleichen, bevor weitere Höhenwerte geändert werden.

Iteration 20 korrigiert die M21-Vergleichszuordnung: Die frühere Überlagerung benutzte einen temporären Render bei 325°/z=32 m, nicht die gespeicherte `VAL_M21`-Kamera. Das diagnostische Raster variiert nun 325/330/335° und Zielhöhen z=17/22/27/32 m. Die Bildlage reagiert stark auf die inferierte Zielneigung; kein eindeutiger Kamerafit und kein daraus ableitbarer Geometriefehler sind belegt. Keine Geometrie geändert. Die Dokumentation von Kamera, Landmarken und Referenzansichten wurde berichtigt; Validator besteht mit 35 Referenzen, 6 dokumentierten Maßen und 41 Annahmen.

Iterationsnotiz: Die offizielle Kirchenseite verlinkt einen Außenrundgang und bestätigt eine beauftragte professionelle 3D-Aufnahme. Ein Vermessungsanbieter führt separat einen vollständigen Kirchenscan/-modellierungsauftrag mit geforderter 3-mm-Genauigkeit für Sanierungsunterlagen auf. Ob beide Referenzen dasselbe Projekt bezeichnen, ist nicht belegt; Rohpunktwolke oder Mesh sind öffentlich nicht verlinkt und Nutzungsrechte für Tour/Scan sind nicht angegeben. Als potenziell entscheidende Evidenzquelle registriert, aber nicht heruntergeladen oder zur Geometrieableitung verwendet. Ein hochauflösender Export wäre der stärkste nächste Abgleich, wenn Rechteinhaber ihn freigeben.

## Durchführung und Prüftore

### 0. Reproduzierbare Ausgangsbasis

1. Validator und Git-Status als Ausgangszustand festhalten.
2. Asset-Downloader prüfen: Er leert die Provenienzdatei bei jedem Lauf. Deshalb entweder den vollständigen Manifest in einem Lauf abrufen oder das Skript vorher um sicheres Fortsetzen/Ergänzen erweitern.
3. Lizenzgeprüfte Referenzen laden; für jede Datei Provenienz, Lizenz, Abmessungen und Downloadstatus erhalten. Nicht verfügbare oder nicht akzeptierte Lizenzen dokumentieren, nicht umgehen.
4. Kontaktbögen erzeugen und die Referenzen nach Ansicht, Sichtbarkeit, Perspektive, Restaurierungszustand und Eignung für Geometrie/Kamerakalibrierung sichten.

**Prüftor:** Manifest bleibt valide; jeder der 34 Einträge hat einen nachvollziehbaren Status; heruntergeladene Dateien sind den IDs zugeordnet; Kontaktbögen zeigen die tatsächlich verfügbaren Bilder. Keine Bildmetadaten ergänzen, die nicht vorliegen.

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

Die drei Konchen- und Dachanschlüsse aus M02, M05, M18, M20 und M21 gegen P01/P08 und den G01-Referenzkörper einzeln vergleichen. Für M04 die GPS-/Georeferenz-Diskrepanz gesondert prüfen. Kamerastandort und dokumentierte Brennweite beibehalten; Himmelsrichtungen mit ihrer tatsächlichen Präzision behandeln und unbekannte Zielpunkte als Inferenz führen. Geometrieänderungen erst nach lokalisierter Abweichung vornehmen, jede neue Maßinferenz protokollieren und betroffene Ansichten neu rendern. Das Massing-Gate erst nach bestandenem Silhouettenvergleich freigeben.
