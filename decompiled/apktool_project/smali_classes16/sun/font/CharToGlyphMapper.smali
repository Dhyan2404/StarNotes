.class public abstract Lsun/font/CharToGlyphMapper;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HI_SURROGATE_END:I = 0xdbff

.field public static final HI_SURROGATE_START:I = 0xd800

.field public static final INVISIBLE_GLYPHS:I = 0xfffe

.field public static final INVISIBLE_GLYPH_ID:I = 0xffff

.field public static final LO_SURROGATE_END:I = 0xdfff

.field public static final LO_SURROGATE_START:I = 0xdc00

.field public static final UNINITIALIZED_GLYPH:I = -0x1

.field public static final VSS_END:I = 0xe01ff

.field public static final VSS_START:I = 0xe0100

.field public static final VS_END:I = 0xfe0f

.field public static final VS_START:I = 0xfe00


# instance fields
.field protected missingGlyph:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lsun/font/CharToGlyphMapper;->missingGlyph:I

    return-void
.end method

.method public static isVariationSelector(I)Z
    .locals 1

    const v0, 0xe0100

    if-lt p0, v0, :cond_0

    const v0, 0xe01ff

    if-le p0, v0, :cond_1

    :cond_0
    const v0, 0xfe00

    if-lt p0, v0, :cond_2

    const v0, 0xfe0f

    if-gt p0, v0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public canDisplay(C)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lsun/font/CharToGlyphMapper;->charToGlyph(C)I

    move-result p1

    .line 2
    iget p0, p0, Lsun/font/CharToGlyphMapper;->missingGlyph:I

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canDisplay(I)Z
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Lsun/font/CharToGlyphMapper;->charToGlyph(I)I

    move-result p1

    .line 4
    iget p0, p0, Lsun/font/CharToGlyphMapper;->missingGlyph:I

    if-eq p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public charToGlyph(C)I
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [C

    new-array v2, v0, [I

    const/4 v3, 0x0

    aput-char p1, v1, v3

    .line 1
    invoke-virtual {p0, v0, v1, v2}, Lsun/font/CharToGlyphMapper;->charsToGlyphs(I[C[I)V

    aget p0, v2, v3

    return p0
.end method

.method public charToGlyph(I)I
    .locals 2

    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 2
    filled-new-array {p1}, [I

    move-result-object p1

    .line 3
    invoke-virtual {p0, v0, p1, v1}, Lsun/font/CharToGlyphMapper;->charsToGlyphs(I[I[I)V

    const/4 p0, 0x0

    aget p0, v1, p0

    return p0
.end method

.method public charToVariationGlyph(II)I
    .locals 0

    invoke-virtual {p0, p1}, Lsun/font/CharToGlyphMapper;->charToGlyph(I)I

    move-result p0

    return p0
.end method

.method public abstract charsToGlyphs(I[C[I)V
.end method

.method public abstract charsToGlyphs(I[I[I)V
.end method

.method public abstract charsToGlyphsNS(I[C[I)Z
.end method

.method public getMissingGlyphCode()I
    .locals 0

    iget p0, p0, Lsun/font/CharToGlyphMapper;->missingGlyph:I

    return p0
.end method

.method public abstract getNumGlyphs()I
.end method
