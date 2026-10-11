.class public Lsun/font/CompositeGlyphMapper;
.super Lsun/font/CharToGlyphMapper;
.source "SourceFile"


# static fields
.field public static final BLOCKSZ:I = 0x100

.field public static final GLYPHMASK:I = 0xffffff

.field public static final MAXUNICODE:I = 0xd800

.field public static final NBLOCKS:I = 0xd8

.field public static final SLOTMASK:I = -0x1000000


# instance fields
.field font:Lsun/font/CompositeFont;

.field glyphMaps:[[I

.field private hasExcludes:Z

.field slotMappers:[Lsun/font/CharToGlyphMapper;


# direct methods
.method public constructor <init>(Lsun/font/CompositeFont;)V
    .locals 1

    invoke-direct {p0}, Lsun/font/CharToGlyphMapper;-><init>()V

    iput-object p1, p0, Lsun/font/CompositeGlyphMapper;->font:Lsun/font/CompositeFont;

    invoke-direct {p0}, Lsun/font/CompositeGlyphMapper;->initMapper()V

    iget-object v0, p1, Lsun/font/CompositeFont;->exclusionRanges:[I

    if-eqz v0, :cond_0

    iget-object p1, p1, Lsun/font/CompositeFont;->maxIndices:[I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lsun/font/CompositeGlyphMapper;->hasExcludes:Z

    return-void
.end method

.method private convertToGlyph(I)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lsun/font/CompositeGlyphMapper;->font:Lsun/font/CompositeFont;

    iget v2, v1, Lsun/font/CompositeFont;->numSlots:I

    if-ge v0, v2, :cond_2

    iget-boolean v2, p0, Lsun/font/CompositeGlyphMapper;->hasExcludes:Z

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0, p1}, Lsun/font/CompositeFont;->isExcludedChar(II)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    invoke-direct {p0, v0}, Lsun/font/CompositeGlyphMapper;->getSlotMapper(I)Lsun/font/CharToGlyphMapper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lsun/font/CharToGlyphMapper;->charToGlyph(I)I

    move-result v2

    invoke-virtual {v1}, Lsun/font/CharToGlyphMapper;->getMissingGlyphCode()I

    move-result v1

    if-eq v2, v1, :cond_1

    invoke-virtual {p0, v0, v2}, Lsun/font/CompositeGlyphMapper;->compositeGlyphCode(II)I

    move-result v0

    invoke-direct {p0, p1, v0}, Lsun/font/CompositeGlyphMapper;->setCachedGlyphCode(II)V

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget p0, p0, Lsun/font/CharToGlyphMapper;->missingGlyph:I

    return p0
.end method

.method private getCachedGlyphCode(I)I
    .locals 2

    const v0, 0xd800

    const/4 v1, -0x1

    if-lt p1, v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lsun/font/CompositeGlyphMapper;->glyphMaps:[[I

    shr-int/lit8 v0, p1, 0x8

    aget-object p0, p0, v0

    if-nez p0, :cond_1

    return v1

    :cond_1
    and-int/lit16 p1, p1, 0xff

    aget p0, p0, p1

    return p0
.end method

.method private getSlotMapper(I)Lsun/font/CharToGlyphMapper;
    .locals 1

    iget-object v0, p0, Lsun/font/CompositeGlyphMapper;->slotMappers:[Lsun/font/CharToGlyphMapper;

    aget-object v0, v0, p1

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/font/CompositeGlyphMapper;->font:Lsun/font/CompositeFont;

    invoke-virtual {v0, p1}, Lsun/font/CompositeFont;->getSlotFont(I)Lsun/font/PhysicalFont;

    move-result-object v0

    invoke-virtual {v0}, Lsun/font/Font2D;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object v0

    iget-object p0, p0, Lsun/font/CompositeGlyphMapper;->slotMappers:[Lsun/font/CharToGlyphMapper;

    aput-object v0, p0, p1

    :cond_0
    return-object v0
.end method

.method private initMapper()V
    .locals 2

    iget v0, p0, Lsun/font/CharToGlyphMapper;->missingGlyph:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lsun/font/CompositeGlyphMapper;->glyphMaps:[[I

    if-nez v0, :cond_0

    const/16 v0, 0xd8

    new-array v0, v0, [[I

    iput-object v0, p0, Lsun/font/CompositeGlyphMapper;->glyphMaps:[[I

    :cond_0
    iget-object v0, p0, Lsun/font/CompositeGlyphMapper;->font:Lsun/font/CompositeFont;

    iget v1, v0, Lsun/font/CompositeFont;->numSlots:I

    new-array v1, v1, [Lsun/font/CharToGlyphMapper;

    iput-object v1, p0, Lsun/font/CompositeGlyphMapper;->slotMappers:[Lsun/font/CharToGlyphMapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsun/font/CompositeFont;->getSlotFont(I)Lsun/font/PhysicalFont;

    move-result-object v0

    invoke-virtual {v0}, Lsun/font/Font2D;->getMissingGlyphCode()I

    move-result v0

    iput v0, p0, Lsun/font/CharToGlyphMapper;->missingGlyph:I

    invoke-virtual {p0, v1, v0}, Lsun/font/CompositeGlyphMapper;->compositeGlyphCode(II)I

    move-result v0

    iput v0, p0, Lsun/font/CharToGlyphMapper;->missingGlyph:I

    :cond_1
    return-void
.end method

.method private setCachedGlyphCode(II)V
    .locals 5

    const v0, 0xd800

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    shr-int/lit8 v0, p1, 0x8

    iget-object v1, p0, Lsun/font/CompositeGlyphMapper;->glyphMaps:[[I

    aget-object v2, v1, v0

    if-nez v2, :cond_1

    const/16 v2, 0x100

    new-array v3, v2, [I

    aput-object v3, v1, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    iget-object v3, p0, Lsun/font/CompositeGlyphMapper;->glyphMaps:[[I

    aget-object v3, v3, v0

    const/4 v4, -0x1

    aput v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lsun/font/CompositeGlyphMapper;->glyphMaps:[[I

    aget-object p0, p0, v0

    and-int/lit16 p1, p1, 0xff

    aput p2, p0, p1

    return-void
.end method


# virtual methods
.method public charToGlyph(C)I
    .locals 2

    .line 8
    invoke-direct {p0, p1}, Lsun/font/CompositeGlyphMapper;->getCachedGlyphCode(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 9
    invoke-direct {p0, p1}, Lsun/font/CompositeGlyphMapper;->convertToGlyph(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public charToGlyph(I)I
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lsun/font/CompositeGlyphMapper;->getCachedGlyphCode(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lsun/font/CompositeGlyphMapper;->convertToGlyph(I)I

    move-result v0

    :cond_0
    return v0
.end method

.method public charToGlyph(II)I
    .locals 2

    if-ltz p2, :cond_0

    .line 3
    invoke-direct {p0, p2}, Lsun/font/CompositeGlyphMapper;->getSlotMapper(I)Lsun/font/CharToGlyphMapper;

    move-result-object v0

    .line 4
    invoke-virtual {v0, p1}, Lsun/font/CharToGlyphMapper;->charToGlyph(I)I

    move-result v1

    .line 5
    invoke-virtual {v0}, Lsun/font/CharToGlyphMapper;->getMissingGlyphCode()I

    move-result v0

    if-eq v1, v0, :cond_0

    .line 6
    invoke-virtual {p0, p2, v1}, Lsun/font/CompositeGlyphMapper;->compositeGlyphCode(II)I

    move-result p0

    return p0

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lsun/font/CompositeGlyphMapper;->charToGlyph(I)I

    move-result p0

    return p0
.end method

.method public charsToGlyphs(I[C[I)V
    .locals 8

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_3

    .line 1
    aget-char v1, p2, v0

    const/4 v2, -0x1

    const v3, 0xd800

    if-lt v1, v3, :cond_1

    const v4, 0xdbff

    if-gt v1, v4, :cond_1

    add-int/lit8 v4, p1, -0x1

    if-ge v0, v4, :cond_1

    add-int/lit8 v4, v0, 0x1

    .line 2
    aget-char v5, p2, v4

    const v6, 0xdc00

    if-lt v5, v6, :cond_1

    const v7, 0xdfff

    if-gt v5, v7, :cond_1

    sub-int/2addr v1, v3

    mul-int/lit16 v1, v1, 0x400

    add-int/2addr v1, v5

    sub-int/2addr v1, v6

    const/high16 v3, 0x10000

    add-int/2addr v1, v3

    .line 3
    invoke-direct {p0, v1}, Lsun/font/CompositeGlyphMapper;->getCachedGlyphCode(I)I

    move-result v3

    aput v3, p3, v0

    if-ne v3, v2, :cond_0

    .line 4
    invoke-direct {p0, v1}, Lsun/font/CompositeGlyphMapper;->convertToGlyph(I)I

    move-result v1

    aput v1, p3, v0

    :cond_0
    const v0, 0xffff

    .line 5
    aput v0, p3, v4

    move v0, v4

    goto :goto_1

    .line 6
    :cond_1
    invoke-direct {p0, v1}, Lsun/font/CompositeGlyphMapper;->getCachedGlyphCode(I)I

    move-result v3

    aput v3, p3, v0

    if-ne v3, v2, :cond_2

    .line 7
    invoke-direct {p0, v1}, Lsun/font/CompositeGlyphMapper;->convertToGlyph(I)I

    move-result v1

    aput v1, p3, v0

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public charsToGlyphs(I[I[I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    .line 8
    aget v1, p2, v0

    .line 9
    invoke-direct {p0, v1}, Lsun/font/CompositeGlyphMapper;->getCachedGlyphCode(I)I

    move-result v2

    aput v2, p3, v0

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 10
    invoke-direct {p0, v1}, Lsun/font/CompositeGlyphMapper;->convertToGlyph(I)I

    move-result v1

    aput v1, p3, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public charsToGlyphsNS(I[C[I)Z
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_6

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
    invoke-direct {p0, v2}, Lsun/font/CompositeGlyphMapper;->getCachedGlyphCode(I)I

    move-result v4

    aput v4, p3, v1

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    invoke-direct {p0, v2}, Lsun/font/CompositeGlyphMapper;->convertToGlyph(I)I

    move-result v4

    aput v4, p3, v1

    :cond_1
    const/16 v4, 0x300

    const/4 v5, 0x1

    if-ge v2, v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v2}, Lsun/font/FontUtilities;->isComplexCharCode(I)Z

    move-result v4

    if-nez v4, :cond_5

    invoke-static {v2}, Lsun/font/CharToGlyphMapper;->isVariationSelector(I)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    if-lt v2, v3, :cond_4

    add-int/lit8 v1, v1, 0x1

    :cond_4
    :goto_1
    add-int/2addr v1, v5

    goto :goto_0

    :cond_5
    :goto_2
    return v5

    :cond_6
    return v0
.end method

.method public compositeGlyphCode(II)I
    .locals 0

    shl-int/lit8 p0, p1, 0x18

    const p1, 0xffffff

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    return p0
.end method

.method public getNumGlyphs()I
    .locals 2

    iget-object v0, p0, Lsun/font/CompositeGlyphMapper;->slotMappers:[Lsun/font/CharToGlyphMapper;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/font/CompositeGlyphMapper;->font:Lsun/font/CompositeFont;

    invoke-virtual {v0, v1}, Lsun/font/CompositeFont;->getSlotFont(I)Lsun/font/PhysicalFont;

    move-result-object v0

    invoke-virtual {v0}, Lsun/font/Font2D;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object v0

    iget-object p0, p0, Lsun/font/CompositeGlyphMapper;->slotMappers:[Lsun/font/CharToGlyphMapper;

    aput-object v0, p0, v1

    :cond_0
    invoke-virtual {v0}, Lsun/font/CharToGlyphMapper;->getNumGlyphs()I

    move-result p0

    add-int/2addr v1, p0

    return v1
.end method
