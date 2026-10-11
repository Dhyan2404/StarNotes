.class public Lsun/java2d/pipe/GeneralCompositePipe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsun/java2d/pipe/CompositePipe;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lsun/java2d/pipe/GeneralCompositePipe$TileContext;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endSequence(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lsun/java2d/pipe/GeneralCompositePipe$TileContext;

    iget-object p0, p1, Lsun/java2d/pipe/GeneralCompositePipe$TileContext;->paintCtxt:Ljava/awt/PaintContext;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/awt/PaintContext;->dispose()V

    :cond_0
    iget-object p0, p1, Lsun/java2d/pipe/GeneralCompositePipe$TileContext;->compCtxt:Ljava/awt/CompositeContext;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/awt/CompositeContext;->dispose()V

    :cond_1
    return-void
.end method

.method public needTile(Ljava/lang/Object;IIII)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public renderPathTile(Ljava/lang/Object;[BIIIIII)V
    .locals 19

    move/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p7

    move/from16 v11, p8

    move-object/from16 v0, p1

    check-cast v0, Lsun/java2d/pipe/GeneralCompositePipe$TileContext;

    iget-object v1, v0, Lsun/java2d/pipe/GeneralCompositePipe$TileContext;->paintCtxt:Ljava/awt/PaintContext;

    iget-object v12, v0, Lsun/java2d/pipe/GeneralCompositePipe$TileContext;->compCtxt:Ljava/awt/CompositeContext;

    iget-object v13, v0, Lsun/java2d/pipe/GeneralCompositePipe$TileContext;->sunG2D:Lsun/java2d/SunGraphics2D;

    invoke-interface {v1, v8, v9, v10, v11}, Ljava/awt/PaintContext;->getRaster(IIII)Ljava/awt/image/Raster;

    move-result-object v14

    invoke-interface {v1}, Ljava/awt/PaintContext;->getColorModel()Ljava/awt/image/ColorModel;

    invoke-virtual {v13}, Lsun/java2d/SunGraphics2D;->getSurfaceData()Lsun/java2d/SurfaceData;

    move-result-object v15

    invoke-virtual {v15, v8, v9, v10, v11}, Lsun/java2d/SurfaceData;->getRaster(IIII)Ljava/awt/image/Raster;

    move-result-object v7

    instance-of v6, v7, Ljava/awt/image/WritableRaster;

    if-eqz v6, :cond_0

    if-nez p2, :cond_0

    move-object v0, v7

    check-cast v0, Ljava/awt/image/WritableRaster;

    const/4 v5, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    move/from16 v18, v6

    move/from16 v6, v16

    move-object/from16 p0, v7

    move-object/from16 v7, v17

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Ljava/awt/image/WritableRaster;

    move-result-object v0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move/from16 v18, v6

    move-object/from16 p0, v7

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move/from16 v1, p5

    move/from16 v2, p6

    move/from16 v3, p7

    move/from16 v4, p8

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/Raster;->createChild(IIIIII[I)Ljava/awt/image/Raster;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/Raster;->createCompatibleWritableRaster()Ljava/awt/image/WritableRaster;

    move-result-object v1

    :goto_0
    invoke-interface {v12, v14, v0, v1}, Ljava/awt/CompositeContext;->compose(Ljava/awt/image/Raster;Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)V

    move-object/from16 v0, p0

    if-eq v0, v1, :cond_3

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getParent()Ljava/awt/image/Raster;

    move-result-object v2

    if-eq v2, v0, :cond_3

    if-eqz v18, :cond_1

    if-nez p2, :cond_1

    move-object v7, v0

    check-cast v7, Ljava/awt/image/WritableRaster;

    invoke-virtual {v7, v8, v9, v1}, Ljava/awt/image/WritableRaster;->setDataElements(IILjava/awt/image/Raster;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v13}, Lsun/java2d/SunGraphics2D;->getDeviceColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    new-instance v2, Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v1, v3, v4}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    invoke-static {v2}, Lsun/awt/image/BufImgSurfaceData;->createData(Ljava/awt/image/BufferedImage;)Lsun/java2d/SurfaceData;

    move-result-object v1

    if-nez p2, :cond_2

    invoke-virtual {v1}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v0

    sget-object v2, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    invoke-virtual {v15}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lsun/java2d/loops/Blit;->getFromCache(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/Blit;

    move-result-object v0

    sget-object v3, Ljava/awt/AlphaComposite;->Src:Ljava/awt/AlphaComposite;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v15

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v0 .. v10}, Lsun/java2d/loops/Blit;->Blit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII)V

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v0

    sget-object v2, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    invoke-virtual {v15}, Lsun/java2d/SurfaceData;->getSurfaceType()Lsun/java2d/loops/SurfaceType;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lsun/java2d/loops/MaskBlit;->getFromCache(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)Lsun/java2d/loops/MaskBlit;

    move-result-object v0

    sget-object v3, Ljava/awt/AlphaComposite;->Src:Ljava/awt/AlphaComposite;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, v15

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p4

    invoke-virtual/range {v0 .. v13}, Lsun/java2d/loops/MaskBlit;->MaskBlit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII[BII)V

    :cond_3
    :goto_1
    return-void
.end method

.method public skipTile(Ljava/lang/Object;II)V
    .locals 0

    return-void
.end method

.method public startSequence(Lsun/java2d/SunGraphics2D;Ljava/awt/Shape;Ljava/awt/Rectangle;[I)Ljava/lang/Object;
    .locals 7

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getRenderingHints()Ljava/awt/RenderingHints;

    move-result-object p4

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->getDeviceColorModel()Ljava/awt/image/ColorModel;

    move-result-object v6

    iget-object v0, p1, Lsun/java2d/SunGraphics2D;->paint:Ljava/awt/Paint;

    invoke-interface {p2}, Ljava/awt/Shape;->getBounds2D()Ljava/awt/geom/Rectangle2D;

    move-result-object v3

    invoke-virtual {p1}, Lsun/java2d/SunGraphics2D;->cloneTransform()Ljava/awt/geom/AffineTransform;

    move-result-object v4

    move-object v1, v6

    move-object v2, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Ljava/awt/Paint;->createContext(Ljava/awt/image/ColorModel;Ljava/awt/Rectangle;Ljava/awt/geom/Rectangle2D;Ljava/awt/geom/AffineTransform;Ljava/awt/RenderingHints;)Ljava/awt/PaintContext;

    move-result-object v3

    iget-object p2, p1, Lsun/java2d/SunGraphics2D;->composite:Ljava/awt/Composite;

    invoke-interface {v3}, Ljava/awt/PaintContext;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p3

    invoke-interface {p2, p3, v6, p4}, Ljava/awt/Composite;->createContext(Ljava/awt/image/ColorModel;Ljava/awt/image/ColorModel;Ljava/awt/RenderingHints;)Ljava/awt/CompositeContext;

    move-result-object v4

    new-instance p2, Lsun/java2d/pipe/GeneralCompositePipe$TileContext;

    move-object v0, p2

    move-object v1, p0

    move-object v2, p1

    move-object v5, v6

    invoke-direct/range {v0 .. v5}, Lsun/java2d/pipe/GeneralCompositePipe$TileContext;-><init>(Lsun/java2d/pipe/GeneralCompositePipe;Lsun/java2d/SunGraphics2D;Ljava/awt/PaintContext;Ljava/awt/CompositeContext;Ljava/awt/image/ColorModel;)V

    return-object p2
.end method
