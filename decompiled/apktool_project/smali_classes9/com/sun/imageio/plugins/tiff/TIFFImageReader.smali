.class public Lcom/sun/imageio/plugins/tiff/TIFFImageReader;
.super Ljavax/imageio/ImageReader;
.source "SourceFile"


# static fields
.field private static final BITS_PER_SAMPLE_MAX:I = 0x40

.field private static final SAMPLES_PER_PIXEL_MAX:I = 0x400


# instance fields
.field private bitsPerSample:[I

.field private colorMap:[C

.field private compression:I

.field private currIndex:I

.field private decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

.field private destinationBands:[I

.field private dstHeight:I

.field private dstMinX:I

.field private dstMinY:I

.field private dstWidth:I

.field private dstXOffset:I

.field private dstYOffset:I

.field private extraSamples:[I

.field private gotHeader:Z

.field private height:I

.field private imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

.field private imageReadParam:Ljavax/imageio/ImageReadParam;

.field private imageStartPosition:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private imageTypeMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Ljavax/imageio/ImageTypeSpecifier;",
            ">;>;"
        }
    .end annotation
.end field

.field private numBands:I

.field private numImages:I

.field private photometricInterpretation:I

.field private pixelsRead:I

.field private pixelsToRead:I

.field private planarConfiguration:I

.field private sampleFormat:[I

.field private samplesPerPixel:I

.field private sourceBands:[I

.field private sourceXOffset:I

.field private sourceYOffset:I

.field private srcXSubsampling:I

.field private srcYSubsampling:I

.field private stream:Ljavax/imageio/stream/ImageInputStream;

.field private streamMetadata:Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

.field private theImage:Ljava/awt/image/BufferedImage;

.field private tileOrStripHeight:I

.field private tileOrStripWidth:I

.field private tilesAcross:I

.field private tilesDown:I

.field private width:I


# direct methods
.method public constructor <init>(Ljavax/imageio/spi/ImageReaderSpi;)V
    .locals 2

    invoke-direct {p0, p1}, Ljavax/imageio/ImageReader;-><init>(Ljavax/imageio/spi/ImageReaderSpi;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->gotHeader:Z

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getDefaultReadParam()Ljavax/imageio/ImageReadParam;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageReadParam:Ljavax/imageio/ImageReadParam;

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->currIndex:I

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageStartPosition:Ljava/util/List;

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->numImages:I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageTypeMap:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->theImage:Ljava/awt/image/BufferedImage;

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->width:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->height:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->numBands:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->tileOrStripWidth:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->tileOrStripHeight:I

    const/4 p1, 0x1

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->planarConfiguration:I

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

.method private decodeTile(III)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/awt/Rectangle;

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->tileOrStripWidth:I

    mul-int v2, p1, v1

    iget v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->tileOrStripHeight:I

    mul-int v4, p2, v3

    invoke-direct {v0, v2, v4, v1, v3}, Ljava/awt/Rectangle;-><init>(IIII)V

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->currIndex:I

    invoke-virtual {p0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->isImageTiled(I)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/awt/Rectangle;

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->width:I

    iget v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->height:I

    const/4 v4, 0x0

    invoke-direct {v1, v4, v4, v2, v3}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {v0, v1}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object v0

    :cond_0
    iget v1, v0, Ljava/awt/Rectangle;->width:I

    if-lez v1, :cond_4

    iget v2, v0, Ljava/awt/Rectangle;->height:I

    if-gtz v2, :cond_1

    goto/16 :goto_0

    :cond_1
    iget v3, v0, Ljava/awt/Rectangle;->x:I

    iget v0, v0, Ljava/awt/Rectangle;->y:I

    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->sourceXOffset:I

    sub-int v4, v3, v4

    iget v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->srcXSubsampling:I

    invoke-static {v4, v5}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->iceil(II)I

    move-result v4

    iput v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstMinX:I

    add-int v4, v3, v1

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->sourceXOffset:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->srcXSubsampling:I

    invoke-static {v4, v5}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->ifloor(II)I

    move-result v4

    iget v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->sourceYOffset:I

    sub-int v5, v0, v5

    iget v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->srcYSubsampling:I

    invoke-static {v5, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->iceil(II)I

    move-result v5

    iput v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstMinY:I

    add-int v5, v0, v2

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->sourceYOffset:I

    sub-int/2addr v5, v6

    iget v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->srcYSubsampling:I

    invoke-static {v5, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->ifloor(II)I

    move-result v5

    iget v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstMinX:I

    sub-int/2addr v4, v6

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstWidth:I

    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstMinY:I

    sub-int/2addr v5, v4

    add-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstHeight:I

    iget v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstXOffset:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstMinX:I

    iget v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstYOffset:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstMinY:I

    new-instance v4, Ljava/awt/Rectangle;

    iget v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstMinX:I

    iget v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstMinY:I

    iget v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstWidth:I

    iget v8, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstHeight:I

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/awt/Rectangle;-><init>(IIII)V

    iget-object v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->theImage:Ljava/awt/image/BufferedImage;

    invoke-virtual {v5}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v5

    invoke-virtual {v5}, Ljava/awt/image/Raster;->getBounds()Ljava/awt/Rectangle;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object v4

    iget v5, v4, Ljava/awt/Rectangle;->x:I

    iput v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstMinX:I

    iget v6, v4, Ljava/awt/Rectangle;->y:I

    iput v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstMinY:I

    iget v7, v4, Ljava/awt/Rectangle;->width:I

    iput v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstWidth:I

    iget v4, v4, Ljava/awt/Rectangle;->height:I

    iput v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstHeight:I

    if-lez v7, :cond_4

    if-gtz v4, :cond_2

    goto/16 :goto_0

    :cond_2
    iget v8, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstXOffset:I

    sub-int v9, v5, v8

    iget v10, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->srcXSubsampling:I

    mul-int/2addr v9, v10

    iget v11, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->sourceXOffset:I

    add-int/2addr v9, v11

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x1

    sub-int/2addr v5, v8

    mul-int/2addr v5, v10

    add-int/2addr v5, v11

    sub-int/2addr v5, v9

    add-int/lit8 v5, v5, 0x1

    iget v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstYOffset:I

    sub-int v8, v6, v7

    iget v10, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->srcYSubsampling:I

    mul-int/2addr v8, v10

    iget v11, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->sourceYOffset:I

    add-int/2addr v8, v11

    add-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    sub-int/2addr v6, v7

    mul-int/2addr v6, v10

    add-int/2addr v6, v11

    sub-int/2addr v6, v8

    add-int/lit8 v6, v6, 0x1

    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    invoke-virtual {v4, v3}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSrcMinX(I)V

    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    invoke-virtual {v3, v0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSrcMinY(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSrcWidth(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    invoke-virtual {v0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSrcHeight(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstMinX:I

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setDstMinX(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstMinY:I

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setDstMinY(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstWidth:I

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setDstWidth(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstHeight:I

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setDstHeight(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    invoke-virtual {v0, v9}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setActiveSrcMinX(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    invoke-virtual {v0, v8}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setActiveSrcMinY(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    invoke-virtual {v0, v5}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setActiveSrcWidth(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    invoke-virtual {v0, v6}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setActiveSrcHeight(I)V

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->tilesAcross:I

    mul-int/2addr p2, v0

    add-int/2addr p2, p1

    iget p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->planarConfiguration:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    mul-int/2addr v0, p3

    iget p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->tilesDown:I

    mul-int/2addr v0, p1

    add-int/2addr p2, v0

    :cond_3
    invoke-direct {p0, p2}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getTileOrStripOffset(I)J

    move-result-wide v0

    invoke-direct {p0, p2}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getTileOrStripByteCount(I)J

    move-result-wide p1

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    invoke-virtual {v2, p3}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setPlanarBand(I)V

    iget-object p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-virtual {p3, v2}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setStream(Ljavax/imageio/stream/ImageInputStream;)V

    iget-object p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    invoke-virtual {p3, v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setOffset(J)V

    iget-object p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    long-to-int p1, p1

    invoke-virtual {p3, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setByteCount(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    invoke-virtual {p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->beginDecoding()V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    invoke-virtual {p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->decode()V

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    :cond_4
    :goto_0
    return-void
.end method

.method private getCompression()I
    .locals 1

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v0, 0x103

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result p0

    return p0
.end method

.method private getHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->height:I

    return p0
.end method

.method private getPlanarConfiguration()I
    .locals 6

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v1, 0x11c

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getCompression()I

    move-result v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v3, 0x201

    invoke-virtual {v2, v3}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v0, "PlanarConfiguration \"Planar\" value inconsistent with JPEGInterchangeFormat; resetting to \"Chunky\"."

    invoke-virtual {p0, v0}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v3, 0x144

    invoke-virtual {v2, v3}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v3, 0x111

    invoke-virtual {v2, v3}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v2

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getTileOrStripWidth()I

    move-result v3

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getTileOrStripHeight()I

    move-result v4

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getWidth()I

    move-result v5

    add-int/2addr v5, v3

    sub-int/2addr v5, v1

    div-int/2addr v5, v3

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getHeight()I

    move-result v3

    add-int/2addr v3, v4

    sub-int/2addr v3, v1

    div-int/2addr v3, v4

    mul-int/2addr v5, v3

    invoke-virtual {v2}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsLongs()[J

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v2, v2

    if-ne v2, v5, :cond_2

    const-string v0, "PlanarConfiguration \"Planar\" value inconsistent with TileOffsets field value count; resetting to \"Chunky\"."

    invoke-virtual {p0, v0}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getTileOrStripHeight()I

    move-result v3

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getHeight()I

    move-result v4

    add-int/2addr v4, v3

    sub-int/2addr v4, v1

    div-int/2addr v4, v3

    invoke-virtual {v2}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsLongs()[J

    move-result-object v2

    if-eqz v2, :cond_2

    array-length v2, v2

    if-ne v2, v4, :cond_2

    const-string v0, "PlanarConfiguration \"Planar\" value inconsistent with StripOffsets field value count; resetting to \"Chunky\"."

    invoke-virtual {p0, v0}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move v1, v0

    :cond_3
    :goto_0
    return v1
.end method

.method private getTileOrStripByteCount(I)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v1, 0x145

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v1, 0x117

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v1, 0x202

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsLong(I)J

    move-result-wide p0

    goto :goto_1

    :cond_2
    const-string v0, "TIFF directory contains neither StripByteCounts nor TileByteCounts field: attempting to calculate from strip or tile width and height."

    invoke-virtual {p0, v0}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->bitsPerSample:[I

    const/4 v1, 0x0

    aget v0, v0, v1

    const/4 v1, 0x1

    :goto_0
    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->samplesPerPixel:I

    if-ge v1, v2, :cond_3

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->bitsPerSample:[I

    aget v2, v2, v1

    add-int/2addr v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getTileOrStripWidth()I

    move-result v1

    mul-int/2addr v1, v0

    add-int/lit8 v1, v1, 0x7

    div-int/lit8 v1, v1, 0x8

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getTileOrStripHeight()I

    move-result v0

    mul-int/2addr v1, v0

    int-to-long v0, v1

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->length()J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_4

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getTileOrStripOffset(I)J

    move-result-wide p0

    sub-long/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    goto :goto_1

    :cond_4
    const-string p1, "Stream length is unknown: cannot clamp estimated strip or tile byte count to EOF."

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    move-wide p0, v0

    :goto_1
    return-wide p0
.end method

.method private getTileOrStripHeight()I
    .locals 3

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v1, 0x143

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result p0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v2, 0x116

    invoke-virtual {v0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    const/4 v2, -0x1

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v0

    :goto_0
    if-ne v0, v2, :cond_2

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getHeight()I

    move-result v0

    :cond_2
    return v0
.end method

.method private getTileOrStripOffset(I)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v1, 0x144

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v1, 0x111

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v0, 0x201

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsLong(I)J

    move-result-wide p0

    return-wide p0

    :cond_2
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Missing required strip or tile offsets field."

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getTileOrStripWidth()I
    .locals 2

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v1, 0x142

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getWidth()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result p0

    :goto_0
    return p0
.end method

.method private getWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->width:I

    return p0
.end method

.method private static iceil(II)I
    .locals 1

    if-lez p0, :cond_0

    add-int/lit8 v0, p1, -0x1

    add-int/2addr p0, v0

    :cond_0
    div-int/2addr p0, p1

    return p0
.end method

.method private static ifloor(II)I
    .locals 1

    if-gez p0, :cond_0

    add-int/lit8 v0, p1, -0x1

    sub-int/2addr p0, v0

    :cond_0
    div-int/2addr p0, p1

    return p0
.end method

.method private initializeFromMetadata()V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v1, 0x103

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string v0, "Compression field is missing; assuming no compression"

    invoke-virtual {p0, v0}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->compression:I

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->compression:I

    :goto_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v3, 0x100

    invoke-virtual {v0, v3}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v2}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->width:I

    move v0, v2

    goto :goto_1

    :cond_1
    const-string v0, "ImageWidth field is missing."

    invoke-virtual {p0, v0}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    move v0, v1

    :goto_1
    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v5, 0x101

    invoke-virtual {v4, v5}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4, v2}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v4

    iput v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->height:I

    goto :goto_2

    :cond_2
    const-string v0, "ImageLength field is missing."

    invoke-virtual {p0, v0}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    move v0, v1

    :goto_2
    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v6, 0x115

    invoke-virtual {v4, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v4

    if-eqz v4, :cond_3

    invoke-virtual {v4, v2}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v4

    iput v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->samplesPerPixel:I

    goto :goto_3

    :cond_3
    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->samplesPerPixel:I

    move v0, v1

    :goto_3
    const/4 v4, 0x3

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v7, 0x201

    invoke-virtual {v0, v7}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v7, "JPEG"

    invoke-static {v7}, Ljavax/imageio/ImageIO;->getImageReadersByFormatName(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavax/imageio/ImageReader;

    :try_start_0
    iget-object v8, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v8}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    iget-object v8, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-virtual {v0, v2}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsLong(I)J

    move-result-wide v9

    invoke-interface {v8, v9, v10}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-virtual {v7, v0}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-virtual {v0, v3}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {v7, v2}, Ljavax/imageio/ImageReader;->getWidth(I)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->width:I

    :cond_4
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-virtual {v0, v5}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-virtual {v7, v2}, Ljavax/imageio/ImageReader;->getHeight(I)I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->height:I

    :cond_5
    invoke-virtual {v7, v2}, Ljavax/imageio/ImageReader;->getRawImageType(I)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-virtual {v3, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v3

    if-nez v3, :cond_7

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljavax/imageio/ImageTypeSpecifier;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v3

    goto :goto_4

    :cond_6
    move v3, v4

    :goto_4
    iput v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->samplesPerPixel:I

    :cond_7
    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljavax/imageio/ImageTypeSpecifier;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/awt/image/ColorModel;->getComponentSize(I)I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :cond_8
    const/16 v0, 0x8

    goto :goto_5

    :catch_0
    move v0, v1

    :goto_5
    invoke-virtual {v7}, Ljavax/imageio/ImageReader;->dispose()V

    goto :goto_6

    :cond_9
    move v0, v1

    :goto_6
    iget v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->samplesPerPixel:I

    if-lt v3, v1, :cond_1d

    const-string v5, ")"

    const-string v6, ") greater than allowed maximum ("

    const/16 v7, 0x400

    if-gt v3, v7, :cond_1c

    iput v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->numBands:I

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->colorMap:[C

    iget-object v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v8, 0x140

    invoke-virtual {v7, v8}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v7

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsChars()[C

    move-result-object v7

    iput-object v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->colorMap:[C

    :cond_a
    iget-object v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v8, 0x106

    invoke-virtual {v7, v8}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v7

    const/4 v8, 0x2

    const/4 v9, 0x4

    if-nez v7, :cond_10

    iget v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->compression:I

    if-eq v7, v8, :cond_f

    if-eq v7, v4, :cond_f

    if-ne v7, v9, :cond_b

    goto :goto_8

    :cond_b
    iget-object v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->colorMap:[C

    if-eqz v7, :cond_c

    iput v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->photometricInterpretation:I

    goto :goto_9

    :cond_c
    iget v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->samplesPerPixel:I

    if-eq v7, v4, :cond_e

    if-ne v7, v9, :cond_d

    goto :goto_7

    :cond_d
    const-string v7, "PhotometricInterpretation field is missing; assuming BlackIsZero"

    invoke-virtual {p0, v7}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->photometricInterpretation:I

    goto :goto_9

    :cond_e
    :goto_7
    iput v8, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->photometricInterpretation:I

    goto :goto_9

    :cond_f
    :goto_8
    const-string v7, "PhotometricInterpretation field is missing; assuming WhiteIsZero"

    invoke-virtual {p0, v7}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    iput v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->photometricInterpretation:I

    goto :goto_9

    :cond_10
    invoke-virtual {v7, v2}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v7

    iput v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->photometricInterpretation:I

    :goto_9
    iget-object v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v10, 0x153

    invoke-virtual {v7, v10}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v7

    iget v10, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->samplesPerPixel:I

    new-array v10, v10, [I

    iput-object v10, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->sampleFormat:[I

    if-nez v7, :cond_11

    move v11, v1

    move v10, v9

    goto :goto_a

    :cond_11
    invoke-virtual {v7}, Ljavax/imageio/plugins/tiff/TIFFField;->getCount()I

    move-result v10

    iget v11, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->samplesPerPixel:I

    if-eq v10, v11, :cond_12

    invoke-virtual {v7, v2}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v10

    move v11, v1

    goto :goto_a

    :cond_12
    const/4 v10, -0x1

    move v11, v2

    :goto_a
    move v12, v2

    :goto_b
    iget v13, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->samplesPerPixel:I

    if-ge v12, v13, :cond_15

    iget-object v13, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->sampleFormat:[I

    if-eqz v11, :cond_13

    move v14, v10

    goto :goto_c

    :cond_13
    invoke-virtual {v7, v12}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v14

    :goto_c
    aput v14, v13, v12

    iget-object v13, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->sampleFormat:[I

    aget v13, v13, v12

    if-eq v13, v1, :cond_14

    if-eq v13, v8, :cond_14

    if-eq v13, v4, :cond_14

    if-eq v13, v9, :cond_14

    const-string v13, "Illegal value for SAMPLE_FORMAT, assuming SAMPLE_FORMAT_UNDEFINED"

    invoke-virtual {p0, v13}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    iget-object v13, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->sampleFormat:[I

    aput v9, v13, v12

    :cond_14
    add-int/lit8 v12, v12, 0x1

    goto :goto_b

    :cond_15
    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v7, 0x102

    invoke-virtual {v4, v7}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v4

    iget v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->samplesPerPixel:I

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->bitsPerSample:[I

    if-nez v4, :cond_16

    goto :goto_d

    :cond_16
    invoke-virtual {v4}, Ljavax/imageio/plugins/tiff/TIFFField;->getCount()I

    move-result v0

    iget v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->samplesPerPixel:I

    if-eq v0, v7, :cond_17

    invoke-virtual {v4, v2}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v0

    goto :goto_d

    :cond_17
    move v1, v2

    move v0, v10

    :goto_d
    iget v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->samplesPerPixel:I

    if-ge v2, v7, :cond_1a

    iget-object v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->bitsPerSample:[I

    if-eqz v1, :cond_18

    move v8, v0

    goto :goto_e

    :cond_18
    invoke-virtual {v4, v2}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v8

    :goto_e
    aput v8, v7, v2

    iget-object v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->bitsPerSample:[I

    aget v7, v7, v2

    const/16 v8, 0x40

    if-gt v7, v8, :cond_19

    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    :cond_19
    new-instance v0, Ljavax/imageio/IIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bits per sample ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->bitsPerSample:[I

    aget p0, p0, v2

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    iput-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->extraSamples:[I

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v1, 0x152

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInts()[I

    move-result-object v0

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->extraSamples:[I

    :cond_1b
    return-void

    :cond_1c
    new-instance v0, Ljavax/imageio/IIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Samples per pixel ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->samplesPerPixel:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "Samples per pixel < 1!"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private locateImage(I)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->readHeader()V

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageStartPosition:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageStartPosition:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {v3, v4, v5}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    :goto_0
    if-ge v0, p1, :cond_3

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v2

    if-nez v2, :cond_0

    if-lez v0, :cond_2

    add-int/lit8 v0, v0, -0x1

    move p1, v0

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    mul-int/lit8 v2, v2, 0xc

    invoke-interface {v3, v2}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_1

    return v0

    :cond_1
    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v4, v2, v3}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageStartPosition:Ljava/util/List;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/imageio/IIOException;

    const-string v0, "Couldn\'t seek!"

    invoke-direct {p1, v0, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignored "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->forwardWarningMessage(Ljava/lang/String;)V

    if-lez v0, :cond_2

    add-int/lit8 v1, v0, -0x1

    :cond_2
    move p1, v1

    :cond_3
    :goto_1
    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->currIndex:I

    if-eq v0, p1, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    :cond_4
    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->currIndex:I

    return p1
.end method

.method private prepareRead(ILjavax/imageio/ImageReadParam;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_7

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getDefaultReadParam()Ljavax/imageio/ImageReadParam;

    move-result-object p2

    :cond_0
    iput-object p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageReadParam:Ljavax/imageio/ImageReadParam;

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->seekToImage(I)V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getTileOrStripWidth()I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->tileOrStripWidth:I

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getTileOrStripHeight()I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->tileOrStripHeight:I

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getPlanarConfiguration()I

    move-result v0

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->planarConfiguration:I

    invoke-virtual {p2}, Ljavax/imageio/IIOParam;->getSourceBands()[I

    move-result-object v0

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->sourceBands:[I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->numBands:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->sourceBands:[I

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->numBands:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->sourceBands:[I

    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getImageTypes(I)Ljava/util/Iterator;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sun/imageio/plugins/common/ImageUtil;->getDestinationType(Ljavax/imageio/ImageReadParam;Ljava/util/Iterator;)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/imageio/ImageTypeSpecifier;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p1

    invoke-virtual {p1}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result p1

    invoke-virtual {p2}, Ljavax/imageio/ImageReadParam;->getDestinationBands()[I

    move-result-object p2

    iput-object p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->destinationBands:[I

    if-nez p2, :cond_2

    new-array p2, p1, [I

    iput-object p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->destinationBands:[I

    move p2, v1

    :goto_1
    if-ge p2, p1, :cond_2

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->destinationBands:[I

    aput p2, v0, p2

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->sourceBands:[I

    array-length p2, p2

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->destinationBands:[I

    array-length v0, v0

    if-ne p2, v0, :cond_6

    :goto_2
    iget-object p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->sourceBands:[I

    array-length v0, p2

    if-ge v1, v0, :cond_5

    aget p2, p2, v1

    if-ltz p2, :cond_4

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->numBands:I

    if-ge p2, v0, :cond_4

    iget-object p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->destinationBands:[I

    aget p2, p2, v1

    if-ltz p2, :cond_3

    if-ge p2, p1, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Destination band out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Source band out of range!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    return-void

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "sourceBands.length != destinationBands.length"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Input not set!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private readHeader()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->gotHeader:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_4

    new-instance v0, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

    invoke-direct {v0}, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v0

    const/16 v1, 0x4d4d

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;->byteOrder:Ljava/nio/ByteOrder;

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v1}, Ljavax/imageio/stream/ImageInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    :cond_1
    const/16 v1, 0x4949

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;->byteOrder:Ljava/nio/ByteOrder;

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v1}, Ljavax/imageio/stream/ImageInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    :cond_2
    const-string v0, "Bad byte order in header, assuming little-endian"

    invoke-virtual {p0, v0}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;->byteOrder:Ljava/nio/ByteOrder;

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0, v1}, Ljavax/imageio/stream/ImageInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    :goto_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_3

    const-string v0, "Bad magic number in header, continuing"

    invoke-virtual {p0, v0}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v0

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2, v0, v1}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageStartPosition:Ljava/util/List;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->gotHeader:Z

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
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageReadParam:Ljavax/imageio/ImageReadParam;

    instance-of v1, v0, Ljavax/imageio/plugins/tiff/TIFFImageReadParam;

    if-eqz v1, :cond_1

    check-cast v0, Ljavax/imageio/plugins/tiff/TIFFImageReadParam;

    invoke-virtual {v0}, Ljavax/imageio/plugins/tiff/TIFFImageReadParam;->getAllowedTagSets()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/imageio/plugins/tiff/TIFFImageReadParam;->getReadUnknownTags()Z

    move-result v0

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    const/4 v0, 0x1

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;->getInstance()Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    :goto_0
    new-instance v2, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-direct {v2, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;-><init>(Ljava/util/List;)V

    iput-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    iget-boolean p0, p0, Ljavax/imageio/ImageReader;->ignoreMetadata:Z

    invoke-virtual {v2, v1, p0, v0}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->initializeFromStream(Ljavax/imageio/stream/ImageInputStream;ZZ)V
    :try_end_0
    .catch Ljavax/imageio/IIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "I/O error reading image metadata!"

    invoke-direct {v0, v1, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p0

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Input not set!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private reportProgress()V
    .locals 10

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->pixelsRead:I

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstWidth:I

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->pixelsRead:I

    const/high16 v1, 0x42c80000    # 100.0f

    int-to-float v0, v0

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->pixelsToRead:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    invoke-virtual {p0, v0}, Ljavax/imageio/ImageReader;->processImageProgress(F)V

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->theImage:Ljava/awt/image/BufferedImage;

    iget v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstMinX:I

    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstMinY:I

    iget v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstWidth:I

    iget v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstHeight:I

    const/4 v7, 0x1

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->destinationBands:[I

    move-object v1, p0

    invoke-virtual/range {v1 .. v9}, Ljavax/imageio/ImageReader;->processImageUpdate(Ljava/awt/image/BufferedImage;IIIIII[I)V

    return-void
.end method

.method private seekToImage(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->checkIndex(I)V

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->locateImage(I)I

    move-result v0

    if-ne v0, p1, :cond_0

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->readMetadata()V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->initializeFromMetadata()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "imageIndex out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public canReadRaster()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public forwardWarningMessage(Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    return-void
.end method

.method public getDefaultReadParam()Ljavax/imageio/ImageReadParam;
    .locals 0

    new-instance p0, Ljavax/imageio/plugins/tiff/TIFFImageReadParam;

    invoke-direct {p0}, Ljavax/imageio/plugins/tiff/TIFFImageReadParam;-><init>()V

    return-object p0
.end method

.method public getHeight(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->seekToImage(I)V

    .line 3
    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getHeight()I

    move-result p0

    return p0
.end method

.method public getImageMetadata(I)Ljavax/imageio/metadata/IIOMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->seekToImage(I)V

    new-instance p1, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getRootIFD()Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getTagSetList()Ljava/util/List;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;-><init>(Ljava/util/List;)V

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const-string v0, "javax_imageio_tiff_image_1.0"

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljavax/imageio/metadata/IIOMetadata;->setFromTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    return-object p1
.end method

.method public getImageTypes(I)Ljava/util/Iterator;
    .locals 18
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

    move-object/from16 v1, p0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    goto/16 :goto_7

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-direct/range {p0 .. p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->seekToImage(I)V

    iget v5, v1, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->photometricInterpretation:I

    iget v6, v1, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->compression:I

    iget v7, v1, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->samplesPerPixel:I

    iget-object v8, v1, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->bitsPerSample:[I

    iget-object v9, v1, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->sampleFormat:[I

    iget-object v10, v1, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->extraSamples:[I

    iget-object v11, v1, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->colorMap:[C

    invoke-static/range {v5 .. v11}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->getRawImageTypeSpecifier(III[I[I[I[C)Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v5

    iget-object v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const v6, 0x8773

    invoke-virtual {v0, v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v5}, Ljavax/imageio/ImageTypeSpecifier;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v6

    instance-of v6, v6, Ljava/awt/image/ComponentColorModel;

    if-eqz v6, :cond_8

    invoke-virtual {v5}, Ljavax/imageio/ImageTypeSpecifier;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v7

    invoke-virtual {v5}, Ljavax/imageio/ImageTypeSpecifier;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v8

    const/4 v9, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsBytes()[B

    move-result-object v0

    invoke-static {v0}, Ljava/awt/color/ICC_Profile;->getInstance([B)Ljava/awt/color/ICC_Profile;

    move-result-object v0

    new-instance v10, Ljava/awt/color/ICC_ColorSpace;

    invoke-direct {v10, v0}, Ljava/awt/color/ICC_ColorSpace;-><init>(Ljava/awt/color/ICC_Profile;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x3

    :try_start_1
    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-virtual {v10, v0}, Ljava/awt/color/ColorSpace;->toRGB([F)[F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v9, v10

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Superseding bad ICC profile: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    if-eqz v9, :cond_3

    invoke-virtual {v9}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v0

    const/4 v9, 0x5

    if-eq v0, v9, :cond_2

    const/4 v9, 0x6

    if-eq v0, v9, :cond_1

    goto :goto_1

    :cond_1
    const/16 v0, 0x3eb

    invoke-static {v0}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v10

    goto :goto_2

    :cond_2
    const/16 v0, 0x3e8

    invoke-static {v0}, Ljava/awt/color/ColorSpace;->getInstance(I)Ljava/awt/color/ColorSpace;

    move-result-object v10

    goto :goto_2

    :cond_3
    :goto_1
    move-object v10, v7

    :goto_2
    invoke-virtual {v8}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v0

    invoke-virtual {v10}, Ljava/awt/color/ColorSpace;->getNumComponents()I

    move-result v9

    if-eq v0, v9, :cond_5

    add-int/lit8 v11, v9, 0x1

    if-ne v0, v11, :cond_4

    goto :goto_3

    :cond_4
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_5
    :goto_3
    const/4 v11, 0x0

    if-eq v9, v0, :cond_6

    move v14, v4

    goto :goto_4

    :cond_6
    move v14, v11

    :goto_4
    if-eqz v14, :cond_7

    invoke-virtual {v6}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v0

    if-eqz v0, :cond_7

    move v15, v4

    goto :goto_5

    :cond_7
    move v15, v11

    :goto_5
    new-instance v0, Ljava/awt/image/ComponentColorModel;

    invoke-virtual {v6}, Ljava/awt/image/ColorModel;->getComponentSize()[I

    move-result-object v13

    invoke-virtual {v6}, Ljava/awt/image/ColorModel;->getTransparency()I

    move-result v16

    invoke-virtual {v6}, Ljava/awt/image/ColorModel;->getTransferType()I

    move-result v17

    move-object v11, v0

    move-object v12, v10

    invoke-direct/range {v11 .. v17}, Ljava/awt/image/ComponentColorModel;-><init>(Ljava/awt/color/ColorSpace;[IZZII)V

    new-instance v4, Ljavax/imageio/ImageTypeSpecifier;

    invoke-direct {v4, v0, v8}, Ljavax/imageio/ImageTypeSpecifier;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/SampleModel;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v0

    invoke-virtual {v10}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v4

    if-ne v0, v4, :cond_9

    invoke-virtual {v7}, Ljava/awt/color/ColorSpace;->getNumComponents()I

    move-result v0

    invoke-virtual {v10}, Ljava/awt/color/ColorSpace;->getNumComponents()I

    move-result v4

    if-ne v0, v4, :cond_9

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    :cond_8
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    :goto_6
    iget-object v0, v1, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageTypeMap:Ljava/util/HashMap;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v3

    :goto_7
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public getNumImages(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

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
    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->numImages:I

    if-lez v0, :cond_2

    return v0

    :cond_2
    if-eqz p1, :cond_3

    const p1, 0x7fffffff

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->locateImage(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->numImages:I

    :cond_3
    iget p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->numImages:I

    return p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Input not set!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNumThumbnails(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getStreamMetadata()Ljavax/imageio/metadata/IIOMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->readHeader()V

    .line 2
    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

    return-object p0
.end method

.method public getStreamMetadata(I)Ljavax/imageio/metadata/IIOMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->readHeader()V

    .line 4
    new-instance p0, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;-><init>()V

    const-string p1, "javax_imageio_tiff_stream_1.0"

    .line 5
    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;->getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 6
    invoke-virtual {p0, p1, v0}, Ljavax/imageio/metadata/IIOMetadata;->setFromTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    return-object p0
.end method

.method public getTileHeight(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->seekToImage(I)V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getTileOrStripHeight()I

    move-result p0

    return p0
.end method

.method public getTileWidth(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->seekToImage(I)V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getTileOrStripWidth()I

    move-result p0

    return p0
.end method

.method public getWidth(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->seekToImage(I)V

    .line 3
    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getWidth()I

    move-result p0

    return p0
.end method

.method public hasThumbnails(I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isImageTiled(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->seekToImage(I)V

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 p1, 0x142

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isRandomAccessEasy(I)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->currIndex:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->seekToImage(I)V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getCompression()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    move v1, p1

    :cond_0
    return v1
.end method

.method public read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->prepareRead(ILjavax/imageio/ImageReadParam;)V

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getImageTypes(I)Ljava/util/Iterator;

    move-result-object v0

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->width:I

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->height:I

    invoke-static {p2, v0, v1, v2}, Ljavax/imageio/ImageReader;->getDestination(Ljavax/imageio/ImageReadParam;Ljava/util/Iterator;II)Ljava/awt/image/BufferedImage;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->theImage:Ljava/awt/image/BufferedImage;

    iget-object p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageReadParam:Ljavax/imageio/ImageReadParam;

    invoke-virtual {p2}, Ljavax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result p2

    iput p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->srcXSubsampling:I

    iget-object p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageReadParam:Ljavax/imageio/ImageReadParam;

    invoke-virtual {p2}, Ljavax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result p2

    iput p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->srcYSubsampling:I

    iget-object p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageReadParam:Ljavax/imageio/ImageReadParam;

    invoke-virtual {p2}, Ljavax/imageio/IIOParam;->getDestinationOffset()Ljava/awt/Point;

    move-result-object p2

    iget v0, p2, Ljava/awt/Point;->x:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstXOffset:I

    iget p2, p2, Ljava/awt/Point;->y:I

    iput p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstYOffset:I

    new-instance p2, Ljava/awt/Rectangle;

    const/4 v6, 0x0

    invoke-direct {p2, v6, v6, v6, v6}, Ljava/awt/Rectangle;-><init>(IIII)V

    new-instance v7, Ljava/awt/Rectangle;

    invoke-direct {v7, v6, v6, v6, v6}, Ljava/awt/Rectangle;-><init>(IIII)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageReadParam:Ljavax/imageio/ImageReadParam;

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->width:I

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->height:I

    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->theImage:Ljava/awt/image/BufferedImage;

    move-object v4, p2

    move-object v5, v7

    invoke-static/range {v0 .. v5}, Ljavax/imageio/ImageReader;->computeRegions(Ljavax/imageio/ImageReadParam;IILjava/awt/image/BufferedImage;Ljava/awt/Rectangle;Ljava/awt/Rectangle;)V

    iget v0, p2, Ljava/awt/Rectangle;->x:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->sourceXOffset:I

    iget v0, p2, Ljava/awt/Rectangle;->y:I

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->sourceYOffset:I

    iget v0, v7, Ljava/awt/Rectangle;->width:I

    iget v1, v7, Ljava/awt/Rectangle;->height:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->pixelsToRead:I

    iput v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->pixelsRead:I

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->clearAbortRequest()V

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->processImageStarted(I)V

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->processReadAborted()V

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->theImage:Ljava/awt/image/BufferedImage;

    return-object p0

    :cond_0
    iget p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->width:I

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->tileOrStripWidth:I

    add-int/2addr p1, v0

    const/4 v1, 0x1

    sub-int/2addr p1, v1

    div-int/2addr p1, v0

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->tilesAcross:I

    iget p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->height:I

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->tileOrStripHeight:I

    add-int/2addr p1, v0

    sub-int/2addr p1, v1

    div-int/2addr p1, v0

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->tilesDown:I

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getCompression()I

    move-result p1

    const/16 v0, 0x8

    const/16 v2, 0x10a

    const/4 v3, 0x5

    const/4 v4, 0x7

    const/4 v5, 0x2

    const/4 v7, 0x6

    if-ne p1, v1, :cond_2

    iget-object v8, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-virtual {v8, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2, v6}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v2

    if-ne v2, v5, :cond_1

    new-instance v2, Lcom/sun/imageio/plugins/tiff/TIFFLSBDecompressor;

    invoke-direct {v2}, Lcom/sun/imageio/plugins/tiff/TIFFLSBDecompressor;-><init>()V

    iput-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    goto/16 :goto_5

    :cond_1
    new-instance v2, Lcom/sun/imageio/plugins/tiff/TIFFNullDecompressor;

    invoke-direct {v2}, Lcom/sun/imageio/plugins/tiff/TIFFNullDecompressor;-><init>()V

    iput-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    goto/16 :goto_5

    :cond_2
    const/4 v8, 0x4

    if-ne p1, v8, :cond_3

    new-instance v2, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;

    invoke-direct {v2}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;-><init>()V

    iput-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    goto/16 :goto_5

    :cond_3
    const/4 v8, 0x3

    if-ne p1, v8, :cond_4

    new-instance v2, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;

    invoke-direct {v2}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;-><init>()V

    iput-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    goto/16 :goto_5

    :cond_4
    if-ne p1, v5, :cond_5

    new-instance v2, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;

    invoke-direct {v2}, Lcom/sun/imageio/plugins/tiff/TIFFFaxDecompressor;-><init>()V

    iput-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    goto/16 :goto_5

    :cond_5
    const v8, 0x8005

    if-ne p1, v8, :cond_6

    new-instance v2, Lcom/sun/imageio/plugins/tiff/TIFFPackBitsDecompressor;

    invoke-direct {v2}, Lcom/sun/imageio/plugins/tiff/TIFFPackBitsDecompressor;-><init>()V

    iput-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    goto/16 :goto_5

    :cond_6
    const/16 v8, 0x13d

    if-ne p1, v3, :cond_9

    iget-object v9, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-virtual {v9, v8}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v8

    if-nez v8, :cond_7

    move v8, v1

    goto :goto_0

    :cond_7
    invoke-virtual {v8, v6}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v8

    :goto_0
    iget-object v9, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-virtual {v9, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v2

    if-nez v2, :cond_8

    move v2, v1

    goto :goto_1

    :cond_8
    invoke-virtual {v2, v6}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v2

    :goto_1
    new-instance v9, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;

    invoke-direct {v9, v8, v2}, Lcom/sun/imageio/plugins/tiff/TIFFLZWDecompressor;-><init>(II)V

    iput-object v9, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    goto/16 :goto_5

    :cond_9
    if-ne p1, v4, :cond_a

    new-instance v2, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;

    invoke-direct {v2}, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;-><init>()V

    iput-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    goto :goto_5

    :cond_a
    if-eq p1, v0, :cond_f

    const v2, 0x80b2

    if-ne p1, v2, :cond_b

    goto :goto_3

    :cond_b
    if-ne p1, v7, :cond_e

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v8, 0x200

    invoke-virtual {v2, v8}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v2

    if-nez v2, :cond_c

    const-string v2, "JPEGProc field missing; assuming baseline sequential JPEG process."

    invoke-virtual {p0, v2}, Ljavax/imageio/ImageReader;->processWarningOccurred(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    invoke-virtual {v2, v6}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v2

    if-ne v2, v1, :cond_d

    :goto_2
    new-instance v2, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;

    invoke-direct {v2}, Lcom/sun/imageio/plugins/tiff/TIFFOldJPEGDecompressor;-><init>()V

    iput-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    goto :goto_5

    :cond_d
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Old-style JPEG supported for baseline sequential JPEG process only!"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_e
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported compression type (tag value = "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")!"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_f
    :goto_3
    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-virtual {v2, v8}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v2

    if-nez v2, :cond_10

    move v2, v1

    goto :goto_4

    :cond_10
    invoke-virtual {v2, v6}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v2

    :goto_4
    new-instance v8, Lcom/sun/imageio/plugins/tiff/TIFFDeflateDecompressor;

    invoke-direct {v8, v2}, Lcom/sun/imageio/plugins/tiff/TIFFDeflateDecompressor;-><init>(I)V

    iput-object v8, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    :goto_5
    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->photometricInterpretation:I

    const/4 v8, 0x0

    if-ne v2, v7, :cond_13

    if-eq p1, v4, :cond_13

    if-eq p1, v7, :cond_13

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->theImage:Ljava/awt/image/BufferedImage;

    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v2

    if-ne v2, v3, :cond_11

    move v2, v1

    goto :goto_6

    :cond_11
    move v2, v6

    :goto_6
    iget-object v9, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    instance-of v10, v9, Lcom/sun/imageio/plugins/tiff/TIFFNullDecompressor;

    if-eqz v10, :cond_12

    move-object v9, v8

    :cond_12
    new-instance v10, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;

    invoke-direct {v10, v9, v2}, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;-><init>(Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;Z)V

    iput-object v10, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    :cond_13
    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->photometricInterpretation:I

    if-ne v2, v0, :cond_14

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->theImage:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0}, Ljava/awt/image/BufferedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v0

    invoke-virtual {v0}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v0

    if-ne v0, v3, :cond_14

    new-instance v8, Lcom/sun/imageio/plugins/tiff/TIFFCIELabColorConverter;

    invoke-direct {v8}, Lcom/sun/imageio/plugins/tiff/TIFFCIELabColorConverter;-><init>()V

    goto :goto_7

    :cond_14
    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->photometricInterpretation:I

    if-ne v0, v7, :cond_15

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    instance-of v0, v0, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrDecompressor;

    if-nez v0, :cond_15

    if-eq p1, v4, :cond_15

    if-eq p1, v7, :cond_15

    new-instance v8, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-direct {v8, v0}, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;-><init>(Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;)V

    :cond_15
    :goto_7
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    invoke-virtual {v0, p0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setReader(Ljavax/imageio/ImageReader;)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-virtual {v0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setMetadata(Ljavax/imageio/metadata/IIOMetadata;)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    iget-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->theImage:Ljava/awt/image/BufferedImage;

    invoke-virtual {v0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setImage(Ljava/awt/image/BufferedImage;)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->photometricInterpretation:I

    invoke-virtual {v0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setPhotometricInterpretation(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    invoke-virtual {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setCompression(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->samplesPerPixel:I

    invoke-virtual {p1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSamplesPerPixel(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->bitsPerSample:[I

    invoke-virtual {p1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setBitsPerSample([I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->sampleFormat:[I

    invoke-virtual {p1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSampleFormat([I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->extraSamples:[I

    invoke-virtual {p1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setExtraSamples([I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->colorMap:[C

    invoke-virtual {p1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setColorMap([C)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    invoke-virtual {p1, v8}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setColorConverter(Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->sourceXOffset:I

    invoke-virtual {p1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSourceXOffset(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->sourceYOffset:I

    invoke-virtual {p1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSourceYOffset(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->srcXSubsampling:I

    invoke-virtual {p1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSubsampleX(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->srcYSubsampling:I

    invoke-virtual {p1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSubsampleY(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstXOffset:I

    invoke-virtual {p1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setDstXOffset(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->dstYOffset:I

    invoke-virtual {p1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setDstYOffset(I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->sourceBands:[I

    invoke-virtual {p1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSourceBands([I)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->destinationBands:[I

    invoke-virtual {p1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setDestinationBands([I)V

    iget p1, p2, Ljava/awt/Rectangle;->x:I

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->tileOrStripWidth:I

    invoke-static {p1, v6, v0}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->XToTileX(III)I

    move-result p1

    iget v0, p2, Ljava/awt/Rectangle;->y:I

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->tileOrStripHeight:I

    invoke-static {v0, v6, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->YToTileY(III)I

    move-result v0

    iget v2, p2, Ljava/awt/Rectangle;->x:I

    iget v3, p2, Ljava/awt/Rectangle;->width:I

    add-int/2addr v2, v3

    sub-int/2addr v2, v1

    iget v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->tileOrStripWidth:I

    invoke-static {v2, v6, v3}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->XToTileX(III)I

    move-result v2

    iget v3, p2, Ljava/awt/Rectangle;->y:I

    iget p2, p2, Ljava/awt/Rectangle;->height:I

    add-int/2addr v3, p2

    sub-int/2addr v3, v1

    iget p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->tileOrStripHeight:I

    invoke-static {v3, v6, p2}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->YToTileY(III)I

    move-result p2

    iget v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->planarConfiguration:I

    if-ne v3, v5, :cond_19

    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    invoke-virtual {v3, v1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setPlanar(Z)V

    new-array v3, v1, [I

    new-array v1, v1, [I

    :goto_8
    if-gt v0, p2, :cond_1c

    move v4, p1

    :goto_9
    if-gt v4, v2, :cond_18

    move v5, v6

    :goto_a
    iget v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->numBands:I

    if-ge v5, v7, :cond_16

    iget-object v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->sourceBands:[I

    aget v7, v7, v5

    aput v7, v3, v6

    iget-object v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    invoke-virtual {v7, v3}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setSourceBands([I)V

    iget-object v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->destinationBands:[I

    aget v7, v7, v5

    aput v7, v1, v6

    iget-object v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decompressor:Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;

    invoke-virtual {v7, v1}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->setDestinationBands([I)V

    invoke-direct {p0, v4, v0, v5}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decodeTile(III)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_16
    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->reportProgress()V

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v5

    if-eqz v5, :cond_17

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->processReadAborted()V

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->theImage:Ljava/awt/image/BufferedImage;

    return-object p0

    :cond_17
    add-int/lit8 v4, v4, 0x1

    goto :goto_9

    :cond_18
    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_19
    :goto_b
    if-gt v0, p2, :cond_1c

    move v1, p1

    :goto_c
    if-gt v1, v2, :cond_1b

    const/4 v3, -0x1

    invoke-direct {p0, v1, v0, v3}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->decodeTile(III)V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->reportProgress()V

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->abortRequested()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->processReadAborted()V

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->theImage:Ljava/awt/image/BufferedImage;

    return-object p0

    :cond_1a
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_1c
    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->processImageComplete()V

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->theImage:Ljava/awt/image/BufferedImage;

    return-object p0
.end method

.method public readAsRenderedImage(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/RenderedImage;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->prepareRead(ILjavax/imageio/ImageReadParam;)V

    new-instance p2, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;

    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageReadParam:Ljavax/imageio/ImageReadParam;

    iget v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->width:I

    iget v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->height:I

    move-object v0, p2

    move-object v1, p0

    move v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/sun/imageio/plugins/tiff/TIFFRenderedImage;-><init>(Lcom/sun/imageio/plugins/tiff/TIFFImageReader;ILjavax/imageio/ImageReadParam;II)V

    return-object p2
.end method

.method public readRaster(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/Raster;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public readSupportsThumbnails()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public readTile(III)Ljava/awt/image/BufferedImage;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getWidth(I)I

    move-result v0

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getHeight(I)I

    move-result v1

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getTileWidth(I)I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getTileHeight(I)I

    move-result v3

    mul-int v4, v2, p2

    mul-int v5, v3, p3

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    if-ge v4, v0, :cond_2

    if-ge v5, v1, :cond_2

    add-int p2, v4, v2

    if-le p2, v0, :cond_0

    sub-int v2, v0, v4

    :cond_0
    add-int p2, v5, v3

    if-le p2, v1, :cond_1

    sub-int v3, v1, v5

    :cond_1
    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getDefaultReadParam()Ljavax/imageio/ImageReadParam;

    move-result-object p2

    new-instance p3, Ljava/awt/Rectangle;

    invoke-direct {p3, v4, v5, v2, v3}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p2, p3}, Ljavax/imageio/IIOParam;->setSourceRegion(Ljava/awt/Rectangle;)V

    invoke-virtual {p0, p1, p2}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Tile indices are out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Ljavax/imageio/ImageReader;->reset()V

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->resetLocal()V

    return-void
.end method

.method public resetLocal()V
    .locals 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->gotHeader:Z

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getDefaultReadParam()Ljavax/imageio/ImageReadParam;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageReadParam:Ljavax/imageio/ImageReadParam;

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->streamMetadata:Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->currIndex:I

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageStartPosition:Ljava/util/List;

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->numImages:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->imageTypeMap:Ljava/util/HashMap;

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->width:I

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->height:I

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->numBands:I

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->tileOrStripWidth:I

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->tileOrStripHeight:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->planarConfiguration:I

    return-void
.end method

.method public setInput(Ljava/lang/Object;ZZ)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->resetLocal()V

    if-eqz p1, :cond_1

    instance-of p2, p1, Ljavax/imageio/stream/ImageInputStream;

    if-eqz p2, :cond_0

    check-cast p1, Ljavax/imageio/stream/ImageInputStream;

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "input not an ImageInputStream!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->stream:Ljavax/imageio/stream/ImageInputStream;

    :goto_0
    return-void
.end method
