.class public final Lsun/font/GraphicComponent;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/font/TextLineComponent;
.implements Lsun/font/Decoration$Label;


# static fields
.field public static final GRAPHIC_LEADING:F = 2.0f


# instance fields
.field private baseTx:Ljava/awt/geom/AffineTransform;

.field private charsLtoV:[I

.field private cm:Lsun/font/CoreMetrics;

.field private decorator:Lsun/font/Decoration;

.field private graphic:Ljava/awt/font/GraphicAttribute;

.field private graphicAdvance:F

.field private graphicCount:I

.field private levels:[B

.field private visualBounds:Ljava/awt/geom/Rectangle2D;


# direct methods
.method public constructor <init>(Ljava/awt/font/GraphicAttribute;Lsun/font/Decoration;[I[BIILjava/awt/geom/AffineTransform;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lsun/font/GraphicComponent;->visualBounds:Ljava/awt/geom/Rectangle2D;

    if-le p6, p5, :cond_0

    .line 3
    iput-object p1, p0, Lsun/font/GraphicComponent;->graphic:Ljava/awt/font/GraphicAttribute;

    .line 4
    invoke-virtual {p1}, Ljava/awt/font/GraphicAttribute;->getAdvance()F

    move-result v0

    iput v0, p0, Lsun/font/GraphicComponent;->graphicAdvance:F

    .line 5
    iput-object p2, p0, Lsun/font/GraphicComponent;->decorator:Lsun/font/Decoration;

    .line 6
    invoke-static {p1}, Lsun/font/GraphicComponent;->createCoreMetrics(Ljava/awt/font/GraphicAttribute;)Lsun/font/CoreMetrics;

    move-result-object p1

    iput-object p1, p0, Lsun/font/GraphicComponent;->cm:Lsun/font/CoreMetrics;

    .line 7
    iput-object p7, p0, Lsun/font/GraphicComponent;->baseTx:Ljava/awt/geom/AffineTransform;

    .line 8
    invoke-direct {p0, p3, p4, p5, p6}, Lsun/font/GraphicComponent;->initLocalOrdering([I[BII)V

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "0 or negative length in GraphicComponent"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private constructor <init>(Lsun/font/GraphicComponent;III)V
    .locals 3

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lsun/font/GraphicComponent;->visualBounds:Ljava/awt/geom/Rectangle2D;

    .line 12
    iget-object v1, p1, Lsun/font/GraphicComponent;->graphic:Ljava/awt/font/GraphicAttribute;

    iput-object v1, p0, Lsun/font/GraphicComponent;->graphic:Ljava/awt/font/GraphicAttribute;

    .line 13
    iget v1, p1, Lsun/font/GraphicComponent;->graphicAdvance:F

    iput v1, p0, Lsun/font/GraphicComponent;->graphicAdvance:F

    .line 14
    iget-object v1, p1, Lsun/font/GraphicComponent;->decorator:Lsun/font/Decoration;

    iput-object v1, p0, Lsun/font/GraphicComponent;->decorator:Lsun/font/Decoration;

    .line 15
    iget-object v1, p1, Lsun/font/GraphicComponent;->cm:Lsun/font/CoreMetrics;

    iput-object v1, p0, Lsun/font/GraphicComponent;->cm:Lsun/font/CoreMetrics;

    .line 16
    iget-object v1, p1, Lsun/font/GraphicComponent;->baseTx:Ljava/awt/geom/AffineTransform;

    iput-object v1, p0, Lsun/font/GraphicComponent;->baseTx:Ljava/awt/geom/AffineTransform;

    const/4 v1, 0x2

    if-ne p4, v1, :cond_0

    .line 17
    iget-object v0, p1, Lsun/font/GraphicComponent;->charsLtoV:[I

    .line 18
    iget-object p1, p1, Lsun/font/GraphicComponent;->levels:[B

    goto :goto_2

    :cond_0
    const/4 p1, 0x1

    if-eqz p4, :cond_2

    if-ne p4, p1, :cond_1

    goto :goto_0

    .line 19
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid direction flag"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    sub-int/2addr p3, p2

    const/4 p2, 0x0

    if-ne p4, p1, :cond_4

    .line 20
    new-array v0, p3, [I

    .line 21
    new-array p4, p3, [B

    move v1, p2

    :goto_1
    if-ge v1, p3, :cond_3

    sub-int v2, p3, v1

    sub-int/2addr v2, p1

    .line 22
    aput v2, v0, v1

    .line 23
    aput-byte p1, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    move-object p1, p4

    goto :goto_2

    :cond_4
    move-object p1, v0

    .line 24
    :goto_2
    invoke-direct {p0, v0, p1, p2, p3}, Lsun/font/GraphicComponent;->initLocalOrdering([I[BII)V

    return-void
.end method

.method public static createCoreMetrics(Ljava/awt/font/GraphicAttribute;)Lsun/font/CoreMetrics;
    .locals 14

    new-instance v13, Lsun/font/CoreMetrics;

    invoke-virtual {p0}, Ljava/awt/font/GraphicAttribute;->getAscent()F

    move-result v1

    invoke-virtual {p0}, Ljava/awt/font/GraphicAttribute;->getDescent()F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {p0}, Ljava/awt/font/GraphicAttribute;->getAscent()F

    move-result v0

    invoke-virtual {p0}, Ljava/awt/font/GraphicAttribute;->getDescent()F

    move-result v4

    add-float/2addr v0, v4

    const/high16 v4, 0x40000000    # 2.0f

    add-float v5, v0, v4

    invoke-virtual {p0}, Ljava/awt/font/GraphicAttribute;->getAlignment()I

    move-result v6

    const/4 v0, 0x3

    new-array v7, v0, [F

    const/4 v0, 0x0

    const/4 v8, 0x0

    aput v8, v7, v0

    invoke-virtual {p0}, Ljava/awt/font/GraphicAttribute;->getAscent()F

    move-result v0

    neg-float v0, v0

    div-float/2addr v0, v4

    const/4 v8, 0x1

    aput v0, v7, v8

    invoke-virtual {p0}, Ljava/awt/font/GraphicAttribute;->getAscent()F

    move-result v0

    neg-float v0, v0

    const/4 v8, 0x2

    aput v0, v7, v8

    invoke-virtual {p0}, Ljava/awt/font/GraphicAttribute;->getAscent()F

    move-result v0

    neg-float v0, v0

    div-float v8, v0, v4

    invoke-virtual {p0}, Ljava/awt/font/GraphicAttribute;->getAscent()F

    move-result v0

    const/high16 v4, 0x41400000    # 12.0f

    div-float v9, v0, v4

    invoke-virtual {p0}, Ljava/awt/font/GraphicAttribute;->getDescent()F

    move-result v0

    const/high16 v10, 0x40400000    # 3.0f

    div-float v10, v0, v10

    invoke-virtual {p0}, Ljava/awt/font/GraphicAttribute;->getAscent()F

    move-result p0

    div-float/2addr p0, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, v13

    move v4, v5

    move v5, v6

    move-object v6, v7

    move v7, v8

    move v8, v9

    move v9, v10

    move v10, p0

    invoke-direct/range {v0 .. v12}, Lsun/font/CoreMetrics;-><init>(FFFFI[FFFFFFF)V

    return-object v13
.end method

.method private initLocalOrdering([I[BII)V
    .locals 2

    sub-int v0, p4, p3

    iput v0, p0, Lsun/font/GraphicComponent;->graphicCount:I

    if-eqz p1, :cond_1

    array-length v1, p1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lsun/font/BidiUtils;->createNormalizedMap([I[BII)[I

    move-result-object p1

    iput-object p1, p0, Lsun/font/GraphicComponent;->charsLtoV:[I

    goto :goto_1

    :cond_1
    :goto_0
    iput-object p1, p0, Lsun/font/GraphicComponent;->charsLtoV:[I

    :goto_1
    if-eqz p2, :cond_3

    array-length p1, p2

    iget p4, p0, Lsun/font/GraphicComponent;->graphicCount:I

    if-ne p1, p4, :cond_2

    goto :goto_2

    :cond_2
    new-array p1, p4, [B

    iput-object p1, p0, Lsun/font/GraphicComponent;->levels:[B

    const/4 p0, 0x0

    invoke-static {p2, p3, p1, p0, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_3
    :goto_2
    iput-object p2, p0, Lsun/font/GraphicComponent;->levels:[B

    :goto_3
    return-void
.end method


# virtual methods
.method public applyJustificationDeltas([FI[Z)Lsun/font/TextLineComponent;
    .locals 0

    return-object p0
.end method

.method public caretAtOffsetIsValid(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public draw(Ljava/awt/Graphics2D;FF)V
    .locals 1

    iget-object v0, p0, Lsun/font/GraphicComponent;->decorator:Lsun/font/Decoration;

    invoke-virtual {v0, p0, p1, p2, p3}, Lsun/font/Decoration;->drawTextAndDecorations(Lsun/font/Decoration$Label;Ljava/awt/Graphics2D;FF)V

    return-void
.end method

.method public getAdvance()F
    .locals 1

    iget v0, p0, Lsun/font/GraphicComponent;->graphicAdvance:F

    iget p0, p0, Lsun/font/GraphicComponent;->graphicCount:I

    int-to-float p0, p0

    mul-float/2addr v0, p0

    return v0
.end method

.method public getAdvanceBetween(II)F
    .locals 0

    iget p0, p0, Lsun/font/GraphicComponent;->graphicAdvance:F

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float/2addr p0, p1

    return p0
.end method

.method public getBaselineTransform()Ljava/awt/geom/AffineTransform;
    .locals 0

    iget-object p0, p0, Lsun/font/GraphicComponent;->baseTx:Ljava/awt/geom/AffineTransform;

    return-object p0
.end method

.method public getCharAdvance(I)F
    .locals 0

    iget p0, p0, Lsun/font/GraphicComponent;->graphicAdvance:F

    return p0
.end method

.method public getCharVisualBounds(I)Ljava/awt/geom/Rectangle2D;
    .locals 1

    iget-object v0, p0, Lsun/font/GraphicComponent;->decorator:Lsun/font/Decoration;

    invoke-virtual {v0, p0, p1}, Lsun/font/Decoration;->getCharVisualBounds(Lsun/font/Decoration$Label;I)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getCharX(I)F
    .locals 1

    iget-object v0, p0, Lsun/font/GraphicComponent;->charsLtoV:[I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    aget p1, v0, p1

    :goto_0
    iget p0, p0, Lsun/font/GraphicComponent;->graphicAdvance:F

    int-to-float p1, p1

    mul-float/2addr p0, p1

    return p0
.end method

.method public getCharY(I)F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getCoreMetrics()Lsun/font/CoreMetrics;
    .locals 0

    iget-object p0, p0, Lsun/font/GraphicComponent;->cm:Lsun/font/CoreMetrics;

    return-object p0
.end method

.method public getItalicAngle()F
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getItalicBounds()Ljava/awt/geom/Rectangle2D;
    .locals 0

    invoke-virtual {p0}, Lsun/font/GraphicComponent;->getLogicalBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0
.end method

.method public getJustificationInfos([Ljava/awt/font/GlyphJustificationInfo;III)V
    .locals 0

    return-void
.end method

.method public getLineBreakIndex(IF)I
    .locals 1

    iget v0, p0, Lsun/font/GraphicComponent;->graphicAdvance:F

    div-float/2addr p2, v0

    float-to-int p2, p2

    iget p0, p0, Lsun/font/GraphicComponent;->graphicCount:I

    sub-int v0, p0, p1

    if-le p2, v0, :cond_0

    sub-int p2, p0, p1

    :cond_0
    return p2
.end method

.method public getLogicalBounds()Ljava/awt/geom/Rectangle2D;
    .locals 4

    iget-object v0, p0, Lsun/font/GraphicComponent;->cm:Lsun/font/CoreMetrics;

    iget v1, v0, Lsun/font/CoreMetrics;->ascent:F

    neg-float v1, v1

    iget v2, p0, Lsun/font/GraphicComponent;->graphicAdvance:F

    iget p0, p0, Lsun/font/GraphicComponent;->graphicCount:I

    int-to-float p0, p0

    mul-float/2addr v2, p0

    iget p0, v0, Lsun/font/CoreMetrics;->descent:F

    sub-float/2addr p0, v1

    new-instance v0, Ljava/awt/geom/Rectangle2D$Float;

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2, p0}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object v0
.end method

.method public getNumCharacters()I
    .locals 0

    iget p0, p0, Lsun/font/GraphicComponent;->graphicCount:I

    return p0
.end method

.method public getNumJustificationInfos()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOutline(FF)Ljava/awt/Shape;
    .locals 1

    iget-object v0, p0, Lsun/font/GraphicComponent;->decorator:Lsun/font/Decoration;

    invoke-virtual {v0, p0, p1, p2}, Lsun/font/Decoration;->getOutline(Lsun/font/Decoration$Label;FF)Ljava/awt/Shape;

    move-result-object p0

    return-object p0
.end method

.method public getPixelBounds(Ljava/awt/font/FontRenderContext;FF)Ljava/awt/Rectangle;
    .locals 0

    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "do not call if isSimple returns false"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSubset(III)Lsun/font/TextLineComponent;
    .locals 1

    if-ltz p1, :cond_1

    iget v0, p0, Lsun/font/GraphicComponent;->graphicCount:I

    if-gt p2, v0, :cond_1

    if-ge p1, p2, :cond_1

    if-nez p1, :cond_0

    if-ne p2, v0, :cond_0

    const/4 v0, 0x2

    if-ne p3, v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Lsun/font/GraphicComponent;

    invoke-direct {v0, p0, p1, p2, p3}, Lsun/font/GraphicComponent;-><init>(Lsun/font/GraphicComponent;III)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid range.  start="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "; limit="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getVisualBounds()Ljava/awt/geom/Rectangle2D;
    .locals 1

    iget-object v0, p0, Lsun/font/GraphicComponent;->visualBounds:Ljava/awt/geom/Rectangle2D;

    if-nez v0, :cond_0

    iget-object v0, p0, Lsun/font/GraphicComponent;->decorator:Lsun/font/Decoration;

    invoke-virtual {v0, p0}, Lsun/font/Decoration;->getVisualBounds(Lsun/font/Decoration$Label;)Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    iput-object v0, p0, Lsun/font/GraphicComponent;->visualBounds:Ljava/awt/geom/Rectangle2D;

    :cond_0
    new-instance v0, Ljava/awt/geom/Rectangle2D$Float;

    invoke-direct {v0}, Ljava/awt/geom/Rectangle2D$Float;-><init>()V

    iget-object p0, p0, Lsun/font/GraphicComponent;->visualBounds:Ljava/awt/geom/Rectangle2D;

    invoke-virtual {v0, p0}, Ljava/awt/geom/Rectangle2D$Float;->setRect(Ljava/awt/geom/Rectangle2D;)V

    return-object v0
.end method

.method public handleDraw(Ljava/awt/Graphics2D;FF)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lsun/font/GraphicComponent;->graphicCount:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lsun/font/GraphicComponent;->graphic:Ljava/awt/font/GraphicAttribute;

    invoke-virtual {v1, p1, p2, p3}, Ljava/awt/font/GraphicAttribute;->draw(Ljava/awt/Graphics2D;FF)V

    iget v1, p0, Lsun/font/GraphicComponent;->graphicAdvance:F

    add-float/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public handleGetCharVisualBounds(I)Ljava/awt/geom/Rectangle2D;
    .locals 2

    iget-object v0, p0, Lsun/font/GraphicComponent;->graphic:Ljava/awt/font/GraphicAttribute;

    invoke-virtual {v0}, Ljava/awt/font/GraphicAttribute;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    new-instance v1, Ljava/awt/geom/Rectangle2D$Float;

    invoke-direct {v1}, Ljava/awt/geom/Rectangle2D$Float;-><init>()V

    invoke-virtual {v1, v0}, Ljava/awt/geom/Rectangle2D$Float;->setRect(Ljava/awt/geom/Rectangle2D;)V

    iget v0, v1, Ljava/awt/geom/Rectangle2D$Float;->x:F

    iget p0, p0, Lsun/font/GraphicComponent;->graphicAdvance:F

    int-to-float p1, p1

    mul-float/2addr p0, p1

    add-float/2addr v0, p0

    iput v0, v1, Ljava/awt/geom/Rectangle2D$Float;->x:F

    return-object v1
.end method

.method public handleGetOutline(FF)Ljava/awt/Shape;
    .locals 8

    const/4 v0, 0x6

    new-array v0, v0, [D

    const/4 v1, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v0, v1

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    aput-wide v5, v0, v4

    const/4 v7, 0x2

    aput-wide v5, v0, v7

    const/4 v5, 0x3

    aput-wide v2, v0, v5

    float-to-double v2, p1

    const/4 p1, 0x4

    aput-wide v2, v0, p1

    const/4 v2, 0x5

    float-to-double v5, p2

    aput-wide v5, v0, v2

    iget p2, p0, Lsun/font/GraphicComponent;->graphicCount:I

    if-ne p2, v4, :cond_0

    new-instance p1, Ljava/awt/geom/AffineTransform;

    invoke-direct {p1, v0}, Ljava/awt/geom/AffineTransform;-><init>([D)V

    iget-object p0, p0, Lsun/font/GraphicComponent;->graphic:Ljava/awt/font/GraphicAttribute;

    invoke-virtual {p0, p1}, Ljava/awt/font/GraphicAttribute;->getOutline(Ljava/awt/geom/AffineTransform;)Ljava/awt/Shape;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p2, Ljava/awt/geom/GeneralPath;

    invoke-direct {p2}, Ljava/awt/geom/GeneralPath;-><init>()V

    move v2, v1

    :goto_0
    iget v3, p0, Lsun/font/GraphicComponent;->graphicCount:I

    if-ge v2, v3, :cond_1

    new-instance v3, Ljava/awt/geom/AffineTransform;

    invoke-direct {v3, v0}, Ljava/awt/geom/AffineTransform;-><init>([D)V

    iget-object v4, p0, Lsun/font/GraphicComponent;->graphic:Ljava/awt/font/GraphicAttribute;

    invoke-virtual {v4, v3}, Ljava/awt/font/GraphicAttribute;->getOutline(Ljava/awt/geom/AffineTransform;)Ljava/awt/Shape;

    move-result-object v3

    invoke-virtual {p2, v3, v1}, Ljava/awt/geom/Path2D;->append(Ljava/awt/Shape;Z)V

    aget-wide v3, v0, p1

    iget v5, p0, Lsun/font/GraphicComponent;->graphicAdvance:F

    float-to-double v5, v5

    add-double/2addr v3, v5

    aput-wide v3, v0, p1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public handleGetVisualBounds()Ljava/awt/geom/Rectangle2D;
    .locals 6

    iget-object v0, p0, Lsun/font/GraphicComponent;->graphic:Ljava/awt/font/GraphicAttribute;

    invoke-virtual {v0}, Ljava/awt/font/GraphicAttribute;->getBounds()Ljava/awt/geom/Rectangle2D;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v1

    double-to-float v1, v1

    iget v2, p0, Lsun/font/GraphicComponent;->graphicAdvance:F

    iget p0, p0, Lsun/font/GraphicComponent;->graphicCount:I

    add-int/lit8 p0, p0, -0x1

    int-to-float p0, p0

    mul-float/2addr v2, p0

    add-float/2addr v1, v2

    new-instance p0, Ljava/awt/geom/Rectangle2D$Float;

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    double-to-float v2, v2

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v3

    double-to-float v3, v3

    invoke-virtual {v0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v4

    double-to-float v0, v4

    invoke-direct {p0, v2, v3, v1, v0}, Ljava/awt/geom/Rectangle2D$Float;-><init>(FFFF)V

    return-object p0
.end method

.method public isSimple()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[graphic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lsun/font/GraphicComponent;->graphic:Ljava/awt/font/GraphicAttribute;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ":count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lsun/font/GraphicComponent;->getNumCharacters()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
