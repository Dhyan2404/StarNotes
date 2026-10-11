.class public Lsun/awt/image/BytePackedRaster;
.super Lsun/awt/image/SunWritableRaster;
.source "SourceFile"


# instance fields
.field bitMask:I

.field data:[B

.field dataBitOffset:I

.field private maxX:I

.field private maxY:I

.field pixelBitStride:I

.field scanlineStride:I

.field shiftOffset:I

.field type:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/SampleModel;Ljava/awt/Point;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/awt/image/SampleModel;->createDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v2

    new-instance v3, Ljava/awt/Rectangle;

    iget v0, p2, Ljava/awt/Point;->x:I

    iget v1, p2, Ljava/awt/Point;->y:I

    invoke-virtual {p1}, Ljava/awt/image/SampleModel;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Ljava/awt/image/SampleModel;->getHeight()I

    move-result v5

    invoke-direct {v3, v0, v1, v4, v5}, Ljava/awt/Rectangle;-><init>(IIII)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lsun/awt/image/BytePackedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Lsun/awt/image/BytePackedRaster;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V
    .locals 6

    .line 2
    new-instance v3, Ljava/awt/Rectangle;

    iget v0, p3, Ljava/awt/Point;->x:I

    iget v1, p3, Ljava/awt/Point;->y:I

    invoke-virtual {p1}, Ljava/awt/image/SampleModel;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Ljava/awt/image/SampleModel;->getHeight()I

    move-result v4

    invoke-direct {v3, v0, v1, v2, v4}, Ljava/awt/Rectangle;-><init>(IIII)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lsun/awt/image/BytePackedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Lsun/awt/image/BytePackedRaster;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Lsun/awt/image/BytePackedRaster;)V
    .locals 3

    .line 3
    invoke-direct/range {p0 .. p5}, Lsun/awt/image/SunWritableRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Ljava/awt/image/WritableRaster;)V

    .line 4
    iget p5, p0, Ljava/awt/image/Raster;->minX:I

    iget v0, p0, Ljava/awt/image/Raster;->width:I

    add-int/2addr p5, v0

    iput p5, p0, Lsun/awt/image/BytePackedRaster;->maxX:I

    .line 5
    iget p5, p0, Ljava/awt/image/Raster;->minY:I

    iget v0, p0, Ljava/awt/image/Raster;->height:I

    add-int/2addr p5, v0

    iput p5, p0, Lsun/awt/image/BytePackedRaster;->maxY:I

    .line 6
    instance-of p5, p2, Ljava/awt/image/DataBufferByte;

    if-eqz p5, :cond_4

    .line 7
    check-cast p2, Ljava/awt/image/DataBufferByte;

    const/4 p5, 0x0

    .line 8
    invoke-static {p2, p5}, Lsun/awt/image/SunWritableRaster;->stealData(Ljava/awt/image/DataBufferByte;I)[B

    move-result-object v0

    iput-object v0, p0, Lsun/awt/image/BytePackedRaster;->data:[B

    .line 9
    invoke-virtual {p2}, Ljava/awt/image/DataBuffer;->getNumBanks()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 10
    invoke-virtual {p2}, Ljava/awt/image/DataBuffer;->getOffset()I

    move-result p2

    .line 11
    instance-of v0, p1, Ljava/awt/image/MultiPixelPackedSampleModel;

    if-eqz v0, :cond_2

    .line 12
    check-cast p1, Ljava/awt/image/MultiPixelPackedSampleModel;

    const/16 v0, 0xb

    .line 13
    iput v0, p0, Lsun/awt/image/BytePackedRaster;->type:I

    .line 14
    invoke-virtual {p1}, Ljava/awt/image/MultiPixelPackedSampleModel;->getPixelBitStride()I

    move-result v0

    iput v0, p0, Lsun/awt/image/BytePackedRaster;->pixelBitStride:I

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    new-instance p0, Ljava/awt/image/RasterFormatException;

    const-string p1, "BytePackedRasters must have a bit depth of 1, 2, or 4"

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_1
    :goto_0
    invoke-virtual {p1}, Ljava/awt/image/MultiPixelPackedSampleModel;->getScanlineStride()I

    move-result v0

    iput v0, p0, Lsun/awt/image/BytePackedRaster;->scanlineStride:I

    .line 17
    invoke-virtual {p1}, Ljava/awt/image/MultiPixelPackedSampleModel;->getDataBitOffset()I

    move-result p1

    mul-int/lit8 p2, p2, 0x8

    add-int/2addr p1, p2

    iput p1, p0, Lsun/awt/image/BytePackedRaster;->dataBitOffset:I

    .line 18
    iget p2, p3, Ljava/awt/Rectangle;->x:I

    iget v0, p4, Ljava/awt/Point;->x:I

    sub-int/2addr p2, v0

    .line 19
    iget p3, p3, Ljava/awt/Rectangle;->y:I

    iget p4, p4, Ljava/awt/Point;->y:I

    sub-int/2addr p3, p4

    .line 20
    iget p4, p0, Lsun/awt/image/BytePackedRaster;->pixelBitStride:I

    mul-int/2addr p2, p4

    iget v0, p0, Lsun/awt/image/BytePackedRaster;->scanlineStride:I

    mul-int/2addr p3, v0

    mul-int/lit8 p3, p3, 0x8

    add-int/2addr p2, p3

    add-int/2addr p1, p2

    iput p1, p0, Lsun/awt/image/BytePackedRaster;->dataBitOffset:I

    shl-int p1, v1, p4

    sub-int/2addr p1, v1

    .line 21
    iput p1, p0, Lsun/awt/image/BytePackedRaster;->bitMask:I

    rsub-int/lit8 p1, p4, 0x8

    .line 22
    iput p1, p0, Lsun/awt/image/BytePackedRaster;->shiftOffset:I

    .line 23
    invoke-direct {p0, p5}, Lsun/awt/image/BytePackedRaster;->verify(Z)V

    return-void

    .line 24
    :cond_2
    new-instance p0, Ljava/awt/image/RasterFormatException;

    const-string p1, "BytePackedRasters must haveMultiPixelPackedSampleModel"

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_3
    new-instance p0, Ljava/awt/image/RasterFormatException;

    const-string p1, "DataBuffer for BytePackedRasters must only have 1 bank."

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_4
    new-instance p0, Ljava/awt/image/RasterFormatException;

    const-string p1, "BytePackedRasters must havebyte DataBuffers"

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static initIDs()V
    .locals 0

    return-void
.end method

.method private setDataElements(IIIIIILsun/awt/image/BytePackedRaster;)V
    .locals 20

    move-object/from16 v0, p0

    move/from16 v1, p6

    move-object/from16 v2, p7

    if-lez p5, :cond_11

    if-lez v1, :cond_11

    .line 21
    iget-object v3, v2, Lsun/awt/image/BytePackedRaster;->data:[B

    .line 22
    iget-object v4, v0, Lsun/awt/image/BytePackedRaster;->data:[B

    .line 23
    iget v5, v2, Lsun/awt/image/BytePackedRaster;->scanlineStride:I

    .line 24
    iget v6, v0, Lsun/awt/image/BytePackedRaster;->scanlineStride:I

    .line 25
    iget v7, v2, Lsun/awt/image/BytePackedRaster;->dataBitOffset:I

    iget v8, v2, Ljava/awt/image/Raster;->minY:I

    sub-int v8, p4, v8

    const/16 v9, 0x8

    mul-int/2addr v8, v9

    mul-int/2addr v8, v5

    add-int/2addr v7, v8

    iget v8, v2, Ljava/awt/image/Raster;->minX:I

    sub-int v8, p3, v8

    iget v2, v2, Lsun/awt/image/BytePackedRaster;->pixelBitStride:I

    mul-int/2addr v8, v2

    add-int/2addr v7, v8

    .line 26
    iget v2, v0, Lsun/awt/image/BytePackedRaster;->dataBitOffset:I

    iget v8, v0, Ljava/awt/image/Raster;->minY:I

    sub-int v8, p2, v8

    mul-int/2addr v8, v9

    mul-int/2addr v8, v6

    add-int/2addr v2, v8

    iget v8, v0, Ljava/awt/image/Raster;->minX:I

    sub-int v8, p1, v8

    iget v10, v0, Lsun/awt/image/BytePackedRaster;->pixelBitStride:I

    mul-int/2addr v8, v10

    add-int/2addr v2, v8

    mul-int v8, p5, v10

    and-int/lit8 v10, v7, 0x7

    and-int/lit8 v11, v2, 0x7

    const v12, 0xff00

    const/16 v14, 0xff

    if-ne v10, v11, :cond_6

    if-eqz v11, :cond_2

    rsub-int/lit8 v10, v11, 0x8

    shr-int/lit8 v15, v7, 0x3

    shr-int/lit8 v16, v2, 0x3

    shr-int v11, v14, v11

    if-ge v8, v10, :cond_0

    sub-int/2addr v10, v8

    shl-int v10, v14, v10

    and-int/2addr v11, v10

    move v10, v8

    :cond_0
    const/4 v13, 0x0

    :goto_0
    if-ge v13, v1, :cond_1

    .line 27
    aget-byte v17, v4, v16

    not-int v14, v11

    and-int v14, v17, v14

    .line 28
    aget-byte v17, v3, v15

    and-int v17, v17, v11

    or-int v14, v14, v17

    int-to-byte v14, v14

    .line 29
    aput-byte v14, v4, v16

    add-int/2addr v15, v5

    add-int v16, v16, v6

    add-int/lit8 v13, v13, 0x1

    const/16 v14, 0xff

    goto :goto_0

    :cond_1
    add-int/2addr v7, v10

    add-int/2addr v2, v10

    sub-int/2addr v8, v10

    :cond_2
    if-lt v8, v9, :cond_5

    shr-int/lit8 v10, v7, 0x3

    shr-int/lit8 v11, v2, 0x3

    shr-int/lit8 v13, v8, 0x3

    if-ne v13, v5, :cond_3

    if-ne v5, v6, :cond_3

    mul-int v14, v5, v1

    .line 30
    invoke-static {v3, v10, v4, v11, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    :cond_3
    const/4 v14, 0x0

    :goto_1
    if-ge v14, v1, :cond_4

    .line 31
    invoke-static {v3, v10, v4, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v10, v5

    add-int/2addr v11, v6

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    mul-int/2addr v13, v9

    add-int/2addr v7, v13

    add-int/2addr v2, v13

    sub-int/2addr v8, v13

    :cond_5
    if-lez v8, :cond_10

    shr-int/lit8 v7, v7, 0x3

    shr-int/lit8 v2, v2, 0x3

    shr-int v8, v12, v8

    const/16 v9, 0xff

    and-int/2addr v8, v9

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v1, :cond_10

    .line 32
    aget-byte v9, v4, v2

    not-int v10, v8

    and-int/2addr v9, v10

    .line 33
    aget-byte v10, v3, v7

    and-int/2addr v10, v8

    or-int/2addr v9, v10

    int-to-byte v9, v9

    .line 34
    aput-byte v9, v4, v2

    add-int/2addr v7, v5

    add-int/2addr v2, v6

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_6
    if-nez v11, :cond_8

    if-ge v8, v9, :cond_7

    goto :goto_4

    :cond_7
    move-object/from16 v19, v3

    move v0, v9

    goto :goto_7

    :cond_8
    :goto_4
    rsub-int/lit8 v13, v11, 0x8

    shr-int/lit8 v14, v7, 0x3

    shr-int/lit8 v15, v2, 0x3

    rsub-int/lit8 v16, v10, 0x8

    const/16 v17, 0xff

    shr-int v18, v17, v11

    if-ge v8, v13, :cond_9

    sub-int/2addr v13, v8

    shl-int v13, v17, v13

    and-int v18, v18, v13

    move v13, v8

    :cond_9
    move/from16 v12, v18

    .line 35
    array-length v9, v3

    add-int/lit8 v9, v9, -0x1

    const/4 v0, 0x0

    :goto_5
    if-ge v0, v1, :cond_b

    .line 36
    aget-byte v17, v3, v14

    if-ge v14, v9, :cond_a

    add-int/lit8 v18, v14, 0x1

    .line 37
    aget-byte v18, v3, v18

    move/from16 p5, v9

    move/from16 v9, v18

    goto :goto_6

    :cond_a
    move/from16 p5, v9

    const/4 v9, 0x0

    .line 38
    :goto_6
    aget-byte v18, v4, v15

    move-object/from16 v19, v3

    not-int v3, v12

    and-int v3, v18, v3

    shl-int v17, v17, v10

    move/from16 p7, v10

    const/16 v10, 0xff

    and-int/2addr v9, v10

    shr-int v9, v9, v16

    or-int v9, v17, v9

    shr-int/2addr v9, v11

    and-int/2addr v9, v12

    or-int/2addr v3, v9

    int-to-byte v3, v3

    .line 39
    aput-byte v3, v4, v15

    add-int/2addr v14, v5

    add-int/2addr v15, v6

    add-int/lit8 v0, v0, 0x1

    move/from16 v9, p5

    move/from16 v10, p7

    move-object/from16 v3, v19

    goto :goto_5

    :cond_b
    move-object/from16 v19, v3

    add-int/2addr v7, v13

    add-int/2addr v2, v13

    sub-int/2addr v8, v13

    const/16 v0, 0x8

    :goto_7
    if-lt v8, v0, :cond_e

    shr-int/lit8 v0, v7, 0x3

    shr-int/lit8 v3, v2, 0x3

    shr-int/lit8 v9, v8, 0x3

    and-int/lit8 v10, v7, 0x7

    rsub-int/lit8 v11, v10, 0x8

    const/4 v12, 0x0

    :goto_8
    if-lt v12, v1, :cond_c

    const/16 v13, 0x8

    mul-int/2addr v9, v13

    add-int/2addr v7, v9

    add-int/2addr v2, v9

    sub-int/2addr v8, v9

    goto :goto_a

    :cond_c
    const/16 v13, 0x8

    mul-int v14, v12, v5

    add-int/2addr v14, v0

    mul-int v15, v12, v6

    add-int/2addr v15, v3

    .line 40
    aget-byte v16, v19, v14

    const/4 v13, 0x0

    :goto_9
    if-ge v13, v9, :cond_d

    add-int/lit8 v14, v14, 0x1

    move/from16 p5, v0

    .line 41
    aget-byte v0, v19, v14

    shl-int v16, v16, v10

    move/from16 p7, v2

    and-int/lit16 v2, v0, 0xff

    shr-int/2addr v2, v11

    or-int v2, v16, v2

    int-to-byte v2, v2

    .line 42
    aput-byte v2, v4, v15

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v2, p7

    move/from16 v16, v0

    move/from16 v0, p5

    goto :goto_9

    :cond_d
    move/from16 p5, v0

    move/from16 p7, v2

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_e
    move/from16 p7, v2

    :goto_a
    if-lez v8, :cond_10

    shr-int/lit8 v0, v7, 0x3

    shr-int/lit8 v2, v2, 0x3

    const v3, 0xff00

    shr-int/2addr v3, v8

    const/16 v8, 0xff

    and-int/2addr v3, v8

    and-int/lit8 v7, v7, 0x7

    rsub-int/lit8 v8, v7, 0x8

    move-object/from16 v9, v19

    .line 43
    array-length v10, v9

    add-int/lit8 v10, v10, -0x1

    const/4 v11, 0x0

    :goto_b
    if-ge v11, v1, :cond_10

    .line 44
    aget-byte v12, v9, v0

    if-ge v0, v10, :cond_f

    add-int/lit8 v13, v0, 0x1

    .line 45
    aget-byte v13, v9, v13

    goto :goto_c

    :cond_f
    const/4 v13, 0x0

    .line 46
    :goto_c
    aget-byte v14, v4, v2

    not-int v15, v3

    and-int/2addr v14, v15

    shl-int/2addr v12, v7

    const/16 v15, 0xff

    and-int/2addr v13, v15

    shr-int/2addr v13, v8

    or-int/2addr v12, v13

    and-int/2addr v12, v3

    or-int/2addr v12, v14

    int-to-byte v12, v12

    .line 47
    aput-byte v12, v4, v2

    add-int/2addr v0, v5

    add-int/2addr v2, v6

    add-int/lit8 v11, v11, 0x1

    goto :goto_b

    .line 48
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lsun/awt/image/SunWritableRaster;->markDirty()V

    :cond_11
    return-void
.end method

.method private verify(Z)V
    .locals 16

    move-object/from16 v0, p0

    iget v1, v0, Lsun/awt/image/BytePackedRaster;->dataBitOffset:I

    if-ltz v1, :cond_a

    iget v2, v0, Ljava/awt/image/Raster;->width:I

    const-string v3, "Invalid raster dimension"

    if-lez v2, :cond_9

    iget v4, v0, Ljava/awt/image/Raster;->height:I

    if-lez v4, :cond_9

    const v5, 0x7fffffff

    div-int v6, v5, v2

    if-gt v4, v6, :cond_9

    add-int/lit8 v6, v2, -0x1

    iget v7, v0, Lsun/awt/image/BytePackedRaster;->pixelBitStride:I

    div-int v8, v5, v7

    if-gt v6, v8, :cond_8

    iget v3, v0, Ljava/awt/image/Raster;->minX:I

    int-to-long v8, v3

    iget v3, v0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    int-to-long v10, v3

    sub-long/2addr v8, v10

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-ltz v3, :cond_7

    iget v3, v0, Ljava/awt/image/Raster;->minY:I

    int-to-long v8, v3

    iget v6, v0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    int-to-long v12, v6

    sub-long/2addr v8, v12

    cmp-long v8, v8, v10

    if-ltz v8, :cond_7

    iget v8, v0, Lsun/awt/image/BytePackedRaster;->scanlineStride:I

    if-ltz v8, :cond_6

    div-int/2addr v5, v4

    if-gt v8, v5, :cond_6

    const/4 v5, 0x1

    if-gt v4, v5, :cond_0

    sub-int/2addr v3, v6

    if-lez v3, :cond_1

    :cond_0
    iget-object v3, v0, Lsun/awt/image/BytePackedRaster;->data:[B

    array-length v3, v3

    if-gt v8, v3, :cond_5

    :cond_1
    int-to-long v12, v1

    add-int/lit8 v1, v4, -0x1

    int-to-long v14, v1

    int-to-long v5, v8

    mul-long/2addr v14, v5

    const-wide/16 v5, 0x8

    mul-long/2addr v14, v5

    add-long/2addr v12, v14

    add-int/lit8 v3, v2, -0x1

    int-to-long v14, v3

    move v9, v2

    int-to-long v1, v7

    mul-long/2addr v14, v1

    add-long/2addr v12, v14

    int-to-long v1, v7

    add-long/2addr v12, v1

    const-wide/16 v1, 0x1

    sub-long/2addr v12, v1

    cmp-long v1, v12, v10

    if-ltz v1, :cond_4

    div-long/2addr v12, v5

    iget-object v0, v0, Lsun/awt/image/BytePackedRaster;->data:[B

    array-length v0, v0

    int-to-long v0, v0

    cmp-long v0, v12, v0

    if-gez v0, :cond_4

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-le v4, v0, :cond_3

    mul-int v2, v9, v7

    sub-int/2addr v2, v0

    int-to-long v0, v2

    div-long/2addr v0, v5

    int-to-long v2, v8

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/awt/image/RasterFormatException;

    const-string v1, "data for adjacent scanlines overlaps"

    invoke-direct {v0, v1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    :goto_0
    return-void

    :cond_4
    new-instance v0, Ljava/awt/image/RasterFormatException;

    const-string v1, "raster dimensions overflow array bounds"

    invoke-direct {v0, v1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    new-instance v1, Ljava/awt/image/RasterFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect scanline stride: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lsun/awt/image/BytePackedRaster;->scanlineStride:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    new-instance v0, Ljava/awt/image/RasterFormatException;

    const-string v1, "Invalid scanline stride"

    invoke-direct {v0, v1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    new-instance v1, Ljava/awt/image/RasterFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Incorrect origin/translate: ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Ljava/awt/image/Raster;->minX:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Ljava/awt/image/Raster;->minY:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ") / ("

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    new-instance v0, Ljava/awt/image/RasterFormatException;

    invoke-direct {v0, v3}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v0, Ljava/awt/image/RasterFormatException;

    invoke-direct {v0, v3}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    new-instance v0, Ljava/awt/image/RasterFormatException;

    const-string v1, "Data offsets must be >= 0"

    invoke-direct {v0, v1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createChild(IIIIII[I)Ljava/awt/image/Raster;
    .locals 0

    invoke-virtual/range {p0 .. p7}, Lsun/awt/image/BytePackedRaster;->createWritableChild(IIIIII[I)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public createCompatibleWritableRaster()Ljava/awt/image/WritableRaster;
    .locals 2

    .line 4
    iget v0, p0, Ljava/awt/image/Raster;->width:I

    iget v1, p0, Ljava/awt/image/Raster;->height:I

    invoke-virtual {p0, v0, v1}, Lsun/awt/image/BytePackedRaster;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    .line 1
    iget-object p0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    invoke-virtual {p0, p1, p2}, Ljava/awt/image/SampleModel;->createCompatibleSampleModel(II)Ljava/awt/image/SampleModel;

    move-result-object p0

    .line 2
    new-instance p1, Lsun/awt/image/BytePackedRaster;

    new-instance p2, Ljava/awt/Point;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0}, Ljava/awt/Point;-><init>(II)V

    invoke-direct {p1, p0, p2}, Lsun/awt/image/BytePackedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/Point;)V

    return-object p1

    .line 3
    :cond_0
    new-instance p0, Ljava/awt/image/RasterFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "negative "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gtz p1, :cond_1

    const-string p1, "width"

    goto :goto_0

    :cond_1
    const-string p1, "height"

    :goto_0
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createWritableChild(IIIIII[I)Ljava/awt/image/WritableRaster;
    .locals 4

    iget v0, p0, Ljava/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_4

    iget v1, p0, Ljava/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_3

    add-int v2, p1, p3

    if-lt v2, p1, :cond_2

    iget v3, p0, Ljava/awt/image/Raster;->width:I

    add-int/2addr v0, v3

    if-gt v2, v0, :cond_2

    add-int v0, p2, p4

    if-lt v0, p2, :cond_1

    iget v2, p0, Ljava/awt/image/Raster;->height:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    if-eqz p7, :cond_0

    iget-object v0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    invoke-virtual {v0, p7}, Ljava/awt/image/SampleModel;->createSubsetSampleModel([I)Ljava/awt/image/SampleModel;

    move-result-object p7

    goto :goto_0

    :cond_0
    iget-object p7, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    :goto_0
    sub-int p1, p5, p1

    sub-int p2, p6, p2

    new-instance v0, Lsun/awt/image/BytePackedRaster;

    iget-object v1, p0, Ljava/awt/image/Raster;->dataBuffer:Ljava/awt/image/DataBuffer;

    new-instance v2, Ljava/awt/Rectangle;

    invoke-direct {v2, p5, p6, p3, p4}, Ljava/awt/Rectangle;-><init>(IIII)V

    new-instance p5, Ljava/awt/Point;

    iget p3, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    add-int/2addr p3, p1

    iget p1, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    add-int/2addr p1, p2

    invoke-direct {p5, p3, p1}, Ljava/awt/Point;-><init>(II)V

    move-object p1, v0

    move-object p2, p7

    move-object p3, v1

    move-object p4, v2

    move-object p6, p0

    invoke-direct/range {p1 .. p6}, Lsun/awt/image/BytePackedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Lsun/awt/image/BytePackedRaster;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/awt/image/RasterFormatException;

    const-string p1, "(y + height) is outside of Raster"

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/awt/image/RasterFormatException;

    const-string p1, "(x + width) is outside of Raster"

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/awt/image/RasterFormatException;

    const-string p1, "y lies outside the raster"

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/awt/image/RasterFormatException;

    const-string p1, "x lies outside the raster"

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getByteData(IIIII[B)[B
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    .line 1
    invoke-virtual/range {v0 .. v5}, Lsun/awt/image/BytePackedRaster;->getByteData(IIII[B)[B

    move-result-object p0

    return-object p0
.end method

.method public getByteData(IIII[B)[B
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 2
    iget v5, v0, Ljava/awt/image/Raster;->minX:I

    if-lt v1, v5, :cond_9

    iget v6, v0, Ljava/awt/image/Raster;->minY:I

    if-lt v2, v6, :cond_9

    add-int v7, v1, v3

    iget v8, v0, Lsun/awt/image/BytePackedRaster;->maxX:I

    if-gt v7, v8, :cond_9

    add-int v7, v2, v4

    iget v8, v0, Lsun/awt/image/BytePackedRaster;->maxY:I

    if-gt v7, v8, :cond_9

    if-nez p5, :cond_0

    mul-int v7, v3, v4

    .line 3
    new-array v7, v7, [B

    goto :goto_0

    :cond_0
    move-object/from16 v7, p5

    .line 4
    :goto_0
    iget v8, v0, Lsun/awt/image/BytePackedRaster;->pixelBitStride:I

    .line 5
    iget v9, v0, Lsun/awt/image/BytePackedRaster;->dataBitOffset:I

    sub-int/2addr v1, v5

    mul-int/2addr v1, v8

    add-int/2addr v9, v1

    sub-int v1, v2, v6

    .line 6
    iget v2, v0, Lsun/awt/image/BytePackedRaster;->scanlineStride:I

    mul-int/2addr v1, v2

    .line 7
    iget-object v2, v0, Lsun/awt/image/BytePackedRaster;->data:[B

    const/4 v6, 0x0

    const/4 v10, 0x0

    :goto_1
    if-ge v6, v4, :cond_8

    move v12, v9

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v3, :cond_1

    and-int/lit8 v13, v12, 0x7

    if-eqz v13, :cond_1

    .line 8
    iget v14, v0, Lsun/awt/image/BytePackedRaster;->shiftOffset:I

    sub-int/2addr v14, v13

    add-int/lit8 v13, v10, 0x1

    .line 9
    iget v15, v0, Lsun/awt/image/BytePackedRaster;->bitMask:I

    shr-int/lit8 v16, v12, 0x3

    add-int v16, v1, v16

    aget-byte v16, v2, v16

    shr-int v14, v16, v14

    and-int/2addr v14, v15

    int-to-byte v14, v14

    aput-byte v14, v7, v10

    add-int/2addr v12, v8

    add-int/lit8 v11, v11, 0x1

    move v10, v13

    goto :goto_2

    :cond_1
    shr-int/lit8 v13, v12, 0x3

    add-int/2addr v13, v1

    const/4 v14, 0x1

    if-eq v8, v14, :cond_4

    const/4 v14, 0x2

    if-eq v8, v14, :cond_3

    const/4 v14, 0x4

    if-eq v8, v14, :cond_2

    goto/16 :goto_6

    :cond_2
    :goto_3
    add-int/lit8 v14, v3, -0x7

    if-ge v11, v14, :cond_5

    add-int/lit8 v14, v13, 0x1

    .line 10
    aget-byte v13, v2, v13

    add-int/lit8 v15, v10, 0x1

    shr-int/lit8 v16, v13, 0x4

    and-int/lit8 v5, v16, 0xf

    int-to-byte v5, v5

    .line 11
    aput-byte v5, v7, v10

    add-int/lit8 v5, v15, 0x1

    and-int/lit8 v10, v13, 0xf

    int-to-byte v10, v10

    .line 12
    aput-byte v10, v7, v15

    add-int/lit8 v10, v14, 0x1

    .line 13
    aget-byte v13, v2, v14

    add-int/lit8 v14, v5, 0x1

    shr-int/lit8 v15, v13, 0x4

    and-int/lit8 v15, v15, 0xf

    int-to-byte v15, v15

    .line 14
    aput-byte v15, v7, v5

    add-int/lit8 v5, v14, 0x1

    and-int/lit8 v13, v13, 0xf

    int-to-byte v13, v13

    .line 15
    aput-byte v13, v7, v14

    add-int/lit8 v13, v10, 0x1

    .line 16
    aget-byte v10, v2, v10

    add-int/lit8 v14, v5, 0x1

    shr-int/lit8 v15, v10, 0x4

    and-int/lit8 v15, v15, 0xf

    int-to-byte v15, v15

    .line 17
    aput-byte v15, v7, v5

    add-int/lit8 v5, v14, 0x1

    and-int/lit8 v10, v10, 0xf

    int-to-byte v10, v10

    .line 18
    aput-byte v10, v7, v14

    add-int/lit8 v10, v13, 0x1

    .line 19
    aget-byte v13, v2, v13

    add-int/lit8 v14, v5, 0x1

    shr-int/lit8 v15, v13, 0x4

    and-int/lit8 v15, v15, 0xf

    int-to-byte v15, v15

    .line 20
    aput-byte v15, v7, v5

    add-int/lit8 v5, v14, 0x1

    and-int/lit8 v13, v13, 0xf

    int-to-byte v13, v13

    .line 21
    aput-byte v13, v7, v14

    add-int/lit8 v12, v12, 0x20

    add-int/lit8 v11, v11, 0x8

    move v13, v10

    move v10, v5

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v5, v3, -0x7

    if-ge v11, v5, :cond_5

    add-int/lit8 v5, v13, 0x1

    .line 22
    aget-byte v13, v2, v13

    add-int/lit8 v14, v10, 0x1

    shr-int/lit8 v15, v13, 0x6

    and-int/lit8 v15, v15, 0x3

    int-to-byte v15, v15

    .line 23
    aput-byte v15, v7, v10

    add-int/lit8 v10, v14, 0x1

    shr-int/lit8 v15, v13, 0x4

    and-int/lit8 v15, v15, 0x3

    int-to-byte v15, v15

    .line 24
    aput-byte v15, v7, v14

    add-int/lit8 v14, v10, 0x1

    shr-int/lit8 v15, v13, 0x2

    and-int/lit8 v15, v15, 0x3

    int-to-byte v15, v15

    .line 25
    aput-byte v15, v7, v10

    add-int/lit8 v10, v14, 0x1

    and-int/lit8 v13, v13, 0x3

    int-to-byte v13, v13

    .line 26
    aput-byte v13, v7, v14

    add-int/lit8 v13, v5, 0x1

    .line 27
    aget-byte v5, v2, v5

    add-int/lit8 v14, v10, 0x1

    shr-int/lit8 v15, v5, 0x6

    and-int/lit8 v15, v15, 0x3

    int-to-byte v15, v15

    .line 28
    aput-byte v15, v7, v10

    add-int/lit8 v10, v14, 0x1

    shr-int/lit8 v15, v5, 0x4

    and-int/lit8 v15, v15, 0x3

    int-to-byte v15, v15

    .line 29
    aput-byte v15, v7, v14

    add-int/lit8 v14, v10, 0x1

    shr-int/lit8 v15, v5, 0x2

    and-int/lit8 v15, v15, 0x3

    int-to-byte v15, v15

    .line 30
    aput-byte v15, v7, v10

    add-int/lit8 v10, v14, 0x1

    and-int/lit8 v5, v5, 0x3

    int-to-byte v5, v5

    .line 31
    aput-byte v5, v7, v14

    add-int/lit8 v12, v12, 0x10

    add-int/lit8 v11, v11, 0x8

    goto :goto_4

    :cond_4
    :goto_5
    add-int/lit8 v5, v3, -0x7

    if-lt v11, v5, :cond_7

    :cond_5
    :goto_6
    if-ge v11, v3, :cond_6

    .line 32
    iget v5, v0, Lsun/awt/image/BytePackedRaster;->shiftOffset:I

    and-int/lit8 v13, v12, 0x7

    sub-int/2addr v5, v13

    add-int/lit8 v13, v10, 0x1

    .line 33
    iget v14, v0, Lsun/awt/image/BytePackedRaster;->bitMask:I

    shr-int/lit8 v15, v12, 0x3

    add-int/2addr v15, v1

    aget-byte v15, v2, v15

    shr-int v5, v15, v5

    and-int/2addr v5, v14

    int-to-byte v5, v5

    aput-byte v5, v7, v10

    add-int/2addr v12, v8

    add-int/lit8 v11, v11, 0x1

    move v10, v13

    goto :goto_6

    .line 34
    :cond_6
    iget v5, v0, Lsun/awt/image/BytePackedRaster;->scanlineStride:I

    add-int/2addr v1, v5

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v5, v13, 0x1

    .line 35
    aget-byte v13, v2, v13

    add-int/lit8 v15, v10, 0x1

    shr-int/lit8 v16, v13, 0x7

    and-int/lit8 v0, v16, 0x1

    int-to-byte v0, v0

    .line 36
    aput-byte v0, v7, v10

    add-int/lit8 v0, v15, 0x1

    shr-int/lit8 v10, v13, 0x6

    and-int/2addr v10, v14

    int-to-byte v10, v10

    .line 37
    aput-byte v10, v7, v15

    add-int/lit8 v10, v0, 0x1

    shr-int/lit8 v15, v13, 0x5

    and-int/2addr v15, v14

    int-to-byte v15, v15

    .line 38
    aput-byte v15, v7, v0

    add-int/lit8 v0, v10, 0x1

    shr-int/lit8 v15, v13, 0x4

    and-int/2addr v15, v14

    int-to-byte v15, v15

    .line 39
    aput-byte v15, v7, v10

    add-int/lit8 v10, v0, 0x1

    shr-int/lit8 v15, v13, 0x3

    and-int/2addr v15, v14

    int-to-byte v15, v15

    .line 40
    aput-byte v15, v7, v0

    add-int/lit8 v0, v10, 0x1

    shr-int/lit8 v15, v13, 0x2

    and-int/2addr v15, v14

    int-to-byte v15, v15

    .line 41
    aput-byte v15, v7, v10

    add-int/lit8 v10, v0, 0x1

    shr-int/lit8 v15, v13, 0x1

    and-int/2addr v15, v14

    int-to-byte v15, v15

    .line 42
    aput-byte v15, v7, v0

    add-int/lit8 v0, v10, 0x1

    and-int/2addr v13, v14

    int-to-byte v13, v13

    .line 43
    aput-byte v13, v7, v10

    add-int/lit8 v12, v12, 0x8

    add-int/lit8 v11, v11, 0x8

    move v10, v0

    move v13, v5

    move-object/from16 v0, p0

    goto :goto_5

    :cond_8
    return-object v7

    .line 44
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Coordinate out of bounds!"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getDataBitOffset()I
    .locals 0

    iget p0, p0, Lsun/awt/image/BytePackedRaster;->dataBitOffset:I

    return p0
.end method

.method public getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 9
    move-object v5, p5

    check-cast v5, [B

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/awt/image/BytePackedRaster;->getByteData(IIII[B)[B

    move-result-object p0

    return-object p0
.end method

.method public getDataElements(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Ljava/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_1

    iget v1, p0, Ljava/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_1

    iget v2, p0, Lsun/awt/image/BytePackedRaster;->maxX:I

    if-ge p1, v2, :cond_1

    iget v2, p0, Lsun/awt/image/BytePackedRaster;->maxY:I

    if-ge p2, v2, :cond_1

    if-nez p3, :cond_0

    .line 2
    iget p3, p0, Ljava/awt/image/Raster;->numDataElements:I

    new-array p3, p3, [B

    goto :goto_0

    .line 3
    :cond_0
    check-cast p3, [B

    .line 4
    :goto_0
    iget v2, p0, Lsun/awt/image/BytePackedRaster;->dataBitOffset:I

    sub-int/2addr p1, v0

    iget v0, p0, Lsun/awt/image/BytePackedRaster;->pixelBitStride:I

    mul-int/2addr p1, v0

    add-int/2addr v2, p1

    .line 5
    iget-object p1, p0, Lsun/awt/image/BytePackedRaster;->data:[B

    sub-int/2addr p2, v1

    iget v0, p0, Lsun/awt/image/BytePackedRaster;->scanlineStride:I

    mul-int/2addr p2, v0

    shr-int/lit8 v0, v2, 0x3

    add-int/2addr p2, v0

    aget-byte p1, p1, p2

    and-int/lit16 p1, p1, 0xff

    .line 6
    iget p2, p0, Lsun/awt/image/BytePackedRaster;->shiftOffset:I

    and-int/lit8 v0, v2, 0x7

    sub-int/2addr p2, v0

    shr-int/2addr p1, p2

    .line 7
    iget p0, p0, Lsun/awt/image/BytePackedRaster;->bitMask:I

    and-int/2addr p0, p1

    int-to-byte p0, p0

    const/4 p1, 0x0

    aput-byte p0, p3, p1

    return-object p3

    .line 8
    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDataStorage()[B
    .locals 0

    iget-object p0, p0, Lsun/awt/image/BytePackedRaster;->data:[B

    return-object p0
.end method

.method public getPixelBitStride()I
    .locals 0

    iget p0, p0, Lsun/awt/image/BytePackedRaster;->pixelBitStride:I

    return p0
.end method

.method public getPixelData(IIIILjava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    iget v5, v0, Ljava/awt/image/Raster;->minX:I

    if-lt v1, v5, :cond_3

    iget v6, v0, Ljava/awt/image/Raster;->minY:I

    if-lt v2, v6, :cond_3

    add-int v7, v1, v3

    iget v8, v0, Lsun/awt/image/BytePackedRaster;->maxX:I

    if-gt v7, v8, :cond_3

    add-int v7, v2, v4

    iget v8, v0, Lsun/awt/image/BytePackedRaster;->maxY:I

    if-gt v7, v8, :cond_3

    if-nez p5, :cond_0

    iget v7, v0, Ljava/awt/image/Raster;->numDataElements:I

    mul-int/2addr v7, v3

    mul-int/2addr v7, v4

    new-array v7, v7, [B

    goto :goto_0

    :cond_0
    move-object/from16 v7, p5

    check-cast v7, [B

    :goto_0
    iget v8, v0, Lsun/awt/image/BytePackedRaster;->pixelBitStride:I

    iget v9, v0, Lsun/awt/image/BytePackedRaster;->dataBitOffset:I

    sub-int/2addr v1, v5

    mul-int/2addr v1, v8

    add-int/2addr v9, v1

    sub-int v1, v2, v6

    iget v2, v0, Lsun/awt/image/BytePackedRaster;->scanlineStride:I

    mul-int/2addr v1, v2

    iget-object v2, v0, Lsun/awt/image/BytePackedRaster;->data:[B

    const/4 v5, 0x0

    move v6, v5

    move v10, v6

    :goto_1
    if-ge v6, v4, :cond_2

    move v11, v5

    move v12, v9

    :goto_2
    if-ge v11, v3, :cond_1

    iget v13, v0, Lsun/awt/image/BytePackedRaster;->shiftOffset:I

    and-int/lit8 v14, v12, 0x7

    sub-int/2addr v13, v14

    add-int/lit8 v14, v10, 0x1

    iget v15, v0, Lsun/awt/image/BytePackedRaster;->bitMask:I

    shr-int/lit8 v16, v12, 0x3

    add-int v16, v1, v16

    aget-byte v16, v2, v16

    shr-int v13, v16, v13

    and-int/2addr v13, v15

    int-to-byte v13, v13

    aput-byte v13, v7, v10

    add-int/2addr v12, v8

    add-int/lit8 v11, v11, 0x1

    move v10, v14

    goto :goto_2

    :cond_1
    iget v11, v0, Lsun/awt/image/BytePackedRaster;->scanlineStride:I

    add-int/2addr v1, v11

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    return-object v7

    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Coordinate out of bounds!"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getPixels(IIII[I)[I
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    iget v5, v0, Ljava/awt/image/Raster;->minX:I

    if-lt v1, v5, :cond_9

    iget v6, v0, Ljava/awt/image/Raster;->minY:I

    if-lt v2, v6, :cond_9

    add-int v7, v1, v3

    iget v8, v0, Lsun/awt/image/BytePackedRaster;->maxX:I

    if-gt v7, v8, :cond_9

    add-int v7, v2, v4

    iget v8, v0, Lsun/awt/image/BytePackedRaster;->maxY:I

    if-gt v7, v8, :cond_9

    if-nez p5, :cond_0

    mul-int v7, v3, v4

    new-array v7, v7, [I

    goto :goto_0

    :cond_0
    move-object/from16 v7, p5

    :goto_0
    iget v8, v0, Lsun/awt/image/BytePackedRaster;->pixelBitStride:I

    iget v9, v0, Lsun/awt/image/BytePackedRaster;->dataBitOffset:I

    sub-int/2addr v1, v5

    mul-int/2addr v1, v8

    add-int/2addr v9, v1

    sub-int v1, v2, v6

    iget v2, v0, Lsun/awt/image/BytePackedRaster;->scanlineStride:I

    mul-int/2addr v1, v2

    iget-object v2, v0, Lsun/awt/image/BytePackedRaster;->data:[B

    const/4 v5, 0x0

    move v6, v5

    move v10, v6

    :goto_1
    if-ge v6, v4, :cond_8

    move v11, v5

    move v12, v9

    :goto_2
    if-ge v11, v3, :cond_1

    and-int/lit8 v13, v12, 0x7

    if-eqz v13, :cond_1

    iget v14, v0, Lsun/awt/image/BytePackedRaster;->shiftOffset:I

    sub-int/2addr v14, v13

    add-int/lit8 v13, v10, 0x1

    iget v15, v0, Lsun/awt/image/BytePackedRaster;->bitMask:I

    shr-int/lit8 v16, v12, 0x3

    add-int v16, v1, v16

    aget-byte v16, v2, v16

    shr-int v14, v16, v14

    and-int/2addr v14, v15

    aput v14, v7, v10

    add-int/2addr v12, v8

    add-int/lit8 v11, v11, 0x1

    move v10, v13

    goto :goto_2

    :cond_1
    shr-int/lit8 v13, v12, 0x3

    add-int/2addr v13, v1

    const/4 v14, 0x1

    if-eq v8, v14, :cond_4

    const/4 v14, 0x2

    if-eq v8, v14, :cond_3

    const/4 v14, 0x4

    if-eq v8, v14, :cond_2

    goto/16 :goto_6

    :cond_2
    :goto_3
    add-int/lit8 v14, v3, -0x7

    if-ge v11, v14, :cond_5

    add-int/lit8 v14, v13, 0x1

    aget-byte v13, v2, v13

    add-int/lit8 v15, v10, 0x1

    shr-int/lit8 v16, v13, 0x4

    and-int/lit8 v16, v16, 0xf

    aput v16, v7, v10

    add-int/lit8 v10, v15, 0x1

    and-int/lit8 v13, v13, 0xf

    aput v13, v7, v15

    add-int/lit8 v13, v14, 0x1

    aget-byte v14, v2, v14

    add-int/lit8 v15, v10, 0x1

    shr-int/lit8 v16, v14, 0x4

    and-int/lit8 v16, v16, 0xf

    aput v16, v7, v10

    add-int/lit8 v10, v15, 0x1

    and-int/lit8 v14, v14, 0xf

    aput v14, v7, v15

    add-int/lit8 v14, v13, 0x1

    aget-byte v13, v2, v13

    add-int/lit8 v15, v10, 0x1

    shr-int/lit8 v16, v13, 0x4

    and-int/lit8 v16, v16, 0xf

    aput v16, v7, v10

    add-int/lit8 v10, v15, 0x1

    and-int/lit8 v13, v13, 0xf

    aput v13, v7, v15

    add-int/lit8 v13, v14, 0x1

    aget-byte v14, v2, v14

    add-int/lit8 v15, v10, 0x1

    shr-int/lit8 v16, v14, 0x4

    and-int/lit8 v16, v16, 0xf

    aput v16, v7, v10

    add-int/lit8 v10, v15, 0x1

    and-int/lit8 v14, v14, 0xf

    aput v14, v7, v15

    add-int/lit8 v12, v12, 0x20

    add-int/lit8 v11, v11, 0x8

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v14, v3, -0x7

    if-ge v11, v14, :cond_5

    add-int/lit8 v14, v13, 0x1

    aget-byte v13, v2, v13

    add-int/lit8 v15, v10, 0x1

    shr-int/lit8 v16, v13, 0x6

    and-int/lit8 v16, v16, 0x3

    aput v16, v7, v10

    add-int/lit8 v10, v15, 0x1

    shr-int/lit8 v16, v13, 0x4

    and-int/lit8 v16, v16, 0x3

    aput v16, v7, v15

    add-int/lit8 v15, v10, 0x1

    shr-int/lit8 v16, v13, 0x2

    and-int/lit8 v16, v16, 0x3

    aput v16, v7, v10

    add-int/lit8 v10, v15, 0x1

    and-int/lit8 v13, v13, 0x3

    aput v13, v7, v15

    add-int/lit8 v13, v14, 0x1

    aget-byte v14, v2, v14

    add-int/lit8 v15, v10, 0x1

    shr-int/lit8 v16, v14, 0x6

    and-int/lit8 v16, v16, 0x3

    aput v16, v7, v10

    add-int/lit8 v10, v15, 0x1

    shr-int/lit8 v16, v14, 0x4

    and-int/lit8 v16, v16, 0x3

    aput v16, v7, v15

    add-int/lit8 v15, v10, 0x1

    shr-int/lit8 v16, v14, 0x2

    and-int/lit8 v16, v16, 0x3

    aput v16, v7, v10

    add-int/lit8 v10, v15, 0x1

    and-int/lit8 v14, v14, 0x3

    aput v14, v7, v15

    add-int/lit8 v12, v12, 0x10

    add-int/lit8 v11, v11, 0x8

    goto :goto_4

    :cond_4
    :goto_5
    add-int/lit8 v15, v3, -0x7

    if-lt v11, v15, :cond_7

    :cond_5
    :goto_6
    if-ge v11, v3, :cond_6

    iget v13, v0, Lsun/awt/image/BytePackedRaster;->shiftOffset:I

    and-int/lit8 v14, v12, 0x7

    sub-int/2addr v13, v14

    add-int/lit8 v14, v10, 0x1

    iget v15, v0, Lsun/awt/image/BytePackedRaster;->bitMask:I

    shr-int/lit8 v16, v12, 0x3

    add-int v16, v1, v16

    aget-byte v16, v2, v16

    shr-int v13, v16, v13

    and-int/2addr v13, v15

    aput v13, v7, v10

    add-int/2addr v12, v8

    add-int/lit8 v11, v11, 0x1

    move v10, v14

    goto :goto_6

    :cond_6
    iget v11, v0, Lsun/awt/image/BytePackedRaster;->scanlineStride:I

    add-int/2addr v1, v11

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_7
    add-int/lit8 v15, v13, 0x1

    aget-byte v13, v2, v13

    add-int/lit8 v16, v10, 0x1

    shr-int/lit8 v17, v13, 0x7

    and-int/lit8 v17, v17, 0x1

    aput v17, v7, v10

    add-int/lit8 v10, v16, 0x1

    shr-int/lit8 v17, v13, 0x6

    and-int/lit8 v17, v17, 0x1

    aput v17, v7, v16

    add-int/lit8 v16, v10, 0x1

    shr-int/lit8 v17, v13, 0x5

    and-int/lit8 v17, v17, 0x1

    aput v17, v7, v10

    add-int/lit8 v10, v16, 0x1

    shr-int/lit8 v17, v13, 0x4

    and-int/lit8 v17, v17, 0x1

    aput v17, v7, v16

    add-int/lit8 v16, v10, 0x1

    shr-int/lit8 v17, v13, 0x3

    and-int/lit8 v17, v17, 0x1

    aput v17, v7, v10

    add-int/lit8 v10, v16, 0x1

    shr-int/lit8 v17, v13, 0x2

    and-int/lit8 v17, v17, 0x1

    aput v17, v7, v16

    add-int/lit8 v16, v10, 0x1

    shr-int/lit8 v17, v13, 0x1

    and-int/lit8 v17, v17, 0x1

    aput v17, v7, v10

    add-int/lit8 v10, v16, 0x1

    and-int/2addr v13, v14

    aput v13, v7, v16

    add-int/lit8 v12, v12, 0x8

    add-int/lit8 v11, v11, 0x8

    move v13, v15

    goto :goto_5

    :cond_8
    return-object v7

    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Coordinate out of bounds!"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getScanlineStride()I
    .locals 0

    iget p0, p0, Lsun/awt/image/BytePackedRaster;->scanlineStride:I

    return p0
.end method

.method public putByteData(IIIII[B)V
    .locals 6

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p6

    .line 1
    invoke-virtual/range {v0 .. v5}, Lsun/awt/image/BytePackedRaster;->putByteData(IIII[B)V

    return-void
.end method

.method public putByteData(IIII[B)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    .line 2
    iget v5, v0, Ljava/awt/image/Raster;->minX:I

    if-lt v1, v5, :cond_9

    iget v6, v0, Ljava/awt/image/Raster;->minY:I

    if-lt v2, v6, :cond_9

    add-int v7, v1, v3

    iget v8, v0, Lsun/awt/image/BytePackedRaster;->maxX:I

    if-gt v7, v8, :cond_9

    add-int v7, v2, v4

    iget v8, v0, Lsun/awt/image/BytePackedRaster;->maxY:I

    if-gt v7, v8, :cond_9

    if-eqz v3, :cond_8

    if-eqz v4, :cond_8

    .line 3
    iget v7, v0, Lsun/awt/image/BytePackedRaster;->pixelBitStride:I

    .line 4
    iget v8, v0, Lsun/awt/image/BytePackedRaster;->dataBitOffset:I

    sub-int/2addr v1, v5

    mul-int/2addr v1, v7

    add-int/2addr v8, v1

    sub-int v1, v2, v6

    .line 5
    iget v2, v0, Lsun/awt/image/BytePackedRaster;->scanlineStride:I

    mul-int/2addr v1, v2

    .line 6
    iget-object v2, v0, Lsun/awt/image/BytePackedRaster;->data:[B

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v6, v4, :cond_7

    move v11, v8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v3, :cond_0

    and-int/lit8 v12, v11, 0x7

    if-eqz v12, :cond_0

    .line 7
    iget v13, v0, Lsun/awt/image/BytePackedRaster;->shiftOffset:I

    sub-int/2addr v13, v12

    shr-int/lit8 v12, v11, 0x3

    add-int/2addr v12, v1

    .line 8
    aget-byte v14, v2, v12

    .line 9
    iget v15, v0, Lsun/awt/image/BytePackedRaster;->bitMask:I

    shl-int v5, v15, v13

    not-int v5, v5

    and-int/2addr v5, v14

    add-int/lit8 v14, v9, 0x1

    .line 10
    aget-byte v9, p5, v9

    and-int/2addr v9, v15

    shl-int/2addr v9, v13

    or-int/2addr v5, v9

    int-to-byte v5, v5

    .line 11
    aput-byte v5, v2, v12

    add-int/2addr v11, v7

    add-int/lit8 v10, v10, 0x1

    move v9, v14

    goto :goto_1

    :cond_0
    shr-int/lit8 v5, v11, 0x3

    add-int/2addr v5, v1

    const/4 v12, 0x2

    const/4 v13, 0x4

    const/4 v14, 0x1

    if-eq v7, v14, :cond_3

    if-eq v7, v12, :cond_2

    if-eq v7, v13, :cond_1

    goto/16 :goto_5

    :cond_1
    :goto_2
    add-int/lit8 v12, v3, -0x7

    if-ge v10, v12, :cond_4

    add-int/lit8 v12, v9, 0x1

    .line 12
    aget-byte v9, p5, v9

    and-int/lit8 v9, v9, 0xf

    shl-int/2addr v9, v13

    add-int/lit8 v14, v12, 0x1

    .line 13
    aget-byte v12, p5, v12

    and-int/lit8 v12, v12, 0xf

    or-int/2addr v9, v12

    add-int/lit8 v12, v5, 0x1

    int-to-byte v9, v9

    .line 14
    aput-byte v9, v2, v5

    add-int/lit8 v5, v14, 0x1

    .line 15
    aget-byte v9, p5, v14

    and-int/lit8 v9, v9, 0xf

    shl-int/2addr v9, v13

    add-int/lit8 v14, v5, 0x1

    .line 16
    aget-byte v5, p5, v5

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v5, v9

    add-int/lit8 v9, v12, 0x1

    int-to-byte v5, v5

    .line 17
    aput-byte v5, v2, v12

    add-int/lit8 v5, v14, 0x1

    .line 18
    aget-byte v12, p5, v14

    and-int/lit8 v12, v12, 0xf

    shl-int/2addr v12, v13

    add-int/lit8 v14, v5, 0x1

    .line 19
    aget-byte v5, p5, v5

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v5, v12

    add-int/lit8 v12, v9, 0x1

    int-to-byte v5, v5

    .line 20
    aput-byte v5, v2, v9

    add-int/lit8 v5, v14, 0x1

    .line 21
    aget-byte v9, p5, v14

    and-int/lit8 v9, v9, 0xf

    shl-int/2addr v9, v13

    add-int/lit8 v14, v5, 0x1

    .line 22
    aget-byte v5, p5, v5

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v5, v9

    add-int/lit8 v9, v12, 0x1

    int-to-byte v5, v5

    .line 23
    aput-byte v5, v2, v12

    add-int/lit8 v11, v11, 0x20

    add-int/lit8 v10, v10, 0x8

    move v5, v9

    move v9, v14

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v14, v3, -0x7

    if-ge v10, v14, :cond_4

    add-int/lit8 v14, v9, 0x1

    .line 24
    aget-byte v9, p5, v9

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x6

    add-int/lit8 v15, v14, 0x1

    .line 25
    aget-byte v14, p5, v14

    and-int/lit8 v14, v14, 0x3

    shl-int/2addr v14, v13

    or-int/2addr v9, v14

    add-int/lit8 v14, v15, 0x1

    .line 26
    aget-byte v15, p5, v15

    and-int/lit8 v15, v15, 0x3

    shl-int/2addr v15, v12

    or-int/2addr v9, v15

    add-int/lit8 v15, v14, 0x1

    .line 27
    aget-byte v14, p5, v14

    and-int/lit8 v14, v14, 0x3

    or-int/2addr v9, v14

    add-int/lit8 v14, v5, 0x1

    int-to-byte v9, v9

    .line 28
    aput-byte v9, v2, v5

    add-int/lit8 v5, v15, 0x1

    .line 29
    aget-byte v9, p5, v15

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x6

    add-int/lit8 v15, v5, 0x1

    .line 30
    aget-byte v5, p5, v5

    and-int/lit8 v5, v5, 0x3

    shl-int/2addr v5, v13

    or-int/2addr v5, v9

    add-int/lit8 v9, v15, 0x1

    .line 31
    aget-byte v15, p5, v15

    and-int/lit8 v15, v15, 0x3

    shl-int/2addr v15, v12

    or-int/2addr v5, v15

    add-int/lit8 v15, v9, 0x1

    .line 32
    aget-byte v9, p5, v9

    and-int/lit8 v9, v9, 0x3

    or-int/2addr v5, v9

    add-int/lit8 v9, v14, 0x1

    int-to-byte v5, v5

    .line 33
    aput-byte v5, v2, v14

    add-int/lit8 v11, v11, 0x10

    add-int/lit8 v10, v10, 0x8

    move v5, v9

    move v9, v15

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v15, v3, -0x7

    if-lt v10, v15, :cond_6

    :cond_4
    :goto_5
    if-ge v10, v3, :cond_5

    .line 34
    iget v5, v0, Lsun/awt/image/BytePackedRaster;->shiftOffset:I

    and-int/lit8 v12, v11, 0x7

    sub-int/2addr v5, v12

    shr-int/lit8 v12, v11, 0x3

    add-int/2addr v12, v1

    .line 35
    aget-byte v13, v2, v12

    .line 36
    iget v14, v0, Lsun/awt/image/BytePackedRaster;->bitMask:I

    shl-int v15, v14, v5

    not-int v15, v15

    and-int/2addr v13, v15

    add-int/lit8 v15, v9, 0x1

    .line 37
    aget-byte v9, p5, v9

    and-int/2addr v9, v14

    shl-int v5, v9, v5

    or-int/2addr v5, v13

    int-to-byte v5, v5

    .line 38
    aput-byte v5, v2, v12

    add-int/2addr v11, v7

    add-int/lit8 v10, v10, 0x1

    move v9, v15

    goto :goto_5

    .line 39
    :cond_5
    iget v5, v0, Lsun/awt/image/BytePackedRaster;->scanlineStride:I

    add-int/2addr v1, v5

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v15, v9, 0x1

    .line 40
    aget-byte v9, p5, v9

    and-int/2addr v9, v14

    shl-int/lit8 v9, v9, 0x7

    add-int/lit8 v16, v15, 0x1

    .line 41
    aget-byte v15, p5, v15

    and-int/2addr v15, v14

    shl-int/lit8 v15, v15, 0x6

    or-int/2addr v9, v15

    add-int/lit8 v15, v16, 0x1

    .line 42
    aget-byte v16, p5, v16

    and-int/lit8 v16, v16, 0x1

    shl-int/lit8 v16, v16, 0x5

    or-int v9, v9, v16

    add-int/lit8 v16, v15, 0x1

    .line 43
    aget-byte v15, p5, v15

    and-int/2addr v15, v14

    shl-int/2addr v15, v13

    or-int/2addr v9, v15

    add-int/lit8 v15, v16, 0x1

    .line 44
    aget-byte v16, p5, v16

    and-int/lit8 v16, v16, 0x1

    shl-int/lit8 v16, v16, 0x3

    or-int v9, v9, v16

    add-int/lit8 v16, v15, 0x1

    .line 45
    aget-byte v15, p5, v15

    and-int/2addr v15, v14

    shl-int/2addr v15, v12

    or-int/2addr v9, v15

    add-int/lit8 v15, v16, 0x1

    .line 46
    aget-byte v16, p5, v16

    and-int/lit8 v16, v16, 0x1

    shl-int/lit8 v16, v16, 0x1

    or-int v9, v9, v16

    add-int/lit8 v16, v15, 0x1

    .line 47
    aget-byte v15, p5, v15

    and-int/2addr v15, v14

    or-int/2addr v9, v15

    add-int/lit8 v15, v5, 0x1

    int-to-byte v9, v9

    .line 48
    aput-byte v9, v2, v5

    add-int/lit8 v11, v11, 0x8

    add-int/lit8 v10, v10, 0x8

    move v5, v15

    move/from16 v9, v16

    goto :goto_4

    .line 49
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lsun/awt/image/SunWritableRaster;->markDirty()V

    :cond_8
    return-void

    .line 50
    :cond_9
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Coordinate out of bounds!"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDataElements(IIIILjava/lang/Object;)V
    .locals 6

    .line 49
    move-object v5, p5

    check-cast v5, [B

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lsun/awt/image/BytePackedRaster;->putByteData(IIII[B)V

    return-void
.end method

.method public setDataElements(IILjava/awt/image/Raster;)V
    .locals 10

    .line 12
    instance-of v0, p3, Lsun/awt/image/BytePackedRaster;

    if-eqz v0, :cond_1

    move-object v0, p3

    check-cast v0, Lsun/awt/image/BytePackedRaster;

    iget v0, v0, Lsun/awt/image/BytePackedRaster;->pixelBitStride:I

    iget v1, p0, Lsun/awt/image/BytePackedRaster;->pixelBitStride:I

    if-ne v0, v1, :cond_1

    .line 13
    invoke-virtual {p3}, Ljava/awt/image/Raster;->getMinX()I

    move-result v5

    .line 14
    invoke-virtual {p3}, Ljava/awt/image/Raster;->getMinY()I

    move-result v6

    add-int v3, v5, p1

    add-int v4, v6, p2

    .line 15
    invoke-virtual {p3}, Ljava/awt/image/Raster;->getWidth()I

    move-result v7

    .line 16
    invoke-virtual {p3}, Ljava/awt/image/Raster;->getHeight()I

    move-result v8

    .line 17
    iget p1, p0, Ljava/awt/image/Raster;->minX:I

    if-lt v3, p1, :cond_0

    iget p1, p0, Ljava/awt/image/Raster;->minY:I

    if-lt v4, p1, :cond_0

    add-int p1, v3, v7

    iget p2, p0, Lsun/awt/image/BytePackedRaster;->maxX:I

    if-gt p1, p2, :cond_0

    add-int p1, v4, v8

    iget p2, p0, Lsun/awt/image/BytePackedRaster;->maxY:I

    if-gt p1, p2, :cond_0

    .line 18
    move-object v9, p3

    check-cast v9, Lsun/awt/image/BytePackedRaster;

    move-object v2, p0

    invoke-direct/range {v2 .. v9}, Lsun/awt/image/BytePackedRaster;->setDataElements(IIIIIILsun/awt/image/BytePackedRaster;)V

    goto :goto_0

    .line 19
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_1
    invoke-super {p0, p1, p2, p3}, Ljava/awt/image/WritableRaster;->setDataElements(IILjava/awt/image/Raster;)V

    :goto_0
    return-void
.end method

.method public setDataElements(IILjava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, Ljava/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_0

    iget v1, p0, Ljava/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_0

    iget v2, p0, Lsun/awt/image/BytePackedRaster;->maxX:I

    if-ge p1, v2, :cond_0

    iget v2, p0, Lsun/awt/image/BytePackedRaster;->maxY:I

    if-ge p2, v2, :cond_0

    .line 2
    check-cast p3, [B

    .line 3
    iget v2, p0, Lsun/awt/image/BytePackedRaster;->dataBitOffset:I

    sub-int/2addr p1, v0

    iget v0, p0, Lsun/awt/image/BytePackedRaster;->pixelBitStride:I

    mul-int/2addr p1, v0

    add-int/2addr v2, p1

    sub-int/2addr p2, v1

    .line 4
    iget p1, p0, Lsun/awt/image/BytePackedRaster;->scanlineStride:I

    mul-int/2addr p2, p1

    shr-int/lit8 p1, v2, 0x3

    add-int/2addr p2, p1

    .line 5
    iget p1, p0, Lsun/awt/image/BytePackedRaster;->shiftOffset:I

    and-int/lit8 v0, v2, 0x7

    sub-int/2addr p1, v0

    .line 6
    iget-object v0, p0, Lsun/awt/image/BytePackedRaster;->data:[B

    aget-byte v1, v0, p2

    .line 7
    iget v2, p0, Lsun/awt/image/BytePackedRaster;->bitMask:I

    shl-int v3, v2, p1

    not-int v3, v3

    and-int/2addr v1, v3

    int-to-byte v1, v1

    const/4 v3, 0x0

    .line 8
    aget-byte p3, p3, v3

    and-int/2addr p3, v2

    shl-int p1, p3, p1

    or-int/2addr p1, v1

    int-to-byte p1, p1

    .line 9
    aput-byte p1, v0, p2

    .line 10
    invoke-virtual {p0}, Lsun/awt/image/SunWritableRaster;->markDirty()V

    return-void

    .line 11
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPixels(IIII[I)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    iget v5, v0, Ljava/awt/image/Raster;->minX:I

    if-lt v1, v5, :cond_8

    iget v6, v0, Ljava/awt/image/Raster;->minY:I

    if-lt v2, v6, :cond_8

    add-int v7, v1, v3

    iget v8, v0, Lsun/awt/image/BytePackedRaster;->maxX:I

    if-gt v7, v8, :cond_8

    add-int v7, v2, v4

    iget v8, v0, Lsun/awt/image/BytePackedRaster;->maxY:I

    if-gt v7, v8, :cond_8

    iget v7, v0, Lsun/awt/image/BytePackedRaster;->pixelBitStride:I

    iget v8, v0, Lsun/awt/image/BytePackedRaster;->dataBitOffset:I

    sub-int/2addr v1, v5

    mul-int/2addr v1, v7

    add-int/2addr v8, v1

    sub-int v1, v2, v6

    iget v2, v0, Lsun/awt/image/BytePackedRaster;->scanlineStride:I

    mul-int/2addr v1, v2

    iget-object v2, v0, Lsun/awt/image/BytePackedRaster;->data:[B

    const/4 v6, 0x0

    const/4 v9, 0x0

    :goto_0
    if-ge v6, v4, :cond_7

    move v11, v8

    const/4 v10, 0x0

    :goto_1
    if-ge v10, v3, :cond_0

    and-int/lit8 v12, v11, 0x7

    if-eqz v12, :cond_0

    iget v13, v0, Lsun/awt/image/BytePackedRaster;->shiftOffset:I

    sub-int/2addr v13, v12

    shr-int/lit8 v12, v11, 0x3

    add-int/2addr v12, v1

    aget-byte v14, v2, v12

    iget v15, v0, Lsun/awt/image/BytePackedRaster;->bitMask:I

    shl-int v5, v15, v13

    not-int v5, v5

    and-int/2addr v5, v14

    add-int/lit8 v14, v9, 0x1

    aget v9, p5, v9

    and-int/2addr v9, v15

    shl-int/2addr v9, v13

    or-int/2addr v5, v9

    int-to-byte v5, v5

    aput-byte v5, v2, v12

    add-int/2addr v11, v7

    add-int/lit8 v10, v10, 0x1

    move v9, v14

    goto :goto_1

    :cond_0
    shr-int/lit8 v5, v11, 0x3

    add-int/2addr v5, v1

    const/4 v12, 0x2

    const/4 v13, 0x4

    const/4 v14, 0x1

    if-eq v7, v14, :cond_3

    if-eq v7, v12, :cond_2

    if-eq v7, v13, :cond_1

    goto/16 :goto_5

    :cond_1
    :goto_2
    add-int/lit8 v12, v3, -0x7

    if-ge v10, v12, :cond_4

    add-int/lit8 v12, v9, 0x1

    aget v9, p5, v9

    and-int/lit8 v9, v9, 0xf

    shl-int/2addr v9, v13

    add-int/lit8 v14, v12, 0x1

    aget v12, p5, v12

    and-int/lit8 v12, v12, 0xf

    or-int/2addr v9, v12

    add-int/lit8 v12, v5, 0x1

    int-to-byte v9, v9

    aput-byte v9, v2, v5

    add-int/lit8 v5, v14, 0x1

    aget v9, p5, v14

    and-int/lit8 v9, v9, 0xf

    shl-int/2addr v9, v13

    add-int/lit8 v14, v5, 0x1

    aget v5, p5, v5

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v5, v9

    add-int/lit8 v9, v12, 0x1

    int-to-byte v5, v5

    aput-byte v5, v2, v12

    add-int/lit8 v5, v14, 0x1

    aget v12, p5, v14

    and-int/lit8 v12, v12, 0xf

    shl-int/2addr v12, v13

    add-int/lit8 v14, v5, 0x1

    aget v5, p5, v5

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v5, v12

    add-int/lit8 v12, v9, 0x1

    int-to-byte v5, v5

    aput-byte v5, v2, v9

    add-int/lit8 v5, v14, 0x1

    aget v9, p5, v14

    and-int/lit8 v9, v9, 0xf

    shl-int/2addr v9, v13

    add-int/lit8 v14, v5, 0x1

    aget v5, p5, v5

    and-int/lit8 v5, v5, 0xf

    or-int/2addr v5, v9

    add-int/lit8 v9, v12, 0x1

    int-to-byte v5, v5

    aput-byte v5, v2, v12

    add-int/lit8 v11, v11, 0x20

    add-int/lit8 v10, v10, 0x8

    move v5, v9

    move v9, v14

    goto :goto_2

    :cond_2
    :goto_3
    add-int/lit8 v14, v3, -0x7

    if-ge v10, v14, :cond_4

    add-int/lit8 v14, v9, 0x1

    aget v9, p5, v9

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x6

    add-int/lit8 v15, v14, 0x1

    aget v14, p5, v14

    and-int/lit8 v14, v14, 0x3

    shl-int/2addr v14, v13

    or-int/2addr v9, v14

    add-int/lit8 v14, v15, 0x1

    aget v15, p5, v15

    and-int/lit8 v15, v15, 0x3

    shl-int/2addr v15, v12

    or-int/2addr v9, v15

    add-int/lit8 v15, v14, 0x1

    aget v14, p5, v14

    and-int/lit8 v14, v14, 0x3

    or-int/2addr v9, v14

    add-int/lit8 v14, v5, 0x1

    int-to-byte v9, v9

    aput-byte v9, v2, v5

    add-int/lit8 v5, v15, 0x1

    aget v9, p5, v15

    and-int/lit8 v9, v9, 0x3

    shl-int/lit8 v9, v9, 0x6

    add-int/lit8 v15, v5, 0x1

    aget v5, p5, v5

    and-int/lit8 v5, v5, 0x3

    shl-int/2addr v5, v13

    or-int/2addr v5, v9

    add-int/lit8 v9, v15, 0x1

    aget v15, p5, v15

    and-int/lit8 v15, v15, 0x3

    shl-int/2addr v15, v12

    or-int/2addr v5, v15

    add-int/lit8 v15, v9, 0x1

    aget v9, p5, v9

    and-int/lit8 v9, v9, 0x3

    or-int/2addr v5, v9

    add-int/lit8 v9, v14, 0x1

    int-to-byte v5, v5

    aput-byte v5, v2, v14

    add-int/lit8 v11, v11, 0x10

    add-int/lit8 v10, v10, 0x8

    move v5, v9

    move v9, v15

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v15, v3, -0x7

    if-lt v10, v15, :cond_6

    :cond_4
    :goto_5
    if-ge v10, v3, :cond_5

    iget v5, v0, Lsun/awt/image/BytePackedRaster;->shiftOffset:I

    and-int/lit8 v12, v11, 0x7

    sub-int/2addr v5, v12

    shr-int/lit8 v12, v11, 0x3

    add-int/2addr v12, v1

    aget-byte v13, v2, v12

    iget v14, v0, Lsun/awt/image/BytePackedRaster;->bitMask:I

    shl-int v15, v14, v5

    not-int v15, v15

    and-int/2addr v13, v15

    add-int/lit8 v15, v9, 0x1

    aget v9, p5, v9

    and-int/2addr v9, v14

    shl-int v5, v9, v5

    or-int/2addr v5, v13

    int-to-byte v5, v5

    aput-byte v5, v2, v12

    add-int/2addr v11, v7

    add-int/lit8 v10, v10, 0x1

    move v9, v15

    goto :goto_5

    :cond_5
    iget v5, v0, Lsun/awt/image/BytePackedRaster;->scanlineStride:I

    add-int/2addr v1, v5

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_6
    add-int/lit8 v15, v9, 0x1

    aget v9, p5, v9

    and-int/2addr v9, v14

    shl-int/lit8 v9, v9, 0x7

    add-int/lit8 v16, v15, 0x1

    aget v15, p5, v15

    and-int/2addr v15, v14

    shl-int/lit8 v15, v15, 0x6

    or-int/2addr v9, v15

    add-int/lit8 v15, v16, 0x1

    aget v16, p5, v16

    and-int/lit8 v16, v16, 0x1

    shl-int/lit8 v16, v16, 0x5

    or-int v9, v9, v16

    add-int/lit8 v16, v15, 0x1

    aget v15, p5, v15

    and-int/2addr v15, v14

    shl-int/2addr v15, v13

    or-int/2addr v9, v15

    add-int/lit8 v15, v16, 0x1

    aget v16, p5, v16

    and-int/lit8 v16, v16, 0x1

    shl-int/lit8 v16, v16, 0x3

    or-int v9, v9, v16

    add-int/lit8 v16, v15, 0x1

    aget v15, p5, v15

    and-int/2addr v15, v14

    shl-int/2addr v15, v12

    or-int/2addr v9, v15

    add-int/lit8 v15, v16, 0x1

    aget v16, p5, v16

    and-int/lit8 v16, v16, 0x1

    shl-int/lit8 v16, v16, 0x1

    or-int v9, v9, v16

    add-int/lit8 v16, v15, 0x1

    aget v15, p5, v15

    and-int/2addr v15, v14

    or-int/2addr v9, v15

    add-int/lit8 v15, v5, 0x1

    int-to-byte v9, v9

    aput-byte v9, v2, v5

    add-int/lit8 v11, v11, 0x8

    add-int/lit8 v10, v10, 0x8

    move v5, v15

    move/from16 v9, v16

    goto :goto_4

    :cond_7
    invoke-virtual/range {p0 .. p0}, Lsun/awt/image/SunWritableRaster;->markDirty()V

    return-void

    :cond_8
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Coordinate out of bounds!"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setRect(IILjava/awt/image/Raster;)V
    .locals 11

    instance-of v2, p3, Lsun/awt/image/BytePackedRaster;

    if-eqz v2, :cond_4

    move-object v2, p3

    check-cast v2, Lsun/awt/image/BytePackedRaster;

    iget v2, v2, Lsun/awt/image/BytePackedRaster;->pixelBitStride:I

    iget v3, p0, Lsun/awt/image/BytePackedRaster;->pixelBitStride:I

    if-ne v2, v3, :cond_4

    invoke-virtual {p3}, Ljava/awt/image/Raster;->getWidth()I

    move-result v2

    invoke-virtual {p3}, Ljava/awt/image/Raster;->getHeight()I

    move-result v3

    invoke-virtual {p3}, Ljava/awt/image/Raster;->getMinX()I

    move-result v4

    invoke-virtual {p3}, Ljava/awt/image/Raster;->getMinY()I

    move-result v5

    add-int v6, p1, v4

    add-int v7, p2, v5

    iget v8, p0, Ljava/awt/image/Raster;->minX:I

    if-ge v6, v8, :cond_0

    sub-int v6, v8, v6

    sub-int/2addr v2, v6

    add-int/2addr v4, v6

    move v6, v8

    :cond_0
    iget v8, p0, Ljava/awt/image/Raster;->minY:I

    if-ge v7, v8, :cond_1

    sub-int v7, v8, v7

    sub-int/2addr v3, v7

    add-int/2addr v5, v7

    move v7, v8

    :cond_1
    add-int v8, v6, v2

    iget v9, p0, Lsun/awt/image/BytePackedRaster;->maxX:I

    if-le v8, v9, :cond_2

    sub-int/2addr v9, v6

    goto :goto_0

    :cond_2
    move v9, v2

    :goto_0
    add-int v2, v7, v3

    iget v8, p0, Lsun/awt/image/BytePackedRaster;->maxY:I

    if-le v2, v8, :cond_3

    sub-int/2addr v8, v7

    goto :goto_1

    :cond_3
    move v8, v3

    :goto_1
    move-object v10, p3

    check-cast v10, Lsun/awt/image/BytePackedRaster;

    move-object v0, p0

    move v1, v6

    move v2, v7

    move v3, v4

    move v4, v5

    move v5, v9

    move v6, v8

    move-object v7, v10

    invoke-direct/range {v0 .. v7}, Lsun/awt/image/BytePackedRaster;->setDataElements(IIIIIILsun/awt/image/BytePackedRaster;)V

    goto :goto_2

    :cond_4
    invoke-super {p0, p1, p2, p3}, Ljava/awt/image/WritableRaster;->setRect(IILjava/awt/image/Raster;)V

    :goto_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BytePackedRaster: width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/awt/image/Raster;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/awt/image/Raster;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " #channels "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/awt/image/Raster;->numBands:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " xOff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " yOff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
