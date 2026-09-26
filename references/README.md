# Reference assets

Binary references are fetched from the curated manifest instead of being stored as ordinary Git objects.
The generated `sources/commons_download_metadata.jsonl` is kept under version control as per-file
license and provenance evidence; the transient CSV download report and image binaries remain local.

```bash
python scripts/fetch_assets.py --priority 1 --max-width 2500
python scripts/make_contact_sheets.py
```

Outputs:
- `references/images/modern/`
- `references/images/historic/`
- `references/plans/downloaded/`
- `references/contact_sheets/`
- live licence/provenance metadata under `sources/`
