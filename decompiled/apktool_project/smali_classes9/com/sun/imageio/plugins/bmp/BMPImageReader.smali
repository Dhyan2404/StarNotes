.class public Lcom/sun/imageio/plugins/bmp/BMPImageReader;
.super Ljavax/imageio/ImageReader;
.source "SourceFile"

# interfaces
.implements Lcom/sun/imageio/plugins/bmp/BMPConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/imageio/plugins/bmp/BMPImageReader$EmbeddedProgressAdapter;
    }
.end annotation


# static fields
.field private static final VERSION_2_1_BIT:I = 0x0

.field private static final VERSION_2_24_BIT:I = 0x3

.field private static final VERSION_2_4_BIT:I = 0x1

.field private static final VERSION_2_8_BIT:I = 0x2

.field private static final VERSION_3_1_BIT:I = 0x4

.field private static final VERSION_3_24_BIT:I = 0x7

.field private static final VERSION_3_4_BIT:I = 0x5

.field private static final VERSION_3_8_BIT:I = 0x6

.field private static final VERSION_3_EXT_16_BIT:I = 0xd

.field private static final VERSION_3_EXT_1_BIT:I = 0xa

.field private static final VERSION_3_EXT_24_BIT:I = 0xe

.field private static final VERSION_3_EXT_32_BIT:I = 0xf

.field private static final VERSION_3_EXT_4_BIT:I = 0xb

.field private static final VERSION_3_EXT_8_BIT:I = 0xc

.field private static final VERSION_3_EXT_EMBEDDED:I = 0x17

.field private static final VERSION_3_NT_16_BIT:I = 0x8

.field private static final VERSION_3_NT_32_BIT:I = 0x9

.field private static final VERSION_3_XP_EMBEDDED:I = 0x16

.field private static final VERSION_4_16_BIT:I = 0x13

.field private static final VERSION_4_1_BIT:I = 0x10

.field private static final VERSION_4_24_BIT:I = 0x14

.field private static final VERSION_4_32_BIT:I = 0x15

.field private static final VERSION_4_4_BIT:I = 0x11

.field private static final VERSION_4_8_BIT:I = 0x12

.field private static final VERSION_4_XP_EMBEDDED:I = 0x18

.field private static final VERSION_5_XP_EMBEDDED:I = 0x19

.field private static isLinkedProfileDisabled:Ljava/lang/Boolean;

.field private static isWindowsPlatform:Ljava/lang/Boolean;


# instance fields
.field private alphaMask:I

.field private bi:Ljava/awt/image/BufferedImage;

.field private bitmapFileSize:J

.field private bitmapOffset:J

.field private bitmapStart:J

.field private bitsPerPixel:I

.field private blueMask:I

.field private colorModel:Ljava/awt/image/ColorModel;

.field private compression:J

.field private destBands:[I

.field private destinationRegion:Ljava/awt/Rectangle;

.field private gotHeader:Z

.field private greenMask:I

.field private height:I

.field private iis:Ljavax/imageio/stream/ImageInputStream;

.field private imageSize:J

.field private imageType:I

.field private isBottomUp:Z

.field private metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

.field private noTransform:Z

.field private numBands:I

.field private originalColorModel:Ljava/awt/image/ColorModel;

.field private originalSampleModel:Ljava/awt/image/SampleModel;

.field private palette:[B

.field private redMask:I

.field private sampleModel:Ljava/awt/image/SampleModel;

.field private scaleX:I

.field private scaleY:I

.field private seleBand:Z

.field private sourceBands:[I

.field private sourceRegion:Ljava/awt/Rectangle;

.field private width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Ljavax/imageio/spi/ImageReaderSpi;)V
    .locals 1

    invoke-direct {p0, p1}, Ljavax/imageio/ImageReader;-><init>(Ljavax/imageio/spi/ImageReaderSpi;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->gotHeader:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->noTransform:Z

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->seleBand:Z

    return-void
.end method

.method public static synthetic access$100(Lcom/sun/imageio/plugins/bmp/BMPImageReader;F)V
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    return-void
.end method

.method public static synthetic access$200(Lcom/sun/imageio/plugins/bmp/BMPImageReader;Ljava/awt/image/BufferedImage;IIIIII[I)V
    .locals 0

    invoke-virtual/range {p0 .. p8}, Ljavax/imageio/ImageReader;->processImageUpdate(Ljava/awt/image/BufferedImage;IIIIII[I)V

    return-void
.end method

.method public static synthetic access$300(Lcom/sun/imageio/plugins/bmp/BMPImageReader;Ljava/awt/image/BufferedImage;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->processPassComplete(Ljava/awt/image/BufferedImage;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/sun/imageio/plugins/bmp/BMPImageReader;Ljava/awt/image/BufferedImage;IIIIIII[I)V
    .locals 0

    invoke-virtual/range {p0 .. p9}, Ljavax/imageio/ImageReader;->processPassStarted(Ljava/awt/image/BufferedImage;IIIIIII[I)V

    return-void
.end method

.method public static synthetic access$500(Lcom/sun/imageio/plugins/bmp/BMPImageReader;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    return-void
.end method

.method private checkIndex(I)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "BMPImageReader0"

    invoke-static {p1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private copyRLE4ScanlineToDst(I[B[B)Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v1, v0, Ljava/awt/Rectangle;->y:I

    const/4 v9, 0x0

    if-lt p1, v1, :cond_7

    iget v0, v0, Ljava/awt/Rectangle;->height:I

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_7

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->noTransform:Z

    const/4 v2, 0x4

    const/4 v10, 0x1

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    add-int/2addr v0, v10

    shr-int/2addr v0, v10

    mul-int/2addr v0, p1

    move v1, v9

    move v4, v1

    :goto_0
    iget v5, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    shr-int/lit8 v6, v5, 0x1

    if-ge v1, v6, :cond_0

    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v4, 0x1

    aget-byte v4, p2, v4

    shl-int/2addr v4, v2

    add-int/lit8 v7, v6, 0x1

    aget-byte v6, p2, v6

    or-int/2addr v4, v6

    int-to-byte v4, v4

    aput-byte v4, p3, v0

    add-int/lit8 v1, v1, 0x1

    move v0, v5

    move v4, v7

    goto :goto_0

    :cond_0
    and-int/lit8 v1, v5, 0x1

    if-ne v1, v10, :cond_1

    aget-byte v1, p3, v0

    sub-int/2addr v5, v10

    aget-byte v4, p2, v5

    shl-int/lit8 v2, v4, 0x4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, p3, v0

    :cond_1
    iget-object v1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Ljava/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v4, v0, Ljava/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    filled-new-array {v9}, [I

    move-result-object v8

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v8}, Ljavax/imageio/ImageReader;->processImageUpdate(Ljava/awt/image/BufferedImage;IIIIII[I)V

    goto :goto_2

    :cond_2
    sub-int v0, p1, v1

    iget v1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Ljava/awt/image/SampleModel;

    check-cast v0, Ljava/awt/image/MultiPixelPackedSampleModel;

    invoke-virtual {v0}, Ljava/awt/image/MultiPixelPackedSampleModel;->getScanlineStride()I

    move-result v0

    iget-object v1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v4, v1, Ljava/awt/Rectangle;->y:I

    sub-int v3, p1, v4

    iget v4, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    div-int/2addr v3, v4

    iget-object v4, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v5, v4, Ljava/awt/Rectangle;->y:I

    add-int/2addr v3, v5

    mul-int/2addr v0, v3

    iget v4, v4, Ljava/awt/Rectangle;->x:I

    shr-int/lit8 v5, v4, 0x1

    add-int/2addr v0, v5

    and-int/2addr v4, v10

    rsub-int/lit8 v4, v4, 0x1

    shl-int/lit8 v4, v4, 0x2

    iget v1, v1, Ljava/awt/Rectangle;->x:I

    :goto_1
    iget-object v5, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v6, v5, Ljava/awt/Rectangle;->x:I

    iget v5, v5, Ljava/awt/Rectangle;->width:I

    add-int/2addr v6, v5

    if-ge v1, v6, :cond_4

    aget-byte v5, p3, v0

    aget-byte v6, p2, v1

    shl-int/2addr v6, v4

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, p3, v0

    add-int/2addr v4, v2

    if-ne v4, v2, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    and-int/lit8 v4, v4, 0x7

    iget v5, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleX:I

    add-int/2addr v1, v5

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Ljava/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v4, v0, Ljava/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    filled-new-array {v9}, [I

    move-result-object v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Ljavax/imageio/ImageReader;->processImageUpdate(Ljava/awt/image/BufferedImage;IIIIII[I)V

    goto :goto_2

    :cond_5
    move v10, v9

    :goto_2
    move v0, v9

    :goto_3
    iget v1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    if-ge v0, v1, :cond_6

    aput-byte v9, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    move v9, v10

    :cond_7
    return v9
.end method

.method private copyRLE8ScanlineToDst(I[B[B)Z
    .locals 13

    move-object v9, p0

    move v3, p1

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v1, v0, Ljava/awt/Rectangle;->y:I

    const/4 v10, 0x0

    if-lt v3, v1, :cond_5

    iget v0, v0, Ljava/awt/Rectangle;->height:I

    add-int/2addr v0, v1

    if-ge v3, v0, :cond_5

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->noTransform:Z

    const/4 v11, 0x1

    if-eqz v0, :cond_1

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    mul-int/2addr v0, v3

    move v1, v10

    :goto_0
    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    if-ge v1, v2, :cond_0

    add-int/lit8 v2, v0, 0x1

    aget-byte v4, p2, v1

    aput-byte v4, p3, v0

    add-int/lit8 v1, v1, 0x1

    move v0, v2

    goto :goto_0

    :cond_0
    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Ljava/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v4, v0, Ljava/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    filled-new-array {v10}, [I

    move-result-object v8

    move-object v0, p0

    move v3, p1

    invoke-virtual/range {v0 .. v8}, Ljavax/imageio/ImageReader;->processImageUpdate(Ljava/awt/image/BufferedImage;IIIIII[I)V

    goto :goto_2

    :cond_1
    sub-int v0, v3, v1

    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_3

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Ljava/awt/image/SampleModel;

    check-cast v0, Ljava/awt/image/ComponentSampleModel;

    invoke-virtual {v0}, Ljava/awt/image/ComponentSampleModel;->getScanlineStride()I

    move-result v0

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v2, v1, Ljava/awt/Rectangle;->y:I

    sub-int v2, v3, v2

    iget v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    div-int/2addr v2, v3

    iget-object v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v4, v3, Ljava/awt/Rectangle;->y:I

    add-int/2addr v4, v2

    mul-int/2addr v0, v4

    iget v2, v3, Ljava/awt/Rectangle;->x:I

    add-int/2addr v0, v2

    iget v1, v1, Ljava/awt/Rectangle;->x:I

    :goto_1
    iget-object v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v3, v2, Ljava/awt/Rectangle;->x:I

    iget v2, v2, Ljava/awt/Rectangle;->width:I

    add-int/2addr v3, v2

    if-ge v1, v3, :cond_2

    add-int/lit8 v2, v0, 0x1

    aget-byte v3, p2, v1

    aput-byte v3, p3, v0

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleX:I

    add-int/2addr v1, v0

    move v0, v2

    goto :goto_1

    :cond_2
    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Ljava/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v5, v0, Ljava/awt/Rectangle;->width:I

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x1

    filled-new-array {v10}, [I

    move-result-object v12

    move-object v0, p0

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    move v7, v8

    move-object v8, v12

    invoke-virtual/range {v0 .. v8}, Ljavax/imageio/ImageReader;->processImageUpdate(Ljava/awt/image/BufferedImage;IIIIII[I)V

    goto :goto_2

    :cond_3
    move v11, v10

    :goto_2
    move v0, v10

    :goto_3
    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    if-ge v0, v1, :cond_4

    aput-byte v10, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v10, v11

    :cond_5
    return v10
.end method

.method private decodeRLE4(II[B[B)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p4

    iget v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    new-array v3, v3, [B

    iget-boolean v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    sub-int/2addr v4, v5

    goto :goto_0

    :cond_0
    move v4, v6

    :goto_0
    move v7, v6

    move v8, v7

    move v9, v8

    move v10, v9

    :cond_1
    add-int/lit8 v11, v7, 0x1

    if-ge v11, v1, :cond_15

    aget-byte v7, p3, v7

    and-int/lit16 v7, v7, 0xff

    if-nez v7, :cond_12

    add-int/lit8 v7, v11, 0x1

    aget-byte v11, p3, v11

    and-int/lit16 v11, v11, 0xff

    const/4 v12, -0x1

    const/high16 v13, 0x42c80000    # 100.0f

    if-eqz v11, :cond_e

    if-eq v11, v5, :cond_a

    const/4 v12, 0x2

    if-eq v11, v12, :cond_6

    add-int/lit8 v11, v7, -0x1

    aget-byte v11, p3, v11

    and-int/lit16 v11, v11, 0xff

    move v13, v6

    :goto_1
    if-ge v13, v11, :cond_4

    if-ge v7, v1, :cond_4

    and-int/lit8 v14, v13, 0x1

    if-nez v14, :cond_2

    aget-byte v14, p3, v7

    and-int/lit16 v14, v14, 0xf0

    shr-int/lit8 v14, v14, 0x4

    goto :goto_2

    :cond_2
    add-int/lit8 v14, v7, 0x1

    aget-byte v7, p3, v7

    and-int/lit8 v7, v7, 0xf

    move/from16 v16, v14

    move v14, v7

    move/from16 v7, v16

    :goto_2
    int-to-byte v14, v14

    iget v15, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    if-ge v8, v15, :cond_3

    add-int/lit8 v15, v8, 0x1

    aput-byte v14, v3, v8

    move v8, v15

    :cond_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_4
    and-int/lit8 v13, v11, 0x1

    if-ne v13, v5, :cond_5

    add-int/lit8 v7, v7, 0x1

    :cond_5
    add-int/lit8 v11, v11, 0x1

    div-int/2addr v11, v12

    and-int/2addr v11, v5

    if-ne v11, v5, :cond_14

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_8

    :cond_6
    add-int/lit8 v11, v7, 0x1

    if-ge v11, v1, :cond_14

    aget-byte v7, p3, v7

    and-int/lit16 v7, v7, 0xff

    add-int/lit8 v12, v11, 0x1

    aget-byte v11, p3, v11

    and-int/lit16 v11, v11, 0xff

    if-eqz v11, :cond_9

    invoke-direct {v0, v4, v3, v2}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->copyRLE4ScanlineToDst(I[B[B)Z

    move-result v14

    if-eqz v14, :cond_7

    add-int/lit8 v9, v9, 0x1

    :cond_7
    int-to-float v14, v9

    mul-float/2addr v14, v13

    iget-object v13, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v13, v13, Ljava/awt/Rectangle;->height:I

    int-to-float v13, v13

    div-float/2addr v14, v13

    invoke-virtual {v0, v14}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    iget-boolean v13, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v13, :cond_8

    neg-int v13, v11

    goto :goto_3

    :cond_8
    move v13, v11

    :goto_3
    add-int/2addr v4, v13

    :cond_9
    iget v13, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    mul-int/2addr v11, v13

    add-int/2addr v7, v11

    add-int/2addr v8, v7

    rem-int/2addr v8, v13

    move v7, v12

    goto/16 :goto_8

    :cond_a
    if-eqz v8, :cond_d

    invoke-direct {v0, v4, v3, v2}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->copyRLE4ScanlineToDst(I[B[B)Z

    move-result v8

    if-eqz v8, :cond_b

    add-int/lit8 v9, v9, 0x1

    :cond_b
    int-to-float v8, v9

    mul-float/2addr v8, v13

    iget-object v10, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v10, v10, Ljava/awt/Rectangle;->height:I

    int-to-float v10, v10

    div-float/2addr v8, v10

    invoke-virtual {v0, v8}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    iget-boolean v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v8, :cond_c

    goto :goto_4

    :cond_c
    move v12, v5

    :goto_4
    add-int/2addr v4, v12

    goto :goto_6

    :cond_d
    move v10, v5

    goto :goto_8

    :cond_e
    invoke-direct {v0, v4, v3, v2}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->copyRLE4ScanlineToDst(I[B[B)Z

    move-result v8

    if-eqz v8, :cond_f

    add-int/lit8 v9, v9, 0x1

    :cond_f
    int-to-float v8, v9

    mul-float/2addr v8, v13

    iget-object v11, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v11, v11, Ljava/awt/Rectangle;->height:I

    int-to-float v11, v11

    div-float/2addr v8, v11

    invoke-virtual {v0, v8}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    iget-boolean v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v8, :cond_10

    goto :goto_5

    :cond_10
    move v12, v5

    :goto_5
    add-int/2addr v4, v12

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v8

    if-eqz v8, :cond_11

    :goto_6
    move v10, v5

    :cond_11
    move v8, v6

    goto :goto_8

    :cond_12
    if-ge v11, v1, :cond_13

    aget-byte v12, p3, v11

    and-int/lit16 v13, v12, 0xf0

    shr-int/lit8 v13, v13, 0x4

    and-int/lit8 v12, v12, 0xf

    filled-new-array {v13, v12}, [I

    move-result-object v12

    move v13, v6

    :goto_7
    if-ge v13, v7, :cond_13

    iget v14, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    if-ge v8, v14, :cond_13

    add-int/lit8 v14, v8, 0x1

    and-int/lit8 v15, v13, 0x1

    aget v15, v12, v15

    int-to-byte v15, v15

    aput-byte v15, v3, v8

    add-int/lit8 v13, v13, 0x1

    move v8, v14

    goto :goto_7

    :cond_13
    add-int/lit8 v11, v11, 0x1

    move v7, v11

    :cond_14
    :goto_8
    if-eqz v10, :cond_1

    :cond_15
    return-void
.end method

.method private decodeRLE8(II[B[B)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget p2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    new-array p2, p2, [B

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    move v3, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :cond_1
    add-int/lit8 v7, v3, 0x1

    if-ge v7, p1, :cond_13

    aget-byte v3, p3, v3

    and-int/lit16 v3, v3, 0xff

    if-nez v3, :cond_10

    add-int/lit8 v3, v7, 0x1

    aget-byte v7, p3, v7

    and-int/lit16 v7, v7, 0xff

    const/4 v8, -0x1

    const/high16 v9, 0x42c80000    # 100.0f

    if-eqz v7, :cond_c

    if-eq v7, v1, :cond_8

    const/4 v8, 0x2

    if-eq v7, v8, :cond_4

    add-int/lit8 v7, v3, -0x1

    aget-byte v7, p3, v7

    and-int/lit16 v7, v7, 0xff

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_3

    if-ge v3, p1, :cond_3

    add-int/lit8 v9, v3, 0x1

    aget-byte v3, p3, v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    iget v10, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    if-ge v4, v10, :cond_2

    add-int/lit8 v10, v4, 0x1

    aput-byte v3, p2, v4

    move v4, v10

    :cond_2
    add-int/lit8 v8, v8, 0x1

    move v3, v9

    goto :goto_1

    :cond_3
    and-int/lit8 v7, v7, 0x1

    if-ne v7, v1, :cond_12

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_7

    :cond_4
    add-int/lit8 v7, v3, 0x1

    if-ge v7, p1, :cond_12

    aget-byte v3, p3, v3

    and-int/lit16 v3, v3, 0xff

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, p3, v7

    and-int/lit16 v7, v7, 0xff

    if-eqz v7, :cond_7

    invoke-direct {p0, v0, p2, p4}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->copyRLE8ScanlineToDst(I[B[B)Z

    move-result v10

    if-eqz v10, :cond_5

    add-int/lit8 v5, v5, 0x1

    :cond_5
    int-to-float v10, v5

    mul-float/2addr v10, v9

    iget-object v9, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v9, v9, Ljava/awt/Rectangle;->height:I

    int-to-float v9, v9

    div-float/2addr v10, v9

    invoke-virtual {p0, v10}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    iget-boolean v9, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v9, :cond_6

    neg-int v9, v7

    goto :goto_2

    :cond_6
    move v9, v7

    :goto_2
    add-int/2addr v0, v9

    :cond_7
    iget v9, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    mul-int/2addr v7, v9

    add-int/2addr v3, v7

    add-int/2addr v4, v3

    rem-int/2addr v4, v9

    move v3, v8

    goto/16 :goto_7

    :cond_8
    if-eqz v4, :cond_b

    invoke-direct {p0, v0, p2, p4}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->copyRLE8ScanlineToDst(I[B[B)Z

    move-result v4

    if-eqz v4, :cond_9

    add-int/lit8 v5, v5, 0x1

    :cond_9
    int-to-float v4, v5

    mul-float/2addr v4, v9

    iget-object v6, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v6, v6, Ljava/awt/Rectangle;->height:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-virtual {p0, v4}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    iget-boolean v4, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v4, :cond_a

    goto :goto_3

    :cond_a
    move v8, v1

    :goto_3
    add-int/2addr v0, v8

    goto :goto_5

    :cond_b
    move v6, v1

    goto :goto_7

    :cond_c
    invoke-direct {p0, v0, p2, p4}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->copyRLE8ScanlineToDst(I[B[B)Z

    move-result v4

    if-eqz v4, :cond_d

    add-int/lit8 v5, v5, 0x1

    :cond_d
    int-to-float v4, v5

    mul-float/2addr v4, v9

    iget-object v7, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v7, v7, Ljava/awt/Rectangle;->height:I

    int-to-float v7, v7

    div-float/2addr v4, v7

    invoke-virtual {p0, v4}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    iget-boolean v4, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v4, :cond_e

    goto :goto_4

    :cond_e
    move v8, v1

    :goto_4
    add-int/2addr v0, v8

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v4

    if-eqz v4, :cond_f

    :goto_5
    move v6, v1

    :cond_f
    move v4, v2

    goto :goto_7

    :cond_10
    if-ge v7, p1, :cond_11

    move v8, v2

    :goto_6
    if-ge v8, v3, :cond_11

    iget v9, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    if-ge v4, v9, :cond_11

    add-int/lit8 v9, v4, 0x1

    aget-byte v10, p3, v7

    and-int/lit16 v10, v10, 0xff

    int-to-byte v10, v10

    aput-byte v10, p2, v4

    add-int/lit8 v8, v8, 0x1

    move v4, v9

    goto :goto_6

    :cond_11
    add-int/lit8 v7, v7, 0x1

    move v3, v7

    :cond_12
    :goto_7
    if-eqz v6, :cond_1

    :cond_13
    return-void
.end method

.method private static isLinkedProfileAllowed()Z
    .locals 1

    sget-object v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isLinkedProfileDisabled:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader$4;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader$4;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sput-object v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isLinkedProfileDisabled:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isLinkedProfileDisabled:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static isUncOrDevicePath([B)Z
    .locals 6

    sget-object v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isWindowsPlatform:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader$5;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader$5;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    sput-object v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isWindowsPlatform:Ljava/lang/Boolean;

    :cond_0
    sget-object v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isWindowsPlatform:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    aget-byte v0, p0, v1

    const/16 v2, 0x2f

    const/16 v3, 0x5c

    if-ne v0, v2, :cond_2

    aput-byte v3, p0, v1

    :cond_2
    const/4 v0, 0x1

    aget-byte v4, p0, v0

    if-ne v4, v2, :cond_3

    aput-byte v3, p0, v0

    :cond_3
    const/4 v4, 0x3

    aget-byte v5, p0, v4

    if-ne v5, v2, :cond_4

    aput-byte v3, p0, v4

    :cond_4
    aget-byte v2, p0, v1

    if-ne v2, v3, :cond_a

    aget-byte v2, p0, v0

    if-ne v2, v3, :cond_a

    const/4 v2, 0x2

    aget-byte v2, p0, v2

    const/16 v5, 0x3f

    if-ne v2, v5, :cond_9

    aget-byte v2, p0, v4

    if-ne v2, v3, :cond_9

    const/4 v2, 0x4

    aget-byte v2, p0, v2

    const/16 v3, 0x55

    if-eq v2, v3, :cond_5

    const/16 v3, 0x75

    if-ne v2, v3, :cond_8

    :cond_5
    const/4 v2, 0x5

    aget-byte v2, p0, v2

    const/16 v3, 0x4e

    if-eq v2, v3, :cond_6

    const/16 v3, 0x6e

    if-ne v2, v3, :cond_8

    :cond_6
    const/4 v2, 0x6

    aget-byte p0, p0, v2

    const/16 v2, 0x43

    if-eq p0, v2, :cond_7

    const/16 v2, 0x63

    if-ne p0, v2, :cond_8

    :cond_7
    move v1, v0

    :cond_8
    return v1

    :cond_9
    return v0

    :cond_a
    return v1
.end method

.method private read16Bit([S)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    mul-int/lit8 v1, v0, 0x2

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    rsub-int/lit8 v1, v1, 0x4

    :cond_0
    move v11, v1

    div-int/lit8 v1, v11, 0x2

    add-int v12, v0, v1

    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->noTransform:Z

    const/high16 v13, 0x42c80000    # 100.0f

    const/4 v14, 0x0

    if-eqz v1, :cond_4

    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v1, :cond_1

    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v0

    goto :goto_0

    :cond_1
    move v1, v14

    :goto_0
    move v12, v14

    :goto_1
    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    if-ge v12, v0, :cond_a

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    invoke-interface {v0, v10, v1, v2}, Ljavax/imageio/stream/ImageInputStream;->readFully([SII)V

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v11}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_2

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    neg-int v0, v0

    goto :goto_2

    :cond_2
    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    :goto_2
    add-int v15, v1, v0

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Ljava/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v4, v0, Ljava/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    filled-new-array {v14}, [I

    move-result-object v8

    move-object/from16 v0, p0

    move v3, v12

    invoke-virtual/range {v0 .. v8}, Ljavax/imageio/ImageReader;->processImageUpdate(Ljava/awt/image/BufferedImage;IIIIII[I)V

    int-to-float v0, v12

    mul-float/2addr v0, v13

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v9, v0}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_7

    :cond_3
    add-int/lit8 v12, v12, 0x1

    move v1, v15

    goto :goto_1

    :cond_4
    new-array v11, v12, [S

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Ljava/awt/image/SampleModel;

    check-cast v0, Ljava/awt/image/SinglePixelPackedSampleModel;

    invoke-virtual {v0}, Ljava/awt/image/SinglePixelPackedSampleModel;->getScanlineStride()I

    move-result v15

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_5

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->y:I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    add-int/lit8 v1, v1, -0x1

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    mul-int/2addr v2, v12

    shl-int/lit8 v0, v2, 0x1

    invoke-interface {v1, v0}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    goto :goto_3

    :cond_5
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->y:I

    mul-int/2addr v1, v12

    shl-int/lit8 v1, v1, 0x1

    invoke-interface {v0, v1}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    :goto_3
    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v12

    shl-int/lit8 v8, v0, 0x1

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v0, Ljava/awt/Rectangle;->y:I

    mul-int/2addr v1, v15

    iget-boolean v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v2, :cond_6

    iget v2, v0, Ljava/awt/Rectangle;->height:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, v15

    add-int/2addr v1, v2

    :cond_6
    iget v0, v0, Ljava/awt/Rectangle;->x:I

    add-int/2addr v1, v0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->y:I

    move v7, v14

    :goto_4
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->height:I

    if-ge v7, v0, :cond_a

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v11, v14, v12}, Ljavax/imageio/stream/ImageInputStream;->readFully([SII)V

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->x:I

    move v2, v14

    :goto_5
    iget-object v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v3, v3, Ljava/awt/Rectangle;->width:I

    if-ge v2, v3, :cond_7

    add-int v3, v1, v2

    aget-short v4, v11, v0

    aput-short v4, v10, v3

    add-int/lit8 v2, v2, 0x1

    iget v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleX:I

    add-int/2addr v0, v3

    goto :goto_5

    :cond_7
    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_8

    neg-int v0, v15

    goto :goto_6

    :cond_8
    move v0, v15

    :goto_6
    add-int v16, v1, v0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v8}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Ljava/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v4, v0, Ljava/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/16 v17, 0x1

    filled-new-array {v14}, [I

    move-result-object v18

    move-object/from16 v0, p0

    move v3, v7

    move v14, v7

    move/from16 v7, v17

    move/from16 v17, v8

    move-object/from16 v8, v18

    invoke-virtual/range {v0 .. v8}, Ljavax/imageio/ImageReader;->processImageUpdate(Ljava/awt/image/BufferedImage;IIIIII[I)V

    int-to-float v0, v14

    mul-float/2addr v0, v13

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v9, v0}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_7

    :cond_9
    add-int/lit8 v7, v14, 0x1

    move/from16 v1, v16

    move/from16 v8, v17

    const/4 v14, 0x0

    goto :goto_4

    :cond_a
    :goto_7
    return-void
.end method

.method private read1Bit([B)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    add-int/lit8 v0, v0, 0x7

    div-int/lit8 v11, v0, 0x8

    rem-int/lit8 v0, v11, 0x4

    if-eqz v0, :cond_0

    rsub-int/lit8 v0, v0, 0x4

    :cond_0
    move v12, v0

    add-int v13, v11, v12

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->noTransform:Z

    const/high16 v14, 0x42c80000    # 100.0f

    const/4 v15, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_1

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v11

    goto :goto_0

    :cond_1
    move v0, v15

    :goto_0
    move v13, v15

    :goto_1
    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    if-ge v13, v1, :cond_b

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1, v10, v0, v11}, Ljavax/imageio/stream/ImageInputStream;->readFully([BII)V

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1, v12}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v1, :cond_2

    neg-int v1, v11

    goto :goto_2

    :cond_2
    move v1, v11

    :goto_2
    add-int v16, v0, v1

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Ljava/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v4, v0, Ljava/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    filled-new-array {v15}, [I

    move-result-object v8

    move-object/from16 v0, p0

    move v3, v13

    invoke-virtual/range {v0 .. v8}, Ljavax/imageio/ImageReader;->processImageUpdate(Ljava/awt/image/BufferedImage;IIIIII[I)V

    int-to-float v0, v13

    mul-float/2addr v0, v14

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v9, v0}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_8

    :cond_3
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v16

    goto :goto_1

    :cond_4
    new-array v11, v13, [B

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Ljava/awt/image/SampleModel;

    check-cast v0, Ljava/awt/image/MultiPixelPackedSampleModel;

    invoke-virtual {v0}, Ljava/awt/image/MultiPixelPackedSampleModel;->getScanlineStride()I

    move-result v12

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_5

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->y:I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    add-int/lit8 v1, v1, -0x1

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    mul-int/2addr v2, v13

    invoke-interface {v1, v2}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    goto :goto_3

    :cond_5
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->y:I

    mul-int/2addr v1, v13

    invoke-interface {v0, v1}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    :goto_3
    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    add-int/lit8 v0, v0, -0x1

    mul-int v8, v13, v0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v0, Ljava/awt/Rectangle;->width:I

    new-array v7, v1, [I

    new-array v6, v1, [I

    new-array v5, v1, [I

    new-array v4, v1, [I

    iget v0, v0, Ljava/awt/Rectangle;->x:I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->x:I

    move v2, v15

    :goto_4
    iget-object v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v14, v3, Ljava/awt/Rectangle;->x:I

    iget v15, v3, Ljava/awt/Rectangle;->width:I

    add-int/2addr v14, v15

    if-ge v0, v14, :cond_6

    shr-int/lit8 v3, v1, 0x3

    aput v3, v5, v2

    and-int/lit8 v3, v1, 0x7

    rsub-int/lit8 v3, v3, 0x7

    aput v3, v7, v2

    shr-int/lit8 v3, v0, 0x3

    aput v3, v4, v2

    and-int/lit8 v3, v0, 0x7

    rsub-int/lit8 v3, v3, 0x7

    aput v3, v6, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    iget v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleX:I

    add-int/2addr v1, v3

    const/high16 v14, 0x42c80000    # 100.0f

    const/4 v15, 0x0

    goto :goto_4

    :cond_6
    iget v0, v3, Ljava/awt/Rectangle;->y:I

    mul-int/2addr v0, v12

    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v1, :cond_7

    iget v1, v3, Ljava/awt/Rectangle;->height:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v12

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->y:I

    const/4 v14, 0x0

    :goto_5
    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    if-ge v14, v1, :cond_b

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    const/4 v2, 0x0

    invoke-interface {v1, v11, v2, v13}, Ljavax/imageio/stream/ImageInputStream;->read([BII)I

    const/4 v2, 0x0

    :goto_6
    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->width:I

    if-ge v2, v1, :cond_8

    aget v1, v5, v2

    aget-byte v1, v11, v1

    aget v3, v7, v2

    shr-int/2addr v1, v3

    and-int/lit8 v1, v1, 0x1

    aget v3, v4, v2

    add-int/2addr v3, v0

    aget-byte v15, v10, v3

    aget v18, v6, v2

    shl-int v1, v1, v18

    or-int/2addr v1, v15

    int-to-byte v1, v1

    aput-byte v1, v10, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v1, :cond_9

    neg-int v1, v12

    goto :goto_7

    :cond_9
    move v1, v12

    :goto_7
    add-int v15, v0, v1

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v8}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Ljava/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v3, v0, Ljava/awt/Rectangle;->width:I

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v17, 0x0

    filled-new-array/range {v17 .. v17}, [I

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v22, v3

    move v3, v14

    move-object/from16 v23, v4

    move/from16 v4, v22

    move-object/from16 v22, v5

    move/from16 v5, v18

    move-object/from16 v18, v6

    move/from16 v6, v19

    move-object/from16 v19, v7

    move/from16 v7, v20

    move/from16 v20, v8

    move-object/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Ljavax/imageio/ImageReader;->processImageUpdate(Ljava/awt/image/BufferedImage;IIIIII[I)V

    int-to-float v0, v14

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iget-object v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v2, v2, Ljava/awt/Rectangle;->height:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {v9, v0}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_8

    :cond_a
    add-int/lit8 v14, v14, 0x1

    move v0, v15

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move/from16 v8, v20

    move-object/from16 v5, v22

    move-object/from16 v4, v23

    goto/16 :goto_5

    :cond_b
    :goto_8
    return-void
.end method

.method private read24Bit([B)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    mul-int/lit8 v1, v0, 0x3

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_0

    rsub-int/lit8 v1, v1, 0x4

    :cond_0
    move v11, v1

    mul-int/lit8 v12, v0, 0x3

    add-int v13, v12, v11

    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->noTransform:Z

    const/high16 v14, 0x42c80000    # 100.0f

    const/4 v15, 0x0

    if-eqz v1, :cond_4

    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v1, :cond_1

    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x3

    goto :goto_0

    :cond_1
    move v1, v15

    :goto_0
    move v13, v15

    :goto_1
    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    if-ge v13, v0, :cond_b

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v10, v1, v12}, Ljavax/imageio/stream/ImageInputStream;->readFully([BII)V

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v11}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_2

    neg-int v0, v12

    goto :goto_2

    :cond_2
    move v0, v12

    :goto_2
    add-int v16, v1, v0

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Ljava/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v4, v0, Ljava/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    filled-new-array {v15}, [I

    move-result-object v8

    move-object/from16 v0, p0

    move v3, v13

    invoke-virtual/range {v0 .. v8}, Ljavax/imageio/ImageReader;->processImageUpdate(Ljava/awt/image/BufferedImage;IIIIII[I)V

    int-to-float v0, v13

    mul-float/2addr v0, v14

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v9, v0}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_8

    :cond_3
    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v16

    goto :goto_1

    :cond_4
    new-array v11, v13, [B

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Ljava/awt/image/SampleModel;

    check-cast v0, Ljava/awt/image/ComponentSampleModel;

    invoke-virtual {v0}, Ljava/awt/image/ComponentSampleModel;->getScanlineStride()I

    move-result v12

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_5

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->y:I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    add-int/lit8 v1, v1, -0x1

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    mul-int/2addr v2, v13

    invoke-interface {v1, v2}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    goto :goto_3

    :cond_5
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->y:I

    mul-int/2addr v1, v13

    invoke-interface {v0, v1}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    :goto_3
    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    add-int/lit8 v0, v0, -0x1

    mul-int v8, v13, v0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v0, Ljava/awt/Rectangle;->y:I

    mul-int/2addr v1, v12

    iget-boolean v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v2, :cond_6

    iget v2, v0, Ljava/awt/Rectangle;->height:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, v12

    add-int/2addr v1, v2

    :cond_6
    iget v0, v0, Ljava/awt/Rectangle;->x:I

    mul-int/lit8 v0, v0, 0x3

    add-int/2addr v1, v0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->y:I

    move v7, v15

    :goto_4
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->height:I

    if-ge v7, v0, :cond_b

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v11, v15, v13}, Ljavax/imageio/stream/ImageInputStream;->read([BII)I

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->x:I

    mul-int/lit8 v0, v0, 0x3

    move v2, v15

    :goto_5
    iget-object v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v3, v3, Ljava/awt/Rectangle;->width:I

    if-ge v2, v3, :cond_8

    mul-int/lit8 v3, v2, 0x3

    add-int/2addr v3, v1

    move v4, v15

    :goto_6
    iget-object v5, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destBands:[I

    array-length v6, v5

    if-ge v4, v6, :cond_7

    aget v5, v5, v4

    add-int/2addr v5, v3

    iget-object v6, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceBands:[I

    aget v6, v6, v4

    add-int/2addr v6, v0

    aget-byte v6, v11, v6

    aput-byte v6, v10, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_7
    add-int/lit8 v2, v2, 0x1

    iget v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleX:I

    mul-int/lit8 v3, v3, 0x3

    add-int/2addr v0, v3

    goto :goto_5

    :cond_8
    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_9

    neg-int v0, v12

    goto :goto_7

    :cond_9
    move v0, v12

    :goto_7
    add-int v16, v1, v0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v8}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Ljava/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v4, v0, Ljava/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/16 v17, 0x1

    filled-new-array {v15}, [I

    move-result-object v18

    move-object/from16 v0, p0

    move v3, v7

    move v15, v7

    move/from16 v7, v17

    move/from16 v17, v8

    move-object/from16 v8, v18

    invoke-virtual/range {v0 .. v8}, Ljavax/imageio/ImageReader;->processImageUpdate(Ljava/awt/image/BufferedImage;IIIIII[I)V

    int-to-float v0, v15

    mul-float/2addr v0, v14

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v9, v0}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_8

    :cond_a
    add-int/lit8 v7, v15, 0x1

    move/from16 v1, v16

    move/from16 v8, v17

    const/4 v15, 0x0

    goto :goto_4

    :cond_b
    :goto_8
    return-void
.end method

.method private read32Bit([I)V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->noTransform:Z

    const/high16 v11, 0x42c80000    # 100.0f

    const/4 v12, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_0

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    add-int/lit8 v0, v0, -0x1

    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    mul-int/2addr v0, v1

    goto :goto_0

    :cond_0
    move v0, v12

    :goto_0
    move v13, v12

    :goto_1
    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    if-ge v13, v1, :cond_9

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    invoke-interface {v1, v10, v0, v2}, Ljavax/imageio/stream/ImageInputStream;->readFully([III)V

    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v1, :cond_1

    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    neg-int v1, v1

    goto :goto_2

    :cond_1
    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    :goto_2
    add-int v14, v0, v1

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Ljava/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v4, v0, Ljava/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    filled-new-array {v12}, [I

    move-result-object v8

    move-object/from16 v0, p0

    move v3, v13

    invoke-virtual/range {v0 .. v8}, Ljavax/imageio/ImageReader;->processImageUpdate(Ljava/awt/image/BufferedImage;IIIIII[I)V

    int-to-float v0, v13

    mul-float/2addr v0, v11

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v9, v0}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_7

    :cond_2
    add-int/lit8 v13, v13, 0x1

    move v0, v14

    goto :goto_1

    :cond_3
    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    new-array v13, v0, [I

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Ljava/awt/image/SampleModel;

    check-cast v0, Ljava/awt/image/SinglePixelPackedSampleModel;

    invoke-virtual {v0}, Ljava/awt/image/SinglePixelPackedSampleModel;->getScanlineStride()I

    move-result v14

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_4

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->y:I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    add-int/lit8 v1, v1, -0x1

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iget v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v0

    mul-int/2addr v2, v3

    shl-int/lit8 v0, v2, 0x2

    invoke-interface {v1, v0}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    goto :goto_3

    :cond_4
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iget-object v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v2, v2, Ljava/awt/Rectangle;->y:I

    mul-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x2

    invoke-interface {v0, v1}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    :goto_3
    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v0, v1

    shl-int/lit8 v15, v0, 0x2

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v0, Ljava/awt/Rectangle;->y:I

    mul-int/2addr v1, v14

    iget-boolean v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v2, :cond_5

    iget v2, v0, Ljava/awt/Rectangle;->height:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, v14

    add-int/2addr v1, v2

    :cond_5
    iget v0, v0, Ljava/awt/Rectangle;->x:I

    add-int/2addr v1, v0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->y:I

    move v8, v12

    :goto_4
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->height:I

    if-ge v8, v0, :cond_9

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    invoke-interface {v0, v13, v12, v2}, Ljavax/imageio/stream/ImageInputStream;->readFully([III)V

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->x:I

    move v2, v12

    :goto_5
    iget-object v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v3, v3, Ljava/awt/Rectangle;->width:I

    if-ge v2, v3, :cond_6

    add-int v3, v1, v2

    aget v4, v13, v0

    aput v4, v10, v3

    add-int/lit8 v2, v2, 0x1

    iget v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleX:I

    add-int/2addr v0, v3

    goto :goto_5

    :cond_6
    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_7

    neg-int v0, v14

    goto :goto_6

    :cond_7
    move v0, v14

    :goto_6
    add-int v16, v1, v0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v15}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Ljava/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v4, v0, Ljava/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    filled-new-array {v12}, [I

    move-result-object v17

    move-object/from16 v0, p0

    move v3, v8

    move v12, v8

    move-object/from16 v8, v17

    invoke-virtual/range {v0 .. v8}, Ljavax/imageio/ImageReader;->processImageUpdate(Ljava/awt/image/BufferedImage;IIIIII[I)V

    int-to-float v0, v12

    mul-float/2addr v0, v11

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v9, v0}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_8

    goto :goto_7

    :cond_8
    add-int/lit8 v8, v12, 0x1

    move/from16 v1, v16

    const/4 v12, 0x0

    goto :goto_4

    :cond_9
    :goto_7
    return-void
.end method

.method private read4Bit([B)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v11, v0, 0x2

    rem-int/lit8 v0, v11, 0x4

    if-eqz v0, :cond_0

    rsub-int/lit8 v0, v0, 0x4

    :cond_0
    move v12, v0

    add-int v13, v11, v12

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->noTransform:Z

    const/high16 v14, 0x42c80000    # 100.0f

    const/4 v15, 0x0

    if-eqz v0, :cond_4

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_1

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    add-int/lit8 v0, v0, -0x1

    mul-int/2addr v0, v11

    goto :goto_0

    :cond_1
    move v0, v15

    :goto_0
    move v13, v15

    :goto_1
    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    if-ge v13, v1, :cond_b

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1, v10, v0, v11}, Ljavax/imageio/stream/ImageInputStream;->readFully([BII)V

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1, v12}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v1, :cond_2

    neg-int v1, v11

    goto :goto_2

    :cond_2
    move v1, v11

    :goto_2
    add-int v16, v0, v1

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Ljava/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v4, v0, Ljava/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    filled-new-array {v15}, [I

    move-result-object v8

    move-object/from16 v0, p0

    move v3, v13

    invoke-virtual/range {v0 .. v8}, Ljavax/imageio/ImageReader;->processImageUpdate(Ljava/awt/image/BufferedImage;IIIIII[I)V

    int-to-float v0, v13

    mul-float/2addr v0, v14

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v9, v0}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_8

    :cond_3
    add-int/lit8 v13, v13, 0x1

    move/from16 v0, v16

    goto :goto_1

    :cond_4
    new-array v11, v13, [B

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Ljava/awt/image/SampleModel;

    check-cast v0, Ljava/awt/image/MultiPixelPackedSampleModel;

    invoke-virtual {v0}, Ljava/awt/image/MultiPixelPackedSampleModel;->getScanlineStride()I

    move-result v12

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_5

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->y:I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    add-int/lit8 v1, v1, -0x1

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    mul-int/2addr v2, v13

    invoke-interface {v1, v2}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    goto :goto_3

    :cond_5
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->y:I

    mul-int/2addr v1, v13

    invoke-interface {v0, v1}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    :goto_3
    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    add-int/lit8 v0, v0, -0x1

    mul-int v8, v13, v0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v0, Ljava/awt/Rectangle;->width:I

    new-array v7, v1, [I

    new-array v6, v1, [I

    new-array v5, v1, [I

    new-array v4, v1, [I

    iget v0, v0, Ljava/awt/Rectangle;->x:I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->x:I

    move v2, v15

    :goto_4
    iget-object v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v14, v3, Ljava/awt/Rectangle;->x:I

    iget v15, v3, Ljava/awt/Rectangle;->width:I

    add-int/2addr v14, v15

    if-ge v0, v14, :cond_6

    shr-int/lit8 v3, v1, 0x1

    aput v3, v5, v2

    and-int/lit8 v3, v1, 0x1

    rsub-int/lit8 v3, v3, 0x1

    shl-int/lit8 v3, v3, 0x2

    aput v3, v7, v2

    shr-int/lit8 v3, v0, 0x1

    aput v3, v4, v2

    and-int/lit8 v3, v0, 0x1

    rsub-int/lit8 v3, v3, 0x1

    shl-int/lit8 v3, v3, 0x2

    aput v3, v6, v2

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    iget v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleX:I

    add-int/2addr v1, v3

    const/high16 v14, 0x42c80000    # 100.0f

    const/4 v15, 0x0

    goto :goto_4

    :cond_6
    iget v0, v3, Ljava/awt/Rectangle;->y:I

    mul-int/2addr v0, v12

    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v1, :cond_7

    iget v1, v3, Ljava/awt/Rectangle;->height:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v12

    add-int/2addr v0, v1

    :cond_7
    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->y:I

    const/4 v14, 0x0

    :goto_5
    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    if-ge v14, v1, :cond_b

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    const/4 v2, 0x0

    invoke-interface {v1, v11, v2, v13}, Ljavax/imageio/stream/ImageInputStream;->read([BII)I

    const/4 v2, 0x0

    :goto_6
    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->width:I

    if-ge v2, v1, :cond_8

    aget v1, v5, v2

    aget-byte v1, v11, v1

    aget v3, v7, v2

    shr-int/2addr v1, v3

    and-int/lit8 v1, v1, 0xf

    aget v3, v4, v2

    add-int/2addr v3, v0

    aget-byte v15, v10, v3

    aget v18, v6, v2

    shl-int v1, v1, v18

    or-int/2addr v1, v15

    int-to-byte v1, v1

    aput-byte v1, v10, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_8
    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v1, :cond_9

    neg-int v1, v12

    goto :goto_7

    :cond_9
    move v1, v12

    :goto_7
    add-int v15, v0, v1

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v8}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Ljava/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v3, v0, Ljava/awt/Rectangle;->width:I

    const/16 v18, 0x1

    const/16 v19, 0x1

    const/16 v20, 0x1

    const/16 v17, 0x0

    filled-new-array/range {v17 .. v17}, [I

    move-result-object v21

    move-object/from16 v0, p0

    move/from16 v22, v3

    move v3, v14

    move-object/from16 v23, v4

    move/from16 v4, v22

    move-object/from16 v22, v5

    move/from16 v5, v18

    move-object/from16 v18, v6

    move/from16 v6, v19

    move-object/from16 v19, v7

    move/from16 v7, v20

    move/from16 v20, v8

    move-object/from16 v8, v21

    invoke-virtual/range {v0 .. v8}, Ljavax/imageio/ImageReader;->processImageUpdate(Ljava/awt/image/BufferedImage;IIIIII[I)V

    int-to-float v0, v14

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    iget-object v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v2, v2, Ljava/awt/Rectangle;->height:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {v9, v0}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_a

    goto :goto_8

    :cond_a
    add-int/lit8 v14, v14, 0x1

    move v0, v15

    move-object/from16 v6, v18

    move-object/from16 v7, v19

    move/from16 v8, v20

    move-object/from16 v5, v22

    move-object/from16 v4, v23

    goto/16 :goto_5

    :cond_b
    :goto_8
    return-void
.end method

.method private read8Bit([B)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    rem-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_0

    rsub-int/lit8 v1, v1, 0x4

    :cond_0
    move v11, v1

    add-int v12, v0, v11

    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->noTransform:Z

    const/high16 v13, 0x42c80000    # 100.0f

    const/4 v14, 0x0

    if-eqz v1, :cond_4

    iget-boolean v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v1, :cond_1

    iget v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    add-int/lit8 v1, v1, -0x1

    mul-int/2addr v1, v0

    goto :goto_0

    :cond_1
    move v1, v14

    :goto_0
    move v12, v14

    :goto_1
    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    if-ge v12, v0, :cond_a

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    invoke-interface {v0, v10, v1, v2}, Ljavax/imageio/stream/ImageInputStream;->readFully([BII)V

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v11}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_2

    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    neg-int v0, v0

    goto :goto_2

    :cond_2
    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    :goto_2
    add-int v15, v1, v0

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Ljava/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v4, v0, Ljava/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    filled-new-array {v14}, [I

    move-result-object v8

    move-object/from16 v0, p0

    move v3, v12

    invoke-virtual/range {v0 .. v8}, Ljavax/imageio/ImageReader;->processImageUpdate(Ljava/awt/image/BufferedImage;IIIIII[I)V

    int-to-float v0, v12

    mul-float/2addr v0, v13

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v9, v0}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_7

    :cond_3
    add-int/lit8 v12, v12, 0x1

    move v1, v15

    goto :goto_1

    :cond_4
    new-array v11, v12, [B

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Ljava/awt/image/SampleModel;

    check-cast v0, Ljava/awt/image/ComponentSampleModel;

    invoke-virtual {v0}, Ljava/awt/image/ComponentSampleModel;->getScanlineStride()I

    move-result v15

    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_5

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->y:I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    add-int/lit8 v1, v1, -0x1

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    iget v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v2, v0

    mul-int/2addr v2, v12

    invoke-interface {v1, v2}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    goto :goto_3

    :cond_5
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->y:I

    mul-int/2addr v1, v12

    invoke-interface {v0, v1}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    :goto_3
    iget v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    add-int/lit8 v0, v0, -0x1

    mul-int v8, v12, v0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v0, Ljava/awt/Rectangle;->y:I

    mul-int/2addr v1, v15

    iget-boolean v2, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v2, :cond_6

    iget v2, v0, Ljava/awt/Rectangle;->height:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v2, v15

    add-int/2addr v1, v2

    :cond_6
    iget v0, v0, Ljava/awt/Rectangle;->x:I

    add-int/2addr v1, v0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->y:I

    move v7, v14

    :goto_4
    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->height:I

    if-ge v7, v0, :cond_a

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v11, v14, v12}, Ljavax/imageio/stream/ImageInputStream;->read([BII)I

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->x:I

    move v2, v14

    :goto_5
    iget-object v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v3, v3, Ljava/awt/Rectangle;->width:I

    if-ge v2, v3, :cond_7

    add-int v3, v1, v2

    aget-byte v4, v11, v0

    aput-byte v4, v10, v3

    add-int/lit8 v2, v2, 0x1

    iget v3, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleX:I

    add-int/2addr v0, v3

    goto :goto_5

    :cond_7
    iget-boolean v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    if-eqz v0, :cond_8

    neg-int v0, v15

    goto :goto_6

    :cond_8
    move v0, v15

    :goto_6
    add-int v16, v1, v0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v8}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Ljava/awt/image/BufferedImage;

    const/4 v2, 0x0

    iget-object v0, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v4, v0, Ljava/awt/Rectangle;->width:I

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/16 v17, 0x1

    filled-new-array {v14}, [I

    move-result-object v18

    move-object/from16 v0, p0

    move v3, v7

    move v14, v7

    move/from16 v7, v17

    move/from16 v17, v8

    move-object/from16 v8, v18

    invoke-virtual/range {v0 .. v8}, Ljavax/imageio/ImageReader;->processImageUpdate(Ljava/awt/image/BufferedImage;IIIIII[I)V

    int-to-float v0, v14

    mul-float/2addr v0, v13

    iget-object v1, v9, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {v9, v0}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_7

    :cond_9
    add-int/lit8 v7, v14, 0x1

    move/from16 v1, v16

    move/from16 v8, v17

    const/4 v14, 0x0

    goto :goto_4

    :cond_a
    :goto_7
    return-void
.end method

.method private readEmbedded(ILjava/awt/image/BufferedImage;Ljavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    const-string p1, "PNG"

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unexpected compression type: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-string p1, "JPEG"

    :goto_0
    invoke-static {p1}, Ljavax/imageio/ImageIO;->getImageReadersByFormatName(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/imageio/ImageReader;

    if-eqz v0, :cond_3

    iget-wide v1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageSize:J

    long-to-int p1, v1

    new-array p1, p1, [B

    iget-object v1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1, p1}, Ljavax/imageio/stream/ImageInputStream;->read([B)I

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v1}, Ljavax/imageio/ImageIO;->createImageInputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageInputStream;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;)V

    const/4 p1, 0x0

    if-nez p2, :cond_2

    invoke-virtual {v0, p1}, Ljavax/imageio/ImageReader;->getImageTypes(I)Ljava/util/Iterator;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljavax/imageio/ImageTypeSpecifier;

    iget-object v1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v2, v1, Ljava/awt/Rectangle;->x:I

    iget v3, v1, Ljava/awt/Rectangle;->width:I

    add-int/2addr v2, v3

    iget v3, v1, Ljava/awt/Rectangle;->y:I

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    add-int/2addr v3, v1

    invoke-virtual {p2, v2, v3}, Ljavax/imageio/ImageTypeSpecifier;->createBufferedImage(II)Ljava/awt/image/BufferedImage;

    move-result-object p2

    :cond_2
    new-instance v1, Lcom/sun/imageio/plugins/bmp/BMPImageReader$1;

    invoke-direct {v1, p0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader$1;-><init>(Lcom/sun/imageio/plugins/bmp/BMPImageReader;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/ImageReader;->addIIOReadProgressListener(Ljavax/imageio/event/IIOReadProgressListener;)V

    new-instance v1, Lcom/sun/imageio/plugins/bmp/BMPImageReader$2;

    invoke-direct {v1, p0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader$2;-><init>(Lcom/sun/imageio/plugins/bmp/BMPImageReader;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/ImageReader;->addIIOReadUpdateListener(Ljavax/imageio/event/IIOReadUpdateListener;)V

    new-instance v1, Lcom/sun/imageio/plugins/bmp/BMPImageReader$3;

    invoke-direct {v1, p0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader$3;-><init>(Lcom/sun/imageio/plugins/bmp/BMPImageReader;)V

    invoke-virtual {v0, v1}, Ljavax/imageio/ImageReader;->addIIOReadWarningListener(Ljavax/imageio/event/IIOReadWarningListener;)V

    invoke-virtual {v0}, Ljavax/imageio/ImageReader;->getDefaultReadParam()Ljavax/imageio/ImageReadParam;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljavax/imageio/ImageReadParam;->setDestination(Ljava/awt/image/BufferedImage;)V

    invoke-virtual {p3}, Ljavax/imageio/ImageReadParam;->getDestinationBands()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/imageio/ImageReadParam;->setDestinationBands([I)V

    invoke-virtual {p3}, Ljavax/imageio/IIOParam;->getDestinationOffset()Ljava/awt/Point;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/imageio/IIOParam;->setDestinationOffset(Ljava/awt/Point;)V

    invoke-virtual {p3}, Ljavax/imageio/IIOParam;->getSourceBands()[I

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/imageio/IIOParam;->setSourceBands([I)V

    invoke-virtual {p3}, Ljavax/imageio/IIOParam;->getSourceRegion()Ljava/awt/Rectangle;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljavax/imageio/IIOParam;->setSourceRegion(Ljava/awt/Rectangle;)V

    invoke-virtual {p3}, Ljavax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result v1

    invoke-virtual {p3}, Ljavax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result v2

    invoke-virtual {p3}, Ljavax/imageio/IIOParam;->getSubsamplingXOffset()I

    move-result v3

    invoke-virtual {p3}, Ljavax/imageio/IIOParam;->getSubsamplingYOffset()I

    move-result p3

    invoke-virtual {p0, v1, v2, v3, p3}, Ljavax/imageio/IIOParam;->setSourceSubsampling(IIII)V

    invoke-virtual {v0, p1, p0}, Ljavax/imageio/ImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    return-object p2

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "BMPImageReader4"

    invoke-static {p3}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readRLE4([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageSize:J

    long-to-int v0, v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitmapFileSize:J

    iget-wide v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitmapOffset:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    :cond_0
    iget v1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    rem-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    rsub-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    new-array v3, v0, [B

    iget-object v4, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v4, v3, v2, v0}, Ljavax/imageio/stream/ImageInputStream;->readFully([BII)V

    invoke-direct {p0, v0, v1, v3, p1}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->decodeRLE4(II[B[B)V

    return-void
.end method

.method private readRLE8([B)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageSize:J

    long-to-int v0, v0

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitmapFileSize:J

    iget-wide v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitmapOffset:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    :cond_0
    iget v1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    rem-int/lit8 v1, v1, 0x4

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    rsub-int/lit8 v1, v1, 0x4

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    new-array v3, v0, [B

    iget-object v4, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v4, v3, v2, v0}, Ljavax/imageio/stream/ImageInputStream;->readFully([BII)V

    invoke-direct {p0, v0, v1, v3, p1}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->decodeRLE8(II[B[B)V

    return-void
.end method

.method private resetHeaderInfo()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->gotHeader:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Ljava/awt/image/BufferedImage;

    iput-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->originalSampleModel:Ljava/awt/image/SampleModel;

    iput-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Ljava/awt/image/SampleModel;

    iput-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->originalColorModel:Ljava/awt/image/ColorModel;

    iput-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->colorModel:Ljava/awt/image/ColorModel;

    return-void
.end method


# virtual methods
.method public canReadRaster()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDefaultReadParam()Ljavax/imageio/ImageReadParam;
    .locals 0

    new-instance p0, Ljavax/imageio/ImageReadParam;

    invoke-direct {p0}, Ljavax/imageio/ImageReadParam;-><init>()V

    return-object p0
.end method

.method public getHeight(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->checkIndex(I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->readHeader()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget p0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/imageio/IIOException;

    const-string v0, "BMPImageReader6"

    invoke-static {v0}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getImageMetadata(I)Ljavax/imageio/metadata/IIOMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->checkIndex(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    if-nez p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->readHeader()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/imageio/IIOException;

    const-string v0, "BMPImageReader6"

    invoke-static {v0}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    return-object p0
.end method

.method public getImageTypes(I)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Iterator<",
            "Ljavax/imageio/ImageTypeSpecifier;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->checkIndex(I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->readHeader()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance v0, Ljavax/imageio/ImageTypeSpecifier;

    iget-object v1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->originalColorModel:Ljava/awt/image/ColorModel;

    iget-object p0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->originalSampleModel:Ljava/awt/image/SampleModel;

    invoke-direct {v0, v1, p0}, Ljavax/imageio/ImageTypeSpecifier;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/SampleModel;)V

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/imageio/IIOException;

    const-string v0, "BMPImageReader6"

    invoke-static {v0}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getNumImages(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Ljavax/imageio/ImageReader;->seekForwardOnly:Z

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "GetNumImages1"

    invoke-static {p1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "GetNumImages0"

    invoke-static {p1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStreamMetadata()Ljavax/imageio/metadata/IIOMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getWidth(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->checkIndex(I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->readHeader()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget p0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/imageio/IIOException;

    const-string v0, "BMPImageReader6"

    invoke-static {v0}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public isRandomAccessEasy(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->checkIndex(I)V

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->readHeader()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    iget p0, p0, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->compression:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/imageio/IIOException;

    const-string v0, "BMPImageReader6"

    invoke-static {v0}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_15

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->checkIndex(I)V

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->clearAbortRequest()V

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->processImageStarted(I)V

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->processReadAborted()V

    iget-object p0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Ljava/awt/image/BufferedImage;

    return-object p0

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->getDefaultReadParam()Ljavax/imageio/ImageReadParam;

    move-result-object p2

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->readHeader()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p1, Ljava/awt/Rectangle;

    const/4 v6, 0x0

    invoke-direct {p1, v6, v6, v6, v6}, Ljava/awt/Rectangle;-><init>(IIII)V

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    new-instance p1, Ljava/awt/Rectangle;

    invoke-direct {p1, v6, v6, v6, v6}, Ljava/awt/Rectangle;-><init>(IIII)V

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iget v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    invoke-virtual {p2}, Ljavax/imageio/ImageReadParam;->getDestination()Ljava/awt/image/BufferedImage;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget-object v5, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    move-object v0, p2

    invoke-static/range {v0 .. v5}, Ljavax/imageio/ImageReader;->computeRegions(Ljavax/imageio/ImageReadParam;IILjava/awt/image/BufferedImage;Ljava/awt/Rectangle;Ljava/awt/Rectangle;)V

    invoke-virtual {p2}, Ljavax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result p1

    iput p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleX:I

    invoke-virtual {p2}, Ljavax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result p1

    iput p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->scaleY:I

    invoke-virtual {p2}, Ljavax/imageio/IIOParam;->getSourceBands()[I

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceBands:[I

    invoke-virtual {p2}, Ljavax/imageio/ImageReadParam;->getDestinationBands()[I

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destBands:[I

    iget-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceBands:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    move p1, v6

    :goto_0
    iput-boolean p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->seleBand:Z

    iget-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    new-instance v0, Ljava/awt/Rectangle;

    iget v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iget v3, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    invoke-direct {v0, v6, v6, v2, v3}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p1, v0}, Ljava/awt/Rectangle;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->seleBand:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    move p1, v6

    goto :goto_2

    :cond_4
    :goto_1
    move p1, v1

    :goto_2
    iput-boolean p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->noTransform:Z

    iget-boolean p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->seleBand:Z

    if-nez p1, :cond_5

    iget p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->numBands:I

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceBands:[I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destBands:[I

    move p1, v6

    :goto_3
    iget v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->numBands:I

    if-ge p1, v0, :cond_5

    iget-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destBands:[I

    iget-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceBands:[I

    aput p1, v2, p1

    aput p1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_5
    invoke-virtual {p2}, Ljavax/imageio/ImageReadParam;->getDestination()Ljava/awt/image/BufferedImage;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Ljava/awt/image/BufferedImage;

    const/4 v0, 0x0

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Ljava/awt/image/SampleModel;

    if-eqz p1, :cond_7

    iget-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->colorModel:Ljava/awt/image/ColorModel;

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v3, v2, Ljava/awt/Rectangle;->x:I

    iget v4, v2, Ljava/awt/Rectangle;->width:I

    add-int/2addr v3, v4

    iget v4, v2, Ljava/awt/Rectangle;->y:I

    iget v2, v2, Ljava/awt/Rectangle;->height:I

    add-int/2addr v4, v2

    invoke-virtual {p1, v3, v4}, Ljava/awt/image/SampleModel;->createCompatibleSampleModel(II)Ljava/awt/image/SampleModel;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Ljava/awt/image/SampleModel;

    iget-boolean v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->seleBand:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sourceBands:[I

    invoke-virtual {p1, v2}, Ljava/awt/image/SampleModel;->createSubsetSampleModel([I)Ljava/awt/image/SampleModel;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Ljava/awt/image/SampleModel;

    :cond_6
    iget-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Ljava/awt/image/SampleModel;

    new-instance v2, Ljava/awt/Point;

    invoke-direct {v2}, Ljava/awt/Point;-><init>()V

    invoke-static {p1, v2}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object p1

    new-instance v2, Ljava/awt/image/BufferedImage;

    iget-object v3, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->colorModel:Ljava/awt/image/ColorModel;

    invoke-direct {v2, v3, p1, v6, v0}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    iput-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Ljava/awt/image/BufferedImage;

    goto :goto_4

    :cond_7
    move-object p1, v0

    goto :goto_4

    :cond_8
    invoke-virtual {p1, v6, v6}, Ljava/awt/image/BufferedImage;->getWritableTile(II)Ljava/awt/image/WritableRaster;

    move-result-object p1

    iget-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Ljava/awt/image/SampleModel;

    iget-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->colorModel:Ljava/awt/image/ColorModel;

    iget-boolean v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->noTransform:Z

    iget-object v3, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->destinationRegion:Ljava/awt/Rectangle;

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getBounds()Ljava/awt/Rectangle;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/awt/Rectangle;->equals(Ljava/lang/Object;)Z

    move-result v3

    and-int/2addr v2, v3

    iput-boolean v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->noTransform:Z

    :goto_4
    iget-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Ljava/awt/image/SampleModel;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/awt/image/SampleModel;->getDataType()I

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object p1

    check-cast p1, Ljava/awt/image/DataBufferByte;

    invoke-virtual {p1}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object p1

    move-object v2, v0

    move-object v0, p1

    move-object p1, v2

    goto :goto_5

    :cond_9
    iget-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Ljava/awt/image/SampleModel;

    invoke-virtual {v2}, Ljava/awt/image/SampleModel;->getDataType()I

    move-result v2

    if-ne v2, v1, :cond_a

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object p1

    check-cast p1, Ljava/awt/image/DataBufferUShort;

    invoke-virtual {p1}, Ljava/awt/image/DataBufferUShort;->getData()[S

    move-result-object p1

    move-object v2, v0

    goto :goto_5

    :cond_a
    iget-object v2, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Ljava/awt/image/SampleModel;

    invoke-virtual {v2}, Ljava/awt/image/SampleModel;->getDataType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_b

    invoke-virtual {p1}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object p1

    check-cast p1, Ljava/awt/image/DataBufferInt;

    invoke-virtual {p1}, Ljava/awt/image/DataBufferInt;->getData()[I

    move-result-object p1

    move-object v2, p1

    move-object p1, v0

    goto :goto_5

    :cond_b
    move-object p1, v0

    move-object v2, p1

    :goto_5
    iget-object v3, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    iget-wide v4, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitmapStart:J

    invoke-interface {v3, v4, v5}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget v3, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    const/4 v4, 0x2

    const-string v5, "BMPImageReader1"

    packed-switch v3, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    iget-wide v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->compression:J

    long-to-int p1, v0

    iget-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Ljava/awt/image/BufferedImage;

    invoke-direct {p0, p1, v0, p2}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->readEmbedded(ILjava/awt/image/BufferedImage;Ljavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Ljava/awt/image/BufferedImage;

    goto/16 :goto_6

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->read32Bit([I)V

    goto/16 :goto_6

    :pswitch_2
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->read24Bit([B)V

    goto/16 :goto_6

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->read16Bit([S)V

    goto/16 :goto_6

    :pswitch_4
    iget-wide p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->compression:J

    long-to-int p1, p1

    if-eqz p1, :cond_d

    if-ne p1, v1, :cond_c

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->readRLE8([B)V

    goto/16 :goto_6

    :cond_c
    new-instance p0, Ljavax/imageio/IIOException;

    invoke-static {v5}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_d
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->read8Bit([B)V

    goto/16 :goto_6

    :pswitch_5
    iget-wide p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->compression:J

    long-to-int p1, p1

    if-eqz p1, :cond_f

    if-ne p1, v4, :cond_e

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->readRLE4([B)V

    goto/16 :goto_6

    :cond_e
    new-instance p0, Ljavax/imageio/IIOException;

    invoke-static {v5}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->read4Bit([B)V

    goto :goto_6

    :pswitch_6
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->read1Bit([B)V

    goto :goto_6

    :pswitch_7
    invoke-direct {p0, v2}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->read32Bit([I)V

    goto :goto_6

    :pswitch_8
    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->read16Bit([S)V

    goto :goto_6

    :pswitch_9
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->read24Bit([B)V

    goto :goto_6

    :pswitch_a
    iget-wide p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->compression:J

    long-to-int p1, p1

    if-eqz p1, :cond_11

    if-ne p1, v1, :cond_10

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->readRLE8([B)V

    goto :goto_6

    :cond_10
    new-instance p0, Ljavax/imageio/IIOException;

    invoke-static {v5}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->read8Bit([B)V

    goto :goto_6

    :pswitch_b
    iget-wide p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->compression:J

    long-to-int p1, p1

    if-eqz p1, :cond_13

    if-ne p1, v4, :cond_12

    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->readRLE4([B)V

    goto :goto_6

    :cond_12
    new-instance p0, Ljavax/imageio/IIOException;

    invoke-static {v5}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->read4Bit([B)V

    goto :goto_6

    :pswitch_c
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->read1Bit([B)V

    goto :goto_6

    :pswitch_d
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->read24Bit([B)V

    goto :goto_6

    :pswitch_e
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->read8Bit([B)V

    goto :goto_6

    :pswitch_f
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->read4Bit([B)V

    goto :goto_6

    :pswitch_10
    invoke-direct {p0, v0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->read1Bit([B)V

    :goto_6
    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result p1

    if-eqz p1, :cond_14

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->processReadAborted()V

    goto :goto_7

    :cond_14
    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->processImageComplete()V

    :goto_7
    iget-object p0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bi:Ljava/awt/image/BufferedImage;

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/imageio/IIOException;

    const-string p2, "BMPImageReader6"

    invoke-static {p2}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "BMPImageReader5"

    invoke-static {p1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public readHeader()V
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->gotHeader:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    if-eqz v1, :cond_49

    new-instance v1, Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    invoke-direct {v1}, Lcom/sun/imageio/plugins/bmp/BMPMetadata;-><init>()V

    iput-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    const/4 v1, 0x2

    new-array v2, v1, [B

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3, v2}, Ljavax/imageio/stream/ImageInputStream;->read([B)I

    const/4 v3, 0x0

    aget-byte v4, v2, v3

    const/16 v5, 0x42

    if-ne v4, v5, :cond_48

    const/4 v4, 0x1

    aget-byte v2, v2, v4

    const/16 v5, 0x4d

    if-ne v2, v5, :cond_48

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v5

    iput-wide v5, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitmapFileSize:J

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    const/4 v5, 0x4

    invoke-interface {v2, v5}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitmapOffset:J

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v6

    const-wide/16 v8, 0xc

    cmp-long v2, v6, v8

    if-nez v2, :cond_1

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v8}, Ljavax/imageio/stream/ImageInputStream;->readShort()S

    move-result v8

    iput v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v8}, Ljavax/imageio/stream/ImageInputStream;->readShort()S

    move-result v8

    iput v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    goto :goto_0

    :cond_1
    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v8}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result v8

    iput v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v8}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result v8

    iput v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    :goto_0
    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    iget v9, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iput v9, v8, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->width:I

    iget v9, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    iput v9, v8, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->height:I

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v8}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v8}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v8

    iput v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitsPerPixel:I

    iget-object v9, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    int-to-short v10, v8

    iput-short v10, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->bitsPerPixel:S

    const/4 v10, 0x3

    iput v10, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->numBands:I

    const-string v13, "BMPImageReader8"

    const/16 v14, 0x18

    const-wide/16 v16, 0xe

    const/16 v12, 0x8

    if-nez v2, :cond_6

    const-string v2, "BMP v. 2.x"

    iput-object v2, v9, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->bmpVersion:Ljava/lang/String;

    if-ne v8, v4, :cond_2

    iput v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_1

    :cond_2
    if-ne v8, v5, :cond_3

    iput v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_1

    :cond_3
    if-ne v8, v12, :cond_4

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_1

    :cond_4
    if-ne v8, v14, :cond_5

    iput v10, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    :goto_1
    iget-wide v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitmapOffset:J

    sub-long v8, v8, v16

    sub-long/2addr v8, v6

    const-wide/16 v13, 0x3

    div-long/2addr v8, v13

    long-to-int v2, v8

    mul-int/lit8 v8, v2, 0x3

    new-array v9, v8, [B

    iput-object v9, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    iget-object v13, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v13, v9, v3, v8}, Ljavax/imageio/stream/ImageInputStream;->readFully([BII)V

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    iget-object v9, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    iput-object v9, v8, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->palette:[B

    iput v2, v8, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->paletteSize:I

    goto/16 :goto_3

    :cond_5
    new-instance v0, Ljavax/imageio/IIOException;

    invoke-static {v13}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->compression:J

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v8

    iput-wide v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageSize:J

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result v2

    int-to-long v8, v2

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result v2

    int-to-long v14, v2

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    move-object/from16 v18, v13

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v12

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v10

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    iget-wide v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->compression:J

    long-to-int v5, v3

    iput v5, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->compression:I

    long-to-int v5, v8

    iput v5, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->xPixelsPerMeter:I

    long-to-int v5, v14

    iput v5, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->yPixelsPerMeter:I

    long-to-int v5, v12

    iput v5, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->colorsUsed:I

    long-to-int v8, v10

    iput v8, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->colorsImportant:I

    const-wide/16 v8, 0x28

    cmp-long v8, v6, v8

    const/high16 v11, 0xff0000

    const/16 v14, 0x1f

    const/16 v15, 0x3e0

    const/16 v9, 0x7c00

    const/4 v10, 0x5

    if-nez v8, :cond_15

    long-to-int v3, v3

    if-eqz v3, :cond_d

    const/4 v4, 0x1

    if-eq v3, v4, :cond_d

    if-eq v3, v1, :cond_d

    const/4 v4, 0x3

    if-eq v3, v4, :cond_9

    const/4 v4, 0x4

    if-eq v3, v4, :cond_8

    if-ne v3, v10, :cond_7

    goto :goto_2

    :cond_7
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "BMPImageReader2"

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_2
    const-string v3, "BMP v. 3.x"

    iput-object v3, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->bmpVersion:Ljava/lang/String;

    const/16 v2, 0x16

    iput v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    :goto_3
    move-wide/from16 v27, v6

    goto/16 :goto_d

    :cond_9
    iget v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitsPerPixel:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_a

    const/16 v3, 0x8

    iput v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_4

    :cond_a
    const/16 v3, 0x20

    if-ne v2, v3, :cond_c

    const/16 v2, 0x9

    iput v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    :goto_4
    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v2

    long-to-int v2, v2

    iput v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    iget v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    iput v4, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->redMask:I

    iget v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    iput v4, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->greenMask:I

    iput v2, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->blueMask:I

    const-wide/16 v2, 0x0

    cmp-long v2, v12, v2

    if-eqz v2, :cond_b

    mul-int/lit8 v2, v5, 0x4

    new-array v3, v2, [B

    iput-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    iget-object v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    const/4 v8, 0x0

    invoke-interface {v4, v3, v8, v2}, Ljavax/imageio/stream/ImageInputStream;->readFully([BII)V

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    iput-object v3, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->palette:[B

    iput v5, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->paletteSize:I

    :cond_b
    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    const-string v3, "BMP v. 3.x NT"

    iput-object v3, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->bmpVersion:Ljava/lang/String;

    goto :goto_3

    :cond_c
    new-instance v0, Ljavax/imageio/IIOException;

    invoke-static/range {v18 .. v18}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    iget-wide v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitmapOffset:J

    add-long v4, v6, v16

    cmp-long v4, v2, v4

    if-ltz v4, :cond_14

    sub-long v2, v2, v16

    sub-long/2addr v2, v6

    const-wide/16 v4, 0x4

    div-long/2addr v2, v4

    long-to-int v2, v2

    mul-int/lit8 v3, v2, 0x4

    new-array v4, v3, [B

    iput-object v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    iget-object v5, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    const/4 v8, 0x0

    invoke-interface {v5, v4, v8, v3}, Ljavax/imageio/stream/ImageInputStream;->readFully([BII)V

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    iget-object v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    iput-object v4, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->palette:[B

    iput v2, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->paletteSize:I

    iget v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitsPerPixel:I

    const/4 v4, 0x1

    if-ne v2, v4, :cond_e

    const/4 v4, 0x4

    iput v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_5

    :cond_e
    const/4 v4, 0x4

    if-ne v2, v4, :cond_f

    iput v10, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_5

    :cond_f
    const/16 v4, 0x8

    if-ne v2, v4, :cond_10

    const/4 v2, 0x6

    iput v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_5

    :cond_10
    const/16 v5, 0x18

    if-ne v2, v5, :cond_11

    const/4 v2, 0x7

    iput v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_5

    :cond_11
    const/16 v5, 0x10

    if-ne v2, v5, :cond_12

    iput v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    iput v9, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    iput v15, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    iput v14, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    iput v9, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->redMask:I

    iput v15, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->greenMask:I

    iput v14, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->blueMask:I

    goto :goto_5

    :cond_12
    const/16 v4, 0x20

    if-ne v2, v4, :cond_13

    const/16 v2, 0x9

    iput v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    iput v11, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    const v2, 0xff00

    iput v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    const/16 v4, 0xff

    iput v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    iput v11, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->redMask:I

    iput v2, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->greenMask:I

    iput v4, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->blueMask:I

    :goto_5
    const-string v2, "BMP v. 3.x"

    iput-object v2, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->bmpVersion:Ljava/lang/String;

    goto/16 :goto_3

    :cond_13
    new-instance v0, Ljavax/imageio/IIOException;

    invoke-static/range {v18 .. v18}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "BMPImageReader7"

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    const-wide/16 v3, 0x34

    cmp-long v3, v6, v3

    if-eqz v3, :cond_27

    const-wide/16 v3, 0x38

    cmp-long v3, v6, v3

    if-nez v3, :cond_16

    goto/16 :goto_b

    :cond_16
    const-wide/16 v3, 0x6c

    cmp-long v3, v6, v3

    const-wide/16 v4, 0x7c

    if-eqz v3, :cond_18

    cmp-long v8, v6, v4

    if-nez v8, :cond_17

    goto :goto_6

    :cond_17
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "BMPImageReader3"

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    :goto_6
    if-nez v3, :cond_19

    const-string v8, "BMP v. 4.x"

    iput-object v8, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->bmpVersion:Ljava/lang/String;

    goto :goto_7

    :cond_19
    cmp-long v8, v6, v4

    if-nez v8, :cond_1a

    const-string v8, "BMP v. 5.x"

    iput-object v8, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->bmpVersion:Ljava/lang/String;

    :cond_1a
    :goto_7
    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v12

    long-to-int v2, v12

    iput v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v12

    long-to-int v2, v12

    iput v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v12

    long-to-int v2, v12

    iput v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v12

    long-to-int v2, v12

    iput v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->alphaMask:I

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v12

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result v2

    iget-object v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v8}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result v8

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result v1

    iget-object v11, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v11}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result v11

    iget-object v14, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v14}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result v14

    iget-object v15, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v15}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result v15

    iget-object v9, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v9}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result v9

    iget-object v10, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v10}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result v10

    iget-object v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v4}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result v4

    iget-object v5, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    move/from16 v21, v3

    move/from16 v22, v4

    invoke-interface {v5}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v3

    iget-object v5, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    move-wide/from16 v23, v3

    invoke-interface {v5}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v3

    iget-object v5, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    move-wide/from16 v25, v3

    invoke-interface {v5}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v3

    const-wide/16 v19, 0x7c

    cmp-long v5, v6, v19

    move/from16 v19, v5

    if-nez v5, :cond_1b

    iget-object v5, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    move-wide/from16 v27, v6

    iget-object v6, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v6}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result v6

    iput v6, v5, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->intent:I

    iget-object v5, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v5}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result v5

    iget-object v6, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v6}, Ljavax/imageio/stream/ImageInputStream;->readInt()I

    move-result v6

    iget-object v7, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    move/from16 v20, v5

    const/4 v5, 0x4

    invoke-interface {v7, v5}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    goto :goto_8

    :cond_1b
    move-wide/from16 v27, v6

    const/4 v6, 0x0

    const/16 v20, 0x0

    :goto_8
    iget-object v5, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    long-to-int v7, v12

    iput v7, v5, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->colorSpace:I

    const-wide/16 v29, 0x0

    cmp-long v7, v12, v29

    if-nez v7, :cond_1c

    int-to-double v12, v2

    iput-wide v12, v5, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->redX:D

    int-to-double v7, v8

    iput-wide v7, v5, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->redY:D

    int-to-double v1, v1

    iput-wide v1, v5, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->redZ:D

    int-to-double v1, v11

    iput-wide v1, v5, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->greenX:D

    int-to-double v1, v14

    iput-wide v1, v5, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->greenY:D

    int-to-double v1, v15

    iput-wide v1, v5, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->greenZ:D

    int-to-double v1, v9

    iput-wide v1, v5, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->blueX:D

    int-to-double v1, v10

    iput-wide v1, v5, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->blueY:D

    move/from16 v1, v22

    int-to-double v1, v1

    iput-wide v1, v5, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->blueZ:D

    move-wide/from16 v1, v23

    long-to-int v1, v1

    iput v1, v5, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->gammaRed:I

    move-wide/from16 v1, v25

    long-to-int v1, v1

    iput v1, v5, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->gammaGreen:I

    long-to-int v1, v3

    iput v1, v5, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->gammaBlue:I

    :cond_1c
    iget-wide v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitmapOffset:J

    sub-long v1, v1, v16

    sub-long v1, v1, v27

    const-wide/16 v3, 0x4

    div-long/2addr v1, v3

    long-to-int v1, v1

    mul-int/lit8 v2, v1, 0x4

    new-array v3, v2, [B

    iput-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    iget-object v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5, v2}, Ljavax/imageio/stream/ImageInputStream;->readFully([BII)V

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    iput-object v3, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->palette:[B

    iput v1, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->paletteSize:I

    iget-wide v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->compression:J

    long-to-int v1, v3

    const/4 v5, 0x4

    if-eq v1, v5, :cond_24

    const/4 v7, 0x5

    if-eq v1, v7, :cond_24

    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitsPerPixel:I

    const/4 v7, 0x1

    if-ne v1, v7, :cond_1d

    const/16 v7, 0x10

    iput v7, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_9

    :cond_1d
    const/16 v7, 0x10

    if-ne v1, v5, :cond_1e

    const/16 v1, 0x11

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_9

    :cond_1e
    const/16 v5, 0x8

    if-ne v1, v5, :cond_1f

    const/16 v1, 0x12

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_9

    :cond_1f
    if-ne v1, v7, :cond_20

    const/16 v1, 0x13

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    long-to-int v1, v3

    if-nez v1, :cond_22

    const/16 v1, 0x7c00

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    const/16 v1, 0x3e0

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    const/16 v1, 0x1f

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    goto :goto_9

    :cond_20
    const/16 v5, 0x18

    if-ne v1, v5, :cond_21

    const/16 v1, 0x14

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_9

    :cond_21
    const/16 v5, 0x20

    if-ne v1, v5, :cond_23

    const/16 v1, 0x15

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    long-to-int v1, v3

    if-nez v1, :cond_22

    const/high16 v1, 0xff0000

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    const v1, 0xff00

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    const/16 v1, 0xff

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    :cond_22
    :goto_9
    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    iput v1, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->redMask:I

    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    iput v1, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->greenMask:I

    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    iput v1, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->blueMask:I

    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->alphaMask:I

    iput v1, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->alphaMask:I

    goto :goto_a

    :cond_23
    new-instance v0, Ljavax/imageio/IIOException;

    invoke-static/range {v18 .. v18}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_24
    if-nez v21, :cond_25

    const/16 v1, 0x18

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_a

    :cond_25
    if-nez v19, :cond_26

    const/16 v1, 0x19

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    :cond_26
    :goto_a
    move/from16 v1, v20

    goto/16 :goto_e

    :cond_27
    :goto_b
    move-wide/from16 v27, v6

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    const-wide/16 v1, 0x38

    cmp-long v1, v27, v1

    if-nez v1, :cond_28

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->alphaMask:I

    :cond_28
    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    const-string v2, "BMP V2/V3 INFO"

    iput-object v2, v1, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->bmpVersion:Ljava/lang/String;

    iget-wide v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitmapOffset:J

    sub-long v1, v1, v16

    sub-long v1, v1, v27

    const-wide/16 v3, 0x4

    div-long/2addr v1, v3

    long-to-int v1, v1

    mul-int/lit8 v2, v1, 0x4

    new-array v3, v2, [B

    iput-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    iget-object v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    const/4 v5, 0x0

    invoke-interface {v4, v3, v5, v2}, Ljavax/imageio/stream/ImageInputStream;->readFully([BII)V

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    iput-object v3, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->palette:[B

    iput v1, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->paletteSize:I

    iget-wide v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->compression:J

    long-to-int v1, v3

    const/4 v5, 0x4

    if-eq v1, v5, :cond_30

    const/4 v6, 0x5

    if-eq v1, v6, :cond_30

    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitsPerPixel:I

    const/4 v6, 0x1

    if-ne v1, v6, :cond_29

    const/16 v1, 0xa

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_c

    :cond_29
    if-ne v1, v5, :cond_2a

    const/16 v1, 0xb

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_c

    :cond_2a
    const/16 v5, 0x8

    if-ne v1, v5, :cond_2b

    const/16 v1, 0xc

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_c

    :cond_2b
    const/16 v5, 0x10

    if-ne v1, v5, :cond_2c

    const/16 v1, 0xd

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    long-to-int v1, v3

    if-nez v1, :cond_2e

    const/16 v1, 0x7c00

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    const/16 v1, 0x3e0

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    const/16 v1, 0x1f

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    goto :goto_c

    :cond_2c
    const/16 v5, 0x18

    if-ne v1, v5, :cond_2d

    const/16 v1, 0xe

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    goto :goto_c

    :cond_2d
    const/16 v5, 0x20

    if-ne v1, v5, :cond_2f

    const/16 v1, 0xf

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    long-to-int v1, v3

    if-nez v1, :cond_2e

    const/high16 v1, 0xff0000

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    const v1, 0xff00

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    const/16 v1, 0xff

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    :cond_2e
    :goto_c
    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    iput v1, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->redMask:I

    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    iput v1, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->greenMask:I

    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    iput v1, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->blueMask:I

    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->alphaMask:I

    iput v1, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->alphaMask:I

    goto :goto_d

    :cond_2f
    new-instance v0, Ljavax/imageio/IIOException;

    invoke-static/range {v18 .. v18}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_30
    const/16 v1, 0x17

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    :goto_d
    const/4 v1, 0x0

    const/4 v6, 0x0

    :goto_e
    iget v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    if-lez v2, :cond_31

    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    goto :goto_f

    :cond_31
    const/4 v3, 0x0

    iput-boolean v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isBottomUp:Z

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    :goto_f
    const/16 v2, 0x3e8

    invoke-static {v2}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v2

    iget-object v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    iget v3, v3, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->colorSpace:I

    const/4 v4, 0x3

    if-eq v3, v4, :cond_33

    const/4 v4, 0x4

    if-ne v3, v4, :cond_32

    goto :goto_11

    :cond_32
    :goto_10
    move-object v4, v2

    goto :goto_12

    :cond_33
    :goto_11
    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    int-to-long v3, v1

    sub-long v3, v3, v27

    invoke-interface {v2, v3, v4}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(J)J

    new-array v1, v6, [B

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3, v6}, Ljavax/imageio/stream/ImageInputStream;->readFully([BII)V

    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    :try_start_0
    iget-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->metadata:Lcom/sun/imageio/plugins/bmp/BMPMetadata;

    iget v2, v2, Lcom/sun/imageio/plugins/bmp/BMPMetadata;->colorSpace:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_34

    invoke-static {}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isLinkedProfileAllowed()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-static {v1}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->isUncOrDevicePath([B)Z

    move-result v2

    if-nez v2, :cond_34

    new-instance v2, Ljava/lang/String;

    const-string v3, "windows-1252"

    invoke-direct {v2, v1, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Ljava/awt/color/ICC_ColorSpace;

    invoke-static {v2}, Ljava/awt/color/ICC_Profile;->getInstance(Ljava/lang/String;)Ljava/awt/color/ICC_Profile;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V

    move-object v2, v1

    goto :goto_10

    :cond_34
    new-instance v2, Ljava/awt/color/ICC_ColorSpace;

    invoke-static {v1}, Ljava/awt/color/ICC_Profile;->getInstance([B)Ljava/awt/color/ICC_Profile;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_10

    :catch_0
    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v2

    goto :goto_10

    :goto_12
    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitsPerPixel:I

    const/4 v2, 0x0

    if-eqz v1, :cond_47

    iget-wide v5, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->compression:J

    const-wide/16 v7, 0x4

    cmp-long v3, v5, v7

    if-eqz v3, :cond_47

    const-wide/16 v7, 0x5

    cmp-long v3, v5, v7

    if-nez v3, :cond_35

    goto/16 :goto_1f

    :cond_35
    const/4 v3, 0x1

    if-eq v1, v3, :cond_3d

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3c

    const/16 v3, 0x8

    if-ne v1, v3, :cond_36

    goto/16 :goto_16

    :cond_36
    const/16 v3, 0x10

    if-ne v1, v3, :cond_37

    const/4 v2, 0x3

    iput v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->numBands:I

    new-instance v1, Ljava/awt/image/SinglePixelPackedSampleModel;

    iget v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iget v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    iget v5, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    iget v6, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    iget v7, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    filled-new-array {v5, v6, v7}, [I

    move-result-object v5

    const/4 v6, 0x1

    invoke-direct {v1, v6, v2, v3, v5}, Ljava/awt/image/SinglePixelPackedSampleModel;-><init>(III[I)V

    iput-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Ljava/awt/image/SampleModel;

    new-instance v1, Ljava/awt/image/DirectColorModel;

    const/16 v5, 0x10

    iget v6, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    iget v7, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    iget v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Ljava/awt/image/DirectColorModel;-><init>(Ljava/awt/color/ColorSpace;IIIIIZI)V

    iput-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->colorModel:Ljava/awt/image/ColorModel;

    goto/16 :goto_20

    :cond_37
    const/16 v2, 0x20

    if-ne v1, v2, :cond_3a

    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->alphaMask:I

    if-nez v1, :cond_38

    const/4 v5, 0x3

    goto :goto_13

    :cond_38
    const/4 v5, 0x4

    :goto_13
    iput v5, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->numBands:I

    const/4 v2, 0x3

    if-ne v5, v2, :cond_39

    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    iget v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    iget v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    filled-new-array {v1, v2, v3}, [I

    move-result-object v1

    goto :goto_14

    :cond_39
    iget v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    iget v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    iget v5, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    filled-new-array {v2, v3, v5, v1}, [I

    move-result-object v1

    :goto_14
    new-instance v2, Ljava/awt/image/SinglePixelPackedSampleModel;

    iget v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iget v5, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    const/4 v6, 0x3

    invoke-direct {v2, v6, v3, v5, v1}, Ljava/awt/image/SinglePixelPackedSampleModel;-><init>(III[I)V

    iput-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Ljava/awt/image/SampleModel;

    new-instance v1, Ljava/awt/image/DirectColorModel;

    const/16 v5, 0x20

    iget v6, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->redMask:I

    iget v7, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->greenMask:I

    iget v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->blueMask:I

    iget v9, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->alphaMask:I

    const/4 v10, 0x0

    const/4 v11, 0x3

    move-object v3, v1

    invoke-direct/range {v3 .. v11}, Ljava/awt/image/DirectColorModel;-><init>(Ljava/awt/color/ColorSpace;IIIIIZI)V

    iput-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->colorModel:Ljava/awt/image/ColorModel;

    goto/16 :goto_20

    :cond_3a
    const/4 v1, 0x3

    iput v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->numBands:I

    new-array v11, v1, [I

    const/4 v3, 0x0

    :goto_15
    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->numBands:I

    if-ge v3, v1, :cond_3b

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v3

    aput v1, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    :cond_3b
    new-instance v1, Ljava/awt/image/PixelInterleavedSampleModel;

    const/4 v6, 0x0

    iget v7, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iget v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    iget v9, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->numBands:I

    mul-int v10, v9, v7

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Ljava/awt/image/PixelInterleavedSampleModel;-><init>(IIIII[I)V

    iput-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Ljava/awt/image/SampleModel;

    invoke-static {v4, v1}, Lcom/sun/imageio/plugins/common/ImageUtil;->createColorModel(Ljava/awt/color/ColorSpace;Ljava/awt/image/SampleModel;)Ljava/awt/image/ColorModel;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->colorModel:Ljava/awt/image/ColorModel;

    goto/16 :goto_20

    :cond_3c
    :goto_16
    const/4 v3, 0x1

    :cond_3d
    iput v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->numBands:I

    const/16 v4, 0x8

    if-ne v1, v4, :cond_3f

    new-array v11, v3, [I

    const/4 v8, 0x0

    :goto_17
    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->numBands:I

    if-ge v8, v1, :cond_3e

    add-int/lit8 v1, v1, -0x1

    sub-int/2addr v1, v8

    aput v1, v11, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_17

    :cond_3e
    new-instance v1, Ljava/awt/image/PixelInterleavedSampleModel;

    const/4 v6, 0x0

    iget v7, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iget v8, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    iget v9, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->numBands:I

    mul-int v10, v9, v7

    move-object v5, v1

    invoke-direct/range {v5 .. v11}, Ljava/awt/image/PixelInterleavedSampleModel;-><init>(IIIII[I)V

    iput-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Ljava/awt/image/SampleModel;

    const/4 v6, 0x0

    goto :goto_18

    :cond_3f
    new-instance v1, Ljava/awt/image/MultiPixelPackedSampleModel;

    iget v3, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->width:I

    iget v4, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->height:I

    iget v5, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitsPerPixel:I

    const/4 v6, 0x0

    invoke-direct {v1, v6, v3, v4, v5}, Ljava/awt/image/MultiPixelPackedSampleModel;-><init>(IIII)V

    iput-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Ljava/awt/image/SampleModel;

    :goto_18
    iget v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->imageType:I

    const-wide/16 v3, 0x100

    if-eqz v1, :cond_43

    const/4 v5, 0x1

    if-eq v1, v5, :cond_43

    const/4 v5, 0x2

    if-ne v1, v5, :cond_40

    goto :goto_1b

    :cond_40
    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    array-length v1, v1

    const/4 v5, 0x4

    div-int/2addr v1, v5

    int-to-long v7, v1

    cmp-long v1, v7, v3

    if-lez v1, :cond_41

    goto :goto_19

    :cond_41
    move-wide v3, v7

    :goto_19
    long-to-int v1, v3

    new-array v5, v1, [B

    new-array v7, v1, [B

    new-array v1, v1, [B

    :goto_1a
    int-to-long v8, v6

    cmp-long v8, v8, v3

    if-gez v8, :cond_42

    mul-int/lit8 v8, v6, 0x4

    iget-object v9, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    aget-byte v10, v9, v8

    aput-byte v10, v1, v6

    add-int/lit8 v10, v8, 0x1

    aget-byte v10, v9, v10

    aput-byte v10, v7, v6

    const/4 v10, 0x2

    add-int/2addr v8, v10

    aget-byte v8, v9, v8

    aput-byte v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1a

    :cond_42
    move-object v15, v5

    goto :goto_1e

    :cond_43
    :goto_1b
    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    array-length v1, v1

    const/4 v5, 0x3

    div-int/2addr v1, v5

    int-to-long v7, v1

    cmp-long v1, v7, v3

    if-lez v1, :cond_44

    goto :goto_1c

    :cond_44
    move-wide v3, v7

    :goto_1c
    long-to-int v1, v3

    new-array v5, v1, [B

    new-array v7, v1, [B

    new-array v8, v1, [B

    :goto_1d
    if-ge v6, v1, :cond_45

    mul-int/lit8 v9, v6, 0x3

    iget-object v10, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->palette:[B

    aget-byte v11, v10, v9

    aput-byte v11, v8, v6

    add-int/lit8 v11, v9, 0x1

    aget-byte v11, v10, v11

    aput-byte v11, v7, v6

    const/4 v11, 0x2

    add-int/2addr v9, v11

    aget-byte v9, v10, v9

    aput-byte v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1d

    :cond_45
    move-object v15, v5

    move-object v1, v8

    :goto_1e
    invoke-static {v15, v7, v1}, Lcom/sun/imageio/plugins/common/ImageUtil;->isIndicesForGrayscale([B[B[B)Z

    move-result v5

    if-eqz v5, :cond_46

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Ljava/awt/image/SampleModel;

    invoke-static {v2, v1}, Lcom/sun/imageio/plugins/common/ImageUtil;->createColorModel(Ljava/awt/color/ColorSpace;Ljava/awt/image/SampleModel;)Ljava/awt/image/ColorModel;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->colorModel:Ljava/awt/image/ColorModel;

    goto :goto_20

    :cond_46
    new-instance v2, Ljava/awt/image/IndexColorModel;

    iget v13, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitsPerPixel:I

    long-to-int v14, v3

    move-object v12, v2

    move-object/from16 v16, v7

    move-object/from16 v17, v1

    invoke-direct/range {v12 .. v17}, Ljava/awt/image/IndexColorModel;-><init>(II[B[B[B)V

    iput-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->colorModel:Ljava/awt/image/ColorModel;

    goto :goto_20

    :cond_47
    :goto_1f
    iput-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->colorModel:Ljava/awt/image/ColorModel;

    iput-object v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Ljava/awt/image/SampleModel;

    :goto_20
    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->sampleModel:Ljava/awt/image/SampleModel;

    iput-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->originalSampleModel:Ljava/awt/image/SampleModel;

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->colorModel:Ljava/awt/image/ColorModel;

    iput-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->originalColorModel:Ljava/awt/image/ColorModel;

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    iget-wide v2, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitmapOffset:J

    invoke-interface {v1, v2, v3}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(J)J

    iget-object v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->bitmapStart:J

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->gotHeader:Z

    return-void

    :cond_48
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "BMPImageReader1"

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/I18N;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_49
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Input source not set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readRaster(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/Raster;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getData()Ljava/awt/image/Raster;

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .locals 1

    invoke-super {p0}, Ljavax/imageio/ImageReader;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    invoke-direct {p0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->resetHeaderInfo()V

    return-void
.end method

.method public setInput(Ljava/lang/Object;ZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    check-cast p1, Ljavax/imageio/stream/ImageInputStream;

    iput-object p1, p0, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->iis:Ljavax/imageio/stream/ImageInputStream;

    if-eqz p1, :cond_0

    sget-object p2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-interface {p1, p2}, Ljavax/imageio/stream/ImageInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/imageio/plugins/bmp/BMPImageReader;->resetHeaderInfo()V

    return-void
.end method
