.class Lsun/java2d/loops/XorCopyArgbToAny;
.super Lsun/java2d/loops/Blit;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    sget-object v0, Lsun/java2d/loops/SurfaceType;->IntArgb:Lsun/java2d/loops/SurfaceType;

    sget-object v1, Lsun/java2d/loops/CompositeType;->Xor:Lsun/java2d/loops/CompositeType;

    sget-object v2, Lsun/java2d/loops/SurfaceType;->Any:Lsun/java2d/loops/SurfaceType;

    invoke-direct {p0, v0, v1, v2}, Lsun/java2d/loops/Blit;-><init>(Lsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    return-void
.end method


# virtual methods
.method public Blit(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Ljava/awt/Composite;Lsun/java2d/pipe/Region;IIIIII)V
    .locals 21

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move/from16 v12, p8

    move/from16 v7, p9

    move-object/from16 v0, p1

    move/from16 v8, p10

    invoke-virtual {v0, v9, v10, v7, v8}, Lsun/java2d/SurfaceData;->getRaster(IIII)Ljava/awt/image/Raster;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lsun/awt/image/IntegerComponentRaster;

    invoke-virtual {v13}, Lsun/awt/image/IntegerComponentRaster;->getDataStorage()[I

    move-result-object v14

    move-object/from16 v1, p2

    invoke-virtual {v1, v11, v12, v7, v8}, Lsun/java2d/SurfaceData;->getRaster(IIII)Ljava/awt/image/Raster;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Ljava/awt/image/WritableRaster;

    invoke-virtual/range {p2 .. p2}, Lsun/java2d/SurfaceData;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v6

    move-object/from16 v2, p4

    move/from16 v3, p5

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 p0, v15

    move-object v15, v6

    move/from16 v6, p8

    invoke-static/range {v0 .. v8}, Lsun/java2d/loops/CustomComponent;->getRegionOfInterest(Lsun/java2d/SurfaceData;Lsun/java2d/SurfaceData;Lsun/java2d/pipe/Region;IIIIII)Lsun/java2d/pipe/Region;

    move-result-object v0

    invoke-virtual {v0}, Lsun/java2d/pipe/Region;->getSpanIterator()Lsun/java2d/pipe/SpanIterator;

    move-result-object v0

    move-object/from16 v1, p3

    check-cast v1, Lsun/java2d/loops/XORComposite;

    invoke-virtual {v1}, Lsun/java2d/loops/XORComposite;->getXorColor()Ljava/awt/Color;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/Color;->getRGB()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v15, v1, v2}, Ljava/awt/image/ColorModel;->getDataElements(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v13}, Lsun/awt/image/IntegerComponentRaster;->getScanlineStride()I

    move-result v3

    sub-int v4, v9, v11

    sub-int v5, v10, v12

    const/4 v6, 0x4

    new-array v7, v6, [I

    move-object v8, v2

    :goto_0
    invoke-interface {v0, v7}, Lsun/java2d/pipe/SpanIterator;->nextSpan([I)Z

    move-result v9

    if-eqz v9, :cond_9

    const/4 v9, 0x0

    invoke-virtual {v13, v9}, Lsun/awt/image/IntegerComponentRaster;->getDataOffset(I)I

    move-result v10

    const/4 v11, 0x1

    aget v12, v7, v11

    add-int v16, v5, v12

    mul-int v16, v16, v3

    add-int v10, v10, v16

    aget v16, v7, v9

    add-int v16, v4, v16

    add-int v10, v10, v16

    :goto_1
    const/4 v6, 0x3

    aget v11, v7, v6

    if-ge v12, v11, :cond_8

    aget v11, v7, v9

    move/from16 v16, v10

    :goto_2
    const/4 v9, 0x2

    aget v6, v7, v9

    if-ge v11, v6, :cond_7

    add-int/lit8 v6, v16, 0x1

    aget v9, v14, v16

    invoke-virtual {v15, v9, v2}, Ljava/awt/image/ColorModel;->getDataElements(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v9, p0

    invoke-virtual {v9, v11, v12, v8}, Ljava/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 p0, v0

    invoke-virtual {v15}, Ljava/awt/image/ColorModel;->getTransferType()I

    move-result v0

    if-eqz v0, :cond_5

    move/from16 p7, v4

    const/4 v4, 0x1

    if-eq v0, v4, :cond_4

    const/4 v4, 0x2

    if-eq v0, v4, :cond_4

    const/4 v4, 0x3

    if-eq v0, v4, :cond_3

    const/4 v4, 0x4

    if-eq v0, v4, :cond_2

    const/4 v4, 0x5

    if-ne v0, v4, :cond_1

    move-object v0, v2

    check-cast v0, [D

    move-object v4, v8

    check-cast v4, [D

    move-object/from16 v16, v1

    check-cast v16, [D

    move/from16 p5, v5

    move/from16 p6, v6

    const/4 v5, 0x0

    :goto_3
    array-length v6, v4

    if-ge v5, v6, :cond_0

    aget-wide v17, v4, v5

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v17

    aget-wide v19, v0, v5

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v19

    xor-long v17, v17, v19

    aget-wide v19, v16, v5

    invoke-static/range {v19 .. v20}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v19

    xor-long v17, v17, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v17

    aput-wide v17, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_0
    move-object/from16 v16, v7

    goto/16 :goto_8

    :cond_1
    new-instance v0, Ljava/lang/InternalError;

    const-string v1, "Unsupported XOR pixel type"

    invoke-direct {v0, v1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    move/from16 p5, v5

    move/from16 p6, v6

    move-object v0, v2

    check-cast v0, [F

    move-object v4, v8

    check-cast v4, [F

    move-object v5, v1

    check-cast v5, [F

    move-object/from16 v16, v7

    const/4 v6, 0x0

    :goto_4
    array-length v7, v4

    if-ge v6, v7, :cond_6

    aget v7, v4, v6

    invoke-static {v7}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v7

    aget v17, v0, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v17

    xor-int v7, v7, v17

    aget v17, v5, v6

    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v17

    xor-int v7, v7, v17

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    move/from16 p5, v5

    move/from16 p6, v6

    move-object/from16 v16, v7

    move-object v0, v2

    check-cast v0, [I

    move-object v4, v8

    check-cast v4, [I

    move-object v5, v1

    check-cast v5, [I

    const/4 v6, 0x0

    :goto_5
    array-length v7, v4

    if-ge v6, v7, :cond_6

    aget v7, v4, v6

    aget v17, v0, v6

    aget v18, v5, v6

    xor-int v17, v17, v18

    xor-int v7, v7, v17

    aput v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    :cond_4
    move/from16 p5, v5

    move/from16 p6, v6

    move-object/from16 v16, v7

    move-object v0, v2

    check-cast v0, [S

    move-object v4, v8

    check-cast v4, [S

    move-object v5, v1

    check-cast v5, [S

    const/4 v6, 0x0

    :goto_6
    array-length v7, v4

    if-ge v6, v7, :cond_6

    aget-short v7, v4, v6

    aget-short v17, v0, v6

    aget-short v18, v5, v6

    xor-int v17, v17, v18

    xor-int v7, v7, v17

    int-to-short v7, v7

    aput-short v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_5
    move/from16 p7, v4

    move/from16 p5, v5

    move/from16 p6, v6

    move-object/from16 v16, v7

    move-object v0, v2

    check-cast v0, [B

    move-object v4, v8

    check-cast v4, [B

    move-object v5, v1

    check-cast v5, [B

    const/4 v6, 0x0

    :goto_7
    array-length v7, v4

    if-ge v6, v7, :cond_6

    aget-byte v7, v4, v6

    aget-byte v17, v0, v6

    aget-byte v18, v5, v6

    xor-int v17, v17, v18

    xor-int v7, v7, v17

    int-to-byte v7, v7

    aput-byte v7, v4, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_6
    :goto_8
    invoke-virtual {v9, v11, v12, v8}, Ljava/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    move-object/from16 v0, p0

    move/from16 v5, p5

    move/from16 v4, p7

    move-object/from16 p0, v9

    move-object/from16 v7, v16

    const/4 v6, 0x3

    move/from16 v16, p6

    goto/16 :goto_2

    :cond_7
    move-object/from16 v9, p0

    move-object/from16 p0, v0

    move/from16 p7, v4

    move/from16 p5, v5

    move-object/from16 v16, v7

    add-int/2addr v10, v3

    add-int/lit8 v12, v12, 0x1

    move-object/from16 p0, v9

    const/4 v9, 0x0

    const/4 v11, 0x1

    goto/16 :goto_1

    :cond_8
    move-object/from16 v9, p0

    const/4 v6, 0x4

    goto/16 :goto_0

    :cond_9
    return-void
.end method
