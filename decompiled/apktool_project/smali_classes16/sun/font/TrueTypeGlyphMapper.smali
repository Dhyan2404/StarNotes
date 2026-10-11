.class public Lsun/font/TrueTypeGlyphMapper;
.super Lsun/font/CharToGlyphMapper;
.source "SourceFile"


# static fields
.field static final JA_YEN:C = '\u00a5'

.field static final REVERSE_SOLIDUS:C = '\\'

.field static final isJAlocale:Z


# instance fields
.field cmap:Lsun/font/CMap;

.field font:Lsun/font/TrueTypeFont;

.field numGlyphs:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    sget-object v0, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lsun/font/TrueTypeGlyphMapper;->isJAlocale:Z

    return-void
.end method

.method public constructor <init>(Lsun/font/TrueTypeFont;)V
    .locals 2

    invoke-direct {p0}, Lsun/font/CharToGlyphMapper;-><init>()V

    iput-object p1, p0, Lsun/font/TrueTypeGlyphMapper;->font:Lsun/font/TrueTypeFont;

    :try_start_0
    invoke-static {p1}, Lsun/font/CMap;->initialize(Lsun/font/TrueTypeFont;)Lsun/font/CMap;

    move-result-object v0

    iput-object v0, p0, Lsun/font/TrueTypeGlyphMapper;->cmap:Lsun/font/CMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, 0x0

    iput-object v0, p0, Lsun/font/TrueTypeGlyphMapper;->cmap:Lsun/font/CMap;

    :goto_0
    iget-object v0, p0, Lsun/font/TrueTypeGlyphMapper;->cmap:Lsun/font/CMap;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lsun/font/TrueTypeGlyphMapper;->handleBadCMAP()V

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lsun/font/CharToGlyphMapper;->missingGlyph:I

    const v0, 0x6d617870

    invoke-virtual {p1, v0}, Lsun/font/TrueTypeFont;->getTableBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_1

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->getChar(I)C

    move-result p1

    iput p1, p0, Lsun/font/TrueTypeGlyphMapper;->numGlyphs:I

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lsun/font/TrueTypeGlyphMapper;->handleBadCMAP()V

    :goto_1
    return-void
.end method

.method private getGlyphFromCMAP(I)C
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lsun/font/TrueTypeGlyphMapper;->cmap:Lsun/font/CMap;

    invoke-virtual {v0, p1}, Lsun/font/CMap;->getGlyph(I)C

    move-result v0

    .line 2
    iget v1, p0, Lsun/font/TrueTypeGlyphMapper;->numGlyphs:I

    if-lt v0, v1, :cond_2

    const v1, 0xfffe

    if-lt v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsun/font/TrueTypeGlyphMapper;->font:Lsun/font/TrueTypeFont;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " out of range glyph id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for char "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lsun/font/FontUtilities;->logWarning(Ljava/lang/String;)V

    .line 8
    :cond_1
    iget p0, p0, Lsun/font/CharToGlyphMapper;->missingGlyph:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char p0, p0

    return p0

    :cond_2
    :goto_0
    return v0

    .line 9
    :catch_0
    invoke-direct {p0}, Lsun/font/TrueTypeGlyphMapper;->handleBadCMAP()V

    .line 10
    iget p0, p0, Lsun/font/CharToGlyphMapper;->missingGlyph:I

    int-to-char p0, p0

    return p0
.end method

.method private getGlyphFromCMAP(II)C
    .locals 3

    if-nez p2, :cond_0

    .line 11
    invoke-direct {p0, p1}, Lsun/font/TrueTypeGlyphMapper;->getGlyphFromCMAP(I)C

    move-result p0

    return p0

    .line 12
    :cond_0
    :try_start_0
    iget-object v0, p0, Lsun/font/TrueTypeGlyphMapper;->cmap:Lsun/font/CMap;

    invoke-virtual {v0, p1, p2}, Lsun/font/CMap;->getVariationGlyph(II)C

    move-result v0

    .line 13
    iget v1, p0, Lsun/font/TrueTypeGlyphMapper;->numGlyphs:I

    if-lt v0, v1, :cond_3

    const v1, 0xfffe

    if-lt v0, v1, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lsun/font/TrueTypeGlyphMapper;->font:Lsun/font/TrueTypeFont;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " out of range glyph id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " for char "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " for vs "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 19
    invoke-static {p1}, Lsun/font/FontUtilities;->logWarning(Ljava/lang/String;)V

    .line 20
    :cond_2
    iget p0, p0, Lsun/font/CharToGlyphMapper;->missingGlyph:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-char p0, p0

    return p0

    :cond_3
    :goto_0
    return v0

    .line 21
    :catch_0
    invoke-direct {p0}, Lsun/font/TrueTypeGlyphMapper;->handleBadCMAP()V

    .line 22
    iget p0, p0, Lsun/font/CharToGlyphMapper;->missingGlyph:I

    int-to-char p0, p0

    return p0
.end method

.method private handleBadCMAP()V
    .locals 2

    invoke-static {}, Lsun/font/FontUtilities;->isLogging()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null Cmap for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/font/TrueTypeGlyphMapper;->font:Lsun/font/TrueTypeFont;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "substituting for this font"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lsun/font/FontUtilities;->logSevere(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Lsun/font/SunFontManager;->getInstance()Lsun/font/SunFontManager;

    move-result-object v0

    iget-object v1, p0, Lsun/font/TrueTypeGlyphMapper;->font:Lsun/font/TrueTypeFont;

    invoke-virtual {v0, v1}, Lsun/font/SunFontManager;->deRegisterBadFont(Lsun/font/Font2D;)V

    sget-object v0, Lsun/font/CMap;->theNullCmap:Lsun/font/CMap$NullCMapClass;

    iput-object v0, p0, Lsun/font/TrueTypeGlyphMapper;->cmap:Lsun/font/CMap;

    return-void
.end method

.method private remapJAChar(C)C
    .locals 0

    const/16 p0, 0x5c

    if-ne p1, p0, :cond_0

    const/16 p1, 0xa5

    :cond_0
    return p1
.end method

.method private remapJAIntChar(I)I
    .locals 0

    const/16 p0, 0x5c

    if-ne p1, p0, :cond_0

    const/16 p1, 0xa5

    :cond_0
    return p1
.end method


# virtual methods
.method public charToGlyph(C)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lsun/font/TrueTypeGlyphMapper;->getGlyphFromCMAP(I)C

    move-result p0

    return p0
.end method

.method public charToGlyph(I)I
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lsun/font/TrueTypeGlyphMapper;->getGlyphFromCMAP(I)C

    move-result p0

    return p0
.end method

.method public charToVariationGlyph(II)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lsun/font/TrueTypeGlyphMapper;->getGlyphFromCMAP(II)C

    move-result p0

    return p0
.end method

.method public charsToGlyphs(I[C[I)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 2
    aget-char v1, p2, v0

    const v2, 0xd800

    if-lt v1, v2, :cond_0

    const v3, 0xdbff

    if-gt v1, v3, :cond_0

    add-int/lit8 v3, p1, -0x1

    if-ge v0, v3, :cond_0

    add-int/lit8 v3, v0, 0x1

    .line 3
    aget-char v4, p2, v3

    const v5, 0xdc00

    if-lt v4, v5, :cond_0

    const v6, 0xdfff

    if-gt v4, v6, :cond_0

    sub-int/2addr v1, v2

    mul-int/lit16 v1, v1, 0x400

    add-int/2addr v1, v4

    sub-int/2addr v1, v5

    const/high16 v2, 0x10000

    add-int/2addr v1, v2

    .line 4
    invoke-direct {p0, v1}, Lsun/font/TrueTypeGlyphMapper;->getGlyphFromCMAP(I)C

    move-result v1

    aput v1, p3, v0

    const v0, 0xffff

    .line 5
    aput v0, p3, v3

    move v0, v3

    goto :goto_1

    .line 6
    :cond_0
    invoke-direct {p0, v1}, Lsun/font/TrueTypeGlyphMapper;->getGlyphFromCMAP(I)C

    move-result v1

    aput v1, p3, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public charsToGlyphs(I[I[I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 1
    aget v1, p2, v0

    invoke-direct {p0, v1}, Lsun/font/TrueTypeGlyphMapper;->getGlyphFromCMAP(I)C

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
    if-ge v1, p1, :cond_5

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
    invoke-direct {p0, v2}, Lsun/font/TrueTypeGlyphMapper;->getGlyphFromCMAP(I)C

    move-result v4

    aput v4, p3, v1

    const/16 v4, 0x300

    const/4 v5, 0x1

    if-ge v2, v4, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Lsun/font/FontUtilities;->isComplexCharCode(I)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-static {v2}, Lsun/font/CharToGlyphMapper;->isVariationSelector(I)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    if-lt v2, v3, :cond_3

    add-int/lit8 v1, v1, 0x1

    :cond_3
    :goto_1
    add-int/2addr v1, v5

    goto :goto_0

    :cond_4
    :goto_2
    return v5

    :cond_5
    return v0
.end method

.method public getNumGlyphs()I
    .locals 0

    iget p0, p0, Lsun/font/TrueTypeGlyphMapper;->numGlyphs:I

    return p0
.end method

.method public hasSupplementaryChars()Z
    .locals 1

    iget-object p0, p0, Lsun/font/TrueTypeGlyphMapper;->cmap:Lsun/font/CMap;

    instance-of v0, p0, Lsun/font/CMap$CMapFormat8;

    if-nez v0, :cond_1

    instance-of v0, p0, Lsun/font/CMap$CMapFormat10;

    if-nez v0, :cond_1

    instance-of p0, p0, Lsun/font/CMap$CMapFormat12;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
