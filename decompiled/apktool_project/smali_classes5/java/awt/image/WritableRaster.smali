.class public Ljava/awt/image/WritableRaster;
.super Ljava/awt/image/Raster;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/awt/image/SampleModel;Ljava/awt/Point;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljava/awt/image/SampleModel;->createDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v2

    new-instance v3, Ljava/awt/Rectangle;

    iget v0, p2, Ljava/awt/Point;->x:I

    iget v1, p2, Ljava/awt/Point;->y:I

    .line 2
    invoke-virtual {p1}, Ljava/awt/image/SampleModel;->getWidth()I

    move-result v4

    .line 3
    invoke-virtual {p1}, Ljava/awt/image/SampleModel;->getHeight()I

    move-result v5

    invoke-direct {v3, v0, v1, v4, v5}, Ljava/awt/Rectangle;-><init>(IIII)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    .line 4
    invoke-direct/range {v0 .. v5}, Ljava/awt/image/WritableRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Ljava/awt/image/WritableRaster;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V
    .locals 6

    .line 5
    new-instance v3, Ljava/awt/Rectangle;

    iget v0, p3, Ljava/awt/Point;->x:I

    iget v1, p3, Ljava/awt/Point;->y:I

    .line 6
    invoke-virtual {p1}, Ljava/awt/image/SampleModel;->getWidth()I

    move-result v2

    .line 7
    invoke-virtual {p1}, Ljava/awt/image/SampleModel;->getHeight()I

    move-result v4

    invoke-direct {v3, v0, v1, v2, v4}, Ljava/awt/Rectangle;-><init>(IIII)V

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    .line 8
    invoke-direct/range {v0 .. v5}, Ljava/awt/image/WritableRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Ljava/awt/image/WritableRaster;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Ljava/awt/image/WritableRaster;)V
    .locals 0

    .line 9
    invoke-direct/range {p0 .. p5}, Ljava/awt/image/Raster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Ljava/awt/image/Raster;)V

    return-void
.end method


# virtual methods
.method public createWritableChild(IIIIII[I)Ljava/awt/image/WritableRaster;
    .locals 4

    iget v0, p0, Ljava/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_4

    iget v1, p0, Ljava/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_3

    add-int v2, p1, p3

    if-lt v2, p1, :cond_2

    iget v3, p0, Ljava/awt/image/Raster;->width:I

    add-int/2addr v3, v0

    if-gt v2, v3, :cond_2

    add-int v0, p2, p4

    if-lt v0, p2, :cond_1

    iget v2, p0, Ljava/awt/image/Raster;->height:I

    add-int/2addr v2, v1

    if-gt v0, v2, :cond_1

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

    new-instance v0, Ljava/awt/image/WritableRaster;

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v1

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

    invoke-direct/range {p1 .. p6}, Ljava/awt/image/WritableRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Ljava/awt/image/WritableRaster;)V

    return-object v0

    :cond_1
    new-instance p0, Ljava/awt/image/RasterFormatException;

    const-string p1, "(parentY + height) is outside raster"

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/awt/image/RasterFormatException;

    const-string p1, "(parentX + width) is outside raster"

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/awt/image/RasterFormatException;

    const-string p1, "parentY lies outside raster"

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/awt/image/RasterFormatException;

    const-string p1, "parentX lies outside raster"

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createWritableTranslatedChild(II)Ljava/awt/image/WritableRaster;
    .locals 8

    iget v1, p0, Ljava/awt/image/Raster;->minX:I

    iget v2, p0, Ljava/awt/image/Raster;->minY:I

    iget v3, p0, Ljava/awt/image/Raster;->width:I

    iget v4, p0, Ljava/awt/image/Raster;->height:I

    const/4 v7, 0x0

    move-object v0, p0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public getWritableParent()Ljava/awt/image/WritableRaster;
    .locals 0

    iget-object p0, p0, Ljava/awt/image/Raster;->parent:Ljava/awt/image/Raster;

    check-cast p0, Ljava/awt/image/WritableRaster;

    return-object p0
.end method

.method public setDataElements(IIIILjava/lang/Object;)V
    .locals 7

    .line 12
    iget-object v0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    sub-int v1, p1, v1

    iget p1, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    sub-int v2, p2, p1

    iget-object v6, p0, Ljava/awt/image/Raster;->dataBuffer:Ljava/awt/image/DataBuffer;

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Ljava/awt/image/SampleModel;->setDataElements(IIIILjava/lang/Object;Ljava/awt/image/DataBuffer;)V

    return-void
.end method

.method public setDataElements(IILjava/awt/image/Raster;)V
    .locals 12

    .line 2
    invoke-virtual {p3}, Ljava/awt/image/Raster;->getMinX()I

    move-result v0

    add-int/2addr p1, v0

    .line 3
    invoke-virtual {p3}, Ljava/awt/image/Raster;->getMinY()I

    move-result v0

    add-int/2addr p2, v0

    .line 4
    invoke-virtual {p3}, Ljava/awt/image/Raster;->getWidth()I

    move-result v7

    .line 5
    invoke-virtual {p3}, Ljava/awt/image/Raster;->getHeight()I

    move-result v8

    .line 6
    iget v0, p0, Ljava/awt/image/Raster;->minX:I

    if-lt p1, v0, :cond_1

    iget v1, p0, Ljava/awt/image/Raster;->minY:I

    if-lt p2, v1, :cond_1

    add-int v2, p1, v7

    iget v3, p0, Ljava/awt/image/Raster;->width:I

    add-int/2addr v0, v3

    if-gt v2, v0, :cond_1

    add-int v0, p2, v8

    iget v2, p0, Ljava/awt/image/Raster;->height:I

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    .line 7
    invoke-virtual {p3}, Ljava/awt/image/Raster;->getMinX()I

    move-result v9

    .line 8
    invoke-virtual {p3}, Ljava/awt/image/Raster;->getMinY()I

    move-result v10

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v5, v0

    move v11, v1

    :goto_0
    if-ge v11, v8, :cond_0

    add-int v2, v10, v11

    const/4 v4, 0x1

    move-object v0, p3

    move v1, v9

    move v3, v7

    .line 9
    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    add-int v3, p2, v11

    const/4 v5, 0x1

    move-object v1, p0

    move v2, p1

    move v4, v7

    move-object v6, v0

    .line 10
    invoke-virtual/range {v1 .. v6}, Ljava/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    add-int/lit8 v11, v11, 0x1

    move-object v5, v0

    goto :goto_0

    :cond_0
    return-void

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDataElements(IILjava/lang/Object;)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    sub-int/2addr p1, v1

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    sub-int/2addr p2, v1

    iget-object p0, p0, Ljava/awt/image/Raster;->dataBuffer:Ljava/awt/image/DataBuffer;

    invoke-virtual {v0, p1, p2, p3, p0}, Ljava/awt/image/SampleModel;->setDataElements(IILjava/lang/Object;Ljava/awt/image/DataBuffer;)V

    return-void
.end method

.method public setPixel(II[D)V
    .locals 2

    .line 3
    iget-object v0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    sub-int/2addr p1, v1

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    sub-int/2addr p2, v1

    iget-object p0, p0, Ljava/awt/image/Raster;->dataBuffer:Ljava/awt/image/DataBuffer;

    invoke-virtual {v0, p1, p2, p3, p0}, Ljava/awt/image/SampleModel;->setPixel(II[DLjava/awt/image/DataBuffer;)V

    return-void
.end method

.method public setPixel(II[F)V
    .locals 2

    .line 2
    iget-object v0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    sub-int/2addr p1, v1

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    sub-int/2addr p2, v1

    iget-object p0, p0, Ljava/awt/image/Raster;->dataBuffer:Ljava/awt/image/DataBuffer;

    invoke-virtual {v0, p1, p2, p3, p0}, Ljava/awt/image/SampleModel;->setPixel(II[FLjava/awt/image/DataBuffer;)V

    return-void
.end method

.method public setPixel(II[I)V
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    sub-int/2addr p1, v1

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    sub-int/2addr p2, v1

    iget-object p0, p0, Ljava/awt/image/Raster;->dataBuffer:Ljava/awt/image/DataBuffer;

    invoke-virtual {v0, p1, p2, p3, p0}, Ljava/awt/image/SampleModel;->setPixel(II[ILjava/awt/image/DataBuffer;)V

    return-void
.end method

.method public setPixels(IIII[D)V
    .locals 7

    .line 3
    iget-object v0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    sub-int v1, p1, v1

    iget p1, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    sub-int v2, p2, p1

    iget-object v6, p0, Ljava/awt/image/Raster;->dataBuffer:Ljava/awt/image/DataBuffer;

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Ljava/awt/image/SampleModel;->setPixels(IIII[DLjava/awt/image/DataBuffer;)V

    return-void
.end method

.method public setPixels(IIII[F)V
    .locals 7

    .line 2
    iget-object v0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    sub-int v1, p1, v1

    iget p1, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    sub-int v2, p2, p1

    iget-object v6, p0, Ljava/awt/image/Raster;->dataBuffer:Ljava/awt/image/DataBuffer;

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Ljava/awt/image/SampleModel;->setPixels(IIII[FLjava/awt/image/DataBuffer;)V

    return-void
.end method

.method public setPixels(IIII[I)V
    .locals 7

    .line 1
    iget-object v0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    sub-int v1, p1, v1

    iget p1, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    sub-int v2, p2, p1

    iget-object v6, p0, Ljava/awt/image/Raster;->dataBuffer:Ljava/awt/image/DataBuffer;

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Ljava/awt/image/SampleModel;->setPixels(IIII[ILjava/awt/image/DataBuffer;)V

    return-void
.end method

.method public setRect(IILjava/awt/image/Raster;)V
    .locals 12

    .line 2
    invoke-virtual {p3}, Ljava/awt/image/Raster;->getWidth()I

    move-result v0

    .line 3
    invoke-virtual {p3}, Ljava/awt/image/Raster;->getHeight()I

    move-result v1

    .line 4
    invoke-virtual {p3}, Ljava/awt/image/Raster;->getMinX()I

    move-result v2

    .line 5
    invoke-virtual {p3}, Ljava/awt/image/Raster;->getMinY()I

    move-result v3

    add-int/2addr p1, v2

    add-int/2addr p2, v3

    .line 6
    iget v4, p0, Ljava/awt/image/Raster;->minX:I

    if-ge p1, v4, :cond_0

    sub-int p1, v4, p1

    sub-int/2addr v0, p1

    add-int/2addr v2, p1

    move p1, v4

    .line 7
    :cond_0
    iget v5, p0, Ljava/awt/image/Raster;->minY:I

    if-ge p2, v5, :cond_1

    sub-int p2, v5, p2

    sub-int/2addr v1, p2

    add-int/2addr v3, p2

    move p2, v5

    :cond_1
    add-int v6, p1, v0

    .line 8
    iget v7, p0, Ljava/awt/image/Raster;->width:I

    add-int v8, v4, v7

    if-le v6, v8, :cond_2

    add-int/2addr v4, v7

    sub-int v0, v4, p1

    :cond_2
    add-int v4, p2, v1

    .line 9
    iget v6, p0, Ljava/awt/image/Raster;->height:I

    add-int v7, v5, v6

    if-le v4, v7, :cond_3

    add-int/2addr v5, v6

    sub-int v1, v5, p2

    :cond_3
    if-lez v0, :cond_8

    if-gtz v1, :cond_4

    goto/16 :goto_3

    .line 10
    :cond_4
    invoke-virtual {p3}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v4

    invoke-virtual {v4}, Ljava/awt/image/SampleModel;->getDataType()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v4, :cond_7

    const/4 v7, 0x1

    if-eq v4, v7, :cond_7

    const/4 v7, 0x2

    if-eq v4, v7, :cond_7

    const/4 v7, 0x3

    if-eq v4, v7, :cond_7

    const/4 v7, 0x4

    if-eq v4, v7, :cond_6

    const/4 v7, 0x5

    if-eq v4, v7, :cond_5

    goto/16 :goto_3

    :cond_5
    move v4, v5

    move-object v10, v6

    :goto_0
    if-ge v4, v1, :cond_8

    add-int v7, v3, v4

    const/4 v9, 0x1

    move-object v5, p3

    move v6, v2

    move v8, v0

    .line 11
    invoke-virtual/range {v5 .. v10}, Ljava/awt/image/Raster;->getPixels(IIII[D)[D

    move-result-object v11

    add-int v7, p2, v4

    move-object v5, p0

    move v6, p1

    move-object v10, v11

    .line 12
    invoke-virtual/range {v5 .. v10}, Ljava/awt/image/WritableRaster;->setPixels(IIII[D)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_6
    move v4, v5

    move-object v10, v6

    :goto_1
    if-ge v4, v1, :cond_8

    add-int v7, v3, v4

    const/4 v9, 0x1

    move-object v5, p3

    move v6, v2

    move v8, v0

    .line 13
    invoke-virtual/range {v5 .. v10}, Ljava/awt/image/Raster;->getPixels(IIII[F)[F

    move-result-object v11

    add-int v7, p2, v4

    move-object v5, p0

    move v6, p1

    move-object v10, v11

    .line 14
    invoke-virtual/range {v5 .. v10}, Ljava/awt/image/WritableRaster;->setPixels(IIII[F)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_7
    move v4, v5

    move-object v10, v6

    :goto_2
    if-ge v4, v1, :cond_8

    add-int v7, v3, v4

    const/4 v9, 0x1

    move-object v5, p3

    move v6, v2

    move v8, v0

    .line 15
    invoke-virtual/range {v5 .. v10}, Ljava/awt/image/Raster;->getPixels(IIII[I)[I

    move-result-object v11

    add-int v7, p2, v4

    move-object v5, p0

    move v6, p1

    move-object v10, v11

    .line 16
    invoke-virtual/range {v5 .. v10}, Ljava/awt/image/WritableRaster;->setPixels(IIII[I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    return-void
.end method

.method public setRect(Ljava/awt/image/Raster;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v0, p1}, Ljava/awt/image/WritableRaster;->setRect(IILjava/awt/image/Raster;)V

    return-void
.end method

.method public setSample(IIID)V
    .locals 7

    .line 3
    iget-object v0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    sub-int v1, p1, v1

    iget p1, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    sub-int v2, p2, p1

    iget-object v6, p0, Ljava/awt/image/Raster;->dataBuffer:Ljava/awt/image/DataBuffer;

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v6}, Ljava/awt/image/SampleModel;->setSample(IIIDLjava/awt/image/DataBuffer;)V

    return-void
.end method

.method public setSample(IIIF)V
    .locals 6

    .line 2
    iget-object v0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    sub-int v1, p1, v1

    iget p1, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    sub-int v2, p2, p1

    iget-object v5, p0, Ljava/awt/image/Raster;->dataBuffer:Ljava/awt/image/DataBuffer;

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/SampleModel;->setSample(IIIFLjava/awt/image/DataBuffer;)V

    return-void
.end method

.method public setSample(IIII)V
    .locals 6

    .line 1
    iget-object v0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    sub-int v1, p1, v1

    iget p1, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    sub-int v2, p2, p1

    iget-object v5, p0, Ljava/awt/image/Raster;->dataBuffer:Ljava/awt/image/DataBuffer;

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/SampleModel;->setSample(IIIILjava/awt/image/DataBuffer;)V

    return-void
.end method

.method public setSamples(IIIII[D)V
    .locals 8

    .line 3
    iget-object v0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    sub-int v1, p1, v1

    iget p1, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    sub-int v2, p2, p1

    iget-object v7, p0, Ljava/awt/image/Raster;->dataBuffer:Ljava/awt/image/DataBuffer;

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/SampleModel;->setSamples(IIIII[DLjava/awt/image/DataBuffer;)V

    return-void
.end method

.method public setSamples(IIIII[F)V
    .locals 8

    .line 2
    iget-object v0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    sub-int v1, p1, v1

    iget p1, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    sub-int v2, p2, p1

    iget-object v7, p0, Ljava/awt/image/Raster;->dataBuffer:Ljava/awt/image/DataBuffer;

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/SampleModel;->setSamples(IIIII[FLjava/awt/image/DataBuffer;)V

    return-void
.end method

.method public setSamples(IIIII[I)V
    .locals 8

    .line 1
    iget-object v0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    sub-int v1, p1, v1

    iget p1, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    sub-int v2, p2, p1

    iget-object v7, p0, Ljava/awt/image/Raster;->dataBuffer:Ljava/awt/image/DataBuffer;

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/SampleModel;->setSamples(IIIII[ILjava/awt/image/DataBuffer;)V

    return-void
.end method
