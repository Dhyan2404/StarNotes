.class public abstract Lsun/java2d/pipe/SpanShapeRenderer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/pipe/ShapeDrawPipe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/java2d/pipe/SpanShapeRenderer$Simple;,
        Lsun/java2d/pipe/SpanShapeRenderer$Composite;
    }
.end annotation


# static fields
.field public static final NON_RECTILINEAR_TRANSFORM_MASK:I = 0x30

.field static final RenderEngine:Lsun/java2d/pipe/RenderingEngine;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lsun/java2d/pipe/RenderingEngine;->getInstance()Lsun/java2d/pipe/RenderingEngine;

    move-result-object v0

    sput-object v0, Lsun/java2d/pipe/SpanShapeRenderer;->RenderEngine:Lsun/java2d/pipe/RenderingEngine;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public draw(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V
    .locals 2

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->stroke:Ljava/awt/Stroke;

    instance-of v1, v0, Ljava/awt/BasicStroke;

    if-eqz v1, :cond_0

    invoke-static {p1, p2}, Lsun/java2d/pipe/LoopPipe;->getStrokeSpans(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)Lsun/java2d/pipe/ShapeSpanIterator;

    move-result-object v0

    :try_start_0
    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v1

    invoke-virtual {p0, p1, v1, p2, v0}, Lsun/java2d/pipe/SpanShapeRenderer;->renderSpans(Lsun/java2d/SunGraphics2D;Lsun/java2d/pipe/Region;Ljava/awt/Shape;Lsun/java2d/pipe/ShapeSpanIterator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Lsun/java2d/pipe/ShapeSpanIterator;->dispose()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Lsun/java2d/pipe/ShapeSpanIterator;->dispose()V

    throw p0

    :cond_0
    invoke-interface {v0, p2}, Ljava/awt/Stroke;->createStrokedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsun/java2d/pipe/SpanShapeRenderer;->fill(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    :goto_0
    return-void
.end method

.method public abstract endSequence(Ljava/lang/Object;)V
.end method

.method public fill(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V
    .locals 3

    instance-of v0, p2, Ljava/awt/geom/Rectangle2D;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-virtual {v0}, Ljava/awt/geom/AffineTransform;->getType()I

    move-result v0

    and-int/lit8 v0, v0, 0x30

    if-nez v0, :cond_0

    check-cast p2, Ljava/awt/geom/Rectangle2D;

    invoke-virtual {p0, p1, p2}, Lsun/java2d/pipe/SpanShapeRenderer;->renderRect(Lsun/java2d/SunGraphics2D;Ljava/awt/geom/Rectangle2D;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v0

    invoke-static {p1}, Lsun/java2d/pipe/LoopPipe;->getFillSSI(Lsun/java2d/SunGraphics2D;)Lsun/java2d/pipe/ShapeSpanIterator;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1, v0}, Lsun/java2d/pipe/ShapeSpanIterator;->setOutputArea(Lsun/java2d/pipe/Region;)V

    iget-object v2, p1, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-interface {p2, v2}, Ljava/awt/Shape;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/java2d/pipe/ShapeSpanIterator;->appendPath(Ljava/awt/geom/PathIterator;)V

    invoke-virtual {p0, p1, v0, p2, v1}, Lsun/java2d/pipe/SpanShapeRenderer;->renderSpans(Lsun/java2d/SunGraphics2D;Lsun/java2d/pipe/Region;Ljava/awt/Shape;Lsun/java2d/pipe/ShapeSpanIterator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lsun/java2d/pipe/ShapeSpanIterator;->dispose()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v1}, Lsun/java2d/pipe/ShapeSpanIterator;->dispose()V

    throw p0
.end method

.method public abstract renderBox(Ljava/lang/Object;IIII)V
.end method

.method public renderRect(Lsun/java2d/SunGraphics2D;Ljava/awt/geom/Rectangle2D;)V
    .locals 17

    move-object/from16 v6, p0

    move-object/from16 v0, p1

    const/4 v1, 0x4

    new-array v1, v1, [D

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/RectangularShape;->getX()D

    move-result-wide v2

    const/4 v13, 0x0

    aput-wide v2, v1, v13

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/RectangularShape;->getY()D

    move-result-wide v2

    const/4 v14, 0x1

    aput-wide v2, v1, v14

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/RectangularShape;->getWidth()D

    move-result-wide v2

    const/4 v15, 0x2

    aput-wide v2, v1, v15

    invoke-virtual/range {p2 .. p2}, Ljava/awt/geom/RectangularShape;->getHeight()D

    move-result-wide v2

    const/16 v16, 0x3

    aput-wide v2, v1, v16

    aget-wide v4, v1, v15

    aget-wide v7, v1, v13

    add-double/2addr v4, v7

    aput-wide v4, v1, v15

    aget-wide v9, v1, v14

    add-double/2addr v2, v9

    aput-wide v2, v1, v16

    cmpg-double v4, v4, v7

    if-lez v4, :cond_6

    cmpg-double v2, v2, v9

    if-gtz v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v7, v0, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    const/4 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x2

    move-object v8, v1

    move-object v10, v1

    invoke-virtual/range {v7 .. v12}, Ljava/awt/geom/AffineTransform;->transform([DI[DII)V

    aget-wide v2, v1, v15

    aget-wide v4, v1, v13

    cmpg-double v7, v2, v4

    if-gez v7, :cond_1

    aput-wide v4, v1, v15

    aput-wide v2, v1, v13

    :cond_1
    aget-wide v2, v1, v16

    aget-wide v4, v1, v14

    cmpg-double v7, v2, v4

    if-gez v7, :cond_2

    aput-wide v4, v1, v16

    aput-wide v2, v1, v14

    :cond_2
    aget-wide v2, v1, v13

    double-to-int v2, v2

    aget-wide v3, v1, v14

    double-to-int v3, v3

    aget-wide v4, v1, v15

    double-to-int v4, v4

    aget-wide v7, v1, v16

    double-to-int v1, v7

    filled-new-array {v2, v3, v4, v1}, [I

    move-result-object v7

    new-instance v1, Ljava/awt/Rectangle;

    aget v2, v7, v13

    aget v3, v7, v14

    aget v4, v7, v15

    sub-int/2addr v4, v2

    aget v5, v7, v16

    sub-int/2addr v5, v3

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v2

    invoke-virtual {v2, v7}, Lsun/java2d/pipe/Region;->clipBoxToBounds([I)V

    aget v3, v7, v13

    aget v4, v7, v15

    if-ge v3, v4, :cond_6

    aget v3, v7, v14

    aget v4, v7, v16

    if-lt v3, v4, :cond_3

    goto :goto_2

    :cond_3
    move-object/from16 v3, p2

    invoke-virtual {v6, v0, v3, v1, v7}, Lsun/java2d/pipe/SpanShapeRenderer;->startSequence(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;Ljava/awt/Rectangle;[I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v2}, Lsun/java2d/pipe/Region;->isRectangular()Z

    move-result v0

    if-eqz v0, :cond_4

    aget v2, v7, v13

    aget v3, v7, v14

    aget v0, v7, v15

    sub-int v4, v0, v2

    aget v0, v7, v16

    sub-int v5, v0, v3

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual/range {v0 .. v5}, Lsun/java2d/pipe/SpanShapeRenderer;->renderBox(Ljava/lang/Object;IIII)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2, v7}, Lsun/java2d/pipe/Region;->getSpanIterator([I)Lsun/java2d/pipe/SpanIterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9, v7}, Lsun/java2d/pipe/SpanIterator;->nextSpan([I)Z

    move-result v0

    if-eqz v0, :cond_5

    aget v2, v7, v13

    aget v3, v7, v14

    aget v0, v7, v15

    sub-int v4, v0, v2

    aget v0, v7, v16

    sub-int v5, v0, v3

    move-object/from16 v0, p0

    move-object v1, v8

    invoke-virtual/range {v0 .. v5}, Lsun/java2d/pipe/SpanShapeRenderer;->renderBox(Ljava/lang/Object;IIII)V

    goto :goto_0

    :cond_5
    :goto_1
    invoke-virtual {v6, v8}, Lsun/java2d/pipe/SpanShapeRenderer;->endSequence(Ljava/lang/Object;)V

    :cond_6
    :goto_2
    return-void
.end method

.method public renderSpans(Lsun/java2d/SunGraphics2D;Lsun/java2d/pipe/Region;Ljava/awt/Shape;Lsun/java2d/pipe/ShapeSpanIterator;)V
    .locals 11

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p4, v0}, Lsun/java2d/pipe/ShapeSpanIterator;->getPathBox([I)V

    new-instance v2, Ljava/awt/Rectangle;

    const/4 v3, 0x0

    aget v4, v0, v3

    const/4 v5, 0x1

    aget v6, v0, v5

    const/4 v7, 0x2

    aget v8, v0, v7

    sub-int/2addr v8, v4

    const/4 v9, 0x3

    aget v10, v0, v9

    sub-int/2addr v10, v6

    invoke-direct {v2, v4, v6, v8, v10}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p2, v0}, Lsun/java2d/pipe/Region;->clipBoxToBounds([I)V

    aget v3, v0, v3

    aget v4, v0, v7

    if-ge v3, v4, :cond_1

    aget v5, v0, v5

    aget v6, v0, v9

    if-lt v5, v6, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p4, v3, v5, v4, v6}, Lsun/java2d/pipe/ShapeSpanIterator;->intersectClipBox(IIII)V

    invoke-virtual {p0, p1, p3, v2, v0}, Lsun/java2d/pipe/SpanShapeRenderer;->startSequence(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;Ljava/awt/Rectangle;[I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1, p4, p2, v0}, Lsun/java2d/pipe/SpanShapeRenderer;->spanClipLoop(Ljava/lang/Object;Lsun/java2d/pipe/SpanIterator;Lsun/java2d/pipe/Region;[I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lsun/java2d/pipe/SpanShapeRenderer;->endSequence(Ljava/lang/Object;)V

    :cond_1
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v1}, Lsun/java2d/pipe/SpanShapeRenderer;->endSequence(Ljava/lang/Object;)V

    :cond_2
    throw p1
.end method

.method public spanClipLoop(Ljava/lang/Object;Lsun/java2d/pipe/SpanIterator;Lsun/java2d/pipe/Region;[I)V
    .locals 6

    invoke-virtual {p3}, Lsun/java2d/pipe/Region;->isRectangular()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3, p2}, Lsun/java2d/pipe/Region;->filter(Lsun/java2d/pipe/SpanIterator;)Lsun/java2d/pipe/SpanIterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2, p4}, Lsun/java2d/pipe/SpanIterator;->nextSpan([I)Z

    move-result p3

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    aget v2, p4, p3

    const/4 p3, 0x1

    aget v3, p4, p3

    const/4 p3, 0x2

    aget p3, p4, p3

    sub-int v4, p3, v2

    const/4 p3, 0x3

    aget p3, p4, p3

    sub-int v5, p3, v3

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lsun/java2d/pipe/SpanShapeRenderer;->renderBox(Ljava/lang/Object;IIII)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public abstract startSequence(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;Ljava/awt/Rectangle;[I)Ljava/lang/Object;
.end method
