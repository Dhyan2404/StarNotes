.class public abstract Lsun/java2d/pipe/BufferedMaskFill;
.super Lsun/java2d/loops/MaskFill;
.source "SourceFile"


# instance fields
.field protected final rq:Lsun/java2d/pipe/RenderQueue;


# direct methods
.method public constructor <init>(Lsun/java2d/pipe/RenderQueue;Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lsun/java2d/loops/MaskFill;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    iput-object p1, p0, Lsun/java2d/pipe/BufferedMaskFill;->rq:Lsun/java2d/pipe/RenderQueue;

    return-void
.end method


# virtual methods
.method public MaskFill(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;Ljava/awt/Composite;IIII[BII)V
    .locals 13

    move-object v10, p0

    move-object/from16 v0, p8

    move-object/from16 v1, p3

    check-cast v1, Ljava/awt/AlphaComposite;

    invoke-virtual {v1}, Ljava/awt/AlphaComposite;->getRule()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    sget-object v1, Ljava/awt/AlphaComposite;->SrcOver:Ljava/awt/AlphaComposite;

    goto :goto_0

    :cond_0
    move-object/from16 v1, p3

    :goto_0
    iget-object v3, v10, Lsun/java2d/pipe/BufferedMaskFill;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v3}, Lsun/java2d/pipe/RenderQueue;->lock()V

    const/4 v3, 0x2

    move-object v4, p1

    :try_start_0
    invoke-virtual {p0, p1, v1, v3}, Lsun/java2d/pipe/BufferedMaskFill;->validateContext(Lsun/java2d/SunGraphics2D;Ljava/awt/Composite;I)V

    if-eqz v0, :cond_1

    array-length v1, v0

    add-int/2addr v1, v2

    and-int/lit8 v1, v1, -0x4

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    add-int/lit8 v2, v1, 0x20

    iget-object v3, v10, Lsun/java2d/pipe/BufferedMaskFill;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v3}, Lsun/java2d/pipe/RenderQueue;->getBuffer()Lsun/java2d/pipe/RenderBuffer;

    move-result-object v3

    invoke-virtual {v3}, Lsun/java2d/pipe/RenderBuffer;->capacity()I

    move-result v4

    if-gt v2, v4, :cond_3

    invoke-virtual {v3}, Lsun/java2d/pipe/RenderBuffer;->remaining()I

    move-result v4

    if-le v2, v4, :cond_2

    iget-object v2, v10, Lsun/java2d/pipe/BufferedMaskFill;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v2}, Lsun/java2d/pipe/RenderQueue;->flushNow()V

    :cond_2
    const/16 v2, 0x20

    invoke-virtual {v3, v2}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    move/from16 v4, p4

    invoke-virtual {v3, v4}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    move-result-object v2

    move/from16 v5, p5

    invoke-virtual {v2, v5}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    move-result-object v2

    move/from16 v6, p6

    invoke-virtual {v2, v6}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    move-result-object v2

    move/from16 v7, p7

    invoke-virtual {v2, v7}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    move/from16 v8, p9

    invoke-virtual {v3, v8}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    move/from16 v9, p10

    invoke-virtual {v3, v9}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    invoke-virtual {v3, v1}, Lsun/java2d/pipe/RenderBuffer;->putInt(I)Lsun/java2d/pipe/RenderBuffer;

    if-eqz v0, :cond_4

    array-length v2, v0

    sub-int/2addr v1, v2

    invoke-virtual {v3, v0}, Lsun/java2d/pipe/RenderBuffer;->put([B)Lsun/java2d/pipe/RenderBuffer;

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lsun/java2d/pipe/RenderBuffer;->position()I

    move-result v0

    add-int/2addr v0, v1

    int-to-long v0, v0

    invoke-virtual {v3, v0, v1}, Lsun/java2d/pipe/RenderBuffer;->position(J)V

    goto :goto_2

    :cond_3
    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p9

    move/from16 v9, p10

    iget-object v11, v10, Lsun/java2d/pipe/BufferedMaskFill;->rq:Lsun/java2d/pipe/RenderQueue;

    new-instance v12, Lsun/java2d/pipe/BufferedMaskFill$1;

    move-object v1, v12

    move-object v2, p0

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p9

    move/from16 v8, p10

    move-object/from16 v9, p8

    invoke-direct/range {v1 .. v9}, Lsun/java2d/pipe/BufferedMaskFill$1;-><init>(Lsun/java2d/pipe/BufferedMaskFill;IIIIII[B)V

    invoke-virtual {v11, v12}, Lsun/java2d/pipe/RenderQueue;->flushAndInvokeNow(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_2
    iget-object v0, v10, Lsun/java2d/pipe/BufferedMaskFill;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, v10, Lsun/java2d/pipe/BufferedMaskFill;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v1}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    throw v0
.end method

.method public abstract maskFill(IIIIIII[B)V
.end method

.method public abstract validateContext(Lsun/java2d/SunGraphics2D;Ljava/awt/Composite;I)V
.end method
