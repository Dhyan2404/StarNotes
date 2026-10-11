.class public final Lsun/font/CompositeStrike;
.super Lsun/font/FontStrike;
.source "SourceFile"


# static fields
.field static final SLOTMASK:I = 0xffffff


# instance fields
.field private compFont:Lsun/font/CompositeFont;

.field numGlyphs:I

.field private strikes:[Lsun/font/PhysicalStrike;


# direct methods
.method public constructor <init>(Lsun/font/CompositeFont;Lsun/font/FontStrikeDesc;)V
    .locals 3

    invoke-direct {p0}, Lsun/font/FontStrike;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lsun/font/CompositeStrike;->numGlyphs:I

    iput-object p1, p0, Lsun/font/CompositeStrike;->compFont:Lsun/font/CompositeFont;

    iput-object p2, p0, Lsun/font/FontStrike;->desc:Lsun/font/FontStrikeDesc;

    new-instance v0, Lsun/font/FontStrikeDisposer;

    invoke-direct {v0, p1, p2}, Lsun/font/FontStrikeDisposer;-><init>(Lsun/font/Font2D;Lsun/font/FontStrikeDesc;)V

    iput-object v0, p0, Lsun/font/FontStrike;->disposer:Lsun/font/FontStrikeDisposer;

    iget p1, p2, Lsun/font/FontStrikeDesc;->style:I

    iget-object p2, p0, Lsun/font/CompositeStrike;->compFont:Lsun/font/CompositeFont;

    iget v0, p2, Lsun/font/Font2D;->style:I

    if-eq p1, v0, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lsun/font/FontStrike;->algoStyle:Z

    and-int/lit8 v2, p1, 0x1

    if-ne v2, v1, :cond_0

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    const v1, 0x3faa3d71    # 1.33f

    iput v1, p0, Lsun/font/FontStrike;->boldness:F

    :cond_0
    const/4 v1, 0x2

    and-int/2addr p1, v1

    if-ne p1, v1, :cond_1

    and-int/lit8 p1, v0, 0x2

    if-nez p1, :cond_1

    const p1, 0x3f333333    # 0.7f

    iput p1, p0, Lsun/font/FontStrike;->italic:F

    :cond_1
    iget p1, p2, Lsun/font/CompositeFont;->numSlots:I

    new-array p1, p1, [Lsun/font/PhysicalStrike;

    iput-object p1, p0, Lsun/font/CompositeStrike;->strikes:[Lsun/font/PhysicalStrike;

    return-void
.end method


# virtual methods
.method public getCharMetrics(C)Ljava/awt/geom/Point2D$Float;
    .locals 1

    iget-object v0, p0, Lsun/font/CompositeStrike;->compFont:Lsun/font/CompositeFont;

    invoke-virtual {v0}, Lsun/font/CompositeFont;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/font/CharToGlyphMapper;->charToGlyph(C)I

    move-result p1

    invoke-virtual {p0, p1}, Lsun/font/CompositeStrike;->getGlyphMetrics(I)Ljava/awt/geom/Point2D$Float;

    move-result-object p0

    return-object p0
.end method

.method public getCodePointAdvance(I)F
    .locals 1

    iget-object v0, p0, Lsun/font/CompositeStrike;->compFont:Lsun/font/CompositeFont;

    invoke-virtual {v0}, Lsun/font/CompositeFont;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lsun/font/CharToGlyphMapper;->charToGlyph(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lsun/font/CompositeStrike;->getGlyphAdvance(I)F

    move-result p0

    return p0
.end method

.method public getFontMetrics()Lsun/font/StrikeMetrics;
    .locals 3

    iget-object v0, p0, Lsun/font/FontStrike;->strikeMetrics:Lsun/font/StrikeMetrics;

    if-nez v0, :cond_1

    new-instance v0, Lsun/font/StrikeMetrics;

    invoke-direct {v0}, Lsun/font/StrikeMetrics;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lsun/font/CompositeStrike;->compFont:Lsun/font/CompositeFont;

    iget v2, v2, Lsun/font/CompositeFont;->numMetricsSlots:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1}, Lsun/font/CompositeStrike;->getStrikeForSlot(I)Lsun/font/PhysicalStrike;

    move-result-object v2

    invoke-virtual {v2}, Lsun/font/PhysicalStrike;->getFontMetrics()Lsun/font/StrikeMetrics;

    move-result-object v2

    invoke-virtual {v0, v2}, Lsun/font/StrikeMetrics;->merge(Lsun/font/StrikeMetrics;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lsun/font/FontStrike;->strikeMetrics:Lsun/font/StrikeMetrics;

    :cond_1
    iget-object p0, p0, Lsun/font/FontStrike;->strikeMetrics:Lsun/font/StrikeMetrics;

    return-object p0
.end method

.method public getGlyphAdvance(I)F
    .locals 1

    invoke-virtual {p0, p1}, Lsun/font/CompositeStrike;->getStrikeForGlyph(I)Lsun/font/PhysicalStrike;

    move-result-object p0

    const v0, 0xffffff

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lsun/font/FontStrike;->getGlyphAdvance(I)F

    move-result p0

    return p0
.end method

.method public getGlyphImageBounds(ILjava/awt/geom/Point2D$Float;Ljava/awt/Rectangle;)V
    .locals 1

    invoke-virtual {p0, p1}, Lsun/font/CompositeStrike;->getStrikeForGlyph(I)Lsun/font/PhysicalStrike;

    move-result-object p0

    const v0, 0xffffff

    and-int/2addr p1, v0

    invoke-virtual {p0, p1, p2, p3}, Lsun/font/FontStrike;->getGlyphImageBounds(ILjava/awt/geom/Point2D$Float;Ljava/awt/Rectangle;)V

    return-void
.end method

.method public getGlyphImagePtr(I)J
    .locals 1

    invoke-virtual {p0, p1}, Lsun/font/CompositeStrike;->getStrikeForGlyph(I)Lsun/font/PhysicalStrike;

    move-result-object p0

    const v0, 0xffffff

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lsun/font/FontStrike;->getGlyphImagePtr(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public getGlyphImagePtrs([I[JI)V
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lsun/font/CompositeStrike;->getStrikeForSlot(I)Lsun/font/PhysicalStrike;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lsun/font/PhysicalStrike;->getSlot0GlyphImagePtrs([I[JI)I

    move-result v0

    if-ne v0, p3, :cond_0

    return-void

    :cond_0
    :goto_0
    if-ge v0, p3, :cond_1

    aget v1, p1, v0

    invoke-virtual {p0, v1}, Lsun/font/CompositeStrike;->getStrikeForGlyph(I)Lsun/font/PhysicalStrike;

    move-result-object v1

    aget v2, p1, v0

    const v3, 0xffffff

    and-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lsun/font/FontStrike;->getGlyphImagePtr(I)J

    move-result-wide v1

    aput-wide v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getGlyphMetrics(I)Ljava/awt/geom/Point2D$Float;
    .locals 1

    invoke-virtual {p0, p1}, Lsun/font/CompositeStrike;->getStrikeForGlyph(I)Lsun/font/PhysicalStrike;

    move-result-object p0

    const v0, 0xffffff

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lsun/font/FontStrike;->getGlyphMetrics(I)Ljava/awt/geom/Point2D$Float;

    move-result-object p0

    return-object p0
.end method

.method public getGlyphOutline(IFF)Ljava/awt/geom/GeneralPath;
    .locals 1

    invoke-virtual {p0, p1}, Lsun/font/CompositeStrike;->getStrikeForGlyph(I)Lsun/font/PhysicalStrike;

    move-result-object p0

    const v0, 0xffffff

    and-int/2addr p1, v0

    invoke-virtual {p0, p1, p2, p3}, Lsun/font/FontStrike;->getGlyphOutline(IFF)Ljava/awt/geom/GeneralPath;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/awt/geom/GeneralPath;

    invoke-direct {p0}, Ljava/awt/geom/GeneralPath;-><init>()V

    :cond_0
    return-object p0
.end method

.method public getGlyphOutlineBounds(I)Ljava/awt/geom/Rectangle2D$Float;
    .locals 1

    invoke-virtual {p0, p1}, Lsun/font/CompositeStrike;->getStrikeForGlyph(I)Lsun/font/PhysicalStrike;

    move-result-object p0

    const v0, 0xffffff

    and-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lsun/font/FontStrike;->getGlyphOutlineBounds(I)Ljava/awt/geom/Rectangle2D$Float;

    move-result-object p0

    return-object p0
.end method

.method public getGlyphVectorOutline([IFF)Ljava/awt/geom/GeneralPath;
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_4

    aget v3, p1, v2

    ushr-int/lit8 v3, v3, 0x18

    move v4, v2

    :goto_1
    array-length v5, p1

    if-ge v4, v5, :cond_0

    add-int/lit8 v5, v4, 0x1

    aget v6, p1, v5

    ushr-int/lit8 v6, v6, 0x18

    if-ne v6, v3, :cond_0

    move v4, v5

    goto :goto_1

    :cond_0
    sub-int v2, v4, v2

    add-int/lit8 v2, v2, 0x1

    new-array v5, v2, [I

    move v6, v1

    :goto_2
    if-ge v6, v2, :cond_1

    aget v7, p1, v6

    const v8, 0xffffff

    and-int/2addr v7, v8

    aput v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v3}, Lsun/font/CompositeStrike;->getStrikeForSlot(I)Lsun/font/PhysicalStrike;

    move-result-object v2

    invoke-virtual {v2, v5, p2, p3}, Lsun/font/FontStrike;->getGlyphVectorOutline([IFF)Ljava/awt/geom/GeneralPath;

    move-result-object v2

    if-nez v0, :cond_2

    move-object v0, v2

    goto :goto_3

    :cond_2
    if-eqz v2, :cond_3

    invoke-virtual {v0, v2, v1}, Ljava/awt/geom/Path2D;->append(Ljava/awt/Shape;Z)V

    :cond_3
    :goto_3
    move v2, v4

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    new-instance p0, Ljava/awt/geom/GeneralPath;

    invoke-direct {p0}, Ljava/awt/geom/GeneralPath;-><init>()V

    return-object p0

    :cond_5
    return-object v0
.end method

.method public getMapper()Lsun/font/CharToGlyphMapper;
    .locals 0

    iget-object p0, p0, Lsun/font/CompositeStrike;->compFont:Lsun/font/CompositeFont;

    invoke-virtual {p0}, Lsun/font/CompositeFont;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object p0

    return-object p0
.end method

.method public getNumGlyphs()I
    .locals 0

    iget-object p0, p0, Lsun/font/CompositeStrike;->compFont:Lsun/font/CompositeFont;

    invoke-virtual {p0}, Lsun/font/CompositeFont;->getNumGlyphs()I

    move-result p0

    return p0
.end method

.method public getStrikeForGlyph(I)Lsun/font/PhysicalStrike;
    .locals 0

    ushr-int/lit8 p1, p1, 0x18

    invoke-virtual {p0, p1}, Lsun/font/CompositeStrike;->getStrikeForSlot(I)Lsun/font/PhysicalStrike;

    move-result-object p0

    return-object p0
.end method

.method public getStrikeForSlot(I)Lsun/font/PhysicalStrike;
    .locals 2

    iget-object v0, p0, Lsun/font/CompositeStrike;->strikes:[Lsun/font/PhysicalStrike;

    array-length v1, v0

    if-lt p1, v1, :cond_0

    const/4 p1, 0x0

    :cond_0
    aget-object v0, v0, p1

    if-nez v0, :cond_1

    iget-object v0, p0, Lsun/font/CompositeStrike;->compFont:Lsun/font/CompositeFont;

    invoke-virtual {v0, p1}, Lsun/font/CompositeFont;->getSlotFont(I)Lsun/font/PhysicalFont;

    move-result-object v0

    iget-object v1, p0, Lsun/font/FontStrike;->desc:Lsun/font/FontStrikeDesc;

    invoke-virtual {v0, v1}, Lsun/font/Font2D;->getStrike(Lsun/font/FontStrikeDesc;)Lsun/font/FontStrike;

    move-result-object v0

    check-cast v0, Lsun/font/PhysicalStrike;

    iget-object p0, p0, Lsun/font/CompositeStrike;->strikes:[Lsun/font/PhysicalStrike;

    aput-object v0, p0, p1

    :cond_1
    return-object v0
.end method
