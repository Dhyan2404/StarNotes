.class public Ljava/awt/image/ComponentSampleModel;
.super Ljava/awt/image/SampleModel;
.source "SourceFile"


# instance fields
.field protected bandOffsets:[I

.field protected bankIndices:[I

.field protected numBands:I

.field protected numBanks:I

.field protected pixelStride:I

.field protected scanlineStride:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Ljava/awt/image/ColorModel;->loadLibraries()V

    invoke-static {}, Ljava/awt/image/ComponentSampleModel;->initIDs()V

    return-void
.end method

.method public constructor <init>(IIIII[I)V
    .locals 1

    .line 1
    array-length v0, p6

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/awt/image/SampleModel;-><init>(IIII)V

    const/4 p2, 0x1

    .line 2
    iput p2, p0, Ljava/awt/image/ComponentSampleModel;->numBands:I

    .line 3
    iput p2, p0, Ljava/awt/image/ComponentSampleModel;->numBanks:I

    .line 4
    iput p1, p0, Ljava/awt/image/SampleModel;->dataType:I

    .line 5
    iput p4, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    .line 6
    iput p5, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    .line 7
    invoke-virtual {p6}, [I->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    iput-object p3, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    .line 8
    array-length p3, p3

    iput p3, p0, Ljava/awt/image/ComponentSampleModel;->numBands:I

    if-ltz p4, :cond_4

    if-ltz p5, :cond_3

    if-lt p3, p2, :cond_2

    if-ltz p1, :cond_1

    const/4 p2, 0x5

    if-gt p1, p2, :cond_1

    .line 9
    new-array p1, p3, [I

    iput-object p1, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    const/4 p1, 0x0

    move p2, p1

    .line 10
    :goto_0
    iget p3, p0, Ljava/awt/image/ComponentSampleModel;->numBands:I

    if-ge p2, p3, :cond_0

    .line 11
    iget-object p3, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    aput p1, p3, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-direct {p0}, Ljava/awt/image/ComponentSampleModel;->verify()V

    return-void

    .line 13
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported dataType."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 14
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Must have at least one band."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Scanline stride must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 16
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pixel stride must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(IIIII[I[I)V
    .locals 1

    .line 17
    array-length v0, p7

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/awt/image/SampleModel;-><init>(IIII)V

    const/4 p2, 0x1

    .line 18
    iput p2, p0, Ljava/awt/image/ComponentSampleModel;->numBands:I

    .line 19
    iput p2, p0, Ljava/awt/image/ComponentSampleModel;->numBanks:I

    .line 20
    iput p1, p0, Ljava/awt/image/SampleModel;->dataType:I

    .line 21
    iput p4, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    .line 22
    iput p5, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    .line 23
    invoke-virtual {p7}, [I->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    iput-object p3, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    .line 24
    invoke-virtual {p6}, [I->clone()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [I

    iput-object p3, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    if-ltz p4, :cond_7

    if-ltz p5, :cond_6

    if-ltz p1, :cond_5

    const/4 p4, 0x5

    if-gt p1, p4, :cond_5

    const/4 p1, 0x0

    .line 25
    aget p1, p3, p1

    const-string p3, ")"

    if-ltz p1, :cond_4

    move p4, p2

    .line 26
    :goto_0
    iget-object p5, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    array-length p6, p5

    if-ge p4, p6, :cond_2

    .line 27
    aget p5, p5, p4

    if-le p5, p1, :cond_0

    move p1, p5

    goto :goto_1

    :cond_0
    if-ltz p5, :cond_1

    :goto_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 28
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Index of bank "

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " is less than 0 ("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    add-int/2addr p1, p2

    .line 29
    iput p1, p0, Ljava/awt/image/ComponentSampleModel;->numBanks:I

    .line 30
    iget-object p1, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    array-length p2, p1

    iput p2, p0, Ljava/awt/image/ComponentSampleModel;->numBands:I

    .line 31
    array-length p1, p1

    array-length p2, p5

    if-ne p1, p2, :cond_3

    .line 32
    invoke-direct {p0}, Ljava/awt/image/ComponentSampleModel;->verify()V

    return-void

    .line 33
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Length of bandOffsets must equal length of bankIndices."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 34
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Index of bank 0 is less than 0 ("

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 35
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Unsupported dataType."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 36
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Scanline stride must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 37
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Pixel stride must be >= 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getBufferSize()I
    .locals 8

    iget-object v0, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x1

    move v2, v1

    :goto_0
    iget-object v3, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget v3, v3, v2

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-ltz v0, :cond_5

    const v2, 0x7ffffffe

    if-gt v0, v2, :cond_5

    iget v2, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    const-string v3, "Invalid pixel stride"

    if-ltz v2, :cond_4

    iget v4, p0, Ljava/awt/image/SampleModel;->width:I

    const v5, 0x7fffffff

    div-int v6, v5, v4

    if-gt v2, v6, :cond_4

    iget v6, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    if-ltz v6, :cond_3

    iget p0, p0, Ljava/awt/image/SampleModel;->height:I

    div-int v7, v5, p0

    if-gt v6, v7, :cond_3

    add-int/2addr v0, v1

    sub-int/2addr v4, v1

    mul-int/2addr v2, v4

    sub-int v4, v5, v0

    if-gt v2, v4, :cond_2

    add-int/2addr v0, v2

    sub-int/2addr p0, v1

    mul-int/2addr v6, p0

    sub-int/2addr v5, v0

    if-gt v6, v5, :cond_1

    add-int/2addr v0, v6

    return v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid scan stride"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid scanline stride"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Invalid band offset"

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static initIDs()V
    .locals 0

    return-void
.end method

.method private verify()V
    .locals 0

    invoke-direct {p0}, Ljava/awt/image/ComponentSampleModel;->getBufferSize()I

    return-void
.end method


# virtual methods
.method public createCompatibleSampleModel(II)Ljava/awt/image/SampleModel;
    .locals 10

    iget-object v1, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    const/4 v3, 0x1

    move v4, v1

    move v5, v3

    :goto_0
    iget-object v6, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    array-length v7, v6

    if-ge v5, v7, :cond_0

    aget v6, v6, v5

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v6, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v6, v6, v5

    invoke-static {v1, v6}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v4

    array-length v5, v6

    iget v6, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    iget v7, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v6, v7, :cond_4

    if-le v6, v1, :cond_3

    if-le v7, v1, :cond_2

    iget-object v6, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    array-length v6, v6

    new-array v6, v6, [I

    move v7, v2

    :goto_1
    if-ge v7, v5, :cond_1

    iget-object v8, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v8, v8, v7

    sub-int/2addr v8, v4

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v7, v1, 0x1

    mul-int v1, v7, p2

    goto :goto_4

    :cond_2
    iget-object v1, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    mul-int v3, v7, p2

    invoke-virtual {p0, v1, v3}, Ljava/awt/image/ComponentSampleModel;->orderBands([II)[I

    move-result-object v1

    mul-int v3, v5, v7

    mul-int v6, v3, p2

    goto :goto_2

    :cond_3
    mul-int v6, v7, p2

    iget-object v1, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    mul-int v3, v6, p1

    invoke-virtual {p0, v1, v3}, Ljava/awt/image/ComponentSampleModel;->orderBands([II)[I

    move-result-object v1

    :goto_2
    move-object v8, v1

    goto :goto_5

    :cond_4
    if-le v6, v1, :cond_6

    iget-object v6, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    array-length v6, v6

    new-array v6, v6, [I

    move v7, v2

    :goto_3
    if-ge v7, v5, :cond_5

    iget-object v8, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v8, v8, v7

    sub-int/2addr v8, v4

    aput v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_5
    add-int/2addr v1, v3

    mul-int v7, v1, p1

    :goto_4
    move-object v8, v6

    move v6, v1

    goto :goto_5

    :cond_6
    if-le v7, v1, :cond_7

    iget-object v1, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    mul-int v3, v6, p1

    invoke-virtual {p0, v1, v3}, Ljava/awt/image/ComponentSampleModel;->orderBands([II)[I

    move-result-object v1

    mul-int v3, v5, v6

    mul-int v7, v3, p1

    goto :goto_2

    :cond_7
    mul-int v7, v6, p1

    iget-object v1, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    mul-int v3, v7, p2

    invoke-virtual {p0, v1, v3}, Ljava/awt/image/ComponentSampleModel;->orderBands([II)[I

    move-result-object v1

    goto :goto_2

    :goto_5
    iget v1, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    if-gez v1, :cond_8

    mul-int v1, v7, p2

    add-int/2addr v1, v2

    mul-int/lit8 v7, v7, -0x1

    goto :goto_6

    :cond_8
    move v1, v2

    :goto_6
    iget v3, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    if-gez v3, :cond_9

    mul-int v3, v6, p1

    add-int/2addr v1, v3

    mul-int/lit8 v6, v6, -0x1

    :cond_9
    move v4, v6

    :goto_7
    if-ge v2, v5, :cond_a

    aget v3, v8, v2

    add-int/2addr v3, v1

    aput v3, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    new-instance v9, Ljava/awt/image/ComponentSampleModel;

    iget v1, p0, Ljava/awt/image/SampleModel;->dataType:I

    iget-object v6, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    move-object v0, v9

    move v2, p1

    move v3, p2

    move v5, v7

    move-object v7, v8

    invoke-direct/range {v0 .. v7}, Ljava/awt/image/ComponentSampleModel;-><init>(IIIII[I[I)V

    return-object v9
.end method

.method public createDataBuffer()Ljava/awt/image/DataBuffer;
    .locals 3

    invoke-direct {p0}, Ljava/awt/image/ComponentSampleModel;->getBufferSize()I

    move-result v0

    iget v1, p0, Ljava/awt/image/SampleModel;->dataType:I

    if-eqz v1, :cond_5

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-eq v1, v2, :cond_2

    const/4 v2, 0x4

    if-eq v1, v2, :cond_1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_0

    const/4 p0, 0x0

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/awt/image/DataBufferDouble;

    iget p0, p0, Ljava/awt/image/ComponentSampleModel;->numBanks:I

    invoke-direct {v1, v0, p0}, Ljava/awt/image/DataBufferDouble;-><init>(II)V

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/awt/image/DataBufferFloat;

    iget p0, p0, Ljava/awt/image/ComponentSampleModel;->numBanks:I

    invoke-direct {v1, v0, p0}, Ljava/awt/image/DataBufferFloat;-><init>(II)V

    goto :goto_0

    :cond_2
    new-instance v1, Ljava/awt/image/DataBufferInt;

    iget p0, p0, Ljava/awt/image/ComponentSampleModel;->numBanks:I

    invoke-direct {v1, v0, p0}, Ljava/awt/image/DataBufferInt;-><init>(II)V

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/awt/image/DataBufferShort;

    iget p0, p0, Ljava/awt/image/ComponentSampleModel;->numBanks:I

    invoke-direct {v1, v0, p0}, Ljava/awt/image/DataBufferShort;-><init>(II)V

    goto :goto_0

    :cond_4
    new-instance v1, Ljava/awt/image/DataBufferUShort;

    iget p0, p0, Ljava/awt/image/ComponentSampleModel;->numBanks:I

    invoke-direct {v1, v0, p0}, Ljava/awt/image/DataBufferUShort;-><init>(II)V

    goto :goto_0

    :cond_5
    new-instance v1, Ljava/awt/image/DataBufferByte;

    iget p0, p0, Ljava/awt/image/ComponentSampleModel;->numBanks:I

    invoke-direct {v1, v0, p0}, Ljava/awt/image/DataBufferByte;-><init>(II)V

    :goto_0
    move-object p0, v1

    :goto_1
    return-object p0
.end method

.method public createSubsetSampleModel([I)Ljava/awt/image/SampleModel;
    .locals 9

    array-length v0, p1

    iget-object v1, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    array-length v1, v1

    if-gt v0, v1, :cond_1

    array-length v0, p1

    new-array v7, v0, [I

    array-length v0, p1

    new-array v8, v0, [I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v2, p1, v0

    aget v1, v1, v2

    aput v1, v7, v0

    iget-object v1, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, p1, v0

    aget v1, v1, v2

    aput v1, v8, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/awt/image/ComponentSampleModel;

    iget v2, p0, Ljava/awt/image/SampleModel;->dataType:I

    iget v3, p0, Ljava/awt/image/SampleModel;->width:I

    iget v4, p0, Ljava/awt/image/SampleModel;->height:I

    iget v5, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    iget v6, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    move-object v1, p1

    invoke-direct/range {v1 .. v8}, Ljava/awt/image/ComponentSampleModel;-><init>(IIIII[I[I)V

    return-object p1

    :cond_1
    new-instance p1, Ljava/awt/image/RasterFormatException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "There are only "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    array-length p0, p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " bands"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/awt/image/RasterFormatException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    instance-of v1, p1, Ljava/awt/image/ComponentSampleModel;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    check-cast p1, Ljava/awt/image/ComponentSampleModel;

    iget v1, p0, Ljava/awt/image/SampleModel;->width:I

    iget v2, p1, Ljava/awt/image/SampleModel;->width:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Ljava/awt/image/SampleModel;->height:I

    iget v2, p1, Ljava/awt/image/SampleModel;->height:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Ljava/awt/image/ComponentSampleModel;->numBands:I

    iget v2, p1, Ljava/awt/image/ComponentSampleModel;->numBands:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Ljava/awt/image/SampleModel;->dataType:I

    iget v2, p1, Ljava/awt/image/SampleModel;->dataType:I

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    iget-object v2, p1, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    iget-object v2, p1, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Ljava/awt/image/ComponentSampleModel;->numBands:I

    iget v2, p1, Ljava/awt/image/ComponentSampleModel;->numBands:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Ljava/awt/image/ComponentSampleModel;->numBanks:I

    iget v2, p1, Ljava/awt/image/ComponentSampleModel;->numBanks:I

    if-ne v1, v2, :cond_1

    iget v1, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    iget v2, p1, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    if-ne v1, v2, :cond_1

    iget p0, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    iget p1, p1, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    if-ne p0, p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0
.end method

.method public final getBandOffsets()[I
    .locals 0

    iget-object p0, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public final getBankIndices()[I
    .locals 0

    iget-object p0, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public getDataElements(IILjava/lang/Object;Ljava/awt/image/DataBuffer;)Ljava/lang/Object;
    .locals 4

    if-ltz p1, :cond_b

    if-ltz p2, :cond_b

    iget v0, p0, Ljava/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_b

    iget v0, p0, Ljava/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_b

    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getTransferType()I

    move-result v0

    invoke-virtual {p0}, Ljava/awt/image/ComponentSampleModel;->getNumDataElements()I

    move-result v1

    iget v2, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v2

    iget v2, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v2

    add-int/2addr p2, p1

    const/4 p1, 0x0

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    if-eq v0, v2, :cond_6

    const/4 v2, 0x2

    if-eq v0, v2, :cond_6

    const/4 v2, 0x3

    if-eq v0, v2, :cond_4

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    if-nez p3, :cond_1

    new-array p3, v1, [D

    goto :goto_0

    :cond_1
    check-cast p3, [D

    :goto_0
    if-ge p1, v1, :cond_a

    iget-object v0, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    invoke-virtual {p4, v0, v2}, Ljava/awt/image/DataBuffer;->getElemDouble(II)D

    move-result-wide v2

    aput-wide v2, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    if-nez p3, :cond_3

    new-array p3, v1, [F

    goto :goto_1

    :cond_3
    check-cast p3, [F

    :goto_1
    if-ge p1, v1, :cond_a

    iget-object v0, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    invoke-virtual {p4, v0, v2}, Ljava/awt/image/DataBuffer;->getElemFloat(II)F

    move-result v0

    aput v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_4
    if-nez p3, :cond_5

    new-array p3, v1, [I

    goto :goto_2

    :cond_5
    check-cast p3, [I

    :goto_2
    if-ge p1, v1, :cond_a

    iget-object v0, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    invoke-virtual {p4, v0, v2}, Ljava/awt/image/DataBuffer;->getElem(II)I

    move-result v0

    aput v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_6
    if-nez p3, :cond_7

    new-array p3, v1, [S

    goto :goto_3

    :cond_7
    check-cast p3, [S

    :goto_3
    if-ge p1, v1, :cond_a

    iget-object v0, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    invoke-virtual {p4, v0, v2}, Ljava/awt/image/DataBuffer;->getElem(II)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_8
    if-nez p3, :cond_9

    new-array p3, v1, [B

    goto :goto_4

    :cond_9
    check-cast p3, [B

    :goto_4
    if-ge p1, v1, :cond_a

    iget-object v0, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    invoke-virtual {p4, v0, v2}, Ljava/awt/image/DataBuffer;->getElem(II)I

    move-result v0

    int-to-byte v0, v0

    aput-byte v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_a
    :goto_5
    return-object p3

    :cond_b
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getNumDataElements()I
    .locals 0

    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result p0

    return p0
.end method

.method public getOffset(II)I
    .locals 1

    .line 1
    iget v0, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    iget v0, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    iget-object p0, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    const/4 p1, 0x0

    aget p0, p0, p1

    add-int/2addr p2, p0

    return p2
.end method

.method public getOffset(III)I
    .locals 1

    .line 2
    iget v0, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    iget v0, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    iget-object p0, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p0, p0, p3

    add-int/2addr p2, p0

    return p2
.end method

.method public getPixel(II[ILjava/awt/image/DataBuffer;)[I
    .locals 2

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    iget v0, p0, Ljava/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_2

    iget v0, p0, Ljava/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_2

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget p3, p0, Ljava/awt/image/ComponentSampleModel;->numBands:I

    new-array p3, p3, [I

    :goto_0
    iget v0, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    iget v0, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    const/4 p1, 0x0

    :goto_1
    iget v0, p0, Ljava/awt/image/ComponentSampleModel;->numBands:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v1, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v1, v1, p1

    add-int/2addr v1, p2

    invoke-virtual {p4, v0, v1}, Ljava/awt/image/DataBuffer;->getElem(II)I

    move-result v0

    aput v0, p3, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_1
    return-object p3

    :cond_2
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getPixelStride()I
    .locals 0

    iget p0, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    return p0
.end method

.method public getPixels(IIII[ILjava/awt/image/DataBuffer;)[I
    .locals 8

    add-int v0, p1, p3

    add-int v1, p2, p4

    if-ltz p1, :cond_4

    iget v2, p0, Ljava/awt/image/SampleModel;->width:I

    if-ge p1, v2, :cond_4

    if-gt p3, v2, :cond_4

    if-ltz v0, :cond_4

    if-gt v0, v2, :cond_4

    if-ltz p2, :cond_4

    iget v0, p0, Ljava/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_4

    if-gt p2, v0, :cond_4

    if-ltz v1, :cond_4

    if-gt v1, v0, :cond_4

    if-eqz p5, :cond_0

    goto :goto_0

    :cond_0
    mul-int p5, p3, p4

    iget v0, p0, Ljava/awt/image/ComponentSampleModel;->numBands:I

    mul-int/2addr p5, v0

    new-array p5, p5, [I

    :goto_0
    iget v0, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    iget v0, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

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

    :goto_3
    iget v5, p0, Ljava/awt/image/ComponentSampleModel;->numBands:I

    if-ge v4, v5, :cond_1

    add-int/lit8 v5, v1, 0x1

    iget-object v6, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v6, v6, v4

    iget-object v7, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v7, v7, v4

    add-int/2addr v7, v3

    invoke-virtual {p6, v6, v7}, Ljava/awt/image/DataBuffer;->getElem(II)I

    move-result v6

    aput v6, p5, v1

    add-int/lit8 v4, v4, 0x1

    move v1, v5

    goto :goto_3

    :cond_1
    iget v4, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget v2, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    add-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-object p5

    :cond_4
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSample(IIILjava/awt/image/DataBuffer;)I
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Ljava/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Ljava/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p3

    iget v1, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v1

    iget v1, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v1

    add-int/2addr p2, p1

    iget-object p0, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p0, p0, p3

    add-int/2addr p2, p0

    invoke-virtual {p4, v0, p2}, Ljava/awt/image/DataBuffer;->getElem(II)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSampleDouble(IIILjava/awt/image/DataBuffer;)D
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Ljava/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Ljava/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p3

    iget v1, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v1

    iget v1, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v1

    add-int/2addr p2, p1

    iget-object p0, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p0, p0, p3

    add-int/2addr p2, p0

    invoke-virtual {p4, v0, p2}, Ljava/awt/image/DataBuffer;->getElemDouble(II)D

    move-result-wide p0

    return-wide p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSampleFloat(IIILjava/awt/image/DataBuffer;)F
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    iget v0, p0, Ljava/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Ljava/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_0

    iget-object v0, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p3

    iget v1, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v1

    iget v1, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v1

    add-int/2addr p2, p1

    iget-object p0, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p0, p0, p3

    add-int/2addr p2, p0

    invoke-virtual {p4, v0, p2}, Ljava/awt/image/DataBuffer;->getElemFloat(II)F

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getSampleSize(I)I
    .locals 0

    .line 5
    iget p0, p0, Ljava/awt/image/SampleModel;->dataType:I

    invoke-static {p0}, Ljava/awt/image/DataBuffer;->getDataTypeSize(I)I

    move-result p0

    return p0
.end method

.method public final getSampleSize()[I
    .locals 4

    .line 1
    iget v0, p0, Ljava/awt/image/ComponentSampleModel;->numBands:I

    new-array v0, v0, [I

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v1}, Ljava/awt/image/ComponentSampleModel;->getSampleSize(I)I

    move-result v2

    .line 3
    :goto_0
    iget v3, p0, Ljava/awt/image/ComponentSampleModel;->numBands:I

    if-ge v1, v3, :cond_0

    .line 4
    aput v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSamples(IIIII[ILjava/awt/image/DataBuffer;)[I
    .locals 6

    if-ltz p1, :cond_3

    if-ltz p2, :cond_3

    add-int v0, p1, p3

    iget v1, p0, Ljava/awt/image/SampleModel;->width:I

    if-gt v0, v1, :cond_3

    add-int v0, p2, p4

    iget v1, p0, Ljava/awt/image/SampleModel;->height:I

    if-gt v0, v1, :cond_3

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    mul-int p6, p3, p4

    new-array p6, p6, [I

    :goto_0
    iget v0, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    iget v0, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    iget-object p1, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p1, p1, p5

    add-int/2addr p2, p1

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :goto_1
    if-ge v0, p4, :cond_2

    move v2, p1

    move v3, p2

    :goto_2
    if-ge v2, p3, :cond_1

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v5, v5, p5

    invoke-virtual {p7, v5, v3}, Ljava/awt/image/DataBuffer;->getElem(II)I

    move-result v5

    aput v5, p6, v1

    iget v1, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    add-int/2addr v3, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v4

    goto :goto_2

    :cond_1
    iget v2, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    add-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-object p6

    :cond_3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getScanlineStride()I
    .locals 0

    iget p0, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    return p0
.end method

.method public hashCode()I
    .locals 5

    iget v0, p0, Ljava/awt/image/SampleModel;->width:I

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Ljava/awt/image/SampleModel;->height:I

    xor-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Ljava/awt/image/ComponentSampleModel;->numBands:I

    xor-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Ljava/awt/image/SampleModel;->dataType:I

    xor-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget v3, v3, v2

    xor-int/2addr v0, v3

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    iget-object v2, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget v2, v2, v1

    xor-int/2addr v0, v2

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget v1, p0, Ljava/awt/image/ComponentSampleModel;->numBands:I

    xor-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Ljava/awt/image/ComponentSampleModel;->numBanks:I

    xor-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget v1, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    xor-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    iget p0, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    xor-int/2addr p0, v0

    return p0
.end method

.method public orderBands([II)[I
    .locals 8

    array-length p0, p1

    new-array v0, p0, [I

    array-length v1, p1

    new-array v2, v1, [I

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, p0, :cond_0

    aput v4, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v3, v1, :cond_3

    add-int/lit8 p0, v3, 0x1

    move v4, p0

    move v5, v3

    :goto_2
    if-ge v4, v1, :cond_2

    aget v6, v0, v5

    aget v6, p1, v6

    aget v7, v0, v4

    aget v7, p1, v7

    if-le v6, v7, :cond_1

    move v5, v4

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    aget v4, v0, v5

    mul-int v6, v3, p2

    aput v6, v2, v4

    aget v3, v0, v3

    aput v3, v0, v5

    move v3, p0

    goto :goto_1

    :cond_3
    return-object v2
.end method

.method public setDataElements(IILjava/lang/Object;Ljava/awt/image/DataBuffer;)V
    .locals 5

    if-ltz p1, :cond_6

    if-ltz p2, :cond_6

    iget v0, p0, Ljava/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_6

    iget v0, p0, Ljava/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_6

    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getTransferType()I

    move-result v0

    invoke-virtual {p0}, Ljava/awt/image/ComponentSampleModel;->getNumDataElements()I

    move-result v1

    iget v2, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v2

    iget v2, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v2

    add-int/2addr p2, p1

    const/4 p1, 0x0

    if-eqz v0, :cond_4

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto/16 :goto_5

    :cond_0
    check-cast p3, [D

    :goto_0
    if-ge p1, v1, :cond_5

    iget-object v0, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    aget-wide v3, p3, p1

    invoke-virtual {p4, v0, v2, v3, v4}, Ljava/awt/image/DataBuffer;->setElemDouble(IID)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    check-cast p3, [F

    :goto_1
    if-ge p1, v1, :cond_5

    iget-object v0, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    aget v3, p3, p1

    invoke-virtual {p4, v0, v2, v3}, Ljava/awt/image/DataBuffer;->setElemFloat(IIF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    check-cast p3, [I

    :goto_2
    if-ge p1, v1, :cond_5

    iget-object v0, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    aget v3, p3, p1

    invoke-virtual {p4, v0, v2, v3}, Ljava/awt/image/DataBuffer;->setElem(III)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_3
    check-cast p3, [S

    :goto_3
    if-ge p1, v1, :cond_5

    iget-object v0, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    aget-short v3, p3, p1

    const v4, 0xffff

    and-int/2addr v3, v4

    invoke-virtual {p4, v0, v2, v3}, Ljava/awt/image/DataBuffer;->setElem(III)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    check-cast p3, [B

    :goto_4
    if-ge p1, v1, :cond_5

    iget-object v0, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v2, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v2, v2, p1

    add-int/2addr v2, p2

    aget-byte v3, p3, p1

    and-int/lit16 v3, v3, 0xff

    invoke-virtual {p4, v0, v2, v3}, Ljava/awt/image/DataBuffer;->setElem(III)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_5
    :goto_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPixel(II[ILjava/awt/image/DataBuffer;)V
    .locals 3

    if-ltz p1, :cond_1

    if-ltz p2, :cond_1

    iget v0, p0, Ljava/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_1

    iget v0, p0, Ljava/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_1

    iget v0, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    iget v0, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Ljava/awt/image/ComponentSampleModel;->numBands:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p1

    iget-object v1, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v1, v1, p1

    add-int/2addr v1, p2

    aget v2, p3, p1

    invoke-virtual {p4, v0, v1, v2}, Ljava/awt/image/DataBuffer;->setElem(III)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setPixels(IIII[ILjava/awt/image/DataBuffer;)V
    .locals 8

    add-int v0, p1, p3

    add-int v1, p2, p4

    if-ltz p1, :cond_3

    iget v2, p0, Ljava/awt/image/SampleModel;->width:I

    if-ge p1, v2, :cond_3

    if-gt p3, v2, :cond_3

    if-ltz v0, :cond_3

    if-gt v0, v2, :cond_3

    if-ltz p2, :cond_3

    iget v0, p0, Ljava/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_3

    if-gt p4, v0, :cond_3

    if-ltz v1, :cond_3

    if-gt v1, v0, :cond_3

    iget v0, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    iget v0, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

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

    :goto_2
    iget v5, p0, Ljava/awt/image/ComponentSampleModel;->numBands:I

    if-ge v4, v5, :cond_0

    iget-object v5, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v5, v5, v4

    iget-object v6, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget v6, v6, v4

    add-int/2addr v6, v3

    add-int/lit8 v7, v1, 0x1

    aget v1, p5, v1

    invoke-virtual {p6, v5, v6, v1}, Ljava/awt/image/DataBuffer;->setElem(III)V

    add-int/lit8 v4, v4, 0x1

    move v1, v7

    goto :goto_2

    :cond_0
    iget v4, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget v2, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    add-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSample(IIIDLjava/awt/image/DataBuffer;)V
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 7
    iget v0, p0, Ljava/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Ljava/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_0

    .line 8
    iget-object v0, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p3

    iget v1, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v1

    iget v1, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v1

    add-int/2addr p2, p1

    iget-object p0, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p0, p0, p3

    add-int/2addr p2, p0

    invoke-virtual {p6, v0, p2, p4, p5}, Ljava/awt/image/DataBuffer;->setElemDouble(IID)V

    return-void

    .line 9
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSample(IIIFLjava/awt/image/DataBuffer;)V
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 4
    iget v0, p0, Ljava/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Ljava/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_0

    .line 5
    iget-object v0, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p3

    iget v1, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v1

    iget v1, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v1

    add-int/2addr p2, p1

    iget-object p0, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p0, p0, p3

    add-int/2addr p2, p0

    invoke-virtual {p5, v0, p2, p4}, Ljava/awt/image/DataBuffer;->setElemFloat(IIF)V

    return-void

    .line 6
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSample(IIIILjava/awt/image/DataBuffer;)V
    .locals 2

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    .line 1
    iget v0, p0, Ljava/awt/image/SampleModel;->width:I

    if-ge p1, v0, :cond_0

    iget v0, p0, Ljava/awt/image/SampleModel;->height:I

    if-ge p2, v0, :cond_0

    .line 2
    iget-object v0, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v0, v0, p3

    iget v1, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v1

    iget v1, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v1

    add-int/2addr p2, p1

    iget-object p0, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p0, p0, p3

    add-int/2addr p2, p0

    invoke-virtual {p5, v0, p2, p4}, Ljava/awt/image/DataBuffer;->setElem(III)V

    return-void

    .line 3
    :cond_0
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSamples(IIIII[ILjava/awt/image/DataBuffer;)V
    .locals 6

    if-ltz p1, :cond_2

    if-ltz p2, :cond_2

    add-int v0, p1, p3

    iget v1, p0, Ljava/awt/image/SampleModel;->width:I

    if-gt v0, v1, :cond_2

    add-int v0, p2, p4

    iget v1, p0, Ljava/awt/image/SampleModel;->height:I

    if-gt v0, v1, :cond_2

    iget v0, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    mul-int/2addr p2, v0

    iget v0, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    mul-int/2addr p1, v0

    add-int/2addr p2, p1

    iget-object p1, p0, Ljava/awt/image/ComponentSampleModel;->bandOffsets:[I

    aget p1, p1, p5

    add-int/2addr p2, p1

    const/4 p1, 0x0

    move v0, p1

    move v1, v0

    :goto_0
    if-ge v0, p4, :cond_1

    move v2, p1

    move v3, p2

    :goto_1
    if-ge v2, p3, :cond_0

    iget-object v4, p0, Ljava/awt/image/ComponentSampleModel;->bankIndices:[I

    aget v4, v4, p5

    add-int/lit8 v5, v1, 0x1

    aget v1, p6, v1

    invoke-virtual {p7, v4, v3, v1}, Ljava/awt/image/DataBuffer;->setElem(III)V

    iget v1, p0, Ljava/awt/image/ComponentSampleModel;->pixelStride:I

    add-int/2addr v3, v1

    add-int/lit8 v2, v2, 0x1

    move v1, v5

    goto :goto_1

    :cond_0
    iget v2, p0, Ljava/awt/image/ComponentSampleModel;->scanlineStride:I

    add-int/2addr p2, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Coordinate out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
