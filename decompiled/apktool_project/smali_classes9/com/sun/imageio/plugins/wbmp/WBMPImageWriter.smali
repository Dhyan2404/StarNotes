.class public Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;
.super Ljavax/imageio/ImageWriter;
.source "SourceFile"


# instance fields
.field private stream:Ljavax/imageio/stream/ImageOutputStream;


# direct methods
.method public constructor <init>(Ljavax/imageio/spi/ImageWriterSpi;)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/imageio/ImageWriter;-><init>(Ljavax/imageio/spi/ImageWriterSpi;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    return-void
.end method

.method private checkSampleModel(Ljava/awt/image/SampleModel;)V
    .locals 1

    invoke-virtual {p1}, Ljava/awt/image/SampleModel;->getDataType()I

    move-result p0

    if-ltz p0, :cond_0

    const/4 v0, 0x3

    if-gt p0, v0, :cond_0

    invoke-virtual {p1}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Ljava/awt/image/SampleModel;->getSampleSize(I)I

    move-result p0

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "WBMPImageWriter2"

    invoke-static {p1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static getNumBits(I)I
    .locals 3

    const/16 v0, 0x20

    const/high16 v1, -0x80000000

    :goto_0
    if-eqz v1, :cond_0

    and-int v2, p0, v1

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, -0x1

    ushr-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static intToMultiByte(I)[B
    .locals 4

    invoke-static {p0}, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->getNumBits(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0x7

    new-array v1, v0, [B

    add-int/lit8 v0, v0, -0x1

    const/4 v2, 0x0

    :goto_0
    if-gt v2, v0, :cond_1

    sub-int v3, v0, v2

    mul-int/lit8 v3, v3, 0x7

    ushr-int v3, p0, v3

    and-int/lit8 v3, v3, 0x7f

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    if-eq v2, v0, :cond_0

    or-int/lit8 v3, v3, -0x80

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method


# virtual methods
.method public canWriteRasters()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public convertImageMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public convertStreamMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultImageMetadata(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 0

    new-instance p0, Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;

    invoke-direct {p0}, Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;-><init>()V

    const/4 p1, 0x0

    iput p1, p0, Lcom/sun/imageio/plugins/wbmp/WBMPMetadata;->wbmpType:I

    return-object p0
.end method

.method public getDefaultStreamMetadata(Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Ljavax/imageio/ImageWriter;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    return-void
.end method

.method public setOutput(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Ljavax/imageio/ImageWriter;->setOutput(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    instance-of v0, p1, Ljavax/imageio/stream/ImageOutputStream;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/imageio/stream/ImageOutputStream;

    iput-object p1, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "WBMPImageWriter"

    invoke-static {p1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    :goto_0
    return-void
.end method

.method public write(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    if-eqz v1, :cond_15

    if-eqz p2, :cond_14

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageWriter;->clearAbortRequest()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/imageio/ImageWriter;->processImageStarted(I)V

    if-nez p3, :cond_0

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageWriter;->getDefaultWriteParam()Ljavax/imageio/ImageWriteParam;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p3

    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOImage;->hasRaster()Z

    move-result v3

    invoke-virtual {v2}, Ljavax/imageio/IIOParam;->getSourceRegion()Ljava/awt/Rectangle;

    move-result-object v4

    if-eqz v3, :cond_1

    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOImage;->getRaster()Ljava/awt/image/Raster;

    move-result-object v5

    invoke-virtual {v5}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v6

    const/4 v7, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOImage;->getRenderedImage()Ljava/awt/image/RenderedImage;

    move-result-object v7

    invoke-interface {v7}, Ljava/awt/image/RenderedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v6

    invoke-interface {v7}, Ljava/awt/image/RenderedImage;->getData()Ljava/awt/image/Raster;

    move-result-object v5

    :goto_1
    move-object v8, v5

    invoke-direct {v0, v6}, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->checkSampleModel(Ljava/awt/image/SampleModel;)V

    if-nez v4, :cond_2

    invoke-virtual {v8}, Ljava/awt/image/Raster;->getBounds()Ljava/awt/Rectangle;

    move-result-object v4

    goto :goto_2

    :cond_2
    invoke-virtual {v8}, Ljava/awt/image/Raster;->getBounds()Ljava/awt/Rectangle;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object v4

    :goto_2
    invoke-virtual {v4}, Ljava/awt/Rectangle;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_13

    invoke-virtual {v2}, Ljavax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result v5

    invoke-virtual {v2}, Ljavax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result v9

    invoke-virtual {v2}, Ljavax/imageio/IIOParam;->getSubsamplingXOffset()I

    move-result v10

    invoke-virtual {v2}, Ljavax/imageio/IIOParam;->getSubsamplingYOffset()I

    move-result v2

    invoke-virtual {v4, v10, v2}, Ljava/awt/Rectangle;->translate(II)V

    iget v11, v4, Ljava/awt/Rectangle;->width:I

    sub-int/2addr v11, v10

    iput v11, v4, Ljava/awt/Rectangle;->width:I

    iget v10, v4, Ljava/awt/Rectangle;->height:I

    sub-int/2addr v10, v2

    iput v10, v4, Ljava/awt/Rectangle;->height:I

    iget v2, v4, Ljava/awt/Rectangle;->x:I

    div-int v13, v2, v5

    iget v2, v4, Ljava/awt/Rectangle;->y:I

    div-int v14, v2, v9

    add-int/2addr v11, v5

    const/4 v2, 0x1

    sub-int/2addr v11, v2

    div-int v12, v11, v5

    add-int/2addr v10, v9

    sub-int/2addr v10, v2

    div-int v11, v10, v9

    new-instance v10, Ljava/awt/Rectangle;

    invoke-direct {v10, v13, v14, v12, v11}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v6, v12, v11}, Ljava/awt/image/SampleModel;->createCompatibleSampleModel(II)Ljava/awt/image/SampleModel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/awt/image/SampleModel;->getDataType()I

    move-result v15

    if-nez v15, :cond_3

    instance-of v15, v6, Ljava/awt/image/MultiPixelPackedSampleModel;

    if-eqz v15, :cond_3

    move-object v15, v6

    check-cast v15, Ljava/awt/image/MultiPixelPackedSampleModel;

    invoke-virtual {v15}, Ljava/awt/image/MultiPixelPackedSampleModel;->getDataBitOffset()I

    move-result v15

    if-eqz v15, :cond_4

    :cond_3
    new-instance v6, Ljava/awt/image/MultiPixelPackedSampleModel;

    const/16 v16, 0x0

    const/16 v19, 0x1

    add-int/lit8 v15, v12, 0x7

    shr-int/lit8 v20, v15, 0x3

    const/16 v21, 0x0

    move-object v15, v6

    move/from16 v17, v12

    move/from16 v18, v11

    invoke-direct/range {v15 .. v21}, Ljava/awt/image/MultiPixelPackedSampleModel;-><init>(IIIIII)V

    :cond_4
    invoke-virtual {v10, v4}, Ljava/awt/Rectangle;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_8

    if-ne v5, v2, :cond_5

    if-ne v9, v2, :cond_5

    invoke-virtual {v8}, Ljava/awt/image/Raster;->getMinX()I

    move-result v9

    invoke-virtual {v8}, Ljava/awt/image/Raster;->getMinY()I

    move-result v10

    const/4 v15, 0x0

    move v4, v11

    move v11, v12

    move v5, v12

    move v12, v4

    invoke-virtual/range {v8 .. v15}, Ljava/awt/image/Raster;->createChild(IIIIII[I)Ljava/awt/image/Raster;

    move-result-object v8

    move v10, v4

    move v11, v5

    goto/16 :goto_5

    :cond_5
    move v10, v11

    move v11, v12

    new-instance v12, Ljava/awt/Point;

    invoke-direct {v12, v13, v14}, Ljava/awt/Point;-><init>(II)V

    invoke-static {v6, v12}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v12

    invoke-virtual {v12}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v13

    check-cast v13, Ljava/awt/image/DataBufferByte;

    invoke-virtual {v13}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object v13

    iget v15, v4, Ljava/awt/Rectangle;->y:I

    move/from16 v16, v1

    move v2, v14

    :goto_3
    add-int v1, v14, v10

    if-ge v2, v1, :cond_7

    iget v1, v4, Ljava/awt/Rectangle;->x:I

    move-object/from16 p2, v4

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v11, :cond_6

    move-object/from16 p3, v12

    const/4 v12, 0x0

    invoke-virtual {v8, v1, v15, v12}, Ljava/awt/image/Raster;->getSample(III)I

    move-result v18

    shr-int/lit8 v12, v4, 0x3

    add-int v12, v16, v12

    aget-byte v19, v13, v12

    and-int/lit8 v20, v4, 0x7

    rsub-int/lit8 v20, v20, 0x7

    shl-int v18, v18, v20

    move-object/from16 v20, v8

    or-int v8, v19, v18

    int-to-byte v8, v8

    aput-byte v8, v13, v12

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v1, v5

    move-object/from16 v12, p3

    move-object/from16 v8, v20

    goto :goto_4

    :cond_6
    move-object/from16 v20, v8

    move-object/from16 p3, v12

    add-int/lit8 v12, v11, 0x7

    shr-int/lit8 v1, v12, 0x3

    add-int v16, v16, v1

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v15, v9

    move-object/from16 v4, p2

    move-object/from16 v12, p3

    goto :goto_3

    :cond_7
    move-object/from16 p3, v12

    move-object/from16 v8, p3

    goto :goto_5

    :cond_8
    move-object/from16 v20, v8

    move v10, v11

    move v11, v12

    :goto_5
    invoke-virtual {v8}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    new-instance v1, Ljava/awt/Point;

    invoke-virtual {v8}, Ljava/awt/image/Raster;->getMinX()I

    move-result v2

    invoke-virtual {v8}, Ljava/awt/image/Raster;->getMinY()I

    move-result v4

    invoke-direct {v1, v2, v4}, Ljava/awt/Point;-><init>(II)V

    invoke-static {v6, v1}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/awt/image/WritableRaster;->setRect(Ljava/awt/image/Raster;)V

    move-object v8, v1

    :cond_9
    if-nez v3, :cond_b

    invoke-interface {v7}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    instance-of v1, v1, Ljava/awt/image/IndexColorModel;

    if-eqz v1, :cond_b

    invoke-interface {v7}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    check-cast v1, Ljava/awt/image/IndexColorModel;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/awt/image/IndexColorModel;->getRed(I)I

    move-result v3

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/awt/image/IndexColorModel;->getRed(I)I

    move-result v1

    if-le v3, v1, :cond_a

    goto :goto_6

    :cond_a
    const/4 v2, 0x0

    :goto_6
    move v12, v2

    goto :goto_7

    :cond_b
    const/4 v12, 0x0

    :goto_7
    check-cast v6, Ljava/awt/image/MultiPixelPackedSampleModel;

    invoke-virtual {v6}, Ljava/awt/image/MultiPixelPackedSampleModel;->getScanlineStride()I

    move-result v1

    add-int/lit8 v2, v11, 0x7

    div-int/lit8 v2, v2, 0x8

    invoke-virtual {v8}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v3

    check-cast v3, Ljava/awt/image/DataBufferByte;

    invoke-virtual {v3}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object v3

    iget-object v4, v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Ljavax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object v4, v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v4, v5}, Ljavax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object v4, v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-static {v11}, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->intToMultiByte(I)[B

    move-result-object v5

    invoke-interface {v4, v5}, Ljavax/imageio/stream/ImageOutputStream;->write([B)V

    iget-object v4, v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-static {v10}, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->intToMultiByte(I)[B

    move-result-object v5

    invoke-interface {v4, v5}, Ljavax/imageio/stream/ImageOutputStream;->write([B)V

    const/high16 v4, 0x42c80000    # 100.0f

    if-nez v12, :cond_c

    if-ne v1, v2, :cond_c

    iget-object v1, v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    mul-int v11, v10, v2

    const/4 v2, 0x0

    invoke-interface {v1, v3, v2, v11}, Ljavax/imageio/stream/ImageOutputStream;->write([BII)V

    invoke-virtual {v0, v4}, Ljavax/imageio/ImageWriter;->processImageProgress(F)V

    goto :goto_b

    :cond_c
    if-nez v12, :cond_e

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_8
    if-ge v5, v10, :cond_11

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageWriter;->abortRequested()Z

    move-result v7

    if-eqz v7, :cond_d

    goto :goto_b

    :cond_d
    iget-object v7, v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v7, v3, v6, v2}, Ljavax/imageio/stream/ImageOutputStream;->write([BII)V

    add-int/2addr v6, v1

    int-to-float v7, v5

    mul-float/2addr v7, v4

    int-to-float v8, v10

    div-float/2addr v7, v8

    invoke-virtual {v0, v7}, Ljavax/imageio/ImageWriter;->processImageProgress(F)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_e
    new-array v5, v2, [B

    const/4 v6, 0x0

    const/4 v12, 0x0

    :goto_9
    if-ge v12, v10, :cond_11

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageWriter;->abortRequested()Z

    move-result v7

    if-eqz v7, :cond_f

    goto :goto_b

    :cond_f
    const/4 v7, 0x0

    :goto_a
    if-ge v7, v2, :cond_10

    add-int v8, v7, v6

    aget-byte v8, v3, v8

    not-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_a

    :cond_10
    iget-object v7, v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    const/4 v8, 0x0

    invoke-interface {v7, v5, v8, v2}, Ljavax/imageio/stream/ImageOutputStream;->write([BII)V

    add-int/2addr v6, v1

    int-to-float v7, v12

    mul-float/2addr v7, v4

    int-to-float v9, v10

    div-float/2addr v7, v9

    invoke-virtual {v0, v7}, Ljavax/imageio/ImageWriter;->processImageProgress(F)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_11
    :goto_b
    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageWriter;->abortRequested()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageWriter;->processWriteAborted()V

    goto :goto_c

    :cond_12
    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageWriter;->processImageComplete()V

    iget-object v0, v0, Lcom/sun/imageio/plugins/wbmp/WBMPImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Ljavax/imageio/stream/ImageOutputStream;->flushBefore(J)V

    :goto_c
    return-void

    :cond_13
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "WBMPImageWriter1"

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "WBMPImageWriter4"

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "WBMPImageWriter3"

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
