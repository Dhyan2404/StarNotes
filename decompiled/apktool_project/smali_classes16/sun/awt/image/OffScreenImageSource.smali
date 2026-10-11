.class public Lsun/awt/image/OffScreenImageSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/awt/image/ImageProducer;


# instance fields
.field height:I

.field image:Ljava/awt/image/BufferedImage;

.field properties:Ljava/util/Hashtable;

.field private theConsumer:Ljava/awt/image/ImageConsumer;

.field width:I


# direct methods
.method public constructor <init>(Ljava/awt/image/BufferedImage;)V
    .locals 1

    const/4 v0, 0x0

    .line 7
    invoke-direct {p0, p1, v0}, Lsun/awt/image/OffScreenImageSource;-><init>(Ljava/awt/image/BufferedImage;Ljava/util/Hashtable;)V

    return-void
.end method

.method public constructor <init>(Ljava/awt/image/BufferedImage;Ljava/util/Hashtable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lsun/awt/image/OffScreenImageSource;->image:Ljava/awt/image/BufferedImage;

    if-eqz p2, :cond_0

    .line 3
    iput-object p2, p0, Lsun/awt/image/OffScreenImageSource;->properties:Ljava/util/Hashtable;

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Ljava/util/Hashtable;

    invoke-direct {p2}, Ljava/util/Hashtable;-><init>()V

    iput-object p2, p0, Lsun/awt/image/OffScreenImageSource;->properties:Ljava/util/Hashtable;

    .line 5
    :goto_0
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p2

    iput p2, p0, Lsun/awt/image/OffScreenImageSource;->width:I

    .line 6
    invoke-virtual {p1}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    iput p1, p0, Lsun/awt/image/OffScreenImageSource;->height:I

    return-void
.end method

.method private produce()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lsun/awt/image/OffScreenImageSource;->theConsumer:Ljava/awt/image/ImageConsumer;

    iget-object v1, p0, Lsun/awt/image/OffScreenImageSource;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    iget-object v2, p0, Lsun/awt/image/OffScreenImageSource;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    invoke-interface {v0, v1, v2}, Ljava/awt/image/ImageConsumer;->setDimensions(II)V

    iget-object v0, p0, Lsun/awt/image/OffScreenImageSource;->theConsumer:Ljava/awt/image/ImageConsumer;

    iget-object v1, p0, Lsun/awt/image/OffScreenImageSource;->properties:Ljava/util/Hashtable;

    invoke-interface {v0, v1}, Ljava/awt/image/ImageConsumer;->setProperties(Ljava/util/Hashtable;)V

    invoke-direct {p0}, Lsun/awt/image/OffScreenImageSource;->sendPixels()V

    iget-object v0, p0, Lsun/awt/image/OffScreenImageSource;->theConsumer:Ljava/awt/image/ImageConsumer;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/awt/image/ImageConsumer;->imageComplete(I)V

    iget-object v0, p0, Lsun/awt/image/OffScreenImageSource;->theConsumer:Ljava/awt/image/ImageConsumer;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/awt/image/ImageConsumer;->imageComplete(I)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lsun/awt/image/OffScreenImageSource;->theConsumer:Ljava/awt/image/ImageConsumer;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/awt/image/ImageConsumer;->imageComplete(I)V

    :cond_0
    :goto_0
    return-void
.end method

.method private sendPixels()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lsun/awt/image/OffScreenImageSource;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    iget-object v2, v0, Lsun/awt/image/OffScreenImageSource;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v11

    invoke-virtual {v11}, Ljava/awt/image/Raster;->getNumDataElements()I

    move-result v2

    invoke-virtual {v11}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/image/DataBuffer;->getDataType()I

    move-result v3

    iget v4, v0, Lsun/awt/image/OffScreenImageSource;->width:I

    mul-int/2addr v2, v4

    new-array v15, v2, [I

    instance-of v2, v1, Ljava/awt/image/IndexColorModel;

    const/4 v5, 0x3

    const/16 v21, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_4

    new-array v12, v4, [B

    iget-object v2, v0, Lsun/awt/image/OffScreenImageSource;->theConsumer:Ljava/awt/image/ImageConsumer;

    invoke-interface {v2, v1}, Ljava/awt/image/ImageConsumer;->setColorModel(Ljava/awt/image/ColorModel;)V

    instance-of v2, v11, Lsun/awt/image/ByteComponentRaster;

    if-eqz v2, :cond_0

    move/from16 v13, v21

    :goto_0
    iget v2, v0, Lsun/awt/image/OffScreenImageSource;->height:I

    if-ge v13, v2, :cond_a

    const/4 v4, 0x0

    iget v6, v0, Lsun/awt/image/OffScreenImageSource;->width:I

    const/4 v7, 0x1

    move-object v3, v11

    move v5, v13

    move-object v8, v12

    invoke-virtual/range {v3 .. v8}, Ljava/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lsun/awt/image/OffScreenImageSource;->theConsumer:Ljava/awt/image/ImageConsumer;

    const/4 v3, 0x0

    iget v10, v0, Lsun/awt/image/OffScreenImageSource;->width:I

    const/4 v6, 0x1

    const/4 v9, 0x0

    move v4, v13

    move v5, v10

    move-object v7, v1

    invoke-interface/range {v2 .. v10}, Ljava/awt/image/ImageConsumer;->setPixels(IIIILjava/awt/image/ColorModel;[BII)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_0
    instance-of v2, v11, Lsun/awt/image/BytePackedRaster;

    if-eqz v2, :cond_2

    move/from16 v13, v21

    :goto_1
    iget v2, v0, Lsun/awt/image/OffScreenImageSource;->height:I

    if-ge v13, v2, :cond_a

    const/4 v4, 0x0

    iget v6, v0, Lsun/awt/image/OffScreenImageSource;->width:I

    const/4 v7, 0x1

    move-object v3, v11

    move v5, v13

    move-object v8, v15

    invoke-virtual/range {v3 .. v8}, Ljava/awt/image/Raster;->getPixels(IIII[I)[I

    move/from16 v2, v21

    :goto_2
    iget v10, v0, Lsun/awt/image/OffScreenImageSource;->width:I

    if-ge v2, v10, :cond_1

    aget v3, v15, v2

    int-to-byte v3, v3

    aput-byte v3, v12, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    iget-object v2, v0, Lsun/awt/image/OffScreenImageSource;->theConsumer:Ljava/awt/image/ImageConsumer;

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    move v4, v13

    move v5, v10

    move-object v7, v1

    move-object v8, v12

    invoke-interface/range {v2 .. v10}, Ljava/awt/image/ImageConsumer;->setPixels(IIIILjava/awt/image/ColorModel;[BII)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x2

    if-eq v3, v2, :cond_3

    if-ne v3, v5, :cond_b

    :cond_3
    move/from16 v12, v21

    :goto_3
    iget v2, v0, Lsun/awt/image/OffScreenImageSource;->height:I

    if-ge v12, v2, :cond_a

    const/4 v4, 0x0

    iget v6, v0, Lsun/awt/image/OffScreenImageSource;->width:I

    const/4 v7, 0x1

    move-object v3, v11

    move v5, v12

    move-object v8, v15

    invoke-virtual/range {v3 .. v8}, Ljava/awt/image/Raster;->getPixels(IIII[I)[I

    iget-object v2, v0, Lsun/awt/image/OffScreenImageSource;->theConsumer:Ljava/awt/image/ImageConsumer;

    const/4 v3, 0x0

    iget v10, v0, Lsun/awt/image/OffScreenImageSource;->width:I

    const/4 v6, 0x1

    const/4 v9, 0x0

    move v4, v12

    move v5, v10

    move-object v7, v1

    invoke-interface/range {v2 .. v10}, Ljava/awt/image/ImageConsumer;->setPixels(IIIILjava/awt/image/ColorModel;[III)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    instance-of v2, v1, Ljava/awt/image/DirectColorModel;

    if-eqz v2, :cond_b

    iget-object v2, v0, Lsun/awt/image/OffScreenImageSource;->theConsumer:Ljava/awt/image/ImageConsumer;

    invoke-interface {v2, v1}, Ljava/awt/image/ImageConsumer;->setColorModel(Ljava/awt/image/ColorModel;)V

    if-eqz v3, :cond_8

    if-eq v3, v6, :cond_6

    if-eq v3, v5, :cond_5

    goto/16 :goto_9

    :cond_5
    move/from16 v12, v21

    :goto_4
    iget v2, v0, Lsun/awt/image/OffScreenImageSource;->height:I

    if-ge v12, v2, :cond_a

    const/4 v4, 0x0

    iget v6, v0, Lsun/awt/image/OffScreenImageSource;->width:I

    const/4 v7, 0x1

    move-object v3, v11

    move v5, v12

    move-object v8, v15

    invoke-virtual/range {v3 .. v8}, Ljava/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v0, Lsun/awt/image/OffScreenImageSource;->theConsumer:Ljava/awt/image/ImageConsumer;

    const/4 v3, 0x0

    iget v10, v0, Lsun/awt/image/OffScreenImageSource;->width:I

    const/4 v6, 0x1

    const/4 v9, 0x0

    move v4, v12

    move v5, v10

    move-object v7, v1

    invoke-interface/range {v2 .. v10}, Ljava/awt/image/ImageConsumer;->setPixels(IIIILjava/awt/image/ColorModel;[III)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_6
    iget v2, v0, Lsun/awt/image/OffScreenImageSource;->width:I

    new-array v12, v2, [S

    move/from16 v13, v21

    :goto_5
    iget v2, v0, Lsun/awt/image/OffScreenImageSource;->height:I

    if-ge v13, v2, :cond_a

    const/4 v4, 0x0

    iget v6, v0, Lsun/awt/image/OffScreenImageSource;->width:I

    const/4 v7, 0x1

    move-object v3, v11

    move v5, v13

    move-object v8, v12

    invoke-virtual/range {v3 .. v8}, Ljava/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move/from16 v2, v21

    :goto_6
    iget v10, v0, Lsun/awt/image/OffScreenImageSource;->width:I

    if-ge v2, v10, :cond_7

    aget-short v3, v12, v2

    const v4, 0xffff

    and-int/2addr v3, v4

    aput v3, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_7
    iget-object v2, v0, Lsun/awt/image/OffScreenImageSource;->theConsumer:Ljava/awt/image/ImageConsumer;

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    move v4, v13

    move v5, v10

    move-object v7, v1

    move-object v8, v15

    invoke-interface/range {v2 .. v10}, Ljava/awt/image/ImageConsumer;->setPixels(IIIILjava/awt/image/ColorModel;[III)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_5

    :cond_8
    iget v2, v0, Lsun/awt/image/OffScreenImageSource;->width:I

    new-array v12, v2, [B

    move/from16 v13, v21

    :goto_7
    iget v2, v0, Lsun/awt/image/OffScreenImageSource;->height:I

    if-ge v13, v2, :cond_a

    const/4 v4, 0x0

    iget v6, v0, Lsun/awt/image/OffScreenImageSource;->width:I

    const/4 v7, 0x1

    move-object v3, v11

    move v5, v13

    move-object v8, v12

    invoke-virtual/range {v3 .. v8}, Ljava/awt/image/Raster;->getDataElements(IIIILjava/lang/Object;)Ljava/lang/Object;

    move/from16 v2, v21

    :goto_8
    iget v10, v0, Lsun/awt/image/OffScreenImageSource;->width:I

    if-ge v2, v10, :cond_9

    aget-byte v3, v12, v2

    and-int/lit16 v3, v3, 0xff

    aput v3, v15, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_9
    iget-object v2, v0, Lsun/awt/image/OffScreenImageSource;->theConsumer:Ljava/awt/image/ImageConsumer;

    const/4 v3, 0x0

    const/4 v6, 0x1

    const/4 v9, 0x0

    move v4, v13

    move v5, v10

    move-object v7, v1

    move-object v8, v15

    invoke-interface/range {v2 .. v10}, Ljava/awt/image/ImageConsumer;->setPixels(IIIILjava/awt/image/ColorModel;[III)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_7

    :cond_a
    move/from16 v6, v21

    :cond_b
    :goto_9
    if-eqz v6, :cond_d

    invoke-static {}, Ljava/awt/image/ColorModel;->getRGBdefault()Ljava/awt/image/ColorModel;

    move-result-object v1

    iget-object v2, v0, Lsun/awt/image/OffScreenImageSource;->theConsumer:Ljava/awt/image/ImageConsumer;

    invoke-interface {v2, v1}, Ljava/awt/image/ImageConsumer;->setColorModel(Ljava/awt/image/ColorModel;)V

    move/from16 v2, v21

    :goto_a
    iget v3, v0, Lsun/awt/image/OffScreenImageSource;->height:I

    if-ge v2, v3, :cond_d

    move/from16 v3, v21

    :goto_b
    iget v4, v0, Lsun/awt/image/OffScreenImageSource;->width:I

    if-ge v3, v4, :cond_c

    iget-object v4, v0, Lsun/awt/image/OffScreenImageSource;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v4, v3, v2}, Ljava/awt/image/BufferedImage;->getRGB(II)I

    move-result v4

    aput v4, v15, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_c
    iget-object v12, v0, Lsun/awt/image/OffScreenImageSource;->theConsumer:Ljava/awt/image/ImageConsumer;

    const/4 v13, 0x0

    const/16 v16, 0x1

    const/16 v19, 0x0

    move v14, v2

    move-object v3, v15

    move v15, v4

    move-object/from16 v17, v1

    move-object/from16 v18, v3

    move/from16 v20, v4

    invoke-interface/range {v12 .. v20}, Ljava/awt/image/ImageConsumer;->setPixels(IIIILjava/awt/image/ColorModel;[III)V

    add-int/lit8 v2, v2, 0x1

    move-object v15, v3

    goto :goto_a

    :cond_d
    return-void
.end method


# virtual methods
.method public declared-synchronized addConsumer(Ljava/awt/image/ImageConsumer;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lsun/awt/image/OffScreenImageSource;->theConsumer:Ljava/awt/image/ImageConsumer;

    invoke-direct {p0}, Lsun/awt/image/OffScreenImageSource;->produce()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized isConsumer(Ljava/awt/image/ImageConsumer;)Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/awt/image/OffScreenImageSource;->theConsumer:Ljava/awt/image/ImageConsumer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized removeConsumer(Ljava/awt/image/ImageConsumer;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lsun/awt/image/OffScreenImageSource;->theConsumer:Ljava/awt/image/ImageConsumer;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lsun/awt/image/OffScreenImageSource;->theConsumer:Ljava/awt/image/ImageConsumer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public requestTopDownLeftRightResend(Ljava/awt/image/ImageConsumer;)V
    .locals 0

    return-void
.end method

.method public startProduction(Ljava/awt/image/ImageConsumer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lsun/awt/image/OffScreenImageSource;->addConsumer(Ljava/awt/image/ImageConsumer;)V

    return-void
.end method
