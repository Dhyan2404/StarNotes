.class public Ljava/awt/image/Raster;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected dataBuffer:Ljava/awt/image/DataBuffer;

.field protected height:I

.field protected minX:I

.field protected minY:I

.field protected numBands:I

.field protected numDataElements:I

.field protected parent:Ljava/awt/image/Raster;

.field protected sampleModel:Ljava/awt/image/SampleModel;

.field protected sampleModelTranslateX:I

.field protected sampleModelTranslateY:I

.field protected width:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Ljava/awt/image/ColorModel;->loadLibraries()V

    invoke-static {}, Ljava/awt/image/Raster;->initIDs()V

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
    invoke-direct/range {v0 .. v5}, Ljava/awt/image/Raster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Ljava/awt/image/Raster;)V

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
    invoke-direct/range {v0 .. v5}, Ljava/awt/image/Raster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Ljava/awt/image/Raster;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Ljava/awt/image/Raster;)V
    .locals 2

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    if-eqz p3, :cond_5

    if-eqz p4, :cond_5

    .line 10
    iput-object p1, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    .line 11
    iput-object p2, p0, Ljava/awt/image/Raster;->dataBuffer:Ljava/awt/image/DataBuffer;

    .line 12
    iget p2, p3, Ljava/awt/Rectangle;->x:I

    iput p2, p0, Ljava/awt/image/Raster;->minX:I

    .line 13
    iget v0, p3, Ljava/awt/Rectangle;->y:I

    iput v0, p0, Ljava/awt/image/Raster;->minY:I

    .line 14
    iget v1, p3, Ljava/awt/Rectangle;->width:I

    iput v1, p0, Ljava/awt/image/Raster;->width:I

    .line 15
    iget p3, p3, Ljava/awt/Rectangle;->height:I

    iput p3, p0, Ljava/awt/image/Raster;->height:I

    if-lez v1, :cond_3

    if-gtz p3, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr v1, p2

    if-lt v1, p2, :cond_2

    add-int/2addr p3, v0

    if-lt p3, v0, :cond_1

    .line 16
    iget p2, p4, Ljava/awt/Point;->x:I

    iput p2, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    .line 17
    iget p2, p4, Ljava/awt/Point;->y:I

    iput p2, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    .line 18
    invoke-virtual {p1}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result p2

    iput p2, p0, Ljava/awt/image/Raster;->numBands:I

    .line 19
    invoke-virtual {p1}, Ljava/awt/image/SampleModel;->getNumDataElements()I

    move-result p1

    iput p1, p0, Ljava/awt/image/Raster;->numDataElements:I

    .line 20
    iput-object p5, p0, Ljava/awt/image/Raster;->parent:Ljava/awt/image/Raster;

    return-void

    .line 21
    :cond_1
    new-instance p0, Ljava/awt/image/RasterFormatException;

    const-string p1, "overflow condition for Y coordinates of Raster"

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_2
    new-instance p0, Ljava/awt/image/RasterFormatException;

    const-string p1, "overflow condition for X coordinates of Raster"

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 23
    :cond_3
    :goto_0
    new-instance p1, Ljava/awt/image/RasterFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "negative or zero "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Ljava/awt/image/Raster;->width:I

    if-gtz p0, :cond_4

    const-string p0, "width"

    goto :goto_1

    :cond_4
    const-string p0, "height"

    :goto_1
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "SampleModel, dataBuffer, aRegion and sampleModelTranslate cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createBandedRaster(IIIILjava/awt/Point;)Ljava/awt/image/WritableRaster;
    .locals 8

    const/4 v0, 0x1

    if-lt p3, v0, :cond_1

    .line 1
    new-array v5, p3, [I

    .line 2
    new-array v6, p3, [I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p3, :cond_0

    .line 3
    aput v1, v5, v1

    .line 4
    aput v0, v6, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p1

    move-object v7, p4

    .line 5
    invoke-static/range {v1 .. v7}, Ljava/awt/image/Raster;->createBandedRaster(IIII[I[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Number of bands ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") must be greater than 0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createBandedRaster(IIII[I[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;
    .locals 8

    .line 7
    array-length v1, p5

    if-eqz p4, :cond_6

    const/4 v2, 0x0

    .line 8
    aget v3, p4, v2

    .line 9
    aget v2, p5, v2

    const/4 v4, 0x1

    move v6, v4

    :goto_0
    if-ge v6, v1, :cond_2

    .line 10
    aget v7, p4, v6

    if-le v7, v3, :cond_0

    move v3, v7

    .line 11
    :cond_0
    aget v7, p5, v6

    if-le v7, v2, :cond_1

    move v2, v7

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    add-int/2addr v3, v4

    add-int/lit8 v1, p2, -0x1

    mul-int/2addr v1, p3

    add-int/2addr v2, v1

    add-int/2addr v2, p1

    if-eqz p0, :cond_5

    if-eq p0, v4, :cond_4

    const/4 v1, 0x3

    if-ne p0, v1, :cond_3

    .line 12
    new-instance v0, Ljava/awt/image/DataBufferInt;

    invoke-direct {v0, v2, v3}, Ljava/awt/image/DataBufferInt;-><init>(II)V

    goto :goto_1

    .line 13
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported data type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_4
    new-instance v0, Ljava/awt/image/DataBufferUShort;

    invoke-direct {v0, v2, v3}, Ljava/awt/image/DataBufferUShort;-><init>(II)V

    goto :goto_1

    .line 15
    :cond_5
    new-instance v0, Ljava/awt/image/DataBufferByte;

    invoke-direct {v0, v2, v3}, Ljava/awt/image/DataBufferByte;-><init>(II)V

    :goto_1
    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    .line 16
    invoke-static/range {v0 .. v6}, Ljava/awt/image/Raster;->createBandedRaster(Ljava/awt/image/DataBuffer;III[I[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v0

    return-object v0

    .line 17
    :cond_6
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Bank indices array is null"

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static createBandedRaster(Ljava/awt/image/DataBuffer;III[I[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;
    .locals 9

    if-eqz p0, :cond_5

    if-nez p6, :cond_0

    .line 18
    new-instance p6, Ljava/awt/Point;

    const/4 v0, 0x0

    invoke-direct {p6, v0, v0}, Ljava/awt/Point;-><init>(II)V

    .line 19
    :cond_0
    invoke-virtual {p0}, Ljava/awt/image/DataBuffer;->getDataType()I

    move-result v7

    .line 20
    array-length v0, p4

    .line 21
    array-length v1, p5

    if-ne v1, v0, :cond_4

    .line 22
    new-instance v8, Ljava/awt/image/BandedSampleModel;

    move-object v0, v8

    move v1, v7

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ljava/awt/image/BandedSampleModel;-><init>(IIII[I[I)V

    if-eqz v7, :cond_3

    const/4 p1, 0x1

    if-eq v7, p1, :cond_2

    const/4 p1, 0x3

    if-ne v7, p1, :cond_1

    .line 23
    new-instance p1, Lsun/awt/image/SunWritableRaster;

    invoke-direct {p1, v8, p0, p6}, Lsun/awt/image/SunWritableRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V

    return-object p1

    .line 24
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported data type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 25
    :cond_2
    new-instance p1, Lsun/awt/image/ShortBandedRaster;

    invoke-direct {p1, v8, p0, p6}, Lsun/awt/image/ShortBandedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V

    return-object p1

    .line 26
    :cond_3
    new-instance p1, Lsun/awt/image/ByteBandedRaster;

    invoke-direct {p1, v8, p0, p6}, Lsun/awt/image/ByteBandedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V

    return-object p1

    .line 27
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "bankIndices.length != bandOffsets.length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 28
    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "DataBuffer cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createInterleavedRaster(IIIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;
    .locals 8

    add-int/lit8 v0, p2, -0x1

    mul-int/2addr v0, p3

    mul-int v1, p4, p1

    add-int/2addr v0, v1

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 4
    new-instance p0, Ljava/awt/image/DataBufferUShort;

    invoke-direct {p0, v0}, Ljava/awt/image/DataBufferUShort;-><init>(I)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported data type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_1
    new-instance p0, Ljava/awt/image/DataBufferByte;

    invoke-direct {p0, v0}, Ljava/awt/image/DataBufferByte;-><init>(I)V

    :goto_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 7
    invoke-static/range {v1 .. v7}, Ljava/awt/image/Raster;->createInterleavedRaster(Ljava/awt/image/DataBuffer;IIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public static createInterleavedRaster(IIIILjava/awt/Point;)Ljava/awt/image/WritableRaster;
    .locals 7

    .line 1
    new-array v5, p3, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_0

    .line 2
    aput v0, v5, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    mul-int v3, p1, p3

    move v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move-object v6, p4

    .line 3
    invoke-static/range {v0 .. v6}, Ljava/awt/image/Raster;->createInterleavedRaster(IIIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public static createInterleavedRaster(Ljava/awt/image/DataBuffer;IIII[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;
    .locals 9

    if-eqz p0, :cond_3

    if-nez p6, :cond_0

    .line 8
    new-instance p6, Ljava/awt/Point;

    const/4 v0, 0x0

    invoke-direct {p6, v0, v0}, Ljava/awt/Point;-><init>(II)V

    .line 9
    :cond_0
    invoke-virtual {p0}, Ljava/awt/image/DataBuffer;->getDataType()I

    move-result v7

    .line 10
    new-instance v8, Ljava/awt/image/PixelInterleavedSampleModel;

    move-object v0, v8

    move v1, v7

    move v2, p1

    move v3, p2

    move v4, p4

    move v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ljava/awt/image/PixelInterleavedSampleModel;-><init>(IIIII[I)V

    if-eqz v7, :cond_2

    const/4 p1, 0x1

    if-ne v7, p1, :cond_1

    .line 11
    new-instance p1, Lsun/awt/image/ShortInterleavedRaster;

    invoke-direct {p1, v8, p0, p6}, Lsun/awt/image/ShortInterleavedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V

    return-object p1

    .line 12
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported data type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_2
    new-instance p1, Lsun/awt/image/ByteInterleavedRaster;

    invoke-direct {p1, v8, p0, p6}, Lsun/awt/image/ByteInterleavedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V

    return-object p1

    .line 14
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "DataBuffer cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createPackedRaster(IIIIILjava/awt/Point;)Ljava/awt/image/WritableRaster;
    .locals 8

    const-string v0, ") must be greater than 0"

    if-lez p3, :cond_9

    if-lez p4, :cond_8

    const-string v0, "Unsupported data type "

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p3, v2, :cond_4

    .line 6
    new-array v3, p3, [I

    shl-int v4, v2, p4

    sub-int/2addr v4, v2

    add-int/lit8 v5, p3, -0x1

    mul-int/2addr v5, p4

    add-int v6, v5, p4

    .line 7
    invoke-static {p0}, Ljava/awt/image/DataBuffer;->getDataTypeSize(I)I

    move-result v7

    if-gt v6, v7, :cond_3

    if-eqz p0, :cond_1

    if-eq p0, v2, :cond_1

    if-ne p0, v1, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    if-ge v0, p3, :cond_2

    shl-int v1, v4, v5

    .line 9
    aput v1, v3, v0

    sub-int/2addr v5, p4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 10
    :cond_2
    invoke-static {p0, p1, p2, v3, p5}, Ljava/awt/image/Raster;->createPackedRaster(III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0

    .line 11
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "bitsPerBand("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") * bands is  greater than data type size."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    int-to-double v3, p1

    if-eqz p0, :cond_7

    if-eq p0, v2, :cond_6

    if-ne p0, v1, :cond_5

    .line 12
    new-instance p0, Ljava/awt/image/DataBufferInt;

    const/16 p3, 0x20

    div-int/2addr p3, p4

    int-to-double v0, p3

    div-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p3, v0

    mul-int/2addr p3, p2

    invoke-direct {p0, p3}, Ljava/awt/image/DataBufferInt;-><init>(I)V

    goto :goto_2

    .line 13
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_6
    new-instance p0, Ljava/awt/image/DataBufferUShort;

    const/16 p3, 0x10

    div-int/2addr p3, p4

    int-to-double v0, p3

    div-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p3, v0

    mul-int/2addr p3, p2

    invoke-direct {p0, p3}, Ljava/awt/image/DataBufferUShort;-><init>(I)V

    goto :goto_2

    .line 15
    :cond_7
    new-instance p0, Ljava/awt/image/DataBufferByte;

    const/16 p3, 0x8

    div-int/2addr p3, p4

    int-to-double v0, p3

    div-double/2addr v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int p3, v0

    mul-int/2addr p3, p2

    invoke-direct {p0, p3}, Ljava/awt/image/DataBufferByte;-><init>(I)V

    .line 16
    :goto_2
    invoke-static {p0, p1, p2, p4, p5}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;IIILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0

    .line 17
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Bits per band ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 18
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Number of bands ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createPackedRaster(III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;
    .locals 7

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    .line 1
    new-instance p0, Ljava/awt/image/DataBufferInt;

    mul-int v0, p1, p2

    invoke-direct {p0, v0}, Ljava/awt/image/DataBufferInt;-><init>(I)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported data type "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p0, Ljava/awt/image/DataBufferUShort;

    mul-int v0, p1, p2

    invoke-direct {p0, v0}, Ljava/awt/image/DataBufferUShort;-><init>(I)V

    goto :goto_0

    .line 4
    :cond_2
    new-instance p0, Ljava/awt/image/DataBufferByte;

    mul-int v0, p1, p2

    invoke-direct {p0, v0}, Ljava/awt/image/DataBufferByte;-><init>(I)V

    :goto_0
    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p1

    move-object v5, p3

    move-object v6, p4

    .line 5
    invoke-static/range {v1 .. v6}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public static createPackedRaster(Ljava/awt/image/DataBuffer;IIILjava/awt/Point;)Ljava/awt/image/WritableRaster;
    .locals 3

    if-eqz p0, :cond_6

    if-nez p4, :cond_0

    .line 27
    new-instance p4, Ljava/awt/Point;

    const/4 v0, 0x0

    invoke-direct {p4, v0, v0}, Ljava/awt/Point;-><init>(II)V

    .line 28
    :cond_0
    invoke-virtual {p0}, Ljava/awt/image/DataBuffer;->getDataType()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_2

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto :goto_0

    .line 29
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported data type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 30
    :cond_2
    :goto_0
    invoke-virtual {p0}, Ljava/awt/image/DataBuffer;->getNumBanks()I

    move-result v2

    if-ne v2, v1, :cond_5

    .line 31
    new-instance v2, Ljava/awt/image/MultiPixelPackedSampleModel;

    invoke-direct {v2, v0, p1, p2, p3}, Ljava/awt/image/MultiPixelPackedSampleModel;-><init>(IIII)V

    if-nez v0, :cond_4

    if-eq p3, v1, :cond_3

    const/4 p1, 0x2

    if-eq p3, p1, :cond_3

    const/4 p1, 0x4

    if-ne p3, p1, :cond_4

    .line 32
    :cond_3
    new-instance p1, Lsun/awt/image/BytePackedRaster;

    invoke-direct {p1, v2, p0, p4}, Lsun/awt/image/BytePackedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V

    return-object p1

    .line 33
    :cond_4
    new-instance p1, Lsun/awt/image/SunWritableRaster;

    invoke-direct {p1, v2, p0, p4}, Lsun/awt/image/SunWritableRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V

    return-object p1

    .line 34
    :cond_5
    new-instance p0, Ljava/awt/image/RasterFormatException;

    const-string p1, "DataBuffer for packed Rasters must only have 1 bank."

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_6
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "DataBuffer cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createPackedRaster(Ljava/awt/image/DataBuffer;III[ILjava/awt/Point;)Ljava/awt/image/WritableRaster;
    .locals 8

    if-eqz p0, :cond_4

    if-nez p5, :cond_0

    .line 19
    new-instance p5, Ljava/awt/Point;

    const/4 v0, 0x0

    invoke-direct {p5, v0, v0}, Ljava/awt/Point;-><init>(II)V

    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/awt/image/DataBuffer;->getDataType()I

    move-result v6

    .line 21
    new-instance v7, Ljava/awt/image/SinglePixelPackedSampleModel;

    move-object v0, v7

    move v1, v6

    move v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljava/awt/image/SinglePixelPackedSampleModel;-><init>(IIII[I)V

    if-eqz v6, :cond_3

    const/4 p1, 0x1

    if-eq v6, p1, :cond_2

    const/4 p1, 0x3

    if-ne v6, p1, :cond_1

    .line 22
    new-instance p1, Lsun/awt/image/IntegerInterleavedRaster;

    invoke-direct {p1, v7, p0, p5}, Lsun/awt/image/IntegerInterleavedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V

    return-object p1

    .line 23
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported data type "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 24
    :cond_2
    new-instance p1, Lsun/awt/image/ShortInterleavedRaster;

    invoke-direct {p1, v7, p0, p5}, Lsun/awt/image/ShortInterleavedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V

    return-object p1

    .line 25
    :cond_3
    new-instance p1, Lsun/awt/image/ByteInterleavedRaster;

    invoke-direct {p1, v7, p0, p5}, Lsun/awt/image/ByteInterleavedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V

    return-object p1

    .line 26
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "DataBuffer cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createRaster(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)Ljava/awt/image/Raster;
    .locals 4

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    new-instance p2, Ljava/awt/Point;

    invoke-direct {p2, v0, v0}, Ljava/awt/Point;-><init>(II)V

    :cond_0
    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getDataType()I

    move-result v1

    instance-of v2, p0, Ljava/awt/image/PixelInterleavedSampleModel;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Lsun/awt/image/ShortInterleavedRaster;

    invoke-direct {v0, p0, p1, p2}, Lsun/awt/image/ShortInterleavedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V

    return-object v0

    :cond_2
    new-instance v0, Lsun/awt/image/ByteInterleavedRaster;

    invoke-direct {v0, p0, p1, p2}, Lsun/awt/image/ByteInterleavedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V

    return-object v0

    :cond_3
    instance-of v2, p0, Ljava/awt/image/SinglePixelPackedSampleModel;

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    if-eq v1, v3, :cond_5

    const/4 v0, 0x3

    if-eq v1, v0, :cond_4

    goto :goto_0

    :cond_4
    new-instance v0, Lsun/awt/image/IntegerInterleavedRaster;

    invoke-direct {v0, p0, p1, p2}, Lsun/awt/image/IntegerInterleavedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V

    return-object v0

    :cond_5
    new-instance v0, Lsun/awt/image/ShortInterleavedRaster;

    invoke-direct {v0, p0, p1, p2}, Lsun/awt/image/ShortInterleavedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V

    return-object v0

    :cond_6
    new-instance v0, Lsun/awt/image/ByteInterleavedRaster;

    invoke-direct {v0, p0, p1, p2}, Lsun/awt/image/ByteInterleavedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V

    return-object v0

    :cond_7
    instance-of v2, p0, Ljava/awt/image/MultiPixelPackedSampleModel;

    if-eqz v2, :cond_8

    if-nez v1, :cond_8

    invoke-virtual {p0, v0}, Ljava/awt/image/SampleModel;->getSampleSize(I)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_8

    new-instance v0, Lsun/awt/image/BytePackedRaster;

    invoke-direct {v0, p0, p1, p2}, Lsun/awt/image/BytePackedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V

    return-object v0

    :cond_8
    :goto_0
    new-instance v0, Ljava/awt/image/Raster;

    invoke-direct {v0, p0, p1, p2}, Ljava/awt/image/Raster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V

    return-object v0

    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "SampleModel and DataBuffer cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Ljava/awt/Point;

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0}, Ljava/awt/Point;-><init>(II)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->createDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v0

    invoke-static {p0, v0, p1}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public static createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;
    .locals 4

    if-eqz p0, :cond_9

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Ljava/awt/Point;

    invoke-direct {p2, v0, v0}, Ljava/awt/Point;-><init>(II)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getDataType()I

    move-result v1

    .line 5
    instance-of v2, p0, Ljava/awt/image/PixelInterleavedSampleModel;

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v0, Lsun/awt/image/ShortInterleavedRaster;

    invoke-direct {v0, p0, p1, p2}, Lsun/awt/image/ShortInterleavedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V

    return-object v0

    .line 7
    :cond_2
    new-instance v0, Lsun/awt/image/ByteInterleavedRaster;

    invoke-direct {v0, p0, p1, p2}, Lsun/awt/image/ByteInterleavedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V

    return-object v0

    .line 8
    :cond_3
    instance-of v2, p0, Ljava/awt/image/SinglePixelPackedSampleModel;

    if-eqz v2, :cond_7

    if-eqz v1, :cond_6

    if-eq v1, v3, :cond_5

    const/4 v0, 0x3

    if-eq v1, v0, :cond_4

    goto :goto_0

    .line 9
    :cond_4
    new-instance v0, Lsun/awt/image/IntegerInterleavedRaster;

    invoke-direct {v0, p0, p1, p2}, Lsun/awt/image/IntegerInterleavedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V

    return-object v0

    .line 10
    :cond_5
    new-instance v0, Lsun/awt/image/ShortInterleavedRaster;

    invoke-direct {v0, p0, p1, p2}, Lsun/awt/image/ShortInterleavedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V

    return-object v0

    .line 11
    :cond_6
    new-instance v0, Lsun/awt/image/ByteInterleavedRaster;

    invoke-direct {v0, p0, p1, p2}, Lsun/awt/image/ByteInterleavedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V

    return-object v0

    .line 12
    :cond_7
    instance-of v2, p0, Ljava/awt/image/MultiPixelPackedSampleModel;

    if-eqz v2, :cond_8

    if-nez v1, :cond_8

    .line 13
    invoke-virtual {p0, v0}, Ljava/awt/image/SampleModel;->getSampleSize(I)I

    move-result v0

    const/16 v1, 0x8

    if-ge v0, v1, :cond_8

    .line 14
    new-instance v0, Lsun/awt/image/BytePackedRaster;

    invoke-direct {v0, p0, p1, p2}, Lsun/awt/image/BytePackedRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V

    return-object v0

    .line 15
    :cond_8
    :goto_0
    new-instance v0, Lsun/awt/image/SunWritableRaster;

    invoke-direct {v0, p0, p1, p2}, Lsun/awt/image/SunWritableRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Point;)V

    return-object v0

    .line 16
    :cond_9
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "SampleModel and DataBuffer cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static initIDs()V
    .locals 0

    return-void
.end method


# virtual methods
.method public createChild(IIIIII[I)Ljava/awt/image/Raster;
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

    if-nez p7, :cond_0

    iget-object p7, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    invoke-virtual {v0, p7}, Ljava/awt/image/SampleModel;->createSubsetSampleModel([I)Ljava/awt/image/SampleModel;

    move-result-object p7

    :goto_0
    sub-int p1, p5, p1

    sub-int p2, p6, p2

    new-instance v0, Ljava/awt/image/Raster;

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

    invoke-direct/range {p1 .. p6}, Ljava/awt/image/Raster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/image/DataBuffer;Ljava/awt/Rectangle;Ljava/awt/Point;Ljava/awt/image/Raster;)V

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

.method public createCompatibleWritableRaster()Ljava/awt/image/WritableRaster;
    .locals 3

    .line 1
    new-instance v0, Lsun/awt/image/SunWritableRaster;

    iget-object p0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    new-instance v1, Ljava/awt/Point;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Ljava/awt/Point;-><init>(II)V

    invoke-direct {v0, p0, v1}, Lsun/awt/image/SunWritableRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/Point;)V

    return-object v0
.end method

.method public createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;
    .locals 1

    if-lez p1, :cond_1

    if-gtz p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    invoke-virtual {p0, p1, p2}, Ljava/awt/image/SampleModel;->createCompatibleSampleModel(II)Ljava/awt/image/SampleModel;

    move-result-object p0

    .line 3
    new-instance p1, Lsun/awt/image/SunWritableRaster;

    new-instance p2, Ljava/awt/Point;

    const/4 v0, 0x0

    invoke-direct {p2, v0, v0}, Ljava/awt/Point;-><init>(II)V

    invoke-direct {p1, p0, p2}, Lsun/awt/image/SunWritableRaster;-><init>(Ljava/awt/image/SampleModel;Ljava/awt/Point;)V

    return-object p1

    .line 4
    :cond_1
    :goto_0
    new-instance p0, Ljava/awt/image/RasterFormatException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "negative "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-gtz p1, :cond_2

    const-string p1, "width"

    goto :goto_1

    :cond_2
    const-string p1, "height"

    :goto_1
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createCompatibleWritableRaster(IIII)Ljava/awt/image/WritableRaster;
    .locals 8

    .line 7
    invoke-virtual {p0, p3, p4}, Ljava/awt/image/Raster;->createCompatibleWritableRaster(II)Ljava/awt/image/WritableRaster;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x0

    move v3, p3

    move v4, p4

    move v5, p1

    move v6, p2

    .line 8
    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public createCompatibleWritableRaster(Ljava/awt/Rectangle;)Ljava/awt/image/WritableRaster;
    .locals 3

    if-eqz p1, :cond_0

    .line 5
    iget v0, p1, Ljava/awt/Rectangle;->x:I

    iget v1, p1, Ljava/awt/Rectangle;->y:I

    iget v2, p1, Ljava/awt/Rectangle;->width:I

    iget p1, p1, Ljava/awt/Rectangle;->height:I

    invoke-virtual {p0, v0, v1, v2, p1}, Ljava/awt/image/Raster;->createCompatibleWritableRaster(IIII)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Rect cannot be null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public createTranslatedChild(II)Ljava/awt/image/Raster;
    .locals 8

    iget v1, p0, Ljava/awt/image/Raster;->minX:I

    iget v2, p0, Ljava/awt/image/Raster;->minY:I

    iget v3, p0, Ljava/awt/image/Raster;->width:I

    iget v4, p0, Ljava/awt/image/Raster;->height:I

    const/4 v7, 0x0

    move-object v0, p0

    move v5, p1

    move v6, p2

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/Raster;->createChild(IIIIII[I)Ljava/awt/image/Raster;

    move-result-object p0

    return-object p0
.end method

.method public getBounds()Ljava/awt/Rectangle;
    .locals 4

    new-instance v0, Ljava/awt/Rectangle;

    iget v1, p0, Ljava/awt/image/Raster;->minX:I

    iget v2, p0, Ljava/awt/image/Raster;->minY:I

    iget v3, p0, Ljava/awt/image/Raster;->width:I

    iget p0, p0, Ljava/awt/image/Raster;->height:I

    invoke-direct {v0, v1, v2, v3, p0}, Ljava/awt/Rectangle;-><init>(IIII)V

    return-object v0
.end method

.method public getDataBuffer()Ljava/awt/image/DataBuffer;
    .locals 0

    iget-object p0, p0, Ljava/awt/image/Raster;->dataBuffer:Ljava/awt/image/DataBuffer;

    return-object p0
.end method

.method public getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;
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

    invoke-virtual/range {v0 .. v6}, Ljava/awt/image/SampleModel;->getDataElements(IIIILjava/lang/Object;Ljava/awt/image/DataBuffer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getDataElements(IILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    sub-int/2addr p1, v1

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    sub-int/2addr p2, v1

    iget-object p0, p0, Ljava/awt/image/Raster;->dataBuffer:Ljava/awt/image/DataBuffer;

    invoke-virtual {v0, p1, p2, p3, p0}, Ljava/awt/image/SampleModel;->getDataElements(IILjava/lang/Object;Ljava/awt/image/DataBuffer;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Ljava/awt/image/Raster;->height:I

    return p0
.end method

.method public final getMinX()I
    .locals 0

    iget p0, p0, Ljava/awt/image/Raster;->minX:I

    return p0
.end method

.method public final getMinY()I
    .locals 0

    iget p0, p0, Ljava/awt/image/Raster;->minY:I

    return p0
.end method

.method public final getNumBands()I
    .locals 0

    iget p0, p0, Ljava/awt/image/Raster;->numBands:I

    return p0
.end method

.method public final getNumDataElements()I
    .locals 0

    iget-object p0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getNumDataElements()I

    move-result p0

    return p0
.end method

.method public getParent()Ljava/awt/image/Raster;
    .locals 0

    iget-object p0, p0, Ljava/awt/image/Raster;->parent:Ljava/awt/image/Raster;

    return-object p0
.end method

.method public getPixel(II[D)[D
    .locals 2

    .line 3
    iget-object v0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    sub-int/2addr p1, v1

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    sub-int/2addr p2, v1

    iget-object p0, p0, Ljava/awt/image/Raster;->dataBuffer:Ljava/awt/image/DataBuffer;

    invoke-virtual {v0, p1, p2, p3, p0}, Ljava/awt/image/SampleModel;->getPixel(II[DLjava/awt/image/DataBuffer;)[D

    move-result-object p0

    return-object p0
.end method

.method public getPixel(II[F)[F
    .locals 2

    .line 2
    iget-object v0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    sub-int/2addr p1, v1

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    sub-int/2addr p2, v1

    iget-object p0, p0, Ljava/awt/image/Raster;->dataBuffer:Ljava/awt/image/DataBuffer;

    invoke-virtual {v0, p1, p2, p3, p0}, Ljava/awt/image/SampleModel;->getPixel(II[FLjava/awt/image/DataBuffer;)[F

    move-result-object p0

    return-object p0
.end method

.method public getPixel(II[I)[I
    .locals 2

    .line 1
    iget-object v0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    sub-int/2addr p1, v1

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    sub-int/2addr p2, v1

    iget-object p0, p0, Ljava/awt/image/Raster;->dataBuffer:Ljava/awt/image/DataBuffer;

    invoke-virtual {v0, p1, p2, p3, p0}, Ljava/awt/image/SampleModel;->getPixel(II[ILjava/awt/image/DataBuffer;)[I

    move-result-object p0

    return-object p0
.end method

.method public getPixels(IIII[D)[D
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

    invoke-virtual/range {v0 .. v6}, Ljava/awt/image/SampleModel;->getPixels(IIII[DLjava/awt/image/DataBuffer;)[D

    move-result-object p0

    return-object p0
.end method

.method public getPixels(IIII[F)[F
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

    invoke-virtual/range {v0 .. v6}, Ljava/awt/image/SampleModel;->getPixels(IIII[FLjava/awt/image/DataBuffer;)[F

    move-result-object p0

    return-object p0
.end method

.method public getPixels(IIII[I)[I
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

    invoke-virtual/range {v0 .. v6}, Ljava/awt/image/SampleModel;->getPixels(IIII[ILjava/awt/image/DataBuffer;)[I

    move-result-object p0

    return-object p0
.end method

.method public getSample(III)I
    .locals 2

    iget-object v0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    sub-int/2addr p1, v1

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    sub-int/2addr p2, v1

    iget-object p0, p0, Ljava/awt/image/Raster;->dataBuffer:Ljava/awt/image/DataBuffer;

    invoke-virtual {v0, p1, p2, p3, p0}, Ljava/awt/image/SampleModel;->getSample(IIILjava/awt/image/DataBuffer;)I

    move-result p0

    return p0
.end method

.method public getSampleDouble(III)D
    .locals 2

    iget-object v0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    sub-int/2addr p1, v1

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    sub-int/2addr p2, v1

    iget-object p0, p0, Ljava/awt/image/Raster;->dataBuffer:Ljava/awt/image/DataBuffer;

    invoke-virtual {v0, p1, p2, p3, p0}, Ljava/awt/image/SampleModel;->getSampleDouble(IIILjava/awt/image/DataBuffer;)D

    move-result-wide p0

    return-wide p0
.end method

.method public getSampleFloat(III)F
    .locals 2

    iget-object v0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    sub-int/2addr p1, v1

    iget v1, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    sub-int/2addr p2, v1

    iget-object p0, p0, Ljava/awt/image/Raster;->dataBuffer:Ljava/awt/image/DataBuffer;

    invoke-virtual {v0, p1, p2, p3, p0}, Ljava/awt/image/SampleModel;->getSampleFloat(IIILjava/awt/image/DataBuffer;)F

    move-result p0

    return p0
.end method

.method public getSampleModel()Ljava/awt/image/SampleModel;
    .locals 0

    iget-object p0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    return-object p0
.end method

.method public final getSampleModelTranslateX()I
    .locals 0

    iget p0, p0, Ljava/awt/image/Raster;->sampleModelTranslateX:I

    return p0
.end method

.method public final getSampleModelTranslateY()I
    .locals 0

    iget p0, p0, Ljava/awt/image/Raster;->sampleModelTranslateY:I

    return p0
.end method

.method public getSamples(IIIII[D)[D
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

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/SampleModel;->getSamples(IIIII[DLjava/awt/image/DataBuffer;)[D

    move-result-object p0

    return-object p0
.end method

.method public getSamples(IIIII[F)[F
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

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/SampleModel;->getSamples(IIIII[FLjava/awt/image/DataBuffer;)[F

    move-result-object p0

    return-object p0
.end method

.method public getSamples(IIIII[I)[I
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

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/SampleModel;->getSamples(IIIII[ILjava/awt/image/DataBuffer;)[I

    move-result-object p0

    return-object p0
.end method

.method public final getTransferType()I
    .locals 0

    iget-object p0, p0, Ljava/awt/image/Raster;->sampleModel:Ljava/awt/image/SampleModel;

    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getTransferType()I

    move-result p0

    return p0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Ljava/awt/image/Raster;->width:I

    return p0
.end method
