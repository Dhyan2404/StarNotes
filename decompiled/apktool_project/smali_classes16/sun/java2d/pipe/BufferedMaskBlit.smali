.class public abstract Lsun/java2d/pipe/BufferedMaskBlit;
.super Lsun/java2d/loops/MaskBlit;
.source "SourceFile"


# static fields
.field private static final ST_INT_ARGB:I = 0x0

.field private static final ST_INT_ARGB_PRE:I = 0x1

.field private static final ST_INT_BGR:I = 0x3

.field private static final ST_INT_RGB:I = 0x2


# instance fields
.field private blitop:Lsun/java2d/loops/Blit;

.field private final rq:Lsun/java2d/pipe/RenderQueue;

.field private final srcTypeVal:I


# direct methods
.method public constructor <init>(Lsun/java2d/pipe/RenderQueue;Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V
    .locals 0

    invoke-direct {p0, p2, p3, p4}, Lsun/java2d/loops/MaskBlit;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    iput-object p1, p0, Lsun/java2d/pipe/BufferedMaskBlit;->rq:Lsun/java2d/pipe/RenderQueue;

    sget-object p1, Lsun/java2d/loops/SurfaceType;->IntArgb:Lsun/java2d/loops/SurfaceType;

    if-ne p2, p1, :cond_0

    const/4 p1, 0x0

    iput p1, p0, Lsun/java2d/pipe/BufferedMaskBlit;->srcTypeVal:I

    goto :goto_0

    :cond_0
    sget-object p1, Lsun/java2d/loops/SurfaceType;->IntArgbPre:Lsun/java2d/loops/SurfaceType;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    iput p1, p0, Lsun/java2d/pipe/BufferedMaskBlit;->srcTypeVal:I

    goto :goto_0

    :cond_1
    sget-object p1, Lsun/java2d/loops/SurfaceType;->IntRgb:Lsun/java2d/loops/SurfaceType;

    if-ne p2, p1, :cond_2

    const/4 p1, 0x2

    iput p1, p0, Lsun/java2d/pipe/BufferedMaskBlit;->srcTypeVal:I

    goto :goto_0

    :cond_2
    sget-object p1, Lsun/java2d/loops/SurfaceType;->IntBgr:Lsun/java2d/loops/SurfaceType;

    if-ne p2, p1, :cond_3

    const/4 p1, 0x3

    iput p1, p0, Lsun/java2d/pipe/BufferedMaskBlit;->srcTypeVal:I

    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "unrecognized source surface type"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private native enqueueTile(JILsun/java2d/SurfaceData;JI[BIIIIIIIII)I
.end method


# virtual methods
.method public MaskBlit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII[BII)V
    .locals 19

    move-object/from16 v15, p0

    move-object/from16 v0, p11

    if-lez p9, :cond_4

    if-gtz p10, :cond_0

    goto/16 :goto_2

    :cond_0
    if-nez v0, :cond_2

    iget-object v0, v15, Lsun/java2d/pipe/BufferedMaskBlit;->blitop:Lsun/java2d/loops/Blit;

    if-nez v0, :cond_1

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v0

    sget-object v1, Lsun/java2d/loops/CompositeType;->AnyAlpha:Lsun/java2d/loops/CompositeType;

    invoke-virtual/range {p0 .. p0}, Lsun/java2d/loops/GraphicsPrimitive;->getDestType()Lsun/java2d/loops/SurfaceType;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lsun/java2d/loops/Blit;->getFromCache(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/Blit;

    move-result-object v0

    iput-object v0, v15, Lsun/java2d/pipe/BufferedMaskBlit;->blitop:Lsun/java2d/loops/Blit;

    :cond_1
    iget-object v1, v15, Lsun/java2d/pipe/BufferedMaskBlit;->blitop:Lsun/java2d/loops/Blit;

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    invoke-virtual/range {v1 .. v11}, Lsun/java2d/loops/Blit;->Blit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII)V

    return-void

    :cond_2
    move-object/from16 v1, p3

    check-cast v1, Ljava/awt/AlphaComposite;

    invoke-virtual {v1}, Ljava/awt/AlphaComposite;->getRule()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    sget-object v1, Ljava/awt/AlphaComposite;->SrcOver:Ljava/awt/AlphaComposite;

    goto :goto_0

    :cond_3
    move-object/from16 v1, p3

    :goto_0
    iget-object v2, v15, Lsun/java2d/pipe/BufferedMaskBlit;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v2}, Lsun/java2d/pipe/RenderQueue;->lock()V

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    :try_start_0
    invoke-virtual {v15, v2, v1, v3}, Lsun/java2d/pipe/BufferedMaskBlit;->validateContext(Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;)V

    iget-object v1, v15, Lsun/java2d/pipe/BufferedMaskBlit;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v1}, Lsun/java2d/pipe/RenderQueue;->getBuffer()Lsun/java2d/pipe/RenderBuffer;

    move-result-object v14

    mul-int v1, p9, p10

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x14

    iget-object v2, v15, Lsun/java2d/pipe/BufferedMaskBlit;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v2, v1}, Lsun/java2d/pipe/RenderQueue;->ensureCapacity(I)V

    invoke-virtual {v14}, Lsun/java2d/pipe/RenderBuffer;->getAddress()J

    move-result-wide v2

    invoke-virtual {v14}, Lsun/java2d/pipe/RenderBuffer;->position()I

    move-result v4

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SurfaceData;->getNativeOps()J

    move-result-wide v6

    iget v8, v15, Lsun/java2d/pipe/BufferedMaskBlit;->srcTypeVal:I

    array-length v10, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object/from16 v1, p0

    move-object/from16 v5, p1

    move-object/from16 v9, p11

    move/from16 v11, p12

    move/from16 v12, p13

    move/from16 v13, p5

    move-object v0, v14

    move/from16 v14, p6

    move/from16 v15, p7

    move/from16 v16, p8

    move/from16 v17, p9

    move/from16 v18, p10

    :try_start_1
    invoke-direct/range {v1 .. v18}, Lsun/java2d/pipe/BufferedMaskBlit;->enqueueTile(JILsun/java2d/SurfaceData;JI[BIIIIIIIII)I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lsun/java2d/pipe/RenderBuffer;->position(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p0

    iget-object v0, v1, Lsun/java2d/pipe/BufferedMaskBlit;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v0}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v1, v15

    :goto_1
    iget-object v1, v1, Lsun/java2d/pipe/BufferedMaskBlit;->rq:Lsun/java2d/pipe/RenderQueue;

    invoke-virtual {v1}, Lsun/java2d/pipe/RenderQueue;->unlock()V

    throw v0

    :cond_4
    :goto_2
    return-void
.end method

.method public abstract validateContext(Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;)V
.end method
