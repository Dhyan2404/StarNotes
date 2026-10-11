.class public Lorg/apache/poi/sl/draw/geom/OutlineDecoration;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private coordsList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "[F>;"
        }
    .end annotation
.end field

.field private outline:Lorg/apache/poi/sl/draw/geom/Outline;

.field private types:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/poi/sl/draw/geom/Outline;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->outline:Lorg/apache/poi/sl/draw/geom/Outline;

    return-void
.end method

.method private convert([FLjava/awt/geom/Point2D$Float;)[[F
    .locals 6

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-nez p2, :cond_0

    move v1, p0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    array-length v2, p1

    const/4 v3, 0x2

    div-int/2addr v2, v3

    add-int/2addr v2, v1

    filled-new-array {v2, v3}, [I

    move-result-object v2

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[F

    if-eqz p2, :cond_1

    aget-object v4, v2, p0

    iget v5, p2, Ljava/awt/geom/Point2D$Float;->x:F

    aput v5, v4, p0

    iget p2, p2, Ljava/awt/geom/Point2D$Float;->y:F

    aput p2, v4, v0

    :cond_1
    move p2, v1

    :goto_1
    array-length v0, v2

    if-ge p2, v0, :cond_3

    move v0, p0

    :goto_2
    if-ge v0, v3, :cond_2

    aget-object v4, v2, p2

    sub-int v5, p2, v1

    mul-int/2addr v5, v3

    add-int/2addr v5, v0

    aget v5, p1, v5

    aput v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method private getHeadDecorationAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 13

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->initCoords()V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v3, v0

    move v2, v1

    :goto_0
    iget-object v4, p0, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->types:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    iget-object v4, p0, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->coordsList:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    iget-object v5, p0, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->types:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    if-eq v5, v6, :cond_2

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-direct {p0, v4, v3}, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->convert([FLjava/awt/geom/Point2D$Float;)[[F

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->getHeadAnchor([[F)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x4

    new-array v2, v0, [F

    invoke-static {v4, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, v2, v3}, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->convert([FLjava/awt/geom/Point2D$Float;)[[F

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->getHeadAnchor([[F)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0

    :cond_2
    if-nez v3, :cond_3

    new-instance v3, Ljava/awt/geom/Point2D$Float;

    aget v5, v4, v1

    aget v4, v4, v6

    invoke-direct {v3, v5, v4}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    goto :goto_1

    :cond_3
    iget v5, v3, Ljava/awt/geom/Point2D$Float;->x:F

    aget v7, v4, v1

    invoke-static {v5, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_5

    iget v5, v3, Ljava/awt/geom/Point2D$Float;->y:F

    aget v7, v4, v6

    invoke-static {v5, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    new-instance p0, Ljava/awt/geom/Rectangle2D$Double;

    invoke-virtual {v3}, Ljava/awt/geom/Point2D$Float;->getX()D

    move-result-wide v7

    invoke-virtual {v3}, Ljava/awt/geom/Point2D$Float;->getY()D

    move-result-wide v9

    aget v0, v4, v1

    float-to-double v0, v0

    invoke-virtual {v3}, Ljava/awt/geom/Point2D$Float;->getX()D

    move-result-wide v11

    sub-double/2addr v0, v11

    aget v2, v4, v6

    float-to-double v4, v2

    invoke-virtual {v3}, Ljava/awt/geom/Point2D$Float;->getY()D

    move-result-wide v2

    sub-double v11, v4, v2

    move-object v4, p0

    move-wide v5, v7

    move-wide v7, v9

    move-wide v9, v0

    invoke-direct/range {v4 .. v12}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object p0

    :cond_6
    return-object v0
.end method

.method private getTailDecorationAnchor()Ljava/awt/geom/Rectangle2D;
    .locals 13

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->initCoords()V

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->types:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    move-object v3, v2

    :goto_0
    if-ltz v0, :cond_6

    iget-object v4, p0, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->coordsList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [F

    iget-object v5, p0, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->types:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_2

    if-eq v5, v1, :cond_2

    const/4 v7, 0x2

    if-eq v5, v7, :cond_1

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p0, v4}, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->getTailAnchor([F)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x4

    new-array v1, v0, [F

    invoke-static {v4, v6, v1, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {p0, v1}, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->getTailAnchor([F)Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    return-object p0

    :cond_2
    if-nez v3, :cond_3

    new-instance v3, Ljava/awt/geom/Point2D$Float;

    aget v5, v4, v6

    aget v4, v4, v1

    invoke-direct {v3, v5, v4}, Ljava/awt/geom/Point2D$Float;-><init>(FF)V

    goto :goto_1

    :cond_3
    iget v5, v3, Ljava/awt/geom/Point2D$Float;->x:F

    aget v7, v4, v6

    invoke-static {v5, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-nez v5, :cond_5

    iget v5, v3, Ljava/awt/geom/Point2D$Float;->y:F

    aget v7, v4, v1

    invoke-static {v5, v7}, Ljava/lang/Float;->compare(FF)I

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_5
    :goto_2
    new-instance p0, Ljava/awt/geom/Rectangle2D$Double;

    aget v0, v4, v6

    float-to-double v7, v0

    aget v0, v4, v1

    float-to-double v9, v0

    invoke-virtual {v3}, Ljava/awt/geom/Point2D$Float;->getX()D

    move-result-wide v11

    aget v0, v4, v6

    float-to-double v5, v0

    sub-double/2addr v11, v5

    invoke-virtual {v3}, Ljava/awt/geom/Point2D$Float;->getY()D

    move-result-wide v2

    aget v0, v4, v1

    float-to-double v0, v0

    sub-double v0, v2, v0

    move-object v4, p0

    move-wide v5, v7

    move-wide v7, v9

    move-wide v9, v11

    move-wide v11, v0

    invoke-direct/range {v4 .. v12}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object p0

    :cond_6
    return-object v2
.end method

.method private initCoords()V
    .locals 4

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->types:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->coordsList:Ljava/util/List;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->types:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->coordsList:Ljava/util/List;

    iget-object v0, p0, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->outline:Lorg/apache/poi/sl/draw/geom/Outline;

    invoke-virtual {v0}, Lorg/apache/poi/sl/draw/geom/Outline;->getOutline()Ljava/awt/Shape;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/awt/Shape;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/awt/geom/PathIterator;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x6

    new-array v1, v1, [F

    invoke-interface {v0, v1}, Ljava/awt/geom/PathIterator;->currentSegment([F)I

    move-result v2

    iget-object v3, p0, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->types:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->coordsList:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Ljava/awt/geom/PathIterator;->next()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public getHeadAnchor([[F)Ljava/awt/geom/Rectangle2D;
    .locals 12

    const/16 p0, 0x14

    invoke-static {p1, p0}, Lorg/apache/poi/util/BezierUtils;->bezierCoords([[FI)[[F

    move-result-object p0

    new-instance p1, Ljava/awt/geom/Rectangle2D$Double;

    const/4 v0, 0x0

    aget-object v1, p0, v0

    aget v2, v1, v0

    float-to-double v3, v2

    const/4 v5, 0x1

    aget v1, v1, v5

    float-to-double v6, v1

    const/4 v8, 0x4

    aget-object p0, p0, v8

    aget v0, p0, v0

    sub-float/2addr v0, v2

    float-to-double v8, v0

    aget p0, p0, v5

    sub-float/2addr p0, v1

    float-to-double v10, p0

    move-object v0, p1

    move-wide v1, v3

    move-wide v3, v6

    move-wide v5, v8

    move-wide v7, v10

    invoke-direct/range {v0 .. v8}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object p1
.end method

.method public getHeadDecoration()[D
    .locals 5

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->getHeadDecorationAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v1

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const/4 p0, 0x2

    aput-wide v1, v0, p0

    return-object v0
.end method

.method public getTailAnchor([F)Ljava/awt/geom/Rectangle2D;
    .locals 13

    const/4 p0, 0x2

    const/16 v0, 0x14

    invoke-static {p1, p0, v0}, Lorg/apache/poi/util/BezierUtils;->bezierCoords([FII)[[F

    move-result-object p0

    new-instance p1, Ljava/awt/geom/Rectangle2D$Double;

    const/16 v1, 0x10

    aget-object v1, p0, v1

    const/4 v2, 0x0

    aget v3, v1, v2

    float-to-double v4, v3

    const/4 v6, 0x1

    aget v1, v1, v6

    float-to-double v7, v1

    aget-object p0, p0, v0

    aget v0, p0, v2

    sub-float/2addr v0, v3

    float-to-double v9, v0

    aget p0, p0, v6

    sub-float/2addr p0, v1

    float-to-double v11, p0

    move-object v1, p1

    move-wide v2, v4

    move-wide v4, v7

    move-wide v6, v9

    move-wide v8, v11

    invoke-direct/range {v1 .. v9}, Ljava/awt/geom/Rectangle2D$Double;-><init>(DDDD)V

    return-object p1
.end method

.method public getTailDecoration()[D
    .locals 5

    invoke-direct {p0}, Lorg/apache/poi/sl/draw/geom/OutlineDecoration;->getTailDecorationAnchor()Ljava/awt/geom/Rectangle2D;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getMaxX()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getMaxY()D

    move-result-wide v2

    aput-wide v2, v0, v1

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v1

    invoke-virtual {p0}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v1

    const/4 p0, 0x2

    aput-wide v1, v0, p0

    return-object v0
.end method
