.class public Ljava/awt/image/renderable/RenderableImageProducer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/ImageProducer;
.implements Ljava/lang/Runnable;


# instance fields
.field ics:Ljava/util/Vector;

.field rc:Ljava/awt/image/renderable/RenderContext;

.field rdblImage:Ljava/awt/image/renderable/RenderableImage;


# direct methods
.method public constructor <init>(Ljava/awt/image/renderable/RenderableImage;Ljava/awt/image/renderable/RenderContext;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljava/awt/image/renderable/RenderableImageProducer;->ics:Ljava/util/Vector;

    iput-object p1, p0, Ljava/awt/image/renderable/RenderableImageProducer;->rdblImage:Ljava/awt/image/renderable/RenderableImage;

    iput-object p2, p0, Ljava/awt/image/renderable/RenderableImageProducer;->rc:Ljava/awt/image/renderable/RenderContext;

    return-void
.end method


# virtual methods
.method public declared-synchronized addConsumer(Ljava/awt/image/ImageConsumer;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/awt/image/renderable/RenderableImageProducer;->ics:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljava/awt/image/renderable/RenderableImageProducer;->ics:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isConsumer(Ljava/awt/image/ImageConsumer;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/awt/image/renderable/RenderableImageProducer;->ics:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeConsumer(Ljava/awt/image/ImageConsumer;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/awt/image/renderable/RenderableImageProducer;->ics:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public requestTopDownLeftRightResend(Ljava/awt/image/ImageConsumer;)V
    .locals 0

    return-void
.end method

.method public run()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Ljava/awt/image/renderable/RenderableImageProducer;->rc:Ljava/awt/image/renderable/RenderContext;

    if-eqz v1, :cond_0

    iget-object v2, v0, Ljava/awt/image/renderable/RenderableImageProducer;->rdblImage:Ljava/awt/image/renderable/RenderableImage;

    invoke-interface {v2, v1}, Ljava/awt/image/renderable/RenderableImage;->createRendering(Ljava/awt/image/renderable/RenderContext;)Ljava/awt/image/RenderedImage;

    move-result-object v1

    goto :goto_0

    :cond_0
    iget-object v1, v0, Ljava/awt/image/renderable/RenderableImageProducer;->rdblImage:Ljava/awt/image/renderable/RenderableImage;

    invoke-interface {v1}, Ljava/awt/image/renderable/RenderableImage;->createDefaultRendering()Ljava/awt/image/RenderedImage;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v2

    invoke-interface {v1}, Ljava/awt/image/RenderedImage;->getData()Ljava/awt/image/Raster;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v3

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v4

    if-nez v2, :cond_1

    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object v2

    :cond_1
    invoke-virtual {v1}, Ljava/awt/image/Raster;->getMinX()I

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getMinY()I

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v14

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v1

    iget-object v5, v0, Ljava/awt/image/renderable/RenderableImageProducer;->ics:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/awt/image/ImageConsumer;

    invoke-interface {v6, v14, v1}, Ljava/awt/image/ImageConsumer;->setDimensions(II)V

    const/16 v7, 0x1e

    invoke-interface {v6, v7}, Ljava/awt/image/ImageConsumer;->setHints(I)V

    goto :goto_1

    :cond_2
    new-array v15, v14, [I

    invoke-virtual {v3}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v5

    new-array v13, v5, [I

    const/4 v12, 0x0

    move v11, v12

    :goto_2
    if-ge v11, v1, :cond_5

    move v5, v12

    :goto_3
    if-ge v5, v14, :cond_3

    invoke-virtual {v3, v5, v11, v13, v4}, Ljava/awt/image/SampleModel;->getPixel(II[ILjava/awt/image/DataBuffer;)[I

    invoke-virtual {v2, v13, v12}, Ljava/awt/image/ColorModel;->getDataElement([II)I

    move-result v6

    aput v6, v15, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    iget-object v5, v0, Ljava/awt/image/renderable/RenderableImageProducer;->ics:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface/range {v16 .. v16}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/awt/image/ImageConsumer;

    const/4 v6, 0x0

    const/4 v9, 0x1

    const/16 v17, 0x0

    move v7, v11

    move v8, v14

    move-object v10, v2

    move/from16 v18, v11

    move-object v11, v15

    move/from16 v19, v12

    move/from16 v12, v17

    move-object/from16 v17, v13

    move v13, v14

    invoke-interface/range {v5 .. v13}, Ljava/awt/image/ImageConsumer;->setPixels(IIIILjava/awt/image/ColorModel;[III)V

    move-object/from16 v13, v17

    move/from16 v11, v18

    move/from16 v12, v19

    goto :goto_4

    :cond_4
    move/from16 v18, v11

    move/from16 v19, v12

    move-object/from16 v17, v13

    add-int/lit8 v11, v18, 0x1

    goto :goto_2

    :cond_5
    iget-object v0, v0, Ljava/awt/image/renderable/RenderableImageProducer;->ics:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/awt/image/ImageConsumer;

    const/4 v2, 0x3

    invoke-interface {v1, v2}, Ljava/awt/image/ImageConsumer;->imageComplete(I)V

    goto :goto_5

    :cond_6
    return-void
.end method

.method public declared-synchronized setRenderContext(Ljava/awt/image/renderable/RenderContext;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Ljava/awt/image/renderable/RenderableImageProducer;->rc:Ljava/awt/image/renderable/RenderContext;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized startProduction(Ljava/awt/image/ImageConsumer;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ljava/awt/image/renderable/RenderableImageProducer;->addConsumer(Ljava/awt/image/ImageConsumer;)V

    new-instance p1, Ljava/lang/Thread;

    const-string v0, "RenderableImageProducer Thread"

    invoke-direct {p1, p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
