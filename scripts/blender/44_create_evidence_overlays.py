"""Create temporary photo/render overlays for visual registration checks.

This comparison aid does not change source images, camera records, scene
geometry, or validation status. Camera candidates remain documented as
inferred in validation/camera_parameters.json.
"""
from pathlib import Path

from PIL import Image, ImageChops, ImageFilter


ROOT = Path.cwd()
IMAGE_DIR = ROOT / "references" / "images" / "modern"
RENDER_DIR = ROOT / "validation" / "renders"
PAIRS = {
    "M10": ("M10_Elisabethkirche Marburg (03).jpg", "VAL_W.png"),
    "M11": ("M11_Elisabethkirche Marburg (04).jpg", "VAL_W.png"),
    "M06_ORTHO_PROXY": ("M06_Elisabethkirche (Marburg) Nordseite.jpg", "VAL_N.png"),
    "M06_H205_D65_Z40": ("M06_Elisabethkirche (Marburg) Nordseite.jpg", "VAL_M06_DIAG_H205_D65_Z40.png"),
    "M02": ("M02_Elisabethkirche Marburg von SO.jpg", "VAL_SE.png"),
    "M05": ("M05_Elisabethkirche (Marburg) Südseite.jpg", "VAL_S.png"),
    "M18": ("M18_Marburg Elisabethkirche Südchor Dach von SO (1).jpg", "VAL_M18.png"),
    "M21_H325_Z22": ("M21_Marburg Elisabethkirche Südchor Dach von SO (2).jpg", "VAL_M21_DIAG_H325_Z22.png"),
    "M21_H330_Z22": ("M21_Marburg Elisabethkirche Südchor Dach von SO (2).jpg", "VAL_M21_DIAG_H330_Z22.png"),
    "M21_H335_Z22": ("M21_Marburg Elisabethkirche Südchor Dach von SO (2).jpg", "VAL_M21_DIAG_H335_Z22.png"),
    "M21_H330_Z17": ("M21_Marburg Elisabethkirche Südchor Dach von SO (2).jpg", "VAL_M21_DIAG_H330_Z17.png"),
    "M21_H330_Z27": ("M21_Marburg Elisabethkirche Südchor Dach von SO (2).jpg", "VAL_M21_DIAG_H330_Z27.png"),
    "M21_H330_Z32": ("M21_Marburg Elisabethkirche Südchor Dach von SO (2).jpg", "VAL_M21_DIAG_H330_Z32.png"),
    "M22_H15_ZCAM100": ("M22_Marburg asv2022-02 img14 Elisabethkirche.jpg", "VAL_M22_DIAG_H15_ZCAM100.png"),
    "M22_H20_ZCAM100": ("M22_Marburg asv2022-02 img14 Elisabethkirche.jpg", "VAL_M22_DIAG_H20_ZCAM100.png"),
    "M22_H25_ZCAM100": ("M22_Marburg asv2022-02 img14 Elisabethkirche.jpg", "VAL_M22_DIAG_H25_ZCAM100.png"),
    "M23_D45_ZT22": ("M23_Marburg Elisabethkirche Deutsches Haus Firmaneiplatz von SO.jpg", "VAL_M23_DIAG_D45_ZT22.png"),
    "M23_D60_ZT15": ("M23_Marburg Elisabethkirche Deutsches Haus Firmaneiplatz von SO.jpg", "VAL_M23_DIAG_D60_ZT15.png"),
    "M23_D60_ZT22": ("M23_Marburg Elisabethkirche Deutsches Haus Firmaneiplatz von SO.jpg", "VAL_M23_DIAG_D60_ZT22.png"),
    "M23_D60_ZT29": ("M23_Marburg Elisabethkirche Deutsches Haus Firmaneiplatz von SO.jpg", "VAL_M23_DIAG_D60_ZT29.png"),
    "M23_D75_ZT22": ("M23_Marburg Elisabethkirche Deutsches Haus Firmaneiplatz von SO.jpg", "VAL_M23_DIAG_D75_ZT22.png"),
    "M23_H280_D60_ZT22": ("M23_Marburg Elisabethkirche Deutsches Haus Firmaneiplatz von SO.jpg", "VAL_M23_DIAG_H280_D60_ZT22.png"),
    "M23_H285_D60_ZT22": ("M23_Marburg Elisabethkirche Deutsches Haus Firmaneiplatz von SO.jpg", "VAL_M23_DIAG_H285_D60_ZT22.png"),
    "M23_H290_D60_ZT22": ("M23_Marburg Elisabethkirche Deutsches Haus Firmaneiplatz von SO.jpg", "VAL_M23_DIAG_H290_D60_ZT22.png"),
    "M23_H295_D60_ZT22": ("M23_Marburg Elisabethkirche Deutsches Haus Firmaneiplatz von SO.jpg", "VAL_M23_DIAG_H295_D60_ZT22.png"),
    "M23_H300_D60_ZT22": ("M23_Marburg Elisabethkirche Deutsches Haus Firmaneiplatz von SO.jpg", "VAL_M23_DIAG_H300_D60_ZT22.png"),
    "M23_H305_D60_ZT22": ("M23_Marburg Elisabethkirche Deutsches Haus Firmaneiplatz von SO.jpg", "VAL_M23_DIAG_H305_D60_ZT22.png"),
    "M23_H310_D60_ZT22": ("M23_Marburg Elisabethkirche Deutsches Haus Firmaneiplatz von SO.jpg", "VAL_M23_DIAG_H310_D60_ZT22.png"),
    "M23_H315_D60_ZT22": ("M23_Marburg Elisabethkirche Deutsches Haus Firmaneiplatz von SO.jpg", "VAL_M23_DIAG_H315_D60_ZT22.png"),
    "M23_H298_D60_ZT22": ("M23_Marburg Elisabethkirche Deutsches Haus Firmaneiplatz von SO.jpg", "VAL_M23_DIAG_H298_D60_ZT22.png"),
    "M23_H302_D60_ZT22": ("M23_Marburg Elisabethkirche Deutsches Haus Firmaneiplatz von SO.jpg", "VAL_M23_DIAG_H302_D60_ZT22.png"),
    "M23_H304_D60_ZT22": ("M23_Marburg Elisabethkirche Deutsches Haus Firmaneiplatz von SO.jpg", "VAL_M23_DIAG_H304_D60_ZT22.png"),
    "M23_H306_D60_ZT22": ("M23_Marburg Elisabethkirche Deutsches Haus Firmaneiplatz von SO.jpg", "VAL_M23_DIAG_H306_D60_ZT22.png"),
    "M23_H300_D50_ZT15": ("M23_Marburg Elisabethkirche Deutsches Haus Firmaneiplatz von SO.jpg", "VAL_M23_DIAG_H300_D50_ZT15.png"),
    "M23_H300_D50_ZT22": ("M23_Marburg Elisabethkirche Deutsches Haus Firmaneiplatz von SO.jpg", "VAL_M23_DIAG_H300_D50_ZT22.png"),
    "M23_H300_D50_ZT29": ("M23_Marburg Elisabethkirche Deutsches Haus Firmaneiplatz von SO.jpg", "VAL_M23_DIAG_H300_D50_ZT29.png"),
    "M23_H300_D60_ZT15": ("M23_Marburg Elisabethkirche Deutsches Haus Firmaneiplatz von SO.jpg", "VAL_M23_DIAG_H300_D60_ZT15.png"),
    "M23_H300_D60_ZT29": ("M23_Marburg Elisabethkirche Deutsches Haus Firmaneiplatz von SO.jpg", "VAL_M23_DIAG_H300_D60_ZT29.png"),
    "M23_H300_D70_ZT15": ("M23_Marburg Elisabethkirche Deutsches Haus Firmaneiplatz von SO.jpg", "VAL_M23_DIAG_H300_D70_ZT15.png"),
    "M23_H300_D70_ZT22": ("M23_Marburg Elisabethkirche Deutsches Haus Firmaneiplatz von SO.jpg", "VAL_M23_DIAG_H300_D70_ZT22.png"),
    "M23_H300_D70_ZT29": ("M23_Marburg Elisabethkirche Deutsches Haus Firmaneiplatz von SO.jpg", "VAL_M23_DIAG_H300_D70_ZT29.png"),
    "M25_PAGEGPS_CENTER": ("M25_Marburg asv2022-02 img25 Elisabethkirche.jpg", "VAL_M25_PAGEGPS_H40.3_ZCAM2_ZT30.png"),
    "M25_EXIFGPS_CENTER": ("M25_Marburg asv2022-02 img25 Elisabethkirche.jpg", "VAL_M25_EXIFGPS_H43.1_ZCAM2_ZT30.png"),
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

        def fit_mask(image):
            scale = min(width / image.width, height / image.height)
            size = (round(image.width * scale), round(image.height * scale))
            resized = image.resize(size, Image.Resampling.LANCZOS)
            canvas = Image.new("L", (width, height), 0)
            canvas.paste(resized, ((width - size[0]) // 2, (height - size[1]) // 2))
            return canvas

        overlay = Image.blend(fit(source), fit(render), 0.5)
        overlay.thumbnail((1600, 1600), Image.Resampling.LANCZOS)
        output = RENDER_DIR / f"OVERLAY_{evidence_id}.png"
        overlay.save(output)
        # Outline the rendered envelope over the source, reducing facade-detail
        # noise while keeping the entire model contour visible.
        background = Image.new("RGB", render.size, (164, 167, 171))
        delta = ImageChops.difference(render, background)
        channels = delta.split()
        strongest = ImageChops.lighter(ImageChops.lighter(channels[0], channels[1]), channels[2])
        mask = strongest.point(lambda value: 255 if value > 14 else 0)
        dilated = mask.filter(ImageFilter.MaxFilter(5))
        eroded = mask.filter(ImageFilter.MinFilter(5))
        outline = ImageChops.subtract(dilated, eroded)
        source_canvas = fit(source)
        alpha = fit_mask(outline)
        cyan = Image.new("RGB", (width, height), (0, 230, 255))
        source_canvas.paste(cyan, (0, 0), alpha)
        source_canvas.thumbnail((1600, 1600), Image.Resampling.LANCZOS)
        source_canvas.save(RENDER_DIR / f"SILHOUETTE_{evidence_id}.png")
        print(f"created {output.relative_to(ROOT)}; source={source.size}, render={render.size}")


if __name__ == "__main__":
    main()
