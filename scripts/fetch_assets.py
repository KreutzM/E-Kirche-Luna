#!/usr/bin/env python3
"""Fetch the curated free reference set from Wikimedia Commons.

Standard library only. Licence metadata is checked live at download time.
"""
from pathlib import Path
from datetime import datetime, timezone
from email.utils import parsedate_to_datetime
import argparse, html, json, re, time, urllib.error, urllib.parse, urllib.request

ROOT = Path(__file__).resolve().parents[1]
MANIFEST = ROOT / "data" / "manifest.json"
META = ROOT / "sources" / "commons_download_metadata.jsonl"
REPORT = ROOT / "sources" / "download_report.csv"
API = "https://commons.wikimedia.org/w/api.php"
UA = "E-Kirche-reconstruction/1.0 (https://github.com/KreutzM/E-Kirche-Luna; research project)"
ALLOWED = ("cc by", "cc-by", "cc by-sa", "cc-by-sa", "cc0", "public domain", "pdm", "gfdl", "free art license", "fal")
MAX_RETRIES = 5
MIN_REQUEST_INTERVAL = 1.2
last_request_at = 0.0

def open_with_retry(req, timeout):
    """Open a Wikimedia request politely and honor server rate-limit guidance."""
    global last_request_at
    for attempt in range(MAX_RETRIES):
        wait = MIN_REQUEST_INTERVAL - (time.monotonic() - last_request_at)
        if wait > 0:
            time.sleep(wait)
        last_request_at = time.monotonic()
        try:
            return urllib.request.urlopen(req, timeout=timeout)
        except urllib.error.HTTPError as exc:
            if exc.code not in (429, 503) or attempt + 1 == MAX_RETRIES:
                raise
            retry_after = exc.headers.get("Retry-After", "").strip()
            if retry_after:
                try:
                    delay = max(1.0, float(retry_after))
                except ValueError:
                    try:
                        retry_at = parsedate_to_datetime(retry_after)
                        if retry_at.tzinfo is None:
                            retry_at = retry_at.replace(tzinfo=timezone.utc)
                        delay = max(1.0, (retry_at - datetime.now(timezone.utc)).total_seconds())
                    except (TypeError, ValueError, OverflowError):
                        delay = min(300.0, 30.0 * (2 ** attempt))
            else:
                delay = min(300.0, 30.0 * (2 ** attempt))
            print(f"  HTTP {exc.code}; retrying after {delay:.0f}s", flush=True)
            time.sleep(delay)

def clean(value):
    if not value:
        return ""
    value = html.unescape(value)
    value = re.sub(r"<br\s*/?>", " ", value, flags=re.I)
    value = re.sub(r"<[^>]+>", "", value)
    return re.sub(r"\s+", " ", value).strip()

def info(title, width):
    params = {
        "action":"query","format":"json","formatversion":"2",
        "prop":"imageinfo","titles":"File:"+title,
        "iiprop":"url|size|mime|sha1|extmetadata|commonmetadata",
    }
    if width:
        params["iiurlwidth"] = str(width)
    url = API + "?" + urllib.parse.urlencode(params)
    req = urllib.request.Request(url, headers={"User-Agent":UA})
    with open_with_retry(req, timeout=60) as r:
        data = json.load(r)
    page = data["query"]["pages"][0]
    if page.get("missing"):
        raise RuntimeError("Commons file not found")
    ii = page["imageinfo"][0]
    ext = ii.get("extmetadata", {})
    def em(k):
        v = ext.get(k, {})
        return clean(v.get("value","")) if isinstance(v, dict) else ""
    return {
        "original_url": ii.get("url",""),
        "thumb_url": ii.get("thumburl",""),
        "width": ii.get("width"),
        "height": ii.get("height"),
        "mime": ii.get("mime"),
        "sha1": ii.get("sha1"),
        "license_short_name": em("LicenseShortName"),
        "license_url": em("LicenseUrl"),
        "artist": em("Artist"),
        "credit": em("Credit"),
        "source": em("Source"),
        "date_time_original": em("DateTimeOriginal"),
        "commonmetadata": ii.get("commonmetadata", {}),
    }

def allowed(name):
    return any(x in (name or "").lower() for x in ALLOWED)

def destination(rec):
    if rec["group"] == "modern":
        base = ROOT / "references" / "images" / "modern"
    elif rec["group"] == "historic_pd":
        base = ROOT / "references" / "images" / "historic"
    else:
        base = ROOT / "references" / "plans" / "downloaded"
    return base / f'{rec["id"]}_{Path(rec["title"]).name}'

def download(url, dest):
    dest.parent.mkdir(parents=True, exist_ok=True)
    tmp = dest.with_suffix(dest.suffix + ".part")
    req = urllib.request.Request(url, headers={"User-Agent":UA})
    with open_with_retry(req, timeout=120) as r, tmp.open("wb") as f:
        while True:
            chunk = r.read(1024*1024)
            if not chunk:
                break
            f.write(chunk)
    tmp.replace(dest)

def main():
    ap = argparse.ArgumentParser()
    ap.add_argument("--priority", type=int, choices=(1,2,3))
    ap.add_argument("--max-width", type=int, default=2500)
    ap.add_argument("--originals", action="store_true")
    args = ap.parse_args()

    all_rows = json.loads(MANIFEST.read_text(encoding="utf-8"))
    rows = all_rows
    if args.priority:
        rows = [r for r in rows if int(r["priority"]) <= args.priority]

    metadata_by_id = {}
    if META.exists():
        for line in META.read_text(encoding="utf-8").splitlines():
            try:
                item = json.loads(line)
                if item.get("dataset_id"):
                    metadata_by_id[item["dataset_id"]] = item
            except (json.JSONDecodeError, TypeError):
                print("Warning: ignoring malformed line in existing metadata", flush=True)
    META.parent.mkdir(parents=True, exist_ok=True)
    report = ["id,status,license,file,error"]
    ok = 0
    for i, rec in enumerate(rows, 1):
        print(f'[{i}/{len(rows)}] {rec["id"]} {rec["title"]}', flush=True)
        dest = destination(rec)
        if rec["id"] in metadata_by_id and dest.is_file() and dest.stat().st_size:
            meta = metadata_by_id[rec["id"]]
            report.append(f'{rec["id"]},already_present,"{meta.get("license_short_name", "")}","{dest.relative_to(ROOT)}",')
            ok += 1
            continue
        try:
            meta = info(rec["title"], None if args.originals else args.max_width)
            if not allowed(meta["license_short_name"]):
                raise RuntimeError(f'licence not accepted: {meta["license_short_name"]!r}')
            url = meta["original_url"] if args.originals else (meta["thumb_url"] or meta["original_url"])
            download(url, dest)
            meta.update({"dataset_id":rec["id"],"title":rec["title"],"commons_page":rec["commons_page"],
                         "downloaded_to":str(dest.relative_to(ROOT))})
            metadata_by_id[rec["id"]] = meta
            META.write_text("".join(json.dumps(metadata_by_id[r["id"]], ensure_ascii=False)+"\n"
                                               for r in all_rows if r["id"] in metadata_by_id), encoding="utf-8")
            report.append(f'{rec["id"]},downloaded,"{meta["license_short_name"]}","{dest.relative_to(ROOT)}",')
            ok += 1
        except Exception as exc:
            msg = str(exc).replace('"','""')
            report.append(f'{rec["id"]},ERROR,,,"{msg}"')
            print("  ERROR:", exc, flush=True)
        time.sleep(MIN_REQUEST_INTERVAL)
    REPORT.write_text("\n".join(report)+"\n", encoding="utf-8")
    print(f"Downloaded {ok}/{len(rows)} assets.")

if __name__ == "__main__":
    main()
