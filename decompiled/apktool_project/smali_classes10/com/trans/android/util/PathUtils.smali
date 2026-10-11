.class public Lcom/trans/android/util/PathUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public static getTextPath(Landroid/graphics/Paint;Ljava/lang/String;)Landroid/graphics/Path;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0, v0}, Lcom/trans/android/util/PathUtils;->getTextPath(Landroid/graphics/Paint;Ljava/lang/String;FF)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static getTextPath(Landroid/graphics/Paint;Ljava/lang/String;FF)Landroid/graphics/Path;
    .locals 8

    .line 2
    new-instance v7, Landroid/graphics/Path;

    invoke-direct {v7}, Landroid/graphics/Path;-><init>()V

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v5, p3

    move-object v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V

    return-object v7
.end method

.method private static isValidCoords([F)Z
    .locals 4

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget v3, p0, v2

    invoke-static {v3}, Ljava/lang/Float;->isNaN(F)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public static toAndroidPath(Ljava/awt/Shape;)Landroid/graphics/Path;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/trans/android/util/PathUtils;->toAndroidPath(Ljava/awt/Shape;Ljava/awt/geom/AffineTransform;)Landroid/graphics/Path;

    move-result-object p0

    return-object p0
.end method

.method public static toAndroidPath(Ljava/awt/Shape;Ljava/awt/geom/AffineTransform;)Landroid/graphics/Path;
    .locals 9

    .line 2
    invoke-interface {p0, p1}, Ljava/awt/Shape;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object p0

    .line 3
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    const/4 v0, 0x6

    new-array v7, v0, [F

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5
    invoke-interface {p0}, Ljava/awt/geom/PathIterator;->getWindingRule()I

    move-result v0

    if-nez v0, :cond_0

    .line 6
    sget-object v0, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_1

    .line 7
    :cond_0
    sget-object v0, Landroid/graphics/Path$FillType;->WINDING:Landroid/graphics/Path$FillType;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    .line 8
    :goto_1
    invoke-interface {p0, v7}, Ljava/awt/geom/PathIterator;->currentSegment([F)I

    move-result v0

    .line 9
    invoke-static {v7}, Lcom/trans/android/util/PathUtils;->isValidCoords([F)Z

    move-result v1

    if-nez v1, :cond_1

    .line 10
    invoke-interface {p0}, Ljava/awt/geom/PathIterator;->next()V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    if-eq v0, v2, :cond_5

    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v5, 0x4

    if-eq v0, v3, :cond_3

    if-eq v0, v5, :cond_2

    goto :goto_2

    .line 11
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    goto :goto_2

    :cond_3
    aget v1, v7, v1

    aget v2, v7, v2

    aget v4, v7, v4

    aget v6, v7, v3

    aget v5, v7, v5

    const/4 v0, 0x5

    aget v8, v7, v0

    move-object v0, p1

    move v3, v4

    move v4, v6

    move v6, v8

    .line 12
    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_2

    :cond_4
    aget v0, v7, v1

    aget v1, v7, v2

    aget v2, v7, v4

    aget v3, v7, v3

    .line 13
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Path;->quadTo(FFFF)V

    goto :goto_2

    :cond_5
    aget v0, v7, v1

    aget v1, v7, v2

    .line 14
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    :cond_6
    aget v0, v7, v1

    aget v1, v7, v2

    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 16
    :goto_2
    invoke-interface {p0}, Ljava/awt/geom/PathIterator;->next()V

    goto :goto_0

    :cond_7
    return-object p1
.end method

.method public static toJavaShape(Landroid/graphics/Path;)Ljava/awt/Shape;
    .locals 0

    invoke-static {p0}, Lcom/trans/android/util/PathUtils;->toJavePath(Landroid/graphics/Path;)Ljava/awt/geom/GeneralPath;

    move-result-object p0

    return-object p0
.end method

.method public static toJavePath(Landroid/graphics/Path;)Ljava/awt/geom/GeneralPath;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0, v0}, Lcom/trans/android/util/PathUtils;->toJavePath(Landroid/graphics/Path;FF)Ljava/awt/geom/GeneralPath;

    move-result-object p0

    return-object p0
.end method

.method public static toJavePath(Landroid/graphics/Path;FF)Ljava/awt/geom/GeneralPath;
    .locals 10

    .line 2
    new-instance v0, Ljava/awt/geom/GeneralPath;

    invoke-direct {v0}, Ljava/awt/geom/GeneralPath;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [F

    .line 3
    new-instance v2, Landroid/graphics/PathMeasure;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Landroid/graphics/PathMeasure;-><init>(Landroid/graphics/Path;Z)V

    const/4 p0, 0x0

    move v4, p0

    .line 4
    :cond_0
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    cmpg-float v8, v7, v5

    if-gez v8, :cond_2

    const/4 v8, 0x0

    .line 5
    invoke-virtual {v2, v7, v1, v8}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    cmpl-float v8, v7, v6

    if-nez v8, :cond_1

    aget v8, v1, p0

    aget v9, v1, v3

    .line 6
    invoke-virtual {v0, v8, v9}, Ljava/awt/geom/Path2D$Float;->moveTo(FF)V

    goto :goto_1

    :cond_1
    aget v8, v1, p0

    aget v9, v1, v3

    .line 7
    invoke-virtual {v0, v8, v9}, Ljava/awt/geom/Path2D$Float;->lineTo(FF)V

    :goto_1
    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v7, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {v2}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v5

    if-nez v5, :cond_0

    if-lez v4, :cond_3

    .line 9
    invoke-virtual {v0}, Ljava/awt/geom/Path2D;->closePath()V

    :cond_3
    cmpl-float p0, p1, v6

    if-nez p0, :cond_4

    cmpl-float p0, p2, v6

    if-eqz p0, :cond_5

    .line 10
    :cond_4
    new-instance p0, Ljava/awt/geom/AffineTransform;

    invoke-direct {p0}, Ljava/awt/geom/AffineTransform;-><init>()V

    float-to-double v1, p1

    float-to-double p1, p2

    .line 11
    invoke-virtual {p0, v1, v2, p1, p2}, Ljava/awt/geom/AffineTransform;->translate(DD)V

    .line 12
    invoke-virtual {v0, p0}, Ljava/awt/geom/Path2D$Float;->transform(Ljava/awt/geom/AffineTransform;)V

    :cond_5
    return-object v0
.end method
