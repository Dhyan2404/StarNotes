.class public Lsun/java2d/pipe/PixelToParallelogramConverter;
.super Lsun/java2d/pipe/PixelToShapeConverter;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/pipe/ShapeDrawPipe;


# instance fields
.field adjustfill:Z

.field minPenSize:D

.field normPosition:D

.field normRoundingBias:D

.field outrenderer:Lsun/java2d/pipe/ParallelogramPipe;


# direct methods
.method public constructor <init>(Lsun/java2d/pipe/ShapeDrawPipe;Lsun/java2d/pipe/ParallelogramPipe;DDZ)V
    .locals 0

    invoke-direct {p0, p1}, Lsun/java2d/pipe/PixelToShapeConverter;-><init>(Lsun/java2d/pipe/ShapeDrawPipe;)V

    iput-object p2, p0, Lsun/java2d/pipe/PixelToParallelogramConverter;->outrenderer:Lsun/java2d/pipe/ParallelogramPipe;

    iput-wide p3, p0, Lsun/java2d/pipe/PixelToParallelogramConverter;->minPenSize:D

    iput-wide p5, p0, Lsun/java2d/pipe/PixelToParallelogramConverter;->normPosition:D

    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    sub-double/2addr p1, p5

    iput-wide p1, p0, Lsun/java2d/pipe/PixelToParallelogramConverter;->normRoundingBias:D

    iput-boolean p7, p0, Lsun/java2d/pipe/PixelToParallelogramConverter;->adjustfill:Z

    return-void
.end method

.method public static len(DD)D
    .locals 3

    const-wide/16 v0, 0x0

    cmpl-double v2, p0, v0

    if-nez v2, :cond_0

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    goto :goto_0

    :cond_0
    cmpl-double v0, p2, v0

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    goto :goto_0

    :cond_1
    mul-double/2addr p0, p0

    mul-double/2addr p2, p2

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method


# virtual methods
.method public draw(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V
    .locals 13

    iget v0, p1, Lsun/java2d/SunGraphics2D;->strokeState:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_2

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->stroke:Ljava/awt/Stroke;

    check-cast v0, Ljava/awt/BasicStroke;

    instance-of v1, p2, Ljava/awt/geom/Rectangle2D;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/awt/BasicStroke;->getLineJoin()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/awt/BasicStroke;->getDashArray()[F

    move-result-object v1

    if-nez v1, :cond_2

    check-cast p2, Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v7

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v9

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v3

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v5

    const-wide/16 v1, 0x0

    cmpl-double p2, v7, v1

    if-ltz p2, :cond_0

    cmpl-double p2, v9, v1

    if-ltz p2, :cond_0

    invoke-virtual {v0}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result p2

    float-to-double v11, p2

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v12}, Lsun/java2d/pipe/PixelToParallelogramConverter;->drawRectangle(Lsun/java2d/SunGraphics2D;DDDDD)V

    :cond_0
    return-void

    :cond_1
    instance-of v0, p2, Ljava/awt/geom/Line2D;

    if-eqz v0, :cond_2

    move-object v0, p2

    check-cast v0, Ljava/awt/geom/Line2D;

    invoke-virtual {v0}, Ljava/awt/geom/Line2D;->getX1()D

    move-result-wide v3

    invoke-virtual {v0}, Ljava/awt/geom/Line2D;->getY1()D

    move-result-wide v5

    invoke-virtual {v0}, Ljava/awt/geom/Line2D;->getX2()D

    move-result-wide v7

    invoke-virtual {v0}, Ljava/awt/geom/Line2D;->getY2()D

    move-result-wide v9

    move-object v1, p0

    move-object v2, p1

    invoke-virtual/range {v1 .. v10}, Lsun/java2d/pipe/PixelToParallelogramConverter;->drawGeneralLine(Lsun/java2d/SunGraphics2D;DDDD)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object p0, p0, Lsun/java2d/pipe/PixelToShapeConverter;->outpipe:Lsun/java2d/pipe/ShapeDrawPipe;

    invoke-interface {p0, p1, p2}, Lsun/java2d/pipe/ShapeDrawPipe;->draw(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method

.method public drawGeneralLine(Lsun/java2d/SunGraphics2D;DDDD)Z
    .locals 34

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Lsun/java2d/SunGraphics2D;->strokeState:I

    const/4 v3, 0x0

    const/4 v4, 0x3

    if-eq v2, v4, :cond_e

    const/4 v12, 0x1

    if-ne v2, v12, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object v2, v1, Lsun/java2d/SunGraphics2D;->stroke:Ljava/awt/Stroke;

    check-cast v2, Ljava/awt/BasicStroke;

    invoke-virtual {v2}, Ljava/awt/BasicStroke;->getEndCap()I

    move-result v5

    if-eq v5, v12, :cond_d

    invoke-virtual {v2}, Ljava/awt/BasicStroke;->getDashArray()[F

    move-result-object v6

    if-eqz v6, :cond_1

    goto/16 :goto_5

    :cond_1
    invoke-virtual {v2}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result v2

    float-to-double v6, v2

    sub-double v8, p6, p2

    sub-double v10, p8, p4

    iget v2, v1, Lsun/java2d/SunGraphics2D;->transformState:I

    const/4 v13, 0x2

    if-eqz v2, :cond_5

    if-eq v2, v12, :cond_4

    if-eq v2, v13, :cond_4

    const/4 v14, 0x4

    if-eq v2, v4, :cond_3

    if-ne v2, v14, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "unknown TRANSFORM state..."

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    new-array v2, v14, [D

    aput-wide p2, v2, v3

    aput-wide p4, v2, v12

    aput-wide p6, v2, v13

    aput-wide p8, v2, v4

    iget-object v14, v1, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x2

    move-object v15, v2

    move-object/from16 v17, v2

    invoke-virtual/range {v14 .. v19}, Ljava/awt/geom/AffineTransform;->transform([DI[DII)V

    aget-wide v14, v2, v3

    aget-wide v16, v2, v12

    aget-wide v18, v2, v13

    aget-wide v20, v2, v4

    move-wide/from16 v3, v16

    move-wide/from16 v22, v18

    move-wide/from16 v24, v20

    goto :goto_1

    :cond_4
    iget-object v2, v1, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v14

    iget-object v2, v1, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v16

    add-double v18, p2, v14

    add-double v20, p4, v16

    add-double v14, p6, v14

    add-double v16, p8, v16

    move-wide/from16 v22, v14

    move-wide/from16 v24, v16

    move-wide/from16 v14, v18

    move-wide/from16 v3, v20

    goto :goto_1

    :cond_5
    move-wide/from16 v14, p2

    move-wide/from16 v3, p4

    move-wide/from16 v22, p6

    move-wide/from16 v24, p8

    :goto_1
    iget v2, v1, Lsun/java2d/SunGraphics2D;->strokeHint:I

    if-eq v2, v13, :cond_7

    iget v2, v1, Lsun/java2d/SunGraphics2D;->strokeState:I

    if-nez v2, :cond_6

    iget-object v2, v0, Lsun/java2d/pipe/PixelToParallelogramConverter;->outrenderer:Lsun/java2d/pipe/ParallelogramPipe;

    instance-of v2, v2, Lsun/java2d/pipe/PixelDrawPipe;

    if-eqz v2, :cond_6

    iget v2, v1, Lsun/java2d/SunGraphics2D;->transX:I

    int-to-double v5, v2

    sub-double/2addr v14, v5

    invoke-static {v14, v15}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v2, v5

    iget v5, v1, Lsun/java2d/SunGraphics2D;->transY:I

    int-to-double v5, v5

    sub-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v4, v1, Lsun/java2d/SunGraphics2D;->transX:I

    int-to-double v4, v4

    move-wide/from16 v6, v22

    sub-double v22, v6, v4

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v4, v4

    iget v5, v1, Lsun/java2d/SunGraphics2D;->transY:I

    int-to-double v5, v5

    move-wide/from16 v7, v24

    sub-double v24, v7, v5

    invoke-static/range {v24 .. v25}, Ljava/lang/Math;->floor(D)D

    move-result-wide v5

    double-to-int v5, v5

    iget-object v0, v0, Lsun/java2d/pipe/PixelToParallelogramConverter;->outrenderer:Lsun/java2d/pipe/ParallelogramPipe;

    check-cast v0, Lsun/java2d/pipe/PixelDrawPipe;

    move-object/from16 p2, v0

    move-object/from16 p3, p1

    move/from16 p4, v2

    move/from16 p5, v3

    move/from16 p6, v4

    move/from16 p7, v5

    invoke-interface/range {p2 .. p7}, Lsun/java2d/pipe/PixelDrawPipe;->drawLine(Lsun/java2d/SunGraphics2D;IIII)V

    return v12

    :cond_6
    move/from16 v20, v5

    move-wide/from16 v12, v22

    move-wide/from16 v21, v6

    move-wide/from16 v5, v24

    invoke-virtual {v0, v14, v15}, Lsun/java2d/pipe/PixelToParallelogramConverter;->normalize(D)D

    move-result-wide v14

    invoke-virtual {v0, v3, v4}, Lsun/java2d/pipe/PixelToParallelogramConverter;->normalize(D)D

    move-result-wide v3

    invoke-virtual {v0, v12, v13}, Lsun/java2d/pipe/PixelToParallelogramConverter;->normalize(D)D

    move-result-wide v12

    invoke-virtual {v0, v5, v6}, Lsun/java2d/pipe/PixelToParallelogramConverter;->normalize(D)D

    move-result-wide v24

    goto :goto_2

    :cond_7
    move/from16 v20, v5

    move-wide/from16 v12, v22

    move-wide/from16 v21, v6

    move-wide/from16 v5, v24

    :goto_2
    iget v2, v1, Lsun/java2d/SunGraphics2D;->transformState:I

    const-wide/16 v5, 0x0

    const/4 v7, 0x3

    if-lt v2, v7, :cond_9

    invoke-static {v8, v9, v10, v11}, Lsun/java2d/pipe/PixelToParallelogramConverter;->len(DD)D

    move-result-wide v26

    cmpl-double v2, v26, v5

    if-nez v2, :cond_8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v26, v8

    :cond_8
    const/4 v2, 0x2

    new-array v7, v2, [D

    div-double v10, v10, v26

    const/4 v2, 0x0

    aput-wide v10, v7, v2

    neg-double v8, v8

    div-double v8, v8, v26

    const/4 v10, 0x1

    aput-wide v8, v7, v10

    iget-object v8, v1, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    const/16 v30, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x1

    move-object/from16 v28, v8

    move-object/from16 v29, v7

    move-object/from16 v31, v7

    invoke-virtual/range {v28 .. v33}, Ljava/awt/geom/AffineTransform;->deltaTransform([DI[DII)V

    const/4 v2, 0x0

    aget-wide v8, v7, v2

    const/4 v2, 0x1

    aget-wide v10, v7, v2

    invoke-static {v8, v9, v10, v11}, Lsun/java2d/pipe/PixelToParallelogramConverter;->len(DD)D

    move-result-wide v7

    mul-double v7, v7, v21

    goto :goto_3

    :cond_9
    move-wide/from16 v7, v21

    :goto_3
    iget-wide v9, v0, Lsun/java2d/pipe/PixelToParallelogramConverter;->minPenSize:D

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(DD)D

    move-result-wide v7

    sub-double/2addr v12, v14

    sub-double v9, v24, v3

    invoke-static {v12, v13, v9, v10}, Lsun/java2d/pipe/PixelToParallelogramConverter;->len(DD)D

    move-result-wide v16

    cmpl-double v2, v16, v5

    if-nez v2, :cond_b

    if-nez v20, :cond_a

    const/16 v18, 0x1

    return v18

    :cond_a
    const/16 v18, 0x1

    move-wide/from16 v16, v7

    goto :goto_4

    :cond_b
    const/16 v18, 0x1

    mul-double v5, v7, v12

    div-double v5, v5, v16

    mul-double/2addr v7, v9

    div-double v7, v7, v16

    move-wide/from16 v16, v5

    move-wide v5, v7

    :goto_4
    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    div-double v21, v5, v7

    add-double v14, v14, v21

    div-double v7, v16, v7

    sub-double/2addr v3, v7

    move/from16 v2, v20

    const/4 v11, 0x2

    if-ne v2, v11, :cond_c

    sub-double/2addr v14, v7

    sub-double v3, v3, v21

    add-double v12, v12, v16

    add-double/2addr v9, v5

    :cond_c
    move-wide/from16 v21, v9

    move-wide/from16 v19, v12

    move-wide v10, v14

    move-wide v12, v3

    iget-object v0, v0, Lsun/java2d/pipe/PixelToParallelogramConverter;->outrenderer:Lsun/java2d/pipe/ParallelogramPipe;

    neg-double v14, v5

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v23, v18

    move-wide/from16 v18, v19

    move-wide/from16 v20, v21

    invoke-interface/range {v0 .. v21}, Lsun/java2d/pipe/ParallelogramPipe;->fillParallelogram(Lsun/java2d/SunGraphics2D;DDDDDDDDDD)V

    return v23

    :cond_d
    :goto_5
    move v0, v3

    return v0

    :cond_e
    :goto_6
    move v0, v3

    return v0
.end method

.method public drawLine(Lsun/java2d/SunGraphics2D;IIII)V
    .locals 10

    int-to-double v2, p2

    int-to-double v4, p3

    int-to-double v6, p4

    int-to-double v8, p5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lsun/java2d/pipe/PixelToParallelogramConverter;->drawGeneralLine(Lsun/java2d/SunGraphics2D;DDDD)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lsun/java2d/pipe/PixelToShapeConverter;->drawLine(Lsun/java2d/SunGraphics2D;IIII)V

    :cond_0
    return-void
.end method

.method public drawRect(Lsun/java2d/SunGraphics2D;IIII)V
    .locals 16

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v0, p4

    move/from16 v4, p5

    if-ltz v0, :cond_2

    if-ltz v4, :cond_2

    iget v5, v1, Lsun/java2d/SunGraphics2D;->strokeState:I

    const/4 v6, 0x3

    if-ge v5, v6, :cond_1

    iget-object v5, v1, Lsun/java2d/SunGraphics2D;->stroke:Ljava/awt/Stroke;

    check-cast v5, Ljava/awt/BasicStroke;

    if-lez v0, :cond_0

    if-lez v4, :cond_0

    invoke-virtual {v5}, Ljava/awt/BasicStroke;->getLineJoin()I

    move-result v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Ljava/awt/BasicStroke;->getDashArray()[F

    move-result-object v6

    if-nez v6, :cond_1

    invoke-virtual {v5}, Ljava/awt/BasicStroke;->getLineWidth()F

    move-result v5

    float-to-double v10, v5

    int-to-double v5, v2

    int-to-double v7, v3

    int-to-double v12, v0

    int-to-double v14, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v5

    move-wide v4, v7

    move-wide v6, v12

    move-wide v8, v14

    invoke-virtual/range {v0 .. v11}, Lsun/java2d/pipe/PixelToParallelogramConverter;->drawRectangle(Lsun/java2d/SunGraphics2D;DDDDD)V

    return-void

    :cond_0
    add-int v5, v2, v0

    add-int v6, v3, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move v4, v5

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lsun/java2d/pipe/PixelToParallelogramConverter;->drawLine(Lsun/java2d/SunGraphics2D;IIII)V

    return-void

    :cond_1
    invoke-super/range {p0 .. p5}, Lsun/java2d/pipe/PixelToShapeConverter;->drawRect(Lsun/java2d/SunGraphics2D;IIII)V

    :cond_2
    return-void
.end method

.method public drawRectangle(Lsun/java2d/SunGraphics2D;DDDDD)V
    .locals 38

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v3

    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v5

    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v7

    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v9

    mul-double v11, p2, v3

    mul-double v13, p4, v7

    add-double/2addr v11, v13

    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v13

    add-double/2addr v11, v13

    mul-double v13, p2, v5

    mul-double v15, p4, v9

    add-double/2addr v13, v15

    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v15

    add-double/2addr v13, v15

    invoke-static {v3, v4, v5, v6}, Lsun/java2d/pipe/PixelToParallelogramConverter;->len(DD)D

    move-result-wide v15

    move-wide/from16 v17, v13

    mul-double v13, v15, p10

    invoke-static {v7, v8, v9, v10}, Lsun/java2d/pipe/PixelToParallelogramConverter;->len(DD)D

    move-result-wide v15

    move-wide/from16 v19, v13

    mul-double v13, v15, p10

    mul-double v3, v3, p6

    mul-double v5, v5, p6

    mul-double v7, v7, p8

    mul-double v9, v9, p8

    iget v2, v1, Lsun/java2d/SunGraphics2D;->strokeState:I

    const/4 v15, 0x3

    if-ge v2, v15, :cond_0

    iget v2, v1, Lsun/java2d/SunGraphics2D;->strokeHint:I

    const/4 v15, 0x2

    if-eq v2, v15, :cond_0

    invoke-virtual {v0, v11, v12}, Lsun/java2d/pipe/PixelToParallelogramConverter;->normalize(D)D

    move-result-wide v15

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Lsun/java2d/pipe/PixelToParallelogramConverter;->normalize(D)D

    move-result-wide v17

    add-double/2addr v3, v11

    invoke-virtual {v0, v3, v4}, Lsun/java2d/pipe/PixelToParallelogramConverter;->normalize(D)D

    move-result-wide v3

    sub-double/2addr v3, v15

    add-double/2addr v5, v1

    invoke-virtual {v0, v5, v6}, Lsun/java2d/pipe/PixelToParallelogramConverter;->normalize(D)D

    move-result-wide v5

    sub-double v5, v5, v17

    add-double/2addr v11, v7

    invoke-virtual {v0, v11, v12}, Lsun/java2d/pipe/PixelToParallelogramConverter;->normalize(D)D

    move-result-wide v7

    sub-double/2addr v7, v15

    add-double/2addr v1, v9

    invoke-virtual {v0, v1, v2}, Lsun/java2d/pipe/PixelToParallelogramConverter;->normalize(D)D

    move-result-wide v1

    sub-double v1, v1, v17

    move-wide v8, v7

    move-wide/from16 p10, v15

    move-wide/from16 v34, v1

    move-wide/from16 v36, v3

    move-wide v2, v5

    move-wide/from16 v6, v34

    move-wide/from16 v4, v36

    goto :goto_0

    :cond_0
    move-wide/from16 v1, v17

    move-wide/from16 v17, v1

    move-wide/from16 p10, v11

    move-wide/from16 v34, v5

    move-wide/from16 v36, v7

    move-wide v6, v9

    move-wide v4, v3

    move-wide/from16 v2, v34

    move-wide/from16 v8, v36

    :goto_0
    iget-wide v10, v0, Lsun/java2d/pipe/PixelToParallelogramConverter;->minPenSize:D

    move-wide v15, v6

    move-wide/from16 v6, v19

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v26

    iget-wide v6, v0, Lsun/java2d/pipe/PixelToParallelogramConverter;->minPenSize:D

    invoke-static {v13, v14, v6, v7}, Ljava/lang/Math;->max(DD)D

    move-result-wide v28

    invoke-static {v4, v5, v2, v3}, Lsun/java2d/pipe/PixelToParallelogramConverter;->len(DD)D

    move-result-wide v22

    move-wide v6, v15

    invoke-static {v8, v9, v6, v7}, Lsun/java2d/pipe/PixelToParallelogramConverter;->len(DD)D

    move-result-wide v24

    cmpl-double v1, v26, v22

    if-gez v1, :cond_2

    cmpl-double v1, v28, v24

    if-ltz v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lsun/java2d/pipe/PixelToParallelogramConverter;->outrenderer:Lsun/java2d/pipe/ParallelogramPipe;

    add-double v10, p2, p6

    move-wide/from16 v20, v6

    move-wide v6, v10

    add-double v10, p4, p8

    move-wide/from16 v30, v8

    move-wide v8, v10

    div-double v22, v26, v22

    div-double v24, v28, v24

    move-object/from16 v1, p1

    move-wide/from16 v32, v2

    move-wide/from16 v2, p2

    move-wide v14, v4

    move-wide/from16 v4, p4

    move-wide/from16 v10, p10

    move-wide/from16 v12, v17

    move-wide/from16 v16, v32

    move-wide/from16 v18, v30

    invoke-interface/range {v0 .. v25}, Lsun/java2d/pipe/ParallelogramPipe;->drawParallelogram(Lsun/java2d/SunGraphics2D;DDDDDDDDDDDD)V

    goto :goto_2

    :cond_2
    :goto_1
    move-wide/from16 v32, v2

    move-wide v14, v4

    move-wide/from16 v20, v6

    move-wide/from16 v30, v8

    add-double v6, p2, p6

    add-double v8, p4, p8

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide/from16 v10, p10

    move-wide/from16 v12, v17

    move-wide/from16 v16, v32

    move-wide/from16 v18, v30

    invoke-virtual/range {v0 .. v29}, Lsun/java2d/pipe/PixelToParallelogramConverter;->fillOuterParallelogram(Lsun/java2d/SunGraphics2D;DDDDDDDDDDDDDD)V

    :goto_2
    return-void
.end method

.method public fill(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V
    .locals 10

    instance-of v0, p2, Ljava/awt/geom/Rectangle2D;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v6

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v8

    const-wide/16 v0, 0x0

    cmpl-double v2, v6, v0

    if-lez v2, :cond_0

    cmpl-double v0, v8, v0

    if-lez v0, :cond_0

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    invoke-virtual {p2}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lsun/java2d/pipe/PixelToParallelogramConverter;->fillRectangle(Lsun/java2d/SunGraphics2D;DDDD)V

    :cond_0
    return-void

    :cond_1
    iget-object p0, p0, Lsun/java2d/pipe/PixelToShapeConverter;->outpipe:Lsun/java2d/pipe/ShapeDrawPipe;

    invoke-interface {p0, p1, p2}, Lsun/java2d/pipe/ShapeDrawPipe;->fill(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method

.method public fillOuterParallelogram(Lsun/java2d/SunGraphics2D;DDDDDDDDDDDDDD)V
    .locals 36

    div-double v0, p14, p22

    div-double v2, p16, p22

    div-double v4, p18, p24

    div-double v6, p20, p24

    const-wide/16 v8, 0x0

    cmpl-double v10, p22, v8

    if-nez v10, :cond_1

    cmpl-double v0, p24, v8

    if-nez v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    move-wide v2, v8

    goto :goto_0

    :cond_0
    move-wide v2, v4

    move-wide v0, v6

    :goto_0
    neg-double v4, v2

    move-wide v6, v0

    move-wide/from16 v34, v2

    move-wide v2, v4

    move-wide/from16 v4, v34

    goto :goto_1

    :cond_1
    cmpl-double v8, p24, v8

    if-nez v8, :cond_2

    neg-double v6, v0

    move-wide v4, v2

    :cond_2
    :goto_1
    mul-double v0, v0, p26

    mul-double v2, v2, p26

    mul-double v4, v4, p28

    mul-double v6, v6, p28

    add-double v8, v0, v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v8, v10

    sub-double v22, p10, v8

    add-double v8, v2, v6

    div-double/2addr v8, v10

    sub-double v24, p12, v8

    add-double v26, p14, v0

    add-double v28, p16, v2

    add-double v30, p18, v4

    add-double v32, p20, v6

    move-object/from16 v0, p0

    iget-object v12, v0, Lsun/java2d/pipe/PixelToParallelogramConverter;->outrenderer:Lsun/java2d/pipe/ParallelogramPipe;

    move-object/from16 v13, p1

    move-wide/from16 v14, p2

    move-wide/from16 v16, p4

    move-wide/from16 v18, p6

    move-wide/from16 v20, p8

    invoke-interface/range {v12 .. v33}, Lsun/java2d/pipe/ParallelogramPipe;->fillParallelogram(Lsun/java2d/SunGraphics2D;DDDDDDDDDD)V

    return-void
.end method

.method public fillRect(Lsun/java2d/SunGraphics2D;IIII)V
    .locals 10

    if-lez p4, :cond_0

    if-lez p5, :cond_0

    int-to-double v2, p2

    int-to-double v4, p3

    int-to-double v6, p4

    int-to-double v8, p5

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v9}, Lsun/java2d/pipe/PixelToParallelogramConverter;->fillRectangle(Lsun/java2d/SunGraphics2D;DDDD)V

    :cond_0
    return-void
.end method

.method public fillRectangle(Lsun/java2d/SunGraphics2D;DDDD)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v1, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getScaleX()D

    move-result-wide v3

    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getShearY()D

    move-result-wide v5

    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getShearX()D

    move-result-wide v7

    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getScaleY()D

    move-result-wide v9

    mul-double v11, p2, v3

    mul-double v13, p4, v7

    add-double/2addr v11, v13

    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getTranslateX()D

    move-result-wide v13

    add-double/2addr v11, v13

    mul-double v13, p2, v5

    mul-double v15, p4, v9

    add-double/2addr v13, v15

    invoke-virtual {v2}, Ljava/awt/geom/AffineTransform;->getTranslateY()D

    move-result-wide v15

    add-double/2addr v13, v15

    mul-double v3, v3, p6

    mul-double v5, v5, p6

    mul-double v7, v7, p8

    mul-double v9, v9, p8

    iget-boolean v2, v0, Lsun/java2d/pipe/PixelToParallelogramConverter;->adjustfill:Z

    if-eqz v2, :cond_0

    iget v2, v1, Lsun/java2d/SunGraphics2D;->strokeState:I

    const/4 v15, 0x3

    if-ge v2, v15, :cond_0

    iget v2, v1, Lsun/java2d/SunGraphics2D;->strokeHint:I

    const/4 v15, 0x2

    if-eq v2, v15, :cond_0

    invoke-virtual {v0, v11, v12}, Lsun/java2d/pipe/PixelToParallelogramConverter;->normalize(D)D

    move-result-wide v15

    invoke-virtual {v0, v13, v14}, Lsun/java2d/pipe/PixelToParallelogramConverter;->normalize(D)D

    move-result-wide v17

    add-double/2addr v3, v11

    invoke-virtual {v0, v3, v4}, Lsun/java2d/pipe/PixelToParallelogramConverter;->normalize(D)D

    move-result-wide v2

    sub-double/2addr v2, v15

    add-double/2addr v5, v13

    invoke-virtual {v0, v5, v6}, Lsun/java2d/pipe/PixelToParallelogramConverter;->normalize(D)D

    move-result-wide v4

    sub-double v4, v4, v17

    add-double/2addr v11, v7

    invoke-virtual {v0, v11, v12}, Lsun/java2d/pipe/PixelToParallelogramConverter;->normalize(D)D

    move-result-wide v6

    sub-double/2addr v6, v15

    add-double/2addr v13, v9

    invoke-virtual {v0, v13, v14}, Lsun/java2d/pipe/PixelToParallelogramConverter;->normalize(D)D

    move-result-wide v8

    sub-double v8, v8, v17

    move-wide/from16 v20, v8

    move-wide v10, v15

    move-wide/from16 v12, v17

    move-wide v14, v2

    move-wide/from16 v16, v4

    move-wide/from16 v18, v6

    goto :goto_0

    :cond_0
    move-wide/from16 v16, v5

    move-wide/from16 v18, v7

    move-wide/from16 v20, v9

    move-wide v10, v11

    move-wide v12, v13

    move-wide v14, v3

    :goto_0
    iget-object v0, v0, Lsun/java2d/pipe/PixelToParallelogramConverter;->outrenderer:Lsun/java2d/pipe/ParallelogramPipe;

    add-double v6, p2, p6

    add-double v8, p4, p8

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    invoke-interface/range {v0 .. v21}, Lsun/java2d/pipe/ParallelogramPipe;->fillParallelogram(Lsun/java2d/SunGraphics2D;DDDDDDDDDD)V

    return-void
.end method

.method public normalize(D)D
    .locals 2

    iget-wide v0, p0, Lsun/java2d/pipe/PixelToParallelogramConverter;->normRoundingBias:D

    add-double/2addr p1, v0

    invoke-static {p1, p2}, Ljava/lang/Math;->floor(D)D

    move-result-wide p1

    iget-wide v0, p0, Lsun/java2d/pipe/PixelToParallelogramConverter;->normPosition:D

    add-double/2addr p1, v0

    return-wide p1
.end method
