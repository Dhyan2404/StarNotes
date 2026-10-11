.class public abstract Lsun/font/FontStrike;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected algoStyle:Z

.field protected boldness:F

.field protected desc:Lsun/font/FontStrikeDesc;

.field protected disposer:Lsun/font/FontStrikeDisposer;

.field protected italic:F

.field protected strikeMetrics:Lsun/font/StrikeMetrics;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lsun/font/FontStrike;->algoStyle:Z

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lsun/font/FontStrike;->boldness:F

    const/4 v0, 0x0

    iput v0, p0, Lsun/font/FontStrike;->italic:F

    return-void
.end method


# virtual methods
.method public abstract getCharMetrics(C)Ljava/awt/geom/Point2D$Float;
.end method

.method public abstract getCodePointAdvance(I)F
.end method

.method public abstract getFontMetrics()Lsun/font/StrikeMetrics;
.end method

.method public abstract getGlyphAdvance(I)F
.end method

.method public abstract getGlyphImageBounds(ILjava/awt/geom/Point2D$Float;Ljava/awt/Rectangle;)V
.end method

.method public abstract getGlyphImagePtr(I)J
.end method

.method public abstract getGlyphImagePtrs([I[JI)V
.end method

.method public abstract getGlyphMetrics(I)Ljava/awt/geom/Point2D$Float;
.end method

.method public abstract getGlyphOutline(IFF)Ljava/awt/geom/GeneralPath;
.end method

.method public abstract getGlyphOutlineBounds(I)Ljava/awt/geom/Rectangle2D$Float;
.end method

.method public abstract getGlyphVectorOutline([IFF)Ljava/awt/geom/GeneralPath;
.end method

.method public abstract getMapper()Lsun/font/CharToGlyphMapper;
.end method

.method public abstract getNumGlyphs()I
.end method

.method public layout(Lsun/font/GlyphLayout$GVData;Lsun/font/Font2D;[CFIIIILjava/awt/geom/Point2D$Float;II)V
    .locals 2

    sub-int/2addr p7, p6

    add-int p2, p7, p8

    iput p2, p1, Lsun/font/GlyphLayout$GVData;->_count:I

    iget-object p2, p1, Lsun/font/GlyphLayout$GVData;->_positions:[F

    mul-int/lit8 p4, p8, 0x2

    aget p2, p2, p4

    const/4 p4, 0x0

    :goto_0
    if-ge p4, p7, :cond_0

    invoke-virtual {p0}, Lsun/font/FontStrike;->getMapper()Lsun/font/CharToGlyphMapper;

    move-result-object p5

    add-int p10, p6, p4

    aget-char p10, p3, p10

    invoke-virtual {p5, p10}, Lsun/font/CharToGlyphMapper;->charToGlyph(C)I

    move-result p5

    iget-object p10, p1, Lsun/font/GlyphLayout$GVData;->_glyphs:[I

    add-int v0, p8, p4

    or-int v1, p5, p11

    aput v1, p10, v0

    invoke-virtual {p0, p5}, Lsun/font/FontStrike;->getGlyphMetrics(I)Ljava/awt/geom/Point2D$Float;

    move-result-object p5

    iget p5, p5, Ljava/awt/geom/Point2D$Float;->x:F

    add-float/2addr p2, p5

    iget-object p5, p1, Lsun/font/GlyphLayout$GVData;->_positions:[F

    add-int/lit8 p10, v0, 0x1

    mul-int/lit8 p10, p10, 0x2

    aput p2, p5, p10

    iget-object p5, p1, Lsun/font/GlyphLayout$GVData;->_indices:[I

    aput v0, p5, v0

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    iput p2, p9, Ljava/awt/geom/Point2D$Float;->x:F

    return-void
.end method
