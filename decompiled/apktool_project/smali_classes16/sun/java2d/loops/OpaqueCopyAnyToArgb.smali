.class Lsun/java2d/loops/OpaqueCopyAnyToArgb;
.super Lsun/java2d/loops/Blit;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lsun/java2d/loops/SurfaceType;->Any:Lsun/java2d/loops/SurfaceType;

    sget-object v1, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    sget-object v2, Lsun/java2d/loops/SurfaceType;->IntArgb:Lsun/java2d/loops/SurfaceType;

    invoke-direct {p0, v0, v1, v2}, Lsun/java2d/loops/Blit;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    return-void
.end method


# virtual methods
.method public Blit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII)V
    .locals 17

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v7, p9

    move-object/from16 v0, p1

    move/from16 v8, p10

    invoke-virtual {v0, v9, v10, v7, v8}, Lsun/java2d/SurfaceData;->getRaster(IIII)Ljava/awt/image/Raster;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SurfaceData;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v14

    move-object/from16 v1, p2

    invoke-virtual {v1, v11, v12, v7, v8}, Lsun/java2d/SurfaceData;->getRaster(IIII)Ljava/awt/image/Raster;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Lsun/awt/image/IntegerComponentRaster;

    invoke-virtual {v15}, Lsun/awt/image/IntegerComponentRaster;->getDataStorage()[I

    move-result-object v16

    move-object/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move/from16 v6, p8

    invoke-static/range {v0 .. v8}, Lsun/java2d/loops/CustomComponent;->getRegionOfInterest(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Lsun/java2d/pipe/Region;IIIIII)Lsun/java2d/pipe/Region;

    move-result-object v0

    invoke-virtual {v0}, Lsun/java2d/pipe/Region;->getSpanIterator()Lsun/java2d/pipe/SpanIterator;

    move-result-object v0

    invoke-virtual {v15}, Lsun/awt/image/IntegerComponentRaster;->getScanlineStride()I

    move-result v1

    sub-int v2, v9, v11

    sub-int v3, v10, v12

    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v5, 0x0

    :cond_0
    invoke-interface {v0, v4}, Lsun/java2d/pipe/SpanIterator;->nextSpan([I)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v15, v6}, Lsun/awt/image/IntegerComponentRaster;->getDataOffset(I)I

    move-result v7

    const/4 v8, 0x1

    aget v8, v4, v8

    mul-int v9, v8, v1

    add-int/2addr v7, v9

    aget v9, v4, v6

    add-int/2addr v7, v9

    :goto_0
    const/4 v9, 0x3

    aget v9, v4, v9

    if-ge v8, v9, :cond_0

    aget v9, v4, v6

    move v10, v7

    :goto_1
    const/4 v11, 0x2

    aget v11, v4, v11

    if-ge v9, v11, :cond_1

    add-int v11, v9, v2

    add-int v12, v8, v3

    invoke-virtual {v13, v11, v12, v5}, Ljava/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v11, v10, 0x1

    invoke-virtual {v14, v5}, Ljava/awt/image/ColorModel;->getRGB(Ljava/lang/Object;)I

    move-result v12

    aput v12, v16, v10

    add-int/lit8 v9, v9, 0x1

    move v10, v11

    goto :goto_1

    :cond_1
    add-int/2addr v7, v1

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v15}, Lsun/awt/image/SunWritableRaster;->markDirty()V

    return-void
.end method
