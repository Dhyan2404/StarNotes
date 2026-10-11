.class public final Lcom/sun/imageio/plugins/png/PNGImageWriter;
.super Ljavax/imageio/ImageWriter;
.source "SourceFile"


# static fields
.field private static final DEFAULT_COMPRESSION_LEVEL:I = 0x4


# instance fields
.field bpp:I

.field currRow:[B

.field filteredRows:[[B

.field metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

.field numBands:I

.field periodX:I

.field periodY:I

.field pixelsDone:I

.field prevRow:[B

.field rowFilter:Lcom/sun/imageio/plugins/png/RowFilter;

.field sampleSize:[I

.field scale:[[B

.field scale0:[B

.field scaleh:[[B

.field scalel:[[B

.field scalingBitDepth:I

.field sourceBands:[I

.field sourceHeight:I

.field sourceWidth:I

.field sourceXOffset:I

.field sourceYOffset:I

.field stream:Ljavax/imageio/stream/ImageOutputStream;

.field totalPixels:I


# direct methods
.method public constructor <init>(Ljavax/imageio/spi/ImageWriterSpi;)V
    .locals 1

    invoke-direct {p0, p1}, Ljavax/imageio/ImageWriter;-><init>(Ljavax/imageio/spi/ImageWriterSpi;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceXOffset:I

    iput v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceYOffset:I

    iput v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceWidth:I

    iput v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceHeight:I

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceBands:[I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->periodX:I

    iput v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->periodY:I

    new-instance v0, Lcom/sun/imageio/plugins/png/RowFilter;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/png/RowFilter;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->rowFilter:Lcom/sun/imageio/plugins/png/RowFilter;

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->prevRow:[B

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->currRow:[B

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->filteredRows:[[B

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sampleSize:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scalingBitDepth:I

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scale:[[B

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scale0:[B

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scaleh:[[B

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scalel:[[B

    return-void
.end method

.method private static chunkType(Ljava/lang/String;)I
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result p0

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr p0, v0

    return p0
.end method

.method private deflate([B)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v0, Ljava/util/zip/DeflaterOutputStream;

    invoke-direct {v0, p0}, Ljava/util/zip/DeflaterOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    invoke-virtual {v0}, Ljava/util/zip/DeflaterOutputStream;->close()V

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method private encodePass(Ljavax/imageio/stream/ImageOutputStream;Ljava/awt/image/RenderedImage;IIII)V
    .locals 34
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v10, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceXOffset:I

    iget v11, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceYOffset:I

    iget v12, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceWidth:I

    iget v13, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceHeight:I

    iget v2, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->periodX:I

    mul-int v3, p3, v2

    mul-int v2, v2, p5

    iget v4, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->periodY:I

    mul-int v5, p4, v4

    mul-int v14, p6, v4

    sub-int v4, v12, v3

    add-int/2addr v4, v2

    const/4 v15, 0x1

    sub-int/2addr v4, v15

    div-int v16, v4, v2

    sub-int v4, v13, v5

    add-int/2addr v4, v14

    sub-int/2addr v4, v15

    div-int/2addr v4, v14

    if-eqz v16, :cond_14

    if-nez v4, :cond_0

    goto/16 :goto_f

    :cond_0
    iget v4, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->numBands:I

    mul-int v17, v3, v4

    mul-int v18, v2, v4

    iget-object v2, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v3, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_bitDepth:I

    const/16 v9, 0x8

    div-int v19, v9, v3

    mul-int v8, v12, v4

    new-array v7, v8, [I

    mul-int v4, v4, v16

    const/16 v6, 0x10

    if-ge v3, v9, :cond_1

    add-int v4, v4, v19

    sub-int/2addr v4, v15

    div-int v4, v4, v19

    goto :goto_0

    :cond_1
    if-ne v3, v6, :cond_2

    mul-int/lit8 v4, v4, 0x2

    :cond_2
    :goto_0
    iget v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_3

    invoke-interface/range {p2 .. p2}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v2

    instance-of v2, v2, Ljava/awt/image/IndexColorModel;

    if-eqz v2, :cond_3

    mul-int/lit8 v4, v4, 0x2

    invoke-interface/range {p2 .. p2}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v2

    check-cast v2, Ljava/awt/image/IndexColorModel;

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    move/from16 v33, v4

    move-object v4, v2

    move/from16 v2, v33

    iget v3, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->bpp:I

    add-int v6, v2, v3

    new-array v6, v6, [B

    iput-object v6, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->currRow:[B

    add-int v6, v2, v3

    new-array v6, v6, [B

    iput-object v6, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->prevRow:[B

    const/4 v6, 0x5

    add-int/2addr v3, v2

    filled-new-array {v6, v3}, [I

    move-result-object v3

    sget-object v6, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[B

    iput-object v3, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->filteredRows:[[B

    iget-object v3, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v6, v3, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_bitDepth:I

    add-int/2addr v5, v11

    :goto_2
    add-int v3, v11, v13

    if-ge v5, v3, :cond_14

    new-instance v3, Ljava/awt/Rectangle;

    invoke-direct {v3, v10, v5, v12, v15}, Ljava/awt/Rectangle;-><init>(IIII)V

    move-object/from16 v15, p2

    invoke-interface {v15, v3}, Ljava/awt/image/RenderedImage;->getData(Ljava/awt/Rectangle;)Ljava/awt/image/Raster;

    move-result-object v3

    iget-object v9, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceBands:[I

    if-eqz v9, :cond_4

    const/16 v20, 0x1

    move/from16 v27, v2

    move-object v2, v3

    move v3, v10

    move-object/from16 v28, v4

    move v4, v5

    move/from16 v29, v5

    move v5, v12

    move/from16 v30, v11

    move/from16 v31, v13

    const/16 v13, 0x10

    move v11, v6

    move/from16 v6, v20

    move-object/from16 v32, v7

    move v7, v10

    move v13, v8

    move/from16 v8, v29

    const/16 v15, 0x8

    invoke-virtual/range {v2 .. v9}, Ljava/awt/image/Raster;->createChild(IIIIII[I)Ljava/awt/image/Raster;

    move-result-object v3

    goto :goto_3

    :cond_4
    move/from16 v27, v2

    move-object/from16 v28, v4

    move/from16 v29, v5

    move-object/from16 v32, v7

    move/from16 v30, v11

    move/from16 v31, v13

    const/16 v15, 0x8

    move v11, v6

    move v13, v8

    :goto_3
    move-object v8, v3

    const/4 v6, 0x1

    move-object v2, v8

    move v3, v10

    move/from16 v4, v29

    move v5, v12

    move-object/from16 v7, v32

    invoke-virtual/range {v2 .. v7}, Ljava/awt/image/Raster;->getPixels(IIII[I)[I

    invoke-interface/range {p2 .. p2}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    invoke-virtual {v8}, Ljava/awt/image/Raster;->createCompatibleWritableRaster()Ljava/awt/image/WritableRaster;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/image/Raster;->getMinX()I

    move-result v21

    invoke-virtual {v2}, Ljava/awt/image/Raster;->getMinY()I

    move-result v22

    invoke-virtual {v2}, Ljava/awt/image/Raster;->getWidth()I

    move-result v23

    invoke-virtual {v2}, Ljava/awt/image/Raster;->getHeight()I

    move-result v24

    move-object/from16 v20, v2

    move-object/from16 v25, v32

    invoke-virtual/range {v20 .. v25}, Ljava/awt/image/WritableRaster;->setPixels(IIII[I)V

    invoke-interface/range {p2 .. p2}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/awt/image/ColorModel;->coerceData(Ljava/awt/image/WritableRaster;Z)Ljava/awt/image/ColorModel;

    invoke-virtual {v2}, Ljava/awt/image/Raster;->getMinX()I

    move-result v21

    invoke-virtual {v2}, Ljava/awt/image/Raster;->getMinY()I

    move-result v22

    invoke-virtual {v2}, Ljava/awt/image/Raster;->getWidth()I

    move-result v23

    invoke-virtual {v2}, Ljava/awt/image/Raster;->getHeight()I

    move-result v24

    invoke-virtual/range {v20 .. v25}, Ljava/awt/image/Raster;->getPixels(IIII[I)[I

    :cond_5
    iget-object v2, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_order:[I

    if-eqz v2, :cond_6

    move v4, v3

    :goto_4
    if-ge v4, v13, :cond_6

    aget v5, v32, v4

    aget v5, v2, v5

    aput v5, v32, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_6
    iget v2, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->bpp:I

    const/4 v4, 0x1

    if-eq v11, v4, :cond_f

    const/4 v4, 0x2

    if-eq v11, v4, :cond_e

    const/4 v4, 0x4

    if-eq v11, v4, :cond_e

    if-eq v11, v15, :cond_a

    const/16 v5, 0x10

    if-eq v11, v5, :cond_8

    :cond_7
    move-object/from16 v3, v28

    goto/16 :goto_e

    :cond_8
    move/from16 v6, v17

    :goto_5
    if-ge v6, v13, :cond_7

    move v7, v3

    :goto_6
    iget v8, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->numBands:I

    if-ge v7, v8, :cond_9

    iget-object v8, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->currRow:[B

    add-int/lit8 v9, v2, 0x1

    iget-object v3, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scaleh:[[B

    aget-object v3, v3, v7

    add-int v20, v6, v7

    aget v20, v32, v20

    aget-byte v3, v3, v20

    aput-byte v3, v8, v2

    add-int/lit8 v2, v9, 0x1

    iget-object v3, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scalel:[[B

    aget-object v3, v3, v7

    aget-byte v3, v3, v20

    aput-byte v3, v8, v9

    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x0

    goto :goto_6

    :cond_9
    add-int v6, v6, v18

    const/4 v3, 0x0

    goto :goto_5

    :cond_a
    const/16 v5, 0x10

    iget v3, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->numBands:I

    const/4 v6, 0x1

    if-ne v3, v6, :cond_c

    move/from16 v3, v17

    :goto_7
    if-ge v3, v13, :cond_7

    iget-object v6, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->currRow:[B

    add-int/lit8 v7, v2, 0x1

    iget-object v8, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scale0:[B

    aget v9, v32, v3

    aget-byte v20, v8, v9

    aput-byte v20, v6, v2

    move-object/from16 v2, v28

    if-eqz v2, :cond_b

    add-int/lit8 v20, v7, 0x1

    and-int/lit16 v9, v9, 0xff

    invoke-virtual {v2, v9}, Ljava/awt/image/IndexColorModel;->getAlpha(I)I

    move-result v9

    aget-byte v8, v8, v9

    aput-byte v8, v6, v7

    goto :goto_8

    :cond_b
    move/from16 v20, v7

    :goto_8
    add-int v3, v3, v18

    move-object/from16 v28, v2

    move/from16 v2, v20

    goto :goto_7

    :cond_c
    move-object/from16 v3, v28

    move/from16 v6, v17

    :goto_9
    if-ge v6, v13, :cond_12

    const/4 v7, 0x0

    :goto_a
    iget v8, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->numBands:I

    if-ge v7, v8, :cond_d

    iget-object v8, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->currRow:[B

    add-int/lit8 v9, v2, 0x1

    iget-object v4, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scale:[[B

    aget-object v4, v4, v7

    add-int v20, v6, v7

    aget v20, v32, v20

    aget-byte v4, v4, v20

    aput-byte v4, v8, v2

    add-int/lit8 v7, v7, 0x1

    move v2, v9

    const/4 v4, 0x4

    goto :goto_a

    :cond_d
    add-int v6, v6, v18

    const/4 v4, 0x4

    goto :goto_9

    :cond_e
    move-object/from16 v3, v28

    const/16 v5, 0x10

    const/4 v4, 0x1

    goto :goto_b

    :cond_f
    move-object/from16 v3, v28

    const/16 v5, 0x10

    :goto_b
    add-int/lit8 v6, v19, -0x1

    move/from16 v7, v17

    const/4 v8, 0x0

    const/4 v9, 0x0

    :goto_c
    if-ge v7, v13, :cond_11

    iget-object v4, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scale0:[B

    aget v20, v32, v7

    aget-byte v4, v4, v20

    shl-int/2addr v9, v11

    or-int/2addr v4, v9

    add-int/lit8 v9, v8, 0x1

    and-int/2addr v8, v6

    if-ne v8, v6, :cond_10

    iget-object v8, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->currRow:[B

    add-int/lit8 v9, v2, 0x1

    int-to-byte v4, v4

    aput-byte v4, v8, v2

    move v2, v9

    const/4 v8, 0x0

    const/4 v9, 0x0

    goto :goto_d

    :cond_10
    move v8, v9

    move v9, v4

    :goto_d
    add-int v7, v7, v18

    const/4 v4, 0x1

    goto :goto_c

    :cond_11
    and-int v4, v8, v6

    if-eqz v4, :cond_12

    div-int v4, v15, v11

    sub-int/2addr v4, v8

    mul-int/2addr v4, v11

    shl-int v4, v9, v4

    iget-object v6, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->currRow:[B

    int-to-byte v4, v4

    aput-byte v4, v6, v2

    :cond_12
    :goto_e
    iget-object v2, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->rowFilter:Lcom/sun/imageio/plugins/png/RowFilter;

    iget-object v4, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v4, v4, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    iget-object v6, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->currRow:[B

    iget-object v7, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->prevRow:[B

    iget-object v8, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->filteredRows:[[B

    iget v9, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->bpp:I

    move-object/from16 v20, v2

    move/from16 v21, v4

    move-object/from16 v22, v6

    move-object/from16 v23, v7

    move-object/from16 v24, v8

    move/from16 v25, v27

    move/from16 v26, v9

    invoke-virtual/range {v20 .. v26}, Lcom/sun/imageio/plugins/png/RowFilter;->filterRow(I[B[B[[BII)I

    move-result v2

    invoke-interface {v1, v2}, Ljavax/imageio/stream/ImageOutputStream;->write(I)V

    iget-object v4, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->filteredRows:[[B

    aget-object v2, v4, v2

    iget v4, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->bpp:I

    move/from16 v6, v27

    invoke-interface {v1, v2, v4, v6}, Ljavax/imageio/stream/ImageOutputStream;->write([BII)V

    iget-object v2, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->currRow:[B

    iget-object v4, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->prevRow:[B

    iput-object v4, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->currRow:[B

    iput-object v2, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->prevRow:[B

    iget v2, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->pixelsDone:I

    add-int v2, v2, v16

    iput v2, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->pixelsDone:I

    const/high16 v4, 0x42c80000    # 100.0f

    int-to-float v2, v2

    mul-float/2addr v2, v4

    iget v4, v0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->totalPixels:I

    int-to-float v4, v4

    div-float/2addr v2, v4

    invoke-virtual {v0, v2}, Ljavax/imageio/ImageWriter;->processImageProgress(F)V

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageWriter;->abortRequested()Z

    move-result v2

    if-eqz v2, :cond_13

    return-void

    :cond_13
    add-int v2, v29, v14

    move v5, v2

    move-object v4, v3

    move v2, v6

    move v6, v11

    move v8, v13

    move v9, v15

    move/from16 v11, v30

    move/from16 v13, v31

    move-object/from16 v7, v32

    const/4 v15, 0x1

    goto/16 :goto_2

    :cond_14
    :goto_f
    return-void
.end method

.method private equals([I[I)Z
    .locals 3

    const/4 p0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    array-length v0, p1

    array-length v1, p2

    if-eq v0, v1, :cond_1

    return p0

    :cond_1
    move v0, p0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    aget v1, p1, v0

    aget v2, p2, v0

    if-eq v1, v2, :cond_2

    return p0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    :cond_4
    :goto_1
    return p0
.end method

.method private initializeScaleTables([I)V
    .locals 11

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_bitDepth:I

    iget v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scalingBitDepth:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sampleSize:[I

    invoke-direct {p0, p1, v1}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sampleSize:[I

    iput v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scalingBitDepth:I

    const/4 v1, 0x1

    shl-int v2, v1, v0

    sub-int/2addr v2, v1

    const/16 v3, 0x8

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-gt v0, v3, :cond_3

    iget v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->numBands:I

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scale:[[B

    move v0, v5

    :goto_0
    iget v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->numBands:I

    if-ge v0, v3, :cond_2

    aget v3, p1, v0

    shl-int v3, v1, v3

    sub-int/2addr v3, v1

    div-int/lit8 v6, v3, 0x2

    iget-object v7, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scale:[[B

    add-int/lit8 v8, v3, 0x1

    new-array v8, v8, [B

    aput-object v8, v7, v0

    move v7, v5

    :goto_1
    if-gt v7, v3, :cond_1

    iget-object v8, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scale:[[B

    aget-object v8, v8, v0

    mul-int v9, v7, v2

    add-int/2addr v9, v6

    div-int/2addr v9, v3

    int-to-byte v9, v9

    aput-byte v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scale:[[B

    aget-object p1, p1, v5

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scale0:[B

    iput-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scalel:[[B

    iput-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scaleh:[[B

    goto :goto_4

    :cond_3
    iget v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->numBands:I

    new-array v3, v0, [[B

    iput-object v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scaleh:[[B

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scalel:[[B

    move v0, v5

    :goto_2
    iget v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->numBands:I

    if-ge v0, v3, :cond_5

    aget v3, p1, v0

    shl-int v3, v1, v3

    sub-int/2addr v3, v1

    div-int/lit8 v6, v3, 0x2

    iget-object v7, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scaleh:[[B

    add-int/lit8 v8, v3, 0x1

    new-array v9, v8, [B

    aput-object v9, v7, v0

    iget-object v7, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scalel:[[B

    new-array v8, v8, [B

    aput-object v8, v7, v0

    move v7, v5

    :goto_3
    if-gt v7, v3, :cond_4

    mul-int v8, v7, v2

    add-int/2addr v8, v6

    div-int/2addr v8, v3

    iget-object v9, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scaleh:[[B

    aget-object v9, v9, v0

    shr-int/lit8 v10, v8, 0x8

    int-to-byte v10, v10

    aput-byte v10, v9, v7

    iget-object v9, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scalel:[[B

    aget-object v9, v9, v0

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_5
    iput-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scale:[[B

    iput-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->scale0:[B

    :goto_4
    return-void
.end method

.method private writeIEND()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v1, 0x49454e44    # 808164.25f

    iget-object p0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v1, p0}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILjavax/imageio/stream/ImageOutputStream;)V

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    return-void
.end method

.method private writeUnknownChunks()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->unknownChunkType:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->unknownChunkData:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Lcom/sun/imageio/plugins/png/ChunkStream;

    invoke-static {v2}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->chunkType(Ljava/lang/String;)I

    move-result v2

    iget-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-direct {v3, v2, v4}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILjavax/imageio/stream/ImageOutputStream;)V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-virtual {v3, v2}, Ljavax/imageio/stream/ImageOutputStreamImpl;->write([B)V

    invoke-virtual {v3}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private write_IDAT(Ljava/awt/image/RenderedImage;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v7, Lcom/sun/imageio/plugins/png/IDATOutputStream;

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    const v1, 0x8000

    invoke-direct {v7, v0, v1, p2}, Lcom/sun/imageio/plugins/png/IDATOutputStream;-><init>(Ljavax/imageio/stream/ImageOutputStream;II)V

    :try_start_0
    iget-object p2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget p2, p2, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_interlaceMethod:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    const/4 p2, 0x0

    :goto_0
    const/4 v0, 0x7

    if-ge p2, v0, :cond_2

    sget-object v0, Lcom/sun/imageio/plugins/png/PNGImageReader;->adam7XOffset:[I

    aget v3, v0, p2

    sget-object v0, Lcom/sun/imageio/plugins/png/PNGImageReader;->adam7YOffset:[I

    aget v4, v0, p2

    sget-object v0, Lcom/sun/imageio/plugins/png/PNGImageReader;->adam7XSubsampling:[I

    aget v5, v0, p2

    sget-object v0, Lcom/sun/imageio/plugins/png/PNGImageReader;->adam7YSubsampling:[I

    aget v6, v0, p2

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->encodePass(Ljavax/imageio/stream/ImageOutputStream;Ljava/awt/image/RenderedImage;IIII)V

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, v7

    move-object v2, p1

    invoke-direct/range {v0 .. v6}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->encodePass(Ljavax/imageio/stream/ImageOutputStream;Ljava/awt/image/RenderedImage;IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_1
    invoke-virtual {v7}, Lcom/sun/imageio/plugins/png/IDATOutputStream;->finish()V

    return-void

    :catchall_0
    move-exception p0

    invoke-virtual {v7}, Lcom/sun/imageio/plugins/png/IDATOutputStream;->finish()V

    throw p0
.end method

.method private write_IHDR()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v1, 0x49484452

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILjavax/imageio/stream/ImageOutputStream;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_width:I

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_height:I

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_bitDepth:I

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_compressionMethod:I

    if-nez v1, :cond_2

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_filterMethod:I

    if-nez v1, :cond_1

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object p0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget p0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_interlaceMethod:I

    if-ltz p0, :cond_0

    const/4 v1, 0x1

    if-gt p0, v1, :cond_0

    invoke-virtual {v0, p0}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    return-void

    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "Only interlace methods 0 (node) and 1 (adam7) are defined in PNG 1.1"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "Only filter method 0 is defined in PNG 1.1"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "Only compression method 0 is defined in PNG 1.1"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private write_PLTE()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v1, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_present:Z

    if-eqz v1, :cond_3

    iget v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v2, 0x504c5445

    iget-object v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v2, v3}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILjavax/imageio/stream/ImageOutputStream;)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_red:[B

    array-length v2, v2

    mul-int/lit8 v3, v2, 0x3

    new-array v3, v3, [B

    move v4, v1

    :goto_0
    if-ge v1, v2, :cond_1

    add-int/lit8 v5, v4, 0x1

    iget-object v6, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v7, v6, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_red:[B

    aget-byte v7, v7, v1

    aput-byte v7, v3, v4

    add-int/lit8 v4, v5, 0x1

    iget-object v7, v6, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_green:[B

    aget-byte v7, v7, v1

    aput-byte v7, v3, v5

    add-int/lit8 v5, v4, 0x1

    iget-object v6, v6, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_blue:[B

    aget-byte v6, v6, v1

    aput-byte v6, v3, v4

    add-int/lit8 v1, v1, 0x1

    move v4, v5

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v3}, Ljavax/imageio/stream/ImageOutputStreamImpl;->write([B)V

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    goto :goto_2

    :cond_2
    :goto_1
    const-string v0, "A PLTE chunk may not appear in a gray or gray alpha image.\nThe chunk will not be written"

    invoke-virtual {p0, v1, v0}, Ljavax/imageio/ImageWriter;->processWarningOccurred(ILjava/lang/String;)V

    :cond_3
    :goto_2
    return-void
.end method

.method private write_bKGD()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_present:Z

    if-eqz v0, :cond_5

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v1, 0x624b4744

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILjavax/imageio/stream/ImageOutputStream;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v2, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    const/4 v3, 0x3

    and-int/2addr v2, v3

    iget v4, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_colorType:I

    iget v5, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_red:I

    iget v6, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_green:I

    iget v7, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_blue:I

    const/4 v8, 0x2

    if-ne v2, v8, :cond_0

    if-nez v4, :cond_0

    iget v5, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_gray:I

    move v4, v2

    move v6, v5

    move v7, v6

    :cond_0
    if-eq v4, v2, :cond_1

    const/4 v0, 0x0

    const-string v1, "bKGD metadata has incompatible color type.\nThe chunk will not be written."

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/ImageWriter;->processWarningOccurred(ILjava/lang/String;)V

    return-void

    :cond_1
    if-ne v2, v3, :cond_2

    iget p0, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_index:I

    invoke-virtual {v0, p0}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    goto :goto_1

    :cond_2
    if-eqz v2, :cond_4

    const/4 p0, 0x4

    if-ne v2, p0, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v0, v5}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    invoke-virtual {v0, v6}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    invoke-virtual {v0, v7}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    goto :goto_1

    :cond_4
    :goto_0
    iget p0, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->bKGD_gray:I

    invoke-virtual {v0, p0}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    :goto_1
    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    :cond_5
    return-void
.end method

.method private write_cHRM()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_present:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v1, 0x6348524d

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILjavax/imageio/stream/ImageOutputStream;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_whitePointX:I

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_whitePointY:I

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_redX:I

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_redY:I

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_greenX:I

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_greenY:I

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_blueX:I

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    iget-object p0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget p0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->cHRM_blueY:I

    invoke-virtual {v0, p0}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    :cond_0
    return-void
.end method

.method private write_gAMA()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->gAMA_present:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v1, 0x67414d41

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILjavax/imageio/stream/ImageOutputStream;)V

    iget-object p0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget p0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->gAMA_gamma:I

    invoke-virtual {v0, p0}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    :cond_0
    return-void
.end method

.method private write_hIST()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/imageio/IIOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->hIST_present:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v1, 0x68495354

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILjavax/imageio/stream/ImageOutputStream;)V

    iget-object p0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v1, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_present:Z

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->hIST_histogram:[C

    const/4 v1, 0x0

    array-length v2, p0

    invoke-virtual {v0, p0, v1, v2}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeChars([CII)V

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "hIST chunk without PLTE chunk!"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private write_iCCP()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_present:Z

    if-eqz v0, :cond_1

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v1, 0x69434350

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILjavax/imageio/stream/ImageOutputStream;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_profileName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x4f

    if-gt v1, v2, :cond_0

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_profileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeBytes(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_compressionMethod:I

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object p0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object p0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iCCP_compressedProfile:[B

    invoke-virtual {v0, p0}, Ljavax/imageio/stream/ImageOutputStreamImpl;->write([B)V

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "iCCP profile name is longer than 79"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private write_iTXt()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_compressionFlag:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_compressionMethod:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v3, v3, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_languageTag:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v4, v4, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_translatedKeyword:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    iget-object v5, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v5, v5, Lcom/sun/imageio/plugins/png/PNGMetadata;->iTXt_text:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    new-instance v6, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v7, 0x69545874

    iget-object v8, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-direct {v6, v7, v8}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILjavax/imageio/stream/ImageOutputStream;)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x4f

    if-gt v8, v9, :cond_1

    invoke-virtual {v6, v7}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeBytes(Ljava/lang/String;)V

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    invoke-virtual {v6, v9}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v6, v9}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "UTF8"

    invoke-virtual {v9, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    invoke-virtual {v6, v9}, Ljavax/imageio/stream/ImageOutputStreamImpl;->write([B)V

    invoke-virtual {v6, v7}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v7, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->deflate([B)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/imageio/stream/ImageOutputStreamImpl;->write([B)V

    goto :goto_1

    :cond_0
    invoke-virtual {v7, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    invoke-virtual {v6, v7}, Ljavax/imageio/stream/ImageOutputStreamImpl;->write([B)V

    :goto_1
    invoke-virtual {v6}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    goto :goto_0

    :cond_1
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "iTXt keyword is longer than 79"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method private write_magic()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x8

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0, v0}, Ljavax/imageio/stream/ImageOutputStream;->write([B)V

    return-void

    nop

    :array_0
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data
.end method

.method private write_pHYs()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_present:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v1, 0x70485973

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILjavax/imageio/stream/ImageOutputStream;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_pixelsPerUnitXAxis:I

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_pixelsPerUnitYAxis:I

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeInt(I)V

    iget-object p0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget p0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->pHYs_unitSpecifier:I

    invoke-virtual {v0, p0}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    :cond_0
    return-void
.end method

.method private write_sBIT()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_present:Z

    if-eqz v0, :cond_7

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v1, 0x73424954

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILjavax/imageio/stream/ImageOutputStream;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v2, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    iget v3, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_colorType:I

    if-eq v3, v2, :cond_0

    const/4 v0, 0x0

    const-string v1, "sBIT metadata has wrong color type.\nThe chunk will not be written."

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/ImageWriter;->processWarningOccurred(ILjava/lang/String;)V

    return-void

    :cond_0
    const/4 v3, 0x6

    const/4 v4, 0x4

    if-eqz v2, :cond_3

    if-ne v2, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v5, 0x2

    if-eq v2, v5, :cond_2

    const/4 v5, 0x3

    if-eq v2, v5, :cond_2

    if-ne v2, v3, :cond_4

    :cond_2
    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_redBits:I

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_greenBits:I

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_blueBits:I

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    goto :goto_1

    :cond_3
    :goto_0
    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_grayBits:I

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    :cond_4
    :goto_1
    if-eq v2, v4, :cond_5

    if-ne v2, v3, :cond_6

    :cond_5
    iget-object p0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget p0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sBIT_alphaBits:I

    invoke-virtual {v0, p0}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    :cond_6
    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    :cond_7
    return-void
.end method

.method private write_sPLT()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_present:Z

    if-eqz v0, :cond_3

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v1, 0x73504c54

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILjavax/imageio/stream/ImageOutputStream;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_paletteName:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x4f

    if-gt v1, v2, :cond_2

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_paletteName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeBytes(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_sampleDepth:I

    invoke-virtual {v0, v2}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v3, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_red:[I

    array-length v3, v3

    iget v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_sampleDepth:I

    const/16 v4, 0x8

    if-ne v2, v4, :cond_0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_red:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_green:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_blue:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_alpha:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_frequency:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, v3, :cond_1

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_red:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_green:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_blue:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_alpha:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->sPLT_frequency:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    goto :goto_2

    :cond_2
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "sPLT palette name is longer than 79"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    return-void
.end method

.method private write_sRGB()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sRGB_present:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v1, 0x73524742

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILjavax/imageio/stream/ImageOutputStream;)V

    iget-object p0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget p0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->sRGB_renderingIntent:I

    invoke-virtual {v0, p0}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    :cond_0
    return-void
.end method

.method private write_tEXt()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tEXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tEXt_text:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v3, 0x74455874

    iget-object v4, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-direct {v2, v3, v4}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILjavax/imageio/stream/ImageOutputStream;)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x4f

    if-gt v4, v5, :cond_0

    invoke-virtual {v2, v3}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeBytes(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "tEXt keyword is longer than 79"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method private write_tIME()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_present:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v1, 0x74494d45

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILjavax/imageio/stream/ImageOutputStream;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_year:I

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_month:I

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_day:I

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_hour:I

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_minute:I

    invoke-virtual {v0, v1}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    iget-object p0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget p0, p0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tIME_second:I

    invoke-virtual {v0, p0}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    :cond_0
    return-void
.end method

.method private write_tRNS()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/imageio/IIOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-boolean v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_present:Z

    if-eqz v0, :cond_6

    new-instance v0, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v1, 0x74524e53

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-direct {v0, v1, v2}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILjavax/imageio/stream/ImageOutputStream;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget v2, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_colorType:I

    iget v3, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_colorType:I

    iget v4, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_red:I

    iget v5, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_green:I

    iget v6, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_blue:I

    const/4 v7, 0x2

    if-ne v2, v7, :cond_0

    if-nez v3, :cond_0

    iget v4, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_gray:I

    move v3, v2

    move v5, v4

    move v6, v5

    :cond_0
    if-eq v3, v2, :cond_1

    const/4 v0, 0x0

    const-string v1, "tRNS metadata has incompatible color type.\nThe chunk will not be written."

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/ImageWriter;->processWarningOccurred(ILjava/lang/String;)V

    return-void

    :cond_1
    const/4 p0, 0x3

    if-ne v2, p0, :cond_3

    iget-boolean p0, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->PLTE_present:Z

    if-eqz p0, :cond_2

    iget-object p0, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_alpha:[B

    invoke-virtual {v0, p0}, Ljavax/imageio/stream/ImageOutputStreamImpl;->write([B)V

    goto :goto_0

    :cond_2
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "tRNS chunk without PLTE chunk!"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    if-nez v2, :cond_4

    iget p0, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->tRNS_gray:I

    invoke-virtual {v0, p0}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    goto :goto_0

    :cond_4
    if-ne v2, v7, :cond_5

    invoke-virtual {v0, v4}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    invoke-virtual {v0, v5}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    invoke-virtual {v0, v6}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeShort(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    goto :goto_1

    :cond_5
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "tRNS chunk for color type 4 or 6!"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    return-void
.end method

.method private write_zTXt()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v0, v0, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_keyword:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v1, v1, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_compressionMethod:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/png/PNGMetadata;->zTXt_text:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance v3, Lcom/sun/imageio/plugins/png/ChunkStream;

    const v4, 0x7a545874

    iget-object v5, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-direct {v3, v4, v5}, Lcom/sun/imageio/plugins/png/ChunkStream;-><init>(ILjavax/imageio/stream/ImageOutputStream;)V

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x4f

    if-gt v5, v6, :cond_0

    invoke-virtual {v3, v4}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeBytes(Ljava/lang/String;)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v3, v4}, Ljavax/imageio/stream/ImageOutputStreamImpl;->writeByte(I)V

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "ISO-8859-1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->deflate([B)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavax/imageio/stream/ImageOutputStreamImpl;->write([B)V

    invoke-virtual {v3}, Lcom/sun/imageio/plugins/png/ChunkStream;->finish()V

    goto :goto_0

    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "tEXt keyword is longer than 79"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method


# virtual methods
.method public convertImageMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 0

    instance-of p0, p1, Lcom/sun/imageio/plugins/png/PNGMetadata;

    if-eqz p0, :cond_0

    check-cast p1, Lcom/sun/imageio/plugins/png/PNGMetadata;

    invoke-virtual {p1}, Lcom/sun/imageio/plugins/png/PNGMetadata;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/imageio/plugins/png/PNGMetadata;

    return-object p0

    :cond_0
    new-instance p0, Lcom/sun/imageio/plugins/png/PNGMetadata;

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/png/PNGMetadata;-><init>(Ljavax/imageio/metadata/IIOMetadata;)V

    return-object p0
.end method

.method public convertStreamMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultImageMetadata(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 0

    new-instance p0, Lcom/sun/imageio/plugins/png/PNGMetadata;

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGMetadata;-><init>()V

    invoke-virtual {p1}, Ljavax/imageio/ImageTypeSpecifier;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p2

    invoke-virtual {p2}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/sun/imageio/plugins/png/PNGMetadata;->initialize(Ljavax/imageio/ImageTypeSpecifier;I)V

    return-object p0
.end method

.method public getDefaultStreamMetadata(Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultWriteParam()Ljavax/imageio/ImageWriteParam;
    .locals 1

    new-instance v0, Lcom/sun/imageio/plugins/png/PNGImageWriteParam;

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/imageio/plugins/png/PNGImageWriteParam;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method public setOutput(Ljava/lang/Object;)V
    .locals 1

    invoke-super {p0, p1}, Ljavax/imageio/ImageWriter;->setOutput(Ljava/lang/Object;)V

    if-eqz p1, :cond_1

    instance-of v0, p1, Ljavax/imageio/stream/ImageOutputStream;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/imageio/stream/ImageOutputStream;

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "output not an ImageOutputStream!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    :goto_0
    return-void
.end method

.method public write(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    iget-object p1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    if-eqz p1, :cond_f

    if-eqz p2, :cond_e

    invoke-virtual {p2}, Ljavax/imageio/IIOImage;->hasRaster()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {p2}, Ljavax/imageio/IIOImage;->getRenderedImage()Ljava/awt/image/RenderedImage;

    move-result-object p1

    invoke-interface {p1}, Ljava/awt/image/RenderedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->numBands:I

    invoke-interface {p1}, Ljava/awt/image/RenderedImage;->getMinX()I

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceXOffset:I

    invoke-interface {p1}, Ljava/awt/image/RenderedImage;->getMinY()I

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceYOffset:I

    invoke-interface {p1}, Ljava/awt/image/RenderedImage;->getWidth()I

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceWidth:I

    invoke-interface {p1}, Ljava/awt/image/RenderedImage;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceHeight:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceBands:[I

    const/4 v2, 0x1

    iput v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->periodX:I

    iput v2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->periodY:I

    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljavax/imageio/IIOParam;->getSourceRegion()Ljava/awt/Rectangle;

    move-result-object v3

    if-eqz v3, :cond_0

    new-instance v4, Ljava/awt/Rectangle;

    invoke-interface {p1}, Ljava/awt/image/RenderedImage;->getMinX()I

    move-result v5

    invoke-interface {p1}, Ljava/awt/image/RenderedImage;->getMinY()I

    move-result v6

    invoke-interface {p1}, Ljava/awt/image/RenderedImage;->getWidth()I

    move-result v7

    invoke-interface {p1}, Ljava/awt/image/RenderedImage;->getHeight()I

    move-result v8

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v3, v4}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object v3

    iget v4, v3, Ljava/awt/Rectangle;->x:I

    iput v4, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceXOffset:I

    iget v4, v3, Ljava/awt/Rectangle;->y:I

    iput v4, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceYOffset:I

    iget v4, v3, Ljava/awt/Rectangle;->width:I

    iput v4, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceWidth:I

    iget v3, v3, Ljava/awt/Rectangle;->height:I

    iput v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceHeight:I

    :cond_0
    invoke-virtual {p3}, Ljavax/imageio/IIOParam;->getSubsamplingXOffset()I

    move-result v3

    invoke-virtual {p3}, Ljavax/imageio/IIOParam;->getSubsamplingYOffset()I

    move-result v4

    iget v5, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceXOffset:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceXOffset:I

    iget v5, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceYOffset:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceYOffset:I

    iget v5, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceWidth:I

    sub-int/2addr v5, v3

    iput v5, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceWidth:I

    iget v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceHeight:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceHeight:I

    invoke-virtual {p3}, Ljavax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result v3

    iput v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->periodX:I

    invoke-virtual {p3}, Ljavax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result v3

    iput v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->periodY:I

    invoke-virtual {p3}, Ljavax/imageio/IIOParam;->getSourceBands()[I

    move-result-object v3

    if-eqz v3, :cond_1

    iput-object v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceBands:[I

    array-length v3, v3

    iput v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->numBands:I

    :cond_1
    iget v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceWidth:I

    iget v4, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->periodX:I

    add-int/2addr v3, v4

    sub-int/2addr v3, v2

    div-int/2addr v3, v4

    iget v4, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->sourceHeight:I

    iget v5, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->periodY:I

    add-int/2addr v4, v5

    sub-int/2addr v4, v2

    div-int/2addr v4, v5

    if-lez v3, :cond_c

    if-lez v4, :cond_c

    mul-int v5, v3, v4

    iput v5, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->totalPixels:I

    const/4 v5, 0x0

    iput v5, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->pixelsDone:I

    invoke-virtual {p2}, Ljavax/imageio/IIOImage;->getMetadata()Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-static {p1}, Ljavax/imageio/ImageTypeSpecifier;->createFromRenderedImage(Ljava/awt/image/RenderedImage;)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v6

    invoke-virtual {p0, p2, v6, v1}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->convertImageMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p2

    check-cast p2, Lcom/sun/imageio/plugins/png/PNGMetadata;

    iput-object p2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    goto :goto_0

    :cond_2
    new-instance p2, Lcom/sun/imageio/plugins/png/PNGMetadata;

    invoke-direct {p2}, Lcom/sun/imageio/plugins/png/PNGMetadata;-><init>()V

    iput-object p2, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    :goto_0
    const/4 p2, 0x2

    const/4 v1, 0x4

    if-eqz p3, :cond_8

    invoke-virtual {p3}, Ljavax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v6

    if-eqz v6, :cond_4

    if-eq v6, p2, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p3}, Ljavax/imageio/ImageWriteParam;->getCompressionQuality()F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v7, v6, v7

    if-ltz v7, :cond_5

    const/high16 v7, 0x3f800000    # 1.0f

    cmpg-float v7, v6, v7

    if-gtz v7, :cond_5

    const/high16 v1, 0x41100000    # 9.0f

    mul-float/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    rsub-int/lit8 v1, v1, 0x9

    goto :goto_1

    :cond_4
    move v1, v5

    :cond_5
    :goto_1
    invoke-virtual {p3}, Ljavax/imageio/ImageWriteParam;->getProgressiveMode()I

    move-result p3

    if-eqz p3, :cond_7

    if-eq p3, v2, :cond_6

    goto :goto_2

    :cond_6
    iget-object p3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iput v2, p3, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_interlaceMethod:I

    goto :goto_2

    :cond_7
    iget-object p3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iput v5, p3, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_interlaceMethod:I

    :cond_8
    :goto_2
    iget-object p3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    new-instance v6, Ljavax/imageio/ImageTypeSpecifier;

    invoke-direct {v6, p1}, Ljavax/imageio/ImageTypeSpecifier;-><init>(Ljava/awt/image/RenderedImage;)V

    iget v7, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->numBands:I

    invoke-virtual {p3, v6, v7}, Lcom/sun/imageio/plugins/png/PNGMetadata;->initialize(Ljavax/imageio/ImageTypeSpecifier;I)V

    iget-object p3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->metadata:Lcom/sun/imageio/plugins/png/PNGMetadata;

    iput v3, p3, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_width:I

    iput v4, p3, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_height:I

    iget v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->numBands:I

    iget p3, p3, Lcom/sun/imageio/plugins/png/PNGMetadata;->IHDR_bitDepth:I

    const/16 v4, 0x10

    if-ne p3, v4, :cond_9

    move v2, p2

    :cond_9
    mul-int/2addr v3, v2

    iput v3, p0, Lcom/sun/imageio/plugins/png/PNGImageWriter;->bpp:I

    invoke-virtual {v0}, Ljava/awt/image/SampleModel;->getSampleSize()[I

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->initializeScaleTables([I)V

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->clearAbortRequest()V

    invoke-virtual {p0, v5}, Ljavax/imageio/ImageWriter;->processImageStarted(I)V

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->abortRequested()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->processWriteAborted()V

    goto :goto_3

    :cond_a
    :try_start_0
    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_magic()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_IHDR()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_cHRM()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_gAMA()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_iCCP()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_sBIT()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_sRGB()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_PLTE()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_hIST()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_tRNS()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_bKGD()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_pHYs()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_sPLT()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_tIME()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_tEXt()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_iTXt()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_zTXt()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->writeUnknownChunks()V

    invoke-direct {p0, p1, v1}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->write_IDAT(Ljava/awt/image/RenderedImage;I)V

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->abortRequested()Z

    move-result p1

    if-eqz p1, :cond_b

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->processWriteAborted()V

    goto :goto_3

    :cond_b
    invoke-direct {p0}, Lcom/sun/imageio/plugins/png/PNGImageWriter;->writeIEND()V

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->processImageComplete()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/imageio/IIOException;

    const-string p2, "I/O error writing PNG file!"

    invoke-direct {p1, p2, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty source region!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "image has a Raster!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "image == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "output == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
