.class public abstract Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected activeSrcHeight:I

.field protected activeSrcMinX:I

.field protected activeSrcMinY:I

.field protected activeSrcWidth:I

.field private adjustBitDepths:Z

.field private bitDepthScale:[[I

.field protected bitsPerSample:[I

.field private bitsPerSampleCache:[I

.field protected byteCount:I

.field protected colorConverter:Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;

.field protected colorMap:[C

.field protected compression:I

.field private destBitsPerSampleCache:[I

.field protected destinationBands:[I

.field private destinationBandsCache:[I

.field protected dstHeight:I

.field protected dstMinX:I

.field protected dstMinY:I

.field protected dstWidth:I

.field protected dstXOffset:I

.field protected dstYOffset:I

.field protected extraSamples:[I

.field protected image:Ljava/awt/image/BufferedImage;

.field private isBilevel:Z

.field private isContiguous:Z

.field private isFirstBitDepthTable:Z

.field private isImageSimple:Z

.field protected metadata:Ljavax/imageio/metadata/IIOMetadata;

.field protected offset:J

.field protected photometricInterpretation:I

.field protected planar:Z

.field protected planarBand:I

.field private planarCache:Z

.field protected rawImage:Ljava/awt/image/BufferedImage;

.field protected reader:Ljavax/imageio/ImageReader;

.field protected sampleFormat:[I

.field protected samplesPerPixel:I

.field protected sourceBands:[I

.field private sourceBandsCache:[I

.field protected sourceXOffset:I

.field protected sourceYOffset:I

.field protected srcHeight:I

.field protected srcMinX:I

.field protected srcMinY:I

.field protected srcWidth:I

.field protected stream:Ljavax/imageio/stream/ImageInputStream;

.field protected subsampleX:I

.field protected subsampleY:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->planarBand:I

    const/4 v1, 0x1

    filled-new-array {v1}, [I

    move-result-object v2

    iput-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->sampleFormat:[I

    iput-boolean v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->isFirstBitDepthTable:Z

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->planarCache:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->destBitsPerSampleCache:[I

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->sourceBandsCache:[I

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitsPerSampleCache:[I

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->destinationBandsCache:[I

    return-void
.end method

.method private static areIntArraysEqual([I[I)Z
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    array-length v2, p0

    array-length v3, p1

    if-eq v2, v3, :cond_1

    return v1

    :cond_1
    array-length v2, p0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, p0, v3

    aget v5, p1, v3

    if-eq v4, v5, :cond_2

    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    return v0

    :cond_4
    :goto_1
    if-nez p0, :cond_5

    if-nez p1, :cond_5

    return v0

    :cond_5
    return v1
.end method

.method private static areSampleSizesEqual(Ljava/awt/image/SampleModel;)Z
    .locals 6

    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getSampleSize()[I

    move-result-object p0

    const/4 v0, 0x0

    aget v1, p0, v0

    array-length v2, p0

    const/4 v3, 0x1

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget v5, p0, v4

    if-eq v5, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    return v0
.end method

.method public static createComponentCM(Ljava/awt/color/ColorSpace;I[IIZZ)Ljava/awt/image/ColorModel;
    .locals 7

    if-eqz p4, :cond_0

    const/4 p1, 0x3

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    move v5, p1

    new-instance p1, Ljava/awt/image/ComponentColorModel;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move v3, p4

    move v4, p5

    move v6, p3

    invoke-direct/range {v0 .. v6}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;[IZZII)V

    return-object p1
.end method

.method public static createInterleavedSM(II)Ljava/awt/image/SampleModel;
    .locals 8

    new-array v6, p1, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    aput v0, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v7, Ljava/awt/image/PixelInterleavedSampleModel;

    const/4 v2, 0x1

    const/4 v3, 0x1

    move-object v0, v7

    move v1, p0

    move v4, p1

    move v5, p1

    invoke-direct/range {v0 .. v6}, Ljava/awt/image/PixelInterleavedSampleModel;-><init>(IIIII[I)V

    return-object v7
.end method

.method private static createMask([II)I
    .locals 2

    aget v0, p0, p1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    add-int/2addr p1, v1

    :goto_0
    array-length v1, p0

    if-ge p1, v1, :cond_0

    aget v1, p0, p1

    shl-int/2addr v0, v1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method private static getBitsPerPixel(Ljava/awt/image/SampleModel;)I
    .locals 4

    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getSampleSize()[I

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget v3, p0, v1

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private static getDataTypeFromNumBits(IZ)I
    .locals 1

    const/16 v0, 0x8

    if-gt p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x10

    if-gt p0, v0, :cond_2

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method private static getDataTypeSize(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/16 p0, 0x40

    goto :goto_0

    :cond_0
    new-instance v0, Ljavax/imageio/IIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown data type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/16 p0, 0x20

    goto :goto_0

    :cond_2
    const/16 p0, 0x10

    goto :goto_0

    :cond_3
    const/16 p0, 0x8

    :goto_0
    return p0
.end method

.method public static getRawImageTypeSpecifier(III[I[I[I[C)Ljavax/imageio/ImageTypeSpecifier;
    .locals 17

    move/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    const/4 v4, 0x4

    const/16 v5, 0x10

    const/16 v6, 0x8

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v2, v9, :cond_8

    aget v10, v3, v8

    if-eq v10, v9, :cond_0

    if-eq v10, v7, :cond_0

    if-eq v10, v4, :cond_0

    if-eq v10, v6, :cond_0

    if-ne v10, v5, :cond_8

    :cond_0
    if-nez p6, :cond_4

    aget v0, p4, v8

    if-ne v0, v7, :cond_1

    move v1, v9

    goto :goto_0

    :cond_1
    move v1, v8

    :goto_0
    if-gt v10, v6, :cond_2

    goto :goto_2

    :cond_2
    if-ne v0, v7, :cond_3

    goto :goto_1

    :cond_3
    move v7, v9

    :goto_1
    move v8, v7

    :goto_2
    invoke-static {v10, v8, v1}, Ljavax/imageio/ImageTypeSpecifier;->createGrayscale(IIZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_4
    shl-int v0, v9, v10

    new-array v1, v0, [B

    new-array v2, v0, [B

    new-array v4, v0, [B

    const/4 v5, 0x0

    move v10, v8

    :goto_3
    if-ge v10, v0, :cond_5

    aget-char v11, p6, v10

    mul-int/lit16 v11, v11, 0xff

    const v12, 0xffff

    div-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v1, v10

    add-int v11, v0, v10

    aget-char v11, p6, v11

    mul-int/lit16 v11, v11, 0xff

    div-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    mul-int/lit8 v11, v0, 0x2

    add-int/2addr v11, v10

    aget-char v11, p6, v11

    mul-int/lit16 v11, v11, 0xff

    div-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v4, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_5
    aget v0, v3, v8

    if-gt v0, v6, :cond_6

    move v9, v8

    goto :goto_4

    :cond_6
    aget v3, p4, v8

    if-ne v3, v7, :cond_7

    move v9, v7

    :cond_7
    :goto_4
    move-object/from16 p0, v1

    move-object/from16 p1, v2

    move-object/from16 p2, v4

    move-object/from16 p3, v5

    move/from16 p4, v0

    move/from16 p5, v9

    invoke-static/range {p0 .. p5}, Ljavax/imageio/ImageTypeSpecifier;->createIndexed([B[B[B[BII)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_8
    if-ne v2, v7, :cond_a

    aget v10, v3, v8

    if-ne v10, v6, :cond_a

    aget v10, v3, v9

    if-ne v10, v6, :cond_a

    if-eqz p5, :cond_9

    aget v0, p5, v8

    if-ne v0, v9, :cond_9

    goto :goto_5

    :cond_9
    move v9, v8

    :goto_5
    invoke-static {v6, v8, v8, v9}, Ljavax/imageio/ImageTypeSpecifier;->createGrayscale(IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_a
    if-ne v2, v7, :cond_e

    aget v10, v3, v8

    if-ne v10, v5, :cond_e

    aget v10, v3, v9

    if-ne v10, v5, :cond_e

    aget v0, p4, v8

    if-ne v0, v7, :cond_b

    move v0, v7

    goto :goto_6

    :cond_b
    move v0, v9

    :goto_6
    if-eqz p5, :cond_c

    aget v1, p5, v8

    if-ne v1, v9, :cond_c

    move v1, v9

    goto :goto_7

    :cond_c
    move v1, v8

    :goto_7
    if-ne v0, v7, :cond_d

    move v8, v9

    :cond_d
    invoke-static {v5, v0, v8, v1}, Ljavax/imageio/ImageTypeSpecifier;->createGrayscale(IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_e
    const/16 v10, 0x3e8

    invoke-static {v10}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v10

    const/4 v11, 0x3

    if-ne v2, v11, :cond_12

    aget v12, v3, v8

    if-ne v12, v6, :cond_12

    aget v12, v3, v9

    if-ne v12, v6, :cond_12

    aget v12, v3, v7

    if-ne v12, v6, :cond_12

    filled-new-array {v8, v9, v7}, [I

    move-result-object v2

    const/4 v3, 0x6

    if-ne v0, v3, :cond_f

    const/4 v4, 0x7

    if-eq v1, v4, :cond_f

    if-ne v1, v3, :cond_10

    :cond_f
    if-ne v0, v6, :cond_11

    :cond_10
    const/16 v0, 0x3ec

    invoke-static {v0}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v10

    :cond_11
    invoke-static {v10, v2, v8, v8, v8}, Ljavax/imageio/ImageTypeSpecifier;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_12
    const/4 v1, 0x5

    if-ne v2, v4, :cond_15

    aget v12, v3, v8

    if-ne v12, v6, :cond_15

    aget v12, v3, v9

    if-ne v12, v6, :cond_15

    aget v12, v3, v7

    if-ne v12, v6, :cond_15

    aget v12, v3, v11

    if-ne v12, v6, :cond_15

    filled-new-array {v8, v9, v7, v11}, [I

    move-result-object v2

    if-ne v0, v1, :cond_13

    invoke-static {}, Lcom/sun/imageio/plugins/common/SimpleCMYKColorSpace;->getInstance()Ljava/awt/color/ColorSpace;

    move-result-object v10

    move v0, v8

    move v9, v0

    goto :goto_8

    :cond_13
    if-eqz p5, :cond_14

    aget v0, p5, v8

    if-ne v0, v9, :cond_14

    move v0, v9

    goto :goto_8

    :cond_14
    move v0, v8

    :goto_8
    invoke-static {v10, v2, v8, v9, v0}, Ljavax/imageio/ImageTypeSpecifier;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_15
    if-ne v2, v11, :cond_17

    aget v0, v3, v8

    if-ne v0, v5, :cond_17

    aget v0, v3, v9

    if-ne v0, v5, :cond_17

    aget v0, v3, v7

    if-ne v0, v5, :cond_17

    filled-new-array {v8, v9, v7}, [I

    move-result-object v0

    aget v1, p4, v8

    if-ne v1, v7, :cond_16

    goto :goto_9

    :cond_16
    move v7, v9

    :goto_9
    invoke-static {v10, v0, v7, v8, v8}, Ljavax/imageio/ImageTypeSpecifier;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_17
    if-ne v2, v4, :cond_1a

    aget v0, v3, v8

    if-ne v0, v5, :cond_1a

    aget v0, v3, v9

    if-ne v0, v5, :cond_1a

    aget v0, v3, v7

    if-ne v0, v5, :cond_1a

    aget v0, v3, v11

    if-ne v0, v5, :cond_1a

    filled-new-array {v8, v9, v7, v11}, [I

    move-result-object v0

    aget v1, p4, v8

    if-ne v1, v7, :cond_18

    goto :goto_a

    :cond_18
    move v7, v9

    :goto_a
    if-eqz p5, :cond_19

    aget v1, p5, v8

    if-ne v1, v9, :cond_19

    move v8, v9

    :cond_19
    invoke-static {v10, v0, v7, v9, v8}, Ljavax/imageio/ImageTypeSpecifier;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_1a
    move v0, v8

    move v12, v0

    :goto_b
    array-length v13, v3

    if-ge v0, v13, :cond_1b

    aget v13, v3, v0

    add-int/2addr v12, v13

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1b
    if-eq v2, v11, :cond_1c

    if-ne v2, v4, :cond_1d

    :cond_1c
    if-eq v12, v6, :cond_3f

    if-ne v12, v5, :cond_1d

    goto/16 :goto_1d

    :cond_1d
    aget v0, v3, v8

    rem-int/2addr v0, v6

    const/16 v13, 0x3eb

    const/16 v14, 0x20

    if-nez v0, :cond_2c

    move v0, v9

    :goto_c
    array-length v15, v3

    if-ge v0, v15, :cond_1f

    aget v15, v3, v0

    add-int/lit8 v16, v0, -0x1

    aget v1, v3, v16

    if-eq v15, v1, :cond_1e

    move v0, v8

    goto :goto_d

    :cond_1e
    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x5

    goto :goto_c

    :cond_1f
    move v0, v9

    :goto_d
    if-eqz v0, :cond_2c

    aget v0, v3, v8

    if-eq v0, v6, :cond_25

    if-eq v0, v5, :cond_23

    if-eq v0, v14, :cond_21

    const/16 v1, 0x40

    if-eq v0, v1, :cond_20

    goto :goto_10

    :cond_20
    aget v0, p4, v8

    if-ne v0, v11, :cond_26

    move v0, v9

    const/4 v15, 0x5

    goto :goto_11

    :cond_21
    aget v0, p4, v8

    if-ne v0, v11, :cond_22

    move v0, v4

    goto :goto_e

    :cond_22
    move v0, v11

    :goto_e
    move v15, v0

    goto :goto_f

    :cond_23
    aget v0, p4, v8

    if-eq v0, v11, :cond_26

    if-ne v0, v7, :cond_24

    move v0, v7

    goto :goto_e

    :cond_24
    move v0, v9

    goto :goto_e

    :cond_25
    aget v0, p4, v8

    if-eq v0, v11, :cond_26

    move v15, v8

    :goto_f
    move v0, v9

    goto :goto_11

    :cond_26
    :goto_10
    const/4 v0, -0x1

    move v15, v0

    move v0, v8

    :goto_11
    if-eqz v0, :cond_2c

    invoke-static {v15, v2}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->createInterleavedSM(II)Ljava/awt/image/SampleModel;

    move-result-object v6

    if-lt v2, v9, :cond_2b

    if-gt v2, v4, :cond_2b

    if-eq v15, v11, :cond_27

    if-ne v15, v4, :cond_2b

    :cond_27
    if-gt v2, v7, :cond_28

    invoke-static {v13}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v0

    goto :goto_12

    :cond_28
    move-object v0, v10

    :goto_12
    rem-int/lit8 v1, v2, 0x2

    if-nez v1, :cond_29

    move v4, v9

    goto :goto_13

    :cond_29
    move v4, v8

    :goto_13
    if-eqz v4, :cond_2a

    if-eqz p5, :cond_2a

    aget v1, p5, v8

    if-ne v1, v9, :cond_2a

    move v5, v9

    goto :goto_14

    :cond_2a
    move v5, v8

    :goto_14
    move/from16 v1, p2

    move-object/from16 v2, p3

    move v3, v15

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->createComponentCM(Ljava/awt/color/ColorSpace;I[IIZZ)Ljava/awt/image/ColorModel;

    move-result-object v0

    goto :goto_15

    :cond_2b
    new-instance v0, Lcom/sun/imageio/plugins/common/BogusColorSpace;

    invoke-direct {v0, v2}, Lcom/sun/imageio/plugins/common/BogusColorSpace;-><init>(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move v3, v15

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->createComponentCM(Ljava/awt/color/ColorSpace;I[IIZZ)Ljava/awt/image/ColorModel;

    move-result-object v0

    :goto_15
    new-instance v1, Ljavax/imageio/ImageTypeSpecifier;

    invoke-direct {v1, v0, v6}, Ljavax/imageio/ImageTypeSpecifier;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/SampleModel;)V

    return-object v1

    :cond_2c
    if-nez p6, :cond_3e

    aget v0, p4, v8

    if-eq v0, v11, :cond_3e

    move v0, v8

    move v1, v0

    :goto_16
    array-length v15, v3

    if-ge v0, v15, :cond_2e

    aget v15, v3, v0

    if-le v15, v1, :cond_2d

    move v1, v15

    :cond_2d
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_2e
    aget v0, p4, v8

    if-ne v0, v7, :cond_2f

    move v0, v9

    goto :goto_17

    :cond_2f
    move v0, v8

    :goto_17
    if-ne v2, v9, :cond_31

    aget v15, v3, v8

    if-eq v15, v9, :cond_30

    if-eq v15, v7, :cond_30

    if-eq v15, v4, :cond_30

    if-eq v15, v6, :cond_30

    if-ne v15, v5, :cond_31

    :cond_30
    invoke-static {v1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->getDataTypeFromNumBits(IZ)I

    move-result v1

    aget v2, v3, v8

    invoke-static {v2, v1, v0}, Ljavax/imageio/ImageTypeSpecifier;->createGrayscale(IIZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_31
    if-ne v2, v7, :cond_34

    aget v15, v3, v8

    aget v13, v3, v9

    if-ne v15, v13, :cond_34

    if-eq v15, v9, :cond_32

    if-eq v15, v7, :cond_32

    if-eq v15, v4, :cond_32

    if-eq v15, v6, :cond_32

    if-ne v15, v5, :cond_34

    :cond_32
    if-eqz p5, :cond_33

    aget v2, p5, v8

    if-ne v2, v9, :cond_33

    goto :goto_18

    :cond_33
    move v9, v8

    :goto_18
    invoke-static {v1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->getDataTypeFromNumBits(IZ)I

    move-result v0

    invoke-static {v1, v0, v8, v9}, Ljavax/imageio/ImageTypeSpecifier;->createGrayscale(IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_34
    if-eq v2, v11, :cond_35

    if-ne v2, v4, :cond_3b

    :cond_35
    invoke-static {v1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->getDataTypeFromNumBits(IZ)I

    move-result v5

    :try_start_0
    invoke-static {v5}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->getDataTypeSize(I)I

    move-result v6
    :try_end_0
    .catch Ljavax/imageio/IIOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_19

    :catch_0
    move v6, v1

    :goto_19
    if-gt v12, v14, :cond_38

    if-nez v0, :cond_38

    invoke-static {v3, v8}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->createMask([II)I

    move-result v0

    invoke-static {v3, v9}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->createMask([II)I

    move-result v1

    invoke-static {v3, v7}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->createMask([II)I

    move-result v5

    if-ne v2, v4, :cond_36

    invoke-static {v3, v11}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->createMask([II)I

    move-result v2

    goto :goto_1a

    :cond_36
    move v2, v8

    :goto_1a
    invoke-static {v12, v8}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->getDataTypeFromNumBits(IZ)I

    move-result v3

    if-eqz p5, :cond_37

    aget v4, p5, v8

    if-ne v4, v9, :cond_37

    goto :goto_1b

    :cond_37
    move v9, v8

    :goto_1b
    move-object/from16 p0, v10

    move/from16 p1, v0

    move/from16 p2, v1

    move/from16 p3, v5

    move/from16 p4, v2

    move/from16 p5, v3

    move/from16 p6, v9

    invoke-static/range {p0 .. p6}, Ljavax/imageio/ImageTypeSpecifier;->createPacked(Ljava/awt/color/ColorSpace;IIIIIZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_38
    if-ne v2, v11, :cond_39

    aget v12, v3, v8

    if-ne v6, v12, :cond_39

    aget v13, v3, v9

    if-ne v12, v13, :cond_39

    aget v12, v3, v7

    if-ne v13, v12, :cond_39

    filled-new-array {v8, v9, v7}, [I

    move-result-object v0

    invoke-static {v10, v0, v5, v8, v8}, Ljavax/imageio/ImageTypeSpecifier;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_39
    if-ne v2, v4, :cond_3b

    aget v12, v3, v8

    if-ne v6, v12, :cond_3b

    aget v6, v3, v9

    if-ne v12, v6, :cond_3b

    aget v12, v3, v7

    if-ne v6, v12, :cond_3b

    aget v6, v3, v11

    if-ne v12, v6, :cond_3b

    filled-new-array {v8, v9, v7, v11}, [I

    move-result-object v0

    if-eqz p5, :cond_3a

    aget v1, p5, v8

    if-ne v1, v9, :cond_3a

    move v8, v9

    :cond_3a
    invoke-static {v10, v0, v5, v9, v8}, Ljavax/imageio/ImageTypeSpecifier;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0

    :cond_3b
    invoke-static {v1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->getDataTypeFromNumBits(IZ)I

    move-result v5

    invoke-static {v5, v2}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->createInterleavedSM(II)Ljava/awt/image/SampleModel;

    move-result-object v6

    if-gt v2, v7, :cond_3c

    const/16 v0, 0x3eb

    invoke-static {v0}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v0

    goto :goto_1c

    :cond_3c
    if-gt v2, v4, :cond_3d

    move-object v0, v10

    goto :goto_1c

    :cond_3d
    new-instance v0, Lcom/sun/imageio/plugins/common/BogusColorSpace;

    invoke-direct {v0, v2}, Lcom/sun/imageio/plugins/common/BogusColorSpace;-><init>(I)V

    :goto_1c
    const/4 v4, 0x0

    const/4 v7, 0x0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move v3, v5

    move v5, v7

    invoke-static/range {v0 .. v5}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->createComponentCM(Ljava/awt/color/ColorSpace;I[IIZZ)Ljava/awt/image/ColorModel;

    move-result-object v0

    new-instance v1, Ljavax/imageio/ImageTypeSpecifier;

    invoke-direct {v1, v0, v6}, Ljavax/imageio/ImageTypeSpecifier;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/SampleModel;)V

    return-object v1

    :cond_3e
    const/4 v0, 0x0

    return-object v0

    :cond_3f
    :goto_1d
    invoke-static {v3, v8}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->createMask([II)I

    move-result v0

    invoke-static {v3, v9}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->createMask([II)I

    move-result v1

    invoke-static {v3, v7}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->createMask([II)I

    move-result v5

    if-ne v2, v4, :cond_40

    invoke-static {v3, v11}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->createMask([II)I

    move-result v2

    goto :goto_1e

    :cond_40
    move v2, v8

    :goto_1e
    if-ne v12, v6, :cond_41

    move v3, v8

    goto :goto_1f

    :cond_41
    move v3, v9

    :goto_1f
    if-eqz p5, :cond_42

    aget v4, p5, v8

    if-ne v4, v9, :cond_42

    goto :goto_20

    :cond_42
    move v9, v8

    :goto_20
    move-object/from16 p0, v10

    move/from16 p1, v0

    move/from16 p2, v1

    move/from16 p3, v5

    move/from16 p4, v2

    move/from16 p5, v3

    move/from16 p6, v9

    invoke-static/range {p0 .. p6}, Ljavax/imageio/ImageTypeSpecifier;->createPacked(Ljava/awt/color/ColorSpace;IIIIIZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    return-object v0
.end method

.method private static isDataBufferBitContiguous(Ljava/awt/image/SampleModel;[I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getDataType()I

    move-result v0

    invoke-static {v0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->getDataTypeSize(I)I

    move-result v0

    instance-of v1, p0, Ljava/awt/image/ComponentSampleModel;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result p0

    move v1, v2

    :goto_0
    if-ge v1, p0, :cond_4

    aget v3, p1, v1

    if-eq v3, v0, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    instance-of p1, p0, Ljava/awt/image/MultiPixelPackedSampleModel;

    if-eqz p1, :cond_2

    check-cast p0, Ljava/awt/image/MultiPixelPackedSampleModel;

    invoke-virtual {p0}, Ljava/awt/image/MultiPixelPackedSampleModel;->getPixelBitStride()I

    move-result p0

    rem-int/2addr v0, p0

    if-eqz v0, :cond_4

    return v2

    :cond_2
    instance-of p1, p0, Ljava/awt/image/SinglePixelPackedSampleModel;

    if-eqz p1, :cond_5

    move-object p1, p0

    check-cast p1, Ljava/awt/image/SinglePixelPackedSampleModel;

    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result p1

    move v1, v2

    move v3, v1

    :goto_1
    if-ge v1, p1, :cond_3

    invoke-virtual {p0, v1}, Ljava/awt/image/SampleModel;->getSampleSize(I)I

    move-result v4

    add-int/2addr v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-eq v3, v0, :cond_4

    return v2

    :cond_4
    const/4 p0, 0x1

    return p0

    :cond_5
    return v2
.end method

.method private static reformatData([BII[S[III)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p3, :cond_2

    div-int/lit8 p4, p1, 0x2

    rem-int/lit8 p1, p1, 0x2

    move v1, v0

    move v2, v1

    :goto_0
    if-ge v1, p2, :cond_6

    move v4, p5

    move v3, v0

    :goto_1
    if-ge v3, p4, :cond_0

    add-int/lit8 v5, v4, 0x1

    add-int/lit8 v6, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p0, v6

    and-int/lit16 v6, v6, 0xff

    or-int/2addr v2, v6

    int-to-short v2, v2

    aput-short v2, p3, v4

    add-int/lit8 v3, v3, 0x1

    move v4, v5

    move v2, v7

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    int-to-short v2, v2

    aput-short v2, p3, v4

    move v2, v3

    :cond_1
    add-int/2addr p5, p6

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_7

    div-int/lit8 p3, p1, 0x4

    rem-int/lit8 p1, p1, 0x4

    move v1, v0

    move v2, v1

    :goto_2
    if-ge v1, p2, :cond_6

    move v4, p5

    move v3, v0

    :goto_3
    const/16 v5, 0x18

    if-ge v3, p3, :cond_3

    add-int/lit8 v6, v4, 0x1

    add-int/lit8 v7, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v5

    add-int/lit8 v5, v7, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x10

    or-int/2addr v2, v7

    add-int/lit8 v7, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v2, v5

    add-int/lit8 v5, v7, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v2, v7

    aput v2, p4, v4

    add-int/lit8 v3, v3, 0x1

    move v2, v5

    move v4, v6

    goto :goto_3

    :cond_3
    if-eqz p1, :cond_5

    move v3, v0

    move v6, v3

    :goto_4
    if-ge v3, p1, :cond_4

    add-int/lit8 v7, v2, 0x1

    aget-byte v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/2addr v2, v5

    or-int/2addr v6, v2

    add-int/lit8 v5, v5, -0x8

    add-int/lit8 v3, v3, 0x1

    move v2, v7

    goto :goto_4

    :cond_4
    aput v6, p4, v4

    :cond_5
    add-int/2addr p5, p6

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    return-void

    :cond_7
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "shortData == null && intData == null!"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static reformatDiscontiguousData([B[IIIILjava/awt/image/WritableRaster;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p5 .. p5}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v0

    new-instance v1, Ljava/io/ByteArrayInputStream;

    move-object v2, p0

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Ljavax/imageio/stream/MemoryCacheImageInputStream;

    invoke-direct {v2, v1}, Ljavax/imageio/stream/MemoryCacheImageInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual/range {p5 .. p5}, Ljava/awt/image/Raster;->getMinY()I

    move-result v1

    const-wide/16 v3, 0x0

    const/4 v5, 0x0

    move/from16 v6, p4

    move v7, v5

    :goto_0
    if-ge v7, v6, :cond_2

    invoke-interface {v2, v3, v4}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    invoke-virtual/range {p5 .. p5}, Ljava/awt/image/Raster;->getMinX()I

    move-result v8

    move/from16 v9, p3

    move v10, v5

    :goto_1
    if-ge v10, v9, :cond_1

    move v11, v5

    :goto_2
    if-ge v11, v0, :cond_0

    aget v12, p1, v11

    invoke-interface {v2, v12}, Ljavax/imageio/stream/ImageInputStream;->readBits(I)J

    move-result-wide v12

    long-to-int v12, v12

    move-object/from16 v13, p5

    invoke-virtual {v13, v8, v1, v11, v12}, Ljava/awt/image/WritableRaster;->setSample(IIII)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_0
    move-object/from16 v13, p5

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    move/from16 v8, p2

    move-object/from16 v13, p5

    int-to-long v10, v8

    add-long/2addr v3, v10

    add-int/lit8 v7, v7, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public beginDecoding()V
    .locals 11

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->adjustBitDepths:Z

    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->destinationBands:[I

    array-length v1, v1

    iget-boolean v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->planar:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitsPerSample:[I

    array-length v2, v2

    new-array v3, v2, [I

    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v4}, Ljava/awt/image/BufferedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/awt/image/SampleModel;->getSampleSize(I)I

    move-result v4

    move v5, v0

    :goto_0
    if-ge v5, v2, :cond_1

    aput v4, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/image/SampleModel;->getSampleSize()[I

    move-result-object v3

    :cond_1
    move v2, v0

    :goto_1
    const/4 v4, 0x1

    if-ge v2, v1, :cond_3

    iget-object v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->destinationBands:[I

    aget v5, v5, v2

    aget v5, v3, v5

    iget-object v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitsPerSample:[I

    iget-object v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->sourceBands:[I

    aget v7, v7, v2

    aget v6, v6, v7

    if-eq v5, v6, :cond_2

    iput-boolean v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->adjustBitDepths:Z

    goto :goto_2

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    iget-boolean v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->adjustBitDepths:Z

    const/4 v5, 0x0

    if-eqz v2, :cond_8

    iget-boolean v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->isFirstBitDepthTable:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->planar:Z

    iget-boolean v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->planarCache:Z

    if-ne v2, v6, :cond_4

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->destBitsPerSampleCache:[I

    invoke-static {v3, v2}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->areIntArraysEqual([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->sourceBands:[I

    iget-object v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->sourceBandsCache:[I

    invoke-static {v2, v6}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->areIntArraysEqual([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitsPerSample:[I

    iget-object v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitsPerSampleCache:[I

    invoke-static {v2, v6}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->areIntArraysEqual([I[I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->destinationBands:[I

    iget-object v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->destinationBandsCache:[I

    invoke-static {v2, v6}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->areIntArraysEqual([I[I)Z

    move-result v2

    if-nez v2, :cond_9

    :cond_4
    iput-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->isFirstBitDepthTable:Z

    iget-boolean v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->planar:Z

    iput-boolean v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->planarCache:Z

    invoke-virtual {v3}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->destBitsPerSampleCache:[I

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->sourceBands:[I

    if-nez v2, :cond_5

    move-object v2, v5

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    :goto_3
    iput-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->sourceBandsCache:[I

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitsPerSample:[I

    if-nez v2, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, [I

    :goto_4
    iput-object v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitsPerSampleCache:[I

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->destinationBands:[I

    invoke-virtual {v2}, [I->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    iput-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->destinationBandsCache:[I

    new-array v2, v1, [[I

    iput-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitDepthScale:[[I

    move v2, v0

    :goto_5
    if-ge v2, v1, :cond_9

    iget-object v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitsPerSample:[I

    iget-object v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->sourceBands:[I

    aget v6, v6, v2

    aget v5, v5, v6

    shl-int v5, v4, v5

    sub-int/2addr v5, v4

    div-int/lit8 v6, v5, 0x2

    iget-object v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->destinationBands:[I

    aget v7, v7, v2

    aget v7, v3, v7

    shl-int v7, v4, v7

    sub-int/2addr v7, v4

    iget-object v8, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitDepthScale:[[I

    add-int/lit8 v9, v5, 0x1

    new-array v9, v9, [I

    aput-object v9, v8, v2

    move v8, v0

    :goto_6
    if-gt v8, v5, :cond_7

    iget-object v9, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitDepthScale:[[I

    aget-object v9, v9, v2

    mul-int v10, v8, v7

    add-int/2addr v10, v6

    div-int/2addr v10, v5

    aput v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    iput-object v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitDepthScale:[[I

    :cond_9
    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->samplesPerPixel:I

    if-ne v1, v2, :cond_c

    move v2, v0

    move v3, v4

    move v5, v3

    :goto_7
    if-ge v2, v1, :cond_d

    iget-object v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->sourceBands:[I

    aget v6, v6, v2

    if-eq v6, v2, :cond_a

    move v3, v0

    :cond_a
    iget-object v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->destinationBands:[I

    aget v6, v6, v2

    if-eq v6, v2, :cond_b

    move v5, v0

    :cond_b
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_c
    move v3, v0

    move v5, v3

    :cond_d
    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/ImageUtil;->isBinary(Ljava/awt/image/SampleModel;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->isBilevel:Z

    if-eqz v1, :cond_e

    move v1, v4

    goto :goto_8

    :cond_e
    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->image:Ljava/awt/image/BufferedImage;

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/ImageUtil;->imageIsContiguous(Ljava/awt/image/RenderedImage;)Z

    move-result v1

    :goto_8
    iput-boolean v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->isContiguous:Z

    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->colorConverter:Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;

    if-nez v1, :cond_f

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->subsampleX:I

    if-ne v1, v4, :cond_f

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->subsampleY:I

    if-ne v1, v4, :cond_f

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstWidth:I

    if-ne v1, v2, :cond_f

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    iget v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstHeight:I

    if-ne v1, v6, :cond_f

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstMinX:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v2

    if-gt v1, v2, :cond_f

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstMinY:I

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstHeight:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v2

    if-gt v1, v2, :cond_f

    if-eqz v3, :cond_f

    if-eqz v5, :cond_f

    iget-boolean v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->adjustBitDepths:Z

    if-nez v1, :cond_f

    move v0, v4

    :cond_f
    iput-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->isImageSimple:Z

    return-void
.end method

.method public createRawImage()Ljava/awt/image/BufferedImage;
    .locals 5

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->planar:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitsPerSample:[I

    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->sourceBands:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    aget v0, v0, v1

    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->sampleFormat:[I

    aget v1, v1, v2

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    const/16 v1, 0x20

    if-gt v0, v1, :cond_0

    const/4 v3, 0x4

    goto :goto_0

    :cond_0
    const/4 v3, 0x5

    goto :goto_0

    :cond_1
    const/16 v4, 0x8

    if-gt v0, v4, :cond_2

    move v3, v2

    goto :goto_0

    :cond_2
    const/16 v4, 0x10

    if-gt v0, v4, :cond_4

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x1

    :cond_4
    :goto_0
    const/16 v0, 0x3eb

    invoke-static {v0}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v0

    filled-new-array {v2}, [I

    move-result-object v1

    invoke-static {v0, v1, v3, v2, v2}, Ljavax/imageio/ImageTypeSpecifier;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    invoke-virtual {v0, v1, p0}, Ljavax/imageio/ImageTypeSpecifier;->createBufferedImage(II)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->getRawImageType()Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    if-nez v0, :cond_6

    const/4 p0, 0x0

    return-object p0

    :cond_6
    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    invoke-virtual {v0, v1, p0}, Ljavax/imageio/ImageTypeSpecifier;->createBufferedImage(II)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public decode()V
    .locals 32
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->rawImage:Ljava/awt/image/BufferedImage;

    iget-boolean v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->isImageSimple:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->isBilevel:Z

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->image:Ljava/awt/image/BufferedImage;

    iput-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->rawImage:Ljava/awt/image/BufferedImage;

    goto :goto_0

    :cond_0
    iget-boolean v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->isContiguous:Z

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->image:Ljava/awt/image/BufferedImage;

    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstMinX:I

    iget v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstMinY:I

    iget v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstWidth:I

    iget v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstHeight:I

    invoke-virtual {v2, v3, v4, v5, v6}, Ljava/awt/image/BufferedImage;->getSubimage(IIII)Ljava/awt/image/BufferedImage;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->rawImage:Ljava/awt/image/BufferedImage;

    :cond_1
    :goto_0
    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->rawImage:Ljava/awt/image/BufferedImage;

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    if-nez v2, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->createRawImage()Ljava/awt/image/BufferedImage;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->rawImage:Ljava/awt/image/BufferedImage;

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "Couldn\'t create image buffer!"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    :goto_2
    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->rawImage:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v2

    iget-boolean v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->isBilevel:Z

    const/16 v12, 0x10

    const/16 v13, 0x20

    const/16 v14, 0x8

    if-eqz v6, :cond_6

    iget-boolean v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->isImageSimple:Z

    if-eqz v6, :cond_5

    new-instance v6, Ljava/awt/Rectangle;

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstMinX:I

    iget v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstMinY:I

    iget v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstWidth:I

    iget v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstHeight:I

    invoke-direct {v6, v7, v8, v9, v10}, Ljava/awt/Rectangle;-><init>(IIII)V

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Ljava/awt/image/Raster;->getBounds()Ljava/awt/Rectangle;

    move-result-object v6

    :goto_3
    invoke-static {v2, v6}, Lcom/sun/imageio/plugins/common/ImageUtil;->getPackedBinaryData(Ljava/awt/image/Raster;Ljava/awt/Rectangle;)[B

    move-result-object v7

    iget v6, v6, Ljava/awt/Rectangle;->width:I

    add-int/lit8 v6, v6, 0x7

    div-int/2addr v6, v14

    move-object v8, v1

    move v10, v3

    move v15, v6

    move-object v11, v7

    const/4 v9, 0x1

    move-object v6, v8

    move-object v7, v6

    goto/16 :goto_b

    :cond_6
    invoke-virtual {v2}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v6

    invoke-virtual {v2}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v7

    instance-of v8, v6, Ljava/awt/image/ComponentSampleModel;

    if-eqz v8, :cond_d

    move-object v8, v6

    check-cast v8, Ljava/awt/image/ComponentSampleModel;

    invoke-virtual {v2}, Ljava/awt/image/Raster;->getSampleModelTranslateX()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {v2}, Ljava/awt/image/Raster;->getSampleModelTranslateY()I

    move-result v10

    neg-int v10, v10

    invoke-virtual {v8, v9, v10}, Ljava/awt/image/ComponentSampleModel;->getOffset(II)I

    move-result v9

    invoke-virtual {v8}, Ljava/awt/image/ComponentSampleModel;->getScanlineStride()I

    move-result v10

    instance-of v11, v7, Ljava/awt/image/DataBufferByte;

    if-eqz v11, :cond_7

    move-object v11, v7

    check-cast v11, Ljava/awt/image/DataBufferByte;

    invoke-virtual {v11}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object v11

    invoke-virtual {v8}, Ljava/awt/image/ComponentSampleModel;->getPixelStride()I

    move-result v8

    mul-int/2addr v8, v14

    move-object v15, v1

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    const/16 v19, 0x1

    goto/16 :goto_6

    :cond_7
    instance-of v11, v7, Ljava/awt/image/DataBufferUShort;

    if-eqz v11, :cond_8

    move-object v11, v7

    check-cast v11, Ljava/awt/image/DataBufferUShort;

    invoke-virtual {v11}, Ljava/awt/image/DataBufferUShort;->getData()[S

    move-result-object v11

    invoke-virtual {v8}, Ljava/awt/image/ComponentSampleModel;->getPixelStride()I

    move-result v8

    :goto_4
    mul-int/2addr v8, v12

    move-object v15, v1

    move-object/from16 v16, v15

    move-object/from16 v18, v16

    move-object/from16 v17, v11

    :goto_5
    const/16 v19, 0x1

    move-object/from16 v11, v18

    goto/16 :goto_6

    :cond_8
    instance-of v11, v7, Ljava/awt/image/DataBufferShort;

    if-eqz v11, :cond_9

    move-object v11, v7

    check-cast v11, Ljava/awt/image/DataBufferShort;

    invoke-virtual {v11}, Ljava/awt/image/DataBufferShort;->getData()[S

    move-result-object v11

    invoke-virtual {v8}, Ljava/awt/image/ComponentSampleModel;->getPixelStride()I

    move-result v8

    goto :goto_4

    :cond_9
    instance-of v11, v7, Ljava/awt/image/DataBufferInt;

    if-eqz v11, :cond_a

    move-object v11, v7

    check-cast v11, Ljava/awt/image/DataBufferInt;

    invoke-virtual {v11}, Ljava/awt/image/DataBufferInt;->getData()[I

    move-result-object v11

    invoke-virtual {v8}, Ljava/awt/image/ComponentSampleModel;->getPixelStride()I

    move-result v8

    mul-int/2addr v8, v13

    move-object v15, v1

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v11

    const/16 v19, 0x1

    move-object/from16 v11, v17

    goto :goto_6

    :cond_a
    instance-of v11, v7, Ljava/awt/image/DataBufferFloat;

    if-eqz v11, :cond_b

    move-object v11, v7

    check-cast v11, Ljava/awt/image/DataBufferFloat;

    invoke-virtual {v11}, Ljava/awt/image/DataBufferFloat;->getData()[F

    move-result-object v11

    invoke-virtual {v8}, Ljava/awt/image/ComponentSampleModel;->getPixelStride()I

    move-result v8

    mul-int/2addr v8, v13

    move-object/from16 v16, v1

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object v15, v11

    goto :goto_5

    :cond_b
    instance-of v11, v7, Ljava/awt/image/DataBufferDouble;

    if-eqz v11, :cond_c

    move-object v11, v7

    check-cast v11, Ljava/awt/image/DataBufferDouble;

    invoke-virtual {v11}, Ljava/awt/image/DataBufferDouble;->getData()[D

    move-result-object v11

    invoke-virtual {v8}, Ljava/awt/image/ComponentSampleModel;->getPixelStride()I

    move-result v8

    mul-int/lit8 v8, v8, 0x40

    move-object v15, v1

    move-object/from16 v17, v15

    move-object/from16 v18, v17

    move-object/from16 v16, v11

    goto :goto_5

    :cond_c
    move-object v11, v1

    move-object v15, v11

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move/from16 v19, v3

    const/4 v8, 0x1

    :goto_6
    move/from16 v30, v10

    move v10, v8

    move/from16 v8, v30

    goto/16 :goto_a

    :cond_d
    instance-of v8, v6, Ljava/awt/image/MultiPixelPackedSampleModel;

    if-eqz v8, :cond_11

    move-object v8, v6

    check-cast v8, Ljava/awt/image/MultiPixelPackedSampleModel;

    invoke-virtual {v2}, Ljava/awt/image/Raster;->getSampleModelTranslateX()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {v2}, Ljava/awt/image/Raster;->getSampleModelTranslateY()I

    move-result v10

    neg-int v10, v10

    invoke-virtual {v8, v9, v10}, Ljava/awt/image/MultiPixelPackedSampleModel;->getOffset(II)I

    move-result v9

    invoke-virtual {v8}, Ljava/awt/image/MultiPixelPackedSampleModel;->getPixelBitStride()I

    move-result v10

    invoke-virtual {v8}, Ljava/awt/image/MultiPixelPackedSampleModel;->getScanlineStride()I

    move-result v8

    instance-of v11, v7, Ljava/awt/image/DataBufferByte;

    if-eqz v11, :cond_e

    move-object v11, v7

    check-cast v11, Ljava/awt/image/DataBufferByte;

    invoke-virtual {v11}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object v11

    move-object/from16 v17, v1

    move-object/from16 v18, v17

    const/16 v19, 0x1

    goto :goto_7

    :cond_e
    instance-of v11, v7, Ljava/awt/image/DataBufferUShort;

    if-eqz v11, :cond_f

    move-object v11, v7

    check-cast v11, Ljava/awt/image/DataBufferUShort;

    invoke-virtual {v11}, Ljava/awt/image/DataBufferUShort;->getData()[S

    move-result-object v11

    move-object/from16 v18, v1

    move-object/from16 v17, v11

    const/16 v19, 0x1

    move-object/from16 v11, v18

    goto :goto_7

    :cond_f
    instance-of v11, v7, Ljava/awt/image/DataBufferInt;

    if-eqz v11, :cond_10

    move-object v11, v7

    check-cast v11, Ljava/awt/image/DataBufferInt;

    invoke-virtual {v11}, Ljava/awt/image/DataBufferInt;->getData()[I

    move-result-object v11

    move-object/from16 v17, v1

    move-object/from16 v18, v11

    const/16 v19, 0x1

    move-object/from16 v11, v17

    goto :goto_7

    :cond_10
    move-object v11, v1

    move-object/from16 v17, v11

    move-object/from16 v18, v17

    move/from16 v19, v3

    :goto_7
    move-object v15, v1

    move-object/from16 v16, v15

    goto/16 :goto_a

    :cond_11
    instance-of v8, v6, Ljava/awt/image/SinglePixelPackedSampleModel;

    if-eqz v8, :cond_15

    move-object v8, v6

    check-cast v8, Ljava/awt/image/SinglePixelPackedSampleModel;

    invoke-virtual {v2}, Ljava/awt/image/Raster;->getSampleModelTranslateX()I

    move-result v9

    neg-int v9, v9

    invoke-virtual {v2}, Ljava/awt/image/Raster;->getSampleModelTranslateY()I

    move-result v10

    neg-int v10, v10

    invoke-virtual {v8, v9, v10}, Ljava/awt/image/SinglePixelPackedSampleModel;->getOffset(II)I

    move-result v9

    invoke-virtual {v8}, Ljava/awt/image/SinglePixelPackedSampleModel;->getScanlineStride()I

    move-result v8

    instance-of v10, v7, Ljava/awt/image/DataBufferByte;

    if-eqz v10, :cond_12

    move-object v10, v7

    check-cast v10, Ljava/awt/image/DataBufferByte;

    invoke-virtual {v10}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object v10

    move-object v15, v1

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move-object v11, v10

    move v10, v14

    :goto_8
    const/16 v19, 0x1

    goto :goto_a

    :cond_12
    instance-of v10, v7, Ljava/awt/image/DataBufferUShort;

    if-eqz v10, :cond_13

    move-object v10, v7

    check-cast v10, Ljava/awt/image/DataBufferUShort;

    invoke-virtual {v10}, Ljava/awt/image/DataBufferUShort;->getData()[S

    move-result-object v17

    move-object v11, v1

    move-object v15, v11

    move-object/from16 v16, v15

    move-object/from16 v18, v16

    move v10, v12

    goto :goto_8

    :cond_13
    instance-of v10, v7, Ljava/awt/image/DataBufferInt;

    if-eqz v10, :cond_14

    move-object v10, v7

    check-cast v10, Ljava/awt/image/DataBufferInt;

    invoke-virtual {v10}, Ljava/awt/image/DataBufferInt;->getData()[I

    move-result-object v18

    move-object v11, v1

    move-object v15, v11

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move v10, v13

    goto :goto_8

    :cond_14
    move-object v11, v1

    move-object v15, v11

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move/from16 v19, v3

    goto :goto_9

    :cond_15
    move-object v11, v1

    move-object v15, v11

    move-object/from16 v16, v15

    move-object/from16 v17, v16

    move-object/from16 v18, v17

    move v8, v3

    move v9, v8

    move/from16 v19, v9

    :goto_9
    const/4 v10, 0x1

    :goto_a
    if-eqz v19, :cond_49

    move-object/from16 v7, v16

    move-object/from16 v6, v17

    move-object/from16 v1, v18

    move-object/from16 v30, v15

    move v15, v8

    move-object/from16 v8, v30

    move/from16 v31, v10

    move v10, v9

    move/from16 v9, v31

    :goto_b
    iget-boolean v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->isBilevel:Z

    if-eqz v4, :cond_17

    invoke-virtual {v0, v11, v10, v9, v15}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->decodeRaw([BIII)V

    :cond_16
    :goto_c
    move-object/from16 v22, v6

    move-object v12, v7

    move-object v4, v8

    move v3, v9

    move v13, v10

    move-object v14, v11

    goto/16 :goto_f

    :cond_17
    invoke-virtual {v2}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v4

    iget-object v13, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitsPerSample:[I

    invoke-static {v4, v13}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->isDataBufferBitContiguous(Ljava/awt/image/SampleModel;[I)Z

    move-result v13

    if-eqz v13, :cond_1e

    if-eqz v11, :cond_18

    invoke-virtual {v0, v11, v10, v9, v15}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->decodeRaw([BIII)V

    goto :goto_c

    :cond_18
    if-eqz v8, :cond_19

    invoke-virtual {v0, v8, v10, v9, v15}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->decodeRaw([FIII)V

    goto :goto_c

    :cond_19
    if-eqz v7, :cond_1a

    invoke-virtual {v0, v7, v10, v9, v15}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->decodeRaw([DIII)V

    goto :goto_c

    :cond_1a
    if-eqz v6, :cond_1c

    invoke-static {v4}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->areSampleSizesEqual(Ljava/awt/image/SampleModel;)Z

    move-result v13

    if-eqz v13, :cond_1b

    invoke-virtual {v4, v3}, Ljava/awt/image/SampleModel;->getSampleSize(I)I

    move-result v13

    if-ne v13, v12, :cond_1b

    invoke-virtual {v0, v6, v10, v9, v15}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->decodeRaw([SIII)V

    goto :goto_c

    :cond_1b
    invoke-static {v4}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->getBitsPerPixel(Ljava/awt/image/SampleModel;)I

    move-result v4

    iget v13, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    mul-int/2addr v13, v4

    add-int/lit8 v13, v13, 0x7

    div-int/2addr v13, v14

    iget v12, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    mul-int/2addr v12, v13

    new-array v12, v12, [B

    invoke-virtual {v0, v12, v3, v4, v13}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->decodeRaw([BIII)V

    iget v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    const/16 v24, 0x0

    move-object/from16 v20, v12

    move/from16 v21, v13

    move/from16 v22, v4

    move-object/from16 v23, v6

    move/from16 v25, v10

    move/from16 v26, v15

    invoke-static/range {v20 .. v26}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->reformatData([BII[S[III)V

    goto :goto_c

    :cond_1c
    if-eqz v1, :cond_16

    invoke-static {v4}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->areSampleSizesEqual(Ljava/awt/image/SampleModel;)Z

    move-result v12

    if-eqz v12, :cond_1d

    invoke-virtual {v4, v3}, Ljava/awt/image/SampleModel;->getSampleSize(I)I

    move-result v12

    const/16 v13, 0x20

    if-ne v12, v13, :cond_1d

    invoke-virtual {v0, v1, v10, v9, v15}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->decodeRaw([IIII)V

    goto :goto_c

    :cond_1d
    invoke-static {v4}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->getBitsPerPixel(Ljava/awt/image/SampleModel;)I

    move-result v4

    iget v12, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    mul-int/2addr v12, v4

    add-int/lit8 v12, v12, 0x7

    div-int/2addr v12, v14

    iget v13, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    mul-int/2addr v13, v12

    new-array v13, v13, [B

    invoke-virtual {v0, v13, v3, v4, v12}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->decodeRaw([BIII)V

    iget v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    const/16 v23, 0x0

    move-object/from16 v20, v13

    move/from16 v21, v12

    move/from16 v22, v4

    move-object/from16 v24, v1

    move/from16 v25, v10

    move/from16 v26, v15

    invoke-static/range {v20 .. v26}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->reformatData([BII[S[III)V

    goto/16 :goto_c

    :cond_1e
    iget-boolean v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->planar:Z

    if-eqz v4, :cond_1f

    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitsPerSample:[I

    iget v12, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->planarBand:I

    aget v4, v4, v12

    goto :goto_e

    :cond_1f
    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitsPerSample:[I

    array-length v12, v4

    move v13, v3

    :goto_d
    if-ge v3, v12, :cond_20

    aget v21, v4, v3

    add-int v13, v13, v21

    add-int/lit8 v3, v3, 0x1

    goto :goto_d

    :cond_20
    move v4, v13

    :goto_e
    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    mul-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x7

    div-int/2addr v3, v14

    iget v12, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    mul-int/2addr v12, v3

    new-array v12, v12, [B

    const/4 v13, 0x0

    invoke-virtual {v0, v12, v13, v4, v3}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->decodeRaw([BIII)V

    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitsPerSample:[I

    iget v13, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    iget v14, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    move-object/from16 v22, v6

    move-object v6, v12

    move-object v12, v7

    move-object v7, v4

    move-object v4, v8

    move v8, v3

    move v3, v9

    move v9, v13

    move v13, v10

    move v10, v14

    move-object v14, v11

    move-object v11, v2

    invoke-static/range {v6 .. v11}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->reformatDiscontiguousData([B[IIIILjava/awt/image/WritableRaster;)V

    :goto_f
    iget-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->colorConverter:Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;

    if-eqz v6, :cond_2f

    const/4 v6, 0x3

    new-array v9, v6, [F

    if-eqz v14, :cond_25

    move v10, v13

    const/4 v11, 0x0

    :goto_10
    iget v13, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstHeight:I

    if-ge v11, v13, :cond_22

    move/from16 v23, v10

    const/4 v13, 0x0

    :goto_11
    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstWidth:I

    if-ge v13, v7, :cond_21

    aget-byte v7, v14, v23

    and-int/lit16 v7, v7, 0xff

    int-to-float v7, v7

    add-int/lit8 v25, v23, 0x1

    aget-byte v6, v14, v25

    and-int/lit16 v6, v6, 0xff

    int-to-float v6, v6

    add-int/lit8 v27, v23, 0x2

    aget-byte v8, v14, v27

    and-int/lit16 v8, v8, 0xff

    int-to-float v8, v8

    move/from16 v28, v5

    iget-object v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->colorConverter:Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;

    invoke-virtual {v5, v7, v6, v8, v9}, Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;->toRGB(FFF[F)V

    const/4 v5, 0x0

    aget v6, v9, v5

    float-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v14, v23

    const/4 v5, 0x1

    aget v6, v9, v5

    float-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v14, v25

    const/4 v5, 0x2

    aget v6, v9, v5

    float-to-int v5, v6

    int-to-byte v5, v5

    aput-byte v5, v14, v27

    const/4 v5, 0x3

    add-int/lit8 v23, v23, 0x3

    add-int/lit8 v13, v13, 0x1

    move/from16 v5, v28

    const/4 v6, 0x3

    goto :goto_11

    :cond_21
    move/from16 v28, v5

    add-int/2addr v10, v15

    add-int/lit8 v11, v11, 0x1

    const/4 v6, 0x3

    goto :goto_10

    :cond_22
    move/from16 v28, v5

    :cond_23
    move-object/from16 v25, v2

    move/from16 v27, v3

    :cond_24
    move-object/from16 v29, v14

    goto/16 :goto_1c

    :cond_25
    move/from16 v28, v5

    if-eqz v22, :cond_29

    iget-object v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->sampleFormat:[I

    const/4 v6, 0x0

    aget v5, v5, v6

    const/4 v6, 0x2

    if-ne v5, v6, :cond_27

    move v10, v13

    const/4 v5, 0x0

    :goto_12
    iget v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstHeight:I

    if-ge v5, v6, :cond_23

    move v7, v10

    const/4 v6, 0x0

    :goto_13
    iget v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstWidth:I

    if-ge v6, v8, :cond_26

    aget-short v8, v22, v7

    int-to-float v8, v8

    add-int/lit8 v11, v7, 0x1

    aget-short v13, v22, v11

    int-to-float v13, v13

    add-int/lit8 v23, v7, 0x2

    move-object/from16 v25, v2

    aget-short v2, v22, v23

    int-to-float v2, v2

    move/from16 v27, v3

    iget-object v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->colorConverter:Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;

    invoke-virtual {v3, v8, v13, v2, v9}, Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;->toRGB(FFF[F)V

    const/4 v2, 0x0

    aget v3, v9, v2

    float-to-int v2, v3

    int-to-short v2, v2

    aput-short v2, v22, v7

    const/4 v2, 0x1

    aget v3, v9, v2

    float-to-int v2, v3

    int-to-short v2, v2

    aput-short v2, v22, v11

    const/4 v2, 0x2

    aget v3, v9, v2

    float-to-int v2, v3

    int-to-short v2, v2

    aput-short v2, v22, v23

    const/4 v2, 0x3

    add-int/2addr v7, v2

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v2, v25

    move/from16 v3, v27

    goto :goto_13

    :cond_26
    move-object/from16 v25, v2

    move/from16 v27, v3

    add-int/2addr v10, v15

    add-int/lit8 v5, v5, 0x1

    goto :goto_12

    :cond_27
    move-object/from16 v25, v2

    move/from16 v27, v3

    move v10, v13

    const/4 v2, 0x0

    :goto_14
    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstHeight:I

    if-ge v2, v3, :cond_24

    move v5, v10

    const/4 v3, 0x0

    :goto_15
    iget v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstWidth:I

    if-ge v3, v6, :cond_28

    aget-short v6, v22, v5

    const v7, 0xffff

    and-int/2addr v6, v7

    int-to-float v6, v6

    add-int/lit8 v8, v5, 0x1

    aget-short v11, v22, v8

    and-int/2addr v11, v7

    int-to-float v11, v11

    add-int/lit8 v13, v5, 0x2

    aget-short v23, v22, v13

    move-object/from16 v29, v14

    and-int v14, v23, v7

    int-to-float v7, v14

    iget-object v14, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->colorConverter:Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;

    invoke-virtual {v14, v6, v11, v7, v9}, Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;->toRGB(FFF[F)V

    const/4 v6, 0x0

    aget v7, v9, v6

    float-to-int v6, v7

    int-to-short v6, v6

    aput-short v6, v22, v5

    const/4 v6, 0x1

    aget v7, v9, v6

    float-to-int v6, v7

    int-to-short v6, v6

    aput-short v6, v22, v8

    const/4 v6, 0x2

    aget v7, v9, v6

    float-to-int v6, v7

    int-to-short v6, v6

    aput-short v6, v22, v13

    const/4 v6, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v14, v29

    goto :goto_15

    :cond_28
    move-object/from16 v29, v14

    add-int/2addr v10, v15

    add-int/lit8 v2, v2, 0x1

    goto :goto_14

    :cond_29
    move-object/from16 v25, v2

    move/from16 v27, v3

    move-object/from16 v29, v14

    if-eqz v1, :cond_2b

    move v10, v13

    const/4 v2, 0x0

    :goto_16
    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstHeight:I

    if-ge v2, v3, :cond_31

    move v5, v10

    const/4 v3, 0x0

    :goto_17
    iget v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstWidth:I

    if-ge v3, v6, :cond_2a

    aget v6, v1, v5

    int-to-float v6, v6

    add-int/lit8 v7, v5, 0x1

    aget v8, v1, v7

    int-to-float v8, v8

    add-int/lit8 v11, v5, 0x2

    aget v13, v1, v11

    int-to-float v13, v13

    iget-object v14, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->colorConverter:Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;

    invoke-virtual {v14, v6, v8, v13, v9}, Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;->toRGB(FFF[F)V

    const/4 v6, 0x0

    aget v8, v9, v6

    float-to-int v6, v8

    aput v6, v1, v5

    const/4 v6, 0x1

    aget v8, v9, v6

    float-to-int v6, v8

    aput v6, v1, v7

    const/4 v6, 0x2

    aget v7, v9, v6

    float-to-int v6, v7

    aput v6, v1, v11

    const/4 v6, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_17

    :cond_2a
    add-int/2addr v10, v15

    add-int/lit8 v2, v2, 0x1

    goto :goto_16

    :cond_2b
    if-eqz v4, :cond_2d

    move v10, v13

    const/4 v2, 0x0

    :goto_18
    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstHeight:I

    if-ge v2, v3, :cond_31

    move v5, v10

    const/4 v3, 0x0

    :goto_19
    iget v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstWidth:I

    if-ge v3, v6, :cond_2c

    aget v6, v4, v5

    add-int/lit8 v7, v5, 0x1

    aget v8, v4, v7

    add-int/lit8 v11, v5, 0x2

    aget v13, v4, v11

    iget-object v14, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->colorConverter:Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;

    invoke-virtual {v14, v6, v8, v13, v9}, Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;->toRGB(FFF[F)V

    const/4 v6, 0x0

    aget v8, v9, v6

    aput v8, v4, v5

    const/4 v6, 0x1

    aget v8, v9, v6

    aput v8, v4, v7

    const/4 v6, 0x2

    aget v7, v9, v6

    aput v7, v4, v11

    const/4 v6, 0x3

    add-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_2c
    add-int/2addr v10, v15

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_2d
    if-eqz v12, :cond_30

    move v10, v13

    const/4 v13, 0x0

    :goto_1a
    iget v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstHeight:I

    if-ge v13, v2, :cond_31

    move v3, v10

    const/4 v2, 0x0

    :goto_1b
    iget v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstWidth:I

    if-ge v2, v5, :cond_2e

    aget-wide v5, v12, v3

    double-to-float v5, v5

    add-int/lit8 v6, v3, 0x1

    aget-wide v7, v12, v6

    double-to-float v7, v7

    add-int/lit8 v8, v3, 0x2

    move v11, v13

    aget-wide v13, v12, v8

    double-to-float v13, v13

    iget-object v14, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->colorConverter:Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;

    invoke-virtual {v14, v5, v7, v13, v9}, Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;->toRGB(FFF[F)V

    const/4 v5, 0x0

    aget v7, v9, v5

    float-to-double v13, v7

    aput-wide v13, v12, v3

    const/4 v5, 0x1

    aget v7, v9, v5

    float-to-double v13, v7

    aput-wide v13, v12, v6

    const/4 v5, 0x2

    aget v6, v9, v5

    float-to-double v5, v6

    aput-wide v5, v12, v8

    const/4 v5, 0x3

    add-int/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    move v13, v11

    goto :goto_1b

    :cond_2e
    move v11, v13

    const/4 v5, 0x3

    add-int/2addr v10, v15

    add-int/lit8 v13, v11, 0x1

    goto :goto_1a

    :cond_2f
    move-object/from16 v25, v2

    move/from16 v27, v3

    move/from16 v28, v5

    move-object/from16 v29, v14

    :cond_30
    move v10, v13

    :cond_31
    :goto_1c
    iget v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->photometricInterpretation:I

    if-nez v2, :cond_3d

    if-eqz v29, :cond_33

    iget v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    mul-int v1, v1, v27

    add-int/lit8 v1, v1, 0x7

    const/16 v2, 0x8

    div-int/2addr v1, v2

    const/4 v13, 0x0

    :goto_1d
    iget v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    if-ge v13, v2, :cond_3d

    mul-int v2, v13, v15

    add-int/2addr v2, v10

    const/4 v3, 0x0

    :goto_1e
    if-ge v3, v1, :cond_32

    add-int v4, v2, v3

    aget-byte v5, v29, v4

    xor-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v29, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1e

    :cond_32
    add-int/lit8 v13, v13, 0x1

    goto :goto_1d

    :cond_33
    if-eqz v22, :cond_37

    iget v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    mul-int v1, v1, v27

    add-int/lit8 v1, v1, 0xf

    const/16 v2, 0x10

    div-int/2addr v1, v2

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->sampleFormat:[I

    const/4 v13, 0x0

    aget v2, v2, v13

    const/4 v3, 0x2

    if-ne v2, v3, :cond_35

    move v2, v13

    :goto_1f
    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    if-ge v2, v3, :cond_3e

    mul-int v3, v2, v15

    add-int/2addr v3, v10

    move v4, v13

    :goto_20
    if-ge v4, v1, :cond_34

    add-int v5, v3, v4

    aget-short v6, v22, v5

    rsub-int v6, v6, 0x7fff

    int-to-short v6, v6

    aput-short v6, v22, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_34
    add-int/lit8 v2, v2, 0x1

    goto :goto_1f

    :cond_35
    move v2, v13

    :goto_21
    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    if-ge v2, v3, :cond_3e

    mul-int v3, v2, v15

    add-int/2addr v3, v10

    move v4, v13

    :goto_22
    if-ge v4, v1, :cond_36

    add-int v5, v3, v4

    aget-short v6, v22, v5

    const v7, 0xffff

    xor-int/2addr v6, v7

    int-to-short v6, v6

    aput-short v6, v22, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_22

    :cond_36
    const v7, 0xffff

    add-int/lit8 v2, v2, 0x1

    goto :goto_21

    :cond_37
    const/4 v13, 0x0

    if-eqz v1, :cond_39

    iget v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    mul-int v2, v2, v27

    add-int/lit8 v2, v2, 0x1f

    const/16 v3, 0x20

    div-int/2addr v2, v3

    move v3, v13

    :goto_23
    iget v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    if-ge v3, v4, :cond_3e

    mul-int v4, v3, v15

    add-int/2addr v4, v10

    move v5, v13

    :goto_24
    if-ge v5, v2, :cond_38

    add-int v6, v4, v5

    const v7, 0x7fffffff

    aget v8, v1, v6

    sub-int/2addr v7, v8

    aput v7, v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_24

    :cond_38
    add-int/lit8 v3, v3, 0x1

    goto :goto_23

    :cond_39
    if-eqz v4, :cond_3b

    iget v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    mul-int v1, v1, v27

    add-int/lit8 v1, v1, 0x1f

    const/16 v2, 0x20

    div-int/2addr v1, v2

    move v2, v13

    :goto_25
    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    if-ge v2, v3, :cond_3e

    mul-int v3, v2, v15

    add-int/2addr v3, v10

    move v5, v13

    :goto_26
    if-ge v5, v1, :cond_3a

    add-int v6, v3, v5

    const/high16 v7, 0x3f800000    # 1.0f

    aget v8, v4, v6

    sub-float/2addr v7, v8

    aput v7, v4, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_3a
    add-int/lit8 v2, v2, 0x1

    goto :goto_25

    :cond_3b
    if-eqz v12, :cond_3e

    iget v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    mul-int v1, v1, v27

    add-int/lit8 v1, v1, 0x3f

    div-int/lit8 v1, v1, 0x40

    move v2, v13

    :goto_27
    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    if-ge v2, v3, :cond_3e

    mul-int v3, v2, v15

    add-int/2addr v3, v10

    move v4, v13

    :goto_28
    if-ge v4, v1, :cond_3c

    add-int v5, v3, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    aget-wide v8, v12, v5

    sub-double/2addr v6, v8

    aput-wide v6, v12, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_28

    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_27

    :cond_3d
    const/4 v13, 0x0

    :cond_3e
    iget-boolean v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->isBilevel:Z

    if-eqz v1, :cond_40

    iget-boolean v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->isImageSimple:Z

    if-eqz v1, :cond_3f

    new-instance v1, Ljava/awt/Rectangle;

    iget v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstMinX:I

    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstMinY:I

    iget v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstWidth:I

    iget v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstHeight:I

    invoke-direct {v1, v2, v3, v4, v5}, Ljava/awt/Rectangle;-><init>(IIII)V

    goto :goto_29

    :cond_3f
    invoke-virtual/range {v25 .. v25}, Ljava/awt/image/Raster;->getBounds()Ljava/awt/Rectangle;

    move-result-object v1

    :goto_29
    move-object/from16 v2, v25

    move-object/from16 v7, v29

    invoke-static {v7, v2, v1}, Lcom/sun/imageio/plugins/common/ImageUtil;->setPackedBinaryData([BLjava/awt/image/WritableRaster;Ljava/awt/Rectangle;)V

    :cond_40
    if-eqz v28, :cond_41

    return-void

    :cond_41
    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->rawImage:Ljava/awt/image/BufferedImage;

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    iget v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinX:I

    iget v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinY:I

    iget-boolean v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->planar:Z

    if-eqz v1, :cond_42

    const/4 v9, 0x0

    goto :goto_2a

    :cond_42
    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->sourceBands:[I

    move-object v9, v1

    :goto_2a
    invoke-virtual/range {v2 .. v9}, Ljava/awt/image/Raster;->createChild(IIIIII[I)Ljava/awt/image/Raster;

    move-result-object v1

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->image:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v3

    iget v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstMinX:I

    iget v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstMinY:I

    iget v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstWidth:I

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstHeight:I

    iget-object v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->destinationBands:[I

    move v4, v8

    move v5, v9

    invoke-virtual/range {v3 .. v10}, Ljava/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Ljava/awt/image/WritableRaster;

    move-result-object v2

    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->subsampleX:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_44

    iget v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->subsampleY:I

    if-ne v5, v4, :cond_44

    iget-boolean v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->adjustBitDepths:Z

    if-nez v4, :cond_43

    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcMinX:I

    iget v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcMinY:I

    iget v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcWidth:I

    iget v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcHeight:I

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstMinX:I

    iget v0, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstMinY:I

    const/16 v25, 0x0

    move-object/from16 v18, v1

    move/from16 v19, v3

    move/from16 v20, v4

    move/from16 v21, v5

    move/from16 v22, v6

    move/from16 v23, v7

    move/from16 v24, v0

    invoke-virtual/range {v18 .. v25}, Ljava/awt/image/Raster;->createChild(IIIIII[I)Ljava/awt/image/Raster;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/awt/image/WritableRaster;->setRect(Ljava/awt/image/Raster;)V

    goto/16 :goto_2f

    :cond_43
    const/4 v4, 0x1

    :cond_44
    if-ne v3, v4, :cond_45

    iget-boolean v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->adjustBitDepths:Z

    if-nez v3, :cond_45

    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcMinY:I

    iget v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstMinY:I

    :goto_2b
    iget v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinY:I

    iget v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    add-int/2addr v5, v6

    if-ge v3, v5, :cond_48

    iget v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcMinX:I

    iget v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcWidth:I

    const/16 v22, 0x1

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstMinX:I

    const/16 v25, 0x0

    move-object/from16 v18, v1

    move/from16 v19, v5

    move/from16 v20, v3

    move/from16 v21, v6

    move/from16 v23, v7

    move/from16 v24, v4

    invoke-virtual/range {v18 .. v25}, Ljava/awt/image/Raster;->createChild(IIIIII[I)Ljava/awt/image/Raster;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/awt/image/WritableRaster;->setRect(Ljava/awt/image/Raster;)V

    iget v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->subsampleY:I

    add-int/2addr v3, v5

    const/4 v5, 0x1

    add-int/2addr v4, v5

    goto :goto_2b

    :cond_45
    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinX:I

    iget v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinY:I

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Ljava/awt/image/Raster;->getPixel(II[I)[I

    move-result-object v3

    array-length v4, v3

    iget v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcMinY:I

    iget v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstMinY:I

    :goto_2c
    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcMinY:I

    iget v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcHeight:I

    add-int/2addr v7, v8

    if-ge v5, v7, :cond_48

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcMinX:I

    iget v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstMinX:I

    :goto_2d
    iget v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcMinX:I

    iget v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcWidth:I

    add-int/2addr v9, v10

    if-ge v7, v9, :cond_47

    invoke-virtual {v1, v7, v5, v3}, Ljava/awt/image/Raster;->getPixel(II[I)[I

    iget-boolean v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->adjustBitDepths:Z

    if-eqz v9, :cond_46

    move v9, v13

    :goto_2e
    if-ge v9, v4, :cond_46

    iget-object v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitDepthScale:[[I

    aget-object v10, v10, v9

    aget v11, v3, v9

    aget v10, v10, v11

    aput v10, v3, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_2e

    :cond_46
    invoke-virtual {v2, v8, v6, v3}, Ljava/awt/image/WritableRaster;->setPixel(II[I)V

    iget v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->subsampleX:I

    add-int/2addr v7, v9

    const/4 v9, 0x1

    add-int/2addr v8, v9

    goto :goto_2d

    :cond_47
    const/4 v9, 0x1

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->subsampleY:I

    add-int/2addr v5, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_2c

    :cond_48
    :goto_2f
    return-void

    :cond_49
    new-instance v0, Ljavax/imageio/IIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported raw image type: SampleModel = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; DataBuffer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public abstract decodeRaw([BIII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public decodeRaw([DIII)V
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 50
    div-int/lit8 v2, v1, 0x40

    .line 51
    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    mul-int/2addr v3, v2

    mul-int/lit8 v2, v3, 0x8

    .line 52
    iget v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    mul-int/2addr v4, v2

    new-array v4, v4, [B

    const/4 v5, 0x0

    .line 53
    invoke-virtual {v0, v4, v5, v1, v2}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->decodeRaw([BIII)V

    .line 54
    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    move/from16 v1, p2

    move v2, v5

    move v13, v2

    .line 55
    :goto_0
    iget v14, v0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    if-ge v2, v14, :cond_3

    move v14, v5

    :goto_1
    if-ge v14, v3, :cond_0

    add-int/lit8 v15, v13, 0x1

    .line 56
    aget-byte v13, v4, v13

    and-int/lit16 v13, v13, 0xff

    int-to-long v12, v13

    add-int/lit8 v16, v15, 0x1

    .line 57
    aget-byte v15, v4, v15

    and-int/lit16 v15, v15, 0xff

    int-to-long v5, v15

    add-int/lit8 v15, v16, 0x1

    .line 58
    aget-byte v7, v4, v16

    and-int/lit16 v7, v7, 0xff

    int-to-long v8, v7

    add-int/lit8 v7, v15, 0x1

    .line 59
    aget-byte v15, v4, v15

    and-int/lit16 v15, v15, 0xff

    int-to-long v10, v15

    add-int/lit8 v15, v7, 0x1

    .line 60
    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    move/from16 p2, v2

    move/from16 v19, v3

    int-to-long v2, v7

    add-int/lit8 v7, v15, 0x1

    .line 61
    aget-byte v15, v4, v15

    and-int/lit16 v15, v15, 0xff

    move/from16 v20, v1

    int-to-long v0, v15

    add-int/lit8 v15, v7, 0x1

    .line 62
    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    move-wide/from16 v21, v0

    int-to-long v0, v7

    add-int/lit8 v7, v15, 0x1

    .line 63
    aget-byte v15, v4, v15

    and-int/lit16 v15, v15, 0xff

    move/from16 v23, v14

    int-to-long v14, v15

    const/16 v18, 0x38

    shl-long v12, v12, v18

    const/16 v17, 0x30

    shl-long v5, v5, v17

    or-long/2addr v5, v12

    const/16 v12, 0x28

    shl-long/2addr v8, v12

    or-long/2addr v5, v8

    const/16 v8, 0x20

    shl-long v9, v10, v8

    or-long/2addr v5, v9

    const/16 v8, 0x18

    shl-long/2addr v2, v8

    or-long/2addr v2, v5

    const/16 v5, 0x10

    shl-long v8, v21, v5

    or-long/2addr v2, v8

    const/16 v5, 0x8

    shl-long/2addr v0, v5

    or-long/2addr v0, v2

    or-long/2addr v0, v14

    .line 64
    invoke-static {v0, v1}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v0

    add-int v2, v20, v23

    .line 65
    aput-wide v0, p1, v2

    add-int/lit8 v14, v23, 0x1

    move-object/from16 v0, p0

    move/from16 v2, p2

    move v13, v7

    move/from16 v3, v19

    move/from16 v1, v20

    const/4 v5, 0x0

    goto :goto_1

    :cond_0
    move/from16 v20, v1

    move/from16 p2, v2

    move/from16 v19, v3

    add-int v1, v20, p4

    add-int/lit8 v2, p2, 0x1

    move-object/from16 v0, p0

    const/4 v5, 0x0

    goto/16 :goto_0

    :cond_1
    move/from16 v19, v3

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    move/from16 v0, p2

    .line 66
    :goto_2
    iget v5, v1, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    if-ge v2, v5, :cond_3

    move/from16 v5, v19

    const/4 v6, 0x0

    :goto_3
    if-ge v6, v5, :cond_2

    add-int/lit8 v7, v3, 0x1

    .line 67
    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v8, v3

    add-int/lit8 v3, v7, 0x1

    .line 68
    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v10, v7

    add-int/lit8 v7, v3, 0x1

    .line 69
    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v12, v3

    add-int/lit8 v3, v7, 0x1

    .line 70
    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    int-to-long v14, v7

    add-int/lit8 v7, v3, 0x1

    .line 71
    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    move/from16 v19, v2

    int-to-long v1, v3

    add-int/lit8 v3, v7, 0x1

    .line 72
    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    move/from16 v20, v5

    move/from16 v21, v6

    int-to-long v5, v7

    add-int/lit8 v7, v3, 0x1

    .line 73
    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    move-wide/from16 v22, v8

    int-to-long v8, v3

    add-int/lit8 v3, v7, 0x1

    .line 74
    aget-byte v7, v4, v7

    and-int/lit16 v7, v7, 0xff

    move/from16 p2, v3

    move-object/from16 v24, v4

    int-to-long v3, v7

    const/16 v7, 0x38

    shl-long/2addr v3, v7

    const/16 v17, 0x30

    shl-long v8, v8, v17

    or-long/2addr v3, v8

    const/16 v8, 0x28

    shl-long/2addr v5, v8

    or-long/2addr v3, v5

    const/16 v5, 0x20

    shl-long/2addr v1, v5

    or-long/2addr v1, v3

    const/16 v4, 0x18

    shl-long/2addr v14, v4

    or-long/2addr v1, v14

    const/16 v6, 0x10

    shl-long/2addr v12, v6

    or-long/2addr v1, v12

    const/16 v9, 0x8

    shl-long/2addr v10, v9

    or-long/2addr v1, v10

    or-long v1, v1, v22

    .line 75
    invoke-static {v1, v2}, Ljava/lang/Double;->longBitsToDouble(J)D

    move-result-wide v1

    add-int v3, v0, v21

    .line 76
    aput-wide v1, p1, v3

    add-int/lit8 v1, v21, 0x1

    move/from16 v3, p2

    move v6, v1

    move/from16 v2, v19

    move/from16 v5, v20

    move-object/from16 v4, v24

    move-object/from16 v1, p0

    goto :goto_3

    :cond_2
    move/from16 v19, v2

    move-object/from16 v24, v4

    move/from16 v20, v5

    const/16 v4, 0x18

    const/16 v5, 0x20

    const/16 v6, 0x10

    const/16 v7, 0x38

    const/16 v8, 0x28

    const/16 v9, 0x8

    const/16 v17, 0x30

    add-int v0, v0, p4

    add-int/lit8 v2, v19, 0x1

    move-object/from16 v1, p0

    move/from16 v19, v20

    move-object/from16 v4, v24

    goto/16 :goto_2

    :cond_3
    return-void
.end method

.method public decodeRaw([FIII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 31
    div-int/lit8 v0, p3, 0x20

    .line 32
    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    mul-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x4

    .line 33
    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    mul-int/2addr v2, v0

    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 34
    invoke-virtual {p0, v2, v3, p3, v0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->decodeRaw([BIII)V

    .line 35
    iget-object p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p3}, Ljavax/imageio/stream/ImageInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v0, :cond_1

    move p3, v3

    move v0, p3

    .line 36
    :goto_0
    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    if-ge p3, v4, :cond_3

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_0

    add-int/lit8 v5, v0, 0x1

    .line 37
    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v6, v5, 0x1

    .line 38
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v6, 0x1

    .line 39
    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v8, v7, 0x1

    .line 40
    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v0, v5

    shl-int/lit8 v5, v6, 0x8

    or-int/2addr v0, v5

    or-int/2addr v0, v7

    .line 41
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    add-int v5, p2, v4

    .line 42
    aput v0, p1, v5

    add-int/lit8 v4, v4, 0x1

    move v0, v8

    goto :goto_1

    :cond_0
    add-int/2addr p2, p4

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    move p3, v3

    move v0, p3

    .line 43
    :goto_2
    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    if-ge p3, v4, :cond_3

    move v4, v3

    :goto_3
    if-ge v4, v1, :cond_2

    add-int/lit8 v5, v0, 0x1

    .line 44
    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v6, v5, 0x1

    .line 45
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v6, 0x1

    .line 46
    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v8, v7, 0x1

    .line 47
    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v6, v7

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v6

    or-int/2addr v0, v5

    .line 48
    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    add-int v5, p2, v4

    .line 49
    aput v0, p1, v5

    add-int/lit8 v4, v4, 0x1

    move v0, v8

    goto :goto_3

    :cond_2
    add-int/2addr p2, p4

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public decodeRaw([IIII)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 14
    div-int/lit8 v0, p3, 0x20

    .line 15
    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    mul-int/2addr v1, v0

    mul-int/lit8 v0, v1, 0x4

    .line 16
    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    mul-int/2addr v2, v0

    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 17
    invoke-virtual {p0, v2, v3, p3, v0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->decodeRaw([BIII)V

    .line 18
    iget-object p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p3}, Ljavax/imageio/stream/ImageInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v0, :cond_1

    move p3, v3

    move v0, p3

    .line 19
    :goto_0
    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    if-ge p3, v4, :cond_3

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_0

    add-int/lit8 v5, v0, 0x1

    .line 20
    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v6, v5, 0x1

    .line 21
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v6, 0x1

    .line 22
    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v8, v7, 0x1

    .line 23
    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v0, v0, 0x18

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v0, v5

    shl-int/lit8 v5, v6, 0x8

    or-int/2addr v0, v5

    or-int/2addr v0, v7

    add-int v5, p2, v4

    .line 24
    aput v0, p1, v5

    add-int/lit8 v4, v4, 0x1

    move v0, v8

    goto :goto_1

    :cond_0
    add-int/2addr p2, p4

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    move p3, v3

    move v0, p3

    .line 25
    :goto_2
    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    if-ge p3, v4, :cond_3

    move v4, v3

    :goto_3
    if-ge v4, v1, :cond_2

    add-int/lit8 v5, v0, 0x1

    .line 26
    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v6, v5, 0x1

    .line 27
    aget-byte v5, v2, v5

    and-int/lit16 v5, v5, 0xff

    add-int/lit8 v7, v6, 0x1

    .line 28
    aget-byte v6, v2, v6

    and-int/lit16 v6, v6, 0xff

    add-int/lit8 v8, v7, 0x1

    .line 29
    aget-byte v7, v2, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x18

    shl-int/lit8 v6, v6, 0x10

    or-int/2addr v6, v7

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v6

    or-int/2addr v0, v5

    add-int v5, p2, v4

    .line 30
    aput v0, p1, v5

    add-int/lit8 v4, v4, 0x1

    move v0, v8

    goto :goto_3

    :cond_2
    add-int/2addr p2, p4

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public decodeRaw([SIII)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    mul-int/2addr v0, p3

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v0, v0, 0x8

    .line 2
    div-int/lit8 v1, v0, 0x2

    .line 3
    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    mul-int/2addr v2, v0

    new-array v2, v2, [B

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p0, v2, v3, p3, v0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->decodeRaw([BIII)V

    .line 5
    iget-object p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p3}, Ljavax/imageio/stream/ImageInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object p3

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne p3, v0, :cond_1

    move p3, v3

    move v0, p3

    .line 6
    :goto_0
    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    if-ge p3, v4, :cond_3

    move v4, v3

    :goto_1
    if-ge v4, v1, :cond_0

    add-int/lit8 v5, v0, 0x1

    .line 7
    aget-byte v0, v2, v0

    int-to-short v0, v0

    add-int/lit8 v6, v5, 0x1

    .line 8
    aget-byte v5, v2, v5

    int-to-short v5, v5

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v0, v5

    int-to-short v0, v0

    add-int v5, p2, v4

    .line 9
    aput-short v0, p1, v5

    add-int/lit8 v4, v4, 0x1

    move v0, v6

    goto :goto_1

    :cond_0
    add-int/2addr p2, p4

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    move p3, v3

    move v0, p3

    .line 10
    :goto_2
    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    if-ge p3, v4, :cond_3

    move v4, v3

    :goto_3
    if-ge v4, v1, :cond_2

    add-int/lit8 v5, v0, 0x1

    .line 11
    aget-byte v0, v2, v0

    int-to-short v0, v0

    add-int/lit8 v6, v5, 0x1

    .line 12
    aget-byte v5, v2, v5

    int-to-short v5, v5

    shl-int/lit8 v5, v5, 0x8

    and-int/lit16 v0, v0, 0xff

    or-int/2addr v0, v5

    int-to-short v0, v0

    add-int v5, p2, v4

    .line 13
    aput-short v0, p1, v5

    add-int/lit8 v4, v4, 0x1

    move v0, v6

    goto :goto_3

    :cond_2
    add-int/2addr p2, p4

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public getRawImageType()Ljavax/imageio/ImageTypeSpecifier;
    .locals 7

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->photometricInterpretation:I

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->compression:I

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->samplesPerPixel:I

    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitsPerSample:[I

    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->sampleFormat:[I

    iget-object v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->extraSamples:[I

    iget-object v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->colorMap:[C

    invoke-static/range {v0 .. v6}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->getRawImageTypeSpecifier(III[I[I[I[C)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0
.end method

.method public setActiveSrcHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcHeight:I

    return-void
.end method

.method public setActiveSrcMinX(I)V
    .locals 0

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcMinX:I

    return-void
.end method

.method public setActiveSrcMinY(I)V
    .locals 0

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcMinY:I

    return-void
.end method

.method public setActiveSrcWidth(I)V
    .locals 0

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->activeSrcWidth:I

    return-void
.end method

.method public setBitsPerSample([I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    :goto_0
    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->bitsPerSample:[I

    return-void
.end method

.method public setByteCount(I)V
    .locals 0

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->byteCount:I

    return-void
.end method

.method public setColorConverter(Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->colorConverter:Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;

    return-void
.end method

.method public setColorMap([C)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [C->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [C

    :goto_0
    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->colorMap:[C

    return-void
.end method

.method public setCompression(I)V
    .locals 0

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->compression:I

    return-void
.end method

.method public setDestinationBands([I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    :goto_0
    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->destinationBands:[I

    return-void
.end method

.method public setDstHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstHeight:I

    return-void
.end method

.method public setDstMinX(I)V
    .locals 0

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstMinX:I

    return-void
.end method

.method public setDstMinY(I)V
    .locals 0

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstMinY:I

    return-void
.end method

.method public setDstWidth(I)V
    .locals 0

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstWidth:I

    return-void
.end method

.method public setDstXOffset(I)V
    .locals 0

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstXOffset:I

    return-void
.end method

.method public setDstYOffset(I)V
    .locals 0

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->dstYOffset:I

    return-void
.end method

.method public setExtraSamples([I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    :goto_0
    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->extraSamples:[I

    return-void
.end method

.method public setImage(Ljava/awt/image/BufferedImage;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->image:Ljava/awt/image/BufferedImage;

    return-void
.end method

.method public setMetadata(Ljavax/imageio/metadata/IIOMetadata;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->metadata:Ljavax/imageio/metadata/IIOMetadata;

    return-void
.end method

.method public setOffset(J)V
    .locals 0

    iput-wide p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->offset:J

    return-void
.end method

.method public setPhotometricInterpretation(I)V
    .locals 0

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->photometricInterpretation:I

    return-void
.end method

.method public setPlanar(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->planar:Z

    return-void
.end method

.method public setPlanarBand(I)V
    .locals 0

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->planarBand:I

    return-void
.end method

.method public setReader(Ljavax/imageio/ImageReader;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->reader:Ljavax/imageio/ImageReader;

    return-void
.end method

.method public setSampleFormat([I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    filled-new-array {p1}, [I

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    :goto_0
    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->sampleFormat:[I

    return-void
.end method

.method public setSamplesPerPixel(I)V
    .locals 0

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->samplesPerPixel:I

    return-void
.end method

.method public setSourceBands([I)V
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    :goto_0
    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->sourceBands:[I

    return-void
.end method

.method public setSourceXOffset(I)V
    .locals 0

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->sourceXOffset:I

    return-void
.end method

.method public setSourceYOffset(I)V
    .locals 0

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->sourceYOffset:I

    return-void
.end method

.method public setSrcHeight(I)V
    .locals 0

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcHeight:I

    return-void
.end method

.method public setSrcMinX(I)V
    .locals 0

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinX:I

    return-void
.end method

.method public setSrcMinY(I)V
    .locals 0

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcMinY:I

    return-void
.end method

.method public setSrcWidth(I)V
    .locals 0

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->srcWidth:I

    return-void
.end method

.method public setStream(Ljavax/imageio/stream/ImageInputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    return-void
.end method

.method public setSubsampleX(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->subsampleX:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "subsampleX <= 0!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSubsampleY(I)V
    .locals 0

    if-lez p1, :cond_0

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->subsampleY:I

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "subsampleY <= 0!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
