"""Create temporary photo/render overlays for visual registration checks.

This comparison aid does not change source images, camera records, scene
geometry, or validation status. Camera candidates remain documented as
inferred in validation/camera_parameters.json.
"""
from pathlib import Path

from PIL import Image


ROOT = Path.cwd()
IMAGE_DIR = ROOT / "references" / "images" / "modern"
RENDER_DIR = ROOT / "validation" / "renders"
PAIRS = {
    "M02": ("M02_Elisabethkirche Marburg von SO.jpg", "VAL_SE.png"),
    "M05": ("M05_Elisabethkirche (Marburg) Südseite.jpg", "VAL_S.png"),
    "M18": ("M18_Marburg Elisabethkirche Südchor Dach von SO (1).jpg", "VAL_M18.png"),
    "M21": ("M21_Marburg Elisabethkirche Südchor Dach von SO (2).jpg", "VAL_M21.png"),
}


def main():
    for evidence_id, (source_name, render_name) in PAIRS.items():
        source_path = IMAGE_DIR / source_name
        render_path = RENDER_DIR / render_name
        if not source_path.exists() or not render_path.exists():
            print(f"skip {evidence_id}: source or render is missing")
            continue

        with Image.open(source_path) as image:
            source = image.convert("RGB")
        with Image.open(render_path) as image:
            render = image.convert("RGB")

        # Preserve the complete fields of view. Aspect-ratio mismatches are
        # letterboxed instead of cropped, making framing differences visible.
        width = max(source.width, render.width)
        height = max(source.height, render.height)

        def fit(image):
            scale = min(width / image.width, height / image.height)
            size = (round(image.width * scale), round(image.height * scale))
            resized = image.resize(size, Image.Resampling.LANCZOS)
            canvas = Image.new("RGB", (width, height), (160, 160, 160))
            canvas.paste(resized, ((width - size[0]) // 2, (height - size[1]) // 2))
            return canvas

        overlay = Image.blend(fit(source), fit(render), 0.5)
        overlay.thumbnail((1600, 1600), Image.Resampling.LANCZOS)
        output = RENDER_DIR / f"OVERLAY_{evidence_id}.png"
        overlay.save(output)
        print(f"created {output.relative_to(ROOT)}; source={source.size}, render={render.size}")


if __name__ == "__main__":
    main()
