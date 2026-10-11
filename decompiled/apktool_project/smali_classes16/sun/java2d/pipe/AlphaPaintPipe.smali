.class public Lsun/java2d/pipe/AlphaPaintPipe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/pipe/CompositePipe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/java2d/pipe/AlphaPaintPipe$TileContext;
    }
.end annotation


# static fields
.field private static final TILE_SIZE:I = 0x20

.field static cachedLastColorModel:Ljava/lang/ref/WeakReference;

.field static cachedLastData:Ljava/lang/ref/WeakReference;

.field static cachedLastRaster:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endSequence(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;

    iget-object p0, p1, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->paintCtxt:Ljava/awt/PaintContext;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/awt/PaintContext;->dispose()V

    :cond_0
    const-class p0, Lsun/java2d/pipe/AlphaPaintPipe;

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->lastData:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->lastRaster:Ljava/lang/ref/WeakReference;

    sput-object v0, Lsun/java2d/pipe/AlphaPaintPipe;->cachedLastRaster:Ljava/lang/ref/WeakReference;

    sget-object v0, Lsun/java2d/pipe/AlphaPaintPipe;->cachedLastColorModel:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p1, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->paintModel:Ljava/awt/image/ColorModel;

    if-eq v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    iget-object v1, p1, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->paintModel:Ljava/awt/image/ColorModel;

    invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lsun/java2d/pipe/AlphaPaintPipe;->cachedLastColorModel:Ljava/lang/ref/WeakReference;

    :cond_2
    iget-object p1, p1, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->lastData:Ljava/lang/ref/WeakReference;

    sput-object p1, Lsun/java2d/pipe/AlphaPaintPipe;->cachedLastData:Ljava/lang/ref/WeakReference;

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public needTile(Ljava/lang/Object;IIII)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public renderPathTile(Ljava/lang/Object;[BIIIIII)V
    .locals 30

    move/from16 v0, p7

    move/from16 v1, p8

    move-object/from16 v2, p1

    check-cast v2, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;

    iget-object v3, v2, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->paintCtxt:Ljava/awt/PaintContext;

    iget-object v4, v2, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->sunG2D:Lsun/java2d/SunGraphics2D;

    iget-object v15, v2, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->dstData:Lsun/java2d/SurfaceData;

    iget-object v5, v2, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->lastData:Ljava/lang/ref/WeakReference;

    if-eqz v5, :cond_0

    iget-object v6, v2, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->lastRaster:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_0

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lsun/java2d/SurfaceData;

    iget-object v6, v2, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->lastRaster:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/awt/image/Raster;

    if-eqz v5, :cond_0

    if-nez v6, :cond_1

    :cond_0
    const/4 v5, 0x0

    const/4 v6, 0x0

    :cond_1
    iget-object v13, v2, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->paintModel:Ljava/awt/image/ColorModel;

    const/4 v12, 0x0

    move v11, v12

    :goto_0
    if-ge v11, v1, :cond_b

    add-int v10, p6, v11

    sub-int v7, v1, v11

    const/16 v9, 0x20

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    move v7, v12

    :goto_1
    if-ge v7, v0, :cond_a

    move/from16 v16, v11

    add-int v11, p5, v7

    sub-int v14, v0, v7

    invoke-static {v14, v9}, Ljava/lang/Math;->min(II)I

    move-result v14

    invoke-interface {v3, v11, v10, v14, v8}, Ljava/awt/PaintContext;->getRaster(IIII)Ljava/awt/image/Raster;

    move-result-object v9

    invoke-virtual {v9}, Ljava/awt/image/Raster;->getMinX()I

    move-result v17

    if-nez v17, :cond_2

    invoke-virtual {v9}, Ljava/awt/image/Raster;->getMinY()I

    move-result v17

    if-eqz v17, :cond_3

    :cond_2
    invoke-virtual {v9, v12, v12}, Ljava/awt/image/Raster;->createTranslatedChild(II)Ljava/awt/image/Raster;

    move-result-object v9

    :cond_3
    if-eq v6, v9, :cond_4

    new-instance v5, Ljava/lang/ref/WeakReference;

    invoke-direct {v5, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v5, v2, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->lastRaster:Ljava/lang/ref/WeakReference;

    new-instance v5, Ljava/awt/image/BufferedImage;

    move-object v6, v9

    check-cast v6, Ljava/awt/image/WritableRaster;

    invoke-virtual {v13}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v12

    move/from16 v18, v11

    const/4 v11, 0x0

    invoke-direct {v5, v13, v6, v12, v11}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    invoke-static {v5}, Lsun/awt/image/BufImgSurfaceData;->createData(Ljava/awt/image/BufferedImage;)Lsun/java2d/SurfaceData;

    move-result-object v5

    new-instance v6, Ljava/lang/ref/WeakReference;

    invoke-direct {v6, v5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v6, v2, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->lastData:Ljava/lang/ref/WeakReference;

    iput-object v11, v2, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->lastMask:Lsun/java2d/loops/MaskBlit;

    iput-object v11, v2, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->lastBlit:Lsun/java2d/loops/Blit;

    move-object/from16 v19, v5

    move-object/from16 v20, v9

    goto :goto_2

    :cond_4
    move/from16 v18, v11

    const/4 v11, 0x0

    move-object/from16 v19, v5

    move-object/from16 v20, v6

    :goto_2
    const/4 v5, 0x1

    if-nez p2, :cond_7

    iget-object v6, v2, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->lastBlit:Lsun/java2d/loops/Blit;

    if-nez v6, :cond_6

    iget-object v6, v4, Lsun/java2d/SunGraphics2D;->imageComp:Lsun/java2d/loops/CompositeType;

    sget-object v9, Lsun/java2d/loops/CompositeType;->SrcOverNoEa:Lsun/java2d/loops/CompositeType;

    invoke-virtual {v9, v6}, Lsun/java2d/loops/CompositeType;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v13}, Ljava/awt/image/ColorModel;->getTransparency()I

    move-result v9

    if-ne v9, v5, :cond_5

    sget-object v6, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    :cond_5
    invoke-virtual/range {v19 .. v19}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v5

    invoke-virtual {v15}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v9

    invoke-static {v5, v6, v9}, Lsun/java2d/loops/Blit;->getFromCache(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/Blit;

    move-result-object v5

    iput-object v5, v2, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->lastBlit:Lsun/java2d/loops/Blit;

    :cond_6
    iget-object v5, v2, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->lastBlit:Lsun/java2d/loops/Blit;

    iget-object v9, v4, Lsun/java2d/SunGraphics2D;->composite:Ljava/awt/Composite;

    const/4 v12, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v6, v19

    move/from16 v23, v7

    move-object v7, v15

    move/from16 v24, v8

    move-object v8, v9

    const/16 v25, 0x20

    move-object v9, v12

    move/from16 v26, v10

    move/from16 v10, v21

    move/from16 v21, v16

    move/from16 v12, v18

    move-object/from16 v16, v11

    move/from16 v11, v22

    const/16 v22, 0x0

    move-object/from16 v27, v13

    move/from16 v13, v26

    move-object/from16 v28, v16

    move-object/from16 v29, v15

    move/from16 v15, v24

    invoke-virtual/range {v5 .. v15}, Lsun/java2d/loops/Blit;->Blit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII)V

    goto :goto_3

    :cond_7
    move/from16 v23, v7

    move/from16 v24, v8

    move/from16 v26, v10

    move-object/from16 v28, v11

    move-object/from16 v27, v13

    move-object/from16 v29, v15

    move/from16 v21, v16

    move/from16 v12, v18

    const/16 v22, 0x0

    const/16 v25, 0x20

    iget-object v6, v2, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->lastMask:Lsun/java2d/loops/MaskBlit;

    if-nez v6, :cond_9

    iget-object v6, v4, Lsun/java2d/SunGraphics2D;->imageComp:Lsun/java2d/loops/CompositeType;

    sget-object v7, Lsun/java2d/loops/CompositeType;->SrcOverNoEa:Lsun/java2d/loops/CompositeType;

    invoke-virtual {v7, v6}, Lsun/java2d/loops/CompositeType;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-virtual/range {v27 .. v27}, Ljava/awt/image/ColorModel;->getTransparency()I

    move-result v7

    if-ne v7, v5, :cond_8

    sget-object v6, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    :cond_8
    invoke-virtual/range {v19 .. v19}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v5

    invoke-virtual/range {v29 .. v29}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lsun/java2d/loops/MaskBlit;->getFromCache(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/MaskBlit;

    move-result-object v5

    iput-object v5, v2, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->lastMask:Lsun/java2d/loops/MaskBlit;

    :cond_9
    mul-int v11, v21, p4

    add-int v5, p3, v11

    add-int v17, v5, v23

    iget-object v5, v2, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;->lastMask:Lsun/java2d/loops/MaskBlit;

    iget-object v8, v4, Lsun/java2d/SunGraphics2D;->composite:Ljava/awt/Composite;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v6, v19

    move-object/from16 v7, v29

    move/from16 v13, v26

    move/from16 v15, v24

    move-object/from16 v16, p2

    move/from16 v18, p4

    invoke-virtual/range {v5 .. v18}, Lsun/java2d/loops/MaskBlit;->MaskBlit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII[BII)V

    :goto_3
    add-int/lit8 v7, v23, 0x20

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move/from16 v11, v21

    move/from16 v12, v22

    move/from16 v8, v24

    move/from16 v9, v25

    move/from16 v10, v26

    move-object/from16 v13, v27

    move-object/from16 v15, v29

    goto/16 :goto_1

    :cond_a
    move/from16 v21, v11

    move/from16 v22, v12

    move-object/from16 v27, v13

    move-object/from16 v29, v15

    const/16 v28, 0x0

    add-int/lit8 v11, v21, 0x20

    goto/16 :goto_0

    :cond_b
    return-void
.end method

.method public skipTile(Ljava/lang/Object;II)V
    .locals 0

    return-void
.end method

.method public startSequence(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;Ljava/awt/Rectangle;[I)Ljava/lang/Object;
    .locals 6

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->paint:Ljava/awt/Paint;

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getDeviceColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    invoke-interface {p2}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v3

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->cloneTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v4

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getRenderingHints()Ljava/awt/RenderingHints;

    move-result-object v5

    move-object v2, p3

    invoke-interface/range {v0 .. v5}, Ljava/awt/Paint;->createContext(Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)Ljava/awt/PaintContext;

    move-result-object p0

    new-instance p2, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;

    invoke-direct {p2, p1, p0}, Lsun/java2d/pipe/AlphaPaintPipe$TileContext;-><init>(Lsun/java2d/SunGraphics2D;Ljava/awt/PaintContext;)V

    return-object p2
.end method
