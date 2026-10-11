.class public Lsun/java2d/pipe/LoopPipe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/pipe/PixelDrawPipe;
.implements Lsun/java2d/pipe/PixelFillPipe;
.implements Lsun/java2d/pipe/ParallelogramPipe;
.implements Lsun/java2d/pipe/ShapeDrawPipe;
.implements Lsun/java2d/pipe/LoopBasedPipe;


# static fields
.field static final RenderEngine:Lsun/java2d/pipe/RenderingEngine;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsun/java2d/pipe/RenderingEngine;->getInstance()Lsun/java2d/pipe/RenderingEngine;

    move-result-object v0

    sput-object v0, Lsun/java2d/pipe/LoopPipe;->RenderEngine:Lsun/java2d/pipe/RenderingEngine;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static fillSpans(Lsun/java2d/SunGraphics2D;Lsun/java2d/pipe/SpanIterator;)V
    .locals 10

    iget v0, p0, Lsun/java2d/SunGraphics2D;->clipState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->clipRegion:Lsun/java2d/pipe/Region;

    invoke-virtual {v0, p1}, Lsun/java2d/pipe/Region;->filter(Lsun/java2d/pipe/SpanIterator;)Lsun/java2d/pipe/SpanIterator;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->loops:Lsun/java2d/loops/RenderLoops;

    iget-object v0, v0, Lsun/java2d/loops/RenderLoops;->fillSpansLoop:Lsun/java2d/loops/FillSpans;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->getSurfaceData()Lsun/java2d/SurfaceData;

    move-result-object v1

    invoke-virtual {v0, p0, v1, p1}, Lsun/java2d/loops/FillSpans;->FillSpans(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Lsun/java2d/pipe/SpanIterator;)V

    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x4

    new-array v0, v0, [I

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->getSurfaceData()Lsun/java2d/SurfaceData;

    move-result-object v9

    :goto_1
    invoke-interface {p1, v0}, Lsun/java2d/pipe/SpanIterator;->nextSpan([I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    aget v5, v0, v2

    const/4 v2, 0x1

    aget v6, v0, v2

    aget v2, v0, v1

    sub-int v7, v2, v5

    const/4 v2, 0x3

    aget v2, v0, v2

    sub-int v8, v2, v6

    iget-object v2, p0, Lsun/java2d/SunGraphics2D;->loops:Lsun/java2d/loops/RenderLoops;

    iget-object v2, v2, Lsun/java2d/loops/RenderLoops;->fillRectLoop:Lsun/java2d/loops/FillRect;

    move-object v3, p0

    move-object v4, v9

    invoke-virtual/range {v2 .. v8}, Lsun/java2d/loops/FillRect;->FillRect(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;IIII)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public static getFillSSI(Lsun/java2d/SunGraphics2D;)Lsun/java2d/pipe/ShapeSpanIterator;
    .locals 1

    iget-object v0, p0, Lsun/java2d/SunGraphics2D;->stroke:Ljava/awt/Stroke;

    instance-of v0, v0, Ljava/awt/BasicStroke;

    if-eqz v0, :cond_0

    iget p0, p0, Lsun/java2d/SunGraphics2D;->strokeHint:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    new-instance v0, Lsun/java2d/pipe/ShapeSpanIterator;

    invoke-direct {v0, p0}, Lsun/java2d/pipe/ShapeSpanIterator;-><init>(Z)V

    return-object v0
.end method

.method public static getStrokeSpans(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)Lsun/java2d/pipe/ShapeSpanIterator;
    .locals 9

    new-instance v8, Lsun/java2d/pipe/ShapeSpanIterator;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Lsun/java2d/pipe/ShapeSpanIterator;-><init>(Z)V

    :try_start_0
    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v1

    invoke-virtual {v8, v1}, Lsun/java2d/pipe/ShapeSpanIterator;->setOutputArea(Lsun/java2d/pipe/Region;)V

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lsun/java2d/pipe/ShapeSpanIterator;->setRule(I)V

    iget-object v2, p0, Lsun/java2d/SunGraphics2D;->stroke:Ljava/awt/Stroke;

    move-object v3, v2

    check-cast v3, Ljava/awt/BasicStroke;

    iget v2, p0, Lsun/java2d/SunGraphics2D;->strokeState:I

    if-gt v2, v1, :cond_0

    move v4, v1

    goto :goto_0

    :cond_0
    move v4, v0

    :goto_0
    iget v2, p0, Lsun/java2d/SunGraphics2D;->strokeHint:I

    const/4 v5, 0x2

    if-eq v2, v5, :cond_1

    move v5, v1

    goto :goto_1

    :cond_1
    move v5, v0

    :goto_1
    sget-object v0, Lsun/java2d/pipe/LoopPipe;->RenderEngine:Lsun/java2d/pipe/RenderingEngine;

    iget-object v2, p0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    const/4 v6, 0x0

    move-object v1, p1

    move-object v7, v8

    invoke-virtual/range {v0 .. v7}, Lsun/java2d/pipe/RenderingEngine;->strokeTo(Ljava/awt/Shape;Ljava/awt/geom/AffineTransform;Ljava/awt/BasicStroke;ZZZLsun/awt/geom/PathConsumer2D;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v8

    :catchall_0
    move-exception p0

    invoke-virtual {v8}, Lsun/java2d/pipe/ShapeSpanIterator;->dispose()V

    new-instance p1, Ljava/lang/InternalError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to Stroke shape ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public draw(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V
    .locals 6

    iget v0, p1, Lsun/java2d/SunGraphics2D;->strokeState:I

    if-nez v0, :cond_2

    iget p0, p1, Lsun/java2d/SunGraphics2D;->transformState:I

    const/4 v0, 0x1

    if-gt p0, v0, :cond_1

    instance-of p0, p2, Ljava/awt/geom/Path2D$Float;

    if-eqz p0, :cond_0

    check-cast p2, Ljava/awt/geom/Path2D$Float;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/awt/geom/Path2D$Float;

    invoke-direct {p0, p2}, Ljava/awt/geom/Path2D$Float;-><init>(Ljava/awt/Shape;)V

    move-object p2, p0

    :goto_0
    iget p0, p1, Lsun/java2d/SunGraphics2D;->transX:I

    iget v0, p1, Lsun/java2d/SunGraphics2D;->transY:I

    move v3, p0

    move-object v5, p2

    move v4, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/awt/geom/Path2D$Float;

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-direct {p0, p2, v0}, Ljava/awt/geom/Path2D$Float;-><init>(Ljava/awt/Shape;Ljava/awt/geom/AffineTransform;)V

    const/4 p2, 0x0

    move-object v5, p0

    move v3, p2

    move v4, v3

    :goto_1
    iget-object p0, p1, Lsun/java2d/SunGraphics2D;->loops:Lsun/java2d/loops/RenderLoops;

    iget-object v0, p0, Lsun/java2d/loops/RenderLoops;->drawPathLoop:Lsun/java2d/loops/DrawPath;

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getSurfaceData()Lsun/java2d/SurfaceData;

    move-result-object v2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/java2d/loops/DrawPath;->DrawPath(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;IILjava/awt/geom/Path2D$Float;)V

    return-void

    :cond_2
    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->stroke:Ljava/awt/Stroke;

    invoke-interface {v0, p2}, Ljava/awt/Stroke;->createStrokedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsun/java2d/pipe/LoopPipe;->fill(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void

    :cond_3
    invoke-static {p1, p2}, Lsun/java2d/pipe/LoopPipe;->getStrokeSpans(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)Lsun/java2d/pipe/ShapeSpanIterator;

    move-result-object p0

    :try_start_0
    invoke-static {p1, p0}, Lsun/java2d/pipe/LoopPipe;->fillSpans(Lsun/java2d/SunGraphics2D;Lsun/java2d/pipe/SpanIterator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lsun/java2d/pipe/ShapeSpanIterator;->dispose()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lsun/java2d/pipe/ShapeSpanIterator;->dispose()V

    throw p1
.end method

.method public drawArc(Lsun/java2d/SunGraphics2D;IIIIII)V
    .locals 11

    move-object v0, p1

    iget-object v1, v0, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    new-instance v10, Ljava/awt/geom/Arc2D$Float;

    move v2, p2

    int-to-float v3, v2

    move v2, p3

    int-to-float v4, v2

    move v2, p4

    int-to-float v5, v2

    move/from16 v2, p5

    int-to-float v6, v2

    move/from16 v2, p6

    int-to-float v7, v2

    move/from16 v2, p7

    int-to-float v8, v2

    const/4 v9, 0x0

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Ljava/awt/geom/Arc2D$Float;-><init>(FFFFFFI)V

    invoke-interface {v1, p1, v10}, Lsun/java2d/pipe/ShapeDrawPipe;->draw(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method

.method public drawLine(Lsun/java2d/SunGraphics2D;IIII)V
    .locals 9

    iget p0, p1, Lsun/java2d/SunGraphics2D;->transX:I

    iget v0, p1, Lsun/java2d/SunGraphics2D;->transY:I

    iget-object v1, p1, Lsun/java2d/SunGraphics2D;->loops:Lsun/java2d/loops/RenderLoops;

    iget-object v2, v1, Lsun/java2d/loops/RenderLoops;->drawLineLoop:Lsun/java2d/loops/DrawLine;

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getSurfaceData()Lsun/java2d/SurfaceData;

    move-result-object v4

    add-int v5, p2, p0

    add-int v6, p3, v0

    add-int v7, p4, p0

    add-int v8, p5, v0

    move-object v3, p1

    invoke-virtual/range {v2 .. v8}, Lsun/java2d/loops/DrawLine;->DrawLine(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;IIII)V

    return-void
.end method

.method public drawOval(Lsun/java2d/SunGraphics2D;IIII)V
    .locals 1

    iget-object p0, p1, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    new-instance v0, Ljava/awt/geom/Ellipse2D$Float;

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    int-to-float p5, p5

    invoke-direct {v0, p2, p3, p4, p5}, Ljava/awt/geom/Ellipse2D$Float;-><init>(FFFF)V

    invoke-interface {p0, p1, v0}, Lsun/java2d/pipe/ShapeDrawPipe;->draw(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method

.method public drawParallelogram(Lsun/java2d/SunGraphics2D;DDDDDDDDDDDD)V
    .locals 19

    move-object/from16 v1, p1

    move-wide/from16 v3, p10

    move-wide/from16 v5, p12

    move-wide/from16 v7, p14

    move-wide/from16 v9, p16

    move-wide/from16 v11, p18

    move-wide/from16 v13, p20

    move-wide/from16 v15, p22

    move-wide/from16 v17, p24

    move-object/from16 v2, p1

    iget-object v0, v2, Lsun/java2d/SunGraphics2D;->loops:Lsun/java2d/loops/RenderLoops;

    iget-object v0, v0, Lsun/java2d/loops/RenderLoops;->drawParallelogramLoop:Lsun/java2d/loops/DrawParallelogram;

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SunGraphics2D;->getSurfaceData()Lsun/java2d/SurfaceData;

    move-result-object v2

    invoke-virtual/range {v0 .. v18}, Lsun/java2d/loops/DrawParallelogram;->DrawParallelogram(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;DDDDDDDD)V

    return-void
.end method

.method public drawPolygon(Lsun/java2d/SunGraphics2D;[I[II)V
    .locals 10

    filled-new-array {p4}, [I

    move-result-object v5

    iget-object p0, p1, Lsun/java2d/SunGraphics2D;->loops:Lsun/java2d/loops/RenderLoops;

    iget-object v0, p0, Lsun/java2d/loops/RenderLoops;->drawPolygonsLoop:Lsun/java2d/loops/DrawPolygons;

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getSurfaceData()Lsun/java2d/SurfaceData;

    move-result-object v2

    const/4 v6, 0x1

    iget v7, p1, Lsun/java2d/SunGraphics2D;->transX:I

    iget v8, p1, Lsun/java2d/SunGraphics2D;->transY:I

    const/4 v9, 0x1

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v9}, Lsun/java2d/loops/DrawPolygons;->DrawPolygons(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;[I[I[IIIIZ)V

    return-void
.end method

.method public drawPolyline(Lsun/java2d/SunGraphics2D;[I[II)V
    .locals 10

    filled-new-array {p4}, [I

    move-result-object v5

    iget-object p0, p1, Lsun/java2d/SunGraphics2D;->loops:Lsun/java2d/loops/RenderLoops;

    iget-object v0, p0, Lsun/java2d/loops/RenderLoops;->drawPolygonsLoop:Lsun/java2d/loops/DrawPolygons;

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getSurfaceData()Lsun/java2d/SurfaceData;

    move-result-object v2

    const/4 v6, 0x1

    iget v7, p1, Lsun/java2d/SunGraphics2D;->transX:I

    iget v8, p1, Lsun/java2d/SunGraphics2D;->transY:I

    const/4 v9, 0x0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v9}, Lsun/java2d/loops/DrawPolygons;->DrawPolygons(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;[I[I[IIIIZ)V

    return-void
.end method

.method public drawRect(Lsun/java2d/SunGraphics2D;IIII)V
    .locals 7

    iget-object p0, p1, Lsun/java2d/SunGraphics2D;->loops:Lsun/java2d/loops/RenderLoops;

    iget-object v0, p0, Lsun/java2d/loops/RenderLoops;->drawRectLoop:Lsun/java2d/loops/DrawRect;

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getSurfaceData()Lsun/java2d/SurfaceData;

    move-result-object v2

    iget p0, p1, Lsun/java2d/SunGraphics2D;->transX:I

    add-int v3, p2, p0

    iget p0, p1, Lsun/java2d/SunGraphics2D;->transY:I

    add-int v4, p3, p0

    move-object v1, p1

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lsun/java2d/loops/DrawRect;->DrawRect(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;IIII)V

    return-void
.end method

.method public drawRoundRect(Lsun/java2d/SunGraphics2D;IIIIII)V
    .locals 8

    iget-object p0, p1, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    new-instance v7, Ljava/awt/geom/RoundRectangle2D$Float;

    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    int-to-float v5, p6

    int-to-float v6, p7

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/awt/geom/RoundRectangle2D$Float;-><init>(FFFFFF)V

    invoke-interface {p0, p1, v7}, Lsun/java2d/pipe/ShapeDrawPipe;->draw(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method

.method public fill(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V
    .locals 6

    iget p0, p1, Lsun/java2d/SunGraphics2D;->strokeState:I

    if-nez p0, :cond_2

    iget p0, p1, Lsun/java2d/SunGraphics2D;->transformState:I

    const/4 v0, 0x1

    if-gt p0, v0, :cond_1

    instance-of p0, p2, Ljava/awt/geom/Path2D$Float;

    if-eqz p0, :cond_0

    check-cast p2, Ljava/awt/geom/Path2D$Float;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/awt/geom/Path2D$Float;

    invoke-direct {p0, p2}, Ljava/awt/geom/Path2D$Float;-><init>(Ljava/awt/Shape;)V

    move-object p2, p0

    :goto_0
    iget p0, p1, Lsun/java2d/SunGraphics2D;->transX:I

    iget v0, p1, Lsun/java2d/SunGraphics2D;->transY:I

    move v3, p0

    move-object v5, p2

    move v4, v0

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/awt/geom/Path2D$Float;

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-direct {p0, p2, v0}, Ljava/awt/geom/Path2D$Float;-><init>(Ljava/awt/Shape;Ljava/awt/geom/AffineTransform;)V

    const/4 p2, 0x0

    move-object v5, p0

    move v3, p2

    move v4, v3

    :goto_1
    iget-object p0, p1, Lsun/java2d/SunGraphics2D;->loops:Lsun/java2d/loops/RenderLoops;

    iget-object v0, p0, Lsun/java2d/loops/RenderLoops;->fillPathLoop:Lsun/java2d/loops/FillPath;

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getSurfaceData()Lsun/java2d/SurfaceData;

    move-result-object v2

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/java2d/loops/FillPath;->FillPath(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;IILjava/awt/geom/Path2D$Float;)V

    return-void

    :cond_2
    invoke-static {p1}, Lsun/java2d/pipe/LoopPipe;->getFillSSI(Lsun/java2d/SunGraphics2D;)Lsun/java2d/pipe/ShapeSpanIterator;

    move-result-object p0

    :try_start_0
    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/java2d/pipe/ShapeSpanIterator;->setOutputArea(Lsun/java2d/pipe/Region;)V

    iget v0, p1, Lsun/java2d/SunGraphics2D;->transformState:I

    if-nez v0, :cond_3

    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    :goto_2
    invoke-interface {p2, v0}, Ljava/awt/Shape;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object p2

    invoke-virtual {p0, p2}, Lsun/java2d/pipe/ShapeSpanIterator;->appendPath(Ljava/awt/geom/PathIterator;)V

    invoke-static {p1, p0}, Lsun/java2d/pipe/LoopPipe;->fillSpans(Lsun/java2d/SunGraphics2D;Lsun/java2d/pipe/SpanIterator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lsun/java2d/pipe/ShapeSpanIterator;->dispose()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lsun/java2d/pipe/ShapeSpanIterator;->dispose()V

    throw p1
.end method

.method public fillArc(Lsun/java2d/SunGraphics2D;IIIIII)V
    .locals 11

    move-object v0, p1

    iget-object v1, v0, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    new-instance v10, Ljava/awt/geom/Arc2D$Float;

    move v2, p2

    int-to-float v3, v2

    move v2, p3

    int-to-float v4, v2

    move v2, p4

    int-to-float v5, v2

    move/from16 v2, p5

    int-to-float v6, v2

    move/from16 v2, p6

    int-to-float v7, v2

    move/from16 v2, p7

    int-to-float v8, v2

    const/4 v9, 0x2

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Ljava/awt/geom/Arc2D$Float;-><init>(FFFFFFI)V

    invoke-interface {v1, p1, v10}, Lsun/java2d/pipe/ShapeDrawPipe;->fill(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method

.method public fillOval(Lsun/java2d/SunGraphics2D;IIII)V
    .locals 1

    iget-object p0, p1, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    new-instance v0, Ljava/awt/geom/Ellipse2D$Float;

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    int-to-float p5, p5

    invoke-direct {v0, p2, p3, p4, p5}, Ljava/awt/geom/Ellipse2D$Float;-><init>(FFFF)V

    invoke-interface {p0, p1, v0}, Lsun/java2d/pipe/ShapeDrawPipe;->fill(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method

.method public fillParallelogram(Lsun/java2d/SunGraphics2D;DDDDDDDDDD)V
    .locals 15

    move-object/from16 v1, p1

    iget-object v0, v1, Lsun/java2d/SunGraphics2D;->loops:Lsun/java2d/loops/RenderLoops;

    iget-object v0, v0, Lsun/java2d/loops/RenderLoops;->fillParallelogramLoop:Lsun/java2d/loops/FillParallelogram;

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SunGraphics2D;->getSurfaceData()Lsun/java2d/SurfaceData;

    move-result-object v2

    move-wide/from16 v3, p10

    move-wide/from16 v5, p12

    move-wide/from16 v7, p14

    move-wide/from16 v9, p16

    move-wide/from16 v11, p18

    move-wide/from16 v13, p20

    invoke-virtual/range {v0 .. v14}, Lsun/java2d/loops/FillParallelogram;->FillParallelogram(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;DDDDDD)V

    return-void
.end method

.method public fillPolygon(Lsun/java2d/SunGraphics2D;[I[II)V
    .locals 6

    invoke-static {p1}, Lsun/java2d/pipe/LoopPipe;->getFillSSI(Lsun/java2d/SunGraphics2D;)Lsun/java2d/pipe/ShapeSpanIterator;

    move-result-object p0

    :try_start_0
    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v0

    invoke-virtual {p0, v0}, Lsun/java2d/pipe/ShapeSpanIterator;->setOutputArea(Lsun/java2d/pipe/Region;)V

    iget v4, p1, Lsun/java2d/SunGraphics2D;->transX:I

    iget v5, p1, Lsun/java2d/SunGraphics2D;->transY:I

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    invoke-virtual/range {v0 .. v5}, Lsun/java2d/pipe/ShapeSpanIterator;->appendPoly([I[IIII)V

    invoke-static {p1, p0}, Lsun/java2d/pipe/LoopPipe;->fillSpans(Lsun/java2d/SunGraphics2D;Lsun/java2d/pipe/SpanIterator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lsun/java2d/pipe/ShapeSpanIterator;->dispose()V

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0}, Lsun/java2d/pipe/ShapeSpanIterator;->dispose()V

    throw p1
.end method

.method public fillRect(Lsun/java2d/SunGraphics2D;IIII)V
    .locals 7

    iget-object p0, p1, Lsun/java2d/SunGraphics2D;->loops:Lsun/java2d/loops/RenderLoops;

    iget-object v0, p0, Lsun/java2d/loops/RenderLoops;->fillRectLoop:Lsun/java2d/loops/FillRect;

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getSurfaceData()Lsun/java2d/SurfaceData;

    move-result-object v2

    iget p0, p1, Lsun/java2d/SunGraphics2D;->transX:I

    add-int v3, p2, p0

    iget p0, p1, Lsun/java2d/SunGraphics2D;->transY:I

    add-int v4, p3, p0

    move-object v1, p1

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lsun/java2d/loops/FillRect;->FillRect(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;IIII)V

    return-void
.end method

.method public fillRoundRect(Lsun/java2d/SunGraphics2D;IIIIII)V
    .locals 8

    iget-object p0, p1, Lsun/java2d/SunGraphics2D;->shapepipe:Lsun/java2d/pipe/ShapeDrawPipe;

    new-instance v7, Ljava/awt/geom/RoundRectangle2D$Float;

    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    int-to-float v5, p6

    int-to-float v6, p7

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/awt/geom/RoundRectangle2D$Float;-><init>(FFFFFF)V

    invoke-interface {p0, p1, v7}, Lsun/java2d/pipe/ShapeDrawPipe;->fill(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method
