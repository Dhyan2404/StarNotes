.class public Lorg/apache/poi/util/RectUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRotateAnchor(Ljava/awt/geom/Rectangle2D;D)Ljava/awt/geom/Rectangle2D;
    .locals 11

    const-wide v0, 0x4076800000000000L    # 360.0

    rem-double/2addr p1, v0

    add-double/2addr p1, v0

    rem-double/2addr p1, v0

    double-to-int v0, p1

    add-int/lit8 v0, v0, 0x2d

    div-int/lit8 v0, v0, 0x5a

    rem-int/lit8 v0, v0, 0x4

    new-instance v8, Ljava/awt/geom/AffineTransform;

    invoke-direct {v8}, Ljava/awt/geom/AffineTransform;-><init>()V

    const-wide v1, 0x4066800000000000L    # 180.0

    div-double/2addr p1, v1

    const-wide v1, 0x400921fb54442d18L    # Math.PI

    mul-double v2, p1, v1

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v4

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v6

    move-object v1, v8

    invoke-virtual/range {v1 .. v7}, Ljava/awt/geom/AffineTransform;->rotate(DDD)V

    const/4 p1, 0x1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x3

    if-ne v0, p1, :cond_1

    :cond_0
    invoke-virtual {v8, p0}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p1

    invoke-interface {p1}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v6

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v9

    new-instance p2, Ljava/awt/geom/AffineTransform;

    invoke-direct {p2}, Ljava/awt/geom/AffineTransform;-><init>()V

    const/4 v1, 0x1

    move-object v0, p2

    move-wide v2, v6

    move-wide v4, v9

    invoke-virtual/range {v0 .. v5}, Ljava/awt/geom/AffineTransform;->quadrantRotate(IDD)V

    invoke-virtual {p2, v8}, Ljava/awt/geom/AffineTransform;->concatenate(Ljava/awt/geom/AffineTransform;)V

    const/4 v1, 0x3

    invoke-virtual/range {v0 .. v5}, Ljava/awt/geom/AffineTransform;->quadrantRotate(IDD)V

    invoke-virtual {p2, p0}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p2

    invoke-interface {p2}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p2

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lorg/apache/poi/util/RectUtils;->safeScale(DD)D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide p1

    invoke-static {v2, v3, p1, p2}, Lorg/apache/poi/util/RectUtils;->safeScale(DD)D

    move-result-wide p1

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getCenterX()D

    move-result-wide v2

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getCenterY()D

    move-result-wide v4

    new-instance v6, Ljava/awt/geom/AffineTransform;

    invoke-direct {v6}, Ljava/awt/geom/AffineTransform;-><init>()V

    invoke-virtual {v6, v2, v3, v4, v5}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v6, p1, p2, v0, v1}, Ljava/awt/geom/AffineTransform;->scale(DD)V

    neg-double p1, v2

    neg-double v0, v4

    invoke-virtual {v6, p1, p2, v0, v1}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    invoke-virtual {v6, p0}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p0

    invoke-interface {p0}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    :cond_1
    invoke-virtual {v8}, Ljava/awt/geom/AffineTransform;->isIdentity()Z

    move-result p1

    if-eqz p1, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {v8, p0}, Ljava/awt/geom/AffineTransform;->createTransformedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/poi/convert/WordToHtmlUtils;->isNull(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    invoke-interface {p1}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static isEmptyImage(Ljava/awt/geom/Dimension2D;)Z
    .locals 4

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v0

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

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

.method public static isEmptyImage(Ljava/awt/geom/RectangularShape;)Z
    .locals 4

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v0

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

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

.method public static isNullOrEmpty(Ljava/awt/geom/Dimension2D;)Z
    .locals 4

    if-eqz p0, :cond_1

    .line 2
    invoke-virtual {p0}, Ljava/awt/geom/Dimension2D;->getWidth()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Ljava/awt/geom/Dimension2D;->getHeight()D

    move-result-wide v0

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_0

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

.method public static isNullOrEmpty(Ljava/awt/geom/RectangularShape;)Z
    .locals 0

    if-eqz p0, :cond_1

    .line 1
    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->isEmpty()Z

    move-result p0

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

.method public static safeScale(DD)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-eqz v2, :cond_1

    cmpl-double v0, p2, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    div-double/2addr p0, p2

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    :goto_1
    return-wide p0
.end method
