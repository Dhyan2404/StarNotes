.class public final Lsun/font/Type1GlyphMapper;
.super Lsun/font/CharToGlyphMapper;
.source "SourceFile"


# instance fields
.field font:Lsun/font/Type1Font;

.field scaler:Lsun/font/FontScaler;


# direct methods
.method public constructor <init>(Lsun/font/Type1Font;)V
    .locals 0

    invoke-direct {p0}, Lsun/font/CharToGlyphMapper;-><init>()V

    iput-object p1, p0, Lsun/font/Type1GlyphMapper;->font:Lsun/font/Type1Font;

    invoke-direct {p0}, Lsun/font/Type1GlyphMapper;->initMapper()V

    return-void
.end method

.method private initMapper()V
    .locals 1

    iget-object v0, p0, Lsun/font/Type1GlyphMapper;->font:Lsun/font/Type1Font;

    invoke-virtual {v0}, Lsun/font/Type1Font;->getScaler()Lsun/font/FontScaler;

    move-result-object v0

    iput-object v0, p0, Lsun/font/Type1GlyphMapper;->scaler:Lsun/font/FontScaler;

    :try_start_0
    invoke-virtual {v0}, Lsun/font/FontScaler;->getMissingGlyphCode()I

    move-result v0

    iput v0, p0, Lsun/font/CharToGlyphMapper;->missingGlyph:I
    :try_end_0
    .catch Lsun/font/FontScalerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object v0

    iput-object v0, p0, Lsun/font/Type1GlyphMapper;->scaler:Lsun/font/FontScaler;

    :try_start_1
    invoke-virtual {v0}, Lsun/font/FontScaler;->getMissingGlyphCode()I

    move-result v0

    iput v0, p0, Lsun/font/CharToGlyphMapper;->missingGlyph:I
    :try_end_1
    .catch Lsun/font/FontScalerException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    const/4 v0, 0x0

    iput v0, p0, Lsun/font/CharToGlyphMapper;->missingGlyph:I

    :goto_0
    return-void
.end method


# virtual methods
.method public canDisplay(C)Z
    .locals 1

    :try_start_0
    iget-object v0, p0, Lsun/font/Type1GlyphMapper;->scaler:Lsun/font/FontScaler;

    invoke-virtual {v0, p1}, Lsun/font/FontScaler;->getGlyphCode(C)I

    move-result v0

    iget p0, p0, Lsun/font/CharToGlyphMapper;->missingGlyph:I
    :try_end_0
    .catch Lsun/font/FontScalerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :catch_0
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object v0

    iput-object v0, p0, Lsun/font/Type1GlyphMapper;->scaler:Lsun/font/FontScaler;

    invoke-virtual {p0, p1}, Lsun/font/Type1GlyphMapper;->canDisplay(C)Z

    move-result p0

    return p0
.end method

.method public charToGlyph(C)I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lsun/font/Type1GlyphMapper;->scaler:Lsun/font/FontScaler;

    invoke-virtual {v0, p1}, Lsun/font/FontScaler;->getGlyphCode(C)I

    move-result p0
    :try_end_0
    .catch Lsun/font/FontScalerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 2
    :catch_0
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object v0

    iput-object v0, p0, Lsun/font/Type1GlyphMapper;->scaler:Lsun/font/FontScaler;

    .line 3
    invoke-virtual {p0, p1}, Lsun/font/Type1GlyphMapper;->charToGlyph(C)I

    move-result p0

    return p0
.end method

.method public charToGlyph(I)I
    .locals 2

    if-ltz p1, :cond_1

    const v0, 0xffff

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    :try_start_0
    iget-object v0, p0, Lsun/font/Type1GlyphMapper;->scaler:Lsun/font/FontScaler;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lsun/font/FontScaler;->getGlyphCode(C)I

    move-result p0
    :try_end_0
    .catch Lsun/font/FontScalerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 5
    :catch_0
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object v0

    iput-object v0, p0, Lsun/font/Type1GlyphMapper;->scaler:Lsun/font/FontScaler;

    .line 6
    invoke-virtual {p0, p1}, Lsun/font/Type1GlyphMapper;->charToGlyph(I)I

    move-result p0

    return p0

    .line 7
    :cond_1
    :goto_0
    iget p0, p0, Lsun/font/CharToGlyphMapper;->missingGlyph:I

    return p0
.end method

.method public charsToGlyphs(I[C[I)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_2

    .line 1
    aget-char v1, p2, v0

    const/high16 v2, 0x10000

    const v3, 0xd800

    if-lt v1, v3, :cond_0

    const v4, 0xdbff

    if-gt v1, v4, :cond_0

    add-int/lit8 v4, p1, -0x1

    if-ge v0, v4, :cond_0

    add-int/lit8 v4, v0, 0x1

    .line 2
    aget-char v5, p2, v4

    const v6, 0xdc00

    if-lt v5, v6, :cond_0

    const v7, 0xdfff

    if-gt v5, v7, :cond_0

    sub-int/2addr v1, v3

    mul-int/lit16 v1, v1, 0x400

    add-int/2addr v1, v5

    sub-int/2addr v1, v6

    add-int/2addr v1, v2

    const v3, 0xffff

    .line 3
    aput v3, p3, v4

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Lsun/font/Type1GlyphMapper;->charToGlyph(I)I

    move-result v3

    aput v3, p3, v0

    if-lt v1, v2, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public charsToGlyphs(I[I[I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 5
    aget v1, p2, v0

    invoke-virtual {p0, v1}, Lsun/font/Type1GlyphMapper;->charToGlyph(I)I

    move-result v1

    aput v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public charsToGlyphsNS(I[C[I)Z
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_4

    aget-char v2, p2, v1

    const/high16 v3, 0x10000

    const v4, 0xd800

    if-lt v2, v4, :cond_0

    const v5, 0xdbff

    if-gt v2, v5, :cond_0

    add-int/lit8 v5, p1, -0x1

    if-ge v1, v5, :cond_0

    add-int/lit8 v5, v1, 0x1

    aget-char v6, p2, v5

    const v7, 0xdc00

    if-lt v6, v7, :cond_0

    const v8, 0xdfff

    if-gt v6, v8, :cond_0

    sub-int/2addr v2, v4

    mul-int/lit16 v2, v2, 0x400

    add-int/2addr v2, v6

    sub-int/2addr v2, v7

    add-int/2addr v2, v3

    const v4, 0xffff

    aput v4, p3, v5

    :cond_0
    invoke-virtual {p0, v2}, Lsun/font/Type1GlyphMapper;->charToGlyph(I)I

    move-result v4

    aput v4, p3, v1

    const/16 v4, 0x300

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lsun/font/FontUtilities;->isComplexCharCode(I)Z

    move-result v4

    if-eqz v4, :cond_2

    return v5

    :cond_2
    if-lt v2, v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    :goto_1
    add-int/2addr v1, v5

    goto :goto_0

    :cond_4
    return v0
.end method

.method public getMissingGlyphCode()I
    .locals 0

    iget p0, p0, Lsun/font/CharToGlyphMapper;->missingGlyph:I

    return p0
.end method

.method public getNumGlyphs()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lsun/font/Type1GlyphMapper;->scaler:Lsun/font/FontScaler;

    invoke-virtual {v0}, Lsun/font/FontScaler;->getNumGlyphs()I

    move-result p0
    :try_end_0
    .catch Lsun/font/FontScalerException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    invoke-static {}, Lsun/font/FontScaler;->getNullScaler()Lsun/font/FontScaler;

    move-result-object v0

    iput-object v0, p0, Lsun/font/Type1GlyphMapper;->scaler:Lsun/font/FontScaler;

    invoke-virtual {p0}, Lsun/font/Type1GlyphMapper;->getNumGlyphs()I

    move-result p0

    return p0
.end method
