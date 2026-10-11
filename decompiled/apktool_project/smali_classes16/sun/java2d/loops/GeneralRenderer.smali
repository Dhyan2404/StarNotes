.class public final Lsun/java2d/loops/GeneralRenderer;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final OUTCODE_BOTTOM:I = 0x2

.field static final OUTCODE_LEFT:I = 0x4

.field static final OUTCODE_RIGHT:I = 0x8

.field static final OUTCODE_TOP:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustLine([IIIII)Z
    .locals 26

    move/from16 v6, p1

    move/from16 v7, p2

    const/4 v8, 0x1

    add-int/lit8 v9, p3, -0x1

    add-int/lit8 v10, p4, -0x1

    const/4 v11, 0x0

    aget v12, p0, v11

    aget v13, p0, v8

    const/4 v14, 0x2

    aget v15, p0, v14

    const/16 v16, 0x3

    aget v5, p0, v16

    if-lt v9, v6, :cond_29

    if-ge v10, v7, :cond_0

    goto/16 :goto_11

    :cond_0
    if-ne v12, v15, :cond_7

    if-lt v12, v6, :cond_6

    if-le v12, v9, :cond_1

    goto :goto_1

    :cond_1
    if-le v13, v5, :cond_2

    move/from16 v25, v13

    move v13, v5

    move/from16 v5, v25

    :cond_2
    if-ge v13, v7, :cond_3

    move v13, v7

    :cond_3
    if-le v5, v10, :cond_4

    goto :goto_0

    :cond_4
    move v10, v5

    :goto_0
    if-le v13, v10, :cond_5

    return v11

    :cond_5
    aput v13, p0, v8

    aput v10, p0, v16

    goto/16 :goto_10

    :cond_6
    :goto_1
    return v11

    :cond_7
    if-ne v13, v5, :cond_e

    if-lt v13, v7, :cond_d

    if-le v13, v10, :cond_8

    goto :goto_3

    :cond_8
    if-le v12, v15, :cond_9

    move/from16 v25, v15

    move v15, v12

    move/from16 v12, v25

    :cond_9
    if-ge v12, v6, :cond_a

    move v12, v6

    :cond_a
    if-le v15, v9, :cond_b

    goto :goto_2

    :cond_b
    move v9, v15

    :goto_2
    if-le v12, v9, :cond_c

    return v11

    :cond_c
    aput v12, p0, v11

    aput v9, p0, v14

    goto/16 :goto_10

    :cond_d
    :goto_3
    return v11

    :cond_e
    sub-int v4, v15, v12

    sub-int v3, v5, v13

    if-gez v4, :cond_f

    neg-int v0, v4

    move v2, v0

    goto :goto_4

    :cond_f
    move v2, v4

    :goto_4
    if-gez v3, :cond_10

    neg-int v0, v3

    move v1, v0

    goto :goto_5

    :cond_10
    move v1, v3

    :goto_5
    if-lt v2, v1, :cond_11

    move/from16 v17, v8

    goto :goto_6

    :cond_11
    move/from16 v17, v11

    :goto_6
    move v0, v12

    move/from16 v18, v1

    move v1, v13

    move/from16 v19, v2

    move/from16 v2, p1

    move/from16 v20, v3

    move/from16 v3, p2

    move/from16 v21, v4

    move v4, v9

    move/from16 v22, v5

    move v5, v10

    invoke-static/range {v0 .. v5}, Lsun/java2d/loops/GeneralRenderer;->outcode(IIIIII)I

    move-result v23

    move v0, v15

    move/from16 v1, v22

    invoke-static/range {v0 .. v5}, Lsun/java2d/loops/GeneralRenderer;->outcode(IIIIII)I

    move-result v0

    move/from16 v24, v23

    move/from16 v23, v15

    move v15, v13

    move v13, v12

    move v12, v0

    :goto_7
    or-int v0, v24, v12

    if-eqz v0, :cond_28

    and-int v0, v24, v12

    if-eqz v0, :cond_12

    return v11

    :cond_12
    if-eqz v24, :cond_1d

    and-int/lit8 v0, v24, 0x3

    if-eqz v0, :cond_17

    and-int/lit8 v0, v24, 0x1

    if-eqz v0, :cond_13

    move v0, v7

    goto :goto_8

    :cond_13
    move v0, v10

    :goto_8
    aget v1, p0, v8

    sub-int v1, v0, v1

    if-gez v1, :cond_14

    neg-int v1, v1

    :cond_14
    mul-int/2addr v1, v14

    mul-int v1, v1, v19

    add-int v1, v1, v18

    if-eqz v17, :cond_15

    sub-int v2, v18, v19

    sub-int/2addr v2, v8

    add-int/2addr v1, v2

    :cond_15
    mul-int/lit8 v2, v18, 0x2

    div-int/2addr v1, v2

    if-gez v21, :cond_16

    neg-int v1, v1

    :cond_16
    aget v2, p0, v11

    add-int/2addr v2, v1

    move v15, v0

    move v13, v2

    goto :goto_a

    :cond_17
    and-int/lit8 v0, v24, 0xc

    if-eqz v0, :cond_1c

    and-int/lit8 v0, v24, 0x4

    if-eqz v0, :cond_18

    move v0, v6

    goto :goto_9

    :cond_18
    move v0, v9

    :goto_9
    aget v1, p0, v11

    sub-int v1, v0, v1

    if-gez v1, :cond_19

    neg-int v1, v1

    :cond_19
    mul-int/2addr v1, v14

    mul-int v1, v1, v18

    add-int v1, v1, v19

    if-nez v17, :cond_1a

    sub-int v2, v19, v18

    sub-int/2addr v2, v8

    add-int/2addr v1, v2

    :cond_1a
    mul-int/lit8 v2, v19, 0x2

    div-int/2addr v1, v2

    if-gez v20, :cond_1b

    neg-int v1, v1

    :cond_1b
    aget v2, p0, v8

    add-int/2addr v2, v1

    move v13, v0

    move v15, v2

    :cond_1c
    :goto_a
    move v0, v13

    move v1, v15

    move/from16 v2, p1

    move/from16 v3, p2

    move v4, v9

    move v5, v10

    invoke-static/range {v0 .. v5}, Lsun/java2d/loops/GeneralRenderer;->outcode(IIIIII)I

    move-result v24

    goto :goto_7

    :cond_1d
    and-int/lit8 v0, v12, 0x3

    if-eqz v0, :cond_22

    and-int/lit8 v0, v12, 0x1

    if-eqz v0, :cond_1e

    move v0, v7

    goto :goto_b

    :cond_1e
    move v0, v10

    :goto_b
    aget v1, p0, v16

    sub-int v1, v0, v1

    if-gez v1, :cond_1f

    neg-int v1, v1

    :cond_1f
    mul-int/2addr v1, v14

    mul-int v1, v1, v19

    add-int v1, v1, v18

    if-eqz v17, :cond_20

    sub-int v2, v18, v19

    add-int/2addr v1, v2

    goto :goto_c

    :cond_20
    add-int/lit8 v1, v1, -0x1

    :goto_c
    mul-int/lit8 v2, v18, 0x2

    div-int/2addr v1, v2

    if-lez v21, :cond_21

    neg-int v1, v1

    :cond_21
    aget v2, p0, v14

    add-int/2addr v2, v1

    move/from16 v22, v0

    move/from16 v23, v2

    goto :goto_f

    :cond_22
    and-int/lit8 v0, v12, 0xc

    if-eqz v0, :cond_27

    and-int/lit8 v0, v12, 0x4

    if-eqz v0, :cond_23

    move v0, v6

    goto :goto_d

    :cond_23
    move v0, v9

    :goto_d
    aget v1, p0, v14

    sub-int v1, v0, v1

    if-gez v1, :cond_24

    neg-int v1, v1

    :cond_24
    mul-int/2addr v1, v14

    mul-int v1, v1, v18

    add-int v1, v1, v19

    if-eqz v17, :cond_25

    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    :cond_25
    sub-int v2, v19, v18

    add-int/2addr v1, v2

    :goto_e
    mul-int/lit8 v2, v19, 0x2

    div-int/2addr v1, v2

    if-lez v20, :cond_26

    neg-int v1, v1

    :cond_26
    aget v2, p0, v16

    add-int/2addr v2, v1

    move/from16 v23, v0

    move/from16 v22, v2

    :cond_27
    :goto_f
    move/from16 v0, v23

    move/from16 v1, v22

    move/from16 v2, p1

    move/from16 v3, p2

    move v4, v9

    move v5, v10

    invoke-static/range {v0 .. v5}, Lsun/java2d/loops/GeneralRenderer;->outcode(IIIIII)I

    move-result v12

    goto/16 :goto_7

    :cond_28
    aput v13, p0, v11

    aput v15, p0, v8

    aput v23, p0, v14

    aput v22, p0, v16

    const/4 v0, 0x4

    aput v21, p0, v0

    const/4 v0, 0x5

    aput v20, p0, v0

    const/4 v0, 0x6

    aput v19, p0, v0

    const/4 v0, 0x7

    aput v18, p0, v0

    :goto_10
    return v8

    :cond_29
    :goto_11
    return v11
.end method

.method public static createSolidPixelWriter(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;)Lsun/java2d/loops/PixelWriter;
    .locals 1

    invoke-virtual {p1}, Lsun/java2d/SurfaceData;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p1

    iget p0, p0, Lsun/java2d/SunGraphics2D;->eargb:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Ljava/awt/image/ColorModel;->getDataElements(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Lsun/java2d/loops/SolidPixelWriter;

    invoke-direct {p1, p0}, Lsun/java2d/loops/SolidPixelWriter;-><init>(Ljava/lang/Object;)V

    return-object p1
.end method

.method public static createXorPixelWriter(Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;)Lsun/java2d/loops/PixelWriter;
    .locals 2

    invoke-virtual {p1}, Lsun/java2d/SurfaceData;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p1

    iget v0, p0, Lsun/java2d/SunGraphics2D;->eargb:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/awt/image/ColorModel;->getDataElements(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lsun/java2d/SunGraphics2D;->getComposite()Ljava/awt/Composite;

    move-result-object p0

    check-cast p0, Lsun/java2d/loops/XORComposite;

    invoke-virtual {p0}, Lsun/java2d/loops/XORComposite;->getXorColor()Ljava/awt/Color;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/Color;->getRGB()I

    move-result p0

    invoke-virtual {p1, p0, v1}, Ljava/awt/image/ColorModel;->getDataElements(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1}, Ljava/awt/image/ColorModel;->getTransferType()I

    move-result p1

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_3

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

    const/4 v1, 0x4

    if-eq p1, v1, :cond_1

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    new-instance p1, Lsun/java2d/loops/XorPixelWriter$DoubleData;

    invoke-direct {p1, v0, p0}, Lsun/java2d/loops/XorPixelWriter$DoubleData;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_0
    new-instance p0, Ljava/lang/InternalError;

    const-string p1, "Unsupported XOR pixel type"

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Lsun/java2d/loops/XorPixelWriter$FloatData;

    invoke-direct {p1, v0, p0}, Lsun/java2d/loops/XorPixelWriter$FloatData;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_2
    new-instance p1, Lsun/java2d/loops/XorPixelWriter$IntData;

    invoke-direct {p1, v0, p0}, Lsun/java2d/loops/XorPixelWriter$IntData;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_3
    new-instance p1, Lsun/java2d/loops/XorPixelWriter$ShortData;

    invoke-direct {p1, v0, p0}, Lsun/java2d/loops/XorPixelWriter$ShortData;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_4
    new-instance p1, Lsun/java2d/loops/XorPixelWriter$ByteData;

    invoke-direct {p1, v0, p0}, Lsun/java2d/loops/XorPixelWriter$ByteData;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public static doDrawGlyphList(Lsun/java2d/SurfaceData;Lsun/java2d/loops/PixelWriter;Lsun/font/GlyphList;Lsun/java2d/pipe/Region;)V
    .locals 19

    move-object/from16 v0, p1

    invoke-virtual/range {p2 .. p2}, Lsun/font/GlyphList;->getBounds()[I

    move-result-object v1

    move-object/from16 v2, p3

    invoke-virtual {v2, v1}, Lsun/java2d/pipe/Region;->clipBoxToBounds([I)V

    const/4 v2, 0x0

    aget v3, v1, v2

    const/4 v4, 0x1

    aget v5, v1, v4

    const/4 v6, 0x2

    aget v7, v1, v6

    const/4 v8, 0x3

    aget v1, v1, v8

    sub-int v9, v7, v3

    sub-int v10, v1, v5

    move-object/from16 v11, p0

    invoke-virtual {v11, v3, v5, v9, v10}, Lsun/java2d/SurfaceData;->getRaster(IIII)Ljava/awt/image/Raster;

    move-result-object v9

    check-cast v9, Ljava/awt/image/WritableRaster;

    invoke-virtual {v0, v9}, Lsun/java2d/loops/PixelWriter;->setRaster(Ljava/awt/image/WritableRaster;)V

    invoke-virtual/range {p2 .. p2}, Lsun/font/GlyphList;->getNumGlyphs()I

    move-result v9

    move v10, v2

    :goto_0
    if-ge v10, v9, :cond_7

    move-object/from16 v11, p2

    invoke-virtual {v11, v10}, Lsun/font/GlyphList;->setGlyphIndex(I)V

    invoke-virtual/range {p2 .. p2}, Lsun/font/GlyphList;->getMetrics()[I

    move-result-object v12

    aget v13, v12, v2

    aget v14, v12, v4

    aget v15, v12, v6

    add-int v2, v13, v15

    aget v12, v12, v8

    add-int/2addr v12, v14

    if-ge v13, v3, :cond_0

    sub-int v13, v3, v13

    move v4, v3

    goto :goto_1

    :cond_0
    move v4, v13

    const/4 v13, 0x0

    :goto_1
    if-ge v14, v5, :cond_1

    sub-int v14, v5, v14

    mul-int/2addr v14, v15

    add-int/2addr v13, v14

    move v14, v5

    :cond_1
    if-le v2, v7, :cond_2

    move v2, v7

    :cond_2
    if-le v12, v1, :cond_3

    move v12, v1

    :cond_3
    if-le v2, v4, :cond_6

    if-le v12, v14, :cond_6

    invoke-virtual/range {p2 .. p2}, Lsun/font/GlyphList;->getGrayBits()[B

    move-result-object v16

    sub-int v17, v2, v4

    sub-int v15, v15, v17

    :goto_2
    if-ge v14, v12, :cond_6

    move v6, v4

    :goto_3
    if-ge v6, v2, :cond_5

    add-int/lit8 v18, v13, 0x1

    aget-byte v13, v16, v13

    if-gez v13, :cond_4

    invoke-virtual {v0, v6, v14}, Lsun/java2d/loops/PixelWriter;->writePixel(II)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    move/from16 v13, v18

    goto :goto_3

    :cond_5
    add-int/2addr v13, v15

    add-int/lit8 v14, v14, 0x1

    const/4 v6, 0x2

    goto :goto_2

    :cond_6
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x2

    goto :goto_0

    :cond_7
    return-void
.end method

.method public static doDrawLine(Lsun/java2d/SurfaceData;Lsun/java2d/loops/PixelWriter;[ILsun/java2d/pipe/Region;IIII)[I
    .locals 18

    move-object/from16 v0, p1

    move/from16 v1, p4

    move/from16 v2, p5

    if-nez p2, :cond_0

    const/16 v3, 0x8

    new-array v3, v3, [I

    goto :goto_0

    :cond_0
    move-object/from16 v3, p2

    :goto_0
    const/4 v4, 0x0

    aput v1, v3, v4

    const/4 v5, 0x1

    aput v2, v3, v5

    const/4 v6, 0x2

    aput p6, v3, v6

    const/4 v7, 0x3

    aput p7, v3, v7

    invoke-virtual/range {p3 .. p3}, Lsun/java2d/pipe/Region;->getLoX()I

    move-result v8

    invoke-virtual/range {p3 .. p3}, Lsun/java2d/pipe/Region;->getLoY()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Lsun/java2d/pipe/Region;->getHiX()I

    move-result v10

    invoke-virtual/range {p3 .. p3}, Lsun/java2d/pipe/Region;->getHiY()I

    move-result v11

    invoke-static {v3, v8, v9, v10, v11}, Lsun/java2d/loops/GeneralRenderer;->adjustLine([IIIII)Z

    move-result v8

    if-nez v8, :cond_1

    return-object v3

    :cond_1
    aget v8, v3, v4

    aget v9, v3, v5

    aget v10, v3, v6

    aget v7, v3, v7

    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v11

    invoke-static {v9, v7}, Ljava/lang/Math;->min(II)I

    move-result v12

    sub-int v13, v8, v10

    invoke-static {v13}, Ljava/lang/Math;->abs(I)I

    move-result v13

    add-int/2addr v13, v5

    sub-int v14, v9, v7

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    add-int/2addr v14, v5

    move-object/from16 v15, p0

    invoke-virtual {v15, v11, v12, v13, v14}, Lsun/java2d/SurfaceData;->getRaster(IIII)Ljava/awt/image/Raster;

    move-result-object v11

    check-cast v11, Ljava/awt/image/WritableRaster;

    invoke-virtual {v0, v11}, Lsun/java2d/loops/PixelWriter;->setRaster(Ljava/awt/image/WritableRaster;)V

    const/4 v11, -0x1

    if-ne v8, v10, :cond_4

    if-le v9, v7, :cond_3

    :cond_2
    invoke-virtual {v0, v8, v9}, Lsun/java2d/loops/PixelWriter;->writePixel(II)V

    add-int/2addr v9, v11

    if-ge v9, v7, :cond_2

    goto/16 :goto_5

    :cond_3
    invoke-virtual {v0, v8, v9}, Lsun/java2d/loops/PixelWriter;->writePixel(II)V

    add-int/2addr v9, v5

    if-le v9, v7, :cond_3

    goto/16 :goto_5

    :cond_4
    if-ne v9, v7, :cond_7

    if-le v8, v10, :cond_6

    :cond_5
    invoke-virtual {v0, v8, v9}, Lsun/java2d/loops/PixelWriter;->writePixel(II)V

    add-int/2addr v8, v11

    if-ge v8, v10, :cond_5

    goto/16 :goto_5

    :cond_6
    invoke-virtual {v0, v8, v9}, Lsun/java2d/loops/PixelWriter;->writePixel(II)V

    add-int/2addr v8, v5

    if-le v8, v10, :cond_6

    goto/16 :goto_5

    :cond_7
    const/4 v12, 0x4

    aget v12, v3, v12

    const/4 v13, 0x5

    aget v13, v3, v13

    const/4 v14, 0x6

    aget v14, v3, v14

    const/4 v15, 0x7

    aget v15, v3, v15

    if-lt v14, v15, :cond_a

    mul-int/lit8 v4, v15, 0x2

    mul-int/lit8 v7, v14, 0x2

    if-gez v12, :cond_8

    move v12, v11

    goto :goto_1

    :cond_8
    move v12, v5

    :goto_1
    if-gez v13, :cond_9

    move v13, v11

    goto :goto_2

    :cond_9
    move v13, v5

    :goto_2
    neg-int v14, v14

    sub-int/2addr v10, v8

    move/from16 v17, v10

    move v10, v4

    move v4, v5

    move/from16 v5, v17

    goto :goto_4

    :cond_a
    mul-int/lit8 v10, v14, 0x2

    mul-int/lit8 v16, v15, 0x2

    if-gez v13, :cond_b

    move v13, v11

    goto :goto_3

    :cond_b
    move v13, v5

    :goto_3
    if-gez v12, :cond_c

    move v5, v11

    :cond_c
    neg-int v15, v15

    sub-int/2addr v7, v9

    move v12, v13

    move v13, v5

    move v5, v7

    move/from16 v7, v16

    :goto_4
    div-int/lit8 v11, v7, 0x2

    neg-int v11, v11

    if-eq v9, v2, :cond_e

    sub-int v2, v9, v2

    if-gez v2, :cond_d

    neg-int v2, v2

    :cond_d
    mul-int/2addr v2, v14

    mul-int/2addr v2, v6

    add-int/2addr v11, v2

    :cond_e
    if-eq v8, v1, :cond_10

    sub-int v1, v8, v1

    if-gez v1, :cond_f

    neg-int v1, v1

    :cond_f
    mul-int/2addr v1, v15

    mul-int/2addr v1, v6

    add-int/2addr v11, v1

    :cond_10
    if-gez v5, :cond_11

    neg-int v5, v5

    :cond_11
    if-eqz v4, :cond_14

    :cond_12
    invoke-virtual {v0, v8, v9}, Lsun/java2d/loops/PixelWriter;->writePixel(II)V

    add-int/2addr v8, v12

    add-int/2addr v11, v10

    if-ltz v11, :cond_13

    add-int/2addr v9, v13

    sub-int/2addr v11, v7

    :cond_13
    const/4 v1, -0x1

    add-int/2addr v5, v1

    if-gez v5, :cond_12

    goto :goto_5

    :cond_14
    invoke-virtual {v0, v8, v9}, Lsun/java2d/loops/PixelWriter;->writePixel(II)V

    add-int/2addr v9, v12

    add-int/2addr v11, v10

    if-ltz v11, :cond_15

    add-int/2addr v8, v13

    sub-int/2addr v11, v7

    :cond_15
    const/4 v1, -0x1

    add-int/2addr v5, v1

    if-gez v5, :cond_14

    :goto_5
    return-object v3
.end method

.method public static doDrawPoly(Lsun/java2d/SurfaceData;Lsun/java2d/loops/PixelWriter;[I[IIILsun/java2d/pipe/Region;IIZ)V
    .locals 17

    if-gtz p5, :cond_0

    return-void

    :cond_0
    aget v0, p2, p4

    add-int v7, v0, p7

    aget v0, p3, p4

    add-int v8, v0, p8

    const/4 v0, 0x0

    move/from16 v1, p5

    move-object v11, v0

    move v13, v7

    move v14, v8

    move/from16 v0, p4

    :goto_0
    add-int/lit8 v1, v1, -0x1

    if-lez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    aget v2, p2, v0

    add-int v2, v2, p7

    aget v3, p3, v0

    add-int v3, v3, p8

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v12, p6

    move v15, v2

    move/from16 v16, v3

    invoke-static/range {v9 .. v16}, Lsun/java2d/loops/GeneralRenderer;->doDrawLine(Lsun/java2d/SurfaceData;Lsun/java2d/loops/PixelWriter;[ILsun/java2d/pipe/Region;IIII)[I

    move-result-object v11

    move v13, v2

    move v14, v3

    goto :goto_0

    :cond_1
    if-eqz p9, :cond_3

    if-ne v13, v7, :cond_2

    if-eq v14, v8, :cond_3

    :cond_2
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v11

    move-object/from16 v4, p6

    move v5, v13

    move v6, v14

    invoke-static/range {v1 .. v8}, Lsun/java2d/loops/GeneralRenderer;->doDrawLine(Lsun/java2d/SurfaceData;Lsun/java2d/loops/PixelWriter;[ILsun/java2d/pipe/Region;IIII)[I

    :cond_3
    return-void
.end method

.method public static doDrawRect(Lsun/java2d/loops/PixelWriter;Lsun/java2d/SunGraphics2D;Lsun/java2d/SurfaceData;IIII)V
    .locals 16

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    if-ltz v2, :cond_8

    if-gez v3, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {v0, v2}, Lsun/java2d/pipe/Region;->dimAdd(II)I

    move-result v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lsun/java2d/pipe/Region;->dimAdd(II)I

    move-result v4

    invoke-static {v1, v3}, Lsun/java2d/pipe/Region;->dimAdd(II)I

    move-result v6

    invoke-static {v6, v5}, Lsun/java2d/pipe/Region;->dimAdd(II)I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lsun/java2d/SunGraphics2D;->getCompClip()Lsun/java2d/pipe/Region;

    move-result-object v7

    invoke-virtual {v7, v0, v1, v4, v6}, Lsun/java2d/pipe/Region;->getBoundsIntersectionXYXY(IIII)Lsun/java2d/pipe/Region;

    move-result-object v7

    invoke-virtual {v7}, Lsun/java2d/pipe/Region;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_1

    return-void

    :cond_1
    invoke-virtual {v7}, Lsun/java2d/pipe/Region;->getLoX()I

    move-result v8

    invoke-virtual {v7}, Lsun/java2d/pipe/Region;->getLoY()I

    move-result v15

    invoke-virtual {v7}, Lsun/java2d/pipe/Region;->getHiX()I

    move-result v14

    invoke-virtual {v7}, Lsun/java2d/pipe/Region;->getHiY()I

    move-result v7

    const/4 v9, 0x2

    if-lt v2, v9, :cond_7

    if-ge v3, v9, :cond_2

    goto :goto_1

    :cond_2
    if-ne v15, v1, :cond_3

    add-int/lit8 v1, v15, 0x1

    move-object/from16 v9, p2

    move-object/from16 v10, p0

    move v11, v8

    move v12, v15

    move v13, v14

    move v2, v14

    move v14, v1

    invoke-static/range {v9 .. v14}, Lsun/java2d/loops/GeneralRenderer;->doSetRect(Lsun/java2d/SurfaceData;Lsun/java2d/loops/PixelWriter;IIII)V

    goto :goto_0

    :cond_3
    move v2, v14

    :goto_0
    if-ne v8, v0, :cond_4

    add-int/lit8 v12, v15, 0x1

    add-int/lit8 v13, v8, 0x1

    add-int/lit8 v14, v7, -0x1

    move-object/from16 v9, p2

    move-object/from16 v10, p0

    move v11, v8

    invoke-static/range {v9 .. v14}, Lsun/java2d/loops/GeneralRenderer;->doSetRect(Lsun/java2d/SurfaceData;Lsun/java2d/loops/PixelWriter;IIII)V

    :cond_4
    if-ne v2, v4, :cond_5

    add-int/lit8 v11, v2, -0x1

    add-int/lit8 v12, v15, 0x1

    add-int/lit8 v14, v7, -0x1

    move-object/from16 v9, p2

    move-object/from16 v10, p0

    move v13, v2

    invoke-static/range {v9 .. v14}, Lsun/java2d/loops/GeneralRenderer;->doSetRect(Lsun/java2d/SurfaceData;Lsun/java2d/loops/PixelWriter;IIII)V

    :cond_5
    if-ne v7, v6, :cond_6

    add-int/lit8 v0, v7, -0x1

    move-object/from16 p1, p2

    move-object/from16 p2, p0

    move/from16 p3, v8

    move/from16 p4, v0

    move/from16 p5, v2

    move/from16 p6, v7

    invoke-static/range {p1 .. p6}, Lsun/java2d/loops/GeneralRenderer;->doSetRect(Lsun/java2d/SurfaceData;Lsun/java2d/loops/PixelWriter;IIII)V

    :cond_6
    return-void

    :cond_7
    :goto_1
    move v2, v14

    move-object/from16 p1, p2

    move-object/from16 p2, p0

    move/from16 p3, v8

    move/from16 p4, v15

    move/from16 p5, v2

    move/from16 p6, v7

    invoke-static/range {p1 .. p6}, Lsun/java2d/loops/GeneralRenderer;->doSetRect(Lsun/java2d/SurfaceData;Lsun/java2d/loops/PixelWriter;IIII)V

    :cond_8
    :goto_2
    return-void
.end method

.method public static doSetRect(Lsun/java2d/SurfaceData;Lsun/java2d/loops/PixelWriter;IIII)V
    .locals 2

    sub-int v0, p4, p2

    sub-int v1, p5, p3

    invoke-virtual {p0, p2, p3, v0, v1}, Lsun/java2d/SurfaceData;->getRaster(IIII)Ljava/awt/image/Raster;

    move-result-object p0

    check-cast p0, Ljava/awt/image/WritableRaster;

    invoke-virtual {p1, p0}, Lsun/java2d/loops/PixelWriter;->setRaster(Ljava/awt/image/WritableRaster;)V

    :goto_0
    if-ge p3, p5, :cond_1

    move p0, p2

    :goto_1
    if-ge p0, p4, :cond_0

    invoke-virtual {p1, p0, p3}, Lsun/java2d/loops/PixelWriter;->writePixel(II)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static outcode(IIIIII)I
    .locals 0

    if-ge p1, p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    if-le p1, p5, :cond_1

    const/4 p1, 0x2

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-ge p0, p2, :cond_2

    or-int/lit8 p1, p1, 0x4

    goto :goto_1

    :cond_2
    if-le p0, p4, :cond_3

    or-int/lit8 p1, p1, 0x8

    :cond_3
    :goto_1
    return p1
.end method

.method public static register()V
    .locals 28

    const-class v8, Lsun/java2d/loops/GeneralRenderer;

    const/16 v0, 0x10

    new-array v9, v0, [Lsun/java2d/loops/GraphicsPrimitive;

    new-instance v10, Lsun/java2d/loops/GraphicsPrimitiveProxy;

    const-string v2, "SetFillRectANY"

    sget-object v11, Lsun/java2d/loops/FillRect;->methodSignature:Ljava/lang/String;

    sget v12, Lsun/java2d/loops/FillRect;->primTypeID:I

    sget-object v13, Lsun/java2d/loops/SurfaceType;->AnyColor:Lsun/java2d/loops/SurfaceType;

    sget-object v14, Lsun/java2d/loops/CompositeType;->SrcNoEa:Lsun/java2d/loops/CompositeType;

    sget-object v15, Lsun/java2d/loops/SurfaceType;->Any:Lsun/java2d/loops/SurfaceType;

    move-object v0, v10

    move-object v1, v8

    move-object v3, v11

    move v4, v12

    move-object v5, v13

    move-object v6, v14

    move-object v7, v15

    invoke-direct/range {v0 .. v7}, Lsun/java2d/loops/GraphicsPrimitiveProxy;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    const/4 v0, 0x0

    aput-object v10, v9, v0

    new-instance v10, Lsun/java2d/loops/GraphicsPrimitiveProxy;

    const-string v2, "SetFillPathANY"

    sget-object v16, Lsun/java2d/loops/FillPath;->methodSignature:Ljava/lang/String;

    sget v17, Lsun/java2d/loops/FillPath;->primTypeID:I

    move-object v0, v10

    move-object/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v7}, Lsun/java2d/loops/GraphicsPrimitiveProxy;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    const/4 v0, 0x1

    aput-object v10, v9, v0

    new-instance v10, Lsun/java2d/loops/GraphicsPrimitiveProxy;

    const-string v2, "SetFillSpansANY"

    sget-object v18, Lsun/java2d/loops/FillSpans;->methodSignature:Ljava/lang/String;

    sget v19, Lsun/java2d/loops/FillSpans;->primTypeID:I

    move-object v0, v10

    move-object/from16 v3, v18

    move/from16 v4, v19

    invoke-direct/range {v0 .. v7}, Lsun/java2d/loops/GraphicsPrimitiveProxy;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    const/4 v0, 0x2

    aput-object v10, v9, v0

    new-instance v10, Lsun/java2d/loops/GraphicsPrimitiveProxy;

    const-string v2, "SetDrawLineANY"

    sget-object v20, Lsun/java2d/loops/DrawLine;->methodSignature:Ljava/lang/String;

    sget v21, Lsun/java2d/loops/DrawLine;->primTypeID:I

    move-object v0, v10

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct/range {v0 .. v7}, Lsun/java2d/loops/GraphicsPrimitiveProxy;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    const/4 v0, 0x3

    aput-object v10, v9, v0

    new-instance v10, Lsun/java2d/loops/GraphicsPrimitiveProxy;

    const-string v2, "SetDrawPolygonsANY"

    sget-object v22, Lsun/java2d/loops/DrawPolygons;->methodSignature:Ljava/lang/String;

    sget v23, Lsun/java2d/loops/DrawPolygons;->primTypeID:I

    move-object v0, v10

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-direct/range {v0 .. v7}, Lsun/java2d/loops/GraphicsPrimitiveProxy;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    const/4 v0, 0x4

    aput-object v10, v9, v0

    new-instance v10, Lsun/java2d/loops/GraphicsPrimitiveProxy;

    const-string v2, "SetDrawPathANY"

    sget-object v24, Lsun/java2d/loops/DrawPath;->methodSignature:Ljava/lang/String;

    sget v25, Lsun/java2d/loops/DrawPath;->primTypeID:I

    move-object v0, v10

    move-object/from16 v3, v24

    move/from16 v4, v25

    invoke-direct/range {v0 .. v7}, Lsun/java2d/loops/GraphicsPrimitiveProxy;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    const/4 v0, 0x5

    aput-object v10, v9, v0

    new-instance v10, Lsun/java2d/loops/GraphicsPrimitiveProxy;

    const-string v2, "SetDrawRectANY"

    sget-object v26, Lsun/java2d/loops/DrawRect;->methodSignature:Ljava/lang/String;

    sget v27, Lsun/java2d/loops/DrawRect;->primTypeID:I

    move-object v0, v10

    move-object/from16 v3, v26

    move/from16 v4, v27

    invoke-direct/range {v0 .. v7}, Lsun/java2d/loops/GraphicsPrimitiveProxy;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    const/4 v0, 0x6

    aput-object v10, v9, v0

    new-instance v10, Lsun/java2d/loops/GraphicsPrimitiveProxy;

    const-string v2, "XorFillRectANY"

    sget-object v14, Lsun/java2d/loops/CompositeType;->Xor:Lsun/java2d/loops/CompositeType;

    move-object v0, v10

    move-object v3, v11

    move v4, v12

    move-object v6, v14

    invoke-direct/range {v0 .. v7}, Lsun/java2d/loops/GraphicsPrimitiveProxy;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    const/4 v0, 0x7

    aput-object v10, v9, v0

    new-instance v10, Lsun/java2d/loops/GraphicsPrimitiveProxy;

    const-string v2, "XorFillPathANY"

    move-object v0, v10

    move-object/from16 v3, v16

    move/from16 v4, v17

    invoke-direct/range {v0 .. v7}, Lsun/java2d/loops/GraphicsPrimitiveProxy;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    const/16 v0, 0x8

    aput-object v10, v9, v0

    new-instance v10, Lsun/java2d/loops/GraphicsPrimitiveProxy;

    const-string v2, "XorFillSpansANY"

    move-object v0, v10

    move-object/from16 v3, v18

    move/from16 v4, v19

    invoke-direct/range {v0 .. v7}, Lsun/java2d/loops/GraphicsPrimitiveProxy;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    const/16 v0, 0x9

    aput-object v10, v9, v0

    new-instance v10, Lsun/java2d/loops/GraphicsPrimitiveProxy;

    const-string v2, "XorDrawLineANY"

    move-object v0, v10

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-direct/range {v0 .. v7}, Lsun/java2d/loops/GraphicsPrimitiveProxy;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    const/16 v0, 0xa

    aput-object v10, v9, v0

    new-instance v10, Lsun/java2d/loops/GraphicsPrimitiveProxy;

    const-string v2, "XorDrawPolygonsANY"

    move-object v0, v10

    move-object/from16 v3, v22

    move/from16 v4, v23

    invoke-direct/range {v0 .. v7}, Lsun/java2d/loops/GraphicsPrimitiveProxy;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    const/16 v0, 0xb

    aput-object v10, v9, v0

    new-instance v10, Lsun/java2d/loops/GraphicsPrimitiveProxy;

    const-string v2, "XorDrawPathANY"

    move-object v0, v10

    move-object/from16 v3, v24

    move/from16 v4, v25

    invoke-direct/range {v0 .. v7}, Lsun/java2d/loops/GraphicsPrimitiveProxy;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    const/16 v0, 0xc

    aput-object v10, v9, v0

    new-instance v10, Lsun/java2d/loops/GraphicsPrimitiveProxy;

    const-string v2, "XorDrawRectANY"

    move-object v0, v10

    move-object/from16 v3, v26

    move/from16 v4, v27

    invoke-direct/range {v0 .. v7}, Lsun/java2d/loops/GraphicsPrimitiveProxy;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    const/16 v0, 0xd

    aput-object v10, v9, v0

    new-instance v10, Lsun/java2d/loops/GraphicsPrimitiveProxy;

    const-string v2, "XorDrawGlyphListANY"

    sget-object v3, Lsun/java2d/loops/DrawGlyphList;->methodSignature:Ljava/lang/String;

    sget v4, Lsun/java2d/loops/DrawGlyphList;->primTypeID:I

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lsun/java2d/loops/GraphicsPrimitiveProxy;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    const/16 v0, 0xe

    aput-object v10, v9, v0

    new-instance v10, Lsun/java2d/loops/GraphicsPrimitiveProxy;

    const-string v2, "XorDrawGlyphListAAANY"

    sget-object v3, Lsun/java2d/loops/DrawGlyphListAA;->methodSignature:Ljava/lang/String;

    sget v4, Lsun/java2d/loops/DrawGlyphListAA;->primTypeID:I

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lsun/java2d/loops/GraphicsPrimitiveProxy;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILsun/java2d/loops/SurfaceType;Lsun/java2d/loops/CompositeType;Lsun/java2d/loops/SurfaceType;)V

    const/16 v0, 0xf

    aput-object v10, v9, v0

    invoke-static {v9}, Lsun/java2d/loops/GraphicsPrimitiveMgr;->register([Lsun/java2d/loops/GraphicsPrimitive;)V

    return-void
.end method
