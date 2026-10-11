.class public Ljava/awt/image/DirectColorModel;
.super Ljava/awt/image/PackedColorModel;
.source "SourceFile"


# instance fields
.field private alpha_mask:I

.field private alpha_offset:I

.field private alpha_scale:I

.field private blue_mask:I

.field private blue_offset:I

.field private blue_scale:I

.field private fromsRGB8LUT16:[S

.field private fromsRGB8LUT8:[B

.field private green_mask:I

.field private green_offset:I

.field private green_scale:I

.field private is_LinearRGB:Z

.field private lRGBprecision:I

.field private red_mask:I

.field private red_offset:I

.field private red_scale:I

.field private tosRGB8LUT:[B


# direct methods
.method public constructor <init>(IIII)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Ljava/awt/image/DirectColorModel;-><init>(IIIII)V

    return-void
.end method

.method public constructor <init>(IIIII)V
    .locals 11

    const/16 v0, 0x3e8

    .line 2
    invoke-static {v0}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v2

    const/4 v8, 0x0

    if-nez p5, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    :goto_0
    move v9, v0

    .line 3
    invoke-static {p1}, Ljava/awt/image/ColorModel;->getDefaultTransferType(I)I

    move-result v10

    move-object v1, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move/from16 v7, p5

    .line 4
    invoke-direct/range {v1 .. v10}, Ljava/awt/image/PackedColorModel;-><init>(Ljava/awt/color/ColorSpace;IIIIIZII)V

    .line 5
    invoke-direct {p0}, Ljava/awt/image/DirectColorModel;->setFields()V

    return-void
.end method

.method public constructor <init>(Ljava/awt/color/ColorSpace;IIIIIZI)V
    .locals 14

    move-object v10, p0

    move-object v11, p1

    const/4 v12, 0x3

    const/4 v13, 0x1

    if-nez p6, :cond_0

    move v8, v13

    goto :goto_0

    :cond_0
    move v8, v12

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v9, p8

    .line 6
    invoke-direct/range {v0 .. v9}, Ljava/awt/image/PackedColorModel;-><init>(Ljava/awt/color/ColorSpace;IIIIIZII)V

    .line 7
    iget-object v0, v10, Ljava/awt/image/ColorModel;->colorSpace:Ljava/awt/color/ColorSpace;

    invoke-static {v0}, Ljava/awt/image/ColorModel;->isLinearRGBspace(Ljava/awt/color/ColorSpace;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    iput-boolean v13, v10, Ljava/awt/image/DirectColorModel;->is_LinearRGB:Z

    .line 9
    iget v0, v10, Ljava/awt/image/ColorModel;->maxBits:I

    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    .line 10
    iput v1, v10, Ljava/awt/image/DirectColorModel;->lRGBprecision:I

    .line 11
    invoke-static {}, Ljava/awt/image/ColorModel;->getLinearRGB8TosRGB8LUT()[B

    move-result-object v0

    iput-object v0, v10, Ljava/awt/image/DirectColorModel;->tosRGB8LUT:[B

    .line 12
    invoke-static {}, Ljava/awt/image/ColorModel;->getsRGB8ToLinearRGB8LUT()[B

    move-result-object v0

    iput-object v0, v10, Ljava/awt/image/DirectColorModel;->fromsRGB8LUT8:[B

    goto :goto_2

    :cond_1
    const/16 v0, 0x10

    .line 13
    iput v0, v10, Ljava/awt/image/DirectColorModel;->lRGBprecision:I

    .line 14
    invoke-static {}, Ljava/awt/image/ColorModel;->getLinearRGB16TosRGB8LUT()[B

    move-result-object v0

    iput-object v0, v10, Ljava/awt/image/DirectColorModel;->tosRGB8LUT:[B

    .line 15
    invoke-static {}, Ljava/awt/image/ColorModel;->getsRGB8ToLinearRGB16LUT()[S

    move-result-object v0

    iput-object v0, v10, Ljava/awt/image/DirectColorModel;->fromsRGB8LUT16:[S

    goto :goto_2

    .line 16
    :cond_2
    iget-boolean v0, v10, Ljava/awt/image/ColorModel;->is_sRGB:Z

    if-nez v0, :cond_4

    const/4 v0, 0x0

    :goto_1
    if-ge v0, v12, :cond_4

    .line 17
    invoke-virtual {p1, v0}, Ljava/awt/color/ColorSpace;->getMinValue(I)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    .line 18
    invoke-virtual {p1, v0}, Ljava/awt/color/ColorSpace;->getMaxValue(I)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 19
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal min/max RGB component value"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 20
    :cond_4
    :goto_2
    invoke-direct {p0}, Ljava/awt/image/DirectColorModel;->setFields()V

    return-void
.end method

.method private getDefaultRGBComponents(I)[F
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Ljava/awt/image/DirectColorModel;->getComponents(I[II)[I

    move-result-object p1

    invoke-virtual {p0, p1, v1, v0, v1}, Ljava/awt/image/ColorModel;->getNormalizedComponents([II[FI)[F

    move-result-object p1

    iget-object p0, p0, Ljava/awt/image/ColorModel;->colorSpace:Ljava/awt/color/ColorSpace;

    invoke-virtual {p0, p1}, Ljava/awt/color/ColorSpace;->toRGB([F)[F

    move-result-object p0

    return-object p0
.end method

.method private getsRGBComponentFromLinearRGB(II)I
    .locals 6

    iget-object v0, p0, Ljava/awt/image/PackedColorModel;->maskArray:[I

    aget v1, v0, p2

    and-int/2addr v1, p1

    iget-object v2, p0, Ljava/awt/image/PackedColorModel;->maskOffsets:[I

    aget v3, v2, p2

    ushr-int/2addr v1, v3

    iget-boolean v3, p0, Ljava/awt/image/ColorModel;->isAlphaPremultiplied:Z

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v3, :cond_1

    iget v3, p0, Ljava/awt/image/DirectColorModel;->lRGBprecision:I

    const/4 v5, 0x1

    shl-int v3, v5, v3

    sub-int/2addr v3, v5

    int-to-float v3, v3

    const/4 v5, 0x3

    aget v0, v0, v5

    and-int/2addr p1, v0

    aget v0, v2, v5

    ushr-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    int-to-float v0, v1

    iget-object v1, p0, Ljava/awt/image/PackedColorModel;->scaleFactors:[F

    aget p2, v1, p2

    mul-float/2addr v0, p2

    mul-float/2addr v0, v3

    int-to-float p1, p1

    aget p2, v1, v5

    mul-float/2addr p1, p2

    div-float/2addr v0, p1

    add-float/2addr v0, v4

    float-to-int p1, v0

    :goto_0
    move v1, p1

    goto :goto_2

    :cond_1
    iget-object p1, p0, Ljava/awt/image/ColorModel;->nBits:[I

    aget p1, p1, p2

    iget v0, p0, Ljava/awt/image/DirectColorModel;->lRGBprecision:I

    if-eq p1, v0, :cond_3

    const/16 p1, 0x10

    if-ne v0, p1, :cond_2

    int-to-float p1, v1

    iget-object v0, p0, Ljava/awt/image/PackedColorModel;->scaleFactors:[F

    aget p2, v0, p2

    mul-float/2addr p1, p2

    const p2, 0x43808000    # 257.0f

    goto :goto_1

    :cond_2
    int-to-float p1, v1

    iget-object v0, p0, Ljava/awt/image/PackedColorModel;->scaleFactors:[F

    aget p2, v0, p2

    :goto_1
    mul-float/2addr p1, p2

    add-float/2addr p1, v4

    float-to-int v1, p1

    :cond_3
    :goto_2
    iget-object p0, p0, Ljava/awt/image/DirectColorModel;->tosRGB8LUT:[B

    aget-byte p0, p0, v1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method private getsRGBComponentFromsRGB(II)I
    .locals 5

    iget-object v0, p0, Ljava/awt/image/PackedColorModel;->maskArray:[I

    aget v1, v0, p2

    and-int/2addr v1, p1

    iget-object v2, p0, Ljava/awt/image/PackedColorModel;->maskOffsets:[I

    aget v3, v2, p2

    ushr-int/2addr v1, v3

    iget-boolean v3, p0, Ljava/awt/image/ColorModel;->isAlphaPremultiplied:Z

    const/high16 v4, 0x3f000000    # 0.5f

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    aget v0, v0, v3

    and-int/2addr p1, v0

    aget v0, v2, v3

    ushr-int/2addr p1, v0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    int-to-float v0, v1

    iget-object p0, p0, Ljava/awt/image/PackedColorModel;->scaleFactors:[F

    aget p2, p0, p2

    mul-float/2addr v0, p2

    const/high16 p2, 0x437f0000    # 255.0f

    mul-float/2addr v0, p2

    int-to-float p1, p1

    aget p0, p0, v3

    mul-float/2addr p1, p0

    div-float/2addr v0, p1

    add-float/2addr v0, v4

    float-to-int p0, v0

    :goto_0
    move v1, p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Ljava/awt/image/PackedColorModel;->scaleFactors:[F

    aget p0, p0, p2

    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p0, p1

    if-eqz p1, :cond_2

    int-to-float p1, v1

    mul-float/2addr p1, p0

    add-float/2addr p1, v4

    float-to-int v1, p1

    :cond_2
    :goto_1
    return v1
.end method

.method private setFields()V
    .locals 7

    iget-object v0, p0, Ljava/awt/image/PackedColorModel;->maskArray:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    iput v2, p0, Ljava/awt/image/DirectColorModel;->red_mask:I

    iget-object v2, p0, Ljava/awt/image/PackedColorModel;->maskOffsets:[I

    aget v3, v2, v1

    iput v3, p0, Ljava/awt/image/DirectColorModel;->red_offset:I

    const/4 v3, 0x1

    aget v4, v0, v3

    iput v4, p0, Ljava/awt/image/DirectColorModel;->green_mask:I

    aget v4, v2, v3

    iput v4, p0, Ljava/awt/image/DirectColorModel;->green_offset:I

    const/4 v4, 0x2

    aget v5, v0, v4

    iput v5, p0, Ljava/awt/image/DirectColorModel;->blue_mask:I

    aget v5, v2, v4

    iput v5, p0, Ljava/awt/image/DirectColorModel;->blue_offset:I

    iget-object v5, p0, Ljava/awt/image/ColorModel;->nBits:[I

    aget v1, v5, v1

    const/16 v6, 0x8

    if-ge v1, v6, :cond_0

    shl-int v1, v3, v1

    sub-int/2addr v1, v3

    iput v1, p0, Ljava/awt/image/DirectColorModel;->red_scale:I

    :cond_0
    aget v1, v5, v3

    if-ge v1, v6, :cond_1

    shl-int v1, v3, v1

    sub-int/2addr v1, v3

    iput v1, p0, Ljava/awt/image/DirectColorModel;->green_scale:I

    :cond_1
    aget v1, v5, v4

    if-ge v1, v6, :cond_2

    shl-int v1, v3, v1

    sub-int/2addr v1, v3

    iput v1, p0, Ljava/awt/image/DirectColorModel;->blue_scale:I

    :cond_2
    iget-boolean v1, p0, Ljava/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x3

    aget v0, v0, v1

    iput v0, p0, Ljava/awt/image/DirectColorModel;->alpha_mask:I

    aget v0, v2, v1

    iput v0, p0, Ljava/awt/image/DirectColorModel;->alpha_offset:I

    aget v0, v5, v1

    if-ge v0, v6, :cond_3

    shl-int v0, v3, v0

    sub-int/2addr v0, v3

    iput v0, p0, Ljava/awt/image/DirectColorModel;->alpha_scale:I

    :cond_3
    return-void
.end method


# virtual methods
.method public final coerceData(Ljava/awt/image/WritableRaster;Z)Ljava/awt/image/ColorModel;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v7, p2

    iget-boolean v2, v0, Ljava/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v2, :cond_1e

    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v2

    if-ne v2, v7, :cond_0

    goto/16 :goto_18

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v2

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v3

    iget v4, v0, Ljava/awt/image/ColorModel;->numColorComponents:I

    iget-object v5, v0, Ljava/awt/image/ColorModel;->nBits:[I

    aget v5, v5, v4

    const/4 v6, 0x1

    shl-int v5, v6, v5

    sub-int/2addr v5, v6

    int-to-float v5, v5

    const/high16 v8, 0x3f800000    # 1.0f

    div-float v5, v8, v5

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getMinX()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getMinY()I

    move-result v10

    const-string v11, "This method has not been implemented for transferType "

    const/4 v13, 0x3

    const/4 v15, 0x0

    if-eqz v7, :cond_10

    iget v8, v0, Ljava/awt/image/ColorModel;->transferType:I

    if-eqz v8, :cond_b

    if-eq v8, v6, :cond_6

    if-ne v8, v13, :cond_5

    const/4 v8, 0x0

    const/4 v11, 0x0

    const/16 v16, 0x0

    :goto_0
    if-ge v11, v3, :cond_1d

    move v12, v9

    move-object/from16 v13, v16

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v2, :cond_4

    invoke-virtual {v1, v12, v10, v13}, Ljava/awt/image/Raster;->getPixel(II[I)[I

    move-result-object v13

    aget v14, v13, v4

    int-to-float v14, v14

    mul-float/2addr v14, v5

    cmpl-float v16, v14, v15

    if-eqz v16, :cond_2

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v4, :cond_1

    aget v7, v13, v15

    int-to-float v7, v7

    mul-float/2addr v7, v14

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v7, v7, v16

    float-to-int v7, v7

    aput v7, v13, v15

    add-int/lit8 v15, v15, 0x1

    move/from16 v7, p2

    goto :goto_2

    :cond_1
    invoke-virtual {v1, v12, v10, v13}, Ljava/awt/image/WritableRaster;->setPixel(II[I)V

    goto :goto_3

    :cond_2
    if-nez v8, :cond_3

    iget v7, v0, Ljava/awt/image/ColorModel;->numComponents:I

    new-array v7, v7, [I

    const/4 v8, 0x0

    invoke-static {v7, v8}, Ljava/util/Arrays;->fill([II)V

    move-object v8, v7

    :cond_3
    invoke-virtual {v1, v12, v10, v8}, Ljava/awt/image/WritableRaster;->setPixel(II[I)V

    :goto_3
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v12, v12, 0x1

    move/from16 v7, p2

    const/4 v15, 0x0

    goto :goto_1

    :cond_4
    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v10, v10, 0x1

    move/from16 v7, p2

    move-object/from16 v16, v13

    const/4 v6, 0x1

    const/4 v13, 0x3

    const/4 v15, 0x0

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Ljava/awt/image/ColorModel;->transferType:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const/4 v6, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    :goto_4
    if-ge v6, v3, :cond_1d

    move v8, v9

    const/4 v7, 0x0

    :goto_5
    if-ge v7, v2, :cond_a

    invoke-virtual {v1, v8, v10, v12}, Ljava/awt/image/Raster;->getPixel(II[I)[I

    move-result-object v12

    aget v11, v12, v4

    int-to-float v11, v11

    mul-float/2addr v11, v5

    const/4 v13, 0x0

    cmpl-float v14, v11, v13

    if-eqz v14, :cond_8

    const/4 v13, 0x0

    :goto_6
    if-ge v13, v4, :cond_7

    aget v14, v12, v13

    int-to-float v14, v14

    mul-float/2addr v14, v11

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    aput v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v1, v8, v10, v12}, Ljava/awt/image/WritableRaster;->setPixel(II[I)V

    goto :goto_8

    :cond_8
    if-nez v16, :cond_9

    iget v11, v0, Ljava/awt/image/ColorModel;->numComponents:I

    new-array v11, v11, [I

    const/4 v13, 0x0

    invoke-static {v11, v13}, Ljava/util/Arrays;->fill([II)V

    goto :goto_7

    :cond_9
    move-object/from16 v11, v16

    :goto_7
    invoke-virtual {v1, v8, v10, v11}, Ljava/awt/image/WritableRaster;->setPixel(II[I)V

    move-object/from16 v16, v11

    :goto_8
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_a
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_b
    const/4 v8, 0x0

    const/4 v12, 0x0

    const/16 v16, 0x0

    :goto_9
    if-ge v8, v3, :cond_1d

    move v7, v9

    const/4 v6, 0x0

    :goto_a
    if-ge v6, v2, :cond_f

    invoke-virtual {v1, v7, v10, v12}, Ljava/awt/image/Raster;->getPixel(II[I)[I

    move-result-object v12

    aget v11, v12, v4

    int-to-float v11, v11

    mul-float/2addr v11, v5

    const/4 v13, 0x0

    cmpl-float v14, v11, v13

    if-eqz v14, :cond_d

    const/4 v13, 0x0

    :goto_b
    if-ge v13, v4, :cond_c

    aget v14, v12, v13

    int-to-float v14, v14

    mul-float/2addr v14, v11

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v14, v15

    float-to-int v14, v14

    aput v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_b

    :cond_c
    invoke-virtual {v1, v7, v10, v12}, Ljava/awt/image/WritableRaster;->setPixel(II[I)V

    goto :goto_d

    :cond_d
    if-nez v16, :cond_e

    iget v11, v0, Ljava/awt/image/ColorModel;->numComponents:I

    new-array v11, v11, [I

    const/4 v13, 0x0

    invoke-static {v11, v13}, Ljava/util/Arrays;->fill([II)V

    goto :goto_c

    :cond_e
    move-object/from16 v11, v16

    :goto_c
    invoke-virtual {v1, v7, v10, v11}, Ljava/awt/image/WritableRaster;->setPixel(II[I)V

    move-object/from16 v16, v11

    :goto_d
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_f
    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_10
    iget v6, v0, Ljava/awt/image/ColorModel;->transferType:I

    if-eqz v6, :cond_19

    const/4 v7, 0x1

    if-eq v6, v7, :cond_15

    const/4 v7, 0x3

    if-ne v6, v7, :cond_14

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_e
    if-ge v6, v3, :cond_1d

    move v11, v9

    const/4 v7, 0x0

    :goto_f
    if-ge v7, v2, :cond_13

    invoke-virtual {v1, v11, v10, v12}, Ljava/awt/image/Raster;->getPixel(II[I)[I

    move-result-object v12

    aget v13, v12, v4

    int-to-float v13, v13

    mul-float/2addr v13, v5

    const/4 v14, 0x0

    cmpl-float v15, v13, v14

    if-eqz v15, :cond_12

    div-float v13, v8, v13

    const/4 v14, 0x0

    :goto_10
    if-ge v14, v4, :cond_11

    aget v15, v12, v14

    int-to-float v15, v15

    mul-float/2addr v15, v13

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v15, v15

    aput v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_10

    :cond_11
    invoke-virtual {v1, v11, v10, v12}, Ljava/awt/image/WritableRaster;->setPixel(II[I)V

    :cond_12
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_f

    :cond_13
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_e

    :cond_14
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Ljava/awt/image/ColorModel;->transferType:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_11
    if-ge v6, v3, :cond_1d

    move v11, v9

    const/4 v7, 0x0

    :goto_12
    if-ge v7, v2, :cond_18

    invoke-virtual {v1, v11, v10, v12}, Ljava/awt/image/Raster;->getPixel(II[I)[I

    move-result-object v12

    aget v13, v12, v4

    int-to-float v13, v13

    mul-float/2addr v13, v5

    const/4 v14, 0x0

    cmpl-float v15, v13, v14

    if-eqz v15, :cond_17

    div-float v13, v8, v13

    const/4 v14, 0x0

    :goto_13
    if-ge v14, v4, :cond_16

    aget v15, v12, v14

    int-to-float v15, v15

    mul-float/2addr v15, v13

    const/high16 v16, 0x3f000000    # 0.5f

    add-float v15, v15, v16

    float-to-int v15, v15

    aput v15, v12, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_13

    :cond_16
    invoke-virtual {v1, v11, v10, v12}, Ljava/awt/image/WritableRaster;->setPixel(II[I)V

    :cond_17
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_12

    :cond_18
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v10, 0x1

    goto :goto_11

    :cond_19
    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_14
    if-ge v6, v3, :cond_1d

    move v11, v9

    const/4 v7, 0x0

    :goto_15
    if-ge v7, v2, :cond_1c

    invoke-virtual {v1, v11, v10, v12}, Ljava/awt/image/Raster;->getPixel(II[I)[I

    move-result-object v12

    aget v13, v12, v4

    int-to-float v13, v13

    mul-float/2addr v13, v5

    const/4 v14, 0x0

    cmpl-float v15, v13, v14

    if-eqz v15, :cond_1b

    div-float v13, v8, v13

    const/4 v15, 0x0

    :goto_16
    if-ge v15, v4, :cond_1a

    aget v8, v12, v15

    int-to-float v8, v8

    mul-float/2addr v8, v13

    const/high16 v17, 0x3f000000    # 0.5f

    add-float v8, v8, v17

    float-to-int v8, v8

    aput v8, v12, v15

    add-int/lit8 v15, v15, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_16

    :cond_1a
    const/high16 v17, 0x3f000000    # 0.5f

    invoke-virtual {v1, v11, v10, v12}, Ljava/awt/image/WritableRaster;->setPixel(II[I)V

    goto :goto_17

    :cond_1b
    const/high16 v17, 0x3f000000    # 0.5f

    :goto_17
    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v11, v11, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_15

    :cond_1c
    const/4 v14, 0x0

    const/high16 v17, 0x3f000000    # 0.5f

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v10, v10, 0x1

    const/high16 v8, 0x3f800000    # 1.0f

    goto :goto_14

    :cond_1d
    new-instance v9, Ljava/awt/image/DirectColorModel;

    iget-object v1, v0, Ljava/awt/image/ColorModel;->colorSpace:Ljava/awt/color/ColorSpace;

    iget v2, v0, Ljava/awt/image/ColorModel;->pixel_bits:I

    iget-object v3, v0, Ljava/awt/image/PackedColorModel;->maskArray:[I

    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v5, v3, v5

    const/4 v6, 0x2

    aget v6, v3, v6

    const/4 v7, 0x3

    aget v7, v3, v7

    iget v8, v0, Ljava/awt/image/ColorModel;->transferType:I

    move-object v0, v9

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move/from16 v7, p2

    invoke-direct/range {v0 .. v8}, Ljava/awt/image/DirectColorModel;-><init>(Ljava/awt/color/ColorSpace;IIIIIZI)V

    return-object v9

    :cond_1e
    :goto_18
    return-object v0
.end method

.method public final createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;
    .locals 6

    if-lez p1, :cond_3

    if-lez p2, :cond_3

    iget-boolean v0, p0, Ljava/awt/image/ColorModel;->supportsAlpha:Z

    const/4 v1, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    iget v2, p0, Ljava/awt/image/DirectColorModel;->alpha_mask:I

    aput v2, v0, v1

    goto :goto_0

    :cond_0
    new-array v0, v1, [I

    :goto_0
    iget v2, p0, Ljava/awt/image/DirectColorModel;->red_mask:I

    const/4 v3, 0x0

    aput v2, v0, v3

    iget v2, p0, Ljava/awt/image/DirectColorModel;->green_mask:I

    const/4 v4, 0x1

    aput v2, v0, v4

    const/4 v2, 0x2

    iget v5, p0, Ljava/awt/image/DirectColorModel;->blue_mask:I

    aput v5, v0, v2

    iget p0, p0, Ljava/awt/image/ColorModel;->pixel_bits:I

    const/16 v2, 0x10

    const/4 v5, 0x0

    if-le p0, v2, :cond_1

    invoke-static {v1, p1, p2, v0, v5}, Ljava/awt/image/Raster;->createPackedRaster(III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0

    :cond_1
    const/16 v1, 0x8

    if-le p0, v1, :cond_2

    invoke-static {v4, p1, p2, v0, v5}, Ljava/awt/image/Raster;->createPackedRaster(III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-static {v3, p1, p2, v0, v5}, Ljava/awt/image/Raster;->createPackedRaster(III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Width ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") and height ("

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") cannot be <= 0"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getAlpha(I)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Ljava/awt/image/ColorModel;->supportsAlpha:Z

    if-nez v0, :cond_0

    const/16 p0, 0xff

    return p0

    .line 2
    :cond_0
    iget-object v0, p0, Ljava/awt/image/PackedColorModel;->maskArray:[I

    const/4 v1, 0x3

    aget v0, v0, v1

    and-int/2addr p1, v0

    iget-object v0, p0, Ljava/awt/image/PackedColorModel;->maskOffsets:[I

    aget v0, v0, v1

    ushr-int/2addr p1, v0

    .line 3
    iget-object p0, p0, Ljava/awt/image/PackedColorModel;->scaleFactors:[F

    aget p0, p0, v1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-eqz v0, :cond_1

    int-to-float p1, p1

    mul-float/2addr p1, p0

    const/high16 p0, 0x3f000000    # 0.5f

    add-float/2addr p1, p0

    float-to-int p1, p1

    :cond_1
    return p1
.end method

.method public getAlpha(Ljava/lang/Object;)I
    .locals 3

    .line 4
    iget v0, p0, Ljava/awt/image/ColorModel;->transferType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 5
    check-cast p1, [I

    .line 6
    aget p1, p1, v1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This method has not been implemented for transferType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljava/awt/image/ColorModel;->transferType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    check-cast p1, [S

    .line 9
    aget-short p1, p1, v1

    const v0, 0xffff

    and-int/2addr p1, v0

    goto :goto_0

    .line 10
    :cond_2
    check-cast p1, [B

    .line 11
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    .line 12
    :goto_0
    invoke-virtual {p0, p1}, Ljava/awt/image/DirectColorModel;->getAlpha(I)I

    move-result p0

    return p0
.end method

.method public final getAlphaMask()I
    .locals 1

    iget-boolean v0, p0, Ljava/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Ljava/awt/image/PackedColorModel;->maskArray:[I

    const/4 v0, 0x3

    aget p0, p0, v0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getBlue(I)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Ljava/awt/image/ColorModel;->is_sRGB:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, v1}, Ljava/awt/image/DirectColorModel;->getsRGBComponentFromsRGB(II)I

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-boolean v0, p0, Ljava/awt/image/DirectColorModel;->is_LinearRGB:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1, v1}, Ljava/awt/image/DirectColorModel;->getsRGBComponentFromLinearRGB(II)I

    move-result p0

    return p0

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Ljava/awt/image/DirectColorModel;->getDefaultRGBComponents(I)[F

    move-result-object p0

    .line 6
    aget p0, p0, v1

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public getBlue(Ljava/lang/Object;)I
    .locals 3

    .line 7
    iget v0, p0, Ljava/awt/image/ColorModel;->transferType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 8
    check-cast p1, [I

    .line 9
    aget p1, p1, v1

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This method has not been implemented for transferType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljava/awt/image/ColorModel;->transferType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    check-cast p1, [S

    .line 12
    aget-short p1, p1, v1

    const v0, 0xffff

    and-int/2addr p1, v0

    goto :goto_0

    .line 13
    :cond_2
    check-cast p1, [B

    .line 14
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    .line 15
    :goto_0
    invoke-virtual {p0, p1}, Ljava/awt/image/DirectColorModel;->getBlue(I)I

    move-result p0

    return p0
.end method

.method public final getBlueMask()I
    .locals 1

    iget-object p0, p0, Ljava/awt/image/PackedColorModel;->maskArray:[I

    const/4 v0, 0x2

    aget p0, p0, v0

    return p0
.end method

.method public final getComponents(I[II)[I
    .locals 4

    if-nez p2, :cond_0

    .line 1
    iget p2, p0, Ljava/awt/image/ColorModel;->numComponents:I

    add-int/2addr p2, p3

    new-array p2, p2, [I

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Ljava/awt/image/ColorModel;->numComponents:I

    if-ge v0, v1, :cond_1

    add-int v1, p3, v0

    .line 3
    iget-object v2, p0, Ljava/awt/image/PackedColorModel;->maskArray:[I

    aget v2, v2, v0

    and-int/2addr v2, p1

    iget-object v3, p0, Ljava/awt/image/PackedColorModel;->maskOffsets:[I

    aget v3, v3, v0

    ushr-int/2addr v2, v3

    aput v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-object p2
.end method

.method public final getComponents(Ljava/lang/Object;[II)[I
    .locals 3

    .line 4
    iget v0, p0, Ljava/awt/image/ColorModel;->transferType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 5
    check-cast p1, [I

    .line 6
    aget p1, p1, v1

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "This method has not been implemented for transferType "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljava/awt/image/ColorModel;->transferType:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_1
    check-cast p1, [S

    .line 9
    aget-short p1, p1, v1

    const v0, 0xffff

    and-int/2addr p1, v0

    goto :goto_0

    .line 10
    :cond_2
    check-cast p1, [B

    .line 11
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    .line 12
    :goto_0
    invoke-virtual {p0, p1, p2, p3}, Ljava/awt/image/DirectColorModel;->getComponents(I[II)[I

    move-result-object p0

    return-object p0
.end method

.method public getDataElement([II)I
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Ljava/awt/image/ColorModel;->numComponents:I

    if-ge v0, v2, :cond_0

    add-int v2, p2, v0

    aget v2, p1, v2

    iget-object v3, p0, Ljava/awt/image/PackedColorModel;->maskOffsets:[I

    aget v3, v3, v0

    shl-int/2addr v2, v3

    iget-object v3, p0, Ljava/awt/image/PackedColorModel;->maskArray:[I

    aget v3, v3, v0

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v1
.end method

.method public getDataElements(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 1
    iget v2, v0, Ljava/awt/image/ColorModel;->transferType:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x3

    if-ne v2, v5, :cond_0

    if-eqz p2, :cond_0

    .line 2
    move-object/from16 v2, p2

    check-cast v2, [I

    .line 3
    aput v3, v2, v3

    goto :goto_0

    :cond_0
    new-array v2, v4, [I

    .line 4
    :goto_0
    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object v6

    if-eq v0, v6, :cond_17

    .line 5
    invoke-virtual {v0, v6}, Ljava/awt/image/PackedColorModel;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_9

    :cond_1
    shr-int/lit8 v6, v1, 0x10

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v7, v1, 0x8

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v8, v1, 0xff

    .line 6
    iget-boolean v9, v0, Ljava/awt/image/ColorModel;->is_sRGB:Z

    const v10, 0xffff

    const/4 v11, 0x2

    const v12, 0x3b808081

    const/16 v13, 0x8

    const/high16 v14, 0x3f000000    # 0.5f

    if-nez v9, :cond_6

    iget-boolean v9, v0, Ljava/awt/image/DirectColorModel;->is_LinearRGB:Z

    if-eqz v9, :cond_2

    goto :goto_2

    :cond_2
    new-array v9, v5, [F

    int-to-float v6, v6

    mul-float/2addr v6, v12

    aput v6, v9, v3

    int-to-float v6, v7

    mul-float/2addr v6, v12

    aput v6, v9, v4

    int-to-float v6, v8

    mul-float/2addr v6, v12

    aput v6, v9, v11

    .line 7
    iget-object v6, v0, Ljava/awt/image/ColorModel;->colorSpace:Ljava/awt/color/ColorSpace;

    invoke-virtual {v6, v9}, Ljava/awt/color/ColorSpace;->fromRGB([F)[F

    move-result-object v6

    .line 8
    iget-boolean v7, v0, Ljava/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v7, :cond_5

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 9
    iget-boolean v7, v0, Ljava/awt/image/ColorModel;->isAlphaPremultiplied:Z

    if-eqz v7, :cond_3

    int-to-float v7, v1

    mul-float/2addr v7, v12

    move v8, v3

    :goto_1
    if-ge v8, v5, :cond_3

    .line 10
    aget v9, v6, v8

    mul-float/2addr v9, v7

    aput v9, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 11
    :cond_3
    iget-object v7, v0, Ljava/awt/image/ColorModel;->nBits:[I

    aget v7, v7, v5

    if-eq v7, v13, :cond_4

    int-to-float v1, v1

    mul-float/2addr v1, v12

    shl-int v8, v4, v7

    sub-int/2addr v8, v4

    int-to-float v8, v8

    mul-float/2addr v1, v8

    add-float/2addr v1, v14

    float-to-int v1, v1

    shl-int v8, v4, v7

    sub-int/2addr v8, v4

    if-le v1, v8, :cond_4

    shl-int v1, v4, v7

    sub-int/2addr v1, v4

    .line 12
    :cond_4
    iget-object v7, v0, Ljava/awt/image/PackedColorModel;->maskOffsets:[I

    aget v7, v7, v5

    shl-int/2addr v1, v7

    aput v1, v2, v3

    .line 13
    :cond_5
    aget v1, v6, v3

    iget-object v7, v0, Ljava/awt/image/ColorModel;->nBits:[I

    aget v8, v7, v3

    shl-int v8, v4, v8

    sub-int/2addr v8, v4

    int-to-float v8, v8

    mul-float/2addr v1, v8

    add-float/2addr v1, v14

    float-to-int v1, v1

    .line 14
    aget v8, v6, v4

    aget v9, v7, v4

    shl-int v9, v4, v9

    sub-int/2addr v9, v4

    int-to-float v9, v9

    mul-float/2addr v8, v9

    add-float/2addr v8, v14

    float-to-int v8, v8

    .line 15
    aget v6, v6, v11

    aget v7, v7, v11

    shl-int v7, v4, v7

    sub-int/2addr v7, v4

    int-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v6, v14

    float-to-int v6, v6

    goto/16 :goto_6

    .line 16
    :cond_6
    :goto_2
    iget-boolean v9, v0, Ljava/awt/image/DirectColorModel;->is_LinearRGB:Z

    if-eqz v9, :cond_8

    .line 17
    iget v9, v0, Ljava/awt/image/DirectColorModel;->lRGBprecision:I

    if-ne v9, v13, :cond_7

    .line 18
    iget-object v9, v0, Ljava/awt/image/DirectColorModel;->fromsRGB8LUT8:[B

    aget-byte v6, v9, v6

    and-int/lit16 v6, v6, 0xff

    .line 19
    aget-byte v7, v9, v7

    and-int/lit16 v7, v7, 0xff

    .line 20
    aget-byte v8, v9, v8

    and-int/lit16 v8, v8, 0xff

    goto :goto_3

    .line 21
    :cond_7
    iget-object v9, v0, Ljava/awt/image/DirectColorModel;->fromsRGB8LUT16:[S

    aget-short v6, v9, v6

    and-int/2addr v6, v10

    .line 22
    aget-short v7, v9, v7

    and-int/2addr v7, v10

    .line 23
    aget-short v8, v9, v8

    and-int/2addr v8, v10

    const/16 v9, 0x10

    const v15, 0x37800080

    goto :goto_4

    :cond_8
    :goto_3
    move v15, v12

    move v9, v13

    .line 24
    :goto_4
    iget-boolean v10, v0, Ljava/awt/image/ColorModel;->supportsAlpha:Z

    if-eqz v10, :cond_b

    shr-int/lit8 v1, v1, 0x18

    and-int/lit16 v1, v1, 0xff

    .line 25
    iget-boolean v10, v0, Ljava/awt/image/ColorModel;->isAlphaPremultiplied:Z

    if-eqz v10, :cond_9

    int-to-float v9, v1

    mul-float/2addr v9, v12

    mul-float/2addr v15, v9

    const/4 v9, -0x1

    .line 26
    :cond_9
    iget-object v10, v0, Ljava/awt/image/ColorModel;->nBits:[I

    aget v10, v10, v5

    if-eq v10, v13, :cond_a

    int-to-float v1, v1

    mul-float/2addr v1, v12

    shl-int v12, v4, v10

    sub-int/2addr v12, v4

    int-to-float v12, v12

    mul-float/2addr v1, v12

    add-float/2addr v1, v14

    float-to-int v1, v1

    shl-int v12, v4, v10

    sub-int/2addr v12, v4

    if-le v1, v12, :cond_a

    shl-int v1, v4, v10

    sub-int/2addr v1, v4

    .line 27
    :cond_a
    iget-object v10, v0, Ljava/awt/image/PackedColorModel;->maskOffsets:[I

    aget v10, v10, v5

    shl-int/2addr v1, v10

    aput v1, v2, v3

    .line 28
    :cond_b
    iget-object v1, v0, Ljava/awt/image/ColorModel;->nBits:[I

    aget v10, v1, v3

    if-eq v10, v9, :cond_c

    int-to-float v6, v6

    mul-float/2addr v6, v15

    shl-int v10, v4, v10

    sub-int/2addr v10, v4

    int-to-float v10, v10

    mul-float/2addr v6, v10

    add-float/2addr v6, v14

    float-to-int v6, v6

    .line 29
    :cond_c
    aget v10, v1, v4

    if-eq v10, v9, :cond_d

    int-to-float v7, v7

    mul-float/2addr v7, v15

    shl-int v10, v4, v10

    sub-int/2addr v10, v4

    int-to-float v10, v10

    mul-float/2addr v7, v10

    add-float/2addr v7, v14

    float-to-int v7, v7

    .line 30
    :cond_d
    aget v1, v1, v11

    if-eq v1, v9, :cond_e

    int-to-float v8, v8

    mul-float/2addr v8, v15

    shl-int v1, v4, v1

    sub-int/2addr v1, v4

    int-to-float v1, v1

    mul-float/2addr v8, v1

    add-float/2addr v8, v14

    float-to-int v1, v8

    goto :goto_5

    :cond_e
    move v1, v8

    :goto_5
    move v8, v7

    move/from16 v16, v6

    move v6, v1

    move/from16 v1, v16

    .line 31
    :goto_6
    iget v7, v0, Ljava/awt/image/ColorModel;->maxBits:I

    const/16 v9, 0x17

    if-le v7, v9, :cond_11

    .line 32
    iget-object v7, v0, Ljava/awt/image/ColorModel;->nBits:[I

    aget v9, v7, v3

    shl-int v10, v4, v9

    sub-int/2addr v10, v4

    if-le v1, v10, :cond_f

    shl-int v1, v4, v9

    sub-int/2addr v1, v4

    .line 33
    :cond_f
    aget v9, v7, v4

    shl-int v10, v4, v9

    sub-int/2addr v10, v4

    if-le v8, v10, :cond_10

    shl-int v8, v4, v9

    sub-int/2addr v8, v4

    .line 34
    :cond_10
    aget v7, v7, v11

    shl-int v9, v4, v7

    sub-int/2addr v9, v4

    if-le v6, v9, :cond_11

    shl-int v6, v4, v7

    sub-int/2addr v6, v4

    .line 35
    :cond_11
    aget v7, v2, v3

    iget-object v9, v0, Ljava/awt/image/PackedColorModel;->maskOffsets:[I

    aget v10, v9, v3

    shl-int/2addr v1, v10

    aget v10, v9, v4

    shl-int/2addr v8, v10

    or-int/2addr v1, v8

    aget v8, v9, v11

    shl-int/2addr v6, v8

    or-int/2addr v1, v6

    or-int/2addr v1, v7

    aput v1, v2, v3

    .line 36
    iget v6, v0, Ljava/awt/image/ColorModel;->transferType:I

    if-eqz v6, :cond_15

    if-eq v6, v4, :cond_13

    if-ne v6, v5, :cond_12

    return-object v2

    .line 37
    :cond_12
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "This method has not been implemented for transferType "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Ljava/awt/image/ColorModel;->transferType:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_13
    if-nez p2, :cond_14

    new-array v0, v4, [S

    goto :goto_7

    .line 38
    :cond_14
    move-object/from16 v0, p2

    check-cast v0, [S

    :goto_7
    const v2, 0xffff

    and-int/2addr v1, v2

    int-to-short v1, v1

    .line 39
    aput-short v1, v0, v3

    return-object v0

    :cond_15
    if-nez p2, :cond_16

    new-array v0, v4, [B

    goto :goto_8

    .line 40
    :cond_16
    move-object/from16 v0, p2

    check-cast v0, [B

    :goto_8
    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    .line 41
    aput-byte v1, v0, v3

    return-object v0

    .line 42
    :cond_17
    :goto_9
    aput v1, v2, v3

    return-object v2
.end method

.method public getDataElements([IILjava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 43
    :goto_0
    iget v3, p0, Ljava/awt/image/ColorModel;->numComponents:I

    if-ge v1, v3, :cond_0

    add-int v3, p2, v1

    .line 44
    aget v3, p1, v3

    iget-object v4, p0, Ljava/awt/image/PackedColorModel;->maskOffsets:[I

    aget v4, v4, v1

    shl-int/2addr v3, v4

    iget-object v4, p0, Ljava/awt/image/PackedColorModel;->maskArray:[I

    aget v4, v4, v1

    and-int/2addr v3, v4

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 45
    :cond_0
    iget p1, p0, Ljava/awt/image/ColorModel;->transferType:I

    const/4 p2, 0x1

    if-eqz p1, :cond_5

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-ne p1, p2, :cond_2

    .line 46
    instance-of p0, p3, [I

    if-eqz p0, :cond_1

    .line 47
    check-cast p3, [I

    .line 48
    aput v2, p3, v0

    return-object p3

    .line 49
    :cond_1
    filled-new-array {v2}, [I

    move-result-object p0

    return-object p0

    .line 50
    :cond_2
    new-instance p1, Ljava/lang/ClassCastException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "This method has not been implemented for transferType "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljava/awt/image/ColorModel;->transferType:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_3
    instance-of p0, p3, [S

    const p1, 0xffff

    if-eqz p0, :cond_4

    .line 52
    check-cast p3, [S

    and-int p0, v2, p1

    int-to-short p0, p0

    .line 53
    aput-short p0, p3, v0

    return-object p3

    :cond_4
    new-array p0, p2, [S

    and-int/2addr p1, v2

    int-to-short p1, p1

    aput-short p1, p0, v0

    return-object p0

    .line 54
    :cond_5
    instance-of p0, p3, [B

    if-eqz p0, :cond_6

    .line 55
    check-cast p3, [B

    and-int/lit16 p0, v2, 0xff

    int-to-byte p0, p0

    .line 56
    aput-byte p0, p3, v0

    return-object p3

    :cond_6
    new-array p0, p2, [B

    and-int/lit16 p1, v2, 0xff

    int-to-byte p1, p1

    aput-byte p1, p0, v0

    return-object p0
.end method

.method public final getGreen(I)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Ljava/awt/image/ColorModel;->is_sRGB:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, v1}, Ljava/awt/image/DirectColorModel;->getsRGBComponentFromsRGB(II)I

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-boolean v0, p0, Ljava/awt/image/DirectColorModel;->is_LinearRGB:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1, v1}, Ljava/awt/image/DirectColorModel;->getsRGBComponentFromLinearRGB(II)I

    move-result p0

    return p0

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Ljava/awt/image/DirectColorModel;->getDefaultRGBComponents(I)[F

    move-result-object p0

    .line 6
    aget p0, p0, v1

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public getGreen(Ljava/lang/Object;)I
    .locals 3

    .line 7
    iget v0, p0, Ljava/awt/image/ColorModel;->transferType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 8
    check-cast p1, [I

    .line 9
    aget p1, p1, v1

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This method has not been implemented for transferType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljava/awt/image/ColorModel;->transferType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    check-cast p1, [S

    .line 12
    aget-short p1, p1, v1

    const v0, 0xffff

    and-int/2addr p1, v0

    goto :goto_0

    .line 13
    :cond_2
    check-cast p1, [B

    .line 14
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    .line 15
    :goto_0
    invoke-virtual {p0, p1}, Ljava/awt/image/DirectColorModel;->getGreen(I)I

    move-result p0

    return p0
.end method

.method public final getGreenMask()I
    .locals 1

    iget-object p0, p0, Ljava/awt/image/PackedColorModel;->maskArray:[I

    const/4 v0, 0x1

    aget p0, p0, v0

    return p0
.end method

.method public final getRGB(I)I
    .locals 4

    .line 1
    iget-boolean v0, p0, Ljava/awt/image/ColorModel;->is_sRGB:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Ljava/awt/image/DirectColorModel;->is_LinearRGB:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Ljava/awt/image/DirectColorModel;->getDefaultRGBComponents(I)[F

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1}, Ljava/awt/image/DirectColorModel;->getAlpha(I)I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    aget p1, v0, v1

    const/high16 v2, 0x437f0000    # 255.0f

    mul-float/2addr p1, v2

    const/high16 v3, 0x3f000000    # 0.5f

    add-float/2addr p1, v3

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x10

    or-int/2addr p0, p1

    const/4 p1, 0x1

    aget p1, v0, p1

    mul-float/2addr p1, v2

    add-float/2addr p1, v3

    float-to-int p1, p1

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    const/4 p1, 0x2

    aget p1, v0, p1

    mul-float/2addr p1, v2

    add-float/2addr p1, v3

    float-to-int p1, p1

    shl-int/2addr p1, v1

    or-int/2addr p0, p1

    return p0

    .line 4
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Ljava/awt/image/DirectColorModel;->getAlpha(I)I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    .line 5
    invoke-virtual {p0, p1}, Ljava/awt/image/DirectColorModel;->getRed(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    .line 6
    invoke-virtual {p0, p1}, Ljava/awt/image/DirectColorModel;->getGreen(I)I

    move-result v2

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 7
    invoke-virtual {p0, p1}, Ljava/awt/image/DirectColorModel;->getBlue(I)I

    move-result p0

    shl-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method public getRGB(Ljava/lang/Object;)I
    .locals 3

    .line 8
    iget v0, p0, Ljava/awt/image/ColorModel;->transferType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 9
    check-cast p1, [I

    .line 10
    aget p1, p1, v1

    goto :goto_0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This method has not been implemented for transferType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljava/awt/image/ColorModel;->transferType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 12
    :cond_1
    check-cast p1, [S

    .line 13
    aget-short p1, p1, v1

    const v0, 0xffff

    and-int/2addr p1, v0

    goto :goto_0

    .line 14
    :cond_2
    check-cast p1, [B

    .line 15
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    .line 16
    :goto_0
    invoke-virtual {p0, p1}, Ljava/awt/image/DirectColorModel;->getRGB(I)I

    move-result p0

    return p0
.end method

.method public final getRed(I)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Ljava/awt/image/ColorModel;->is_sRGB:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, v1}, Ljava/awt/image/DirectColorModel;->getsRGBComponentFromsRGB(II)I

    move-result p0

    return p0

    .line 3
    :cond_0
    iget-boolean v0, p0, Ljava/awt/image/DirectColorModel;->is_LinearRGB:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-direct {p0, p1, v1}, Ljava/awt/image/DirectColorModel;->getsRGBComponentFromLinearRGB(II)I

    move-result p0

    return p0

    .line 5
    :cond_1
    invoke-direct {p0, p1}, Ljava/awt/image/DirectColorModel;->getDefaultRGBComponents(I)[F

    move-result-object p0

    .line 6
    aget p0, p0, v1

    const/high16 p1, 0x437f0000    # 255.0f

    mul-float/2addr p0, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr p0, p1

    float-to-int p0, p0

    return p0
.end method

.method public getRed(Ljava/lang/Object;)I
    .locals 3

    .line 7
    iget v0, p0, Ljava/awt/image/ColorModel;->transferType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 8
    check-cast p1, [I

    .line 9
    aget p1, p1, v1

    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This method has not been implemented for transferType "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljava/awt/image/ColorModel;->transferType:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 11
    :cond_1
    check-cast p1, [S

    .line 12
    aget-short p1, p1, v1

    const v0, 0xffff

    and-int/2addr p1, v0

    goto :goto_0

    .line 13
    :cond_2
    check-cast p1, [B

    .line 14
    aget-byte p1, p1, v1

    and-int/lit16 p1, p1, 0xff

    .line 15
    :goto_0
    invoke-virtual {p0, p1}, Ljava/awt/image/DirectColorModel;->getRed(I)I

    move-result p0

    return p0
.end method

.method public final getRedMask()I
    .locals 1

    iget-object p0, p0, Ljava/awt/image/PackedColorModel;->maskArray:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public isCompatibleRaster(Ljava/awt/image/Raster;)Z
    .locals 5

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v0

    instance-of v1, v0, Ljava/awt/image/SinglePixelPackedSampleModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast v0, Ljava/awt/image/SinglePixelPackedSampleModel;

    invoke-virtual {v0}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v1

    invoke-virtual {p0}, Ljava/awt/image/ColorModel;->getNumComponents()I

    move-result v3

    if-eq v1, v3, :cond_0

    return v2

    :cond_0
    invoke-virtual {v0}, Ljava/awt/image/SinglePixelPackedSampleModel;->getBitMasks()[I

    move-result-object v0

    move v1, v2

    :goto_0
    iget v3, p0, Ljava/awt/image/ColorModel;->numComponents:I

    if-ge v1, v3, :cond_2

    aget v3, v0, v1

    iget-object v4, p0, Ljava/awt/image/PackedColorModel;->maskArray:[I

    aget v4, v4, v1

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/awt/image/Raster;->getTransferType()I

    move-result p1

    iget p0, p0, Ljava/awt/image/ColorModel;->transferType:I

    if-ne p1, p0, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DirectColorModel: rmask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/awt/image/DirectColorModel;->red_mask:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " gmask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/awt/image/DirectColorModel;->green_mask:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " bmask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/awt/image/DirectColorModel;->blue_mask:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " amask="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljava/awt/image/DirectColorModel;->alpha_mask:I

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
