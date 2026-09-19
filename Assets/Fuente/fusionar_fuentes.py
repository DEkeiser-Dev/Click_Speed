from pathlib import Path

from fontTools.ttLib import TTFont
from fontTools.pens.ttGlyphPen import TTGlyphPen
from fontTools.pens.transformPen import TransformPen


# ============================================================
# CONFIGURACIÓN
# ============================================================

CARPETA = Path("/home/porfiriodekeiser/click-speed/Assets/Fuente")

FUENTE_BASE = CARPETA / "Super Starfish.ttf"
FUENTE_EXTRA = CARPETA / "MPLUSRounded1c-Black.ttf"

CARPETA_SALIDA = CARPETA / "Combinada"
FUENTE_SALIDA = CARPETA_SALIDA / "Super Starfish Combined.ttf"


# ============================================================
# RANGOS UNICODE
#
# SOLO se toman de MPLUS:
#   - Ruso / cirílico
#   - Japonés
#   - Coreano
# ============================================================

RANGOS = [

    # -------------------------
    # RUSO / CIRÍLICO
    # -------------------------

    (0x0400, 0x052F),   # Cyrillic
    (0x2DE0, 0x2DFF),   # Cyrillic Extended-A
    (0xA640, 0xA69F),   # Cyrillic Extended-B


    # -------------------------
    # JAPONÉS
    # -------------------------

    (0x3040, 0x309F),   # Hiragana
    (0x30A0, 0x30FF),   # Katakana
    (0x31F0, 0x31FF),   # Katakana Phonetic Extensions

    # Kanji / CJK
    (0x3400, 0x4DBF),   # CJK Extension A
    (0x4E00, 0x9FFF),   # CJK Unified Ideographs
    (0xF900, 0xFAFF),   # CJK Compatibility Ideographs


    # -------------------------
    # COREANO
    # -------------------------

    (0x1100, 0x11FF),   # Hangul Jamo
    (0x3130, 0x318F),   # Hangul Compatibility Jamo
    (0xA960, 0xA97F),   # Hangul Jamo Extended-A
    (0xAC00, 0xD7AF),   # Hangul Syllables
    (0xD7B0, 0xD7FF),   # Hangul Jamo Extended-B
]


# ============================================================
# COMPROBAR SI UNICODE PERTENECE A LOS RANGOS
# ============================================================

def pertenece_a_rango(codigo):

    for inicio, fin in RANGOS:

        if inicio <= codigo <= fin:
            return True

    return False


# ============================================================
# OBTENER LOS CARACTERES DE MPLUS
# ============================================================

def obtener_cmap_seleccionado(font):

    resultado = {}

    for tabla in font["cmap"].tables:

        if not tabla.isUnicode():
            continue

        for codigo, nombre_glifo in tabla.cmap.items():

            if pertenece_a_rango(codigo):

                resultado[codigo] = nombre_glifo

    return resultado


# ============================================================
# COPIAR Y ESCALAR UN GLIFO
# ============================================================

def copiar_glifo(
    fuente_origen,
    fuente_destino,
    nombre_origen,
    nombre_destino,
    escala
):

    glyf_origen = fuente_origen["glyf"]
    glyf_destino = fuente_destino["glyf"]

    glifo_origen = glyf_origen[namebre_origen] if False else glyf_origen[nombre_origen]

    # Crear nuevo glifo
    pen = TTGlyphPen(glyf_destino)

    # Escalar las coordenadas
    transform_pen = TransformPen(
        pen,
        (
            escala,
            0,
            0,
            escala,
            0,
            0
        )
    )

    # Dibujar el glifo original sobre el nuevo
    glifo_origen.draw(
        transform_pen,
        glyf_origen
    )

    # Guardarlo
    glyf_destino.glyphs[nombre_destino] = pen.glyph()


# ============================================================
# FUSIONAR
# ============================================================

def fusionar():

    print("=" * 60)
    print("FUSIONANDO FUENTES")
    print("=" * 60)

    # --------------------------------------------------------
    # Crear carpeta de salida
    # --------------------------------------------------------

    CARPETA_SALIDA.mkdir(
        parents=True,
        exist_ok=True
    )

    # --------------------------------------------------------
    # Comprobar archivos
    # --------------------------------------------------------

    if not FUENTE_BASE.exists():

        raise FileNotFoundError(
            f"No existe:\n{FUENTE_BASE}"
        )

    if not FUENTE_EXTRA.exists():

        raise FileNotFoundError(
            f"No existe:\n{FUENTE_EXTRA}"
        )

    # --------------------------------------------------------
    # Cargar fuentes
    # --------------------------------------------------------

    print("Cargando Super Starfish...")

    base = TTFont(FUENTE_BASE)

    print("Cargando MPLUSRounded1c-Black...")

    extra = TTFont(FUENTE_EXTRA)

    # --------------------------------------------------------
    # Units Per Em
    # --------------------------------------------------------

    unidades_base = base["head"].unitsPerEm
    unidades_extra = extra["head"].unitsPerEm

    print(
        f"Super Starfish unitsPerEm: {unidades_base}"
    )

    print(
        f"MPLUS unitsPerEm:         {unidades_extra}"
    )

    escala = unidades_base / unidades_extra

    print(
        f"Escala aplicada:           {escala:.4f}"
    )

    # --------------------------------------------------------
    # Obtener caracteres de MPLUS
    # --------------------------------------------------------

    cmap_extra = obtener_cmap_seleccionado(extra)

    print(
        f"Caracteres seleccionados: {len(cmap_extra)}"
    )

    # --------------------------------------------------------
    # Cmap existente en Super Starfish
    # --------------------------------------------------------

    cmap_base = {}

    for tabla in base["cmap"].tables:

        if tabla.isUnicode():

            cmap_base.update(
                tabla.cmap
            )

    # --------------------------------------------------------
    # Referencias a tablas
    # --------------------------------------------------------

    glyf_base = base["glyf"]
    hmtx_base = base["hmtx"]
    hmtx_extra = extra["hmtx"]

    # --------------------------------------------------------
    # Glyph order
    # --------------------------------------------------------

    glyph_order = list(
        base.getGlyphOrder()
    )

    # Asegurarnos de que todos los glifos actuales
    # están en glyphOrder.

    for nombre in glyf_base.glyphs:

        if nombre not in glyph_order:

            glyph_order.append(nombre)

    # --------------------------------------------------------
    # Contadores
    # --------------------------------------------------------

    agregados = 0
    existentes = 0

    # ========================================================
    # COPIAR CARACTERES
    # ========================================================

    for codigo, nombre_origen in cmap_extra.items():

        # ----------------------------------------------------
        # Si Super Starfish ya tiene ese carácter,
        # NO lo reemplazamos.
        # ----------------------------------------------------

        if codigo in cmap_base:

            existentes += 1

            continue

        # ----------------------------------------------------
        # Nombre del nuevo glifo
        # ----------------------------------------------------

        nombre_nuevo = f"MPLUS_{codigo:04X}"

        contador = 1

        nombre_original = nombre_nuevo

        while nombre_nuevo in glyf_base.glyphs:

            nombre_nuevo = (
                f"{nombre_original}_{contador}"
            )

            contador += 1

        # ----------------------------------------------------
        # Copiar glifo
        # ----------------------------------------------------

        copiar_glifo(
            extra,
            base,
            nombre_origen,
            nombre_nuevo,
            escala
        )

        # ----------------------------------------------------
        # Obtener métricas de MPLUS
        # ----------------------------------------------------

        if nombre_origen in hmtx_extra.metrics:

            advance_width, left_side_bearing = (
                hmtx_extra.metrics[nombre_origen]
            )

        else:

            advance_width = unidades_extra
            left_side_bearing = 0

        # ----------------------------------------------------
        # Escalar métricas
        # ----------------------------------------------------

        advance_width = round(
            advance_width * escala
        )

        left_side_bearing = round(
            left_side_bearing * escala
        )

        # ----------------------------------------------------
        # Guardar métricas
        # ----------------------------------------------------

        hmtx_base.metrics[nombre_nuevo] = (
            advance_width,
            left_side_bearing
        )

        # ----------------------------------------------------
        # Añadir al glyph order
        # ----------------------------------------------------

        glyph_order.append(
            nombre_nuevo
        )

        # ----------------------------------------------------
        # Añadir al cmap
        # ----------------------------------------------------

        for tabla in base["cmap"].tables:

            if tabla.isUnicode():

                tabla.cmap[codigo] = (
                    nombre_nuevo
                )

        agregados += 1

    # ========================================================
    # SINCRONIZAR GLYPH ORDER
    # ========================================================

    # Comprobar que TODOS los glifos estén presentes.

    for nombre in glyf_base.glyphs:

        if nombre not in glyph_order:

            glyph_order.append(nombre)

    # Eliminar duplicados conservando el orden.

    glyph_order = list(
        dict.fromkeys(glyph_order)
    )

    # Aplicar glyph order.

    base.setGlyphOrder(
        glyph_order
    )

    # ========================================================
    # ACTUALIZAR TABLAS
    # ========================================================

    # maxp
    if "maxp" in base:

        base["maxp"].numGlyphs = len(
            glyph_order
        )

    # hhea
    if "hhea" in base:

        # numberOfHMetrics no puede ser mayor
        # que el número de glifos.

        numero_metricas = len(
            hmtx_base.metrics
        )

        base["hhea"].numberOfHMetrics = min(
            numero_metricas,
            len(glyph_order)
        )

    # ========================================================
    # INFORMACIÓN
    # ========================================================

    print()
    print(
        f"Glifos agregados:  {agregados}"
    )

    print(
        f"Ya existentes:    {existentes}"
    )

    print(
        f"Total de glifos:   {len(glyph_order)}"
    )

    print()

    # ========================================================
    # GUARDAR
    # ========================================================

    print("Guardando...")

    base.save(
        FUENTE_SALIDA
    )

    base.close()
    extra.close()

    print()
    print("=" * 60)
    print("¡FUSIÓN TERMINADA!")
    print("=" * 60)
    print()
    print("Archivo creado:")
    print(FUENTE_SALIDA)
    print()
    print("Las fuentes originales NO fueron modificadas.")
    print()


# ============================================================
# EJECUTAR
# ============================================================

if __name__ == "__main__":

    fusionar()
