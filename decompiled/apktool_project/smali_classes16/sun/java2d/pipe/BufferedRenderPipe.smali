.class public abstract Lsun/java2d/pipe/BufferedRenderPipe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/pipe/PixelDrawPipe;
.implements Lsun/java2d/pipe/PixelFillPipe;
.implements Lsun/java2d/pipe/ShapeDrawPipe;
.implements Lsun/java2d/pipe/ParallelogramPipe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;,
        Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;
    }
.end annotation


# static fields
.field static final BYTES_PER_POLY_POINT:I = 0x8

.field static final BYTES_PER_SCANLINE:I = 0xc

.field static final BYTES_PER_SPAN:I = 0x10


# instance fields
.field aapgrampipe:Lsun/java2d/pipe/ParallelogramPipe;

.field protected buf:Lsun/java2d/pipe/RenderBuffer;

.field private drawHandler:Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;

.field protected rq:Lsun/java2d/pipe/RenderQueue;


# direct methods
.method public constructor <init>(Lsun/java2d/pipe/RenderQueue;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lsun/java2d/pipe/BufferedRenderPipe$AAParallelogramPipe;-><init>(Lsun/java2d/pipe/BufferedRenderPipe;Lsun/java2d/pipe/BufferedRenderPipe$1;)V

    iput-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->aapgrampipe:Lsun/java2d/pipe/ParallelogramPipe;

    iput-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {p1}, Lsun/java2d/pipe/RenderQueue;->getBuffer()Lsun/java2d/pipe/RenderBuffer;

    move-result-object p1

    iput-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    new-instance p1, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;

    invoke-direct {p1, p0}, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;-><init>(Lsun/java2d/pipe/BufferedRenderPipe;)V

    iput-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe;->drawHandler:Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;

    return-void
.end method

.method private native fillSpans(Lsun/java2d/pipe/RenderQueue;JIILsun/java2d/pipe/SpanIterator;JII)I
.end method


# virtual methods
.method public draw(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V
    .locals 3

    iget v0, p1, Lsun/java2d/SunGraphics2D;->strokeState:I

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-nez v0, :cond_3

    instance-of v0, p2, Ljava/awt/Polygon;

    if-eqz v0, :cond_0

    iget v0, p1, Lsun/java2d/SunGraphics2D;->transformState:I

    if-ge v0, v1, :cond_0

    check-cast p2, Ljava/awt/Polygon;

    iget-object v0, p2, Ljava/awt/Polygon;->xpoints:[I

    iget-object v1, p2, Ljava/awt/Polygon;->ypoints:[I

    iget p2, p2, Ljava/awt/Polygon;->npoints:I

    invoke-virtual {p0, p1, v0, v1, p2}, Lsun/java2d/pipe/BufferedRenderPipe;->drawPolygon(Lsun/java2d/SunGraphics2D;[I[II)V

    return-void

    :cond_0
    iget v0, p1, Lsun/java2d/SunGraphics2D;->transformState:I

    const/4 v1, 0x1

    if-gt v0, v1, :cond_2

    instance-of v0, p2, Ljava/awt/geom/Path2D$Float;

    if-eqz v0, :cond_1

    check-cast p2, Ljava/awt/geom/Path2D$Float;

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/awt/geom/Path2D$Float;

    invoke-direct {v0, p2}, Ljava/awt/geom/Path2D$Float;-><init>(Ljava/awt/Shape;)V

    move-object p2, v0

    :goto_0
    iget v2, p1, Lsun/java2d/SunGraphics2D;->transX:I

    iget v0, p1, Lsun/java2d/SunGraphics2D;->transY:I

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/awt/geom/Path2D$Float;

    iget-object v1, p1, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-direct {v0, p2, v1}, Ljava/awt/geom/Path2D$Float;-><init>(Ljava/awt/Shape;Ljava/awt/geom/AffineTransform;)V

    move-object p2, v0

    move v0, v2

    :goto_1
    invoke-virtual {p0, p1, p2, v2, v0}, Lsun/java2d/pipe/BufferedRenderPipe;->drawPath(Lsun/java2d/SunGraphics2D;Ljava/awt/geom/Path2D$Float;II)V

    goto :goto_2

    :cond_3
    if-ge v0, v1, :cond_4

    invoke-static {p1, p2}, Lsun/java2d/pipe/LoopPipe;->getStrokeSpans(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)Lsun/java2d/pipe/ShapeSpanIterator;

    move-result-object p2

    :try_start_0
    invoke-virtual {p0, p1, p2, v2, v2}, Lsun/java2d/pipe/BufferedRenderPipe;->fillSpans(Lsun/java2d/SunGraphics2D;Lsun/java2d/pipe/SpanIterator;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p2}, Lsun/java2d/pipe/ShapeSpanIterator;->dispose()V

    goto :goto_2

    :catchall_0
    move-exception p0

    invoke-virtual {p2}, Lsun/java2d/pipe/ShapeSpanIterator;->dispose()V

    throw p0

    :cond_4
    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->stroke:Ljava/awt/Stroke;

    invoke-interface {v0, p2}, Ljava/awt/Stroke;->createStrokedShape(Ljava/awt/Shape;)Ljava/awt/Shape;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lsun/java2d/pipe/BufferedRenderPipe;->fill(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    :goto_2
    return-void
.end method

.method public drawArc(Lsun/java2d/SunGraphics2D;IIIIII)V
    .locals 9

    new-instance v8, Ljava/awt/geom/Arc2D$Float;

    move v0, p2

    int-to-float v1, v0

    move v0, p3

    int-to-float v2, v0

    move v0, p4

    int-to-float v3, v0

    move v0, p5

    int-to-float v4, v0

    move v0, p6

    int-to-float v5, v0

    move/from16 v0, p7

    int-to-float v6, v0

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/awt/geom/Arc2D$Float;-><init>(FFFFFFI)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual {p0, p1, v8}, Lsun/java2d/pipe/BufferedRenderPipe;->draw(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method

.method public drawLine(Lsun/java2d/SunGraphics2D;IIII)V
    .locals 3

    iget v0, p1, Lsun/java2d/SunGraphics2D;->transX:I

    iget v1, p1, Lsun/java2d/SunGraphics2D;->transY:I

    iget-object v2, p0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v2}, Lsun/java2d/pipe/RenderQueue;->lock()V

    :try_start_0
    invoke-virtual {p0, p1}, Lsun/java2d/pipe/BufferedRenderPipe;->validateContext(Lsun/java2d/SunGraphics2D;)V

    iget-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    const/16 v2, 0x14

    invoke-virtual {p1, v2}, Lsun/java2d/pipe/RenderQueue;->ensureCapacity(I)V

    iget-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/16 v2, 0xa

    invoke-virtual {p1, v2}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    add-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    add-int/2addr p3, v1

    invoke-virtual {p1, p3}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    add-int/2addr p4, v0

    invoke-virtual {p1, p4}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    add-int/2addr p5, v1

    invoke-virtual {p1, p5}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {p0}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {p0}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    throw p1
.end method

.method public drawOval(Lsun/java2d/SunGraphics2D;IIII)V
    .locals 1

    new-instance v0, Ljava/awt/geom/Ellipse2D$Float;

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    int-to-float p5, p5

    invoke-direct {v0, p2, p3, p4, p5}, Ljava/awt/geom/Ellipse2D$Float;-><init>(FFFF)V

    invoke-virtual {p0, p1, v0}, Lsun/java2d/pipe/BufferedRenderPipe;->draw(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method

.method public drawParallelogram(Lsun/java2d/SunGraphics2D;DDDDDDDDDDDD)V
    .locals 4

    move-object v1, p0

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderQueue;->lock()V

    :try_start_0
    invoke-virtual {p0, p1}, Lsun/java2d/pipe/BufferedRenderPipe;->validateContext(Lsun/java2d/SunGraphics2D;)V

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    const/16 v2, 0x24

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderQueue;->ensureCapacity(I)V

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/16 v2, 0xf

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide v2, p10

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide/from16 v2, p12

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide/from16 v2, p14

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide/from16 v2, p16

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide/from16 v2, p18

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide/from16 v2, p20

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide/from16 v2, p22

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide/from16 v2, p24

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v1}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    throw v0
.end method

.method public drawPath(Lsun/java2d/SunGraphics2D;Ljava/awt/geom/Path2D$Float;II)V
    .locals 1

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderQueue;->lock()V

    :try_start_0
    invoke-virtual {p0, p1}, Lsun/java2d/pipe/BufferedRenderPipe;->validateContext(Lsun/java2d/SunGraphics2D;)V

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->drawHandler:Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;

    invoke-virtual {v0, p1}, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->validate(Lsun/java2d/SunGraphics2D;)V

    iget-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe;->drawHandler:Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;

    invoke-static {p1, p2, p3, p4}, Lsun/java2d/loops/ProcessPath;->drawPath(Lsun/java2d/loops/ProcessPath$DrawHandler;Ljava/awt/geom/Path2D$Float;II)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {p0}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {p0}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    throw p1
.end method

.method public drawPoly(Lsun/java2d/SunGraphics2D;[I[IIZ)V
    .locals 9

    const-string v0, "coordinate array"

    if-eqz p2, :cond_6

    if-eqz p3, :cond_6

    .line 1
    array-length v1, p2

    if-lt v1, p4, :cond_5

    array-length v1, p3

    if-lt v1, p4, :cond_5

    const/4 v0, 0x2

    if-ge p4, v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p4, v0, :cond_1

    if-nez p5, :cond_1

    .line 2
    aget v5, p2, v2

    aget v6, p3, v2

    aget v7, p2, v1

    aget v8, p3, v1

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lsun/java2d/pipe/BufferedRenderPipe;->drawLine(Lsun/java2d/SunGraphics2D;IIII)V

    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderQueue;->lock()V

    .line 4
    :try_start_0
    invoke-virtual {p0, p1}, Lsun/java2d/pipe/BufferedRenderPipe;->validateContext(Lsun/java2d/SunGraphics2D;)V

    mul-int/lit8 v0, p4, 0x8

    add-int/lit8 v0, v0, 0x14

    .line 5
    iget-object v3, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v3}, Lsun/java2d/pipe/RenderBuffer;->capacity()I

    move-result v3

    if-gt v0, v3, :cond_4

    .line 6
    iget-object v3, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v3}, Lsun/java2d/pipe/RenderBuffer;->remaining()I

    move-result v3

    if-le v0, v3, :cond_2

    .line 7
    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderQueue;->flushNow()V

    .line 8
    :cond_2
    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/16 v3, 0xc

    invoke-virtual {v0, v3}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    .line 9
    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v0, p4}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    .line 10
    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    if-eqz p5, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    .line 11
    iget-object p5, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    iget v0, p1, Lsun/java2d/SunGraphics2D;->transX:I

    invoke-virtual {p5, v0}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    .line 12
    iget-object p5, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    iget p1, p1, Lsun/java2d/SunGraphics2D;->transY:I

    invoke-virtual {p5, p1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    .line 13
    iget-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p1, p2, v2, p4}, Lsun/java2d/pipe/RenderBuffer;->put([III)Lsun/java2d/pipe/RenderBuffer;

    .line 14
    iget-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p1, p3, v2, p4}, Lsun/java2d/pipe/RenderBuffer;->put([III)Lsun/java2d/pipe/RenderBuffer;

    goto :goto_1

    .line 15
    :cond_4
    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    new-instance v8, Lsun/java2d/pipe/BufferedRenderPipe$1;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p1

    invoke-direct/range {v1 .. v7}, Lsun/java2d/pipe/BufferedRenderPipe$1;-><init>(Lsun/java2d/pipe/BufferedRenderPipe;[I[IIZLsun/java2d/SunGraphics2D;)V

    invoke-virtual {v0, v8}, Lsun/java2d/pipe/RenderQueue;->flushAndInvokeNow(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    :goto_1
    iget-object p0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {p0}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {p0}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    .line 17
    throw p1

    .line 18
    :cond_5
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 19
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract drawPoly([I[IIZII)V
.end method

.method public drawPolygon(Lsun/java2d/SunGraphics2D;[I[II)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/java2d/pipe/BufferedRenderPipe;->drawPoly(Lsun/java2d/SunGraphics2D;[I[IIZ)V

    return-void
.end method

.method public drawPolyline(Lsun/java2d/SunGraphics2D;[I[II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/java2d/pipe/BufferedRenderPipe;->drawPoly(Lsun/java2d/SunGraphics2D;[I[IIZ)V

    return-void
.end method

.method public drawRect(Lsun/java2d/SunGraphics2D;IIII)V
    .locals 2

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderQueue;->lock()V

    :try_start_0
    invoke-virtual {p0, p1}, Lsun/java2d/pipe/BufferedRenderPipe;->validateContext(Lsun/java2d/SunGraphics2D;)V

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderQueue;->ensureCapacity(I)V

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    iget v1, p1, Lsun/java2d/SunGraphics2D;->transX:I

    add-int/2addr p2, v1

    invoke-virtual {v0, p2}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object p2, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    iget p1, p1, Lsun/java2d/SunGraphics2D;->transY:I

    add-int/2addr p3, p1

    invoke-virtual {p2, p3}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p1, p4}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p1, p5}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {p0}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {p0}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    throw p1
.end method

.method public drawRoundRect(Lsun/java2d/SunGraphics2D;IIIIII)V
    .locals 8

    new-instance v7, Ljava/awt/geom/RoundRectangle2D$Float;

    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    int-to-float v5, p6

    int-to-float v6, p7

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/awt/geom/RoundRectangle2D$Float;-><init>(FFFFFF)V

    invoke-virtual {p0, p1, v7}, Lsun/java2d/pipe/BufferedRenderPipe;->draw(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method

.method public fill(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V
    .locals 8

    iget v0, p1, Lsun/java2d/SunGraphics2D;->strokeState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    iget v0, p1, Lsun/java2d/SunGraphics2D;->transformState:I

    if-gt v0, v1, :cond_1

    instance-of v0, p2, Ljava/awt/geom/Path2D$Float;

    if-eqz v0, :cond_0

    check-cast p2, Ljava/awt/geom/Path2D$Float;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/awt/geom/Path2D$Float;

    invoke-direct {v0, p2}, Ljava/awt/geom/Path2D$Float;-><init>(Ljava/awt/Shape;)V

    move-object p2, v0

    :goto_0
    iget v2, p1, Lsun/java2d/SunGraphics2D;->transX:I

    iget v0, p1, Lsun/java2d/SunGraphics2D;->transY:I

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/awt/geom/Path2D$Float;

    iget-object v1, p1, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    invoke-direct {v0, p2, v1}, Ljava/awt/geom/Path2D$Float;-><init>(Ljava/awt/Shape;Ljava/awt/geom/AffineTransform;)V

    move-object p2, v0

    move v0, v2

    :goto_1
    invoke-virtual {p0, p1, p2, v2, v0}, Lsun/java2d/pipe/BufferedRenderPipe;->fillPath(Lsun/java2d/SunGraphics2D;Ljava/awt/geom/Path2D$Float;II)V

    return-void

    :cond_2
    iget v0, p1, Lsun/java2d/SunGraphics2D;->transformState:I

    if-gt v0, v1, :cond_3

    iget v2, p1, Lsun/java2d/SunGraphics2D;->transX:I

    iget v0, p1, Lsun/java2d/SunGraphics2D;->transY:I

    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    iget-object v1, p1, Lsun/java2d/SunGraphics2D;->transform:Ljava/awt/geom/AffineTransform;

    move v0, v2

    :goto_2
    invoke-static {p1}, Lsun/java2d/pipe/LoopPipe;->getFillSSI(Lsun/java2d/SunGraphics2D;)Lsun/java2d/pipe/ShapeSpanIterator;

    move-result-object v3

    :try_start_0
    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v4

    invoke-virtual {v4}, Lsun/java2d/pipe/Region;->getLoX()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-virtual {v4}, Lsun/java2d/pipe/Region;->getLoY()I

    move-result v6

    sub-int/2addr v6, v0

    invoke-virtual {v4}, Lsun/java2d/pipe/Region;->getHiX()I

    move-result v7

    sub-int/2addr v7, v2

    invoke-virtual {v4}, Lsun/java2d/pipe/Region;->getHiY()I

    move-result v4

    sub-int/2addr v4, v0

    invoke-virtual {v3, v5, v6, v7, v4}, Lsun/java2d/pipe/ShapeSpanIterator;->setOutputAreaXYXY(IIII)V

    invoke-interface {p2, v1}, Ljava/awt/Shape;->getPathIterator(Ljava/awt/geom/AffineTransform;)Ljava/awt/geom/PathIterator;

    move-result-object p2

    invoke-virtual {v3, p2}, Lsun/java2d/pipe/ShapeSpanIterator;->appendPath(Ljava/awt/geom/PathIterator;)V

    invoke-virtual {p0, p1, v3, v2, v0}, Lsun/java2d/pipe/BufferedRenderPipe;->fillSpans(Lsun/java2d/SunGraphics2D;Lsun/java2d/pipe/SpanIterator;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v3}, Lsun/java2d/pipe/ShapeSpanIterator;->dispose()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v3}, Lsun/java2d/pipe/ShapeSpanIterator;->dispose()V

    throw p0
.end method

.method public fillArc(Lsun/java2d/SunGraphics2D;IIIIII)V
    .locals 9

    new-instance v8, Ljava/awt/geom/Arc2D$Float;

    move v0, p2

    int-to-float v1, v0

    move v0, p3

    int-to-float v2, v0

    move v0, p4

    int-to-float v3, v0

    move v0, p5

    int-to-float v4, v0

    move v0, p6

    int-to-float v5, v0

    move/from16 v0, p7

    int-to-float v6, v0

    const/4 v7, 0x2

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Ljava/awt/geom/Arc2D$Float;-><init>(FFFFFFI)V

    move-object v0, p0

    move-object v1, p1

    invoke-virtual {p0, p1, v8}, Lsun/java2d/pipe/BufferedRenderPipe;->fill(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method

.method public fillOval(Lsun/java2d/SunGraphics2D;IIII)V
    .locals 1

    new-instance v0, Ljava/awt/geom/Ellipse2D$Float;

    int-to-float p2, p2

    int-to-float p3, p3

    int-to-float p4, p4

    int-to-float p5, p5

    invoke-direct {v0, p2, p3, p4, p5}, Ljava/awt/geom/Ellipse2D$Float;-><init>(FFFF)V

    invoke-virtual {p0, p1, v0}, Lsun/java2d/pipe/BufferedRenderPipe;->fill(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method

.method public fillParallelogram(Lsun/java2d/SunGraphics2D;DDDDDDDDDD)V
    .locals 4

    move-object v1, p0

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderQueue;->lock()V

    :try_start_0
    invoke-virtual {p0, p1}, Lsun/java2d/pipe/BufferedRenderPipe;->validateContext(Lsun/java2d/SunGraphics2D;)V

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    const/16 v2, 0x1c

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderQueue;->ensureCapacity(I)V

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    const/16 v2, 0x16

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide v2, p10

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide/from16 v2, p12

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide/from16 v2, p14

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide/from16 v2, p16

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide/from16 v2, p18

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    move-wide/from16 v2, p20

    double-to-float v2, v2

    invoke-virtual {v0, v2}, Lsun/java2d/pipe/RenderBuffer;->putFloat(F)Lsun/java2d/pipe/RenderBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v1, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v1}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    throw v0
.end method

.method public fillPath(Lsun/java2d/SunGraphics2D;Ljava/awt/geom/Path2D$Float;II)V
    .locals 1

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderQueue;->lock()V

    :try_start_0
    invoke-virtual {p0, p1}, Lsun/java2d/pipe/BufferedRenderPipe;->validateContext(Lsun/java2d/SunGraphics2D;)V

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->drawHandler:Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;

    invoke-virtual {v0, p1}, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->validate(Lsun/java2d/SunGraphics2D;)V

    iget-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe;->drawHandler:Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;

    invoke-virtual {p1}, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->startFillPath()V

    iget-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe;->drawHandler:Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;

    invoke-static {p1, p2, p3, p4}, Lsun/java2d/loops/ProcessPath;->fillPath(Lsun/java2d/loops/ProcessPath$DrawHandler;Ljava/awt/geom/Path2D$Float;II)Z

    iget-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe;->drawHandler:Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;

    invoke-virtual {p1}, Lsun/java2d/pipe/BufferedRenderPipe$BufferedDrawHandler;->endFillPath()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {p0}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {p0}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    throw p1
.end method

.method public fillPolygon(Lsun/java2d/SunGraphics2D;[I[II)V
    .locals 1

    new-instance v0, Ljava/awt/Polygon;

    invoke-direct {v0, p2, p3, p4}, Ljava/awt/Polygon;-><init>([I[II)V

    invoke-virtual {p0, p1, v0}, Lsun/java2d/pipe/BufferedRenderPipe;->fill(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method

.method public fillRect(Lsun/java2d/SunGraphics2D;IIII)V
    .locals 2

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderQueue;->lock()V

    :try_start_0
    invoke-virtual {p0, p1}, Lsun/java2d/pipe/BufferedRenderPipe;->validateContext(Lsun/java2d/SunGraphics2D;)V

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderQueue;->ensureCapacity(I)V

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object v0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    iget v1, p1, Lsun/java2d/SunGraphics2D;->transX:I

    add-int/2addr p2, v1

    invoke-virtual {v0, p2}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object p2, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    iget p1, p1, Lsun/java2d/SunGraphics2D;->transY:I

    add-int/2addr p3, p1

    invoke-virtual {p2, p3}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p1, p4}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    iget-object p1, p0, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {p1, p5}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {p0}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    return-void

    :catchall_0
    move-exception p1

    iget-object p0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {p0}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    throw p1
.end method

.method public fillRoundRect(Lsun/java2d/SunGraphics2D;IIIIII)V
    .locals 8

    new-instance v7, Ljava/awt/geom/RoundRectangle2D$Float;

    int-to-float v1, p2

    int-to-float v2, p3

    int-to-float v3, p4

    int-to-float v4, p5

    int-to-float v5, p6

    int-to-float v6, p7

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Ljava/awt/geom/RoundRectangle2D$Float;-><init>(FFFFFF)V

    invoke-virtual {p0, p1, v7}, Lsun/java2d/pipe/BufferedRenderPipe;->fill(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;)V

    return-void
.end method

.method public fillSpans(Lsun/java2d/SunGraphics2D;Lsun/java2d/pipe/SpanIterator;II)V
    .locals 13

    move-object v12, p0

    .line 1
    iget-object v0, v12, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderQueue;->lock()V

    .line 2
    :try_start_0
    invoke-virtual {p0, p1}, Lsun/java2d/pipe/BufferedRenderPipe;->validateContext(Lsun/java2d/SunGraphics2D;)V

    .line 3
    iget-object v0, v12, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    const/16 v1, 0x18

    invoke-virtual {v0, v1}, Lsun/java2d/pipe/RenderQueue;->ensureCapacity(I)V

    .line 4
    iget-object v2, v12, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    iget-object v0, v12, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderBuffer;->getAddress()J

    move-result-wide v3

    iget-object v0, v12, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    .line 5
    invoke-virtual {v0}, Lsun/java2d/pipe/RenderBuffer;->position()I

    move-result v5

    iget-object v0, v12, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderBuffer;->capacity()I

    move-result v6

    .line 6
    invoke-interface {p2}, Lsun/java2d/pipe/SpanIterator;->getNativeIterator()J

    move-result-wide v8

    move-object v1, p0

    move-object v7, p2

    move/from16 v10, p3

    move/from16 v11, p4

    .line 7
    invoke-direct/range {v1 .. v11}, Lsun/java2d/pipe/BufferedRenderPipe;->fillSpans(Lsun/java2d/pipe/RenderQueue;JIILsun/java2d/pipe/SpanIterator;JII)I

    move-result v0

    .line 8
    iget-object v1, v12, Lsun/java2d/pipe/BufferedRenderPipe;->buf:Lsun/java2d/pipe/RenderBuffer;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lsun/java2d/pipe/RenderBuffer;->position(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v0, v12, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v12, Lsun/java2d/pipe/BufferedRenderPipe;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v1}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    .line 10
    throw v0
.end method

.method public getAAParallelogramPipe()Lsun/java2d/pipe/ParallelogramPipe;
    .locals 0

    iget-object p0, p0, Lsun/java2d/pipe/BufferedRenderPipe;->aapgrampipe:Lsun/java2d/pipe/ParallelogramPipe;

    return-object p0
.end method

.method public abstract validateContext(Lsun/java2d/SunGraphics2D;)V
.end method

.method public abstract validateContextAA(Lsun/java2d/SunGraphics2D;)V
.end method
