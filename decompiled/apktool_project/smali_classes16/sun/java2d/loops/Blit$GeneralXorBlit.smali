.class Lsun/java2d/loops/Blit$GeneralXorBlit;
.super Lsun/java2d/loops/Blit;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/loops/GraphicsPrimitive$GeneralBinaryOp;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/java2d/loops/Blit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeneralXorBlit"
.end annotation


# instance fields
.field convertdst:Lsun/java2d/loops/Blit;

.field convertresult:Lsun/java2d/loops/Blit;

.field convertsrc:Lsun/java2d/loops/Blit;

.field dstTmp:Ljava/lang/ref/WeakReference;

.field performop:Lsun/java2d/loops/Blit;

.field srcTmp:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lsun/java2d/loops/Blit;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized Blit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII)V
    .locals 20

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lsun/java2d/loops/Blit$GeneralXorBlit;->convertsrc:Lsun/java2d/loops/Blit;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    move-object/from16 v6, p1

    move/from16 v10, p5

    move/from16 v11, p6

    goto :goto_1

    :cond_0
    iget-object v0, v1, Lsun/java2d/loops/Blit$GeneralXorBlit;->srcTmp:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/java2d/SurfaceData;

    goto :goto_0

    :cond_1
    move-object v0, v2

    :goto_0
    iget-object v4, v1, Lsun/java2d/loops/Blit$GeneralXorBlit;->convertsrc:Lsun/java2d/loops/Blit;

    move-object/from16 v5, p1

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p9

    move/from16 v9, p10

    move-object v10, v0

    invoke-static/range {v4 .. v10}, Lsun/java2d/loops/GraphicsPrimitive;->convertFrom(Lsun/java2d/loops/Blit;Lsun/java2d/SurfaceData;IIIILsun/java2d/SurfaceData;)Lsun/java2d/SurfaceData;

    move-result-object v4

    if-eq v4, v0, :cond_2

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v1, Lsun/java2d/loops/Blit$GeneralXorBlit;->srcTmp:Ljava/lang/ref/WeakReference;

    :cond_2
    move v10, v3

    move v11, v10

    move-object v6, v4

    :goto_1
    iget-object v0, v1, Lsun/java2d/loops/Blit$GeneralXorBlit;->convertdst:Lsun/java2d/loops/Blit;

    if-nez v0, :cond_3

    move-object/from16 v4, p2

    move-object/from16 v9, p4

    move/from16 v12, p7

    move/from16 v13, p8

    goto :goto_3

    :cond_3
    iget-object v0, v1, Lsun/java2d/loops/Blit$GeneralXorBlit;->dstTmp:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/java2d/SurfaceData;

    goto :goto_2

    :cond_4
    move-object v0, v2

    :goto_2
    iget-object v12, v1, Lsun/java2d/loops/Blit$GeneralXorBlit;->convertdst:Lsun/java2d/loops/Blit;

    move-object/from16 v13, p2

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v16, p9

    move/from16 v17, p10

    move-object/from16 v18, v0

    invoke-static/range {v12 .. v18}, Lsun/java2d/loops/GraphicsPrimitive;->convertFrom(Lsun/java2d/loops/Blit;Lsun/java2d/SurfaceData;IIIILsun/java2d/SurfaceData;)Lsun/java2d/SurfaceData;

    move-result-object v4

    if-eq v4, v0, :cond_5

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, v1, Lsun/java2d/loops/Blit$GeneralXorBlit;->dstTmp:Ljava/lang/ref/WeakReference;

    :cond_5
    move-object v9, v2

    move v12, v3

    move v13, v12

    :goto_3
    iget-object v5, v1, Lsun/java2d/loops/Blit$GeneralXorBlit;->performop:Lsun/java2d/loops/Blit;

    move-object v7, v4

    move-object/from16 v8, p3

    move/from16 v14, p9

    move/from16 v15, p10

    invoke-virtual/range {v5 .. v15}, Lsun/java2d/loops/Blit;->Blit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII)V

    iget-object v12, v1, Lsun/java2d/loops/Blit$GeneralXorBlit;->convertresult:Lsun/java2d/loops/Blit;

    if-eqz v12, :cond_6

    move-object v13, v4

    move-object/from16 v14, p2

    move-object/from16 v15, p4

    move/from16 v16, p7

    move/from16 v17, p8

    move/from16 v18, p9

    move/from16 v19, p10

    invoke-static/range {v12 .. v19}, Lsun/java2d/loops/GraphicsPrimitive;->convertTo(Lsun/java2d/loops/Blit;Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Lsun/java2d/pipe/Region;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setPrimitives(Lsun/java2d/loops/Blit;Lsun/java2d/loops/Blit;Lsun/java2d/loops/GraphicsPrimitive;Lsun/java2d/loops/Blit;)V
    .locals 0

    iput-object p1, p0, Lsun/java2d/loops/Blit$GeneralXorBlit;->convertsrc:Lsun/java2d/loops/Blit;

    iput-object p2, p0, Lsun/java2d/loops/Blit$GeneralXorBlit;->convertdst:Lsun/java2d/loops/Blit;

    check-cast p3, Lsun/java2d/loops/Blit;

    iput-object p3, p0, Lsun/java2d/loops/Blit$GeneralXorBlit;->performop:Lsun/java2d/loops/Blit;

    iput-object p4, p0, Lsun/java2d/loops/Blit$GeneralXorBlit;->convertresult:Lsun/java2d/loops/Blit;

    return-void
.end method
