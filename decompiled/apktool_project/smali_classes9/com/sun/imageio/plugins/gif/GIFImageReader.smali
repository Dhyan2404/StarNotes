.class public Lcom/sun/imageio/plugins/gif/GIFImageReader;
.super Ljavax/imageio/ImageReader;
.source "SourceFile"


# static fields
.field private static defaultPalette:[B

.field static final interlaceIncrement:[I

.field static final interlaceOffset:[I


# instance fields
.field bitPos:I

.field block:[B

.field blockLength:I

.field clearCode:I

.field currIndex:I

.field decodeThisRow:Z

.field destY:I

.field destinationOffset:Ljava/awt/Point;

.field destinationRegion:Ljava/awt/Rectangle;

.field eofCode:I

.field private fallbackColorTable:[B

.field gotHeader:Z

.field height:I

.field imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

.field imageMetadataLength:I

.field imageStartPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field initCodeSize:I

.field interlacePass:I

.field lastBlockFound:Z

.field next32Bits:I

.field nextByte:I

.field numImages:I

.field rowBuf:[B

.field rowsDone:I

.field sourceMaxProgressivePass:I

.field sourceMinProgressivePass:I

.field sourceRegion:Ljava/awt/Rectangle;

.field sourceXSubsampling:I

.field sourceYSubsampling:I

.field stream:Ljavax/imageio/stream/ImageInputStream;

.field streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

.field streamX:I

.field streamY:I

.field theImage:Ljava/awt/image/BufferedImage;

.field theTile:Ljava/awt/image/WritableRaster;

.field updateMinY:I

.field updateYStep:I

.field width:I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x8

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, -0x1

    filled-new-array {v0, v0, v1, v2, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlaceIncrement:[I

    const/4 v0, 0x0

    const/4 v4, 0x1

    filled-new-array {v0, v1, v2, v4, v3}, [I

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlaceOffset:[I

    const/4 v0, 0x0

    sput-object v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->defaultPalette:[B

    return-void
.end method

.method public constructor <init>(Ljavax/imageio/spi/ImageReaderSpi;)V
    .locals 3

    invoke-direct {p0, p1}, Ljavax/imageio/ImageReader;-><init>(Ljavax/imageio/spi/ImageReaderSpi;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->gotHeader:Z

    iput-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->currIndex:I

    iput-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageStartPosition:Ljava/util/List;

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->numImages:I

    const/16 v2, 0xff

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->block:[B

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->blockLength:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->bitPos:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->nextByte:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->next32Bits:I

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->lastBlockFound:Z

    iput-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theImage:Ljava/awt/image/BufferedImage;

    iput-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theTile:Ljava/awt/image/WritableRaster;

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->width:I

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->height:I

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamX:I

    iput v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamY:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->rowsDone:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlacePass:I

    iput-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->fallbackColorTable:[B

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->decodeThisRow:Z

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destY:I

    return-void
.end method

.method private checkIndex(I)V
    .locals 1

    iget v0, p0, Ljavax/imageio/ImageReader;->minIndex:I

    if-lt p1, v0, :cond_1

    iget-boolean v0, p0, Ljavax/imageio/ImageReader;->seekForwardOnly:Z

    if-eqz v0, :cond_0

    iput p1, p0, Ljavax/imageio/ImageReader;->minIndex:I

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "imageIndex < minIndex!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private computeDecodeThisRow()V
    .locals 3

    iget v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destY:I

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v2, v1, Ljava/awt/Rectangle;->y:I

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    add-int/2addr v2, v1

    if-ge v0, v2, :cond_0

    iget v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamY:I

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v2, v1, Ljava/awt/Rectangle;->y:I

    if-lt v0, v2, :cond_0

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    sub-int/2addr v0, v2

    iget v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceYSubsampling:I

    rem-int/2addr v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->decodeThisRow:Z

    return-void
.end method

.method private concatenateBlocks()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    new-array v1, v0, [B

    :goto_0
    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v2

    if-nez v2, :cond_0

    return-object v1

    :cond_0
    array-length v3, v1

    add-int/2addr v3, v2

    new-array v3, v3, [B

    array-length v4, v1

    invoke-static {v1, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    array-length v1, v1

    invoke-interface {v4, v3, v1, v2}, Ljavax/imageio/stream/ImageInputStream;->readFully([BII)V

    move-object v1, v3

    goto :goto_0
.end method

.method private copyData([BI[B)I
    .locals 1

    array-length p0, p3

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p0, v0, :cond_0

    move p0, v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {p1, p2, p3, v0, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, p0

    return p2
.end method

.method private createIndexed([B[B[BI)Ljavax/imageio/ImageTypeSpecifier;
    .locals 17

    move-object/from16 v3, p1

    move-object/from16 v0, p0

    move/from16 v7, p4

    iget-object v0, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-boolean v1, v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorFlag:Z

    const/4 v8, 0x1

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorIndex:I

    array-length v1, v3

    sub-int/2addr v1, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    new-instance v9, Ljava/awt/image/IndexColorModel;

    array-length v2, v3

    move-object v0, v9

    move/from16 v1, p4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Ljava/awt/image/IndexColorModel;-><init>(II[B[B[BI)V

    goto :goto_0

    :cond_0
    new-instance v9, Ljava/awt/image/IndexColorModel;

    array-length v2, v3

    move-object v0, v9

    move/from16 v1, p4

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v5}, Ljava/awt/image/IndexColorModel;-><init>(II[B[B[B)V

    :goto_0
    const/16 v0, 0x8

    const/4 v1, 0x0

    if-ne v7, v0, :cond_1

    filled-new-array {v1}, [I

    move-result-object v16

    new-instance v0, Ljava/awt/image/PixelInterleavedSampleModel;

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x1

    move-object v10, v0

    invoke-direct/range {v10 .. v16}, Ljava/awt/image/PixelInterleavedSampleModel;-><init>(IIIII[I)V

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/awt/image/MultiPixelPackedSampleModel;

    invoke-direct {v0, v1, v8, v8, v7}, Ljava/awt/image/MultiPixelPackedSampleModel;-><init>(IIII)V

    :goto_1
    new-instance v1, Ljavax/imageio/ImageTypeSpecifier;

    invoke-direct {v1, v9, v0}, Ljavax/imageio/ImageTypeSpecifier;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/SampleModel;)V

    return-object v1
.end method

.method private getCode(II)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->bitPos:I

    add-int v1, v0, p1

    const/16 v2, 0x20

    if-le v1, v2, :cond_0

    iget p0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->eofCode:I

    return p0

    :cond_0
    iget v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->next32Bits:I

    shr-int/2addr v1, v0

    and-int/2addr p2, v1

    add-int/2addr v0, p1

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->bitPos:I

    :goto_0
    iget p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->bitPos:I

    const/16 v0, 0x8

    if-lt p1, v0, :cond_5

    iget-boolean v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->lastBlockFound:Z

    if-nez v1, :cond_5

    iget v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->next32Bits:I

    ushr-int/lit8 v0, v1, 0x8

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->next32Bits:I

    add-int/lit8 p1, p1, -0x8

    iput p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->bitPos:I

    iget p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->nextByte:I

    iget v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->blockLength:I

    if-lt p1, v0, :cond_4

    iget-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result p1

    iput p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->blockLength:I

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->lastBlockFound:Z

    return p2

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    if-lez p1, :cond_3

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->block:[B

    invoke-interface {v2, v3, v1, p1}, Ljavax/imageio/stream/ImageInputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    add-int/2addr v1, v2

    sub-int/2addr p1, v2

    goto :goto_1

    :cond_2
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Invalid block length for LZW encoded image data"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->nextByte:I

    :cond_4
    iget p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->next32Bits:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->block:[B

    iget v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->nextByte:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->nextByte:I

    aget-byte v0, v0, v1

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr p1, v0

    iput p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->next32Bits:I

    goto :goto_0

    :cond_5
    return p2
.end method

.method private static declared-synchronized getDefaultPalette()[B
    .locals 10

    const-class v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->defaultPalette:[B

    if-nez v1, :cond_0

    new-instance v1, Ljava/awt/image/BufferedImage;

    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-direct {v1, v3, v3, v2}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {v1}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    check-cast v1, Ljava/awt/image/IndexColorModel;

    invoke-virtual {v1}, Ljava/awt/image/IndexColorModel;->getMapSize()I

    move-result v2

    new-array v3, v2, [B

    new-array v4, v2, [B

    new-array v5, v2, [B

    invoke-virtual {v1, v3}, Ljava/awt/image/IndexColorModel;->getReds([B)V

    invoke-virtual {v1, v4}, Ljava/awt/image/IndexColorModel;->getGreens([B)V

    invoke-virtual {v1, v5}, Ljava/awt/image/IndexColorModel;->getBlues([B)V

    mul-int/lit8 v1, v2, 0x3

    new-array v1, v1, [B

    sput-object v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->defaultPalette:[B

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_0

    sget-object v6, Lcom/sun/imageio/plugins/gif/GIFImageReader;->defaultPalette:[B

    mul-int/lit8 v7, v1, 0x3

    add-int/lit8 v8, v7, 0x0

    aget-byte v9, v3, v1

    aput-byte v9, v6, v8

    add-int/lit8 v8, v7, 0x1

    aget-byte v9, v4, v1

    aput-byte v9, v6, v8

    add-int/lit8 v7, v7, 0x2

    aget-byte v8, v5, v1

    aput-byte v8, v6, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->defaultPalette:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private initNext32Bits()V
    .locals 3

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->block:[B

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x1

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    const/4 v2, 0x2

    aget-byte v2, v0, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    const/4 v2, 0x3

    aget-byte v0, v0, v2

    shl-int/lit8 v0, v0, 0x18

    or-int/2addr v0, v1

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->next32Bits:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->nextByte:I

    return-void
.end method

.method private locateImage(I)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->readHeader()V

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageStartPosition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageStartPosition:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-interface {v2, v3, v4}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    :goto_0
    if-ge v0, p1, :cond_1

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->skipImage()Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, -0x1

    return v0

    :cond_0
    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageStartPosition:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->currIndex:I

    if-eq v0, p1, :cond_2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    :cond_2
    iput p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->currIndex:I

    return p1

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/imageio/IIOException;

    const-string v0, "Couldn\'t seek!"

    invoke-direct {p1, v0, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private outputPixels([BI)V
    .locals 6

    iget v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlacePass:I

    iget v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceMinProgressivePass:I

    if-lt v0, v1, :cond_9

    iget v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceMaxProgressivePass:I

    if-le v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p2, :cond_9

    iget v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamX:I

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v3, v3, Ljava/awt/Rectangle;->x:I

    if-lt v2, v3, :cond_1

    iget-object v4, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->rowBuf:[B

    sub-int v3, v2, v3

    aget-byte v5, p1, v1

    aput-byte v5, v4, v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamX:I

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->width:I

    if-ne v2, v3, :cond_8

    iget v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->rowsDone:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->rowsDone:I

    const/high16 v3, 0x42c80000    # 100.0f

    int-to-float v2, v2

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->height:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-virtual {p0, v2}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    iget-boolean v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->decodeThisRow:Z

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->outputRow()V

    :cond_3
    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamX:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-boolean v2, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->interlaceFlag:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamY:I

    sget-object v3, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlaceIncrement:[I

    iget v4, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlacePass:I

    aget v3, v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamY:I

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->height:I

    if-lt v2, v3, :cond_7

    iget-object v2, p0, Ljavax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theImage:Ljava/awt/image/BufferedImage;

    invoke-virtual {p0, v2}, Ljavax/imageio/ImageReader;->processPassComplete(Ljava/awt/image/BufferedImage;)V

    :cond_4
    iget v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlacePass:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlacePass:I

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceMaxProgressivePass:I

    if-le v2, v3, :cond_5

    return-void

    :cond_5
    sget-object v3, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlaceOffset:[I

    aget v3, v3, v2

    iput v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamY:I

    invoke-direct {p0, v2}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->startPass(I)V

    goto :goto_1

    :cond_6
    iget v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamY:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamY:I

    :cond_7
    :goto_1
    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v2, v2, Ljava/awt/Rectangle;->y:I

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamY:I

    iget-object v4, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v4, v4, Ljava/awt/Rectangle;->y:I

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceYSubsampling:I

    div-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destY:I

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->computeDecodeThisRow()V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_9
    :goto_2
    return-void
.end method

.method private outputRow()V
    .locals 11

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v0, v0, Ljava/awt/Rectangle;->width:I

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->width:I

    iget v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceXSubsampling:I

    mul-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->x:I

    iget v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceXSubsampling:I

    const/4 v3, 0x1

    const/4 v8, 0x0

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theTile:Ljava/awt/image/WritableRaster;

    iget v4, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destY:I

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->rowBuf:[B

    move v3, v1

    move v5, v0

    invoke-virtual/range {v2 .. v7}, Ljava/awt/image/WritableRaster;->setDataElements(IIIILjava/lang/Object;)V

    :cond_0
    move v4, v1

    goto :goto_1

    :cond_1
    move v2, v8

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theTile:Ljava/awt/image/WritableRaster;

    iget v4, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destY:I

    iget-object v5, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->rowBuf:[B

    aget-byte v5, v5, v2

    and-int/lit16 v5, v5, 0xff

    invoke-virtual {v3, v1, v4, v8, v5}, Ljava/awt/image/WritableRaster;->setSample(IIII)V

    iget v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceXSubsampling:I

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :goto_1
    iget-object v1, p0, Ljavax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    if-eqz v1, :cond_2

    filled-new-array {v8}, [I

    move-result-object v10

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theImage:Ljava/awt/image/BufferedImage;

    iget v5, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destY:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    iget v9, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->updateYStep:I

    move-object v2, p0

    move v6, v0

    invoke-virtual/range {v2 .. v10}, Ljavax/imageio/ImageReader;->processImageUpdate(Ljava/awt/image/BufferedImage;IIIIII[I)V

    :cond_2
    return-void
.end method

.method private readHeader()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->gotHeader:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-interface {v0, v1}, Ljavax/imageio/stream/ImageInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    const/4 v0, 0x6

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1, v0}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    new-instance v1, Ljava/lang/StringBuilder;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    aget-byte v3, v0, v2

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x4

    aget-byte v3, v0, v3

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v3, 0x5

    aget-byte v0, v0, v3

    int-to-char v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->version:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->logicalScreenWidth:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->logicalScreenHeight:I

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v0

    and-int/lit16 v1, v0, 0x80

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    iget-object v5, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    shr-int/lit8 v6, v0, 0x4

    and-int/lit8 v6, v6, 0x7

    add-int/2addr v6, v4

    iput v6, v5, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->colorResolution:I

    and-int/lit8 v6, v0, 0x8

    if-eqz v6, :cond_2

    move v3, v4

    :cond_2
    iput-boolean v3, v5, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->sortFlag:Z

    and-int/lit8 v0, v0, 0x7

    add-int/2addr v0, v4

    shl-int v0, v4, v0

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v5, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->backgroundColorIndex:I

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    iget-object v5, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v5}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v5

    iput v5, v3, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->pixelAspectRatio:I

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    mul-int/2addr v0, v2

    new-array v0, v0, [B

    iput-object v0, v1, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->globalColorTable:[B

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1, v0}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->globalColorTable:[B

    :goto_1
    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageStartPosition:Ljava/util/List;

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    iput-boolean v4, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->gotHeader:Z

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "I/O error reading header!"

    invoke-direct {v0, v1, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Input not set!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readMetadata()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_10

    :try_start_0
    new-instance v0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    :goto_0
    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v2

    const/16 v3, 0x2c

    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageLeftPosition:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageTopPosition:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageWidth:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageHeight:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v2

    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_0

    move v3, v6

    goto :goto_1

    :cond_0
    move v3, v5

    :goto_1
    iget-object v7, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    and-int/lit8 v8, v2, 0x40

    if-eqz v8, :cond_1

    move v8, v6

    goto :goto_2

    :cond_1
    move v8, v5

    :goto_2
    iput-boolean v8, v7, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->interlaceFlag:Z

    and-int/lit8 v8, v2, 0x20

    if-eqz v8, :cond_2

    move v5, v6

    :cond_2
    iput-boolean v5, v7, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->sortFlag:Z

    and-int/lit8 v2, v2, 0x7

    add-int/2addr v2, v6

    shl-int v2, v6, v2

    if-eqz v3, :cond_3

    mul-int/2addr v2, v4

    new-array v2, v2, [B

    iput-object v2, v7, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3, v2}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    goto :goto_3

    :cond_3
    const/4 v2, 0x0

    iput-object v2, v7, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    :goto_3
    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-int v0, v2

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadataLength:I

    return-void

    :cond_4
    const/16 v3, 0x21

    if-ne v2, v3, :cond_e

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v2

    const/16 v3, 0xf9

    if-ne v2, v3, :cond_7

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v2

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    shr-int/lit8 v7, v2, 0x2

    and-int/2addr v4, v7

    iput v4, v3, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->disposalMethod:I

    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_5

    move v4, v6

    goto :goto_4

    :cond_5
    move v4, v5

    :goto_4
    iput-boolean v4, v3, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->userInputFlag:Z

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    move v5, v6

    :cond_6
    iput-boolean v5, v3, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorFlag:Z

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v2

    iput v2, v3, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->delayTime:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->transparentColorIndex:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    goto/16 :goto_0

    :cond_7
    if-ne v2, v6, :cond_8

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iput-boolean v6, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->hasPlainTextExtension:Z

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridLeft:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridTop:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridWidth:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textGridHeight:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->characterCellWidth:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->characterCellHeight:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textForegroundColor:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v3

    iput v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->textBackgroundColor:I

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->concatenateBlocks()[B

    move-result-object v3

    iput-object v3, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->text:[B

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0xfe

    if-ne v2, v3, :cond_a

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->concatenateBlocks()[B

    move-result-object v2

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v4, v3, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->comments:Ljava/util/List;

    if-nez v4, :cond_9

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v3, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->comments:Ljava/util/List;

    :cond_9
    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v3, v3, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->comments:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0xff

    if-ne v2, v3, :cond_d

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v2

    const/16 v3, 0x8

    new-array v3, v3, [B

    new-array v4, v4, [B

    new-array v6, v2, [B

    iget-object v7, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v7, v6}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    invoke-direct {p0, v6, v5, v3}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->copyData([BI[B)I

    move-result v7

    invoke-direct {p0, v6, v7, v4}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->copyData([BI[B)I

    move-result v7

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->concatenateBlocks()[B

    move-result-object v8

    if-ge v7, v2, :cond_b

    sub-int/2addr v2, v7

    array-length v9, v8

    add-int/2addr v9, v2

    new-array v9, v9, [B

    invoke-static {v6, v7, v9, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v6, v8

    invoke-static {v8, v5, v9, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v8, v9

    :cond_b
    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v5, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationIDs:Ljava/util/List;

    if-nez v5, :cond_c

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationIDs:Ljava/util/List;

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->authenticationCodes:Ljava/util/List;

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationData:Ljava/util/List;

    :cond_c
    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationIDs:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->authenticationCodes:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v2, v2, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->applicationData:Ljava/util/List;

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_d
    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v2

    iget-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3, v2}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    if-gtz v2, :cond_d

    goto/16 :goto_0

    :cond_e
    const/16 p0, 0x3b

    if-ne v2, p0, :cond_f

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Attempt to read past end of image sequence!"

    invoke-direct {p0, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected block type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljavax/imageio/IIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "I/O error reading image metadata!"

    invoke-direct {v0, v1, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    throw p0

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Input not set!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private resetStreamSettings()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->gotHeader:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    const/4 v2, -0x1

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->currIndex:I

    iput-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageStartPosition:Ljava/util/List;

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->numImages:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->blockLength:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->bitPos:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->nextByte:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->next32Bits:I

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->lastBlockFound:Z

    iput-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theImage:Ljava/awt/image/BufferedImage;

    iput-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theTile:Ljava/awt/image/WritableRaster;

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->width:I

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->height:I

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamX:I

    iput v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamY:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->rowsDone:I

    iput v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlacePass:I

    iput-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->fallbackColorTable:[B

    return-void
.end method

.method private skipImage()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v1

    const/16 v2, 0x2c

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    const/16 v2, 0x8

    invoke-interface {v1, v2}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v1

    and-int/lit16 v2, v1, 0x80

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    and-int/lit8 v1, v1, 0x7

    add-int/2addr v1, v3

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    shl-int v1, v3, v1

    mul-int/lit8 v1, v1, 0x3

    invoke-interface {v2, v1}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    :cond_0
    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1, v3}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    :cond_1
    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v1

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2, v1}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    if-gtz v1, :cond_1

    return v3

    :cond_2
    const/16 v2, 0x3b

    if-ne v1, v2, :cond_3

    return v0

    :cond_3
    const/16 v2, 0x21

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    :cond_4
    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v1

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2, v1}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    if-gtz v1, :cond_4

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    return v0

    :cond_6
    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v1

    iget-object v2, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2, v1}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-gtz v1, :cond_6

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "I/O error locating image!"

    invoke-direct {v0, v1, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    return v0
.end method

.method private startPass(I)V
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Ljavax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-boolean v1, v1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->interlaceFlag:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlaceOffset:[I

    iget v2, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlacePass:I

    aget v12, v1, v2

    sget-object v1, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlaceIncrement:[I

    aget v16, v1, v2

    iget-object v3, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget-object v4, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destinationOffset:Ljava/awt/Point;

    iget-object v1, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v5, v1, Ljava/awt/Rectangle;->x:I

    iget v6, v1, Ljava/awt/Rectangle;->y:I

    iget v13, v1, Ljava/awt/Rectangle;->width:I

    add-int v2, v5, v13

    const/16 v17, 0x1

    add-int/lit8 v7, v2, -0x1

    iget v1, v1, Ljava/awt/Rectangle;->height:I

    add-int v2, v6, v1

    add-int/lit8 v8, v2, -0x1

    iget v9, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceXSubsampling:I

    iget v10, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceYSubsampling:I

    const/4 v11, 0x0

    add-int v1, v1, v16

    add-int/lit8 v1, v1, -0x1

    div-int v14, v1, v16

    const/4 v15, 0x1

    invoke-static/range {v3 .. v16}, Lcom/sun/imageio/plugins/common/ReaderUtil;->computeUpdatedPixels(Ljava/awt/Rectangle;Ljava/awt/Point;IIIIIIIIIIII)[I

    move-result-object v1

    aget v6, v1, v17

    iput v6, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->updateMinY:I

    const/4 v2, 0x5

    aget v8, v1, v2

    iput v8, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->updateYStep:I

    const/4 v1, 0x0

    filled-new-array {v1}, [I

    move-result-object v9

    iget-object v1, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theImage:Ljava/awt/image/BufferedImage;

    iget v2, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlacePass:I

    iget v3, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceMinProgressivePass:I

    iget v4, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceMaxProgressivePass:I

    const/4 v5, 0x0

    const/4 v7, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v9}, Ljavax/imageio/ImageReader;->processPassStarted(Ljava/awt/image/BufferedImage;IIIIIII[I)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
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
            Ljavax/imageio/IIOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->checkIndex(I)V

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->locateImage(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->readMetadata()V

    iget-object p0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget p0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageHeight:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getImageMetadata(I)Ljavax/imageio/metadata/IIOMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->checkIndex(I)V

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->locateImage(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->readMetadata()V

    iget-object p0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "Bad image index!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getImageTypes(I)Ljava/util/Iterator;
    .locals 9
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
            Ljavax/imageio/IIOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->checkIndex(I)V

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->locateImage(I)I

    move-result v0

    if-ne v0, p1, :cond_8

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->readMetadata()V

    new-instance p1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget-object v1, v1, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->localColorTable:[B

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->fallbackColorTable:[B

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    iget-object v1, v1, Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;->globalColorTable:[B

    :goto_0
    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->fallbackColorTable:[B

    if-nez v1, :cond_1

    const-string v1, "Use default color table."

    invoke-virtual {p0, v1}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    invoke-static {}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->getDefaultPalette()[B

    move-result-object v1

    iput-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->fallbackColorTable:[B

    :cond_1
    iget-object v1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->fallbackColorTable:[B

    :cond_2
    array-length v2, v1

    div-int/lit8 v2, v2, 0x3

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    move v3, v0

    goto :goto_1

    :cond_3
    const/4 v4, 0x4

    if-ne v2, v4, :cond_4

    goto :goto_1

    :cond_4
    const/16 v3, 0x8

    if-eq v2, v3, :cond_5

    const/16 v5, 0x10

    if-ne v2, v5, :cond_6

    :cond_5
    move v3, v4

    :cond_6
    :goto_1
    shl-int/2addr v0, v3

    new-array v4, v0, [B

    new-array v5, v0, [B

    new-array v0, v0, [B

    const/4 v6, 0x0

    move v7, v6

    :goto_2
    if-ge v6, v2, :cond_7

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v1, v7

    aput-byte v7, v4, v6

    add-int/lit8 v7, v8, 0x1

    aget-byte v8, v1, v8

    aput-byte v8, v5, v6

    add-int/lit8 v8, v7, 0x1

    aget-byte v7, v1, v7

    aput-byte v7, v0, v6

    add-int/lit8 v6, v6, 0x1

    move v7, v8

    goto :goto_2

    :cond_7
    invoke-direct {p0, v4, v5, v0, v3}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->createIndexed([B[B[BI)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_8
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getNumImages(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Ljavax/imageio/ImageReader;->seekForwardOnly:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "seekForwardOnly and allowSearch can\'t both be true!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->numImages:I

    if-lez v0, :cond_2

    return v0

    :cond_2
    if-eqz p1, :cond_3

    const p1, 0x7fffffff

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->locateImage(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->numImages:I

    :cond_3
    iget p0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->numImages:I

    return p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Input not set!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStreamMetadata()Ljavax/imageio/metadata/IIOMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->readHeader()V

    iget-object p0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/gif/GIFStreamMetadata;

    return-object p0
.end method

.method public getWidth(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->checkIndex(I)V

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->locateImage(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->readMetadata()V

    iget-object p0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget p0, p0, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageWidth:I

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public initializeStringTable([I[B[B[I)V
    .locals 3

    iget p0, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->initCodeSize:I

    const/4 v0, 0x1

    shl-int p0, v0, p0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, p0, :cond_0

    aput v2, p1, v1

    int-to-byte v2, v1

    aput-byte v2, p2, v1

    aput-byte v2, p3, v1

    aput v0, p4, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    const/16 p2, 0x1000

    if-ge p0, p2, :cond_1

    aput v2, p1, p0

    aput v0, p4, p0

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    if-eqz v1, :cond_e

    invoke-direct/range {p0 .. p1}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->checkIndex(I)V

    invoke-direct/range {p0 .. p1}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->locateImage(I)I

    move-result v1

    move/from16 v2, p1

    if-ne v1, v2, :cond_d

    invoke-direct/range {p0 .. p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->readMetadata()V

    if-nez p2, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->getDefaultReadParam()Ljavax/imageio/ImageReadParam;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object/from16 v1, p2

    :goto_0
    invoke-virtual/range {p0 .. p1}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->getImageTypes(I)Ljava/util/Iterator;

    move-result-object v3

    iget-object v4, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget v5, v4, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageWidth:I

    iget v4, v4, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageHeight:I

    invoke-static {v1, v3, v5, v4}, Ljavax/imageio/ImageReader;->getDestination(Ljavax/imageio/ImageReadParam;Ljava/util/Iterator;II)Ljava/awt/image/BufferedImage;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theImage:Ljava/awt/image/BufferedImage;

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v9}, Ljava/awt/image/BufferedImage;->getWritableTile(II)Ljava/awt/image/WritableRaster;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theTile:Ljava/awt/image/WritableRaster;

    iget-object v3, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/gif/GIFImageMetadata;

    iget v4, v3, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageWidth:I

    iput v4, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->width:I

    iget v3, v3, Lcom/sun/imageio/plugins/gif/GIFImageMetadata;->imageHeight:I

    iput v3, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->height:I

    iput v9, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamX:I

    iput v9, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamY:I

    iput v9, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->rowsDone:I

    iput v9, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlacePass:I

    new-instance v3, Ljava/awt/Rectangle;

    invoke-direct {v3, v9, v9, v9, v9}, Ljava/awt/Rectangle;-><init>(IIII)V

    iput-object v3, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceRegion:Ljava/awt/Rectangle;

    new-instance v8, Ljava/awt/Rectangle;

    invoke-direct {v8, v9, v9, v9, v9}, Ljava/awt/Rectangle;-><init>(IIII)V

    iput-object v8, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v4, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->width:I

    iget v5, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->height:I

    iget-object v6, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theImage:Ljava/awt/image/BufferedImage;

    iget-object v7, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceRegion:Ljava/awt/Rectangle;

    move-object v3, v1

    invoke-static/range {v3 .. v8}, Ljavax/imageio/ImageReader;->computeRegions(Ljavax/imageio/ImageReadParam;IILjava/awt/image/BufferedImage;Ljava/awt/Rectangle;Ljava/awt/Rectangle;)V

    new-instance v3, Ljava/awt/Point;

    iget-object v4, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v5, v4, Ljava/awt/Rectangle;->x:I

    iget v4, v4, Ljava/awt/Rectangle;->y:I

    invoke-direct {v3, v5, v4}, Ljava/awt/Point;-><init>(II)V

    iput-object v3, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destinationOffset:Ljava/awt/Point;

    invoke-virtual {v1}, Ljavax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceXSubsampling:I

    invoke-virtual {v1}, Ljavax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceYSubsampling:I

    invoke-virtual {v1}, Ljavax/imageio/ImageReadParam;->getSourceMinProgressivePass()I

    move-result v3

    invoke-static {v3, v9}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceMinProgressivePass:I

    invoke-virtual {v1}, Ljavax/imageio/ImageReadParam;->getSourceMaxProgressivePass()I

    move-result v1

    const/4 v3, 0x3

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceMaxProgressivePass:I

    iget-object v1, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destinationRegion:Ljava/awt/Rectangle;

    iget v1, v1, Ljava/awt/Rectangle;->y:I

    iget v3, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->streamY:I

    iget-object v4, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceRegion:Ljava/awt/Rectangle;

    iget v4, v4, Ljava/awt/Rectangle;->y:I

    sub-int/2addr v3, v4

    iget v4, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->sourceYSubsampling:I

    div-int/2addr v3, v4

    add-int/2addr v1, v3

    iput v1, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->destY:I

    invoke-direct/range {p0 .. p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->computeDecodeThisRow()V

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->clearAbortRequest()V

    invoke-virtual/range {p0 .. p1}, Ljavax/imageio/ImageReader;->processImageStarted(I)V

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->processReadAborted()V

    iget-object v0, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theImage:Ljava/awt/image/BufferedImage;

    return-object v0

    :cond_1
    invoke-direct {v0, v9}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->startPass(I)V

    iget v1, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->width:I

    new-array v1, v1, [B

    iput-object v1, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->rowBuf:[B

    :try_start_0
    iget-object v1, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->initCodeSize:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_c

    const/16 v3, 0x8

    if-gt v1, v3, :cond_c

    iget-object v1, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedByte()I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->blockLength:I

    move v3, v9

    :goto_1
    if-lez v1, :cond_3

    iget-object v4, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    iget-object v5, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->block:[B

    invoke-interface {v4, v5, v3, v1}, Ljavax/imageio/stream/ImageInputStream;->read([BII)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    sub-int/2addr v1, v4

    add-int/2addr v3, v4

    goto :goto_1

    :cond_2
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "Invalid block length for LZW encoded image data"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iput v9, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->bitPos:I

    iput v9, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->nextByte:I

    iput-boolean v9, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->lastBlockFound:Z

    iput v9, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->interlacePass:I

    invoke-direct/range {p0 .. p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->initNext32Bits()V

    iget v1, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->initCodeSize:I

    shl-int v1, v2, v1

    iput v1, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->clearCode:I

    add-int/2addr v1, v2

    iput v1, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->eofCode:I

    const/16 v1, 0x1000

    new-array v3, v1, [I

    new-array v4, v1, [B

    new-array v5, v1, [B

    new-array v6, v1, [I

    new-array v7, v1, [B

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->initializeStringTable([I[B[B[I)V

    iget v8, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->initCodeSize:I

    shl-int v10, v2, v8

    add-int/lit8 v10, v10, 0x2

    add-int/2addr v8, v2

    shl-int v11, v2, v8

    sub-int/2addr v11, v2

    :cond_4
    invoke-direct {v0, v8, v11}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->getCode(II)I

    move-result v12

    iget v13, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->clearCode:I

    if-ne v12, v13, :cond_6

    invoke-virtual {v0, v3, v4, v5, v6}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->initializeStringTable([I[B[B[I)V

    iget v8, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->initCodeSize:I

    shl-int v9, v2, v8

    add-int/lit8 v9, v9, 0x2

    add-int/lit8 v8, v8, 0x1

    shl-int v10, v2, v8

    sub-int/2addr v10, v2

    invoke-direct {v0, v8, v10}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->getCode(II)I

    move-result v11

    iget v12, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->eofCode:I

    if-ne v11, v12, :cond_5

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->processImageComplete()V

    iget-object v0, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theImage:Ljava/awt/image/BufferedImage;

    return-object v0

    :cond_5
    move/from16 v16, v10

    move v10, v9

    move v9, v11

    move/from16 v11, v16

    goto :goto_3

    :cond_6
    iget v13, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->eofCode:I

    if-ne v12, v13, :cond_7

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->processImageComplete()V

    iget-object v0, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theImage:Ljava/awt/image/BufferedImage;

    return-object v0

    :cond_7
    if-ge v12, v10, :cond_8

    move v13, v12

    goto :goto_2

    :cond_8
    if-eq v12, v10, :cond_9

    const-string v13, "Out-of-sequence code!"

    invoke-virtual {v0, v13}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    :cond_9
    move v13, v9

    :goto_2
    aput v9, v3, v10

    aget-byte v13, v5, v13

    aput-byte v13, v4, v10

    aget-byte v13, v5, v9

    aput-byte v13, v5, v10

    aget v9, v6, v9

    add-int/2addr v9, v2

    aput v9, v6, v10

    add-int/lit8 v10, v10, 0x1

    shl-int v9, v2, v8

    if-ne v10, v9, :cond_a

    if-ge v10, v1, :cond_a

    add-int/lit8 v8, v8, 0x1

    shl-int v9, v2, v8

    sub-int/2addr v9, v2

    move v11, v9

    :cond_a
    move v9, v12

    :goto_3
    aget v12, v6, v9

    add-int/lit8 v13, v12, -0x1

    move v14, v9

    :goto_4
    if-ltz v13, :cond_b

    aget-byte v15, v4, v14

    aput-byte v15, v7, v13

    aget v14, v3, v14

    add-int/lit8 v13, v13, -0x1

    goto :goto_4

    :cond_b
    invoke-direct {v0, v7, v12}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->outputPixels([BI)V

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageReader;->processReadAborted()V

    iget-object v0, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->theImage:Ljava/awt/image/BufferedImage;

    return-object v0

    :cond_c
    new-instance v1, Ljavax/imageio/IIOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad code size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->initCodeSize:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    new-instance v1, Ljavax/imageio/IIOException;

    const-string v2, "I/O error reading image!"

    invoke-direct {v1, v2, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "imageIndex out of bounds!"

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Input not set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Ljavax/imageio/ImageReader;->reset()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->resetStreamSettings()V

    return-void
.end method

.method public setInput(Ljava/lang/Object;ZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    if-eqz p1, :cond_1

    instance-of p2, p1, Ljavax/imageio/stream/ImageInputStream;

    if-eqz p2, :cond_0

    check-cast p1, Ljavax/imageio/stream/ImageInputStream;

    iput-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input not an ImageInputStream!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/gif/GIFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    :goto_0
    invoke-direct {p0}, Lcom/sun/imageio/plugins/gif/GIFImageReader;->resetStreamSettings()V

    return-void
.end method
