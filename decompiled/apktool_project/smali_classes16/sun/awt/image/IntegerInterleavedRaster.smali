.class public Lsun/awt/image/IntegerInterleavedRaster;
.super Lsun/awt/image/IntegerComponentRaster;
.source "SourceFile"


# instance fields
.field private maxX:I

.field private maxY:I


# direct methods
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

    invoke-direct/range {v0 .. v5}, Lsun/awt/image/IntegerInterleavedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Lsun/awt/image/IntegerInterleavedRaster;)V

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

    invoke-direct/range {v0 .. v5}, Lsun/awt/image/IntegerInterleavedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Lsun/awt/image/IntegerInterleavedRaster;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Lsun/awt/image/IntegerInterleavedRaster;)V
    .locals 3

    .line 3
    invoke-direct/range {p0 .. p5}, Lsun/awt/image/IntegerComponentRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Lsun/awt/image/IntegerComponentRaster;)V

    .line 4
    iget p5, p0, Ljava/awt/image/Raster;->minX:I

    iget v0, p0, Ljava/awt/image/Raster;->width:I

    add-int/2addr p5, v0

    iput p5, p0, Lsun/awt/image/IntegerInterleavedRaster;->maxX:I

    .line 5
    iget p5, p0, Ljava/awt/image/Raster;->minY:I

    iget v0, p0, Ljava/awt/image/Raster;->height:I

    add-int/2addr p5, v0

    iput p5, p0, Lsun/awt/image/IntegerInterleavedRaster;->maxY:I

    .line 6
    instance-of p5, p2, Ljava/awt/image/DataBufferInt;

    if-eqz p5, :cond_1

    .line 7
    check-cast p2, Ljava/awt/image/DataBufferInt;

    const/4 p5, 0x0

    .line 8
    invoke-static {p2, p5}, Lsun/awt/image/SunWritableRaster;->stealData(Ljava/awt/image/DataBufferInt;I)[I

    move-result-object v0

    iput-object v0, p0, Lsun/awt/image/IntegerComponentRaster;->data:[I

    .line 9
    instance-of v0, p1, Ljava/awt/image/SinglePixelPackedSampleModel;

    if-eqz v0, :cond_0

    .line 10
    check-cast p1, Ljava/awt/image/SinglePixelPackedSampleModel;

    .line 11
    invoke-virtual {p1}, Ljava/awt/image/SinglePixelPackedSampleModel;->getScanlineStride()I

    move-result v0

    iput v0, p0, Lsun/awt/image/IntegerComponentRaster;->scanlineStride:I

    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lsun/awt/image/IntegerComponentRaster;->pixelStride:I

    new-array v0, v0, [I

    .line 13
    iput-object v0, p0, Lsun/awt/image/IntegerComponentRaster;->dataOffsets:[I

    .line 14
    invoke-virtual {p2}, Ljava/awt/image/DataBuffer;->getOffset()I

    move-result p2

    aput p2, v0, p5

    .line 15
    iget-object p2, p0, Lsun/awt/image/IntegerComponentRaster;->dataOffsets:[I

    aget v0, p2, p5

    iput v0, p0, Lsun/awt/image/IntegerComponentRaster;->bandOffset:I

    .line 16
    iget v1, p3, Ljava/awt/Rectangle;->x:I

    iget v2, p4, Ljava/awt/Point;->x:I

    sub-int/2addr v1, v2

    .line 17
    iget p3, p3, Ljava/awt/Rectangle;->y:I

    iget p4, p4, Ljava/awt/Point;->y:I

    sub-int/2addr p3, p4

    .line 18
    iget p4, p0, Lsun/awt/image/IntegerComponentRaster;->scanlineStride:I

    mul-int/2addr p3, p4

    add-int/2addr v1, p3

    add-int/2addr v0, v1

    aput v0, p2, p5

    .line 19
    invoke-virtual {p1}, Ljava/awt/image/SinglePixelPackedSampleModel;->getNumDataElements()I

    move-result p1

    iput p1, p0, Lsun/awt/image/IntegerComponentRaster;->numDataElems:I

    .line 20
    invoke-virtual {p0}, Lsun/awt/image/IntegerComponentRaster;->verify()V

    return-void

    .line 21
    :cond_0
    new-instance p0, Ljava/awt/image/RasterFormatException;

    const-string p1, "IntegerInterleavedRasters must have SinglePixelPackedSampleModel"

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_1
    new-instance p0, Ljava/awt/image/RasterFormatException;

    const-string p1, "IntegerInterleavedRasters must haveinteger DataBuffers"

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setDataElements(IIIILjava/awt/image/Raster;)V
    .locals 14

    move-object v6, p0

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v9, p5

    if-lez v7, :cond_2

    if-lez v8, :cond_2

    .line 14
    invoke-virtual/range {p5 .. p5}, Ljava/awt/image/Raster;->getMinX()I

    move-result v10

    .line 15
    invoke-virtual/range {p5 .. p5}, Ljava/awt/image/Raster;->getMinY()I

    move-result v11

    .line 16
    instance-of v0, v9, Lsun/awt/image/IntegerInterleavedRaster;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 17
    move-object v0, v9

    check-cast v0, Lsun/awt/image/IntegerInterleavedRaster;

    .line 18
    invoke-virtual {v0}, Lsun/awt/image/IntegerInterleavedRaster;->getDataStorage()[I

    move-result-object v2

    .line 19
    invoke-virtual {v0}, Lsun/awt/image/IntegerInterleavedRaster;->getScanlineStride()I

    move-result v3

    .line 20
    invoke-virtual {v0, v1}, Lsun/awt/image/IntegerInterleavedRaster;->getDataOffset(I)I

    move-result v0

    .line 21
    iget-object v4, v6, Lsun/awt/image/IntegerComponentRaster;->dataOffsets:[I

    aget v4, v4, v1

    iget v5, v6, Ljava/awt/image/Raster;->minY:I

    sub-int v5, p2, v5

    iget v9, v6, Lsun/awt/image/IntegerComponentRaster;->scanlineStride:I

    mul-int/2addr v5, v9

    add-int/2addr v4, v5

    iget v5, v6, Ljava/awt/image/Raster;->minX:I

    sub-int v5, p1, v5

    add-int/2addr v4, v5

    :goto_0
    if-ge v1, v8, :cond_0

    .line 22
    iget-object v5, v6, Lsun/awt/image/IntegerComponentRaster;->data:[I

    invoke-static {v2, v0, v5, v4, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v0, v3

    .line 23
    iget v5, v6, Lsun/awt/image/IntegerComponentRaster;->scanlineStride:I

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p0}, Lsun/awt/image/SunWritableRaster;->markDirty()V

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    move-object v5, v0

    move v12, v1

    :goto_1
    if-ge v12, v8, :cond_2

    add-int v2, v11, v12

    const/4 v4, 0x1

    move-object/from16 v0, p5

    move v1, v10

    move/from16 v3, p3

    .line 25
    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    add-int v2, p2, v12

    move-object v0, p0

    move v1, p1

    move-object v5, v13

    .line 26
    invoke-virtual/range {v0 .. v5}, Lsun/awt/image/IntegerInterleavedRaster;->setDataElements(IIIILjava/lang/Object;)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method


# virtual methods
.method public createChild(IIIIII[I)Ljava/awt/image/Raster;
    .locals 0

    invoke-virtual/range {p0 .. p7}, Lsun/awt/image/IntegerInterleavedRaster;->createWritableChild(IIIIII[I)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public createCompatibleWritableRaster()Ljava/awt/image/WritableRaster;
    .locals 2

    .line 4
    iget v0, p0, Ljava/awt/image/Raster;->width:I

    iget v1, p0, Ljava/awt/image/Raster;->height:I

    invoke-virtual {p0, v0, v1}, Lsun/awt/image/IntegerInterleavedRaster;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

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
    new-instance p1, Lsun/awt/image/IntegerInterleavedRaster;

    new-instance p2, Ljava/awt/Point;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0}, Ljava/awt/Point;-><init>(II)V

    invoke-direct {p1, p0, p2}, Lsun/awt/image/IntegerInterleavedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/Point;)V

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

    new-instance v0, Lsun/awt/image/IntegerInterleavedRaster;

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

    invoke-direct/range {p1 .. p6}, Lsun/awt/image/IntegerInterleavedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Lsun/awt/image/IntegerInterleavedRaster;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/awt/image/RasterFormatException;

    const-string p1, "(y + height) is outside raster"

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/awt/image/RasterFormatException;

    const-string p1, "(x + width) is outside raster"

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/awt/image/RasterFormatException;

    const-string p1, "y lies outside raster"

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/awt/image/RasterFormatException;

    const-string p1, "x lies outside raster"

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 6
    iget v0, p0, Ljava/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_2

    iget v1, p0, Ljava/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_2

    add-int v2, p1, p3

    iget v3, p0, Lsun/awt/image/IntegerInterleavedRaster;->maxX:I

    if-gt v2, v3, :cond_2

    add-int v2, p2, p4

    iget v3, p0, Lsun/awt/image/IntegerInterleavedRaster;->maxY:I

    if-gt v2, v3, :cond_2

    .line 7
    instance-of v2, p5, [I

    if-eqz v2, :cond_0

    .line 8
    check-cast p5, [I

    goto :goto_0

    :cond_0
    mul-int p5, p3, p4

    .line 9
    new-array p5, p5, [I

    :goto_0
    sub-int/2addr p2, v1

    .line 10
    iget v1, p0, Lsun/awt/image/IntegerComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v1

    sub-int/2addr p1, v0

    add-int/2addr p2, p1

    iget-object p1, p0, Lsun/awt/image/IntegerComponentRaster;->dataOffsets:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    add-int/2addr p2, p1

    move p1, v0

    :goto_1
    if-ge v0, p4, :cond_1

    .line 11
    iget-object v1, p0, Lsun/awt/image/IntegerComponentRaster;->data:[I

    invoke-static {v1, p2, p5, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, p3

    .line 12
    iget v1, p0, Lsun/awt/image/IntegerComponentRaster;->scanlineStride:I

    add-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p5

    .line 13
    :cond_2
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDataElements(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Ljava/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_1

    iget v1, p0, Ljava/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_1

    iget v2, p0, Lsun/awt/image/IntegerInterleavedRaster;->maxX:I

    if-ge p1, v2, :cond_1

    iget v2, p0, Lsun/awt/image/IntegerInterleavedRaster;->maxY:I

    if-ge p2, v2, :cond_1

    if-nez p3, :cond_0

    const/4 p3, 0x1

    new-array p3, p3, [I

    goto :goto_0

    .line 2
    :cond_0
    check-cast p3, [I

    :goto_0
    sub-int/2addr p2, v1

    .line 3
    iget v1, p0, Lsun/awt/image/IntegerComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v1

    sub-int/2addr p1, v0

    add-int/2addr p2, p1

    iget-object p1, p0, Lsun/awt/image/IntegerComponentRaster;->dataOffsets:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    add-int/2addr p2, p1

    .line 4
    iget-object p0, p0, Lsun/awt/image/IntegerComponentRaster;->data:[I

    aget p0, p0, p2

    aput p0, p3, v0

    return-object p3

    .line 5
    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDataOffset(I)I
    .locals 0

    iget-object p0, p0, Lsun/awt/image/IntegerComponentRaster;->dataOffsets:[I

    aget p0, p0, p1

    return p0
.end method

.method public getDataOffsets()[I
    .locals 0

    iget-object p0, p0, Lsun/awt/image/IntegerComponentRaster;->dataOffsets:[I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public getDataStorage()[I
    .locals 0

    iget-object p0, p0, Lsun/awt/image/IntegerComponentRaster;->data:[I

    return-object p0
.end method

.method public getPixelStride()I
    .locals 0

    iget p0, p0, Lsun/awt/image/IntegerComponentRaster;->pixelStride:I

    return p0
.end method

.method public getScanlineStride()I
    .locals 0

    iget p0, p0, Lsun/awt/image/IntegerComponentRaster;->scanlineStride:I

    return p0
.end method

.method public setDataElements(IIIILjava/lang/Object;)V
    .locals 4

    .line 27
    iget v0, p0, Ljava/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_1

    iget v1, p0, Ljava/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_1

    add-int v2, p1, p3

    iget v3, p0, Lsun/awt/image/IntegerInterleavedRaster;->maxX:I

    if-gt v2, v3, :cond_1

    add-int v2, p2, p4

    iget v3, p0, Lsun/awt/image/IntegerInterleavedRaster;->maxY:I

    if-gt v2, v3, :cond_1

    .line 28
    check-cast p5, [I

    sub-int/2addr p2, v1

    .line 29
    iget v1, p0, Lsun/awt/image/IntegerComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v1

    sub-int/2addr p1, v0

    add-int/2addr p2, p1

    iget-object p1, p0, Lsun/awt/image/IntegerComponentRaster;->dataOffsets:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    add-int/2addr p2, p1

    move p1, v0

    :goto_0
    if-ge v0, p4, :cond_0

    .line 30
    iget-object v1, p0, Lsun/awt/image/IntegerComponentRaster;->data:[I

    invoke-static {p5, p1, v1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, p3

    .line 31
    iget v1, p0, Lsun/awt/image/IntegerComponentRaster;->scanlineStride:I

    add-int/2addr p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p0}, Lsun/awt/image/SunWritableRaster;->markDirty()V

    return-void

    .line 33
    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDataElements(IILjava/awt/image/Raster;)V
    .locals 7

    .line 7
    invoke-virtual {p3}, Ljava/awt/image/Raster;->getMinX()I

    move-result v0

    add-int v2, p1, v0

    .line 8
    invoke-virtual {p3}, Ljava/awt/image/Raster;->getMinY()I

    move-result p1

    add-int v3, p2, p1

    .line 9
    invoke-virtual {p3}, Ljava/awt/image/Raster;->getWidth()I

    move-result v4

    .line 10
    invoke-virtual {p3}, Ljava/awt/image/Raster;->getHeight()I

    move-result v5

    .line 11
    iget p1, p0, Ljava/awt/image/Raster;->minX:I

    if-lt v2, p1, :cond_0

    iget p1, p0, Ljava/awt/image/Raster;->minY:I

    if-lt v3, p1, :cond_0

    add-int p1, v2, v4

    iget p2, p0, Lsun/awt/image/IntegerInterleavedRaster;->maxX:I

    if-gt p1, p2, :cond_0

    add-int p1, v3, v5

    iget p2, p0, Lsun/awt/image/IntegerInterleavedRaster;->maxY:I

    if-gt p1, p2, :cond_0

    move-object v1, p0

    move-object v6, p3

    .line 12
    invoke-direct/range {v1 .. v6}, Lsun/awt/image/IntegerInterleavedRaster;->setDataElements(IIIILjava/awt/image/Raster;)V

    return-void

    .line 13
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDataElements(IILjava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Ljava/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_0

    iget v1, p0, Ljava/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_0

    iget v2, p0, Lsun/awt/image/IntegerInterleavedRaster;->maxX:I

    if-ge p1, v2, :cond_0

    iget v2, p0, Lsun/awt/image/IntegerInterleavedRaster;->maxY:I

    if-ge p2, v2, :cond_0

    .line 2
    check-cast p3, [I

    sub-int/2addr p2, v1

    .line 3
    iget v1, p0, Lsun/awt/image/IntegerComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v1

    sub-int/2addr p1, v0

    add-int/2addr p2, p1

    iget-object p1, p0, Lsun/awt/image/IntegerComponentRaster;->dataOffsets:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    add-int/2addr p2, p1

    .line 4
    iget-object p1, p0, Lsun/awt/image/IntegerComponentRaster;->data:[I

    aget p3, p3, v0

    aput p3, p1, p2

    .line 5
    invoke-virtual {p0}, Lsun/awt/image/SunWritableRaster;->markDirty()V

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IntegerInterleavedRaster: width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/awt/image/Raster;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/awt/image/Raster;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " #Bands = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/awt/image/Raster;->numBands:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " xOff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " yOff = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dataOffset[0] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lsun/awt/image/IntegerComponentRaster;->dataOffsets:[I

    const/4 v2, 0x0

    aget p0, p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
