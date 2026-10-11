.class public Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;
.super Lcom/twelvemonkeys/imageio/ImageReaderBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$e;,
        Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;
    }
.end annotation


# static fields
.field public static final l:Z

.field public static final m:I = -0x1

.field public static final n:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public final f:Ljavax/imageio/ImageReader;

.field public final g:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;

.field public h:Ljavax/imageio/ImageReader;

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/phn;",
            ">;"
        }
    .end annotation
.end field

.field public j:Lcom/sunia/HTREnginev2/xqi;

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdm;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "com.twelvemonkeys.imageio.plugins.jpeg.debug"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->l:Z

    sget-object v0, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil;->ALL_SEGMENTS:Ljava/util/Map;

    sput-object v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->n:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Ljavax/imageio/spi/ImageReaderSpi;Ljavax/imageio/ImageReader;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twelvemonkeys/imageio/ImageReaderBase;-><init>(Ljavax/imageio/spi/ImageReaderSpi;)V

    invoke-static {p2}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/imageio/ImageReader;

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f:Ljavax/imageio/ImageReader;

    new-instance p1, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;-><init>(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$a;)V

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->g:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;

    return-void
.end method

.method public static B(Lcom/sunia/HTREnginev2/tqi;Lcom/sunia/HTREnginev2/d9;Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;)Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    const/4 v0, 0x4

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz p1, :cond_7

    iget p1, p1, Lcom/sunia/HTREnginev2/d9;->g:I

    if-eqz p1, :cond_4

    if-eq p1, v3, :cond_2

    if-eq p1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b()I

    move-result p1

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->YCCK:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    return-object p0

    :cond_2
    invoke-virtual {p2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b()I

    move-result p1

    if-eq p1, v1, :cond_3

    goto :goto_0

    :cond_3
    sget-object p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->YCbCr:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    return-object p0

    :cond_4
    invoke-virtual {p2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b()I

    move-result p1

    if-ne p1, v3, :cond_5

    sget-object p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->Gray:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    return-object p0

    :cond_5
    invoke-virtual {p2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b()I

    move-result p1

    if-ne p1, v1, :cond_6

    sget-object p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->RGB:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    return-object p0

    :cond_6
    invoke-virtual {p2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b()I

    move-result p1

    if-ne p1, v0, :cond_7

    sget-object p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->CMYK:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    return-object p0

    :cond_7
    :goto_0
    invoke-virtual {p2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b()I

    move-result p1

    if-eq p1, v3, :cond_1a

    if-eq p1, v2, :cond_19

    const/16 v4, 0x42

    const/16 v5, 0x47

    const/16 v6, 0x52

    const/16 v7, 0x63

    const/16 v8, 0x43

    const/16 v9, 0x59

    const/4 v10, 0x0

    if-eq p1, v1, :cond_11

    if-ne p1, v0, :cond_10

    iget-object p0, p2, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->e:[Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;

    aget-object p1, p0, v10

    iget p1, p1, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    if-ne p1, v3, :cond_8

    aget-object p2, p0, v3

    iget p2, p2, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    if-ne p2, v2, :cond_8

    aget-object p2, p0, v2

    iget p2, p2, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    if-ne p2, v1, :cond_8

    aget-object p2, p0, v1

    iget p2, p2, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    if-ne p2, v0, :cond_8

    sget-object p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->YCbCrA:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    return-object p0

    :cond_8
    const/16 p2, 0x41

    if-ne p1, v6, :cond_9

    aget-object v0, p0, v3

    iget v0, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    if-ne v0, v5, :cond_9

    aget-object v0, p0, v2

    iget v0, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    if-ne v0, v4, :cond_9

    aget-object v0, p0, v1

    iget v0, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    if-ne v0, p2, :cond_9

    sget-object p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->RGBA:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    return-object p0

    :cond_9
    if-ne p1, v9, :cond_a

    aget-object v0, p0, v3

    iget v0, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    if-ne v0, v8, :cond_a

    aget-object v0, p0, v2

    iget v0, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    if-ne v0, v7, :cond_a

    aget-object v0, p0, v1

    iget v0, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    if-ne v0, p2, :cond_a

    sget-object p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->PhotoYCCA:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    return-object p0

    :cond_a
    const/16 p2, 0x4b

    if-ne p1, v8, :cond_b

    aget-object v0, p0, v3

    iget v0, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    const/16 v4, 0x4d

    if-ne v0, v4, :cond_b

    aget-object v0, p0, v2

    iget v0, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    if-ne v0, v9, :cond_b

    aget-object v0, p0, v1

    iget v0, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    if-ne v0, p2, :cond_b

    sget-object p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->CMYK:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    return-object p0

    :cond_b
    if-ne p1, v9, :cond_c

    aget-object p1, p0, v3

    iget p1, p1, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    if-ne p1, v8, :cond_c

    aget-object p1, p0, v2

    iget p1, p1, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    if-ne p1, v7, :cond_c

    aget-object p1, p0, v1

    iget p1, p1, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    if-ne p1, p2, :cond_c

    sget-object p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->YCCK:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    return-object p0

    :cond_c
    array-length p1, p0

    :goto_1
    if-ge v10, p1, :cond_f

    aget-object p2, p0, v10

    iget v0, p2, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->b:I

    if-ne v0, v3, :cond_e

    iget p2, p2, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->c:I

    if-eq p2, v3, :cond_d

    goto :goto_2

    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_e
    :goto_2
    sget-object p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->YCCK:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    return-object p0

    :cond_f
    sget-object p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->CMYK:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    return-object p0

    :cond_10
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Cannot determine source color space"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_11
    iget-object p1, p2, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->e:[Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;

    aget-object p2, p1, v10

    iget p2, p2, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    if-ne p2, v3, :cond_12

    aget-object v0, p1, v3

    iget v0, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    if-ne v0, v2, :cond_12

    aget-object v0, p1, v2

    iget v0, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    if-ne v0, v1, :cond_12

    sget-object p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->YCbCr:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    return-object p0

    :cond_12
    if-ne p2, v6, :cond_13

    aget-object v0, p1, v3

    iget v0, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    if-ne v0, v5, :cond_13

    aget-object v0, p1, v2

    iget v0, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    if-ne v0, v4, :cond_13

    sget-object p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->RGB:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    return-object p0

    :cond_13
    if-ne p2, v9, :cond_14

    aget-object p2, p1, v3

    iget p2, p2, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    if-ne p2, v8, :cond_14

    aget-object p2, p1, v2

    iget p2, p2, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->a:I

    if-ne p2, v7, :cond_14

    sget-object p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->PhotoYCC:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    return-object p0

    :cond_14
    array-length p2, p1

    :goto_3
    if-ge v10, p2, :cond_17

    aget-object v0, p1, v10

    iget v1, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->b:I

    if-ne v1, v3, :cond_16

    iget v0, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame$Component;->c:I

    if-eq v0, v3, :cond_15

    goto :goto_4

    :cond_15
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_16
    :goto_4
    sget-object p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->YCbCr:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    return-object p0

    :cond_17
    if-eqz p0, :cond_18

    sget-object p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->YCbCr:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    goto :goto_5

    :cond_18
    sget-object p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->RGB:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    :goto_5
    return-object p0

    :cond_19
    sget-object p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->GrayA:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    return-object p0

    :cond_1a
    sget-object p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->Gray:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    return-object p0
.end method

.method public static F(I[BI)V
    .locals 2

    shr-int/lit8 v0, p0, 0x18

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    add-int/lit8 v0, p2, 0x1

    shr-int/lit8 v1, p0, 0x10

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 v0, p2, 0x2

    shr-int/lit8 v1, p0, 0x8

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    add-int/lit8 p2, p2, 0x3

    int-to-byte p0, p0

    aput-byte p0, p1, p2

    return-void
.end method

.method public static G(Ljava/awt/image/Raster;)V
    .locals 3

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object p0

    check-cast p0, Ljava/awt/image/DataBufferByte;

    invoke-virtual {p0}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object p0

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-byte v2, p0, v1

    rsub-int v2, v2, 0xff

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static I(Ljava/io/DataInput;I)[B
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-array p1, p1, [B

    invoke-interface {p0, p1}, Ljava/io/DataInput;->readFully([B)V

    return-object p1
.end method

.method public static synthetic b(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/ImageReader;->processThumbnailStarted(II)V

    return-void
.end method

.method public static synthetic c(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;Ljava/awt/image/BufferedImage;IIIIIII[I)V
    .locals 0

    invoke-virtual/range {p0 .. p9}, Ljavax/imageio/ImageReader;->processPassStarted(Ljava/awt/image/BufferedImage;IIIIIII[I)V

    return-void
.end method

.method public static convertYCCK2CMYK(Ljava/awt/image/Raster;)V
    .locals 7

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object p0

    check-cast p0, Ljava/awt/image/DataBufferByte;

    invoke-virtual {p0}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_0

    mul-int v5, v3, v1

    add-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x4

    invoke-static {p0, p0, v5}, Lcom/twelvemonkeys/imageio/color/YCbCrConverter;->convertYCbCr2RGB([B[BI)V

    add-int/lit8 v5, v5, 0x3

    aget-byte v6, p0, v5

    rsub-int v6, v6, 0xff

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, p0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static convertYCbCr2RGB(Ljava/awt/image/Raster;)V
    .locals 6

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object p0

    check-cast p0, Ljava/awt/image/DataBufferByte;

    invoke-virtual {p0}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_0

    mul-int v5, v3, v1

    add-int/2addr v5, v4

    mul-int/lit8 v5, v5, 0x3

    invoke-static {p0, p0, v5}, Lcom/twelvemonkeys/imageio/color/YCbCrConverter;->convertYCbCr2RGB([B[BI)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic d(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;Ljava/awt/image/BufferedImage;IIIIII[I)V
    .locals 0

    invoke-virtual/range {p0 .. p8}, Ljavax/imageio/ImageReader;->processImageUpdate(Ljava/awt/image/BufferedImage;IIIIII[I)V

    return-void
.end method

.method public static synthetic e(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;Ljava/awt/image/BufferedImage;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->processPassComplete(Ljava/awt/image/BufferedImage;)V

    return-void
.end method

.method public static synthetic f(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;Ljava/awt/image/BufferedImage;IIIIIII[I)V
    .locals 0

    invoke-virtual/range {p0 .. p9}, Ljavax/imageio/ImageReader;->processThumbnailPassStarted(Ljava/awt/image/BufferedImage;IIIIIII[I)V

    return-void
.end method

.method public static synthetic g(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;Ljava/awt/image/BufferedImage;IIIIII[I)V
    .locals 0

    invoke-virtual/range {p0 .. p8}, Ljavax/imageio/ImageReader;->processThumbnailUpdate(Ljava/awt/image/BufferedImage;IIIIII[I)V

    return-void
.end method

.method public static synthetic h(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;Ljava/awt/image/BufferedImage;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->processThumbnailPassComplete(Ljava/awt/image/BufferedImage;)V

    return-void
.end method

.method public static synthetic i(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/ImageReader;->processThumbnailStarted(II)V

    return-void
.end method

.method public static synthetic j(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;F)V
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->processThumbnailProgress(F)V

    return-void
.end method

.method public static synthetic k(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;)V
    .locals 0

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->processThumbnailComplete()V

    return-void
.end method

.method public static synthetic l(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;)V
    .locals 0

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->processImageComplete()V

    return-void
.end method

.method public static synthetic m(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;F)V
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v1, p0

    const/4 v2, 0x0

    invoke-static {v2}, Ljavax/imageio/ImageIO;->setUseCache(Z)V

    move v5, v2

    move v9, v5

    move v10, v9

    move v11, v10

    move v12, v11

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    :goto_0
    array-length v0, v1

    if-ge v5, v0, :cond_19

    aget-object v13, v1, v5

    invoke-virtual {v13, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v14, 0x2d

    const/4 v15, 0x3

    const/16 v16, 0x2

    if-ne v0, v14, :cond_b

    const-string v0, "-s"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v14, 0x4

    const-string v4, ","

    const-string v3, "\'"

    if-nez v0, :cond_8

    const-string v0, "--subsample"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    array-length v0, v1

    if-le v0, v5, :cond_0

    goto/16 :goto_4

    :cond_0
    const-string v0, "-r"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "--roi"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, v1

    if-le v0, v5, :cond_1

    goto :goto_3

    :cond_1
    const-string v0, "-m"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "--metadata"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "-t"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "--thumbnails"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Unknown argument: \'"

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    move/from16 v18, v2

    move/from16 v20, v5

    move v15, v6

    move/from16 v25, v7

    move-object/from16 v21, v8

    goto/16 :goto_17

    :cond_4
    :goto_1
    move/from16 v18, v2

    const/4 v1, 0x1

    const/4 v12, 0x1

    goto/16 :goto_18

    :cond_5
    :goto_2
    move/from16 v18, v2

    const/4 v1, 0x1

    const/4 v11, 0x1

    goto/16 :goto_18

    :cond_6
    :goto_3
    add-int/lit8 v5, v5, 0x1

    aget-object v0, v1, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :try_start_0
    array-length v4, v0

    if-lt v4, v14, :cond_7

    new-instance v4, Ljava/awt/Rectangle;

    aget-object v13, v0, v2

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    aget-object v14, v0, v16

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    aget-object v16, v0, v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v0, v0, v15

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v4, v13, v14, v2, v0}, Ljava/awt/Rectangle;-><init>(IIII)V

    move-object v8, v4

    goto/16 :goto_5

    :cond_7
    new-instance v2, Ljava/awt/Rectangle;

    const/4 v4, 0x0

    aget-object v13, v0, v4

    invoke-static {v13}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v0, v0, v16

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v2, v4, v0}, Ljava/awt/Rectangle;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v8, v2

    goto/16 :goto_5

    :catch_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad source region ([x,y,]w, h): \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_5

    :cond_8
    :goto_4
    add-int/lit8 v5, v5, 0x1

    aget-object v0, v1, v5

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    :try_start_1
    array-length v2, v0

    if-lt v2, v14, :cond_9

    const/4 v2, 0x0

    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v2, 0x1

    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    aget-object v2, v0, v16

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aget-object v0, v0, v15

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    goto :goto_5

    :cond_9
    const/4 v2, 0x0

    aget-object v4, v0, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    array-length v2, v0

    const/4 v4, 0x1

    if-le v2, v4, :cond_a

    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move v7, v0

    goto :goto_5

    :cond_a
    move v7, v6

    goto :goto_5

    :catch_1
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad sub sampling (x,y): \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v1, v5

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_5
    const/4 v1, 0x1

    const/16 v18, 0x0

    goto/16 :goto_18

    :cond_b
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Ljavax/imageio/ImageIO;->createImageInputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageInputStream;

    move-result-object v3

    if-nez v3, :cond_c

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not read file: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_6
    move/from16 v20, v5

    :goto_7
    move v15, v6

    move/from16 v25, v7

    move-object/from16 v21, v8

    const/16 v18, 0x0

    goto/16 :goto_17

    :cond_c
    invoke-static {v3}, Ljavax/imageio/ImageIO;->getImageReaders(Ljava/lang/Object;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_d

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No reader for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljavax/imageio/ImageReader;

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Reading using: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v0, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$a;

    invoke-direct {v0, v13}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$a;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljavax/imageio/ImageReader;->addIIOReadWarningListener(Ljavax/imageio/event/IIOReadWarningListener;)V

    new-instance v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$b;

    invoke-direct {v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$b;-><init>()V

    invoke-virtual {v4, v0}, Ljavax/imageio/ImageReader;->addIIOReadProgressListener(Ljavax/imageio/event/IIOReadProgressListener;)V

    invoke-virtual {v4, v3}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;)V

    const/4 v14, 0x1

    :try_start_2
    invoke-virtual {v4, v14}, Ljavax/imageio/ImageReader;->getNumImages(Z)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_8

    const-string v14, "file.encoding"

    if-nez v0, :cond_e

    :try_start_3
    invoke-virtual {v4}, Ljavax/imageio/ImageReader;->getStreamMetadata()Ljavax/imageio/metadata/IIOMetadata;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/imageio/metadata/IIOMetadata;->getNativeMetadataFormatName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljavax/imageio/metadata/IIOMetadata;->getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Ljavax/imageio/metadata/IIOMetadataNode;

    new-instance v4, Lcom/twelvemonkeys/xml/XMLSerializer;

    sget-object v13, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-direct {v4, v13, v14}, Lcom/twelvemonkeys/xml/XMLSerializer;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v13, 0x0

    invoke-virtual {v4, v0, v13}, Lcom/twelvemonkeys/xml/XMLSerializer;->serialize(Lorg/w3c/dom/Node;Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_8

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->close()V

    goto/16 :goto_6

    :cond_e
    :try_start_4
    invoke-virtual {v4}, Ljavax/imageio/ImageReader;->getDefaultReadParam()Ljavax/imageio/ImageReadParam;

    move-result-object v0

    const/4 v15, 0x1

    if-gt v6, v15, :cond_10

    if-gt v7, v15, :cond_10

    if-eqz v8, :cond_f

    goto :goto_8

    :cond_f
    move/from16 v20, v5

    const/4 v1, 0x0

    goto :goto_9

    :cond_10
    :goto_8
    invoke-virtual {v0, v6, v7, v9, v10}, Ljavax/imageio/IIOParam;->setSourceSubsampling(IIII)V

    invoke-virtual {v0, v8}, Ljavax/imageio/IIOParam;->setSourceRegion(Ljava/awt/Rectangle;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_8

    const/4 v15, 0x0

    :try_start_5
    invoke-virtual {v4, v15}, Ljavax/imageio/ImageReader;->getImageTypes(I)Ljava/util/Iterator;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v1, v18

    check-cast v1, Ljavax/imageio/ImageTypeSpecifier;

    invoke-virtual {v4, v15}, Ljavax/imageio/ImageReader;->getWidth(I)I

    move-result v18
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_7

    add-int v18, v18, v6

    const/16 v17, 0x1

    add-int/lit8 v18, v18, -0x1

    move/from16 v20, v5

    :try_start_6
    div-int v5, v18, v6

    invoke-virtual {v4, v15}, Ljavax/imageio/ImageReader;->getHeight(I)I

    move-result v21
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    add-int v21, v21, v7

    add-int/lit8 v21, v21, -0x1

    :try_start_7
    div-int v15, v21, v7

    invoke-virtual {v1, v5, v15}, Ljavax/imageio/ImageTypeSpecifier;->createBufferedImage(II)Ljava/awt/image/BufferedImage;

    move-result-object v1

    :goto_9
    invoke-virtual {v0, v1}, Ljavax/imageio/ImageReadParam;->setDestination(Ljava/awt/image/BufferedImage;)V

    sget-boolean v5, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->l:Z

    if-eqz v5, :cond_11

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v21
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    goto :goto_a

    :cond_11
    const-wide/16 v21, 0x0

    :goto_a
    const/4 v5, 0x0

    :try_start_8
    invoke-virtual {v4, v5, v0}, Ljavax/imageio/ImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-result-object v1
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto :goto_b

    :catch_2
    move-exception v0

    move-object v5, v0

    :try_start_9
    invoke-virtual {v5}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    if-nez v1, :cond_12

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->close()V

    goto/16 :goto_7

    :cond_12
    :goto_b
    :try_start_a
    sget-boolean v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->l:Z

    if-eqz v0, :cond_13

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Read time: "

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v23
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move v15, v6

    move/from16 v25, v7

    sub-long v6, v23, v21

    :try_start_b
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " ms"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "image: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_c

    :cond_13
    move v15, v6

    move/from16 v25, v7

    :goto_c
    const-string v0, "Image: %s [%d x %d]"

    const/4 v5, 0x3

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v5
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    const/4 v7, 0x0

    :try_start_c
    aput-object v5, v6, v7

    invoke-virtual {v4, v7}, Ljavax/imageio/ImageReader;->getWidth(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v17, 0x1

    aput-object v5, v6, v17

    invoke-virtual {v4, v7}, Ljavax/imageio/ImageReader;->getHeight(I)I

    move-result v5
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    :try_start_d
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v6, v16

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->showIt(Ljava/awt/image/BufferedImage;Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    const-string v1, ": "

    const-string v5, "Could not read thumbnails: "

    if-eqz v11, :cond_16

    const/4 v6, 0x0

    :try_start_e
    invoke-virtual {v4, v6}, Ljavax/imageio/ImageReader;->getImageMetadata(I)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object v0

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_e
    .catch Ljavax/imageio/IIOException; {:try_start_e .. :try_end_e} :catch_4
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    move-object/from16 v21, v8

    :try_start_f
    const-string v8, "Metadata for File: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/imageio/metadata/IIOMetadata;->getNativeMetadataFormatName()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_14

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Native:"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v6, Lcom/twelvemonkeys/xml/XMLSerializer;

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/twelvemonkeys/xml/XMLSerializer;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljavax/imageio/metadata/IIOMetadata;->getNativeMetadataFormatName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljavax/imageio/metadata/IIOMetadata;->getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Lcom/twelvemonkeys/xml/XMLSerializer;->serialize(Lorg/w3c/dom/Node;Z)V

    :cond_14
    invoke-virtual {v0}, Ljavax/imageio/metadata/IIOMetadata;->isStandardMetadataFormatSupported()Z

    move-result v6

    if-eqz v6, :cond_15

    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v7, "Standard:"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v6, Lcom/twelvemonkeys/xml/XMLSerializer;

    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v14}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/twelvemonkeys/xml/XMLSerializer;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    const-string v7, "javax_imageio_1.0"

    invoke-virtual {v0, v7}, Ljavax/imageio/metadata/IIOMetadata;->getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v7, 0x0

    invoke-virtual {v6, v0, v7}, Lcom/twelvemonkeys/xml/XMLSerializer;->serialize(Lorg/w3c/dom/Node;Z)V

    :cond_15
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->println()V
    :try_end_f
    .catch Ljavax/imageio/IIOException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    goto :goto_e

    :catch_3
    move-exception v0

    goto :goto_d

    :catch_4
    move-exception v0

    move-object/from16 v21, v8

    :goto_d
    :try_start_10
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_e

    :catchall_0
    move-exception v0

    goto/16 :goto_14

    :cond_16
    move-object/from16 v21, v8

    :goto_e
    if-eqz v12, :cond_18

    const/4 v6, 0x0

    :try_start_11
    invoke-virtual {v4, v6}, Ljavax/imageio/ImageReader;->getNumThumbnails(I)I

    move-result v0

    move v7, v6

    :goto_f
    if-ge v7, v0, :cond_17

    invoke-virtual {v4, v6, v7}, Ljavax/imageio/ImageReader;->readThumbnail(II)Ljava/awt/image/BufferedImage;

    move-result-object v8

    const-string v14, "Thumbnail: %s [%d x %d]"
    :try_end_11
    .catch Ljavax/imageio/IIOException; {:try_start_11 .. :try_end_11} :catch_7
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    move/from16 v19, v0

    const/4 v6, 0x3

    :try_start_12
    new-array v0, v6, [Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v22
    :try_end_12
    .catch Ljavax/imageio/IIOException; {:try_start_12 .. :try_end_12} :catch_6
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    const/16 v18, 0x0

    :try_start_13
    aput-object v22, v0, v18

    invoke-virtual {v8}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    const/16 v17, 0x1

    aput-object v22, v0, v17

    invoke-virtual {v8}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v22

    aput-object v22, v0, v16

    invoke-static {v14, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->showIt(Ljava/awt/image/BufferedImage;Ljava/lang/String;)V
    :try_end_13
    .catch Ljavax/imageio/IIOException; {:try_start_13 .. :try_end_13} :catch_5
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    add-int/lit8 v7, v7, 0x1

    move/from16 v6, v18

    move/from16 v0, v19

    goto :goto_f

    :catch_5
    move-exception v0

    goto :goto_10

    :catch_6
    move-exception v0

    const/16 v18, 0x0

    goto :goto_10

    :cond_17
    move/from16 v18, v6

    goto :goto_16

    :catchall_1
    move-exception v0

    move/from16 v18, v6

    goto :goto_15

    :catch_7
    move-exception v0

    move/from16 v18, v6

    :goto_10
    :try_start_14
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    goto :goto_16

    :catchall_2
    move-exception v0

    goto :goto_15

    :cond_18
    const/16 v18, 0x0

    goto :goto_16

    :catchall_3
    move-exception v0

    move/from16 v18, v7

    move-object/from16 v21, v8

    goto :goto_15

    :catchall_4
    move-exception v0

    goto :goto_13

    :catchall_5
    move-exception v0

    goto :goto_12

    :catchall_6
    move-exception v0

    goto :goto_11

    :catchall_7
    move-exception v0

    move/from16 v20, v5

    :goto_11
    move/from16 v25, v7

    move-object/from16 v21, v8

    move/from16 v18, v15

    move v15, v6

    goto :goto_15

    :catchall_8
    move-exception v0

    move/from16 v20, v5

    :goto_12
    move v15, v6

    move/from16 v25, v7

    :goto_13
    move-object/from16 v21, v8

    :goto_14
    const/16 v18, 0x0

    :goto_15
    :try_start_15
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    :goto_16
    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->close()V

    :goto_17
    move v6, v15

    move/from16 v5, v20

    move-object/from16 v8, v21

    move/from16 v7, v25

    const/4 v1, 0x1

    :goto_18
    add-int/2addr v5, v1

    move-object/from16 v1, p0

    move/from16 v2, v18

    goto/16 :goto_0

    :catchall_9
    move-exception v0

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->close()V

    throw v0

    :cond_19
    return-void
.end method

.method public static synthetic n(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;I)V
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->processImageStarted(I)V

    return-void
.end method

.method public static synthetic o(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;)V
    .locals 0

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->processReadAborted()V

    return-void
.end method

.method public static synthetic p(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;)V
    .locals 0

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->processSequenceComplete()V

    return-void
.end method

.method public static synthetic q(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;I)V
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->processSequenceStarted(I)V

    return-void
.end method

.method public static synthetic r(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;)V
    .locals 0

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->processThumbnailComplete()V

    return-void
.end method

.method public static synthetic s(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;F)V
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->processThumbnailProgress(F)V

    return-void
.end method

.method public static showIt(Ljava/awt/image/BufferedImage;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/twelvemonkeys/imageio/ImageReaderBase;->showIt(Ljava/awt/image/BufferedImage;Ljava/lang/String;)V

    return-void
.end method

.method public static u()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const v1, 0xffe0

    :goto_0
    const v2, 0xffef

    if-gt v1, v2, :cond_0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil;->ALL_IDS:Ljava/util/List;

    invoke-interface {v0, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const v1, 0xffc0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xffc1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xffc2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xffc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xffc5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xffc6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xffc7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xffc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xffca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xffcb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xffcd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xffce

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xffcf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xffdb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xffc4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const v1, 0xffda

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public A()Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->D()V

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->k:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/sdm;

    instance-of v1, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;

    return-object v0

    :cond_1
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "No SOF segment in stream"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public C()Ljavax/imageio/ImageReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->h:Ljavax/imageio/ImageReader;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f:Ljavax/imageio/ImageReader;

    invoke-virtual {v0}, Ljavax/imageio/ImageReader;->getOriginatingProvider()Ljavax/imageio/spi/ImageReaderSpi;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/imageio/spi/ImageReaderSpi;->createReaderInstance()Ljavax/imageio/ImageReader;

    move-result-object v0

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->h:Ljavax/imageio/ImageReader;

    :cond_0
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->h:Ljavax/imageio/ImageReader;

    return-object p0
.end method

.method public final D()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->k:Ljava/util/List;

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->l:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->L()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;

    :try_start_0
    new-instance v5, Ljava/io/DataInputStream;

    invoke-virtual {v4}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->segmentData()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v4}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->marker()I

    move-result v6

    invoke-virtual {v4}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->identifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->segmentLength()I

    move-result v8

    invoke-static {v6, v7, v8, v5}, Lcom/sunia/HTREnginev2/sdm;->a(ILjava/lang/String;ILjava/io/DataInput;)Lcom/sunia/HTREnginev2/sdm;

    move-result-object v6

    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v6

    :try_start_3
    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v7

    :try_start_4
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v5

    :try_start_5
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw v7
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    move-exception v5

    invoke-virtual {v4}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->marker()I

    move-result v6

    const v7, 0xffe0

    if-lt v6, v7, :cond_1

    const v6, 0xffef

    invoke-virtual {v4}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->marker()I

    move-result v7

    if-lt v6, v7, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Bogus "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;->identifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " segment, ignoring"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->processWarningOccurred(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    throw v5

    :cond_2
    iput-object v3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->k:Ljava/util/List;

    sget-boolean p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->l:Z

    if-eqz p0, :cond_3

    sget-object p0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read metadata in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    return-void
.end method

.method public final E()V
    .locals 2

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f:Ljavax/imageio/ImageReader;

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->g:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;

    invoke-virtual {v0, v1}, Ljavax/imageio/ImageReader;->addIIOReadProgressListener(Ljavax/imageio/event/IIOReadProgressListener;)V

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f:Ljavax/imageio/ImageReader;

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->g:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;

    invoke-virtual {v0, v1}, Ljavax/imageio/ImageReader;->addIIOReadUpdateListener(Ljavax/imageio/event/IIOReadUpdateListener;)V

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f:Ljavax/imageio/ImageReader;

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->g:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$d;

    invoke-virtual {v0, p0}, Ljavax/imageio/ImageReader;->addIIOReadWarningListener(Ljavax/imageio/event/IIOReadWarningListener;)V

    return-void
.end method

.method public final H()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase;->assertInput()V

    :try_start_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->A()Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;

    move-result-object p0

    iget p0, p0, Lcom/sunia/HTREnginev2/sdm;->a:I
    :try_end_0
    .catch Ljavax/imageio/IIOException; {:try_start_0 .. :try_end_0} :catch_0

    const v0, 0xffc3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    sget-boolean v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->l:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final J(Ljava/io/InputStream;Z)Ljava/awt/color/ICC_Profile;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-static {p1}, Ljava/awt/color/ICC_Profile;->getInstance(Ljava/io/InputStream;)Ljava/awt/color/ICC_Profile;

    move-result-object p1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->ensureDisplayProfile(Ljava/awt/color/ICC_Profile;)Ljava/awt/color/ICC_Profile;

    move-result-object p1

    invoke-static {p1}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->validateProfile(Ljava/awt/color/ICC_Profile;)Ljava/awt/color/ICC_Profile;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "Bad \'ICC_PROFILE\' chunk(s): %s. Ignoring ICC profile."

    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->processWarningOccurred(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public final K(ILjavax/imageio/ImageReadParam;Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;Ljava/awt/color/ICC_Profile;)Ljava/awt/image/BufferedImage;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-virtual/range {p0 .. p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->getWidth(I)I

    move-result v4

    invoke-virtual/range {p0 .. p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->getHeight(I)I

    move-result v5

    invoke-virtual/range {p0 .. p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->getImageTypes(I)Ljava/util/Iterator;

    move-result-object v3

    invoke-static {v1, v3, v4, v5}, Lcom/twelvemonkeys/imageio/ImageReaderBase;->getDestination(Ljavax/imageio/ImageReadParam;Ljava/util/Iterator;II)Ljava/awt/image/BufferedImage;

    move-result-object v9

    invoke-virtual {v9}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v10

    const/4 v3, 0x0

    if-eqz p5, :cond_0

    invoke-static/range {p5 .. p5}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->createColorSpace(Ljava/awt/color/ICC_Profile;)Ljava/awt/color/ICC_ColorSpace;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v3

    :goto_0
    if-eqz p5, :cond_1

    sget-object v7, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->Gray:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    if-eq v2, v7, :cond_7

    sget-object v7, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->GrayA:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    if-ne v2, v7, :cond_1

    goto/16 :goto_2

    :cond_1
    const/16 v7, 0x1389

    if-eqz v6, :cond_5

    invoke-virtual/range {p3 .. p3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b()I

    move-result v8

    invoke-virtual {v6}, Ljava/awt/color/ColorSpace;->getNumComponents()I

    move-result v11

    if-eq v8, v11, :cond_2

    invoke-virtual {v6}, Ljava/awt/color/ColorSpace;->getNumComponents()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v8, p3

    iget v11, v8, Lcom/sunia/HTREnginev2/sdm;->a:I

    and-int/lit8 v11, v11, 0xf

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v6, v11, v8, v2}, [Ljava/lang/Object;

    move-result-object v6

    const-string v8, "Embedded ICC color profile is incompatible with image data. Profile indicates %d components, but SOF%d has %d color components. Ignoring ICC profile, assuming source color space %s."

    invoke-static {v8, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->processWarningOccurred(Ljava/lang/String;)V

    sget-object v6, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->CMYK:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    if-ne v2, v6, :cond_7

    invoke-virtual {v9}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v6

    invoke-virtual {v6}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v6

    const/16 v8, 0x9

    if-eq v6, v8, :cond_7

    new-instance v6, Ljava/awt/image/ColorConvertOp;

    invoke-static {v7}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->getColorSpace(I)Ljava/awt/color/ColorSpace;

    move-result-object v7

    invoke-virtual {v9}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v8

    invoke-virtual {v8}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v8

    invoke-direct {v6, v7, v8, v3}, Ljava/awt/image/ColorConvertOp;-><init>(Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;Ljava/awt/RenderingHints;)V

    goto/16 :goto_4

    :cond_2
    invoke-virtual {v9}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v7

    invoke-virtual {v7}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v7

    if-eq v6, v7, :cond_7

    sget-boolean v7, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->l:Z

    if-eqz v7, :cond_4

    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Converting from "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " to "

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v11

    invoke-virtual {v11}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v11

    invoke-virtual {v11}, Ljava/awt/color/ColorSpace;->isCS_sRGB()Z

    move-result v11

    if-eqz v11, :cond_3

    const-string v11, "sRGB"

    goto :goto_1

    :cond_3
    invoke-virtual {v9}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v11

    invoke-virtual {v11}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v11

    :goto_1
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    new-instance v7, Ljava/awt/image/ColorConvertOp;

    invoke-virtual {v9}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v8

    invoke-virtual {v8}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v8

    invoke-direct {v7, v6, v8, v3}, Ljava/awt/image/ColorConvertOp;-><init>(Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;Ljava/awt/RenderingHints;)V

    move-object v15, v7

    goto :goto_5

    :cond_5
    sget-object v6, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->YCCK:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    if-eq v2, v6, :cond_8

    sget-object v6, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->CMYK:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    if-ne v2, v6, :cond_6

    goto :goto_3

    :cond_6
    if-eqz p5, :cond_7

    const-string v6, "Embedded ICC color profile is incompatible with Java 2D, color profile will be ignored."

    invoke-virtual {v0, v6}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->processWarningOccurred(Ljava/lang/String;)V

    :cond_7
    :goto_2
    move-object v15, v3

    goto :goto_5

    :cond_8
    :goto_3
    invoke-static {v7}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->getColorSpace(I)Ljava/awt/color/ColorSpace;

    move-result-object v6

    instance-of v7, v6, Ljava/awt/color/ICC_ColorSpace;

    if-eqz v7, :cond_a

    const-string v7, "No embedded ICC color profile, defaulting to \"generic\" CMYK ICC profile. Colors may look incorrect."

    invoke-virtual {v0, v7}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->processWarningOccurred(Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v7

    invoke-virtual {v7}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v7

    if-eq v6, v7, :cond_9

    new-instance v7, Ljava/awt/image/ColorConvertOp;

    invoke-virtual {v9}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v8

    invoke-virtual {v8}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v8

    invoke-direct {v7, v6, v8, v3}, Ljava/awt/image/ColorConvertOp;-><init>(Ljava/awt/color/ColorSpace;Ljava/awt/color/ColorSpace;Ljava/awt/RenderingHints;)V

    move-object v6, v7

    goto :goto_4

    :cond_9
    move-object v6, v3

    goto :goto_4

    :cond_a
    const-string v6, "No embedded ICC color profile, will convert using inaccurate CMYK to RGB conversion. Colors may look incorrect."

    invoke-virtual {v0, v6}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->processWarningOccurred(Ljava/lang/String;)V

    new-instance v6, Lcom/sunia/HTREnginev2/a9g;

    invoke-direct {v6}, Lcom/sunia/HTREnginev2/a9g;-><init>()V

    :goto_4
    move-object v15, v6

    :goto_5
    if-nez v1, :cond_b

    iget-object v1, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f:Ljavax/imageio/ImageReader;

    invoke-virtual {v1}, Ljavax/imageio/ImageReader;->getDefaultReadParam()Ljavax/imageio/ImageReadParam;

    move-result-object v1

    goto :goto_6

    :cond_b
    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOParam;->getSourceRegion()Ljava/awt/Rectangle;

    move-result-object v3

    :goto_6
    move-object v14, v3

    new-instance v11, Ljava/awt/Rectangle;

    invoke-direct {v11}, Ljava/awt/Rectangle;-><init>()V

    new-instance v12, Ljava/awt/Rectangle;

    invoke-direct {v12}, Ljava/awt/Rectangle;-><init>()V

    move-object v3, v1

    move-object v6, v9

    move-object v7, v11

    move-object v8, v12

    invoke-static/range {v3 .. v8}, Ljavax/imageio/ImageReader;->computeRegions(Ljavax/imageio/ImageReadParam;IILjava/awt/image/BufferedImage;Ljava/awt/Rectangle;Ljava/awt/Rectangle;)V

    invoke-virtual {v1}, Ljavax/imageio/IIOParam;->getSubsamplingXOffset()I

    move-result v3

    invoke-virtual {v1}, Ljavax/imageio/IIOParam;->getSubsamplingYOffset()I

    move-result v4

    neg-int v5, v3

    neg-int v6, v4

    invoke-virtual {v11, v5, v6}, Ljava/awt/Rectangle;->translate(II)V

    iget v5, v11, Ljava/awt/Rectangle;->width:I

    add-int/2addr v5, v3

    iput v5, v11, Ljava/awt/Rectangle;->width:I

    iget v3, v11, Ljava/awt/Rectangle;->height:I

    add-int/2addr v3, v4

    iput v3, v11, Ljava/awt/Rectangle;->height:I

    :try_start_0
    invoke-virtual {v1, v11}, Ljavax/imageio/IIOParam;->setSourceRegion(Ljava/awt/Rectangle;)V

    iget-object v0, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f:Ljavax/imageio/ImageReader;

    move/from16 v3, p1

    invoke-virtual {v0, v3, v1}, Ljavax/imageio/ImageReader;->readRaster(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/Raster;

    move-result-object v0

    sget-object v3, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->YCbCr:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    if-eq v2, v3, :cond_e

    sget-object v3, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->YCbCrA:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    if-ne v2, v3, :cond_c

    goto :goto_7

    :cond_c
    sget-object v3, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->YCCK:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    if-ne v2, v3, :cond_d

    invoke-static {v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->convertYCCK2CMYK(Ljava/awt/image/Raster;)V

    goto :goto_8

    :cond_d
    sget-object v3, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->CMYK:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    if-ne v2, v3, :cond_f

    invoke-static {v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->G(Ljava/awt/image/Raster;)V

    goto :goto_8

    :cond_e
    :goto_7
    invoke-static {v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->convertYCbCr2RGB(Ljava/awt/image/Raster;)V

    :cond_f
    :goto_8
    iget v11, v12, Ljava/awt/Rectangle;->x:I

    iget v12, v12, Ljava/awt/Rectangle;->y:I

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getWidth()I

    move-result v13

    invoke-virtual {v0}, Ljava/awt/image/Raster;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    const/16 v16, 0x0

    invoke-virtual {v1}, Ljavax/imageio/ImageReadParam;->getDestinationBands()[I

    move-result-object v17
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v4, v14

    move v14, v2

    move-object v6, v15

    move v15, v3

    :try_start_1
    invoke-virtual/range {v10 .. v17}, Ljava/awt/image/WritableRaster;->createWritableChild(IIIIII[I)Ljava/awt/image/WritableRaster;

    move-result-object v2

    if-eqz v6, :cond_10

    invoke-interface {v6, v0, v2}, Ljava/awt/image/RasterOp;->filter(Ljava/awt/image/Raster;Ljava/awt/image/WritableRaster;)Ljava/awt/image/WritableRaster;

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0}, Ljava/awt/image/WritableRaster;->setRect(IILjava/awt/image/Raster;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_9
    invoke-virtual {v1, v4}, Ljavax/imageio/IIOParam;->setSourceRegion(Ljava/awt/Rectangle;)V

    return-object v9

    :catchall_0
    move-exception v0

    goto :goto_a

    :catchall_1
    move-exception v0

    move-object v4, v14

    :goto_a
    invoke-virtual {v1, v4}, Ljavax/imageio/IIOParam;->setSourceRegion(Ljava/awt/Rectangle;)V

    throw v0
.end method

.method public final L()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegment;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    :try_start_0
    iget-object v0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    sget-object v1, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->n:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/twelvemonkeys/imageio/metadata/jpeg/JPEGSegmentUtil;->readSegments(Ljavax/imageio/stream/ImageInputStream;Ljava/util/Map;)Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catch Ljavax/imageio/IIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    sget-boolean v1, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->l:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :goto_0
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    throw v0
.end method

.method public final M(I)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/ImageReaderBase;->checkBounds(I)V

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->i:Ljava/util/List;

    if-nez v0, :cond_8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->i:Ljava/util/List;

    new-instance v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$e;-><init>(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$a;)V

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->y()Lcom/sunia/HTREnginev2/tqi;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/sunia/HTREnginev2/tqi;->k:[B

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->i:Ljava/util/List;

    new-instance v3, Lcom/sunia/HTREnginev2/uqi;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    invoke-direct {v3, v0, p1, v4, v1}, Lcom/sunia/HTREnginev2/uqi;-><init>(Lcom/sunia/HTREnginev2/ohn;IILcom/sunia/HTREnginev2/tqi;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->z()Lcom/sunia/HTREnginev2/vqi;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v1, v6, Lcom/sunia/HTREnginev2/vqi;->e:[B

    if-eqz v1, :cond_2

    iget v1, v6, Lcom/sunia/HTREnginev2/vqi;->d:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_1

    const/16 v2, 0x13

    if-eq v1, v2, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown JFXX extension code: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v6, Lcom/sunia/HTREnginev2/vqi;->d:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->processWarningOccurred(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->i:Ljava/util/List;

    new-instance v8, Lcom/sunia/HTREnginev2/wqi;

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->C()Ljavax/imageio/ImageReader;

    move-result-object v3

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    move-object v1, v8

    move-object v2, v0

    move v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/sunia/HTREnginev2/wqi;-><init>(Lcom/sunia/HTREnginev2/ohn;Ljavax/imageio/ImageReader;IILcom/sunia/HTREnginev2/vqi;)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_0
    const p1, 0xffe1

    const-string v1, "Exif"

    invoke-virtual {p0, p1, v1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->w(ILjava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/HTREnginev2/gd;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/gd;->b()Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const-string p1, "Exif chunk has no data."

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->processWarningOccurred(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_3
    new-instance v7, Ljavax/imageio/stream/MemoryCacheImageInputStream;

    invoke-direct {v7, p1}, Ljavax/imageio/stream/MemoryCacheImageInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance p1, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;

    invoke-direct {p1}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;-><init>()V

    invoke-virtual {p1, v7}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->read(Ljavax/imageio/stream/ImageInputStream;)Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object p1

    check-cast p1, Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;

    invoke-interface {p1}, Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;->directoryCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;->getDirectory(I)Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object v6

    const/16 p1, 0x103

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v6, p1}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-interface {p1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    invoke-interface {p1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EXIF IFD with unknown compression (expected 1 or 6): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->processWarningOccurred(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    :goto_1
    const/16 p1, 0x202

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v6, p1}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-lez p1, :cond_6

    goto :goto_2

    :cond_6
    const-string p1, "EXIF IFD with empty (zero-length) thumbnail"

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->processWarningOccurred(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->i:Ljava/util/List;

    new-instance v8, Lcom/sunia/HTREnginev2/gkf;

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->C()Ljavax/imageio/ImageReader;

    move-result-object v3

    const/4 v4, 0x0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    move-object v1, v8

    move-object v2, v0

    invoke-direct/range {v1 .. v7}, Lcom/sunia/HTREnginev2/gkf;-><init>(Lcom/sunia/HTREnginev2/ohn;Ljavax/imageio/ImageReader;IILcom/twelvemonkeys/imageio/metadata/Directory;Ljavax/imageio/stream/ImageInputStream;)V

    invoke-interface {p1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    return-void
.end method

.method public abort()V
    .locals 0

    invoke-super {p0}, Ljavax/imageio/ImageReader;->abort()V

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f:Ljavax/imageio/ImageReader;

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->abort()V

    return-void
.end method

.method public canReadRaster()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f:Ljavax/imageio/ImageReader;

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->canReadRaster()Z

    move-result p0

    return p0
.end method

.method public dispose()V
    .locals 1

    invoke-super {p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase;->dispose()V

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->h:Ljavax/imageio/ImageReader;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavax/imageio/ImageReader;->dispose()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->h:Ljavax/imageio/ImageReader;

    :cond_0
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f:Ljavax/imageio/ImageReader;

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->dispose()V

    return-void
.end method

.method public ensureDisplayProfile(Ljava/awt/color/ICC_Profile;)Ljava/awt/color/ICC_Profile;
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/awt/color/ICC_Profile;->getProfileClass()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/awt/color/ICC_Profile;->getData()[B

    move-result-object v0

    const/16 v1, 0x40

    aget-byte v1, v0, v1

    if-nez v1, :cond_0

    const-string p1, "ICC profile is Perceptual, ignoring, treating as Display class"

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->processWarningOccurred(Ljava/lang/String;)V

    const p0, 0x6d6e7472

    const/16 p1, 0xc

    invoke-static {p0, v0, p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->F(I[BI)V

    invoke-static {v0}, Ljava/awt/color/ICC_Profile;->getInstance([B)Ljava/awt/color/ICC_Profile;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1
.end method

.method public getDefaultReadParam()Ljavax/imageio/ImageReadParam;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f:Ljavax/imageio/ImageReader;

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->getDefaultReadParam()Ljavax/imageio/ImageReadParam;

    move-result-object p0

    return-object p0
.end method

.method public getEmbeddedICCProfile(Z)Ljava/awt/color/ICC_Profile;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0xffe2

    const-string v1, "ICC_PROFILE"

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->w(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/gd;

    new-instance v1, Ljava/io/DataInputStream;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/gd;->b()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v0

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    if-eq v0, v4, :cond_0

    if-eq v3, v4, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Unexpected number of \'ICC_PROFILE\' chunks: %d of %d. Ignoring ICC profile."

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->processWarningOccurred(Ljava/lang/String;)V

    return-object v2

    :cond_0
    invoke-virtual {p0, v1, p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->J(Ljava/io/InputStream;Z)Ljava/awt/color/ICC_Profile;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_b

    new-instance v1, Ljava/io/DataInputStream;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/HTREnginev2/gd;

    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/gd;->b()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v6

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-eq v6, v7, :cond_3

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v7

    const-string v8, "Bad \'ICC_PROFILE\' chunk count: %d. Ignoring ICC profile."

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->processWarningOccurred(Ljava/lang/String;)V

    if-nez p1, :cond_2

    return-object v2

    :cond_2
    move v7, v4

    goto :goto_0

    :cond_3
    move v7, v3

    :goto_0
    if-nez v7, :cond_4

    if-ge v5, v4, :cond_4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    const-string v9, "Invalid \'ICC_PROFILE\' chunk index: %d. Ignoring ICC profile."

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->processWarningOccurred(Ljava/lang/String;)V

    if-nez p1, :cond_4

    return-object v2

    :cond_4
    if-eqz v7, :cond_5

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    goto :goto_1

    :cond_5
    move v2, v6

    :goto_1
    new-array v8, v2, [Ljava/io/InputStream;

    if-eqz v7, :cond_6

    goto :goto_2

    :cond_6
    add-int/lit8 v3, v5, -0x1

    :goto_2
    aput-object v1, v8, v3

    :goto_3
    if-ge v4, v2, :cond_a

    new-instance v1, Ljava/io/DataInputStream;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/gd;

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/gd;->b()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v3

    if-nez v7, :cond_8

    invoke-virtual {v1}, Ljava/io/DataInputStream;->readUnsignedByte()I

    move-result v5

    if-ne v5, v6, :cond_7

    goto :goto_4

    :cond_7
    new-instance p0, Ljavax/imageio/IIOException;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "Bad number of \'ICC_PROFILE\' chunks: %d of %d."

    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    :goto_4
    if-eqz v7, :cond_9

    move v3, v4

    goto :goto_5

    :cond_9
    add-int/lit8 v3, v3, -0x1

    :goto_5
    aput-object v1, v8, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_a
    new-instance v0, Ljava/io/SequenceInputStream;

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/SequenceInputStream;-><init>(Ljava/util/Enumeration;)V

    invoke-virtual {p0, v0, p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->J(Ljava/io/InputStream;Z)Ljava/awt/color/ICC_Profile;

    move-result-object p0

    return-object p0

    :cond_b
    return-object v2
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f:Ljavax/imageio/ImageReader;

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->getFormatName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHeight(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/ImageReaderBase;->checkBounds(I)V

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->A()Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;

    move-result-object v0

    iget v1, v0, Lcom/sunia/HTREnginev2/sdm;->a:I

    const v2, 0xffc3

    if-ne v1, v2, :cond_0

    iget p0, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->c:I

    return p0

    :cond_0
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f:Ljavax/imageio/ImageReader;

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->getHeight(I)I

    move-result p0

    return p0
.end method

.method public getImageMetadata(I)Ljavax/imageio/metadata/IIOMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/ImageReaderBase;->checkBounds(I)V

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/twelvemonkeys/imageio/plugins/jpeg/a;

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->k:Ljava/util/List;

    invoke-direct {p1, p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/a;-><init>(Ljava/util/List;)V

    return-object p1

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f:Ljavax/imageio/ImageReader;

    invoke-virtual {v0, p1}, Ljavax/imageio/ImageReader;->getImageMetadata(I)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NegativeArraySizeException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljavax/imageio/metadata/IIOMetadata;->getMetadataFormatNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v1, "javax_imageio_jpeg_image_1.0"

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->j:Lcom/sunia/HTREnginev2/xqi;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sunia/HTREnginev2/xqi;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/xqi;-><init>(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;)V

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->j:Lcom/sunia/HTREnginev2/xqi;

    :cond_1
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->j:Lcom/sunia/HTREnginev2/xqi;

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/xqi;->a(Ljavax/imageio/metadata/IIOMetadata;)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/imageio/IIOException;

    const-string v0, "Corrupt JPEG data: Bad component count"

    invoke-direct {p1, v0, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Ljavax/imageio/IIOException;

    const-string v0, "Corrupt JPEG data: Bad segment length"

    invoke-direct {p1, v0, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getImageTypes(I)Ljava/util/Iterator;
    .locals 7
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

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f:Ljavax/imageio/ImageReader;

    invoke-virtual {v0, p1}, Ljavax/imageio/ImageReader;->getImageTypes(I)Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->y()Lcom/sunia/HTREnginev2/tqi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->v()Lcom/sunia/HTREnginev2/d9;

    move-result-object v1

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->A()Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->B(Lcom/sunia/HTREnginev2/tqi;Lcom/sunia/HTREnginev2/d9;Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;)Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    move-result-object v0

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->CMYK:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->YCCK:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-object p1

    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createFromBufferedImageType(I)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createFromBufferedImageType(I)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, 0x4

    invoke-static {v2}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createFromBufferedImageType(I)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->getEmbeddedICCProfile(Z)Ljava/awt/color/ICC_Profile;

    move-result-object p0

    sget-object v4, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->CMYK:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    const/4 v5, 0x2

    const/4 v6, 0x3

    if-eq v0, v4, :cond_6

    sget-object v4, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->YCCK:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    if-ne v0, v4, :cond_2

    goto :goto_2

    :cond_2
    sget-object v4, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->YCbCr:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    if-eq v0, v4, :cond_5

    sget-object v4, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->RGB:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    if-ne v0, v4, :cond_3

    goto :goto_1

    :cond_3
    sget-object v4, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->YCbCrA:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    if-eq v0, v4, :cond_4

    sget-object v4, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->RGBA:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    if-ne v0, v4, :cond_8

    :cond_4
    new-array v0, v2, [Ljavax/imageio/ImageTypeSpecifier;

    invoke-static {v5}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createFromBufferedImageType(I)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v2

    aput-object v2, v0, v3

    const/4 v2, 0x6

    invoke-static {v2}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createFromBufferedImageType(I)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v6}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createFromBufferedImageType(I)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v2

    aput-object v2, v0, v5

    const/4 v2, 0x7

    invoke-static {v2}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createFromBufferedImageType(I)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v2

    aput-object v2, v0, v6

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v3, v0}, Ljava/util/ArrayList;->addAll(ILjava/util/Collection;)Z

    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/awt/color/ICC_Profile;->getNumComponents()I

    move-result v0

    if-ne v0, v6, :cond_8

    invoke-static {p0}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->createColorSpace(Ljava/awt/color/ICC_Profile;)Ljava/awt/color/ICC_ColorSpace;

    move-result-object p0

    filled-new-array {v3, v1, v5, v6}, [I

    move-result-object v0

    invoke-static {p0, v0, v3, v1, v3}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    :goto_1
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/awt/color/ICC_Profile;->getNumComponents()I

    move-result v0

    if-ne v0, v6, :cond_8

    invoke-static {p0}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->createColorSpace(Ljava/awt/color/ICC_Profile;)Ljava/awt/color/ICC_ColorSpace;

    move-result-object p0

    filled-new-array {v3, v1, v5}, [I

    move-result-object v0

    invoke-static {p0, v0, v3, v3, v3}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_6
    :goto_2
    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/awt/color/ICC_Profile;->getNumComponents()I

    move-result v0

    if-ne v0, v2, :cond_7

    invoke-static {p0}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->createColorSpace(Ljava/awt/color/ICC_Profile;)Ljava/awt/color/ICC_ColorSpace;

    move-result-object p0

    filled-new-array {v6, v5, v1, v3}, [I

    move-result-object v0

    invoke-static {p0, v0, v3, v3, v3}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    const/16 p0, 0x1389

    invoke-static {p0}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->getColorSpace(I)Ljava/awt/color/ColorSpace;

    move-result-object p0

    filled-new-array {v6, v5, v1, v3}, [I

    move-result-object v0

    invoke-static {p0, v0, v3, v3, v3}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    :goto_3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getNumImages(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f:Ljavax/imageio/ImageReader;

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->getNumImages(Z)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public getNumThumbnails(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->M(I)V

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->i:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getRawImageType(I)Ljavax/imageio/ImageTypeSpecifier;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f:Ljavax/imageio/ImageReader;

    invoke-virtual {v0, p1}, Ljavax/imageio/ImageReader;->getRawImageType(I)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p1
    :try_end_0
    .catch Ljavax/imageio/IIOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    return-object p1

    :catch_0
    :cond_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->y()Lcom/sunia/HTREnginev2/tqi;

    move-result-object p1

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->v()Lcom/sunia/HTREnginev2/d9;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->A()Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->B(Lcom/sunia/HTREnginev2/tqi;Lcom/sunia/HTREnginev2/d9;Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;)Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    move-result-object p1

    sget-object v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader$c;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->getEmbeddedICCProfile(Z)Ljava/awt/color/ICC_Profile;

    move-result-object p0

    const/4 v1, 0x2

    const/4 v2, 0x3

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/awt/color/ICC_Profile;->getNumComponents()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    invoke-static {p0}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->createColorSpace(Ljava/awt/color/ICC_Profile;)Ljava/awt/color/ICC_ColorSpace;

    move-result-object p0

    filled-new-array {v2, v1, v0, p1}, [I

    move-result-object v0

    invoke-static {p0, v0, p1, p1, p1}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0

    :cond_2
    const/16 p0, 0x1389

    invoke-static {p0}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->getColorSpace(I)Ljava/awt/color/ColorSpace;

    move-result-object p0

    filled-new-array {v2, v1, v0, p1}, [I

    move-result-object v0

    invoke-static {p0, v0, p1, p1, p1}, Lcom/twelvemonkeys/imageio/util/ImageTypeSpecifiers;->createInterleaved(Ljava/awt/color/ColorSpace;[IIZZ)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    return-object p0
.end method

.method public getStreamMetadata()Ljavax/imageio/metadata/IIOMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f:Ljavax/imageio/ImageReader;

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->getStreamMetadata()Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailHeight(II)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->t(II)V

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->i:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/phn;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/phn;->a()I

    move-result p0

    return p0
.end method

.method public getThumbnailWidth(II)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->t(II)V

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->i:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/phn;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/phn;->b()I

    move-result p0

    return p0
.end method

.method public getWidth(I)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/ImageReaderBase;->checkBounds(I)V

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->A()Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;

    move-result-object v0

    iget v1, v0, Lcom/sunia/HTREnginev2/sdm;->a:I

    const v2, 0xffc3

    if-ne v1, v2, :cond_0

    iget p0, v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->d:I

    return p0

    :cond_0
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f:Ljavax/imageio/ImageReader;

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->getWidth(I)I

    move-result p0

    return p0
.end method

.method public isRandomAccessEasy(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f:Ljavax/imageio/ImageReader;

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->isRandomAccessEasy(I)Z

    move-result p0

    return p0
.end method

.method public processWarningOccurred(Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/ImageReaderBase;->assertInput()V

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/ImageReaderBase;->checkBounds(I)V

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->A()Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;

    move-result-object v3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->getEmbeddedICCProfile(Z)Ljava/awt/color/ICC_Profile;

    move-result-object v5

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->v()Lcom/sunia/HTREnginev2/d9;

    move-result-object v1

    if-eqz v1, :cond_3

    iget v2, v1, Lcom/sunia/HTREnginev2/d9;->g:I

    const/4 v4, 0x3

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne v2, v7, :cond_0

    invoke-virtual {v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b()I

    move-result v2

    if-ne v2, v4, :cond_1

    :cond_0
    iget v2, v1, Lcom/sunia/HTREnginev2/d9;->g:I

    if-ne v2, v6, :cond_3

    invoke-virtual {v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b()I

    move-result v2

    const/4 v8, 0x4

    if-eq v2, v8, :cond_3

    :cond_1
    new-array v2, v4, [Ljava/lang/Object;

    iget v1, v1, Lcom/sunia/HTREnginev2/d9;->g:I

    if-ne v1, v6, :cond_2

    const-string v1, "YCCK/CMYK"

    goto :goto_0

    :cond_2
    const-string v1, "YCC/RGB"

    :goto_0
    aput-object v1, v2, v0

    iget v0, v3, Lcom/sunia/HTREnginev2/sdm;->a:I

    and-int/lit8 v0, v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v7

    invoke-virtual {v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v6

    const-string v0, "Invalid Adobe App14 marker. Indicates %s data, but SOF%d has %d color component(s). Ignoring Adobe App14 marker."

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->processWarningOccurred(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v0, v7

    :cond_3
    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->y()Lcom/sunia/HTREnginev2/tqi;

    move-result-object v2

    invoke-static {v2, v1, v3}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->B(Lcom/sunia/HTREnginev2/tqi;Lcom/sunia/HTREnginev2/d9;Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;)Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    move-result-object v4

    iget v1, v3, Lcom/sunia/HTREnginev2/sdm;->a:I

    const v2, 0xffc3

    if-ne v1, v2, :cond_4

    new-instance p1, Lcom/sunia/HTREnginev2/yqi;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/yqi;-><init>()V

    iget-object p2, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->k:Ljava/util/List;

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    invoke-virtual {p1, p2, p0}, Lcom/sunia/HTREnginev2/yqi;->a(Ljava/util/List;Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0

    :cond_4
    iget-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f:Ljavax/imageio/ImageReader;

    invoke-virtual {v1}, Ljavax/imageio/ImageReader;->canReadRaster()Z

    move-result v1

    if-eqz v1, :cond_8

    if-nez v0, :cond_6

    sget-object v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->CMYK:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    if-eq v4, v0, :cond_6

    sget-object v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->YCCK:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    if-eq v4, v0, :cond_6

    if-eqz v5, :cond_5

    invoke-static {v5}, Lcom/twelvemonkeys/imageio/color/ColorSpaces;->isCS_sRGB(Ljava/awt/color/ICC_Profile;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    sget-object v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;->YCbCr:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;

    if-ne v4, v0, :cond_8

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->getRawImageType(I)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    if-eqz v0, :cond_8

    :cond_6
    sget-boolean v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->l:Z

    if-eqz v0, :cond_7

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Reading using raster and extra conversion"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ICC color profile: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v5}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->K(ILjavax/imageio/ImageReadParam;Lcom/twelvemonkeys/imageio/plugins/jpeg/Frame;Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGColorSpace;Ljava/awt/color/ICC_Profile;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0

    :cond_8
    sget-boolean v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->l:Z

    if-eqz v0, :cond_9

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Reading using delegate"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f:Ljavax/imageio/ImageReader;

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/ImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public readAsRenderedImage(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/RenderedImage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public readRaster(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/Raster;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/ImageReaderBase;->checkBounds(I)V

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->H()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p1, Lcom/sunia/HTREnginev2/yqi;

    invoke-direct {p1}, Lcom/sunia/HTREnginev2/yqi;-><init>()V

    iget-object p2, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->k:Ljava/util/List;

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    invoke-virtual {p1, p2, p0}, Lcom/sunia/HTREnginev2/yqi;->b(Ljava/util/List;Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/Raster;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f:Ljavax/imageio/ImageReader;

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/ImageReader;->readRaster(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/Raster;

    move-result-object p0

    return-object p0
.end method

.method public readThumbnail(II)Ljava/awt/image/BufferedImage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->t(II)V

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->i:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/phn;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/phn;->f()Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public readerSupportsThumbnails()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public resetMembers()V
    .locals 2

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f:Ljavax/imageio/ImageReader;

    invoke-virtual {v0}, Ljavax/imageio/ImageReader;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->k:Ljava/util/List;

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->i:Ljava/util/List;

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->h:Ljavax/imageio/ImageReader;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljavax/imageio/ImageReader;->reset()V

    :cond_0
    iput-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->j:Lcom/sunia/HTREnginev2/xqi;

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->E()V

    return-void
.end method

.method public setInput(Ljava/lang/Object;ZZ)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/twelvemonkeys/imageio/ImageReaderBase;->setInput(Ljava/lang/Object;ZZ)V

    iget-object p1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->f:Ljavax/imageio/ImageReader;

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/ImageReaderBase;->imageInput:Ljavax/imageio/stream/ImageInputStream;

    if-eqz p0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/ari;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/ari;-><init>(Ljavax/imageio/stream/ImageInputStream;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0, p2, p3}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public final t(II)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "thumbnailIndex < 0; %d"

    invoke-static {v2, v3, v4}, Lcom/twelvemonkeys/lang/Validate;->isTrue(ZLjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->getNumThumbnails(I)I

    move-result p0

    if-le p0, p2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string p1, "thumbnailIndex >= numThumbnails; %d"

    invoke-static {v0, p0, p1}, Lcom/twelvemonkeys/lang/Validate;->isTrue(ZLjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    return-void
.end method

.method public v()Lcom/sunia/HTREnginev2/d9;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0xffee

    const-string v1, "Adobe"

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->w(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/d9;

    :goto_0
    return-object p0
.end method

.method public w(ILjava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/gd;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->D()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/sdm;

    instance-of v3, v2, Lcom/sunia/HTREnginev2/gd;

    if-eqz v3, :cond_0

    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    iget v3, v2, Lcom/sunia/HTREnginev2/sdm;->a:I

    if-ne p1, v3, :cond_0

    :cond_1
    if-eqz p2, :cond_2

    move-object v3, v2

    check-cast v3, Lcom/sunia/HTREnginev2/gd;

    iget-object v3, v3, Lcom/sunia/HTREnginev2/gd;->b:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    if-ne v0, v3, :cond_3

    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    :cond_3
    check-cast v2, Lcom/sunia/HTREnginev2/gd;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method public final x()Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0xffe1

    const-string v1, "Exif"

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->w(ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/gd;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/gd;->b()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v0, "Exif chunk has no data."

    invoke-virtual {p0, v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->processWarningOccurred(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljavax/imageio/ImageIO;->createImageInputStream(Ljava/lang/Object;)Ljavax/imageio/stream/ImageInputStream;

    move-result-object p0

    new-instance v0, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;

    invoke-direct {v0}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;-><init>()V

    invoke-virtual {v0, p0}, Lcom/twelvemonkeys/imageio/metadata/exif/EXIFReader;->read(Ljavax/imageio/stream/ImageInputStream;)Lcom/twelvemonkeys/imageio/metadata/Directory;

    move-result-object p0

    check-cast p0, Lcom/twelvemonkeys/imageio/metadata/CompoundDirectory;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public y()Lcom/sunia/HTREnginev2/tqi;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0xffe0

    const-string v1, "JFIF"

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->w(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/tqi;

    :goto_0
    return-object p0
.end method

.method public z()Lcom/sunia/HTREnginev2/vqi;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const v0, 0xffe0

    const-string v1, "JFXX"

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->w(ILjava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/vqi;

    :goto_0
    return-object p0
.end method
