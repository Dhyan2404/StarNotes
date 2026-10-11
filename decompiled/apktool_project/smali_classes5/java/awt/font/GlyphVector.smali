.class public abstract Ljava/awt/font/GlyphVector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final FLAG_COMPLEX_GLYPHS:I = 0x8

.field public static final FLAG_HAS_POSITION_ADJUSTMENTS:I = 0x2

.field public static final FLAG_HAS_TRANSFORMS:I = 0x1

.field public static final FLAG_MASK:I = 0xf

.field public static final FLAG_RUN_RTL:I = 0x4


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract equals(Ljava/awt/font/GlyphVector;)Z
.end method

.method public abstract getFont()Ljava/awt/Font;
.end method

.method public abstract getFontRenderContext()Ljava/awt/font/FontRenderContext;
.end method

.method public getGlyphCharIndex(I)I
    .locals 0

    return p1
.end method

.method public getGlyphCharIndices(II[I)[I
    .locals 2

    if-nez p3, :cond_0

    new-array p3, p2, [I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    invoke-virtual {p0, p1}, Ljava/awt/font/GlyphVector;->getGlyphCharIndex(I)I

    move-result v1

    aput v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p3
.end method

.method public abstract getGlyphCode(I)I
.end method

.method public abstract getGlyphCodes(II[I)[I
.end method

.method public abstract getGlyphJustificationInfo(I)Ljava/awt/font/GlyphJustificationInfo;
.end method

.method public abstract getGlyphLogicalBounds(I)Ljava/awt/Shape;
.end method

.method public abstract getGlyphMetrics(I)Ljava/awt/font/GlyphMetrics;
.end method

.method public abstract getGlyphOutline(I)Ljava/awt/Shape;
.end method

.method public getGlyphOutline(IFF)Ljava/awt/Shape;
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Ljava/awt/font/GlyphVector;->getGlyphOutline(I)Ljava/awt/Shape;

    move-result-object p0

    float-to-double p1, p2

    float-to-double v0, p3

    .line 2
    invoke-static {p1, p2, v0, v1}, Ljava/awt/geom/AffineTransform;->getTranslateInstance(DD)Ljava/awt/geom/AffineTransform;

    move-result-object p1

    .line 3
    invoke-virtual {p1, p0}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public getGlyphPixelBounds(ILjava/awt/font/FontRenderContext;FF)Ljava/awt/Rectangle;
    .locals 4

    invoke-virtual {p0, p1}, Ljava/awt/font/GlyphVector;->getGlyphVisualBounds(I)Ljava/awt/Shape;

    move-result-object p0

    invoke-interface {p0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide p1

    float-to-double v0, p3

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide p2

    float-to-double v2, p4

    add-double/2addr p2, v2

    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    double-to-int p2, p2

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide p3

    add-double/2addr p3, v0

    invoke-static {p3, p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p3

    double-to-int p3, p3

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v0

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p0, v0

    new-instance p4, Ljava/awt/Rectangle;

    sub-int/2addr p3, p1

    sub-int/2addr p0, p2

    invoke-direct {p4, p1, p2, p3, p0}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object p4
.end method

.method public abstract getGlyphPosition(I)Ljava/awt/geom/Point2D;
.end method

.method public abstract getGlyphPositions(II[F)[F
.end method

.method public abstract getGlyphTransform(I)Ljava/awt/geom/AffineTransform;
.end method

.method public abstract getGlyphVisualBounds(I)Ljava/awt/Shape;
.end method

.method public getLayoutFlags()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public abstract getLogicalBounds()Ljava/awt/geom/Rectangle2D;
.end method

.method public abstract getNumGlyphs()I
.end method

.method public abstract getOutline()Ljava/awt/Shape;
.end method

.method public abstract getOutline(FF)Ljava/awt/Shape;
.end method

.method public getPixelBounds(Ljava/awt/font/FontRenderContext;FF)Ljava/awt/Rectangle;
    .locals 5

    invoke-virtual {p0}, Ljava/awt/font/GlyphVector;->getVisualBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v0

    float-to-double p1, p2

    add-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v1

    float-to-double v3, p3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int p3, v1

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v1

    add-double/2addr v1, p1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v1

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int p0, v1

    new-instance p2, Ljava/awt/Rectangle;

    sub-int/2addr p1, v0

    sub-int/2addr p0, p3

    invoke-direct {p2, v0, p3, p1, p0}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object p2
.end method

.method public abstract getVisualBounds()Ljava/awt/geom/Rectangle2D;
.end method

.method public abstract performDefaultLayout()V
.end method

.method public abstract setGlyphPosition(ILjava/awt/geom/Point2D;)V
.end method

.method public abstract setGlyphTransform(ILjava/awt/geom/AffineTransform;)V
.end method
