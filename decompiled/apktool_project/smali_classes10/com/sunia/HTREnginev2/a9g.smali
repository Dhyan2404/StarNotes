.class public Lcom/sunia/HTREnginev2/a9g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/RasterOp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([B[B)V
    .locals 3

    const/4 p0, 0x3

    aget-byte p0, p1, p0

    and-int/lit16 p0, p0, 0xff

    const/4 v0, 0x0

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    rsub-int v2, p0, 0xff

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0xff

    add-int/2addr v1, p0

    rsub-int v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x1

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    mul-int/2addr v1, v2

    div-int/lit16 v1, v1, 0xff

    add-int/2addr v1, p0

    rsub-int v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    const/4 v0, 0x2

    aget-byte p1, p1, v0

    and-int/lit16 p1, p1, 0xff

    mul-int/2addr p1, v2

    div-int/lit16 p1, p1, 0xff

    add-int/2addr p1, p0

    rsub-int p0, p1, 0xff

    int-to-byte p0, p0

    aput-byte p0, p2, v0

    return-void
.end method

.method public createCompatibleDestRaster(Ljava/awt/image/Raster;)Ljava/awt/image/WritableRaster;
    .locals 8

    invoke-virtual {p1}, Ljava/awt/image/Raster;->createCompatibleWritableRaster()Ljava/awt/image/WritableRaster;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 p0, 0x1

    const/4 p1, 0x2

    const/4 v7, 0x0

    filled-new-array {v7, p0, p1}, [I

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Ljava/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public filter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "src may not be null"

    invoke-static {v1, v3}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v1, v2, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    const-string v6, "src and dest raster may not be same"

    invoke-static {v5, v6}, Lcom/twelvemonkeys/lang/Validate;->isTrue(ZLjava/lang/String;)Z

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getTransferType()I

    move-result v5

    if-nez v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    const-string v6, "only TYPE_BYTE rasters supported as src: %s"

    invoke-static {v5, v1, v6}, Lcom/twelvemonkeys/lang/Validate;->isTrue(ZLjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getNumDataElements()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getNumDataElements()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const-string v7, "CMYK raster must have at least 4 data elements: %s"

    invoke-static {v5, v6, v7}, Lcom/twelvemonkeys/lang/Validate;->isTrue(ZLjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v5, 0x3

    if-nez v2, :cond_3

    invoke-virtual/range {p0 .. p1}, Lcom/sunia/HTREnginev2/a9g;->createCompatibleDestRaster(Ljava/awt/image/Raster;)Ljava/awt/image/WritableRaster;

    move-result-object v2

    goto :goto_4

    :cond_3
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getTransferType()I

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getNumDataElements()I

    move-result v6

    if-ge v6, v5, :cond_5

    :cond_4
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getTransferType()I

    move-result v6

    if-ne v6, v5, :cond_6

    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/Raster;->getNumDataElements()I

    move-result v6

    if-ne v6, v4, :cond_6

    :cond_5
    move v6, v4

    goto :goto_3

    :cond_6
    move v6, v3

    :goto_3
    const-string v7, "only 3 or 4 byte TYPE_BYTE or 1 int TYPE_INT rasters supported as dest: %s"

    invoke-static {v6, v1, v7}, Lcom/twelvemonkeys/lang/Validate;->isTrue(ZLjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :goto_4
    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getNumDataElements()I

    move-result v8

    new-array v8, v8, [B

    invoke-virtual {v2}, Ljava/awt/image/Raster;->getTransferType()I

    move-result v9

    if-nez v9, :cond_9

    invoke-virtual {v2}, Ljava/awt/image/Raster;->getNumDataElements()I

    move-result v3

    new-array v4, v3, [B

    if-le v3, v5, :cond_7

    const/4 v3, -0x1

    aput-byte v3, v4, v5

    :cond_7
    invoke-virtual {v2}, Ljava/awt/image/Raster;->getMinY()I

    move-result v3

    :goto_5
    if-ge v3, v6, :cond_d

    invoke-virtual {v2}, Ljava/awt/image/Raster;->getMinX()I

    move-result v5

    :goto_6
    if-ge v5, v7, :cond_8

    invoke-virtual {v1, v5, v3, v8}, Ljava/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v8, v4}, Lcom/sunia/HTREnginev2/a9g;->a([B[B)V

    invoke-virtual {v2, v5, v3, v4}, Ljava/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    invoke-virtual {v2}, Ljava/awt/image/Raster;->getTransferType()I

    move-result v9

    if-ne v9, v5, :cond_e

    invoke-virtual {v2}, Ljava/awt/image/Raster;->getNumDataElements()I

    move-result v9

    new-array v9, v9, [I

    new-array v10, v5, [B

    invoke-virtual {v2}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v11

    instance-of v12, v11, Ljava/awt/image/SinglePixelPackedSampleModel;

    if-eqz v12, :cond_a

    check-cast v11, Ljava/awt/image/SinglePixelPackedSampleModel;

    invoke-virtual {v11}, Ljava/awt/image/SinglePixelPackedSampleModel;->getBitOffsets()[I

    move-result-object v11

    goto :goto_7

    :cond_a
    const/16 v11, 0x8

    const/16 v12, 0x10

    filled-new-array {v3, v11, v12}, [I

    move-result-object v11

    :goto_7
    array-length v12, v11

    const/16 v13, 0xff

    if-le v12, v5, :cond_b

    move v5, v13

    goto :goto_8

    :cond_b
    move v5, v3

    :goto_8
    invoke-virtual {v2}, Ljava/awt/image/Raster;->getMinY()I

    move-result v12

    :goto_9
    if-ge v12, v6, :cond_d

    invoke-virtual {v2}, Ljava/awt/image/Raster;->getMinX()I

    move-result v14

    :goto_a
    if-ge v14, v7, :cond_c

    invoke-virtual {v1, v14, v12, v8}, Ljava/awt/image/Raster;->getDataElements(IILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v8, v10}, Lcom/sunia/HTREnginev2/a9g;->a([B[B)V

    shl-int/lit8 v15, v5, 0x18

    aget-byte v4, v10, v3

    and-int/2addr v4, v13

    aget v16, v11, v3

    shl-int v4, v4, v16

    or-int/2addr v4, v15

    const/4 v15, 0x1

    aget-byte v3, v10, v15

    and-int/2addr v3, v13

    aget v16, v11, v15

    shl-int v3, v3, v16

    or-int/2addr v3, v4

    const/4 v4, 0x2

    aget-byte v15, v10, v4

    and-int/2addr v15, v13

    aget v4, v11, v4

    shl-int v4, v15, v4

    or-int/2addr v3, v4

    const/4 v4, 0x0

    aput v3, v9, v4

    invoke-virtual {v2, v14, v12, v9}, Ljava/awt/image/WritableRaster;->setDataElements(IILjava/lang/Object;)V

    add-int/lit8 v14, v14, 0x1

    move v3, v4

    const/4 v4, 0x1

    goto :goto_a

    :cond_c
    move v4, v3

    add-int/lit8 v12, v12, 0x1

    const/4 v4, 0x1

    goto :goto_9

    :cond_d
    return-object v2

    :cond_e
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getBounds2D(Ljava/awt/image/Raster;)Ljava/awt/geom/Rectangle2D;
    .locals 0

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getBounds()Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0
.end method

.method public getPoint2D(Ljava/awt/geom/Point2D;Ljava/awt/geom/Point2D;)Ljava/awt/geom/Point2D;
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Ljava/awt/geom/Point2D$Double;

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getX()D

    move-result-wide v0

    invoke-virtual {p1}, Ljava/awt/geom/Point2D;->getY()D

    move-result-wide p0

    invoke-direct {p2, v0, v1, p0, p1}, Ljava/awt/geom/Point2D$Double;-><init>(DD)V

    goto :goto_0

    :cond_0
    invoke-virtual {p2, p1}, Ljava/awt/geom/Point2D;->setLocation(Ljava/awt/geom/Point2D;)V

    :goto_0
    return-object p2
.end method

.method public getRenderingHints()Ljava/awt/RenderingHints;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
