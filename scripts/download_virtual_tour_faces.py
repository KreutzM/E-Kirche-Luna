#!/usr/bin/env python3
"""Download low-resolution front-face tiles from the public Elisabethkirche tour.

The tour has no published camera locations or reuse licence. These assembled
cube faces are local visual references only, not metric images or distributable
assets. The user authorized their experimental use; licence review is deferred.
"""
from concurrent.futures import ThreadPoolExecutor, as_completed
from datetime import date
from hashlib import sha256
from io import BytesIO
import json
from pathlib import Path
import time
from urllib.error import HTTPError
from urllib.request import Request, urlopen

from PIL import Image


ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / "references" / "images" / "virtual_tour"
OUT.mkdir(parents=True, exist_ok=True)
CACHE = ROOT / "validation" / "cache" / "virtual_tour"
CACHE.mkdir(parents=True, exist_ok=True)

TOUR = "https://flyingimpressions.de/360%C2%B0/elisabethkirche/index.htm"
BASE = "https://flyingimpressions.de/360%C2%B0/elisabethkirche/media"
VERSION = "1651494864515"
LEVEL = 2  # Published front face is 3072 x 3072 pixels at this level.
TILES_PER_AXIS = 6
PANORAMAS = {
    "T01": ("BAE34FE8_B791_BE81_41E4_688035001EA3", "Ostansicht"),
    "T02": ("BAE03A6E_B792_4181_41E0_B932DE3ADD2B", "Elisabethkirche"),
    "T03": ("BA7C5427_B791_C18F_41DA_F175C86BB5F5", "Westansicht"),
    "T04": ("BA20E0CB_B796_4287_41C5_D3D8107D8158", "Südansicht"),
}


def fetch_tile(pano_id, row, col):
    relative = f"panorama_{pano_id}_0/f/{LEVEL}/{row}_{col}.jpg"
    url = f"{BASE}/{relative}?v={VERSION}"
    cache_path = CACHE / f"{pano_id}_{LEVEL}_{row}_{col}.jpg"
    if cache_path.exists():
        data = cache_path.read_bytes()
    else:
        request = Request(url, headers={"User-Agent": "Mozilla/5.0 E-Kirche-Luna local visual research"})
        for attempt in range(6):
            try:
                with urlopen(request, timeout=30) as response:
                    data = response.read()
                cache_path.write_bytes(data)
                time.sleep(0.15)
                break
            except HTTPError as error:
                if error.code != 429 or attempt == 5:
                    raise RuntimeError(f"Could not fetch {url}: HTTP {error.code}") from error
                retry_after = error.headers.get("Retry-After")
                wait = float(retry_after) if retry_after and retry_after.isdigit() else 2 ** attempt
                time.sleep(min(wait, 20))
    return row, col, data, url


def assemble(evidence_id, pano_id, label):
    canvas = Image.new("RGB", (TILES_PER_AXIS * 512, TILES_PER_AXIS * 512))
    tile_records = []
    jobs = []
    with ThreadPoolExecutor(max_workers=2) as pool:
        for row in range(TILES_PER_AXIS):
            for col in range(TILES_PER_AXIS):
                jobs.append(pool.submit(fetch_tile, pano_id, row, col))
        for job in as_completed(jobs):
            row, col, data, url = job.result()
            with Image.open(BytesIO(data)) as tile:
                if tile.size != (512, 512):
                    raise ValueError(f"Unexpected tile size for {url}: {tile.size}")
                canvas.paste(tile.convert("RGB"), (col * 512, row * 512))
            tile_records.append({"row": row, "column": col, "url": url,
                                 "sha256": sha256(data).hexdigest()})

    filename = f"{evidence_id}_{label}_front_L{LEVEL}.jpg"
    output = OUT / filename
    canvas.save(output, quality=95, subsampling=0)
    return {
        "id": evidence_id,
        "label": label,
        "panorama_id": pano_id,
        "source_page": TOUR,
        "downloaded_to": output.relative_to(ROOT).as_posix(),
        "assembled_size_px": list(canvas.size),
        "projection": "single rectilinear cube face; do not treat as calibrated pinhole view",
        "tile_level": LEVEL,
        "tile_count": len(tile_records),
        "tile_records": sorted(tile_records, key=lambda x: (x["row"], x["column"])),
        "reuse_license": "not stated on tour; local experimental use authorized by user; review before redistribution",
        "retrieved_at": date.today().isoformat(),
    }


def main():
    records = [assemble(evidence_id, pano_id, label)
               for evidence_id, (pano_id, label) in PANORAMAS.items()]
    metadata = {
        "title": "Elisabethkirche Marburg exterior virtual tour",
        "provider": "Flying Impressions",
        "tour_page": TOUR,
        "records": records,
        "limitations": [
            "The tour labels four panoramas, but does not publish world camera positions or a survey export.",
            "Only the front cube face at level 2 is assembled; each source is partial-frame imagery.",
            "Use for visual exterior geometry checks only; no metric camera solve or dimensions are derived.",
        ],
    }
    metadata_path = ROOT / "sources" / "virtual_tour_metadata.json"
    metadata_path.write_text(json.dumps(metadata, ensure_ascii=False, indent=2) + "\n",
                             encoding="utf-8")
    print(f"Wrote {len(records)} local panorama faces and {metadata_path.relative_to(ROOT)}")


if __name__ == "__main__":
    main()
