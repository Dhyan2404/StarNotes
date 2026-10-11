.class public abstract Ljava/awt/image/SampleModel;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected dataType:I

.field protected height:I

.field protected numBands:I

.field protected width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    invoke-static {}, Ljava/awt/image/ColorModel;->loadLibraries()V

    invoke-static {}, Ljava/awt/image/SampleModel;->initIDs()V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    int-to-long v0, p2

    int-to-long v2, p3

    mul-long/2addr v0, v2

    if-lez p2, :cond_4

    if-lez p3, :cond_4

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gez v0, :cond_3

    if-ltz p1, :cond_2

    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    const/16 v0, 0x20

    if-ne p1, v0, :cond_2

    :cond_0
    if-lez p4, :cond_1

    iput p1, p0, Ljava/awt/image/SampleModel;->dataType:I

    iput p2, p0, Ljava/awt/image/SampleModel;->width:I

    iput p3, p0, Ljava/awt/image/SampleModel;->height:I

    iput p4, p0, Ljava/awt/image/SampleModel;->numBands:I

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Number of bands must be > 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unsupported dataType: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Dimensions (width="

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " height="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") are too large"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Width ("

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") and height ("

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ") must be > 0"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static initIDs()V
    .locals 0

    return-void
.end method


# virtual methods
.method public abstract createCompatibleSampleModel(II)Ljava/awt/image/SampleModel;
.end method

.method public abstract createDataBuffer()Ljava/awt/image/DataBuffer;
.end method

.method public abstract createSubsetSampleModel([I)Ljava/awt/image/SampleModel;
.end method

.method public getDataElements(IIIILjava/lang/Object;Ljava/awt/image/DataBuffer;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p6

    .line 1
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/SampleModel;->getTransferType()I

    move-result v6

    .line 2
    invoke-virtual/range {p0 .. p0}, Ljava/awt/image/SampleModel;->getNumDataElements()I

    move-result v7

    add-int v8, v1, v3

    add-int v9, v2, v4

    if-ltz v1, :cond_15

    .line 3
    iget v10, v0, Ljava/awt/image/SampleModel;->width:I

    if-ge v1, v10, :cond_15

    if-gt v3, v10, :cond_15

    if-ltz v8, :cond_15

    if-gt v8, v10, :cond_15

    if-ltz v2, :cond_15

    iget v10, v0, Ljava/awt/image/SampleModel;->height:I

    if-ge v2, v10, :cond_15

    if-gt v4, v10, :cond_15

    if-ltz v9, :cond_15

    if-gt v9, v10, :cond_15

    const/4 v10, 0x0

    const/4 v11, 0x0

    if-eqz v6, :cond_10

    const/4 v12, 0x1

    if-eq v6, v12, :cond_c

    const/4 v12, 0x2

    if-eq v6, v12, :cond_c

    const/4 v12, 0x3

    if-eq v6, v12, :cond_8

    const/4 v12, 0x4

    if-eq v6, v12, :cond_4

    const/4 v12, 0x5

    if-eq v6, v12, :cond_0

    move-object/from16 v3, p5

    goto/16 :goto_14

    :cond_0
    if-nez p5, :cond_1

    mul-int/2addr v3, v7

    mul-int/2addr v3, v4

    .line 4
    new-array v3, v3, [D

    goto :goto_0

    .line 5
    :cond_1
    move-object/from16 v3, p5

    check-cast v3, [D

    :goto_0
    move v4, v10

    :goto_1
    if-ge v2, v9, :cond_14

    move v6, v1

    :goto_2
    if-ge v6, v8, :cond_3

    .line 6
    invoke-virtual {v0, v6, v2, v11, v5}, Ljava/awt/image/SampleModel;->getDataElements(IILjava/lang/Object;Ljava/awt/image/DataBuffer;)Ljava/lang/Object;

    move-result-object v11

    .line 7
    move-object v12, v11

    check-cast v12, [D

    move v13, v10

    :goto_3
    if-ge v13, v7, :cond_2

    add-int/lit8 v14, v4, 0x1

    .line 8
    aget-wide v15, v12, v13

    aput-wide v15, v3, v4

    add-int/lit8 v13, v13, 0x1

    move v4, v14

    goto :goto_3

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    if-nez p5, :cond_5

    mul-int/2addr v3, v7

    mul-int/2addr v3, v4

    .line 9
    new-array v3, v3, [F

    goto :goto_4

    .line 10
    :cond_5
    move-object/from16 v3, p5

    check-cast v3, [F

    :goto_4
    move v4, v10

    :goto_5
    if-ge v2, v9, :cond_14

    move v6, v1

    :goto_6
    if-ge v6, v8, :cond_7

    .line 11
    invoke-virtual {v0, v6, v2, v11, v5}, Ljava/awt/image/SampleModel;->getDataElements(IILjava/lang/Object;Ljava/awt/image/DataBuffer;)Ljava/lang/Object;

    move-result-object v11

    .line 12
    move-object v12, v11

    check-cast v12, [F

    move v13, v10

    :goto_7
    if-ge v13, v7, :cond_6

    add-int/lit8 v14, v4, 0x1

    .line 13
    aget v15, v12, v13

    aput v15, v3, v4

    add-int/lit8 v13, v13, 0x1

    move v4, v14

    goto :goto_7

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    if-nez p5, :cond_9

    mul-int/2addr v3, v7

    mul-int/2addr v3, v4

    .line 14
    new-array v3, v3, [I

    goto :goto_8

    .line 15
    :cond_9
    move-object/from16 v3, p5

    check-cast v3, [I

    :goto_8
    move v4, v10

    :goto_9
    if-ge v2, v9, :cond_14

    move v6, v1

    :goto_a
    if-ge v6, v8, :cond_b

    .line 16
    invoke-virtual {v0, v6, v2, v11, v5}, Ljava/awt/image/SampleModel;->getDataElements(IILjava/lang/Object;Ljava/awt/image/DataBuffer;)Ljava/lang/Object;

    move-result-object v11

    .line 17
    move-object v12, v11

    check-cast v12, [I

    move v13, v10

    :goto_b
    if-ge v13, v7, :cond_a

    add-int/lit8 v14, v4, 0x1

    .line 18
    aget v15, v12, v13

    aput v15, v3, v4

    add-int/lit8 v13, v13, 0x1

    move v4, v14

    goto :goto_b

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_c
    if-nez p5, :cond_d

    mul-int/2addr v3, v7

    mul-int/2addr v3, v4

    .line 19
    new-array v3, v3, [S

    goto :goto_c

    .line 20
    :cond_d
    move-object/from16 v3, p5

    check-cast v3, [S

    :goto_c
    move v4, v10

    :goto_d
    if-ge v2, v9, :cond_14

    move v6, v1

    :goto_e
    if-ge v6, v8, :cond_f

    .line 21
    invoke-virtual {v0, v6, v2, v11, v5}, Ljava/awt/image/SampleModel;->getDataElements(IILjava/lang/Object;Ljava/awt/image/DataBuffer;)Ljava/lang/Object;

    move-result-object v11

    .line 22
    move-object v12, v11

    check-cast v12, [S

    move v13, v10

    :goto_f
    if-ge v13, v7, :cond_e

    add-int/lit8 v14, v4, 0x1

    .line 23
    aget-short v15, v12, v13

    aput-short v15, v3, v4

    add-int/lit8 v13, v13, 0x1

    move v4, v14

    goto :goto_f

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_10
    if-nez p5, :cond_11

    mul-int/2addr v3, v7

    mul-int/2addr v3, v4

    .line 24
    new-array v3, v3, [B

    goto :goto_10

    .line 25
    :cond_11
    move-object/from16 v3, p5

    check-cast v3, [B

    :goto_10
    move v4, v10

    :goto_11
    if-ge v2, v9, :cond_14

    move v6, v1

    :goto_12
    if-ge v6, v8, :cond_13

    .line 26
    invoke-virtual {v0, v6, v2, v11, v5}, Ljava/awt/image/SampleModel;->getDataElements(IILjava/lang/Object;Ljava/awt/image/DataBuffer;)Ljava/lang/Object;

    move-result-object v11

    .line 27
    move-object v12, v11

    check-cast v12, [B

    move v13, v10

    :goto_13
    if-ge v13, v7, :cond_12

    add-int/lit8 v14, v4, 0x1

    .line 28
    aget-byte v15, v12, v13

    aput-byte v15, v3, v4

    add-int/lit8 v13, v13, 0x1

    move v4, v14

    goto :goto_13

    :cond_12
    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_13
    add-int/lit8 v2, v2, 0x1

    goto :goto_11

    :cond_14
    :goto_14
    return-object v3

    .line 29
    :cond_15
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Invalid coordinates."

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract getDataElements(IILjava/lang/Object;Ljava/awt/image/DataBuffer;)Ljava/lang/Object;
.end method

.method public final getDataType()I
    .locals 0

    iget p0, p0, Ljava/awt/image/SampleModel;->dataType:I

    return p0
.end method

.method public final getHeight()I
    .locals 0

    iget p0, p0, Ljava/awt/image/SampleModel;->height:I

    return p0
.end method

.method public final getNumBands()I
    .locals 0

    iget p0, p0, Ljava/awt/image/SampleModel;->numBands:I

    return p0
.end method

.method public abstract getNumDataElements()I
.end method

.method public getPixel(II[DLjava/awt/image/DataBuffer;)[D
    .locals 3

    if-eqz p3, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget p3, p0, Ljava/awt/image/SampleModel;->numBands:I

    new-array p3, p3, [D

    :goto_0
    const/4 v0, 0x0

    .line 8
    :goto_1
    iget v1, p0, Ljava/awt/image/SampleModel;->numBands:I

    if-ge v0, v1, :cond_1

    .line 9
    invoke-virtual {p0, p1, p2, v0, p4}, Ljava/awt/image/SampleModel;->getSampleDouble(IIILjava/awt/image/DataBuffer;)D

    move-result-wide v1

    aput-wide v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p3
.end method

.method public getPixel(II[FLjava/awt/image/DataBuffer;)[F
    .locals 2

    if-eqz p3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget p3, p0, Ljava/awt/image/SampleModel;->numBands:I

    new-array p3, p3, [F

    :goto_0
    const/4 v0, 0x0

    .line 5
    :goto_1
    iget v1, p0, Ljava/awt/image/SampleModel;->numBands:I

    if-ge v0, v1, :cond_1

    .line 6
    invoke-virtual {p0, p1, p2, v0, p4}, Ljava/awt/image/SampleModel;->getSampleFloat(IIILjava/awt/image/DataBuffer;)F

    move-result v1

    aput v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p3
.end method

.method public getPixel(II[ILjava/awt/image/DataBuffer;)[I
    .locals 2

    if-eqz p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget p3, p0, Ljava/awt/image/SampleModel;->numBands:I

    new-array p3, p3, [I

    :goto_0
    const/4 v0, 0x0

    .line 2
    :goto_1
    iget v1, p0, Ljava/awt/image/SampleModel;->numBands:I

    if-ge v0, v1, :cond_1

    .line 3
    invoke-virtual {p0, p1, p2, v0, p4}, Ljava/awt/image/SampleModel;->getSample(IIILjava/awt/image/DataBuffer;)I

    move-result v1

    aput v1, p3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object p3
.end method

.method public getPixels(IIII[DLjava/awt/image/DataBuffer;)[D
    .locals 7

    add-int v0, p1, p3

    add-int v1, p2, p4

    if-ltz p1, :cond_4

    .line 11
    iget v2, p0, Ljava/awt/image/SampleModel;->width:I

    if-ge p1, v2, :cond_4

    if-gt p3, v2, :cond_4

    if-ltz v0, :cond_4

    if-gt v0, v2, :cond_4

    if-ltz p2, :cond_4

    iget v2, p0, Ljava/awt/image/SampleModel;->height:I

    if-ge p2, v2, :cond_4

    if-gt p4, v2, :cond_4

    if-ltz v1, :cond_4

    if-gt v1, v2, :cond_4

    if-eqz p5, :cond_0

    goto :goto_0

    .line 12
    :cond_0
    iget p5, p0, Ljava/awt/image/SampleModel;->numBands:I

    mul-int/2addr p5, p3

    mul-int/2addr p5, p4

    new-array p5, p5, [D

    :goto_0
    const/4 p3, 0x0

    move p4, p3

    :goto_1
    if-ge p2, v1, :cond_3

    move v2, p1

    :goto_2
    if-ge v2, v0, :cond_2

    move v3, p3

    .line 13
    :goto_3
    iget v4, p0, Ljava/awt/image/SampleModel;->numBands:I

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, p4, 0x1

    .line 14
    invoke-virtual {p0, v2, p2, v3, p6}, Ljava/awt/image/SampleModel;->getSampleDouble(IIILjava/awt/image/DataBuffer;)D

    move-result-wide v5

    aput-wide v5, p5, p4

    add-int/lit8 v3, v3, 0x1

    move p4, v4

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return-object p5

    .line 15
    :cond_4
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Invalid coordinates."

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPixels(IIII[FLjava/awt/image/DataBuffer;)[F
    .locals 6

    add-int v0, p1, p3

    add-int v1, p2, p4

    if-ltz p1, :cond_4

    .line 6
    iget v2, p0, Ljava/awt/image/SampleModel;->width:I

    if-ge p1, v2, :cond_4

    if-gt p3, v2, :cond_4

    if-ltz v0, :cond_4

    if-gt v0, v2, :cond_4

    if-ltz p2, :cond_4

    iget v2, p0, Ljava/awt/image/SampleModel;->height:I

    if-ge p2, v2, :cond_4

    if-gt p4, v2, :cond_4

    if-ltz v1, :cond_4

    if-gt v1, v2, :cond_4

    if-eqz p5, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iget p5, p0, Ljava/awt/image/SampleModel;->numBands:I

    mul-int/2addr p5, p3

    mul-int/2addr p5, p4

    new-array p5, p5, [F

    :goto_0
    const/4 p3, 0x0

    move p4, p3

    :goto_1
    if-ge p2, v1, :cond_3

    move v2, p1

    :goto_2
    if-ge v2, v0, :cond_2

    move v3, p3

    .line 8
    :goto_3
    iget v4, p0, Ljava/awt/image/SampleModel;->numBands:I

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, p4, 0x1

    .line 9
    invoke-virtual {p0, v2, p2, v3, p6}, Ljava/awt/image/SampleModel;->getSampleFloat(IIILjava/awt/image/DataBuffer;)F

    move-result v5

    aput v5, p5, p4

    add-int/lit8 v3, v3, 0x1

    move p4, v4

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return-object p5

    .line 10
    :cond_4
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Invalid coordinates."

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPixels(IIII[ILjava/awt/image/DataBuffer;)[I
    .locals 6

    add-int v0, p1, p3

    add-int v1, p2, p4

    if-ltz p1, :cond_4

    .line 1
    iget v2, p0, Ljava/awt/image/SampleModel;->width:I

    if-ge p1, v2, :cond_4

    if-gt p3, v2, :cond_4

    if-ltz v0, :cond_4

    if-gt v0, v2, :cond_4

    if-ltz p2, :cond_4

    iget v2, p0, Ljava/awt/image/SampleModel;->height:I

    if-ge p2, v2, :cond_4

    if-gt p4, v2, :cond_4

    if-ltz v1, :cond_4

    if-gt v1, v2, :cond_4

    if-eqz p5, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p5, p0, Ljava/awt/image/SampleModel;->numBands:I

    mul-int/2addr p5, p3

    mul-int/2addr p5, p4

    new-array p5, p5, [I

    :goto_0
    const/4 p3, 0x0

    move p4, p3

    :goto_1
    if-ge p2, v1, :cond_3

    move v2, p1

    :goto_2
    if-ge v2, v0, :cond_2

    move v3, p3

    .line 3
    :goto_3
    iget v4, p0, Ljava/awt/image/SampleModel;->numBands:I

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, p4, 0x1

    .line 4
    invoke-virtual {p0, v2, p2, v3, p6}, Ljava/awt/image/SampleModel;->getSample(IIILjava/awt/image/DataBuffer;)I

    move-result v5

    aput v5, p5, p4

    add-int/lit8 v3, v3, 0x1

    move p4, v4

    goto :goto_3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_3
    return-object p5

    .line 5
    :cond_4
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Invalid coordinates."

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract getSample(IIILjava/awt/image/DataBuffer;)I
.end method

.method public getSampleDouble(IIILjava/awt/image/DataBuffer;)D
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/image/SampleModel;->getSample(IIILjava/awt/image/DataBuffer;)I

    move-result p0

    int-to-double p0, p0

    return-wide p0
.end method

.method public getSampleFloat(IIILjava/awt/image/DataBuffer;)F
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljava/awt/image/SampleModel;->getSample(IIILjava/awt/image/DataBuffer;)I

    move-result p0

    int-to-float p0, p0

    return p0
.end method

.method public abstract getSampleSize(I)I
.end method

.method public abstract getSampleSize()[I
.end method

.method public getSamples(IIIII[DLjava/awt/image/DataBuffer;)[D
    .locals 5

    add-int v0, p1, p3

    add-int v1, p2, p4

    if-ltz p1, :cond_3

    if-lt v0, p1, :cond_3

    .line 9
    iget v2, p0, Ljava/awt/image/SampleModel;->width:I

    if-gt v0, v2, :cond_3

    if-ltz p2, :cond_3

    if-lt v1, p2, :cond_3

    iget v2, p0, Ljava/awt/image/SampleModel;->height:I

    if-gt v1, v2, :cond_3

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    mul-int/2addr p3, p4

    .line 10
    new-array p6, p3, [D

    :goto_0
    const/4 p3, 0x0

    :goto_1
    if-ge p2, v1, :cond_2

    move p4, p1

    :goto_2
    if-ge p4, v0, :cond_1

    add-int/lit8 v2, p3, 0x1

    .line 11
    invoke-virtual {p0, p4, p2, p5, p7}, Ljava/awt/image/SampleModel;->getSampleDouble(IIILjava/awt/image/DataBuffer;)D

    move-result-wide v3

    aput-wide v3, p6, p3

    add-int/lit8 p4, p4, 0x1

    move p3, v2

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-object p6

    .line 12
    :cond_3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Invalid coordinates"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSamples(IIIII[FLjava/awt/image/DataBuffer;)[F
    .locals 4

    add-int v0, p1, p3

    add-int v1, p2, p4

    if-ltz p1, :cond_3

    if-lt v0, p1, :cond_3

    .line 5
    iget v2, p0, Ljava/awt/image/SampleModel;->width:I

    if-gt v0, v2, :cond_3

    if-ltz p2, :cond_3

    if-lt v1, p2, :cond_3

    iget v2, p0, Ljava/awt/image/SampleModel;->height:I

    if-gt v1, v2, :cond_3

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    mul-int/2addr p3, p4

    .line 6
    new-array p6, p3, [F

    :goto_0
    const/4 p3, 0x0

    :goto_1
    if-ge p2, v1, :cond_2

    move p4, p1

    :goto_2
    if-ge p4, v0, :cond_1

    add-int/lit8 v2, p3, 0x1

    .line 7
    invoke-virtual {p0, p4, p2, p5, p7}, Ljava/awt/image/SampleModel;->getSampleFloat(IIILjava/awt/image/DataBuffer;)F

    move-result v3

    aput v3, p6, p3

    add-int/lit8 p4, p4, 0x1

    move p3, v2

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-object p6

    .line 8
    :cond_3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Invalid coordinates"

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getSamples(IIIII[ILjava/awt/image/DataBuffer;)[I
    .locals 4

    add-int v0, p1, p3

    add-int v1, p2, p4

    if-ltz p1, :cond_3

    if-lt v0, p1, :cond_3

    .line 1
    iget v2, p0, Ljava/awt/image/SampleModel;->width:I

    if-gt v0, v2, :cond_3

    if-ltz p2, :cond_3

    if-lt v1, p2, :cond_3

    iget v2, p0, Ljava/awt/image/SampleModel;->height:I

    if-gt v1, v2, :cond_3

    if-eqz p6, :cond_0

    goto :goto_0

    :cond_0
    mul-int/2addr p3, p4

    .line 2
    new-array p6, p3, [I

    :goto_0
    const/4 p3, 0x0

    :goto_1
    if-ge p2, v1, :cond_2

    move p4, p1

    :goto_2
    if-ge p4, v0, :cond_1

    add-int/lit8 v2, p3, 0x1

    .line 3
    invoke-virtual {p0, p4, p2, p5, p7}, Ljava/awt/image/SampleModel;->getSample(IIILjava/awt/image/DataBuffer;)I

    move-result v3

    aput v3, p6, p3

    add-int/lit8 p4, p4, 0x1

    move p3, v2

    goto :goto_2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-object p6

    .line 4
    :cond_3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Invalid coordinates."

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getTransferType()I
    .locals 0

    iget p0, p0, Ljava/awt/image/SampleModel;->dataType:I

    return p0
.end method

.method public final getWidth()I
    .locals 0

    iget p0, p0, Ljava/awt/image/SampleModel;->width:I

    return p0
.end method

.method public setDataElements(IIIILjava/lang/Object;Ljava/awt/image/DataBuffer;)V
    .locals 9

    .line 1
    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getTransferType()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getNumDataElements()I

    move-result v1

    add-int v2, p1, p3

    add-int v3, p2, p4

    if-ltz p1, :cond_10

    .line 3
    iget v4, p0, Ljava/awt/image/SampleModel;->width:I

    if-ge p1, v4, :cond_10

    if-gt p3, v4, :cond_10

    if-ltz v2, :cond_10

    if-gt v2, v4, :cond_10

    if-ltz p2, :cond_10

    iget p3, p0, Ljava/awt/image/SampleModel;->height:I

    if-ge p2, p3, :cond_10

    if-gt p4, p3, :cond_10

    if-ltz v3, :cond_10

    if-gt v3, p3, :cond_10

    const/4 p3, 0x0

    if-eqz v0, :cond_c

    const/4 p4, 0x1

    if-eq v0, p4, :cond_9

    const/4 p4, 0x2

    if-eq v0, p4, :cond_9

    const/4 p4, 0x3

    if-eq v0, p4, :cond_6

    const/4 p4, 0x4

    if-eq v0, p4, :cond_3

    const/4 p4, 0x5

    if-eq v0, p4, :cond_0

    goto/16 :goto_f

    .line 4
    :cond_0
    check-cast p5, [D

    .line 5
    new-array p4, v1, [D

    move v0, p3

    :goto_0
    if-ge p2, v3, :cond_f

    move v4, p1

    :goto_1
    if-ge v4, v2, :cond_2

    move v5, p3

    :goto_2
    if-ge v5, v1, :cond_1

    add-int/lit8 v6, v0, 0x1

    .line 6
    aget-wide v7, p5, v0

    aput-wide v7, p4, v5

    add-int/lit8 v5, v5, 0x1

    move v0, v6

    goto :goto_2

    .line 7
    :cond_1
    invoke-virtual {p0, v4, p2, p4, p6}, Ljava/awt/image/SampleModel;->setDataElements(IILjava/lang/Object;Ljava/awt/image/DataBuffer;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8
    :cond_3
    check-cast p5, [F

    .line 9
    new-array p4, v1, [F

    move v0, p3

    :goto_3
    if-ge p2, v3, :cond_f

    move v4, p1

    :goto_4
    if-ge v4, v2, :cond_5

    move v5, p3

    :goto_5
    if-ge v5, v1, :cond_4

    add-int/lit8 v6, v0, 0x1

    .line 10
    aget v0, p5, v0

    aput v0, p4, v5

    add-int/lit8 v5, v5, 0x1

    move v0, v6

    goto :goto_5

    .line 11
    :cond_4
    invoke-virtual {p0, v4, p2, p4, p6}, Ljava/awt/image/SampleModel;->setDataElements(IILjava/lang/Object;Ljava/awt/image/DataBuffer;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 12
    :cond_6
    check-cast p5, [I

    .line 13
    new-array p4, v1, [I

    move v0, p3

    :goto_6
    if-ge p2, v3, :cond_f

    move v4, p1

    :goto_7
    if-ge v4, v2, :cond_8

    move v5, p3

    :goto_8
    if-ge v5, v1, :cond_7

    add-int/lit8 v6, v0, 0x1

    .line 14
    aget v0, p5, v0

    aput v0, p4, v5

    add-int/lit8 v5, v5, 0x1

    move v0, v6

    goto :goto_8

    .line 15
    :cond_7
    invoke-virtual {p0, v4, p2, p4, p6}, Ljava/awt/image/SampleModel;->setDataElements(IILjava/lang/Object;Ljava/awt/image/DataBuffer;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_8
    add-int/lit8 p2, p2, 0x1

    goto :goto_6

    .line 16
    :cond_9
    check-cast p5, [S

    .line 17
    new-array p4, v1, [S

    move v0, p3

    :goto_9
    if-ge p2, v3, :cond_f

    move v4, p1

    :goto_a
    if-ge v4, v2, :cond_b

    move v5, p3

    :goto_b
    if-ge v5, v1, :cond_a

    add-int/lit8 v6, v0, 0x1

    .line 18
    aget-short v0, p5, v0

    aput-short v0, p4, v5

    add-int/lit8 v5, v5, 0x1

    move v0, v6

    goto :goto_b

    .line 19
    :cond_a
    invoke-virtual {p0, v4, p2, p4, p6}, Ljava/awt/image/SampleModel;->setDataElements(IILjava/lang/Object;Ljava/awt/image/DataBuffer;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_b
    add-int/lit8 p2, p2, 0x1

    goto :goto_9

    .line 20
    :cond_c
    check-cast p5, [B

    .line 21
    new-array p4, v1, [B

    move v0, p3

    :goto_c
    if-ge p2, v3, :cond_f

    move v4, p1

    :goto_d
    if-ge v4, v2, :cond_e

    move v5, p3

    :goto_e
    if-ge v5, v1, :cond_d

    add-int/lit8 v6, v0, 0x1

    .line 22
    aget-byte v0, p5, v0

    aput-byte v0, p4, v5

    add-int/lit8 v5, v5, 0x1

    move v0, v6

    goto :goto_e

    .line 23
    :cond_d
    invoke-virtual {p0, v4, p2, p4, p6}, Ljava/awt/image/SampleModel;->setDataElements(IILjava/lang/Object;Ljava/awt/image/DataBuffer;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_e
    add-int/lit8 p2, p2, 0x1

    goto :goto_c

    :cond_f
    :goto_f
    return-void

    .line 24
    :cond_10
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string p1, "Invalid coordinates."

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract setDataElements(IILjava/lang/Object;Ljava/awt/image/DataBuffer;)V
.end method

.method public setPixel(II[DLjava/awt/image/DataBuffer;)V
    .locals 8

    const/4 v0, 0x0

    .line 5
    :goto_0
    iget v1, p0, Ljava/awt/image/SampleModel;->numBands:I

    if-ge v0, v1, :cond_0

    .line 6
    aget-wide v5, p3, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, v0

    move-object v7, p4

    invoke-virtual/range {v1 .. v7}, Ljava/awt/image/SampleModel;->setSample(IIIDLjava/awt/image/DataBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPixel(II[FLjava/awt/image/DataBuffer;)V
    .locals 7

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget v1, p0, Ljava/awt/image/SampleModel;->numBands:I

    if-ge v0, v1, :cond_0

    .line 4
    aget v5, p3, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, v0

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Ljava/awt/image/SampleModel;->setSample(IIIFLjava/awt/image/DataBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPixel(II[ILjava/awt/image/DataBuffer;)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Ljava/awt/image/SampleModel;->numBands:I

    if-ge v0, v1, :cond_0

    .line 2
    aget v5, p3, v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, v0

    move-object v6, p4

    invoke-virtual/range {v1 .. v6}, Ljava/awt/image/SampleModel;->setSample(IIIILjava/awt/image/DataBuffer;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setPixels(IIII[DLjava/awt/image/DataBuffer;)V
    .locals 16

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    add-int v9, v8, v1

    add-int v10, v0, v2

    if-ltz v8, :cond_3

    .line 9
    iget v3, v7, Ljava/awt/image/SampleModel;->width:I

    if-ge v8, v3, :cond_3

    if-gt v1, v3, :cond_3

    if-ltz v9, :cond_3

    if-gt v9, v3, :cond_3

    if-ltz v0, :cond_3

    iget v1, v7, Ljava/awt/image/SampleModel;->height:I

    if-ge v0, v1, :cond_3

    if-gt v2, v1, :cond_3

    if-ltz v10, :cond_3

    if-gt v10, v1, :cond_3

    const/4 v11, 0x0

    move v12, v0

    move v0, v11

    :goto_0
    if-ge v12, v10, :cond_2

    move v13, v8

    :goto_1
    if-ge v13, v9, :cond_1

    move v14, v11

    .line 10
    :goto_2
    iget v1, v7, Ljava/awt/image/SampleModel;->numBands:I

    if-ge v14, v1, :cond_0

    add-int/lit8 v15, v0, 0x1

    .line 11
    aget-wide v4, p5, v0

    move-object/from16 v0, p0

    move v1, v13

    move v2, v12

    move v3, v14

    move-object/from16 v6, p6

    invoke-virtual/range {v0 .. v6}, Ljava/awt/image/SampleModel;->setSample(IIIDLjava/awt/image/DataBuffer;)V

    add-int/lit8 v14, v14, 0x1

    move v0, v15

    goto :goto_2

    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 12
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Invalid coordinates."

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPixels(IIII[FLjava/awt/image/DataBuffer;)V
    .locals 15

    move-object v6, p0

    move/from16 v7, p1

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    add-int v8, v7, v1

    add-int v9, v0, v2

    if-ltz v7, :cond_3

    .line 5
    iget v3, v6, Ljava/awt/image/SampleModel;->width:I

    if-ge v7, v3, :cond_3

    if-gt v1, v3, :cond_3

    if-ltz v8, :cond_3

    if-gt v8, v3, :cond_3

    if-ltz v0, :cond_3

    iget v1, v6, Ljava/awt/image/SampleModel;->height:I

    if-ge v0, v1, :cond_3

    if-gt v2, v1, :cond_3

    if-ltz v9, :cond_3

    if-gt v9, v1, :cond_3

    const/4 v10, 0x0

    move v11, v0

    move v0, v10

    :goto_0
    if-ge v11, v9, :cond_2

    move v12, v7

    :goto_1
    if-ge v12, v8, :cond_1

    move v13, v10

    .line 6
    :goto_2
    iget v1, v6, Ljava/awt/image/SampleModel;->numBands:I

    if-ge v13, v1, :cond_0

    add-int/lit8 v14, v0, 0x1

    .line 7
    aget v4, p5, v0

    move-object v0, p0

    move v1, v12

    move v2, v11

    move v3, v13

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/SampleModel;->setSample(IIIFLjava/awt/image/DataBuffer;)V

    add-int/lit8 v13, v13, 0x1

    move v0, v14

    goto :goto_2

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Invalid coordinates."

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setPixels(IIII[ILjava/awt/image/DataBuffer;)V
    .locals 15

    move-object v6, p0

    move/from16 v7, p1

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    add-int v8, v7, v1

    add-int v9, v0, v2

    if-ltz v7, :cond_3

    .line 1
    iget v3, v6, Ljava/awt/image/SampleModel;->width:I

    if-ge v7, v3, :cond_3

    if-gt v1, v3, :cond_3

    if-ltz v8, :cond_3

    if-gt v8, v3, :cond_3

    if-ltz v0, :cond_3

    iget v1, v6, Ljava/awt/image/SampleModel;->height:I

    if-ge v0, v1, :cond_3

    if-gt v2, v1, :cond_3

    if-ltz v9, :cond_3

    if-gt v9, v1, :cond_3

    const/4 v10, 0x0

    move v11, v0

    move v0, v10

    :goto_0
    if-ge v11, v9, :cond_2

    move v12, v7

    :goto_1
    if-ge v12, v8, :cond_1

    move v13, v10

    .line 2
    :goto_2
    iget v1, v6, Ljava/awt/image/SampleModel;->numBands:I

    if-ge v13, v1, :cond_0

    add-int/lit8 v14, v0, 0x1

    .line 3
    aget v4, p5, v0

    move-object v0, p0

    move v1, v12

    move v2, v11

    move v3, v13

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/SampleModel;->setSample(IIIILjava/awt/image/DataBuffer;)V

    add-int/lit8 v13, v13, 0x1

    move v0, v14

    goto :goto_2

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 4
    :cond_3
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Invalid coordinates."

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSample(IIIDLjava/awt/image/DataBuffer;)V
    .locals 6

    double-to-int v4, p4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p6

    .line 2
    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/SampleModel;->setSample(IIIILjava/awt/image/DataBuffer;)V

    return-void
.end method

.method public setSample(IIIFLjava/awt/image/DataBuffer;)V
    .locals 6

    float-to-int v4, p4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/SampleModel;->setSample(IIIILjava/awt/image/DataBuffer;)V

    return-void
.end method

.method public abstract setSample(IIIILjava/awt/image/DataBuffer;)V
.end method

.method public setSamples(IIIII[DLjava/awt/image/DataBuffer;)V
    .locals 14

    move-object v7, p0

    move v8, p1

    move/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    add-int v9, v8, v1

    add-int v10, v0, v2

    if-ltz v8, :cond_2

    .line 7
    iget v3, v7, Ljava/awt/image/SampleModel;->width:I

    if-ge v8, v3, :cond_2

    if-gt v1, v3, :cond_2

    if-ltz v9, :cond_2

    if-gt v9, v3, :cond_2

    if-ltz v0, :cond_2

    iget v1, v7, Ljava/awt/image/SampleModel;->height:I

    if-ge v0, v1, :cond_2

    if-gt v2, v1, :cond_2

    if-ltz v10, :cond_2

    if-gt v10, v1, :cond_2

    const/4 v1, 0x0

    move v11, v0

    :goto_0
    if-ge v11, v10, :cond_1

    move v12, v8

    :goto_1
    if-ge v12, v9, :cond_0

    add-int/lit8 v13, v1, 0x1

    .line 8
    aget-wide v4, p6, v1

    move-object v0, p0

    move v1, v12

    move v2, v11

    move/from16 v3, p5

    move-object/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Ljava/awt/image/SampleModel;->setSample(IIIDLjava/awt/image/DataBuffer;)V

    add-int/lit8 v12, v12, 0x1

    move v1, v13

    goto :goto_1

    :cond_0
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 9
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Invalid coordinates."

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSamples(IIIII[FLjava/awt/image/DataBuffer;)V
    .locals 13

    move-object v6, p0

    move v7, p1

    move v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    add-int v8, v7, v1

    add-int v9, v0, v2

    if-ltz v7, :cond_2

    .line 4
    iget v3, v6, Ljava/awt/image/SampleModel;->width:I

    if-ge v7, v3, :cond_2

    if-gt v1, v3, :cond_2

    if-ltz v8, :cond_2

    if-gt v8, v3, :cond_2

    if-ltz v0, :cond_2

    iget v1, v6, Ljava/awt/image/SampleModel;->height:I

    if-ge v0, v1, :cond_2

    if-gt v2, v1, :cond_2

    if-ltz v9, :cond_2

    if-gt v9, v1, :cond_2

    const/4 v1, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v9, :cond_1

    move v11, v7

    :goto_1
    if-ge v11, v8, :cond_0

    add-int/lit8 v12, v1, 0x1

    .line 5
    aget v4, p6, v1

    move-object v0, p0

    move v1, v11

    move v2, v10

    move/from16 v3, p5

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/SampleModel;->setSample(IIIFLjava/awt/image/DataBuffer;)V

    add-int/lit8 v11, v11, 0x1

    move v1, v12

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Invalid coordinates."

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setSamples(IIIII[ILjava/awt/image/DataBuffer;)V
    .locals 13

    move-object v6, p0

    move v7, p1

    move v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    add-int v8, v7, v1

    add-int v9, v0, v2

    if-ltz v7, :cond_2

    .line 1
    iget v3, v6, Ljava/awt/image/SampleModel;->width:I

    if-ge v7, v3, :cond_2

    if-gt v1, v3, :cond_2

    if-ltz v8, :cond_2

    if-gt v8, v3, :cond_2

    if-ltz v0, :cond_2

    iget v1, v6, Ljava/awt/image/SampleModel;->height:I

    if-ge v0, v1, :cond_2

    if-gt v2, v1, :cond_2

    if-ltz v9, :cond_2

    if-gt v9, v1, :cond_2

    const/4 v1, 0x0

    move v10, v0

    :goto_0
    if-ge v10, v9, :cond_1

    move v11, v7

    :goto_1
    if-ge v11, v8, :cond_0

    add-int/lit8 v12, v1, 0x1

    .line 2
    aget v4, p6, v1

    move-object v0, p0

    move v1, v11

    move v2, v10

    move/from16 v3, p5

    move-object/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Ljava/awt/image/SampleModel;->setSample(IIIILjava/awt/image/DataBuffer;)V

    add-int/lit8 v11, v11, 0x1

    move v1, v12

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 3
    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    const-string v1, "Invalid coordinates."

    invoke-direct {v0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
