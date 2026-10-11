.class public Lsun/awt/image/ShortInterleavedRaster;
.super Lsun/awt/image/ShortComponentRaster;
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

    invoke-direct/range {v0 .. v5}, Lsun/awt/image/ShortInterleavedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Lsun/awt/image/ShortInterleavedRaster;)V

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

    invoke-direct/range {v0 .. v5}, Lsun/awt/image/ShortInterleavedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Lsun/awt/image/ShortInterleavedRaster;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Lsun/awt/image/ShortInterleavedRaster;)V
    .locals 3

    .line 3
    invoke-direct/range {p0 .. p5}, Lsun/awt/image/ShortComponentRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Lsun/awt/image/ShortComponentRaster;)V

    .line 4
    iget p5, p0, Ljava/awt/image/Raster;->minX:I

    iget v0, p0, Ljava/awt/image/Raster;->width:I

    add-int/2addr p5, v0

    iput p5, p0, Lsun/awt/image/ShortInterleavedRaster;->maxX:I

    .line 5
    iget p5, p0, Ljava/awt/image/Raster;->minY:I

    iget v0, p0, Ljava/awt/image/Raster;->height:I

    add-int/2addr p5, v0

    iput p5, p0, Lsun/awt/image/ShortInterleavedRaster;->maxY:I

    .line 6
    instance-of p5, p2, Ljava/awt/image/DataBufferUShort;

    if-eqz p5, :cond_4

    .line 7
    check-cast p2, Ljava/awt/image/DataBufferUShort;

    const/4 p5, 0x0

    .line 8
    invoke-static {p2, p5}, Lsun/awt/image/SunWritableRaster;->stealData(Ljava/awt/image/DataBufferUShort;I)[S

    move-result-object v0

    iput-object v0, p0, Lsun/awt/image/ShortComponentRaster;->data:[S

    .line 9
    instance-of v0, p1, Ljava/awt/image/PixelInterleavedSampleModel;

    if-nez v0, :cond_2

    instance-of v0, p1, Ljava/awt/image/ComponentSampleModel;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    instance-of v0, p1, Ljava/awt/image/SinglePixelPackedSampleModel;

    if-eqz v0, :cond_1

    .line 11
    check-cast p1, Ljava/awt/image/SinglePixelPackedSampleModel;

    .line 12
    invoke-virtual {p1}, Ljava/awt/image/SinglePixelPackedSampleModel;->getScanlineStride()I

    move-result p1

    iput p1, p0, Lsun/awt/image/ShortComponentRaster;->scanlineStride:I

    .line 13
    iput v1, p0, Lsun/awt/image/ShortComponentRaster;->pixelStride:I

    new-array p1, v1, [I

    .line 14
    iput-object p1, p0, Lsun/awt/image/ShortComponentRaster;->dataOffsets:[I

    .line 15
    invoke-virtual {p2}, Ljava/awt/image/DataBuffer;->getOffset()I

    move-result p2

    aput p2, p1, p5

    .line 16
    iget p1, p3, Ljava/awt/Rectangle;->x:I

    iget p2, p4, Ljava/awt/Point;->x:I

    sub-int/2addr p1, p2

    .line 17
    iget p2, p3, Ljava/awt/Rectangle;->y:I

    iget p3, p4, Ljava/awt/Point;->y:I

    sub-int/2addr p2, p3

    .line 18
    iget-object p3, p0, Lsun/awt/image/ShortComponentRaster;->dataOffsets:[I

    aget p4, p3, p5

    iget v0, p0, Lsun/awt/image/ShortComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v0

    add-int/2addr p1, p2

    add-int/2addr p4, p1

    aput p4, p3, p5

    goto :goto_2

    .line 19
    :cond_1
    new-instance p0, Ljava/awt/image/RasterFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "ShortInterleavedRasters must have PixelInterleavedSampleModel, SinglePixelPackedSampleModel or 1 band ComponentSampleModel.  Sample model is "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_2
    :goto_0
    check-cast p1, Ljava/awt/image/ComponentSampleModel;

    .line 21
    invoke-virtual {p1}, Ljava/awt/image/ComponentSampleModel;->getScanlineStride()I

    move-result p2

    iput p2, p0, Lsun/awt/image/ShortComponentRaster;->scanlineStride:I

    .line 22
    invoke-virtual {p1}, Ljava/awt/image/ComponentSampleModel;->getPixelStride()I

    move-result p2

    iput p2, p0, Lsun/awt/image/ShortComponentRaster;->pixelStride:I

    .line 23
    invoke-virtual {p1}, Ljava/awt/image/ComponentSampleModel;->getBandOffsets()[I

    move-result-object p1

    iput-object p1, p0, Lsun/awt/image/ShortComponentRaster;->dataOffsets:[I

    .line 24
    iget p1, p3, Ljava/awt/Rectangle;->x:I

    iget p2, p4, Ljava/awt/Point;->x:I

    sub-int/2addr p1, p2

    .line 25
    iget p2, p3, Ljava/awt/Rectangle;->y:I

    iget p3, p4, Ljava/awt/Point;->y:I

    sub-int/2addr p2, p3

    move p3, p5

    .line 26
    :goto_1
    invoke-virtual {p0}, Ljava/awt/image/Raster;->getNumDataElements()I

    move-result p4

    if-ge p3, p4, :cond_3

    .line 27
    iget-object p4, p0, Lsun/awt/image/ShortComponentRaster;->dataOffsets:[I

    aget v0, p4, p3

    iget v1, p0, Lsun/awt/image/ShortComponentRaster;->pixelStride:I

    mul-int/2addr v1, p1

    iget v2, p0, Lsun/awt/image/ShortComponentRaster;->scanlineStride:I

    mul-int/2addr v2, p2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    aput v0, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    .line 28
    :cond_3
    :goto_2
    iget-object p1, p0, Lsun/awt/image/ShortComponentRaster;->dataOffsets:[I

    aget p1, p1, p5

    iput p1, p0, Lsun/awt/image/ShortComponentRaster;->bandOffset:I

    .line 29
    invoke-virtual {p0}, Lsun/awt/image/ShortComponentRaster;->verify()V

    return-void

    .line 30
    :cond_4
    new-instance p0, Ljava/awt/image/RasterFormatException;

    const-string p1, "ShortInterleavedRasters must have ushort DataBuffers"

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private setDataElements(IIIILjava/awt/image/Raster;)V
    .locals 11

    move v0, p4

    if-lez p3, :cond_0

    if-lez v0, :cond_0

    .line 15
    invoke-virtual/range {p5 .. p5}, Ljava/awt/image/Raster;->getMinX()I

    move-result v7

    .line 16
    invoke-virtual/range {p5 .. p5}, Ljava/awt/image/Raster;->getMinY()I

    move-result v8

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v6, v1

    move v9, v2

    :goto_0
    if-ge v9, v0, :cond_0

    add-int v3, v8, v9

    const/4 v5, 0x1

    move-object/from16 v1, p5

    move v2, v7

    move v4, p3

    .line 17
    invoke-virtual/range {v1 .. v6}, Ljava/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    add-int v3, p2, v9

    move-object v1, p0

    move v2, p1

    move-object v6, v10

    .line 18
    invoke-virtual/range {v1 .. v6}, Lsun/awt/image/ShortInterleavedRaster;->setDataElements(IIIILjava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public createChild(IIIIII[I)Ljava/awt/image/Raster;
    .locals 0

    invoke-virtual/range {p0 .. p7}, Lsun/awt/image/ShortInterleavedRaster;->createWritableChild(IIIIII[I)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public createCompatibleWritableRaster()Ljava/awt/image/WritableRaster;
    .locals 2

    .line 4
    iget v0, p0, Ljava/awt/image/Raster;->width:I

    iget v1, p0, Ljava/awt/image/Raster;->height:I

    invoke-virtual {p0, v0, v1}, Lsun/awt/image/ShortInterleavedRaster;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

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
    new-instance p1, Lsun/awt/image/ShortInterleavedRaster;

    new-instance p2, Ljava/awt/Point;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0}, Ljava/awt/Point;-><init>(II)V

    invoke-direct {p1, p0, p2}, Lsun/awt/image/ShortInterleavedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/Point;)V

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

    new-instance v0, Lsun/awt/image/ShortInterleavedRaster;

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

    invoke-direct/range {p1 .. p6}, Lsun/awt/image/ShortInterleavedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Lsun/awt/image/ShortInterleavedRaster;)V

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

.method public getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 8
    iget v0, p0, Ljava/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_4

    iget v1, p0, Ljava/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_4

    add-int v2, p1, p3

    iget v3, p0, Lsun/awt/image/ShortInterleavedRaster;->maxX:I

    if-gt v2, v3, :cond_4

    add-int v2, p2, p4

    iget v3, p0, Lsun/awt/image/ShortInterleavedRaster;->maxY:I

    if-gt v2, v3, :cond_4

    if-nez p5, :cond_0

    mul-int p5, p3, p4

    .line 9
    iget v2, p0, Ljava/awt/image/Raster;->numDataElements:I

    mul-int/2addr p5, v2

    new-array p5, p5, [S

    goto :goto_0

    .line 10
    :cond_0
    check-cast p5, [S

    :goto_0
    sub-int/2addr p2, v1

    .line 11
    iget v1, p0, Lsun/awt/image/ShortComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lsun/awt/image/ShortComponentRaster;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :goto_1
    if-ge v0, p4, :cond_3

    move v2, p1

    move v3, p2

    :goto_2
    if-ge v2, p3, :cond_2

    move v4, p1

    .line 12
    :goto_3
    iget v5, p0, Ljava/awt/image/Raster;->numDataElements:I

    if-ge v4, v5, :cond_1

    add-int/lit8 v5, v1, 0x1

    .line 13
    iget-object v6, p0, Lsun/awt/image/ShortComponentRaster;->data:[S

    iget-object v7, p0, Lsun/awt/image/ShortComponentRaster;->dataOffsets:[I

    aget v7, v7, v4

    add-int/2addr v7, v3

    aget-short v6, v6, v7

    aput-short v6, p5, v1

    add-int/lit8 v4, v4, 0x1

    move v1, v5

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 14
    iget v4, p0, Lsun/awt/image/ShortComponentRaster;->pixelStride:I

    add-int/2addr v3, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 15
    iget v2, p0, Lsun/awt/image/ShortComponentRaster;->scanlineStride:I

    add-int/2addr p2, v2

    goto :goto_1

    :cond_3
    return-object p5

    .line 16
    :cond_4
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDataElements(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Ljava/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_2

    iget v1, p0, Ljava/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_2

    iget v2, p0, Lsun/awt/image/ShortInterleavedRaster;->maxX:I

    if-ge p1, v2, :cond_2

    iget v2, p0, Lsun/awt/image/ShortInterleavedRaster;->maxY:I

    if-ge p2, v2, :cond_2

    if-nez p3, :cond_0

    .line 2
    iget p3, p0, Ljava/awt/image/Raster;->numDataElements:I

    new-array p3, p3, [S

    goto :goto_0

    .line 3
    :cond_0
    check-cast p3, [S

    :goto_0
    sub-int/2addr p2, v1

    .line 4
    iget v1, p0, Lsun/awt/image/ShortComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lsun/awt/image/ShortComponentRaster;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    const/4 p1, 0x0

    .line 5
    :goto_1
    iget v0, p0, Ljava/awt/image/Raster;->numDataElements:I

    if-ge p1, v0, :cond_1

    .line 6
    iget-object v0, p0, Lsun/awt/image/ShortComponentRaster;->data:[S

    iget-object v1, p0, Lsun/awt/image/ShortComponentRaster;->dataOffsets:[I

    aget v1, v1, p1

    add-int/2addr v1, p2

    aget-short v0, v0, v1

    aput-short v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-object p3

    .line 7
    :cond_2
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDataOffset(I)I
    .locals 0

    iget-object p0, p0, Lsun/awt/image/ShortComponentRaster;->dataOffsets:[I

    aget p0, p0, p1

    return p0
.end method

.method public getDataOffsets()[I
    .locals 0

    iget-object p0, p0, Lsun/awt/image/ShortComponentRaster;->dataOffsets:[I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public getDataStorage()[S
    .locals 0

    iget-object p0, p0, Lsun/awt/image/ShortComponentRaster;->data:[S

    return-object p0
.end method

.method public getPixelStride()I
    .locals 0

    iget p0, p0, Lsun/awt/image/ShortComponentRaster;->pixelStride:I

    return p0
.end method

.method public getScanlineStride()I
    .locals 0

    iget p0, p0, Lsun/awt/image/ShortComponentRaster;->scanlineStride:I

    return p0
.end method

.method public getShortData(IIIII[S)[S
    .locals 5

    .line 1
    iget v0, p0, Ljava/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_5

    iget v1, p0, Ljava/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_5

    add-int v2, p1, p3

    iget v3, p0, Lsun/awt/image/ShortInterleavedRaster;->maxX:I

    if-gt v2, v3, :cond_5

    add-int v2, p2, p4

    iget v3, p0, Lsun/awt/image/ShortInterleavedRaster;->maxY:I

    if-gt v2, v3, :cond_5

    if-nez p6, :cond_0

    .line 2
    iget p6, p0, Ljava/awt/image/Raster;->numDataElements:I

    mul-int/2addr p6, p3

    mul-int/2addr p6, p4

    new-array p6, p6, [S

    :cond_0
    sub-int/2addr p2, v1

    .line 3
    iget v1, p0, Lsun/awt/image/ShortComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lsun/awt/image/ShortComponentRaster;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    iget-object p1, p0, Lsun/awt/image/ShortComponentRaster;->dataOffsets:[I

    aget p1, p1, p5

    add-int/2addr p2, p1

    const/4 p1, 0x1

    const/4 p5, 0x0

    if-ne v0, p1, :cond_2

    if-ne v1, p3, :cond_1

    .line 4
    iget-object p0, p0, Lsun/awt/image/ShortComponentRaster;->data:[S

    mul-int/2addr p3, p4

    invoke-static {p0, p2, p6, p5, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_1
    move p1, p5

    :goto_0
    if-ge p5, p4, :cond_4

    .line 5
    iget-object v0, p0, Lsun/awt/image/ShortComponentRaster;->data:[S

    invoke-static {v0, p2, p6, p1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, p3

    add-int/lit8 p5, p5, 0x1

    .line 6
    iget v0, p0, Lsun/awt/image/ShortComponentRaster;->scanlineStride:I

    add-int/2addr p2, v0

    goto :goto_0

    :cond_2
    move p1, p5

    move v0, p1

    :goto_1
    if-ge p1, p4, :cond_4

    move v2, p2

    move v1, p5

    :goto_2
    if-ge v1, p3, :cond_3

    add-int/lit8 v3, v0, 0x1

    .line 7
    iget-object v4, p0, Lsun/awt/image/ShortComponentRaster;->data:[S

    aget-short v4, v4, v2

    aput-short v4, p6, v0

    add-int/lit8 v1, v1, 0x1

    .line 8
    iget v0, p0, Lsun/awt/image/ShortComponentRaster;->pixelStride:I

    add-int/2addr v2, v0

    move v0, v3

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 9
    iget v1, p0, Lsun/awt/image/ShortComponentRaster;->scanlineStride:I

    add-int/2addr p2, v1

    goto :goto_1

    :cond_4
    :goto_3
    return-object p6

    .line 10
    :cond_5
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getShortData(IIII[S)[S
    .locals 8

    .line 11
    iget v0, p0, Ljava/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_4

    iget v1, p0, Ljava/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_4

    add-int v2, p1, p3

    iget v3, p0, Lsun/awt/image/ShortInterleavedRaster;->maxX:I

    if-gt v2, v3, :cond_4

    add-int v2, p2, p4

    iget v3, p0, Lsun/awt/image/ShortInterleavedRaster;->maxY:I

    if-gt v2, v3, :cond_4

    if-nez p5, :cond_0

    .line 12
    iget p5, p0, Ljava/awt/image/Raster;->numDataElements:I

    mul-int/2addr p5, p3

    mul-int/2addr p5, p4

    new-array p5, p5, [S

    :cond_0
    sub-int/2addr p2, v1

    .line 13
    iget v1, p0, Lsun/awt/image/ShortComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lsun/awt/image/ShortComponentRaster;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :goto_0
    if-ge v0, p4, :cond_3

    move v2, p1

    move v3, p2

    :goto_1
    if-ge v2, p3, :cond_2

    move v4, p1

    .line 14
    :goto_2
    iget v5, p0, Ljava/awt/image/Raster;->numDataElements:I

    if-ge v4, v5, :cond_1

    add-int/lit8 v5, v1, 0x1

    .line 15
    iget-object v6, p0, Lsun/awt/image/ShortComponentRaster;->data:[S

    iget-object v7, p0, Lsun/awt/image/ShortComponentRaster;->dataOffsets:[I

    aget v7, v7, v4

    add-int/2addr v7, v3

    aget-short v6, v6, v7

    aput-short v6, p5, v1

    add-int/lit8 v4, v4, 0x1

    move v1, v5

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 16
    iget v4, p0, Lsun/awt/image/ShortComponentRaster;->pixelStride:I

    add-int/2addr v3, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 17
    iget v2, p0, Lsun/awt/image/ShortComponentRaster;->scanlineStride:I

    add-int/2addr p2, v2

    goto :goto_0

    :cond_3
    return-object p5

    .line 18
    :cond_4
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public putShortData(IIIII[S)V
    .locals 5

    .line 1
    iget v0, p0, Ljava/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_4

    iget v1, p0, Ljava/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_4

    add-int v2, p1, p3

    iget v3, p0, Lsun/awt/image/ShortInterleavedRaster;->maxX:I

    if-gt v2, v3, :cond_4

    add-int v2, p2, p4

    iget v3, p0, Lsun/awt/image/ShortInterleavedRaster;->maxY:I

    if-gt v2, v3, :cond_4

    sub-int/2addr p2, v1

    .line 2
    iget v1, p0, Lsun/awt/image/ShortComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lsun/awt/image/ShortComponentRaster;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    iget-object p1, p0, Lsun/awt/image/ShortComponentRaster;->dataOffsets:[I

    aget p1, p1, p5

    add-int/2addr p2, p1

    const/4 p1, 0x1

    const/4 p5, 0x0

    if-ne v0, p1, :cond_1

    if-ne v1, p3, :cond_0

    .line 3
    iget-object p1, p0, Lsun/awt/image/ShortComponentRaster;->data:[S

    mul-int/2addr p3, p4

    invoke-static {p6, p5, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    :cond_0
    move p1, p5

    :goto_0
    if-ge p5, p4, :cond_3

    .line 4
    iget-object v0, p0, Lsun/awt/image/ShortComponentRaster;->data:[S

    invoke-static {p6, p1, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p1, p3

    add-int/lit8 p5, p5, 0x1

    .line 5
    iget v0, p0, Lsun/awt/image/ShortComponentRaster;->scanlineStride:I

    add-int/2addr p2, v0

    goto :goto_0

    :cond_1
    move p1, p5

    move v0, p1

    :goto_1
    if-ge p1, p4, :cond_3

    move v2, p2

    move v1, p5

    :goto_2
    if-ge v1, p3, :cond_2

    .line 6
    iget-object v3, p0, Lsun/awt/image/ShortComponentRaster;->data:[S

    add-int/lit8 v4, v0, 0x1

    aget-short v0, p6, v0

    aput-short v0, v3, v2

    add-int/lit8 v1, v1, 0x1

    .line 7
    iget v0, p0, Lsun/awt/image/ShortComponentRaster;->pixelStride:I

    add-int/2addr v2, v0

    move v0, v4

    goto :goto_2

    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 8
    iget v1, p0, Lsun/awt/image/ShortComponentRaster;->scanlineStride:I

    add-int/2addr p2, v1

    goto :goto_1

    .line 9
    :cond_3
    :goto_3
    invoke-virtual {p0}, Lsun/awt/image/SunWritableRaster;->markDirty()V

    return-void

    .line 10
    :cond_4
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public putShortData(IIII[S)V
    .locals 8

    .line 11
    iget v0, p0, Ljava/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_3

    iget v1, p0, Ljava/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_3

    add-int v2, p1, p3

    iget v3, p0, Lsun/awt/image/ShortInterleavedRaster;->maxX:I

    if-gt v2, v3, :cond_3

    add-int v2, p2, p4

    iget v3, p0, Lsun/awt/image/ShortInterleavedRaster;->maxY:I

    if-gt v2, v3, :cond_3

    sub-int/2addr p2, v1

    .line 12
    iget v1, p0, Lsun/awt/image/ShortComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lsun/awt/image/ShortComponentRaster;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :goto_0
    if-ge v0, p4, :cond_2

    move v2, p1

    move v3, p2

    :goto_1
    if-ge v2, p3, :cond_1

    move v4, p1

    .line 13
    :goto_2
    iget v5, p0, Ljava/awt/image/Raster;->numDataElements:I

    if-ge v4, v5, :cond_0

    .line 14
    iget-object v5, p0, Lsun/awt/image/ShortComponentRaster;->data:[S

    iget-object v6, p0, Lsun/awt/image/ShortComponentRaster;->dataOffsets:[I

    aget v6, v6, v4

    add-int/2addr v6, v3

    add-int/lit8 v7, v1, 0x1

    aget-short v1, p5, v1

    aput-short v1, v5, v6

    add-int/lit8 v4, v4, 0x1

    move v1, v7

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 15
    iget v4, p0, Lsun/awt/image/ShortComponentRaster;->pixelStride:I

    add-int/2addr v3, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 16
    iget v2, p0, Lsun/awt/image/ShortComponentRaster;->scanlineStride:I

    add-int/2addr p2, v2

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p0}, Lsun/awt/image/SunWritableRaster;->markDirty()V

    return-void

    .line 18
    :cond_3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDataElements(IIIILjava/lang/Object;)V
    .locals 8

    .line 19
    iget v0, p0, Ljava/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_3

    iget v1, p0, Ljava/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_3

    add-int v2, p1, p3

    iget v3, p0, Lsun/awt/image/ShortInterleavedRaster;->maxX:I

    if-gt v2, v3, :cond_3

    add-int v2, p2, p4

    iget v3, p0, Lsun/awt/image/ShortInterleavedRaster;->maxY:I

    if-gt v2, v3, :cond_3

    .line 20
    check-cast p5, [S

    sub-int/2addr p2, v1

    .line 21
    iget v1, p0, Lsun/awt/image/ShortComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lsun/awt/image/ShortComponentRaster;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :goto_0
    if-ge v0, p4, :cond_2

    move v2, p1

    move v3, p2

    :goto_1
    if-ge v2, p3, :cond_1

    move v4, p1

    .line 22
    :goto_2
    iget v5, p0, Ljava/awt/image/Raster;->numDataElements:I

    if-ge v4, v5, :cond_0

    .line 23
    iget-object v5, p0, Lsun/awt/image/ShortComponentRaster;->data:[S

    iget-object v6, p0, Lsun/awt/image/ShortComponentRaster;->dataOffsets:[I

    aget v6, v6, v4

    add-int/2addr v6, v3

    add-int/lit8 v7, v1, 0x1

    aget-short v1, p5, v1

    aput-short v1, v5, v6

    add-int/lit8 v4, v4, 0x1

    move v1, v7

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 24
    iget v4, p0, Lsun/awt/image/ShortComponentRaster;->pixelStride:I

    add-int/2addr v3, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 25
    iget v2, p0, Lsun/awt/image/ShortComponentRaster;->scanlineStride:I

    add-int/2addr p2, v2

    goto :goto_0

    .line 26
    :cond_2
    invoke-virtual {p0}, Lsun/awt/image/SunWritableRaster;->markDirty()V

    return-void

    .line 27
    :cond_3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDataElements(IILjava/awt/image/Raster;)V
    .locals 7

    .line 8
    invoke-virtual {p3}, Ljava/awt/image/Raster;->getMinX()I

    move-result v0

    add-int v2, p1, v0

    .line 9
    invoke-virtual {p3}, Ljava/awt/image/Raster;->getMinY()I

    move-result p1

    add-int v3, p2, p1

    .line 10
    invoke-virtual {p3}, Ljava/awt/image/Raster;->getWidth()I

    move-result v4

    .line 11
    invoke-virtual {p3}, Ljava/awt/image/Raster;->getHeight()I

    move-result v5

    .line 12
    iget p1, p0, Ljava/awt/image/Raster;->minX:I

    if-lt v2, p1, :cond_0

    iget p1, p0, Ljava/awt/image/Raster;->minY:I

    if-lt v3, p1, :cond_0

    add-int p1, v2, v4

    iget p2, p0, Lsun/awt/image/ShortInterleavedRaster;->maxX:I

    if-gt p1, p2, :cond_0

    add-int p1, v3, v5

    iget p2, p0, Lsun/awt/image/ShortInterleavedRaster;->maxY:I

    if-gt p1, p2, :cond_0

    move-object v1, p0

    move-object v6, p3

    .line 13
    invoke-direct/range {v1 .. v6}, Lsun/awt/image/ShortInterleavedRaster;->setDataElements(IIIILjava/awt/image/Raster;)V

    return-void

    .line 14
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

    if-lt p1, v0, :cond_1

    iget v1, p0, Ljava/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_1

    iget v2, p0, Lsun/awt/image/ShortInterleavedRaster;->maxX:I

    if-ge p1, v2, :cond_1

    iget v2, p0, Lsun/awt/image/ShortInterleavedRaster;->maxY:I

    if-ge p2, v2, :cond_1

    .line 2
    check-cast p3, [S

    sub-int/2addr p2, v1

    .line 3
    iget v1, p0, Lsun/awt/image/ShortComponentRaster;->scanlineStride:I

    mul-int/2addr p2, v1

    sub-int/2addr p1, v0

    iget v0, p0, Lsun/awt/image/ShortComponentRaster;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    const/4 p1, 0x0

    .line 4
    :goto_0
    iget v0, p0, Ljava/awt/image/Raster;->numDataElements:I

    if-ge p1, v0, :cond_0

    .line 5
    iget-object v0, p0, Lsun/awt/image/ShortComponentRaster;->data:[S

    iget-object v1, p0, Lsun/awt/image/ShortComponentRaster;->dataOffsets:[I

    aget v1, v1, p1

    add-int/2addr v1, p2

    aget-short v2, p3, p1

    aput-short v2, v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lsun/awt/image/SunWritableRaster;->markDirty()V

    return-void

    .line 7
    :cond_1
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

    const-string v2, "ShortInterleavedRaster: width = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/awt/image/Raster;->width:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " height = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Ljava/awt/image/Raster;->height:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " #numDataElements "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljava/awt/image/Raster;->numDataElements:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    return-object v0
.end method
