.class public Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;
.super Ljavax/imageio/ImageWriter;
.source "SourceFile"


# static fields
.field private static final DEFAULT_BYTES_PER_STRIP:I = 0x2000

.field static final EXIF_JPEG_COMPRESSION_TYPE:Ljava/lang/String; = "Exif JPEG"

.field static final TIFFCompressionTypes:[Ljava/lang/String;

.field static final compressionNumbers:[I

.field static final compressionTypes:[Ljava/lang/String;

.field static final isCompressionLossless:[Z


# instance fields
.field private bitDepth:I

.field private bitsPerSample:[C

.field private byteOrder:Ljava/nio/ByteOrder;

.field private colorConverter:Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;

.field private compression:I

.field private compressor:Lcom/sun/imageio/plugins/tiff/TIFFCompressor;

.field private currentImage:I

.field private headerPosition:J

.field private image:Ljava/awt/image/RenderedImage;

.field private imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

.field private imageType:Ljavax/imageio/ImageTypeSpecifier;

.field private inReplacePixelsNest:Z

.field private isBilevel:Z

.field private isImageSimple:Z

.field private isInsertingEmpty:Z

.field private isInverted:Z

.field private isRescaling:Z

.field private isTiled:Z

.field private isWritingEmpty:Z

.field private isWritingSequence:Z

.field private nativePhotometricInterpretation:I

.field private nextIFDPointerPos:J

.field private nextSpace:J

.field private numBands:I

.field private param:Ljavax/imageio/ImageWriteParam;

.field private periodX:I

.field private periodY:I

.field private photometricInterpretation:I

.field private pixelsDone:I

.field private predictor:I

.field private prevHeaderPosition:J

.field private prevNextSpace:J

.field private prevStreamPosition:J

.field private reader:Lcom/sun/imageio/plugins/tiff/TIFFImageReader;

.field private replacePixelsByteCounts:[J

.field private replacePixelsByteCountsPosition:J

.field private replacePixelsIndex:I

.field private replacePixelsLock:Ljava/lang/Object;

.field private replacePixelsMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

.field private replacePixelsOffsetsPosition:J

.field private replacePixelsRegion:Ljava/awt/Rectangle;

.field private replacePixelsTileOffsets:[J

.field private sampleFormat:I

.field private sampleSize:[I

.field private scale:[[B

.field private scale0:[B

.field private scaleh:[[B

.field private scalel:[[B

.field private scalingBitDepth:I

.field private sourceBands:[I

.field private sourceHeight:I

.field private sourceWidth:I

.field private sourceXOffset:I

.field private sourceYOffset:I

.field private stream:Ljavax/imageio/stream/ImageOutputStream;

.field private streamMetadata:Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

.field private tileLength:I

.field private tileWidth:I

.field private tilesAcross:I

.field private tilesDown:I

.field private totalPixels:I


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    const-string v0, "CCITT RLE"

    const-string v1, "CCITT T.4"

    const-string v2, "CCITT T.6"

    const-string v3, "LZW"

    const-string v4, "JPEG"

    const-string v5, "ZLib"

    const-string v6, "PackBits"

    const-string v7, "Deflate"

    const-string v8, "Exif JPEG"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->TIFFCompressionTypes:[Ljava/lang/String;

    const-string v1, "CCITT RLE"

    const-string v2, "CCITT T.4"

    const-string v3, "CCITT T.6"

    const-string v4, "LZW"

    const-string v5, "Old JPEG"

    const-string v6, "JPEG"

    const-string v7, "ZLib"

    const-string v8, "PackBits"

    const-string v9, "Deflate"

    const-string v10, "Exif JPEG"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressionTypes:[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v1, v0, [Z

    fill-array-data v1, :array_0

    sput-object v1, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isCompressionLossless:[Z

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressionNumbers:[I

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    nop

    :array_1
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x8005
        0x80b2
        0x6
    .end array-data
.end method

.method public constructor <init>(Ljavax/imageio/spi/ImageWriterSpi;)V
    .locals 5

    invoke-direct {p0, p1}, Ljavax/imageio/ImageWriter;-><init>(Ljavax/imageio/spi/ImageWriterSpi;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sampleSize:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scalingBitDepth:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isRescaling:Z

    const/4 v2, 0x4

    iput v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sampleFormat:I

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scale:[[B

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scale0:[B

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scaleh:[[B

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scalel:[[B

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nextSpace:J

    iput-boolean v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isWritingSequence:Z

    iput-boolean v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isInsertingEmpty:Z

    iput-boolean v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isWritingEmpty:Z

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->currentImage:I

    new-instance v4, Ljava/lang/Object;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsLock:Ljava/lang/Object;

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsIndex:I

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsTileOffsets:[J

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsByteCounts:[J

    iput-wide v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsOffsetsPosition:J

    iput-wide v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsByteCountsPosition:J

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsRegion:Ljava/awt/Rectangle;

    iput-boolean v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->inReplacePixelsNest:Z

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->reader:Lcom/sun/imageio/plugins/tiff/TIFFImageReader;

    return-void
.end method

.method public static XToTileX(III)I
    .locals 0

    sub-int/2addr p0, p1

    if-gez p0, :cond_0

    rsub-int/lit8 p1, p2, 0x1

    add-int/2addr p0, p1

    :cond_0
    div-int/2addr p0, p2

    return p0
.end method

.method public static YToTileY(III)I
    .locals 0

    sub-int/2addr p0, p1

    if-gez p0, :cond_0

    rsub-int/lit8 p1, p2, 0x1

    add-int/2addr p0, p1

    :cond_0
    div-int/2addr p0, p2

    return p0
.end method

.method private checkParamsEmpty(Ljavax/imageio/ImageTypeSpecifier;IILjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/imageio/ImageTypeSpecifier;",
            "II",
            "Ljava/util/List<",
            "+",
            "Ljava/awt/image/BufferedImage;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eqz p1, :cond_5

    const/4 p1, 0x1

    if-lt p2, p1, :cond_4

    if-lt p3, p1, :cond_4

    if-eqz p4, :cond_1

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    invoke-interface {p4, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_0

    instance-of p3, p3, Ljava/awt/image/BufferedImage;

    if-eqz p3, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "thumbnails contains null references or objects other than BufferedImages!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-boolean p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isInsertingEmpty:Z

    if-nez p1, :cond_3

    iget-boolean p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isWritingEmpty:Z

    if-nez p0, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Previous call to prepareWriteEmpty() without corresponding call to endWriteEmpty()!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Previous call to prepareInsertEmpty() without corresponding call to endInsertEmpty()!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "width < 1 || height < 1!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "imageType == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "getOutput() == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private convertNativeImageMetadata(Ljavax/imageio/metadata/IIOMetadata;)Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljavax/imageio/metadata/IIOMetadata;->getMetadataFormatNames()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "javax_imageio_tiff_image_1.0"

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, v0}, Ljavax/imageio/metadata/IIOMetadata;->getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;->getInstance()Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-direct {v1, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v0, p0}, Ljavax/imageio/metadata/IIOMetadata;->setFromTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "inData does not support native metadata format!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "inData == null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private convertStandardImageMetadata(Ljavax/imageio/metadata/IIOMetadata;)Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/metadata/IIOInvalidTreeException;
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljavax/imageio/metadata/IIOMetadata;->isStandardMetadataFormatSupported()Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "javax_imageio_1.0"

    invoke-virtual {p1, p0}, Ljavax/imageio/metadata/IIOMetadata;->getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;->getInstance()Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-direct {v1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, p0, p1}, Ljavax/imageio/metadata/IIOMetadata;->setFromTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "inData does not support standard metadata format!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "inData == null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
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

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    iget v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scalingBitDepth:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sampleSize:[I

    invoke-direct {p0, p1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isRescaling:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scalingBitDepth:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scaleh:[[B

    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scalel:[[B

    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scale:[[B

    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scale0:[B

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sampleSize:[I

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    const/16 v3, 0x10

    const/4 v4, 0x1

    if-gt v2, v3, :cond_2

    move v2, v0

    :goto_0
    iget v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    if-ge v2, v5, :cond_2

    aget v5, p1, v2

    iget v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    if-eq v5, v6, :cond_1

    iput-boolean v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isRescaling:Z

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-boolean v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isRescaling:Z

    if-nez v2, :cond_3

    return-void

    :cond_3
    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    iput v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scalingBitDepth:I

    shl-int v5, v4, v2

    sub-int/2addr v5, v4

    const/16 v6, 0x8

    if-gt v2, v6, :cond_6

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    new-array v2, v2, [[B

    iput-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scale:[[B

    move v2, v0

    :goto_2
    iget v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    if-ge v2, v3, :cond_5

    aget v3, p1, v2

    shl-int v3, v4, v3

    sub-int/2addr v3, v4

    div-int/lit8 v6, v3, 0x2

    iget-object v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scale:[[B

    add-int/lit8 v8, v3, 0x1

    new-array v8, v8, [B

    aput-object v8, v7, v2

    move v7, v0

    :goto_3
    if-gt v7, v3, :cond_4

    iget-object v8, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scale:[[B

    aget-object v8, v8, v2

    mul-int v9, v7, v5

    add-int/2addr v9, v6

    div-int/2addr v9, v3

    int-to-byte v9, v9

    aput-byte v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scale:[[B

    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scale0:[B

    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scalel:[[B

    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scaleh:[[B

    goto :goto_6

    :cond_6
    if-gt v2, v3, :cond_9

    iget v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    new-array v3, v2, [[B

    iput-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scaleh:[[B

    new-array v2, v2, [[B

    iput-object v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scalel:[[B

    move v2, v0

    :goto_4
    iget v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    if-ge v2, v3, :cond_8

    aget v3, p1, v2

    shl-int v3, v4, v3

    sub-int/2addr v3, v4

    div-int/lit8 v6, v3, 0x2

    iget-object v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scaleh:[[B

    add-int/lit8 v8, v3, 0x1

    new-array v9, v8, [B

    aput-object v9, v7, v2

    iget-object v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scalel:[[B

    new-array v8, v8, [B

    aput-object v8, v7, v2

    move v7, v0

    :goto_5
    if-gt v7, v3, :cond_7

    mul-int v8, v7, v5

    add-int/2addr v8, v6

    div-int/2addr v8, v3

    iget-object v9, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scaleh:[[B

    aget-object v9, v9, v2

    shr-int/lit8 v10, v8, 0x8

    int-to-byte v10, v10

    aput-byte v10, v9, v7

    iget-object v9, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scalel:[[B

    aget-object v9, v9, v2

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v9, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scale:[[B

    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scale0:[B

    :cond_9
    :goto_6
    return-void
.end method

.method private insert(ILjavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;Z)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v6, p0

    iget-object v0, v6, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    new-array v7, v0, [J

    new-array v8, v0, [J

    move v0, p1

    invoke-direct {p0, p1, v7, v8}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->locateIFD(I[J[J)V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->markPositions()V

    iget-object v0, v6, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    const/4 v9, 0x0

    aget-wide v1, v7, v9

    invoke-interface {v0, v1, v2}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v0, v6, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    iget-object v0, v6, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v10

    iget-object v0, v6, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    aget-wide v0, v7, v9

    const-wide/16 v2, 0x4

    add-long v4, v0, v2

    iget-wide v12, v6, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nextSpace:J

    cmp-long v4, v4, v12

    if-lez v4, :cond_0

    add-long/2addr v0, v2

    iput-wide v0, v6, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nextSpace:J

    :cond_0
    iget-wide v0, v6, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nextSpace:J

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    const-wide/16 v2, -0x4

    and-long/2addr v0, v2

    iput-wide v0, v6, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nextSpace:J

    iget-object v2, v6, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    long-to-int v0, v0

    invoke-interface {v2, v0}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    iget-object v0, v6, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    iget-wide v1, v6, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nextSpace:J

    invoke-interface {v0, v1, v2}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    const/4 v1, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->write(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;ZZ)V

    iget-object v0, v6, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    iget-wide v1, v6, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nextIFDPointerPos:J

    invoke-interface {v0, v1, v2}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v0, v6, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    aget-wide v1, v8, v9

    long-to-int v1, v1

    invoke-interface {v0, v1}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, v6, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    aget-wide v1, v7, v9

    invoke-interface {v0, v1, v2}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v0, v6, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    long-to-int v1, v10

    invoke-interface {v0, v1}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->resetPositions()V

    :cond_1
    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image == null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Output not set!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isEncodingEmpty()Z
    .locals 1

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isInsertingEmpty:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isWritingEmpty:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private locateIFD(I[J[J)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, -0x1

    if-lt p1, v0, :cond_9

    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v1

    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    iget-wide v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->headerPosition:J

    invoke-interface {v3, v4, v5}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    const/16 v4, 0x4d4d

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-interface {v3, v4}, Ljavax/imageio/stream/ImageInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    :cond_0
    const/16 v4, 0x4949

    if-ne v3, v4, :cond_8

    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-interface {v3, v4}, Ljavax/imageio/stream/ImageInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    :goto_0
    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result v3

    const/16 v4, 0x2a

    if-ne v3, v4, :cond_7

    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v3

    const/4 v5, 0x0

    aput-wide v3, p2, v5

    iget-object v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v3

    aput-wide v3, p3, v5

    const-wide/16 v6, 0x0

    cmp-long v8, v3, v6

    const-string v9, "imageIndex is greater than the largest available index!"

    if-nez v8, :cond_2

    if-gtz p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0, v1, v2}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, v9}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object v8, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v8, v3, v4}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    move v3, v5

    :goto_1
    if-eq p1, v0, :cond_3

    if-ge v3, p1, :cond_5

    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v4}, Ljavax/imageio/stream/ImageInputStream;->readShort()S

    move-result v4
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v8, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    mul-int/lit8 v4, v4, 0xc

    invoke-interface {v8, v4}, Ljavax/imageio/stream/ImageInputStream;->skipBytes(I)I

    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v4}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v10

    aput-wide v10, p2, v5

    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v4}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedInt()J

    move-result-wide v10

    aput-wide v10, p3, v5

    cmp-long v4, v10, v6

    if-nez v4, :cond_6

    if-eq p1, v0, :cond_5

    add-int/lit8 p1, p1, -0x1

    if-lt v3, p1, :cond_4

    goto :goto_2

    :cond_4
    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0, v1, v2}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0, v9}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_2
    return-void

    :cond_6
    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v4, v10, v11}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catch_0
    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0, v1, v2}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    aput-wide v6, p3, v5

    return-void

    :cond_7
    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0, v1, v2}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Illegal magic number"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0, v1, v2}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Illegal byte order"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "imageIndex < -1!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private markPositions()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->prevStreamPosition:J

    iget-wide v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->headerPosition:J

    iput-wide v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->prevHeaderPosition:J

    iget-wide v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nextSpace:J

    iput-wide v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->prevNextSpace:J

    return-void
.end method

.method private readIFD(I)Lcom/sun/imageio/plugins/tiff/TIFFIFD;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    if-eqz v0, :cond_2

    if-ltz p1, :cond_1

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    const/4 v0, 0x1

    new-array v1, v0, [J

    new-array v2, v0, [J

    invoke-direct {p0, p1, v1, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->locateIFD(I[J[J)V

    const/4 p1, 0x0

    aget-wide v1, v2, p1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;->getInstance()Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v2, Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-direct {v2, v1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;-><init>(Ljava/util/List;)V

    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-virtual {v2, v1, v0, p1, p1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->initialize(Ljavax/imageio/stream/ImageInputStream;ZZZ)V

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    return-object v2

    :cond_0
    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "imageIndex out of bounds!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "imageIndex < 0!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Output not set!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private resetPositions()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    iget-wide v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->prevStreamPosition:J

    invoke-interface {v0, v1, v2}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-wide v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->prevHeaderPosition:J

    iput-wide v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->headerPosition:J

    iget-wide v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->prevNextSpace:J

    iput-wide v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nextSpace:J

    return-void
.end method

.method private subsample(Ljava/awt/image/Raster;[IIIIIIILjava/awt/Rectangle;)Ljava/awt/image/Raster;
    .locals 26

    move/from16 v0, p3

    move/from16 v1, p4

    move/from16 v2, p5

    move/from16 v3, p6

    move-object/from16 v4, p9

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getMinX()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getMinY()I

    move-result v6

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getHeight()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v9

    invoke-virtual {v9}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v10

    invoke-virtual {v10}, Ljava/awt/image/SampleModel;->getDataType()I

    move-result v10

    invoke-static {v5, v0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->XToTileX(III)I

    move-result v11

    add-int v11, v11, p7

    invoke-static {v6, v1, v3}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->YToTileY(III)I

    move-result v12

    add-int v15, v12, p8

    add-int/2addr v5, v7

    add-int/lit8 v5, v5, -0x1

    invoke-static {v5, v0, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->XToTileX(III)I

    move-result v5

    add-int v5, v5, p7

    add-int/2addr v6, v8

    add-int/lit8 v6, v6, -0x1

    invoke-static {v6, v1, v3}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->YToTileY(III)I

    move-result v6

    add-int v6, v6, p8

    sub-int v7, v5, v11

    add-int/lit8 v7, v7, 0x1

    sub-int v8, v6, v15

    add-int/lit8 v8, v8, 0x1

    if-lez v7, :cond_b

    if-gtz v8, :cond_0

    goto/16 :goto_a

    :cond_0
    sub-int v12, v11, p7

    mul-int/2addr v12, v2

    add-int v23, v12, v0

    sub-int v5, v5, p7

    mul-int/2addr v5, v2

    add-int/2addr v5, v0

    sub-int v5, v5, v23

    add-int/lit8 v5, v5, 0x1

    sub-int v0, v15, p8

    mul-int/2addr v0, v3

    add-int/2addr v0, v1

    sub-int v6, v6, p8

    mul-int/2addr v6, v3

    add-int/2addr v6, v1

    sub-int/2addr v6, v0

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v1, p1

    invoke-virtual {v1, v11, v15, v7, v8}, Ljava/awt/image/Raster;->createCompatibleWritableRaster(IIII)Ljava/awt/image/WritableRaster;

    move-result-object v8

    add-int/2addr v6, v0

    const/4 v12, 0x4

    const/16 v24, 0x0

    if-ne v10, v12, :cond_4

    new-array v10, v5, [F

    new-array v14, v7, [F

    move/from16 v13, v24

    :goto_0
    if-ge v13, v9, :cond_3

    move v12, v0

    move/from16 v25, v15

    :goto_1
    if-ge v12, v6, :cond_2

    const/16 v20, 0x1

    move-object/from16 v16, p1

    move/from16 v17, v23

    move/from16 v18, v12

    move/from16 v19, v5

    move/from16 v21, v13

    move-object/from16 v22, v10

    invoke-virtual/range {v16 .. v22}, Ljava/awt/image/Raster;->getSamples(IIIII[F)[F

    move/from16 p0, v0

    move/from16 v0, v24

    move/from16 v16, v0

    :goto_2
    if-ge v0, v5, :cond_1

    add-int/lit8 v17, v16, 0x1

    aget v18, v10, v0

    aput v18, v14, v16

    add-int/2addr v0, v2

    move/from16 v16, v17

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v25, 0x1

    const/16 v16, 0x1

    move/from16 v19, v12

    move-object v12, v8

    move/from16 v20, v13

    move v13, v11

    move-object/from16 v21, v14

    move/from16 v14, v25

    move/from16 v25, v15

    move v15, v7

    move/from16 v17, v20

    move-object/from16 v18, v21

    invoke-virtual/range {v12 .. v18}, Ljava/awt/image/WritableRaster;->setSamples(IIIII[F)V

    add-int v12, v19, v3

    move/from16 v13, v20

    move-object/from16 v14, v21

    move/from16 v15, v25

    move/from16 v25, v0

    move/from16 v0, p0

    goto :goto_1

    :cond_2
    move/from16 p0, v0

    move/from16 v20, v13

    move-object/from16 v21, v14

    move/from16 v25, v15

    add-int/lit8 v13, v20, 0x1

    goto :goto_0

    :cond_3
    move/from16 v25, v15

    goto/16 :goto_9

    :cond_4
    move/from16 p0, v0

    move/from16 v25, v15

    const/4 v0, 0x5

    if-ne v10, v0, :cond_7

    new-array v0, v5, [D

    new-array v10, v7, [D

    move/from16 v15, v24

    :goto_3
    if-ge v15, v9, :cond_a

    move/from16 v13, p0

    move/from16 v14, v25

    :goto_4
    if-ge v13, v6, :cond_6

    const/16 v20, 0x1

    move-object/from16 v16, p1

    move/from16 v17, v23

    move/from16 v18, v13

    move/from16 v19, v5

    move/from16 v21, v15

    move-object/from16 v22, v0

    invoke-virtual/range {v16 .. v22}, Ljava/awt/image/Raster;->getSamples(IIIII[D)[D

    move/from16 v12, v24

    move/from16 v16, v12

    :goto_5
    if-ge v12, v5, :cond_5

    add-int/lit8 v17, v16, 0x1

    aget-wide v18, v0, v12

    aput-wide v18, v10, v16

    add-int/2addr v12, v2

    move/from16 v16, v17

    goto :goto_5

    :cond_5
    add-int/lit8 v19, v14, 0x1

    const/16 v16, 0x1

    move-object v12, v8

    move/from16 v20, v13

    move v13, v11

    move/from16 v21, v15

    move v15, v7

    move/from16 v17, v21

    move-object/from16 v18, v10

    invoke-virtual/range {v12 .. v18}, Ljava/awt/image/WritableRaster;->setSamples(IIIII[D)V

    add-int v13, v20, v3

    move/from16 v14, v19

    move/from16 v15, v21

    goto :goto_4

    :cond_6
    move/from16 v21, v15

    add-int/lit8 v15, v21, 0x1

    goto :goto_3

    :cond_7
    new-array v0, v5, [I

    new-array v10, v7, [I

    move/from16 v15, v24

    :goto_6
    if-ge v15, v9, :cond_a

    move/from16 v13, p0

    move/from16 v14, v25

    :goto_7
    if-ge v13, v6, :cond_9

    const/16 v20, 0x1

    move-object/from16 v16, p1

    move/from16 v17, v23

    move/from16 v18, v13

    move/from16 v19, v5

    move/from16 v21, v15

    move-object/from16 v22, v0

    invoke-virtual/range {v16 .. v22}, Ljava/awt/image/Raster;->getSamples(IIIII[I)[I

    move/from16 v12, v24

    move/from16 v16, v12

    :goto_8
    if-ge v12, v5, :cond_8

    add-int/lit8 v17, v16, 0x1

    aget v18, v0, v12

    aput v18, v10, v16

    add-int/2addr v12, v2

    move/from16 v16, v17

    goto :goto_8

    :cond_8
    add-int/lit8 v19, v14, 0x1

    const/16 v16, 0x1

    move-object v12, v8

    move/from16 v20, v13

    move v13, v11

    move/from16 v21, v15

    move v15, v7

    move/from16 v17, v21

    move-object/from16 v18, v10

    invoke-virtual/range {v12 .. v18}, Ljava/awt/image/WritableRaster;->setSamples(IIIII[I)V

    add-int v13, v20, v3

    move/from16 v14, v19

    move/from16 v15, v21

    goto :goto_7

    :cond_9
    move/from16 v21, v15

    add-int/lit8 v15, v21, 0x1

    goto :goto_6

    :cond_a
    :goto_9
    iget v15, v4, Ljava/awt/Rectangle;->width:I

    iget v0, v4, Ljava/awt/Rectangle;->height:I

    iget v1, v4, Ljava/awt/Rectangle;->x:I

    iget v2, v4, Ljava/awt/Rectangle;->y:I

    move-object v12, v8

    move v13, v11

    move/from16 v14, v25

    move/from16 v16, v0

    move/from16 v17, v1

    move/from16 v18, v2

    move-object/from16 v19, p2

    invoke-virtual/range {v12 .. v19}, Ljava/awt/image/Raster;->createChild(IIIIII[I)Ljava/awt/image/Raster;

    move-result-object v0

    return-object v0

    :cond_b
    :goto_a
    const/4 v0, 0x0

    return-object v0
.end method

.method private write(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;ZZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 7
    iget-object v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    if-eqz v3, :cond_1d

    if-eqz p2, :cond_1c

    .line 8
    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOImage;->hasRaster()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageWriter;->canWriteRasters()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "TIFF ImageWriter cannot write Rasters!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 10
    :cond_1
    :goto_0
    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOImage;->getRenderedImage()Ljava/awt/image/RenderedImage;

    move-result-object v3

    iput-object v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->image:Ljava/awt/image/RenderedImage;

    .line 11
    invoke-interface {v3}, Ljava/awt/image/RenderedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v3

    .line 12
    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->image:Ljava/awt/image/RenderedImage;

    invoke-interface {v4}, Ljava/awt/image/RenderedImage;->getMinX()I

    move-result v4

    iput v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceXOffset:I

    .line 13
    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->image:Ljava/awt/image/RenderedImage;

    invoke-interface {v4}, Ljava/awt/image/RenderedImage;->getMinY()I

    move-result v4

    iput v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceYOffset:I

    .line 14
    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->image:Ljava/awt/image/RenderedImage;

    invoke-interface {v4}, Ljava/awt/image/RenderedImage;->getWidth()I

    move-result v4

    iput v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceWidth:I

    .line 15
    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->image:Ljava/awt/image/RenderedImage;

    invoke-interface {v4}, Ljava/awt/image/RenderedImage;->getHeight()I

    move-result v4

    iput v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceHeight:I

    .line 16
    new-instance v4, Ljava/awt/Rectangle;

    iget v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceXOffset:I

    iget v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceYOffset:I

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceWidth:I

    iget v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceHeight:I

    invoke-direct {v4, v5, v6, v7, v8}, Ljava/awt/Rectangle;-><init>(IIII)V

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v2, :cond_2

    .line 17
    invoke-virtual/range {p0 .. p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->getDefaultWriteParam()Ljavax/imageio/ImageWriteParam;

    move-result-object v2

    iput-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->param:Ljavax/imageio/ImageWriteParam;

    .line 18
    iput-object v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceBands:[I

    .line 19
    iput v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->periodX:I

    .line 20
    iput v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->periodY:I

    .line 21
    invoke-virtual {v3}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v2

    iput v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    .line 22
    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->image:Ljava/awt/image/RenderedImage;

    invoke-interface {v2}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v2

    goto/16 :goto_3

    .line 23
    :cond_2
    iput-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->param:Ljavax/imageio/ImageWriteParam;

    .line 24
    invoke-virtual/range {p3 .. p3}, Ljavax/imageio/IIOParam;->getSourceRegion()Ljava/awt/Rectangle;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 25
    invoke-virtual {v7, v4}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object v4

    .line 26
    iget v7, v4, Ljava/awt/Rectangle;->x:I

    iput v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceXOffset:I

    .line 27
    iget v7, v4, Ljava/awt/Rectangle;->y:I

    iput v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceYOffset:I

    .line 28
    iget v7, v4, Ljava/awt/Rectangle;->width:I

    iput v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceWidth:I

    .line 29
    iget v4, v4, Ljava/awt/Rectangle;->height:I

    iput v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceHeight:I

    .line 30
    :cond_3
    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->param:Ljavax/imageio/ImageWriteParam;

    invoke-virtual {v4}, Ljavax/imageio/IIOParam;->getSubsamplingXOffset()I

    move-result v4

    .line 31
    iget-object v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->param:Ljavax/imageio/ImageWriteParam;

    invoke-virtual {v7}, Ljavax/imageio/IIOParam;->getSubsamplingYOffset()I

    move-result v7

    .line 32
    iget v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceXOffset:I

    add-int/2addr v8, v4

    iput v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceXOffset:I

    .line 33
    iget v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceYOffset:I

    add-int/2addr v8, v7

    iput v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceYOffset:I

    .line 34
    iget v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceWidth:I

    sub-int/2addr v8, v4

    iput v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceWidth:I

    .line 35
    iget v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceHeight:I

    sub-int/2addr v4, v7

    iput v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceHeight:I

    .line 36
    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->param:Ljavax/imageio/ImageWriteParam;

    invoke-virtual {v4}, Ljavax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result v4

    iput v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->periodX:I

    .line 37
    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->param:Ljavax/imageio/ImageWriteParam;

    invoke-virtual {v4}, Ljavax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result v4

    iput v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->periodY:I

    .line 38
    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->param:Ljavax/imageio/ImageWriteParam;

    invoke-virtual {v4}, Ljavax/imageio/IIOParam;->getSourceBands()[I

    move-result-object v4

    if-eqz v4, :cond_4

    .line 39
    iput-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceBands:[I

    .line 40
    array-length v4, v4

    iput v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    goto :goto_1

    .line 41
    :cond_4
    invoke-virtual {v3}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v4

    iput v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    .line 42
    :goto_1
    invoke-virtual/range {p3 .. p3}, Ljavax/imageio/IIOParam;->getDestinationType()Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 43
    invoke-virtual {v2}, Ljavax/imageio/ImageTypeSpecifier;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v2

    .line 44
    invoke-virtual {v2}, Ljava/awt/image/ColorModel;->getNumComponents()I

    move-result v4

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    if-ne v4, v7, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v5

    :goto_2
    if-nez v2, :cond_6

    .line 45
    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->image:Ljava/awt/image/RenderedImage;

    invoke-interface {v2}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v2

    .line 46
    :cond_6
    :goto_3
    new-instance v4, Ljavax/imageio/ImageTypeSpecifier;

    invoke-direct {v4, v2, v3}, Ljavax/imageio/ImageTypeSpecifier;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/SampleModel;)V

    iput-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->imageType:Ljavax/imageio/ImageTypeSpecifier;

    .line 47
    invoke-static {v0, v4}, Lcom/sun/imageio/plugins/common/ImageUtil;->canEncodeImage(Ljavax/imageio/ImageWriter;Ljavax/imageio/ImageTypeSpecifier;)V

    .line 48
    iget v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceWidth:I

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->periodX:I

    add-int/2addr v4, v7

    sub-int/2addr v4, v6

    div-int/2addr v4, v7

    .line 49
    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceHeight:I

    iget v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->periodY:I

    add-int/2addr v7, v8

    sub-int/2addr v7, v6

    div-int/2addr v7, v8

    if-lez v4, :cond_1b

    if-lez v7, :cond_1b

    .line 50
    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageWriter;->clearAbortRequest()V

    const/4 v8, 0x0

    .line 51
    invoke-virtual {v0, v8}, Ljavax/imageio/ImageWriter;->processImageStarted(I)V

    .line 52
    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageWriter;->abortRequested()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 53
    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageWriter;->processWriteAborted()V

    return-void

    :cond_7
    const-wide/16 v9, 0x4

    if-eqz p4, :cond_a

    .line 54
    iput-object v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->streamMetadata:Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

    if-eqz v1, :cond_8

    .line 55
    iget-object v11, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->param:Ljavax/imageio/ImageWriteParam;

    .line 56
    invoke-virtual {v0, v1, v11}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->convertStreamMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object v1

    check-cast v1, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

    iput-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->streamMetadata:Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

    .line 57
    :cond_8
    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->streamMetadata:Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

    if-nez v1, :cond_9

    .line 58
    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->param:Ljavax/imageio/ImageWriteParam;

    .line 59
    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->getDefaultStreamMetadata(Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object v1

    check-cast v1, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

    iput-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->streamMetadata:Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

    .line 60
    :cond_9
    invoke-direct/range {p0 .. p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->writeHeader()V

    .line 61
    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    iget-wide v11, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->headerPosition:J

    add-long/2addr v11, v9

    invoke-interface {v1, v11, v12}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    .line 62
    iget-wide v11, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nextSpace:J

    const-wide/16 v13, 0x3

    add-long/2addr v11, v13

    const-wide/16 v13, -0x4

    and-long/2addr v11, v13

    iput-wide v11, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nextSpace:J

    .line 63
    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    long-to-int v11, v11

    invoke-interface {v1, v11}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    .line 64
    :cond_a
    iput-object v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    .line 65
    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOImage;->getMetadata()Ljavax/imageio/metadata/IIOMetadata;

    move-result-object v1

    if-eqz v1, :cond_e

    .line 66
    instance-of v5, v1, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    if-eqz v5, :cond_b

    .line 67
    check-cast v1, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-virtual {v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getShallowClone()Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    goto :goto_4

    .line 68
    :cond_b
    invoke-virtual {v1}, Ljavax/imageio/metadata/IIOMetadata;->getMetadataFormatNames()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v11, "javax_imageio_tiff_image_1.0"

    invoke-interface {v5, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 69
    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->convertNativeImageMetadata(Ljavax/imageio/metadata/IIOMetadata;)Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    goto :goto_4

    .line 70
    :cond_c
    invoke-virtual {v1}, Ljavax/imageio/metadata/IIOMetadata;->isStandardMetadataFormatSupported()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 71
    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->convertStandardImageMetadata(Ljavax/imageio/metadata/IIOMetadata;)Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    move-result-object v1

    iput-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    .line 72
    :cond_d
    :goto_4
    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    if-nez v1, :cond_e

    .line 73
    iget v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->currentImage:I

    const-string v5, "Could not initialize image metadata"

    invoke-virtual {v0, v1, v5}, Ljavax/imageio/ImageWriter;->processWarningOccurred(ILjava/lang/String;)V

    .line 74
    :cond_e
    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    if-nez v1, :cond_f

    .line 75
    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->imageType:Ljavax/imageio/ImageTypeSpecifier;

    iget-object v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->param:Ljavax/imageio/ImageWriteParam;

    .line 76
    invoke-virtual {v0, v1, v5}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->getDefaultImageMetadata(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object v1

    check-cast v1, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    iput-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    .line 77
    :cond_f
    invoke-virtual {v0, v2, v3, v4, v7}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->setupMetadata(Ljava/awt/image/ColorModel;Ljava/awt/image/SampleModel;II)V

    .line 78
    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressor:Lcom/sun/imageio/plugins/tiff/TIFFCompressor;

    invoke-virtual {v1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->setWriter(Ljavax/imageio/ImageWriter;)V

    .line 79
    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressor:Lcom/sun/imageio/plugins/tiff/TIFFCompressor;

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-virtual {v1, v2}, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->setMetadata(Ljavax/imageio/metadata/IIOMetadata;)V

    .line 80
    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressor:Lcom/sun/imageio/plugins/tiff/TIFFCompressor;

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-virtual {v1, v2}, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->setStream(Ljavax/imageio/stream/ImageOutputStream;)V

    .line 81
    invoke-virtual {v3}, Ljava/awt/image/SampleModel;->getSampleSize()[I

    move-result-object v1

    iput-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sampleSize:[I

    .line 82
    invoke-virtual {v3}, Ljava/awt/image/SampleModel;->getSampleSize()[I

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->initializeScaleTables([I)V

    .line 83
    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->image:Ljava/awt/image/RenderedImage;

    invoke-interface {v1}, Ljava/awt/image/RenderedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/ImageUtil;->isBinary(Ljava/awt/image/SampleModel;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isBilevel:Z

    .line 84
    iget v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nativePhotometricInterpretation:I

    if-ne v2, v6, :cond_10

    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    if-eqz v3, :cond_11

    :cond_10
    if-nez v2, :cond_12

    iget v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    if-ne v2, v6, :cond_12

    :cond_11
    move v2, v6

    goto :goto_5

    :cond_12
    move v2, v8

    :goto_5
    iput-boolean v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isInverted:Z

    if-nez v1, :cond_13

    if-nez v2, :cond_14

    .line 85
    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->image:Ljava/awt/image/RenderedImage;

    .line 86
    invoke-static {v1}, Lcom/sun/imageio/plugins/common/ImageUtil;->imageIsContiguous(Ljava/awt/image/RenderedImage;)Z

    move-result v1

    if-eqz v1, :cond_14

    :cond_13
    iget-boolean v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isRescaling:Z

    if-nez v1, :cond_14

    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceBands:[I

    if-nez v1, :cond_14

    iget v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->periodX:I

    if-ne v1, v6, :cond_14

    iget v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->periodY:I

    if-ne v1, v6, :cond_14

    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->colorConverter:Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;

    if-nez v1, :cond_14

    move v1, v6

    goto :goto_6

    :cond_14
    move v1, v8

    :goto_6
    iput-boolean v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isImageSimple:Z

    .line 87
    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-virtual {v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getRootIFD()Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    move-result-object v1

    .line 88
    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-virtual {v1, v2}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->writeToStream(Ljavax/imageio/stream/ImageOutputStream;)V

    .line 89
    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nextIFDPointerPos:J

    .line 90
    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v2, v8}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    .line 91
    invoke-virtual {v1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getLastPosition()J

    move-result-wide v2

    .line 92
    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v4, v2, v3}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    .line 93
    iget-wide v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nextSpace:J

    cmp-long v4, v2, v4

    if-lez v4, :cond_15

    .line 94
    iput-wide v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nextSpace:J

    :cond_15
    if-nez p5, :cond_16

    return-void

    .line 95
    :cond_16
    invoke-virtual {v1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getStripOrTileByteCountsPosition()J

    move-result-wide v2

    .line 96
    invoke-virtual {v1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getStripOrTileOffsetsPosition()J

    move-result-wide v4

    .line 97
    iget v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileWidth:I

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileLength:I

    mul-int/2addr v1, v7

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tilesDown:I

    mul-int/2addr v1, v7

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tilesAcross:I

    mul-int/2addr v1, v7

    iput v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->totalPixels:I

    .line 98
    iput v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->pixelsDone:I

    move v1, v8

    .line 99
    :goto_7
    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tilesDown:I

    if-ge v1, v7, :cond_1a

    move v7, v8

    .line 100
    :goto_8
    iget v11, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tilesAcross:I

    if-ge v7, v11, :cond_19

    .line 101
    iget-object v11, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v11}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v11

    .line 102
    new-instance v13, Ljava/awt/Rectangle;

    iget v14, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceXOffset:I

    iget v15, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileWidth:I

    mul-int v16, v7, v15

    iget v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->periodX:I

    mul-int v16, v16, v8

    add-int v14, v14, v16

    iget v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceYOffset:I

    iget v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileLength:I

    mul-int v10, v1, v9

    move/from16 p1, v1

    iget v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->periodY:I

    mul-int/2addr v10, v1

    add-int/2addr v6, v10

    mul-int/2addr v15, v8

    mul-int/2addr v9, v1

    invoke-direct {v13, v14, v6, v15, v9}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 103
    :try_start_0
    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressor:Lcom/sun/imageio/plugins/tiff/TIFFCompressor;

    invoke-direct {v0, v13, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->writeTile(Ljava/awt/Rectangle;Lcom/sun/imageio/plugins/tiff/TIFFCompressor;)I

    move-result v1

    int-to-long v8, v1

    add-long/2addr v8, v11

    .line 104
    iget-wide v14, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nextSpace:J

    cmp-long v6, v8, v14

    if-lez v6, :cond_17

    .line 105
    iput-wide v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nextSpace:J

    .line 106
    :cond_17
    iget-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v6}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    .line 107
    iget-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v6, v4, v5}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    .line 108
    iget-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    long-to-int v8, v11

    invoke-interface {v6, v8}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    const-wide/16 v8, 0x4

    add-long/2addr v4, v8

    .line 109
    iget-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v6, v2, v3}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    .line 110
    iget-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v6, v1}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    add-long/2addr v2, v8

    .line 111
    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    .line 112
    iget v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->pixelsDone:I

    iget v6, v13, Ljava/awt/Rectangle;->width:I

    iget v10, v13, Ljava/awt/Rectangle;->height:I

    mul-int/2addr v6, v10

    add-int/2addr v1, v6

    iput v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->pixelsDone:I

    int-to-float v1, v1

    const/high16 v6, 0x42c80000    # 100.0f

    mul-float/2addr v1, v6

    .line 113
    iget v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->totalPixels:I

    int-to-float v6, v6

    div-float/2addr v1, v6

    invoke-virtual {v0, v1}, Ljavax/imageio/ImageWriter;->processImageProgress(F)V

    .line 114
    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageWriter;->abortRequested()Z

    move-result v1

    if-eqz v1, :cond_18

    .line 115
    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageWriter;->processWriteAborted()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_18
    add-int/lit8 v7, v7, 0x1

    move/from16 v1, p1

    move-wide v9, v8

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto/16 :goto_8

    :catch_0
    move-exception v0

    .line 116
    new-instance v1, Ljavax/imageio/IIOException;

    const-string v2, "I/O error writing TIFF file!"

    invoke-direct {v1, v2, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_19
    move/from16 p1, v1

    move-wide v8, v9

    add-int/lit8 v1, p1, 0x1

    move-wide v9, v8

    const/4 v6, 0x1

    const/4 v8, 0x0

    goto/16 :goto_7

    .line 117
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageWriter;->processImageComplete()V

    .line 118
    iget v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->currentImage:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->currentImage:I

    return-void

    .line 119
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty source region!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 120
    :cond_1c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image == null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "output == null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeHeader()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->streamMetadata:Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;->byteOrder:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->byteOrder:Ljava/nio/ByteOrder;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->byteOrder:Ljava/nio/ByteOrder;

    :goto_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->byteOrder:Ljava/nio/ByteOrder;

    invoke-interface {v0, v1}, Ljavax/imageio/stream/ImageInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->byteOrder:Ljava/nio/ByteOrder;

    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    const/16 v1, 0x4d4d

    invoke-interface {v0, v1}, Ljavax/imageio/stream/ImageOutputStream;->writeShort(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    const/16 v1, 0x4949

    invoke-interface {v0, v1}, Ljavax/imageio/stream/ImageOutputStream;->writeShort(I)V

    :goto_1
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    const/16 v1, 0x2a

    invoke-interface {v0, v1}, Ljavax/imageio/stream/ImageOutputStream;->writeShort(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nextSpace:J

    const-wide/16 v2, 0x8

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->headerPosition:J

    return-void
.end method

.method private writeTile(Ljava/awt/Rectangle;Lcom/sun/imageio/plugins/tiff/TIFFCompressor;)I
    .locals 52
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/awt/Rectangle;

    iget-object v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->image:Ljava/awt/image/RenderedImage;

    invoke-interface {v3}, Ljava/awt/image/RenderedImage;->getMinX()I

    move-result v3

    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->image:Ljava/awt/image/RenderedImage;

    invoke-interface {v4}, Ljava/awt/image/RenderedImage;->getMinY()I

    move-result v4

    iget-object v5, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->image:Ljava/awt/image/RenderedImage;

    invoke-interface {v5}, Ljava/awt/image/RenderedImage;->getWidth()I

    move-result v5

    iget-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->image:Ljava/awt/image/RenderedImage;

    invoke-interface {v6}, Ljava/awt/image/RenderedImage;->getHeight()I

    move-result v6

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/awt/Rectangle;-><init>(IIII)V

    iget-boolean v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isTiled:Z

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-nez v3, :cond_0

    invoke-virtual {v1, v2}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object v1

    :goto_0
    move-object v2, v1

    move v3, v4

    goto :goto_1

    :cond_0
    invoke-virtual {v2, v1}, Ljava/awt/Rectangle;->contains(Ljava/awt/Rectangle;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object v2

    move v3, v5

    move-object/from16 v51, v2

    move-object v2, v1

    move-object/from16 v1, v51

    :goto_1
    invoke-virtual {v1}, Ljava/awt/Rectangle;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    return v4

    :cond_2
    iget v6, v2, Ljava/awt/Rectangle;->x:I

    iget v15, v2, Ljava/awt/Rectangle;->y:I

    iget v14, v2, Ljava/awt/Rectangle;->width:I

    iget v13, v2, Ljava/awt/Rectangle;->height:I

    iget-boolean v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isImageSimple:Z

    const/16 v12, 0x8

    if-eqz v7, :cond_8

    iget-object v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->image:Ljava/awt/image/RenderedImage;

    invoke-interface {v7}, Ljava/awt/image/RenderedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v7

    iget-object v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->image:Ljava/awt/image/RenderedImage;

    invoke-interface {v8, v1}, Ljava/awt/image/RenderedImage;->getData(Ljava/awt/Rectangle;)Ljava/awt/image/Raster;

    move-result-object v8

    if-eqz v3, :cond_3

    invoke-virtual {v8, v6, v15, v14, v13}, Ljava/awt/image/Raster;->createCompatibleWritableRaster(IIII)Ljava/awt/image/WritableRaster;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/awt/image/WritableRaster;->setRect(Ljava/awt/image/Raster;)V

    move-object v8, v9

    :cond_3
    iget-boolean v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isBilevel:Z

    if-eqz v9, :cond_7

    invoke-static {v8, v2}, Lcom/sun/imageio/plugins/common/ImageUtil;->getPackedBinaryData(Ljava/awt/image/Raster;Ljava/awt/Rectangle;)[B

    move-result-object v1

    iget-boolean v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isInverted:Z

    if-eqz v3, :cond_6

    invoke-virtual {v8}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v3

    instance-of v5, v3, Ljava/awt/image/DataBufferByte;

    if-eqz v5, :cond_5

    check-cast v3, Ljava/awt/image/DataBufferByte;

    invoke-virtual {v3}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object v3

    if-ne v1, v3, :cond_5

    array-length v3, v1

    new-array v3, v3, [B

    array-length v5, v1

    :goto_2
    if-ge v4, v5, :cond_4

    aget-byte v6, v1, v4

    xor-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_4
    move-object v8, v3

    goto :goto_4

    :cond_5
    array-length v3, v1

    :goto_3
    if-ge v4, v3, :cond_6

    aget-byte v5, v1, v4

    xor-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_6
    move-object v8, v1

    :goto_4
    const/4 v9, 0x0

    iget-object v0, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sampleSize:[I

    iget v1, v2, Ljava/awt/Rectangle;->width:I

    add-int/lit8 v1, v1, 0x7

    div-int/2addr v1, v12

    move-object/from16 v7, p2

    move v10, v14

    move v11, v13

    move-object v12, v0

    move v13, v1

    invoke-virtual/range {v7 .. v13}, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->encode([BIII[II)I

    move-result v0

    return v0

    :cond_7
    iget v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    if-ne v2, v12, :cond_8

    invoke-virtual {v7}, Ljava/awt/image/SampleModel;->getDataType()I

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {v8}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v1

    check-cast v1, Ljava/awt/image/ComponentSampleModel;

    invoke-virtual {v8}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v2

    check-cast v2, Ljava/awt/image/DataBufferByte;

    invoke-virtual {v2}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object v2

    invoke-virtual {v8}, Ljava/awt/image/Raster;->getSampleModelTranslateX()I

    move-result v3

    sub-int/2addr v6, v3

    invoke-virtual {v8}, Ljava/awt/image/Raster;->getSampleModelTranslateY()I

    move-result v3

    sub-int/2addr v15, v3

    invoke-virtual {v1, v6, v15}, Ljava/awt/image/ComponentSampleModel;->getOffset(II)I

    move-result v9

    iget-object v12, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sampleSize:[I

    invoke-virtual {v1}, Ljava/awt/image/ComponentSampleModel;->getScanlineStride()I

    move-result v0

    move-object/from16 v7, p2

    move-object v8, v2

    move v10, v14

    move v11, v13

    move v13, v0

    invoke-virtual/range {v7 .. v13}, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->encode([BIII[II)I

    move-result v0

    return v0

    :cond_8
    iget v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->periodX:I

    iget v11, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->periodY:I

    add-int v7, v14, v2

    sub-int/2addr v7, v5

    div-int v10, v7, v2

    add-int v7, v13, v11

    sub-int/2addr v7, v5

    div-int v9, v7, v11

    if-eqz v10, :cond_55

    if-nez v9, :cond_9

    goto/16 :goto_3e

    :cond_9
    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    mul-int v16, v2, v7

    iget v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    div-int v4, v12, v8

    mul-int v5, v14, v7

    mul-int/2addr v7, v10

    const/16 v12, 0x8

    if-ge v8, v12, :cond_a

    add-int/2addr v7, v4

    const/4 v12, 0x1

    sub-int/2addr v7, v12

    div-int/2addr v7, v4

    :goto_5
    move/from16 v22, v7

    const/16 v12, 0x40

    goto :goto_6

    :cond_a
    const/16 v12, 0x10

    if-ne v8, v12, :cond_b

    mul-int/lit8 v7, v7, 0x2

    goto :goto_5

    :cond_b
    const/16 v12, 0x20

    if-ne v8, v12, :cond_c

    mul-int/lit8 v7, v7, 0x4

    goto :goto_5

    :cond_c
    const/16 v12, 0x40

    if-ne v8, v12, :cond_d

    mul-int/lit8 v7, v7, 0x8

    :cond_d
    move/from16 v22, v7

    :goto_6
    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sampleFormat:I

    const/16 v19, 0x0

    move/from16 v23, v4

    const/4 v4, 0x3

    if-ne v7, v4, :cond_f

    const/16 v7, 0x20

    if-ne v8, v7, :cond_e

    new-array v8, v5, [F

    move-object/from16 v24, v8

    move-object/from16 v20, v19

    move-object/from16 v25, v20

    goto :goto_7

    :cond_e
    new-array v8, v5, [D

    move-object/from16 v25, v8

    move-object/from16 v20, v19

    move-object/from16 v24, v20

    goto :goto_7

    :cond_f
    const/16 v7, 0x20

    new-array v8, v5, [I

    move-object/from16 v20, v8

    move-object/from16 v24, v19

    move-object/from16 v25, v24

    :goto_7
    mul-int v8, v22, v9

    new-array v8, v8, [B

    iget-boolean v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isInverted:Z

    if-nez v7, :cond_14

    iget-boolean v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isRescaling:Z

    if-nez v7, :cond_14

    iget-object v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceBands:[I

    if-nez v7, :cond_14

    const/4 v7, 0x1

    if-ne v2, v7, :cond_14

    if-ne v11, v7, :cond_14

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->colorConverter:Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;

    if-nez v2, :cond_14

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->image:Ljava/awt/image/RenderedImage;

    invoke-interface {v2}, Ljava/awt/image/RenderedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v2

    instance-of v7, v2, Ljava/awt/image/ComponentSampleModel;

    if-eqz v7, :cond_14

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    const/16 v12, 0x8

    if-ne v7, v12, :cond_15

    invoke-virtual {v2}, Ljava/awt/image/SampleModel;->getDataType()I

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->image:Ljava/awt/image/RenderedImage;

    invoke-interface {v2, v1}, Ljava/awt/image/RenderedImage;->getData(Ljava/awt/Rectangle;)Ljava/awt/image/Raster;

    move-result-object v1

    if-eqz v3, :cond_10

    invoke-virtual {v1, v6, v15, v14, v13}, Ljava/awt/image/Raster;->createCompatibleWritableRaster(IIII)Ljava/awt/image/WritableRaster;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/awt/image/WritableRaster;->setRect(Ljava/awt/image/Raster;)V

    move-object v1, v2

    :cond_10
    invoke-virtual {v1}, Ljava/awt/image/Raster;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v2

    check-cast v2, Ljava/awt/image/ComponentSampleModel;

    invoke-virtual {v2}, Ljava/awt/image/ComponentSampleModel;->getBankIndices()[I

    move-result-object v3

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object v4

    check-cast v4, Ljava/awt/image/DataBufferByte;

    invoke-virtual {v4}, Ljava/awt/image/DataBufferByte;->getBankData()[[B

    move-result-object v4

    invoke-virtual {v2}, Ljava/awt/image/ComponentSampleModel;->getScanlineStride()I

    move-result v5

    invoke-virtual {v2}, Ljava/awt/image/ComponentSampleModel;->getPixelStride()I

    move-result v6

    const/4 v7, 0x0

    :goto_8
    iget v11, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    if-ge v7, v11, :cond_13

    aget v11, v3, v7

    aget-object v11, v4, v11

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getMinX()I

    move-result v12

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getSampleModelTranslateX()I

    move-result v15

    sub-int/2addr v12, v15

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getMinY()I

    move-result v15

    invoke-virtual {v1}, Ljava/awt/image/Raster;->getSampleModelTranslateY()I

    move-result v16

    sub-int v15, v15, v16

    invoke-virtual {v2, v12, v15, v7}, Ljava/awt/image/ComponentSampleModel;->getOffset(III)I

    move-result v12

    move/from16 v16, v7

    const/4 v15, 0x0

    :goto_9
    if-ge v15, v9, :cond_12

    move-object/from16 p1, v1

    move/from16 v18, v12

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v10, :cond_11

    aget-byte v19, v11, v18

    aput-byte v19, v8, v16

    move-object/from16 v19, v2

    iget v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    add-int v16, v16, v2

    add-int v18, v18, v6

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v2, v19

    goto :goto_a

    :cond_11
    move-object/from16 v19, v2

    add-int/2addr v12, v5

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v1, p1

    goto :goto_9

    :cond_12
    move-object/from16 p1, v1

    move-object/from16 v19, v2

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_13
    const/4 v9, 0x0

    iget-object v12, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sampleSize:[I

    mul-int v0, v14, v11

    move-object/from16 v7, p2

    move v10, v14

    move v11, v13

    move v13, v0

    invoke-virtual/range {v7 .. v13}, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->encode([BIII[II)I

    move-result v0

    return v0

    :cond_14
    const/16 v12, 0x8

    :cond_15
    iget v2, v1, Ljava/awt/Rectangle;->x:I

    iget v7, v1, Ljava/awt/Rectangle;->y:I

    iget v12, v1, Ljava/awt/Rectangle;->height:I

    add-int/2addr v12, v7

    const/4 v4, 0x1

    sub-int/2addr v12, v4

    iget v1, v1, Ljava/awt/Rectangle;->width:I

    move-object/from16 v29, v8

    if-eqz v3, :cond_16

    iget-object v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->image:Ljava/awt/image/RenderedImage;

    invoke-interface {v8}, Ljava/awt/image/RenderedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v8

    invoke-virtual {v8, v14, v4}, Ljava/awt/image/SampleModel;->createCompatibleSampleModel(II)Ljava/awt/image/SampleModel;

    move-result-object v19

    :cond_16
    move-object/from16 v4, v19

    move/from16 v30, v9

    move v8, v15

    const/16 v19, 0x0

    :goto_b
    add-int v9, v15, v13

    if-ge v8, v9, :cond_53

    if-eqz v3, :cond_18

    new-instance v9, Ljava/awt/Point;

    invoke-direct {v9, v6, v8}, Ljava/awt/Point;-><init>(II)V

    invoke-static {v4, v9}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v9

    if-lt v8, v7, :cond_17

    if-gt v8, v12, :cond_17

    move/from16 v31, v3

    new-instance v3, Ljava/awt/Rectangle;

    move-object/from16 v32, v4

    const/4 v4, 0x1

    invoke-direct {v3, v2, v8, v1, v4}, Ljava/awt/Rectangle;-><init>(IIII)V

    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->image:Ljava/awt/image/RenderedImage;

    invoke-interface {v4, v3}, Ljava/awt/image/RenderedImage;->getData(Ljava/awt/Rectangle;)Ljava/awt/image/Raster;

    move-result-object v3

    invoke-virtual {v9, v3}, Ljava/awt/image/WritableRaster;->setRect(Ljava/awt/image/Raster;)V

    goto :goto_c

    :cond_17
    move/from16 v31, v3

    move-object/from16 v32, v4

    :goto_c
    move-object v3, v9

    goto :goto_d

    :cond_18
    move/from16 v31, v3

    move-object/from16 v32, v4

    new-instance v3, Ljava/awt/Rectangle;

    const/4 v4, 0x1

    invoke-direct {v3, v6, v8, v14, v4}, Ljava/awt/Rectangle;-><init>(IIII)V

    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->image:Ljava/awt/image/RenderedImage;

    invoke-interface {v4, v3}, Ljava/awt/image/RenderedImage;->getData(Ljava/awt/Rectangle;)Ljava/awt/image/Raster;

    move-result-object v3

    :goto_d
    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceBands:[I

    if-eqz v4, :cond_19

    const/16 v33, 0x1

    move/from16 v26, v7

    const/16 v34, 0x20

    move-object v7, v3

    move/from16 v35, v8

    move v8, v6

    move/from16 v9, v35

    move/from16 v36, v10

    move v10, v14

    move/from16 v37, v11

    move/from16 v11, v33

    move/from16 v21, v12

    move/from16 v3, v34

    move v12, v6

    move/from16 v33, v13

    move/from16 v13, v35

    move/from16 p1, v14

    move-object v14, v4

    invoke-virtual/range {v7 .. v14}, Ljava/awt/image/Raster;->createChild(IIIIII[I)Ljava/awt/image/Raster;

    move-result-object v4

    move-object v7, v4

    const/16 v4, 0x40

    goto :goto_e

    :cond_19
    move-object v9, v3

    move/from16 v26, v7

    move/from16 v35, v8

    move/from16 v36, v10

    move/from16 v37, v11

    move/from16 v21, v12

    move/from16 v33, v13

    move/from16 p1, v14

    const/16 v3, 0x20

    const/16 v4, 0x40

    move-object v7, v9

    :goto_e
    iget v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sampleFormat:I

    const/4 v9, 0x3

    if-ne v8, v9, :cond_1b

    if-eqz v24, :cond_1a

    const/4 v11, 0x1

    move v8, v6

    move/from16 v9, v35

    move/from16 v10, p1

    move-object/from16 v12, v24

    invoke-virtual/range {v7 .. v12}, Ljava/awt/image/Raster;->getPixels(IIII[F)[F

    goto :goto_10

    :cond_1a
    const/4 v11, 0x1

    move v8, v6

    move/from16 v9, v35

    move/from16 v10, p1

    move-object/from16 v12, v25

    invoke-virtual/range {v7 .. v12}, Ljava/awt/image/Raster;->getPixels(IIII[D)[D

    goto :goto_10

    :cond_1b
    const/4 v11, 0x1

    move v8, v6

    move/from16 v9, v35

    move/from16 v10, p1

    move-object/from16 v12, v20

    invoke-virtual/range {v7 .. v12}, Ljava/awt/image/Raster;->getPixels(IIII[I)[I

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nativePhotometricInterpretation:I

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1c

    iget v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    if-eqz v9, :cond_1d

    :cond_1c
    if-nez v7, :cond_1e

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    if-ne v7, v8, :cond_1e

    :cond_1d
    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    shl-int v7, v8, v7

    sub-int/2addr v7, v8

    const/4 v8, 0x0

    :goto_f
    if-ge v8, v5, :cond_1e

    aget v9, v20, v8

    xor-int/2addr v9, v7

    aput v9, v20, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_f

    :cond_1e
    :goto_10
    iget-object v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->colorConverter:Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;

    const/4 v8, 0x2

    if-eqz v7, :cond_21

    const/4 v7, 0x3

    new-array v9, v7, [F

    iget v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sampleFormat:I

    if-ne v10, v7, :cond_20

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    if-ne v7, v3, :cond_1f

    move/from16 v11, p1

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_11
    if-ge v7, v11, :cond_22

    aget v12, v24, v10

    add-int/lit8 v13, v10, 0x1

    aget v14, v24, v13

    add-int/lit8 v27, v10, 0x2

    aget v4, v24, v27

    iget-object v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->colorConverter:Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;

    invoke-virtual {v3, v12, v14, v4, v9}, Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;->fromRGB(FFF[F)V

    const/4 v3, 0x0

    aget v4, v9, v3

    aput v4, v24, v10

    const/4 v3, 0x1

    aget v4, v9, v3

    aput v4, v24, v13

    aget v3, v9, v8

    aput v3, v24, v27

    const/4 v3, 0x3

    add-int/2addr v10, v3

    add-int/lit8 v7, v7, 0x1

    const/16 v3, 0x20

    const/16 v4, 0x40

    goto :goto_11

    :cond_1f
    move/from16 v11, p1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_12
    if-ge v3, v11, :cond_22

    aget-wide v12, v25, v4

    double-to-float v7, v12

    add-int/lit8 v10, v4, 0x1

    aget-wide v12, v25, v10

    double-to-float v12, v12

    add-int/lit8 v13, v4, 0x2

    move-object/from16 v27, v9

    aget-wide v8, v25, v13

    double-to-float v8, v8

    iget-object v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->colorConverter:Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;

    move-object/from16 v14, v27

    invoke-virtual {v9, v7, v12, v8, v14}, Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;->fromRGB(FFF[F)V

    const/4 v7, 0x0

    aget v8, v14, v7

    float-to-double v7, v8

    aput-wide v7, v25, v4

    const/4 v7, 0x1

    aget v8, v14, v7

    float-to-double v7, v8

    aput-wide v7, v25, v10

    const/4 v7, 0x2

    aget v8, v14, v7

    float-to-double v8, v8

    aput-wide v8, v25, v13

    const/4 v8, 0x3

    add-int/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    move-object v9, v14

    const/4 v8, 0x2

    goto :goto_12

    :cond_20
    move/from16 v11, p1

    move-object v14, v9

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_13
    if-ge v3, v11, :cond_22

    aget v8, v20, v4

    int-to-float v8, v8

    add-int/lit8 v9, v4, 0x1

    aget v10, v20, v9

    int-to-float v10, v10

    add-int/lit8 v12, v4, 0x2

    aget v13, v20, v12

    int-to-float v13, v13

    iget-object v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->colorConverter:Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;

    invoke-virtual {v7, v8, v10, v13, v14}, Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;->fromRGB(FFF[F)V

    const/4 v7, 0x0

    aget v8, v14, v7

    float-to-int v7, v8

    aput v7, v20, v4

    const/4 v7, 0x1

    aget v8, v14, v7

    float-to-int v7, v8

    aput v7, v20, v9

    const/4 v7, 0x2

    aget v8, v14, v7

    float-to-int v8, v8

    aput v8, v20, v12

    const/4 v8, 0x3

    add-int/2addr v4, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    :cond_21
    move/from16 v11, p1

    :cond_22
    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_4c

    const/4 v4, 0x2

    if-eq v3, v4, :cond_4b

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4b

    const/16 v4, 0x8

    if-eq v3, v4, :cond_44

    const/16 v7, 0x10

    if-eq v3, v7, :cond_3b

    const-wide/16 v38, 0xff

    const/16 v10, 0x18

    const/16 v14, 0x20

    if-eq v3, v14, :cond_2c

    const/16 v14, 0x40

    if-eq v3, v14, :cond_24

    :cond_23
    move v13, v1

    move v12, v2

    move v14, v11

    const/16 v11, 0x20

    goto/16 :goto_18

    :cond_24
    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sampleFormat:I

    const/4 v14, 0x3

    if-ne v3, v14, :cond_23

    iget-object v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v3}, Ljavax/imageio/stream/ImageInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    sget-object v14, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const-wide v40, 0xff0000000000L

    const-wide v42, 0xff00000000L

    const-wide v44, 0xff000000L

    if-ne v3, v14, :cond_27

    const/4 v3, 0x0

    :goto_14
    if-ge v3, v5, :cond_26

    const/4 v14, 0x0

    :goto_15
    iget v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    if-ge v14, v4, :cond_25

    add-int v4, v3, v14

    aget-wide v46, v25, v4

    invoke-static/range {v46 .. v47}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v46

    add-int/lit8 v4, v19, 0x1

    const-wide/high16 v48, -0x100000000000000L

    and-long v48, v46, v48

    const/16 v50, 0x38

    shr-long v12, v48, v50

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v29, v19

    add-int/lit8 v12, v4, 0x1

    const-wide/high16 v48, 0xff000000000000L

    and-long v48, v46, v48

    const/16 v13, 0x30

    shr-long v7, v48, v13

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v29, v4

    add-int/lit8 v4, v12, 0x1

    and-long v7, v46, v40

    const/16 v9, 0x28

    shr-long/2addr v7, v9

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v29, v12

    add-int/lit8 v7, v4, 0x1

    and-long v8, v46, v42

    const/16 v12, 0x20

    shr-long/2addr v8, v12

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v29, v4

    add-int/lit8 v4, v7, 0x1

    and-long v8, v46, v44

    shr-long/2addr v8, v10

    long-to-int v8, v8

    int-to-byte v8, v8

    aput-byte v8, v29, v7

    add-int/lit8 v7, v4, 0x1

    const-wide/32 v8, 0xff0000

    and-long v12, v46, v8

    const/16 v8, 0x10

    shr-long/2addr v12, v8

    long-to-int v8, v12

    int-to-byte v8, v8

    aput-byte v8, v29, v4

    add-int/lit8 v4, v7, 0x1

    const-wide/32 v8, 0xff00

    and-long v12, v46, v8

    const/16 v8, 0x8

    shr-long/2addr v12, v8

    long-to-int v8, v12

    int-to-byte v8, v8

    aput-byte v8, v29, v7

    add-int/lit8 v19, v4, 0x1

    and-long v7, v46, v38

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v29, v4

    add-int/lit8 v14, v14, 0x1

    const/16 v7, 0x10

    goto :goto_15

    :cond_25
    add-int v3, v3, v16

    const/16 v4, 0x8

    const/16 v7, 0x10

    goto :goto_14

    :cond_26
    move/from16 v43, v1

    move/from16 v44, v2

    move v8, v4

    move v12, v7

    move/from16 v41, v11

    move/from16 v28, v15

    move/from16 v7, v23

    const/4 v2, 0x1

    goto/16 :goto_3c

    :cond_27
    const/4 v3, 0x0

    :goto_16
    if-ge v3, v5, :cond_29

    const/4 v4, 0x0

    :goto_17
    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    if-ge v4, v7, :cond_28

    add-int v7, v3, v4

    aget-wide v7, v25, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v7

    add-int/lit8 v9, v19, 0x1

    and-long v12, v7, v38

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v29, v19

    add-int/lit8 v12, v9, 0x1

    const-wide/32 v13, 0xff00

    and-long v46, v7, v13

    move v14, v11

    const/16 v13, 0x8

    shr-long v10, v46, v13

    long-to-int v10, v10

    int-to-byte v10, v10

    aput-byte v10, v29, v9

    add-int/lit8 v9, v12, 0x1

    const-wide/32 v10, 0xff0000

    and-long v46, v7, v10

    move v13, v1

    move v11, v2

    const/16 v10, 0x10

    shr-long v1, v46, v10

    long-to-int v1, v1

    int-to-byte v1, v1

    aput-byte v1, v29, v12

    add-int/lit8 v1, v9, 0x1

    and-long v46, v7, v44

    move v12, v11

    const/16 v2, 0x18

    shr-long v10, v46, v2

    long-to-int v2, v10

    int-to-byte v2, v2

    aput-byte v2, v29, v9

    add-int/lit8 v2, v1, 0x1

    and-long v9, v7, v42

    const/16 v11, 0x20

    shr-long/2addr v9, v11

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v29, v1

    add-int/lit8 v1, v2, 0x1

    and-long v9, v7, v40

    const/16 v19, 0x28

    shr-long v9, v9, v19

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v29, v2

    add-int/lit8 v2, v1, 0x1

    const-wide/high16 v9, 0xff000000000000L

    and-long/2addr v9, v7

    const/16 v19, 0x30

    shr-long v9, v9, v19

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v29, v1

    add-int/lit8 v19, v2, 0x1

    const-wide/high16 v9, -0x100000000000000L

    and-long/2addr v7, v9

    const/16 v1, 0x38

    shr-long/2addr v7, v1

    long-to-int v1, v7

    int-to-byte v1, v1

    aput-byte v1, v29, v2

    add-int/lit8 v4, v4, 0x1

    move v2, v12

    move v1, v13

    move v11, v14

    const/16 v10, 0x18

    goto :goto_17

    :cond_28
    move v13, v1

    move v12, v2

    move v14, v11

    const/16 v11, 0x20

    add-int v3, v3, v16

    move v11, v14

    const/16 v10, 0x18

    goto/16 :goto_16

    :cond_29
    move/from16 v43, v1

    move/from16 v44, v2

    move/from16 v41, v11

    goto :goto_19

    :cond_2a
    :goto_18
    move/from16 v44, v12

    move/from16 v43, v13

    move/from16 v41, v14

    :goto_19
    move/from16 v28, v15

    :cond_2b
    move/from16 v7, v23

    const/4 v2, 0x1

    const/16 v8, 0x8

    const/16 v12, 0x10

    goto/16 :goto_3c

    :cond_2c
    move v13, v1

    move v12, v2

    move/from16 v51, v14

    move v14, v11

    move/from16 v11, v51

    iget v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sampleFormat:I

    const/high16 v2, -0x1000000

    const/high16 v4, 0xff0000

    const v7, 0xff00

    const/4 v8, 0x3

    if-ne v1, v8, :cond_30

    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v3, :cond_2e

    const/4 v3, 0x0

    :goto_1a
    if-ge v3, v5, :cond_2a

    const/4 v1, 0x0

    :goto_1b
    iget v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    if-ge v1, v9, :cond_2d

    add-int v9, v3, v1

    aget v9, v24, v9

    invoke-static {v9}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v9

    add-int/lit8 v10, v19, 0x1

    and-int v28, v9, v2

    const/16 v38, 0x18

    shr-int/lit8 v8, v28, 0x18

    int-to-byte v8, v8

    aput-byte v8, v29, v19

    add-int/lit8 v8, v10, 0x1

    and-int v19, v9, v4

    const/16 v28, 0x10

    shr-int/lit8 v11, v19, 0x10

    int-to-byte v11, v11

    aput-byte v11, v29, v10

    add-int/lit8 v10, v8, 0x1

    and-int v11, v9, v7

    const/16 v19, 0x8

    shr-int/lit8 v11, v11, 0x8

    int-to-byte v11, v11

    aput-byte v11, v29, v8

    add-int/lit8 v19, v10, 0x1

    and-int/lit16 v8, v9, 0xff

    int-to-byte v8, v8

    aput-byte v8, v29, v10

    add-int/lit8 v1, v1, 0x1

    const/4 v8, 0x3

    const/16 v11, 0x20

    goto :goto_1b

    :cond_2d
    add-int v3, v3, v16

    const/4 v8, 0x3

    const/16 v11, 0x20

    goto :goto_1a

    :cond_2e
    const/4 v3, 0x0

    :goto_1c
    if-ge v3, v5, :cond_2a

    const/4 v1, 0x0

    :goto_1d
    iget v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    if-ge v1, v8, :cond_2f

    add-int v8, v3, v1

    aget v8, v24, v8

    invoke-static {v8}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v8

    add-int/lit8 v9, v19, 0x1

    and-int/lit16 v10, v8, 0xff

    int-to-byte v10, v10

    aput-byte v10, v29, v19

    add-int/lit8 v10, v9, 0x1

    and-int v11, v8, v7

    const/16 v19, 0x8

    shr-int/lit8 v11, v11, 0x8

    int-to-byte v11, v11

    aput-byte v11, v29, v9

    add-int/lit8 v9, v10, 0x1

    and-int v11, v8, v4

    const/16 v19, 0x10

    shr-int/lit8 v11, v11, 0x10

    int-to-byte v11, v11

    aput-byte v11, v29, v10

    add-int/lit8 v19, v9, 0x1

    and-int/2addr v8, v2

    const/16 v10, 0x18

    shr-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v29, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_2f
    add-int v3, v3, v16

    goto :goto_1c

    :cond_30
    iget-boolean v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isRescaling:Z

    if-eqz v1, :cond_36

    iget v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    new-array v2, v1, [J

    new-array v1, v1, [J

    int-to-long v3, v3

    long-to-int v3, v3

    const-wide/16 v7, 0x1

    shl-long v3, v7, v3

    sub-long/2addr v3, v7

    const/4 v9, 0x0

    :goto_1e
    iget v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    if-ge v9, v10, :cond_31

    iget-object v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sampleSize:[I

    aget v10, v10, v9

    int-to-long v10, v10

    long-to-int v10, v10

    shl-long v10, v7, v10

    sub-long/2addr v10, v7

    aput-wide v10, v2, v9

    const-wide/16 v41, 0x2

    div-long v10, v10, v41

    aput-wide v10, v1, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_1e

    :cond_31
    iget-object v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v7}, Ljavax/imageio/stream/ImageInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v7

    sget-object v8, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v7, v8, :cond_34

    const/4 v7, 0x0

    :goto_1f
    if-ge v7, v5, :cond_33

    const/4 v8, 0x0

    :goto_20
    iget v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    if-ge v8, v9, :cond_32

    add-int v9, v7, v8

    aget v9, v20, v9

    int-to-long v9, v9

    mul-long/2addr v9, v3

    aget-wide v41, v1, v8

    add-long v9, v9, v41

    aget-wide v41, v2, v8

    div-long v9, v9, v41

    add-int/lit8 v11, v19, 0x1

    const-wide/32 v41, -0x1000000

    and-long v41, v9, v41

    move/from16 v44, v12

    move/from16 v43, v13

    const/16 v28, 0x18

    shr-long v12, v41, v28

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v29, v19

    add-int/lit8 v12, v11, 0x1

    const-wide/32 v41, 0xff0000

    and-long v45, v9, v41

    move/from16 v41, v14

    move/from16 v28, v15

    const/16 v13, 0x10

    shr-long v14, v45, v13

    long-to-int v13, v14

    int-to-byte v13, v13

    aput-byte v13, v29, v11

    add-int/lit8 v11, v12, 0x1

    const-wide/32 v13, 0xff00

    and-long v45, v9, v13

    const/16 v13, 0x8

    shr-long v14, v45, v13

    long-to-int v13, v14

    int-to-byte v13, v13

    aput-byte v13, v29, v12

    add-int/lit8 v19, v11, 0x1

    and-long v9, v9, v38

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v29, v11

    add-int/lit8 v8, v8, 0x1

    move/from16 v15, v28

    move/from16 v14, v41

    move/from16 v13, v43

    move/from16 v12, v44

    goto :goto_20

    :cond_32
    move/from16 v44, v12

    move/from16 v43, v13

    move/from16 v41, v14

    move/from16 v28, v15

    add-int v7, v7, v16

    goto :goto_1f

    :cond_33
    move/from16 v44, v12

    move/from16 v43, v13

    move/from16 v41, v14

    goto/16 :goto_19

    :cond_34
    move/from16 v44, v12

    move/from16 v43, v13

    move/from16 v41, v14

    move/from16 v28, v15

    const/4 v7, 0x0

    :goto_21
    if-ge v7, v5, :cond_2b

    const/4 v8, 0x0

    :goto_22
    iget v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    if-ge v8, v9, :cond_35

    add-int v9, v7, v8

    aget v9, v20, v9

    int-to-long v9, v9

    mul-long/2addr v9, v3

    aget-wide v11, v1, v8

    add-long/2addr v9, v11

    aget-wide v11, v2, v8

    div-long/2addr v9, v11

    add-int/lit8 v11, v19, 0x1

    and-long v12, v9, v38

    long-to-int v12, v12

    int-to-byte v12, v12

    aput-byte v12, v29, v19

    add-int/lit8 v12, v11, 0x1

    const-wide/32 v13, 0xff00

    and-long v45, v9, v13

    const/16 v15, 0x8

    shr-long v13, v45, v15

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, v29, v11

    add-int/lit8 v11, v12, 0x1

    const-wide/32 v13, 0xff0000

    and-long v45, v9, v13

    const/16 v15, 0x10

    shr-long v13, v45, v15

    long-to-int v13, v13

    int-to-byte v13, v13

    aput-byte v13, v29, v12

    add-int/lit8 v19, v11, 0x1

    const-wide/32 v12, -0x1000000

    and-long/2addr v9, v12

    const/16 v12, 0x18

    shr-long/2addr v9, v12

    long-to-int v9, v9

    int-to-byte v9, v9

    aput-byte v9, v29, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_22

    :cond_35
    add-int v7, v7, v16

    goto :goto_21

    :cond_36
    move/from16 v44, v12

    move/from16 v43, v13

    move/from16 v41, v14

    move/from16 v28, v15

    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v3, :cond_38

    const/4 v3, 0x0

    :goto_23
    if-ge v3, v5, :cond_2b

    const/4 v1, 0x0

    :goto_24
    iget v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    if-ge v1, v8, :cond_37

    add-int v8, v3, v1

    aget v8, v20, v8

    add-int/lit8 v9, v19, 0x1

    and-int v10, v8, v2

    const/16 v11, 0x18

    shr-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v29, v19

    add-int/lit8 v10, v9, 0x1

    and-int v11, v8, v4

    const/16 v12, 0x10

    shr-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v29, v9

    add-int/lit8 v9, v10, 0x1

    and-int v11, v8, v7

    const/16 v12, 0x8

    shr-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v29, v10

    add-int/lit8 v19, v9, 0x1

    and-int/lit16 v8, v8, 0xff

    int-to-byte v8, v8

    aput-byte v8, v29, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_24

    :cond_37
    add-int v3, v3, v16

    goto :goto_23

    :cond_38
    const/4 v3, 0x0

    :goto_25
    if-ge v3, v5, :cond_3a

    const/4 v1, 0x0

    :goto_26
    iget v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    if-ge v1, v8, :cond_39

    add-int v8, v3, v1

    aget v8, v20, v8

    add-int/lit8 v9, v19, 0x1

    and-int/lit16 v10, v8, 0xff

    int-to-byte v10, v10

    aput-byte v10, v29, v19

    add-int/lit8 v10, v9, 0x1

    and-int v11, v8, v7

    const/16 v12, 0x8

    shr-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v29, v9

    add-int/lit8 v9, v10, 0x1

    and-int v11, v8, v4

    const/16 v12, 0x10

    shr-int/2addr v11, v12

    int-to-byte v11, v11

    aput-byte v11, v29, v10

    add-int/lit8 v19, v9, 0x1

    and-int/2addr v8, v2

    const/16 v10, 0x18

    shr-int/2addr v8, v10

    int-to-byte v8, v8

    aput-byte v8, v29, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_39
    const/16 v10, 0x18

    const/16 v12, 0x10

    add-int v3, v3, v16

    goto :goto_25

    :cond_3a
    const/16 v12, 0x10

    goto/16 :goto_2f

    :cond_3b
    move/from16 v43, v1

    move/from16 v44, v2

    move v12, v7

    move/from16 v41, v11

    move/from16 v28, v15

    iget-boolean v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isRescaling:Z

    if-eqz v1, :cond_3f

    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_3d

    const/4 v3, 0x0

    :goto_27
    if-ge v3, v5, :cond_43

    const/4 v1, 0x0

    :goto_28
    iget v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    if-ge v1, v2, :cond_3c

    add-int v2, v3, v1

    aget v2, v20, v2

    add-int/lit8 v4, v19, 0x1

    iget-object v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scaleh:[[B

    aget-object v7, v7, v1

    aget-byte v7, v7, v2

    aput-byte v7, v29, v19

    add-int/lit8 v19, v4, 0x1

    iget-object v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scalel:[[B

    aget-object v7, v7, v1

    aget-byte v2, v7, v2

    aput-byte v2, v29, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_28

    :cond_3c
    add-int v3, v3, v16

    goto :goto_27

    :cond_3d
    const/4 v3, 0x0

    :goto_29
    if-ge v3, v5, :cond_43

    const/4 v1, 0x0

    :goto_2a
    iget v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    if-ge v1, v2, :cond_3e

    add-int v2, v3, v1

    aget v2, v20, v2

    add-int/lit8 v4, v19, 0x1

    iget-object v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scalel:[[B

    aget-object v7, v7, v1

    aget-byte v7, v7, v2

    aput-byte v7, v29, v19

    add-int/lit8 v19, v4, 0x1

    iget-object v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scaleh:[[B

    aget-object v7, v7, v1

    aget-byte v2, v7, v2

    aput-byte v2, v29, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :cond_3e
    add-int v3, v3, v16

    goto :goto_29

    :cond_3f
    iget-object v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_41

    const/4 v3, 0x0

    :goto_2b
    if-ge v3, v5, :cond_43

    const/4 v1, 0x0

    :goto_2c
    iget v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    if-ge v1, v2, :cond_40

    add-int v2, v3, v1

    aget v2, v20, v2

    add-int/lit8 v4, v19, 0x1

    ushr-int/lit8 v7, v2, 0x8

    and-int/lit16 v7, v7, 0xff

    int-to-byte v7, v7

    aput-byte v7, v29, v19

    add-int/lit8 v19, v4, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v29, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    :cond_40
    add-int v3, v3, v16

    goto :goto_2b

    :cond_41
    const/4 v3, 0x0

    :goto_2d
    if-ge v3, v5, :cond_43

    const/4 v1, 0x0

    :goto_2e
    iget v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    if-ge v1, v2, :cond_42

    add-int v2, v3, v1

    aget v2, v20, v2

    add-int/lit8 v4, v19, 0x1

    and-int/lit16 v7, v2, 0xff

    int-to-byte v7, v7

    aput-byte v7, v29, v19

    add-int/lit8 v19, v4, 0x1

    const/16 v7, 0x8

    ushr-int/2addr v2, v7

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v29, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_42
    add-int v3, v3, v16

    goto :goto_2d

    :cond_43
    :goto_2f
    move/from16 v7, v23

    const/4 v2, 0x1

    goto/16 :goto_3b

    :cond_44
    move/from16 v43, v1

    move/from16 v44, v2

    move/from16 v41, v11

    move/from16 v28, v15

    const/16 v12, 0x10

    iget v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_46

    iget-boolean v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isRescaling:Z

    if-eqz v1, :cond_45

    const/4 v3, 0x0

    :goto_30
    if-ge v3, v5, :cond_4a

    add-int/lit8 v1, v19, 0x1

    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scale0:[B

    aget v7, v20, v3

    aget-byte v4, v4, v7

    aput-byte v4, v29, v19

    add-int v3, v3, v16

    move/from16 v19, v1

    goto :goto_30

    :cond_45
    const/4 v3, 0x0

    :goto_31
    if-ge v3, v5, :cond_4a

    add-int/lit8 v1, v19, 0x1

    aget v4, v20, v3

    int-to-byte v4, v4

    aput-byte v4, v29, v19

    add-int v3, v3, v16

    move/from16 v19, v1

    goto :goto_31

    :cond_46
    iget-boolean v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isRescaling:Z

    if-eqz v1, :cond_48

    const/4 v3, 0x0

    :goto_32
    if-ge v3, v5, :cond_4a

    const/4 v1, 0x0

    :goto_33
    iget v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    if-ge v1, v4, :cond_47

    add-int/lit8 v4, v19, 0x1

    iget-object v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scale:[[B

    aget-object v7, v7, v1

    add-int v8, v3, v1

    aget v8, v20, v8

    aget-byte v7, v7, v8

    aput-byte v7, v29, v19

    add-int/lit8 v1, v1, 0x1

    move/from16 v19, v4

    goto :goto_33

    :cond_47
    add-int v3, v3, v16

    goto :goto_32

    :cond_48
    const/4 v3, 0x0

    :goto_34
    if-ge v3, v5, :cond_4a

    const/4 v1, 0x0

    :goto_35
    iget v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    if-ge v1, v4, :cond_49

    add-int/lit8 v4, v19, 0x1

    add-int v7, v3, v1

    aget v7, v20, v7

    int-to-byte v7, v7

    aput-byte v7, v29, v19

    add-int/lit8 v1, v1, 0x1

    move/from16 v19, v4

    goto :goto_35

    :cond_49
    add-int v3, v3, v16

    goto :goto_34

    :cond_4a
    move/from16 v7, v23

    goto/16 :goto_3b

    :cond_4b
    move/from16 v43, v1

    move/from16 v44, v2

    move/from16 v41, v11

    move/from16 v28, v15

    const/4 v2, 0x1

    :goto_36
    const/16 v12, 0x10

    goto :goto_37

    :cond_4c
    move/from16 v43, v1

    move/from16 v44, v2

    move v2, v4

    move/from16 v41, v11

    move/from16 v28, v15

    goto :goto_36

    :goto_37
    iget-boolean v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isRescaling:Z

    if-eqz v1, :cond_4f

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_38
    if-ge v3, v5, :cond_4e

    iget-object v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->scale0:[B

    aget v8, v20, v3

    aget-byte v7, v7, v8

    iget v8, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    shl-int/2addr v4, v8

    or-int/2addr v4, v7

    add-int/lit8 v1, v1, 0x1

    move/from16 v7, v23

    if-ne v1, v7, :cond_4d

    add-int/lit8 v1, v19, 0x1

    int-to-byte v4, v4

    aput-byte v4, v29, v19

    move/from16 v19, v1

    const/4 v1, 0x0

    const/4 v4, 0x0

    :cond_4d
    add-int v3, v3, v16

    move/from16 v23, v7

    goto :goto_38

    :cond_4e
    move/from16 v7, v23

    goto :goto_3a

    :cond_4f
    move/from16 v7, v23

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_39
    if-ge v3, v5, :cond_51

    aget v8, v20, v3

    int-to-byte v8, v8

    iget v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    shl-int/2addr v1, v9

    or-int/2addr v1, v8

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v7, :cond_50

    add-int/lit8 v4, v19, 0x1

    int-to-byte v1, v1

    aput-byte v1, v29, v19

    move/from16 v19, v4

    const/4 v1, 0x0

    const/4 v4, 0x0

    :cond_50
    add-int v3, v3, v16

    goto :goto_39

    :cond_51
    move/from16 v51, v4

    move v4, v1

    move/from16 v1, v51

    :goto_3a
    if-eqz v1, :cond_52

    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    const/16 v8, 0x8

    div-int v9, v8, v3

    sub-int/2addr v9, v1

    mul-int/2addr v9, v3

    shl-int v1, v4, v9

    add-int/lit8 v3, v19, 0x1

    int-to-byte v1, v1

    aput-byte v1, v29, v19

    move/from16 v19, v3

    goto :goto_3c

    :cond_52
    :goto_3b
    const/16 v8, 0x8

    :goto_3c
    add-int v1, v35, v37

    move v8, v1

    move/from16 v23, v7

    move/from16 v12, v21

    move/from16 v7, v26

    move/from16 v15, v28

    move/from16 v3, v31

    move-object/from16 v4, v32

    move/from16 v13, v33

    move/from16 v10, v36

    move/from16 v11, v37

    move/from16 v14, v41

    move/from16 v1, v43

    move/from16 v2, v44

    goto/16 :goto_b

    :cond_53
    move/from16 v36, v10

    iget v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    new-array v2, v1, [I

    const/4 v4, 0x0

    :goto_3d
    if-ge v4, v1, :cond_54

    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    aput v3, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3d

    :cond_54
    const/16 v18, 0x0

    move-object/from16 v16, p2

    move-object/from16 v17, v29

    move/from16 v19, v36

    move/from16 v20, v30

    move-object/from16 v21, v2

    invoke-virtual/range {v16 .. v22}, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->encode([BIII[II)I

    move-result v0

    return v0

    :cond_55
    :goto_3e
    move v0, v4

    return v0
.end method


# virtual methods
.method public canInsertEmpty(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->canInsertImage(I)Z

    move-result p0

    return p0
.end method

.method public canInsertImage(I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    const/4 v0, 0x1

    new-array v1, v0, [J

    new-array v2, v0, [J

    invoke-direct {p0, p1, v1, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->locateIFD(I[J[J)V

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    return v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "getOutput() == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public canReplacePixels(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->readIFD(I)Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    move-result-object p0

    const/16 p1, 0x103

    invoke-virtual {p0, p1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move p1, v0

    :cond_0
    return p1

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "getOutput() == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public canWriteEmpty()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getOutput() == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public canWriteSequence()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public convertImageMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 3

    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    instance-of v0, p1, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-virtual {p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getRootIFD()Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    move-result-object p1

    new-instance v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-virtual {p1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getShallowClone()Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;-><init>(Lcom/sun/imageio/plugins/tiff/TIFFIFD;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljavax/imageio/metadata/IIOMetadata;->getMetadataFormatNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const-string v2, "javax_imageio_tiff_image_1.0"

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->convertNativeImageMetadata(Ljavax/imageio/metadata/IIOMetadata;)Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    move-result-object v0
    :try_end_0
    .catch Ljavax/imageio/metadata/IIOInvalidTreeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-object v1

    :cond_1
    invoke-virtual {p1}, Ljavax/imageio/metadata/IIOMetadata;->isStandardMetadataFormatSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->convertStandardImageMetadata(Ljavax/imageio/metadata/IIOMetadata;)Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    move-result-object v0
    :try_end_1
    .catch Ljavax/imageio/metadata/IIOInvalidTreeException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    return-object v1

    :cond_2
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    new-instance p1, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;

    iget-object p0, p0, Ljavax/imageio/ImageWriter;->originatingProvider:Ljavax/imageio/spi/ImageWriterSpi;

    invoke-direct {p1, p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;-><init>(Ljavax/imageio/spi/ImageWriterSpi;)V

    iput-object v0, p1, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    iput-object p3, p1, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->param:Ljavax/imageio/ImageWriteParam;

    invoke-virtual {p2}, Ljavax/imageio/ImageTypeSpecifier;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object p0

    :try_start_2
    invoke-virtual {p2}, Ljavax/imageio/ImageTypeSpecifier;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object p2

    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getWidth()I

    move-result p3

    invoke-virtual {p0}, Ljava/awt/image/SampleModel;->getHeight()I

    move-result v0

    invoke-virtual {p1, p2, p0, p3, v0}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->setupMetadata(Ljava/awt/image/ColorModel;Ljava/awt/image/SampleModel;II)V

    iget-object p0, p1, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;
    :try_end_2
    .catch Ljavax/imageio/IIOException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    return-object v1

    :cond_3
    return-object v0

    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "imageType == null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "inData == null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public convertStreamMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 1

    if-eqz p1, :cond_2

    instance-of p0, p1, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;-><init>()V

    check-cast p1, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

    iget-object p1, p1, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;->byteOrder:Ljava/nio/ByteOrder;

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;->byteOrder:Ljava/nio/ByteOrder;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljavax/imageio/metadata/IIOMetadata;->getMetadataFormatNames()[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string p2, "javax_imageio_tiff_stream_1.0"

    invoke-interface {p0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;-><init>()V

    :try_start_0
    invoke-virtual {p1, p2}, Ljavax/imageio/metadata/IIOMetadata;->getAsTree(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;->mergeTree(Ljava/lang/String;Lorg/w3c/dom/Node;)V
    :try_end_0
    .catch Ljavax/imageio/metadata/IIOInvalidTreeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    nop

    :catch_0
    :cond_1
    return-object v0

    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "inData == null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public endInsertEmpty()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isInsertingEmpty:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isWritingEmpty:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->inReplacePixelsNest:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isInsertingEmpty:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "In nested call to prepareReplacePixels!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Previous call to prepareWriteEmpty() without corresponding call to endWriteEmpty()!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No previous call to prepareInsertEmpty()!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getOutput() == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public endReplacePixels()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->inReplacePixelsNest:Z

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsIndex:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsTileOffsets:[J

    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsByteCounts:[J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsOffsetsPosition:J

    iput-wide v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsByteCountsPosition:J

    iput-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsRegion:Ljava/awt/Rectangle;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->inReplacePixelsNest:Z

    monitor-exit v0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v1, "No previous call to prepareReplacePixels()!"

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public endWriteEmpty()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isWritingEmpty:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isInsertingEmpty:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->inReplacePixelsNest:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isWritingEmpty:Z

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "In nested call to prepareReplacePixels!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Previous call to prepareInsertEmpty() without corresponding call to endInsertEmpty()!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No previous call to prepareWriteEmpty()!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getOutput() == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public endWriteSequence()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isWritingSequence:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isWritingSequence:Z

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->length()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {p0, v0, v1}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    :cond_0
    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "prepareWriteSequence() has not been called!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getOutput() == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDefaultImageMetadata(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;->getInstance()Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-direct {v1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;-><init>(Ljava/util/List;)V

    if-eqz p1, :cond_0

    invoke-virtual {p0, v1, p1, p2}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->convertImageMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p0

    check-cast p0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    if-eqz p0, :cond_0

    move-object v1, p0

    :cond_0
    return-object v1
.end method

.method public getDefaultStreamMetadata(Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 0

    new-instance p0, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;-><init>()V

    return-object p0
.end method

.method public getDefaultWriteParam()Ljavax/imageio/ImageWriteParam;
    .locals 1

    new-instance v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriteParam;

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriteParam;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method public getImageType()Ljavax/imageio/ImageTypeSpecifier;
    .locals 0

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->imageType:Ljavax/imageio/ImageTypeSpecifier;

    return-object p0
.end method

.method public prepareInsertEmpty(ILjavax/imageio/ImageTypeSpecifier;IILjavax/imageio/metadata/IIOMetadata;Ljava/util/List;Ljavax/imageio/ImageWriteParam;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljavax/imageio/ImageTypeSpecifier;",
            "II",
            "Ljavax/imageio/metadata/IIOMetadata;",
            "Ljava/util/List<",
            "+",
            "Ljava/awt/image/BufferedImage;",
            ">;",
            "Ljavax/imageio/ImageWriteParam;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object v0, p0

    move-object v1, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v2, p6

    invoke-direct {p0, p2, v4, v5, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->checkParamsEmpty(Ljavax/imageio/ImageTypeSpecifier;IILjava/util/List;)V

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isInsertingEmpty:Z

    invoke-virtual {p2}, Ljavax/imageio/ImageTypeSpecifier;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v10

    new-instance v12, Lcom/sun/imageio/plugins/tiff/EmptyImage;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v10}, Ljava/awt/image/SampleModel;->getWidth()I

    move-result v8

    invoke-virtual {v10}, Ljava/awt/image/SampleModel;->getHeight()I

    move-result v9

    invoke-virtual {p2}, Ljavax/imageio/ImageTypeSpecifier;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v11

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Lcom/sun/imageio/plugins/tiff/EmptyImage;-><init>(IIIIIIIILjava/awt/image/SampleModel;Ljava/awt/image/ColorModel;)V

    new-instance v1, Ljavax/imageio/IIOImage;

    const/4 v2, 0x0

    move-object/from16 v3, p5

    invoke-direct {v1, v12, v2, v3}, Ljavax/imageio/IIOImage;-><init>(Ljava/awt/image/RenderedImage;Ljava/util/List;Ljavax/imageio/metadata/IIOMetadata;)V

    const/4 v2, 0x0

    move v3, p1

    move-object/from16 v4, p7

    invoke-direct {p0, p1, v1, v4, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->insert(ILjavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;Z)V

    return-void
.end method

.method public prepareReplacePixels(ILjava/awt/Rectangle;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    if-eqz v1, :cond_a

    if-eqz p2, :cond_9

    invoke-virtual {p2}, Ljava/awt/Rectangle;->getWidth()D

    move-result-wide v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_8

    invoke-virtual {p2}, Ljava/awt/Rectangle;->getHeight()D

    move-result-wide v1

    cmpg-double v1, v1, v3

    if-ltz v1, :cond_7

    iget-boolean v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->inReplacePixelsNest:Z

    if-nez v1, :cond_6

    invoke-direct {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->readIFD(I)Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    move-result-object v1

    const/16 v2, 0x103

    invoke-virtual {v1, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v2

    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v2

    const/16 v5, 0x101

    invoke-virtual {v1, v5}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-virtual {v5, v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v5

    new-instance v6, Ljava/awt/Rectangle;

    invoke-direct {v6, v3, v3, v2, v5}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p2, v6}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object p2

    invoke-virtual {p2}, Ljava/awt/Rectangle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iput-object p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsRegion:Ljava/awt/Rectangle;

    const/16 p2, 0x144

    invoke-virtual {v1, p2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object p2

    if-nez p2, :cond_0

    const/16 p2, 0x111

    invoke-virtual {v1, p2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object p2

    :cond_0
    invoke-virtual {p2}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsLongs()[J

    move-result-object p2

    iput-object p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsTileOffsets:[J

    const/16 p2, 0x145

    invoke-virtual {v1, p2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object p2

    if-nez p2, :cond_1

    const/16 p2, 0x117

    invoke-virtual {v1, p2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object p2

    :cond_1
    invoke-virtual {p2}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsLongs()[J

    move-result-object p2

    iput-object p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsByteCounts:[J

    invoke-virtual {v1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getStripOrTileOffsetsPosition()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsOffsetsPosition:J

    invoke-virtual {v1}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getStripOrTileByteCountsPosition()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsByteCountsPosition:J

    new-instance p2, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-direct {p2, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;-><init>(Lcom/sun/imageio/plugins/tiff/TIFFIFD;)V

    iput-object p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    iput p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsIndex:I

    iput-boolean v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->inReplacePixelsNest:Z

    monitor-exit v0

    return-void

    :cond_2
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Region does not intersect image bounds"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Cannot read ImageHeight field."

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Cannot read ImageWidth field."

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "canReplacePixels(imageIndex) == false!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "In nested call to prepareReplacePixels!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "region.getHeight() < 1!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "region.getWidth() < 1!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "region == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Output not set!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public prepareWriteEmpty(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageTypeSpecifier;IILjavax/imageio/metadata/IIOMetadata;Ljava/util/List;Ljavax/imageio/ImageWriteParam;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/imageio/metadata/IIOMetadata;",
            "Ljavax/imageio/ImageTypeSpecifier;",
            "II",
            "Ljavax/imageio/metadata/IIOMetadata;",
            "Ljava/util/List<",
            "+",
            "Ljava/awt/image/BufferedImage;",
            ">;",
            "Ljavax/imageio/ImageWriteParam;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    if-eqz v0, :cond_1

    move-object/from16 v0, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p6

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->checkParamsEmpty(Ljavax/imageio/ImageTypeSpecifier;IILjava/util/List;)V

    const/4 v3, 0x1

    iput-boolean v3, v6, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isWritingEmpty:Z

    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/ImageTypeSpecifier;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v16

    new-instance v3, Lcom/sun/imageio/plugins/tiff/EmptyImage;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/awt/image/SampleModel;->getWidth()I

    move-result v14

    invoke-virtual/range {v16 .. v16}, Ljava/awt/image/SampleModel;->getHeight()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/ImageTypeSpecifier;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v17

    move-object v7, v3

    move/from16 v10, p3

    move/from16 v11, p4

    invoke-direct/range {v7 .. v17}, Lcom/sun/imageio/plugins/tiff/EmptyImage;-><init>(IIIIIIIILjava/awt/image/SampleModel;Ljava/awt/image/ColorModel;)V

    invoke-direct/range {p0 .. p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->markPositions()V

    new-instance v2, Ljavax/imageio/IIOImage;

    const/4 v0, 0x0

    move-object/from16 v1, p5

    invoke-direct {v2, v3, v0, v1}, Ljavax/imageio/IIOImage;-><init>(Ljava/awt/image/RenderedImage;Ljava/util/List;Ljavax/imageio/metadata/IIOMetadata;)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p7

    invoke-direct/range {v0 .. v5}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->write(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;ZZ)V

    invoke-virtual/range {p0 .. p0}, Ljavax/imageio/ImageWriter;->abortRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->resetPositions()V

    :cond_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "output == null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public prepareWriteSequence(Ljavax/imageio/metadata/IIOMetadata;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, v0}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->convertStreamMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p1

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->getDefaultStreamMetadata(Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p1

    :cond_1
    check-cast p1, Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->streamMetadata:Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->writeHeader()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isWritingSequence:Z

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "getOutput() == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public replacePixels(Ljava/awt/image/Raster;Ljavax/imageio/ImageWriteParam;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 138
    new-instance v0, Lcom/sun/imageio/plugins/common/SingleTileRenderedImage;

    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->image:Ljava/awt/image/RenderedImage;

    .line 139
    invoke-interface {v1}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/sun/imageio/plugins/common/SingleTileRenderedImage;-><init>(Ljava/awt/image/Raster;Ljava/awt/image/ColorModel;)V

    .line 140
    invoke-virtual {p0, v0, p2}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixels(Ljava/awt/image/RenderedImage;Ljavax/imageio/ImageWriteParam;)V

    return-void

    .line 141
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "raster == null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public replacePixels(Ljava/awt/image/RenderedImage;Ljavax/imageio/ImageWriteParam;)V
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v11, p0

    move-object/from16 v0, p1

    .line 1
    iget-object v12, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsLock:Ljava/lang/Object;

    monitor-enter v12

    .line 2
    :try_start_0
    iget-object v1, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    if-eqz v1, :cond_1e

    if-eqz v0, :cond_1d

    .line 3
    iget-boolean v1, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->inReplacePixelsNest:Z

    if-eqz v1, :cond_1c

    const/4 v13, 0x0

    if-nez p2, :cond_0

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->getDefaultWriteParam()Ljavax/imageio/ImageWriteParam;

    move-result-object v1

    move v4, v13

    move v5, v4

    const/4 v10, 0x1

    const/4 v15, 0x1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->getDefaultWriteParam()Ljavax/imageio/ImageWriteParam;

    move-result-object v1

    .line 6
    invoke-virtual {v1, v13}, Ljavax/imageio/ImageWriteParam;->setCompressionMode(I)V

    const/4 v2, 0x3

    .line 7
    invoke-virtual {v1, v2}, Ljavax/imageio/ImageWriteParam;->setTilingMode(I)V

    .line 8
    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOParam;->getDestinationOffset()Ljava/awt/Point;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/imageio/IIOParam;->setDestinationOffset(Ljava/awt/Point;)V

    .line 9
    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOParam;->getSourceBands()[I

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/imageio/IIOParam;->setSourceBands([I)V

    .line 10
    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOParam;->getSourceRegion()Ljava/awt/Rectangle;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/imageio/IIOParam;->setSourceRegion(Ljava/awt/Rectangle;)V

    .line 11
    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result v2

    .line 12
    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result v3

    .line 13
    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOParam;->getSubsamplingXOffset()I

    move-result v4

    .line 14
    invoke-virtual/range {p2 .. p2}, Ljavax/imageio/IIOParam;->getSubsamplingYOffset()I

    move-result v5

    move v15, v2

    move v10, v3

    .line 15
    :goto_0
    iget-object v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v3, 0x102

    .line 16
    invoke-virtual {v2, v3}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v2

    if-eqz v2, :cond_1b

    .line 17
    invoke-virtual {v2}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInts()[I

    move-result-object v2

    .line 18
    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v3

    invoke-virtual {v3}, Ljava/awt/image/SampleModel;->getSampleSize()[I

    move-result-object v3

    .line 19
    invoke-virtual {v1}, Ljavax/imageio/IIOParam;->getSourceBands()[I

    move-result-object v9

    if-eqz v9, :cond_3

    .line 20
    array-length v6, v9

    array-length v7, v2

    if-ne v6, v7, :cond_2

    move v6, v13

    .line 21
    :goto_1
    array-length v7, v9

    if-ge v6, v7, :cond_5

    .line 22
    aget v7, v2, v6

    aget v8, v9, v6

    aget v8, v3, v8

    if-ne v7, v8, :cond_1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 23
    :cond_1
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "Source and destination have different BitsPerSample"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 24
    :cond_2
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "Source and destination have different SamplesPerPixel"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 25
    :cond_3
    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v6

    invoke-virtual {v6}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v6

    .line 26
    array-length v7, v2

    if-ne v6, v7, :cond_1a

    move v7, v13

    :goto_2
    if-ge v7, v6, :cond_5

    .line 27
    aget v8, v2, v7

    aget v13, v3, v7

    if-ne v8, v13, :cond_4

    add-int/lit8 v7, v7, 0x1

    const/4 v13, 0x0

    goto :goto_2

    .line 28
    :cond_4
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "Source and destination have different BitsPerSample"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 29
    :cond_5
    new-instance v2, Ljava/awt/Rectangle;

    .line 30
    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getMinX()I

    move-result v3

    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getMinY()I

    move-result v6

    .line 31
    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getWidth()I

    move-result v7

    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getHeight()I

    move-result v8

    invoke-direct {v2, v3, v6, v7, v8}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 32
    invoke-virtual {v1}, Ljavax/imageio/IIOParam;->getSourceRegion()Ljava/awt/Rectangle;

    move-result-object v3

    if-nez v3, :cond_6

    move-object v3, v2

    .line 33
    :cond_6
    iget v6, v3, Ljava/awt/Rectangle;->x:I

    add-int v13, v4, v6

    .line 34
    iget v4, v3, Ljava/awt/Rectangle;->y:I

    add-int v8, v5, v4

    .line 35
    invoke-virtual {v3, v2}, Ljava/awt/Rectangle;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 36
    invoke-virtual {v3, v2}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object v3

    .line 37
    invoke-virtual {v3}, Ljava/awt/Rectangle;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    goto :goto_3

    .line 38
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Source region does not intersect source image!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 39
    :cond_8
    :goto_3
    invoke-virtual {v1}, Ljavax/imageio/IIOParam;->getDestinationOffset()Ljava/awt/Point;

    move-result-object v7

    .line 40
    iget v4, v3, Ljava/awt/Rectangle;->x:I

    invoke-static {v4, v13, v15}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->XToTileX(III)I

    move-result v4

    iget v5, v7, Ljava/awt/Point;->x:I

    add-int/2addr v4, v5

    .line 41
    iget v5, v3, Ljava/awt/Rectangle;->y:I

    invoke-static {v5, v8, v10}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->YToTileY(III)I

    move-result v5

    iget v6, v7, Ljava/awt/Point;->y:I

    add-int/2addr v5, v6

    .line 42
    iget v6, v3, Ljava/awt/Rectangle;->x:I

    iget v14, v3, Ljava/awt/Rectangle;->width:I

    add-int/2addr v6, v14

    invoke-static {v6, v13, v15}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->XToTileX(III)I

    move-result v6

    iget v14, v7, Ljava/awt/Point;->x:I

    add-int/2addr v6, v14

    .line 43
    iget v14, v3, Ljava/awt/Rectangle;->y:I

    iget v3, v3, Ljava/awt/Rectangle;->height:I

    add-int/2addr v14, v3

    invoke-static {v14, v8, v10}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->YToTileY(III)I

    move-result v3

    iget v14, v7, Ljava/awt/Point;->y:I

    add-int/2addr v3, v14

    .line 44
    new-instance v14, Ljava/awt/Rectangle;

    move-object/from16 p2, v9

    iget v9, v7, Ljava/awt/Point;->x:I

    iget v0, v7, Ljava/awt/Point;->y:I

    sub-int/2addr v6, v4

    sub-int/2addr v3, v5

    invoke-direct {v14, v9, v0, v6, v3}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 45
    iget-object v0, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsRegion:Ljava/awt/Rectangle;

    invoke-virtual {v14, v0}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Ljava/awt/Rectangle;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_19

    .line 47
    iget v3, v0, Ljava/awt/Rectangle;->x:I

    iget v4, v7, Ljava/awt/Point;->x:I

    sub-int v5, v3, v4

    mul-int/2addr v5, v15

    add-int/2addr v5, v13

    .line 48
    iget v6, v0, Ljava/awt/Rectangle;->width:I

    add-int/2addr v3, v6

    const/4 v6, 0x1

    sub-int/2addr v3, v6

    sub-int/2addr v3, v4

    mul-int/2addr v3, v15

    add-int/2addr v3, v13

    sub-int/2addr v3, v5

    add-int/2addr v3, v6

    .line 49
    iget v4, v0, Ljava/awt/Rectangle;->y:I

    iget v6, v7, Ljava/awt/Point;->y:I

    sub-int v9, v4, v6

    mul-int/2addr v9, v10

    add-int/2addr v9, v8

    .line 50
    iget v14, v0, Ljava/awt/Rectangle;->height:I

    add-int/2addr v4, v14

    const/4 v14, 0x1

    sub-int/2addr v4, v14

    sub-int/2addr v4, v6

    mul-int/2addr v4, v10

    add-int/2addr v4, v8

    sub-int/2addr v4, v9

    add-int/2addr v4, v14

    .line 51
    new-instance v6, Ljava/awt/Rectangle;

    invoke-direct {v6, v5, v9, v3, v4}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 52
    invoke-virtual {v6, v2}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object v2

    invoke-virtual {v2}, Ljava/awt/Rectangle;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    .line 53
    iget-object v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->reader:Lcom/sun/imageio/plugins/tiff/TIFFImageReader;

    if-nez v2, :cond_9

    .line 54
    new-instance v2, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;

    new-instance v3, Lcom/sun/imageio/plugins/tiff/TIFFImageReaderSpi;

    invoke-direct {v3}, Lcom/sun/imageio/plugins/tiff/TIFFImageReaderSpi;-><init>()V

    invoke-direct {v2, v3}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;-><init>(Ljavax/imageio/spi/ImageReaderSpi;)V

    iput-object v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->reader:Lcom/sun/imageio/plugins/tiff/TIFFImageReader;

    goto :goto_4

    .line 55
    :cond_9
    invoke-virtual {v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->reset()V

    .line 56
    :goto_4
    iget-object v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->mark()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 57
    :try_start_1
    iget-object v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    iget-wide v3, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->headerPosition:J

    invoke-interface {v2, v3, v4}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    .line 58
    iget-object v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->reader:Lcom/sun/imageio/plugins/tiff/TIFFImageReader;

    iget-object v3, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-virtual {v2, v3}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;)V

    .line 59
    iget-object v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    iput-object v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    .line 60
    iput-object v1, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->param:Ljavax/imageio/ImageWriteParam;

    .line 61
    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v14

    .line 62
    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getColorModel()Ljava/awt/image/ColorModel;

    move-result-object v9

    .line 63
    invoke-virtual {v14}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v2

    iput v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    .line 64
    new-instance v2, Ljavax/imageio/ImageTypeSpecifier;

    move-object/from16 v6, p1

    invoke-direct {v2, v6}, Ljavax/imageio/ImageTypeSpecifier;-><init>(Ljava/awt/image/RenderedImage;)V

    iput-object v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->imageType:Ljavax/imageio/ImageTypeSpecifier;

    .line 65
    invoke-virtual {v1}, Ljavax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result v2

    iput v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->periodX:I

    .line 66
    invoke-virtual {v1}, Ljavax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result v2

    iput v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->periodY:I

    const/4 v5, 0x0

    .line 67
    iput-object v5, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceBands:[I

    .line 68
    invoke-virtual {v1}, Ljavax/imageio/IIOParam;->getSourceBands()[I

    move-result-object v1

    if-eqz v1, :cond_a

    .line 69
    iput-object v1, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sourceBands:[I

    move-object/from16 v4, p2

    .line 70
    array-length v1, v4

    iput v1, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->numBands:I

    goto :goto_5

    :cond_a
    move-object/from16 v4, p2

    .line 71
    :goto_5
    iget-object v1, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->reader:Lcom/sun/imageio/plugins/tiff/TIFFImageReader;

    iget v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsIndex:I

    .line 72
    invoke-virtual {v1, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getWidth(I)I

    move-result v1

    iget-object v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->reader:Lcom/sun/imageio/plugins/tiff/TIFFImageReader;

    iget v3, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsIndex:I

    .line 73
    invoke-virtual {v2, v3}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->getHeight(I)I

    move-result v2

    .line 74
    invoke-virtual {v11, v9, v14, v1, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->setupMetadata(Ljava/awt/image/ColorModel;Ljava/awt/image/SampleModel;II)V

    .line 75
    invoke-virtual {v14}, Ljava/awt/image/SampleModel;->getSampleSize()[I

    move-result-object v1

    .line 76
    invoke-direct {v11, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->initializeScaleTables([I)V

    .line 77
    invoke-interface/range {p1 .. p1}, Ljava/awt/image/RenderedImage;->getSampleModel()Ljava/awt/image/SampleModel;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/imageio/plugins/common/ImageUtil;->isBinary(Ljava/awt/image/SampleModel;)Z

    move-result v1

    iput-boolean v1, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isBilevel:Z

    .line 78
    iget v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nativePhotometricInterpretation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_b

    iget v3, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    if-eqz v3, :cond_c

    :cond_b
    if-nez v2, :cond_d

    iget v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_d

    :cond_c
    const/4 v2, 0x1

    goto :goto_6

    :cond_d
    const/4 v2, 0x0

    :goto_6
    iput-boolean v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isInverted:Z

    if-nez v1, :cond_e

    if-nez v2, :cond_f

    .line 79
    invoke-static/range {p1 .. p1}, Lcom/sun/imageio/plugins/common/ImageUtil;->imageIsContiguous(Ljava/awt/image/RenderedImage;)Z

    move-result v1

    if-eqz v1, :cond_f

    :cond_e
    iget-boolean v1, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isRescaling:Z

    if-nez v1, :cond_f

    if-nez v4, :cond_f

    iget v1, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->periodX:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    iget v1, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->periodY:I

    if-ne v1, v2, :cond_f

    iget-object v1, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->colorConverter:Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;

    if-nez v1, :cond_f

    const/4 v1, 0x1

    goto :goto_7

    :cond_f
    const/4 v1, 0x0

    :goto_7
    iput-boolean v1, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isImageSimple:Z

    .line 80
    iget v1, v0, Ljava/awt/Rectangle;->x:I

    iget v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileWidth:I

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->XToTileX(III)I

    move-result v25

    .line 81
    iget v1, v0, Ljava/awt/Rectangle;->y:I

    iget v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileLength:I

    invoke-static {v1, v3, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->YToTileY(III)I

    move-result v1

    .line 82
    iget v2, v0, Ljava/awt/Rectangle;->x:I

    iget v3, v0, Ljava/awt/Rectangle;->width:I

    add-int/2addr v2, v3

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    iget v3, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileWidth:I

    const/4 v5, 0x0

    invoke-static {v2, v5, v3}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->XToTileX(III)I

    move-result v3

    .line 83
    iget v2, v0, Ljava/awt/Rectangle;->y:I

    iget v5, v0, Ljava/awt/Rectangle;->height:I

    add-int/2addr v2, v5

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    iget v5, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileLength:I

    move-object/from16 v26, v9

    const/4 v9, 0x0

    invoke-static {v2, v9, v5}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->YToTileY(III)I

    move-result v5

    .line 84
    new-instance v2, Lcom/sun/imageio/plugins/tiff/TIFFNullCompressor;

    invoke-direct {v2}, Lcom/sun/imageio/plugins/tiff/TIFFNullCompressor;-><init>()V

    .line 85
    invoke-virtual {v2, v11}, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->setWriter(Ljavax/imageio/ImageWriter;)V

    .line 86
    iget-object v9, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-virtual {v2, v9}, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->setStream(Ljavax/imageio/stream/ImageOutputStream;)V

    .line 87
    iget-object v9, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-virtual {v2, v9}, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->setMetadata(Ljavax/imageio/metadata/IIOMetadata;)V

    .line 88
    new-instance v9, Ljava/awt/Rectangle;

    invoke-direct {v9}, Ljava/awt/Rectangle;-><init>()V

    :goto_8
    if-gt v1, v5, :cond_17

    move/from16 v27, v5

    move/from16 v5, v25

    :goto_9
    if-gt v5, v3, :cond_16

    move-object/from16 v28, v2

    .line 89
    iget v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tilesAcross:I

    mul-int/2addr v2, v1

    add-int v29, v2, v5

    .line 90
    iget-object v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsByteCounts:[J

    aget-wide v16, v2, v29

    const-wide/16 v18, 0x0

    cmp-long v2, v16, v18

    if-nez v2, :cond_10

    const/16 v30, 0x1

    goto :goto_a

    :cond_10
    const/16 v30, 0x0

    :goto_a
    if-eqz v30, :cond_11

    .line 91
    iget v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileWidth:I

    move/from16 v31, v3

    iget v3, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileLength:I

    .line 92
    invoke-virtual {v14, v2, v3}, Ljava/awt/image/SampleModel;->createCompatibleSampleModel(II)Ljava/awt/image/SampleModel;

    move-result-object v2

    const/4 v3, 0x0

    .line 93
    invoke-static {v2, v3}, Ljava/awt/image/Raster;->createWritableRaster(Ljava/awt/image/SampleModel;Ljava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v2

    goto :goto_b

    :cond_11
    move/from16 v31, v3

    const/4 v3, 0x0

    .line 94
    iget-object v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->reader:Lcom/sun/imageio/plugins/tiff/TIFFImageReader;

    iget v3, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsIndex:I

    .line 95
    invoke-virtual {v2, v3, v5, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageReader;->readTile(III)Ljava/awt/image/BufferedImage;

    move-result-object v2

    .line 96
    invoke-virtual {v2}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object v2

    .line 97
    :goto_b
    iget v3, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileWidth:I

    mul-int/2addr v3, v5

    move/from16 v32, v5

    iget v5, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileLength:I

    mul-int/2addr v5, v1

    invoke-virtual {v9, v3, v5}, Ljava/awt/Rectangle;->setLocation(II)V

    .line 98
    invoke-virtual {v2}, Ljava/awt/image/Raster;->getWidth()I

    move-result v3

    .line 99
    invoke-virtual {v2}, Ljava/awt/image/Raster;->getHeight()I

    move-result v5

    .line 100
    invoke-virtual {v9, v3, v5}, Ljava/awt/Rectangle;->setSize(II)V

    .line 101
    iget v3, v9, Ljava/awt/Rectangle;->x:I

    iget v5, v9, Ljava/awt/Rectangle;->y:I

    .line 102
    invoke-virtual {v2, v3, v5}, Ljava/awt/image/WritableRaster;->createWritableTranslatedChild(II)Ljava/awt/image/WritableRaster;

    move-result-object v5

    .line 103
    invoke-virtual {v9, v0}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object v3

    .line 104
    iget v2, v3, Ljava/awt/Rectangle;->x:I

    move-object/from16 v33, v0

    iget v0, v7, Ljava/awt/Point;->x:I

    sub-int v16, v2, v0

    mul-int v16, v16, v15

    move/from16 v34, v1

    add-int v1, v16, v13

    move-object/from16 v35, v5

    .line 105
    iget v5, v3, Ljava/awt/Rectangle;->width:I

    add-int/2addr v2, v5

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    sub-int/2addr v2, v0

    mul-int/2addr v2, v15

    add-int/2addr v2, v13

    sub-int/2addr v2, v1

    add-int/2addr v2, v5

    .line 106
    iget v0, v3, Ljava/awt/Rectangle;->y:I

    iget v5, v7, Ljava/awt/Point;->y:I

    sub-int v16, v0, v5

    mul-int v16, v16, v10

    move-object/from16 v36, v9

    add-int v9, v16, v8

    move-object/from16 v37, v14

    .line 107
    iget v14, v3, Ljava/awt/Rectangle;->height:I

    add-int/2addr v0, v14

    const/4 v14, 0x1

    sub-int/2addr v0, v14

    sub-int/2addr v0, v5

    mul-int/2addr v0, v10

    add-int/2addr v0, v8

    sub-int/2addr v0, v9

    add-int/2addr v0, v14

    .line 108
    new-instance v5, Ljava/awt/Rectangle;

    invoke-direct {v5, v1, v9, v2, v0}, Ljava/awt/Rectangle;-><init>(IIII)V

    .line 109
    invoke-interface {v6, v5}, Ljava/awt/image/RenderedImage;->getData(Ljava/awt/Rectangle;)Ljava/awt/image/Raster;

    move-result-object v16

    if-ne v15, v14, :cond_12

    if-ne v10, v14, :cond_12

    if-nez v13, :cond_12

    if-nez v8, :cond_12

    .line 110
    iget v0, v5, Ljava/awt/Rectangle;->x:I

    iget v1, v5, Ljava/awt/Rectangle;->y:I

    iget v2, v5, Ljava/awt/Rectangle;->width:I

    iget v5, v5, Ljava/awt/Rectangle;->height:I

    iget v9, v3, Ljava/awt/Rectangle;->x:I

    iget v3, v3, Ljava/awt/Rectangle;->y:I

    move/from16 v17, v0

    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v5

    move/from16 v21, v9

    move/from16 v22, v3

    move-object/from16 v23, v4

    .line 111
    invoke-virtual/range {v16 .. v23}, Ljava/awt/image/Raster;->createChild(IIIIII[I)Ljava/awt/image/Raster;

    move-result-object v0

    move-object v1, v0

    move-object/from16 v24, v4

    move-object/from16 v23, v7

    move/from16 p2, v13

    move/from16 v20, v15

    move-object/from16 v0, v26

    move/from16 v19, v27

    move-object/from16 v14, v28

    move/from16 v16, v31

    move/from16 v21, v32

    move/from16 v17, v34

    move-object/from16 v13, v35

    move-object/from16 v15, v36

    const/16 v22, 0x0

    const/16 v26, 0x0

    move/from16 v27, v8

    move/from16 v28, v10

    goto :goto_c

    .line 112
    :cond_12
    iget v0, v7, Ljava/awt/Point;->x:I

    iget v9, v7, Ljava/awt/Point;->y:I

    move/from16 v17, v34

    move-object/from16 v1, p0

    move-object/from16 v5, v28

    move-object/from16 v2, v16

    move-object/from16 v18, v3

    move/from16 v16, v31

    const/16 v19, 0x0

    move-object v3, v4

    move-object/from16 v20, v4

    move v4, v13

    move-object v14, v5

    move/from16 p2, v13

    move-object/from16 v22, v19

    move/from16 v19, v27

    move/from16 v21, v32

    move-object/from16 v13, v35

    move v5, v8

    move v6, v15

    move-object/from16 v23, v7

    move v7, v10

    move/from16 v27, v8

    move v8, v0

    move-object/from16 v24, v20

    move-object/from16 v0, v26

    const/16 v26, 0x0

    move/from16 v20, v15

    move-object/from16 v15, v36

    move/from16 v28, v10

    move-object/from16 v10, v18

    invoke-direct/range {v1 .. v10}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->subsample(Ljava/awt/image/Raster;[IIIIIIILjava/awt/Rectangle;)Ljava/awt/image/Raster;

    move-result-object v1

    if-nez v1, :cond_13

    goto :goto_e

    .line 113
    :cond_13
    :goto_c
    invoke-virtual {v13, v1}, Ljava/awt/image/WritableRaster;->setRect(Ljava/awt/image/Raster;)V

    if-eqz v30, :cond_14

    .line 114
    iget-object v1, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    iget-wide v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nextSpace:J

    invoke-interface {v1, v2, v3}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    goto :goto_d

    .line 115
    :cond_14
    iget-object v1, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    iget-object v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsTileOffsets:[J

    aget-wide v2, v2, v29

    invoke-interface {v1, v2, v3}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    .line 116
    :goto_d
    new-instance v1, Lcom/sun/imageio/plugins/common/SingleTileRenderedImage;

    invoke-direct {v1, v13, v0}, Lcom/sun/imageio/plugins/common/SingleTileRenderedImage;-><init>(Ljava/awt/image/Raster;Ljava/awt/image/ColorModel;)V

    iput-object v1, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->image:Ljava/awt/image/RenderedImage;

    .line 117
    invoke-direct {v11, v15, v14}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->writeTile(Ljava/awt/Rectangle;Lcom/sun/imageio/plugins/tiff/TIFFCompressor;)I

    move-result v1

    if-eqz v30, :cond_15

    .line 118
    iget-object v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    .line 119
    iget-object v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    iget-wide v3, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsOffsetsPosition:J

    mul-int/lit8 v5, v29, 0x4

    int-to-long v5, v5

    add-long/2addr v3, v5

    invoke-interface {v2, v3, v4}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    .line 120
    iget-object v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    iget-wide v3, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nextSpace:J

    long-to-int v3, v3

    invoke-interface {v2, v3}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    .line 121
    iget-object v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    iget-wide v3, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsByteCountsPosition:J

    add-long/2addr v3, v5

    invoke-interface {v2, v3, v4}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    .line 122
    iget-object v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v2, v1}, Ljavax/imageio/stream/ImageOutputStream;->writeInt(I)V

    .line 123
    iget-object v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    .line 124
    iget-wide v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nextSpace:J

    int-to-long v4, v1

    add-long/2addr v2, v4

    iput-wide v2, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nextSpace:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_15
    :goto_e
    add-int/lit8 v5, v21, 0x1

    move-object/from16 v6, p1

    move/from16 v13, p2

    move-object/from16 v26, v0

    move-object v2, v14

    move-object v9, v15

    move/from16 v3, v16

    move/from16 v1, v17

    move/from16 v15, v20

    move-object/from16 v7, v23

    move-object/from16 v4, v24

    move/from16 v8, v27

    move/from16 v10, v28

    move-object/from16 v0, v33

    move-object/from16 v14, v37

    move/from16 v27, v19

    goto/16 :goto_9

    :cond_16
    move-object/from16 v33, v0

    move/from16 v17, v1

    move/from16 v16, v3

    move-object/from16 v24, v4

    move-object/from16 v23, v7

    move/from16 v28, v10

    move/from16 p2, v13

    move-object/from16 v37, v14

    move/from16 v20, v15

    move-object/from16 v0, v26

    move/from16 v19, v27

    const/16 v22, 0x0

    const/16 v26, 0x0

    move-object v14, v2

    move/from16 v27, v8

    move-object v15, v9

    add-int/lit8 v1, v17, 0x1

    move-object/from16 v6, p1

    move-object/from16 v26, v0

    move/from16 v5, v19

    move/from16 v15, v20

    move-object/from16 v0, v33

    move-object/from16 v14, v37

    goto/16 :goto_8

    .line 125
    :cond_17
    :try_start_2
    iget-object v0, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    .line 126
    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v0

    goto :goto_f

    :catch_0
    move-exception v0

    .line 127
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    :goto_f
    :try_start_4
    iget-object v1, v11, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v1}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    .line 129
    throw v0

    .line 130
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Backward mapped destination region does not intersect source image!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 131
    :cond_19
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Forward mapped source region does not intersect destination region!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 132
    :cond_1a
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "Source and destination have different SamplesPerPixel"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 133
    :cond_1b
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "Cannot read destination BitsPerSample"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 134
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No previous call to prepareReplacePixels!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 135
    :cond_1d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image == null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :cond_1e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "stream == null!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :catchall_1
    move-exception v0

    .line 137
    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0
.end method

.method public reset()V
    .locals 4

    invoke-super {p0}, Ljavax/imageio/ImageWriter;->reset()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->image:Ljava/awt/image/RenderedImage;

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->imageType:Ljavax/imageio/ImageTypeSpecifier;

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->byteOrder:Ljava/nio/ByteOrder;

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->param:Ljavax/imageio/ImageWriteParam;

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressor:Lcom/sun/imageio/plugins/tiff/TIFFCompressor;

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->colorConverter:Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->streamMetadata:Lcom/sun/imageio/plugins/tiff/TIFFStreamMetadata;

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isRescaling:Z

    iput-boolean v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isWritingSequence:Z

    iput-boolean v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isWritingEmpty:Z

    iput-boolean v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isInsertingEmpty:Z

    const/4 v2, -0x1

    iput v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsIndex:I

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsTileOffsets:[J

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsByteCounts:[J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsOffsetsPosition:J

    iput-wide v2, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsByteCountsPosition:J

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->replacePixelsRegion:Ljava/awt/Rectangle;

    iput-boolean v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->inReplacePixelsNest:Z

    return-void
.end method

.method public setOutput(Ljava/lang/Object;)V
    .locals 8

    if-eqz p1, :cond_4

    instance-of v0, p1, Ljavax/imageio/stream/ImageOutputStream;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->reset()V

    move-object v0, p1

    check-cast v0, Ljavax/imageio/stream/ImageOutputStream;

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    :try_start_0
    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->headerPosition:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x4

    :try_start_1
    new-array v0, v0, [B

    iget-object v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v1, v0}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    const/4 v1, 0x0

    aget-byte v1, v0, v1

    const/4 v2, 0x3

    const/16 v3, 0x2a

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/16 v6, 0x49

    if-ne v1, v6, :cond_0

    aget-byte v7, v0, v5

    if-ne v7, v6, :cond_0

    aget-byte v6, v0, v4

    if-ne v6, v3, :cond_0

    aget-byte v6, v0, v2

    if-eqz v6, :cond_1

    :cond_0
    const/16 v6, 0x4d

    if-ne v1, v6, :cond_2

    aget-byte v1, v0, v5

    if-ne v1, v6, :cond_2

    aget-byte v1, v0, v4

    if-nez v1, :cond_2

    aget-byte v0, v0, v2

    if-ne v0, v3, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->length()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nextSpace:J

    goto :goto_0

    :cond_2
    iget-wide v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->headerPosition:J

    iput-wide v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nextSpace:J
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    :try_start_2
    iget-wide v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->headerPosition:J

    iput-wide v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nextSpace:J

    :goto_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    iget-wide v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->headerPosition:J

    invoke-interface {v0, v1, v2}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->headerPosition:J

    iput-wide v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nextSpace:J

    goto :goto_1

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "output not an ImageOutputStream!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    :goto_1
    invoke-super {p0, p1}, Ljavax/imageio/ImageWriter;->setOutput(Ljava/lang/Object;)V

    return-void
.end method

.method public setupMetadata(Ljava/awt/image/ColorModel;Ljava/awt/image/SampleModel;II)V
    .locals 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    iget-object v4, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-virtual {v4}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getRootIFD()Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    move-result-object v4

    invoke-static {}, Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;->getInstance()Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;

    move-result-object v5

    const/16 v6, 0x11c

    invoke-virtual {v4, v6}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v6

    const-wide/16 v7, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eqz v6, :cond_0

    invoke-virtual {v6, v9}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v6

    if-eq v6, v10, :cond_0

    new-instance v6, Ljavax/imageio/plugins/tiff/TIFFField;

    const/16 v11, 0x11c

    invoke-virtual {v5, v11}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v11

    invoke-direct {v6, v11, v7, v8}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;J)V

    invoke-virtual {v4, v6}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_0
    const/4 v6, -0x1

    iput v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    const/16 v11, 0x106

    invoke-virtual {v4, v11}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v11

    const/4 v12, 0x3

    if-eqz v11, :cond_2

    invoke-virtual {v11, v9}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v11

    iput v11, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    if-ne v11, v12, :cond_1

    instance-of v11, v1, Ljava/awt/image/IndexColorModel;

    if-nez v11, :cond_1

    iput v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    goto :goto_0

    :cond_1
    move v11, v10

    goto :goto_1

    :cond_2
    :goto_0
    move v11, v9

    :goto_1
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/SampleModel;->getSampleSize()[I

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v14

    const/4 v7, 0x2

    if-le v14, v10, :cond_4

    if-eqz v1, :cond_4

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/ColorModel;->hasAlpha()Z

    move-result v8

    if-eqz v8, :cond_4

    add-int/lit8 v14, v14, -0x1

    new-array v8, v10, [C

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v17

    if-eqz v17, :cond_3

    aput-char v10, v8, v9

    goto :goto_2

    :cond_3
    aput-char v7, v8, v9

    :goto_2
    move/from16 v17, v10

    goto :goto_3

    :cond_4
    move/from16 v17, v9

    const/4 v8, 0x0

    :goto_3
    if-ne v14, v12, :cond_5

    iput v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nativePhotometricInterpretation:I

    iget v15, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    if-ne v15, v6, :cond_11

    iput v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    goto/16 :goto_7

    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/SampleModel;->getNumBands()I

    move-result v15

    if-ne v15, v10, :cond_c

    instance-of v15, v1, Ljava/awt/image/IndexColorModel;

    if-eqz v15, :cond_c

    move-object v6, v1

    check-cast v6, Ljava/awt/image/IndexColorModel;

    invoke-virtual {v6, v9}, Ljava/awt/image/IndexColorModel;->getRed(I)I

    move-result v15

    invoke-virtual {v6, v10}, Ljava/awt/image/IndexColorModel;->getRed(I)I

    move-result v12

    invoke-virtual {v6}, Ljava/awt/image/IndexColorModel;->getMapSize()I

    move-result v10

    if-ne v10, v7, :cond_b

    invoke-virtual {v6, v9}, Ljava/awt/image/IndexColorModel;->getGreen(I)I

    move-result v10

    if-ne v15, v10, :cond_b

    invoke-virtual {v6, v9}, Ljava/awt/image/IndexColorModel;->getBlue(I)I

    move-result v10

    if-ne v15, v10, :cond_b

    const/4 v10, 0x1

    invoke-virtual {v6, v10}, Ljava/awt/image/IndexColorModel;->getGreen(I)I

    move-result v7

    if-ne v12, v7, :cond_b

    invoke-virtual {v6, v10}, Ljava/awt/image/IndexColorModel;->getBlue(I)I

    move-result v6

    if-ne v12, v6, :cond_b

    const/16 v6, 0xff

    if-eqz v15, :cond_6

    if-ne v15, v6, :cond_b

    :cond_6
    if-eqz v12, :cond_7

    if-ne v12, v6, :cond_b

    :cond_7
    if-eq v15, v12, :cond_b

    if-nez v15, :cond_8

    const/4 v6, 0x1

    iput v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nativePhotometricInterpretation:I

    goto :goto_4

    :cond_8
    const/4 v6, 0x1

    iput v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nativePhotometricInterpretation:I

    :goto_4
    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    if-eq v7, v6, :cond_a

    if-eqz v7, :cond_a

    if-nez v15, :cond_9

    const/4 v6, 0x1

    goto :goto_5

    :cond_9
    move v6, v9

    :goto_5
    iput v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    :cond_a
    const/4 v7, 0x3

    goto :goto_7

    :cond_b
    const/4 v7, 0x3

    iput v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    iput v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nativePhotometricInterpretation:I

    goto :goto_7

    :cond_c
    move v7, v12

    if-eqz v1, :cond_10

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v10

    invoke-virtual {v10}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v10

    const/4 v12, 0x1

    if-eq v10, v12, :cond_f

    if-eq v10, v7, :cond_e

    const/16 v7, 0x9

    if-eq v10, v7, :cond_d

    iput v12, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nativePhotometricInterpretation:I

    goto :goto_6

    :cond_d
    const/4 v7, 0x5

    iput v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nativePhotometricInterpretation:I

    goto :goto_6

    :cond_e
    const/4 v7, 0x6

    iput v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nativePhotometricInterpretation:I

    goto :goto_6

    :cond_f
    const/16 v7, 0x8

    iput v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nativePhotometricInterpretation:I

    goto :goto_6

    :cond_10
    const/4 v12, 0x1

    iput v12, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nativePhotometricInterpretation:I

    :goto_6
    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    if-ne v7, v6, :cond_11

    iget v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->nativePhotometricInterpretation:I

    iput v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    :cond_11
    :goto_7
    iget-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->param:Ljavax/imageio/ImageWriteParam;

    invoke-virtual {v6}, Ljavax/imageio/ImageWriteParam;->getCompressionMode()I

    move-result v6

    const/4 v7, 0x2

    if-eq v6, v7, :cond_14

    const/4 v7, 0x3

    if-eq v6, v7, :cond_12

    const/4 v7, 0x1

    iput v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compression:I

    goto :goto_9

    :cond_12
    const/4 v7, 0x1

    const/16 v10, 0x103

    invoke-virtual {v4, v10}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v10

    if-eqz v10, :cond_13

    invoke-virtual {v10, v9}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v10

    iput v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compression:I

    goto :goto_9

    :cond_13
    iput v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compression:I

    goto :goto_9

    :cond_14
    const/4 v7, 0x1

    iget-object v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->param:Ljavax/imageio/ImageWriteParam;

    invoke-virtual {v10}, Ljavax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_15

    iput v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compression:I

    goto :goto_9

    :cond_15
    sget-object v7, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressionTypes:[Ljava/lang/String;

    array-length v7, v7

    move v12, v9

    :goto_8
    if-ge v12, v7, :cond_17

    sget-object v15, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressionTypes:[Ljava/lang/String;

    aget-object v15, v15, v12

    invoke-virtual {v10, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_16

    sget-object v15, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressionNumbers:[I

    aget v15, v15, v12

    iput v15, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compression:I

    :cond_16
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_17
    :goto_9
    const/16 v7, 0x13d

    invoke-virtual {v4, v7}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v7

    if-eqz v7, :cond_19

    invoke-virtual {v7, v9}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v7

    iput v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->predictor:I

    aget v10, v13, v9

    const/16 v12, 0x8

    if-ne v10, v12, :cond_18

    const/4 v10, 0x1

    if-eq v7, v10, :cond_19

    const/4 v12, 0x2

    if-eq v7, v12, :cond_19

    goto :goto_a

    :cond_18
    const/4 v10, 0x1

    :goto_a
    iput v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->predictor:I

    new-instance v7, Ljavax/imageio/plugins/tiff/TIFFField;

    const/16 v10, 0x13d

    invoke-virtual {v5, v10}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v10

    iget v12, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->predictor:I

    int-to-long v2, v12

    invoke-direct {v7, v10, v2, v3}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;J)V

    invoke-virtual {v4, v7}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_19
    new-instance v2, Ljavax/imageio/plugins/tiff/TIFFField;

    const/16 v3, 0x103

    invoke-virtual {v5, v3}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v3

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compression:I

    int-to-long v9, v7

    invoke-direct {v2, v3, v9, v10}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;J)V

    invoke-virtual {v4, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    const/4 v2, 0x3

    if-ne v14, v2, :cond_1e

    const/4 v2, 0x0

    aget v3, v13, v2

    const/16 v2, 0x8

    if-ne v3, v2, :cond_1e

    const/4 v3, 0x1

    aget v7, v13, v3

    if-ne v7, v2, :cond_1e

    const/4 v7, 0x2

    aget v9, v13, v7

    if-ne v9, v2, :cond_1e

    const v2, 0x8769

    invoke-virtual {v4, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v2

    if-eqz v2, :cond_1c

    iget v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compression:I

    if-ne v2, v3, :cond_1a

    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    const/4 v6, 0x6

    if-eq v3, v7, :cond_1d

    if-ne v3, v6, :cond_1b

    goto :goto_b

    :cond_1a
    const/4 v6, 0x6

    :cond_1b
    if-ne v2, v6, :cond_1e

    goto :goto_b

    :cond_1c
    if-ne v6, v7, :cond_1e

    iget-object v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->param:Ljavax/imageio/ImageWriteParam;

    invoke-virtual {v2}, Ljavax/imageio/ImageWriteParam;->getCompressionType()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Exif JPEG"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_1d
    :goto_b
    const/4 v2, 0x1

    goto :goto_c

    :cond_1e
    const/4 v2, 0x0

    :goto_c
    if-eqz v2, :cond_1f

    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compression:I

    const/4 v6, 0x6

    if-ne v3, v6, :cond_1f

    const/4 v3, 0x1

    goto :goto_d

    :cond_1f
    const/4 v3, 0x0

    :goto_d
    const/4 v6, 0x0

    iput-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressor:Lcom/sun/imageio/plugins/tiff/TIFFCompressor;

    iget v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compression:I

    const/4 v7, 0x7

    const/4 v9, 0x4

    const/4 v10, 0x2

    if-ne v6, v10, :cond_21

    new-instance v6, Lcom/sun/imageio/plugins/tiff/TIFFRLECompressor;

    invoke-direct {v6}, Lcom/sun/imageio/plugins/tiff/TIFFRLECompressor;-><init>()V

    iput-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressor:Lcom/sun/imageio/plugins/tiff/TIFFCompressor;

    if-nez v11, :cond_20

    const/4 v10, 0x0

    iput v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    :cond_20
    :goto_e
    const/4 v6, 0x0

    goto/16 :goto_11

    :cond_21
    const/4 v10, 0x0

    const/4 v12, 0x3

    if-ne v6, v12, :cond_22

    new-instance v6, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;

    invoke-direct {v6}, Lcom/sun/imageio/plugins/tiff/TIFFT4Compressor;-><init>()V

    iput-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressor:Lcom/sun/imageio/plugins/tiff/TIFFCompressor;

    if-nez v11, :cond_20

    iput v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    goto :goto_e

    :cond_22
    if-ne v6, v9, :cond_23

    new-instance v6, Lcom/sun/imageio/plugins/tiff/TIFFT6Compressor;

    invoke-direct {v6}, Lcom/sun/imageio/plugins/tiff/TIFFT6Compressor;-><init>()V

    iput-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressor:Lcom/sun/imageio/plugins/tiff/TIFFCompressor;

    if-nez v11, :cond_20

    iput v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    goto :goto_e

    :cond_23
    const/4 v10, 0x5

    if-ne v6, v10, :cond_24

    new-instance v6, Lcom/sun/imageio/plugins/tiff/TIFFLZWCompressor;

    iget v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->predictor:I

    invoke-direct {v6, v10}, Lcom/sun/imageio/plugins/tiff/TIFFLZWCompressor;-><init>(I)V

    iput-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressor:Lcom/sun/imageio/plugins/tiff/TIFFCompressor;

    goto :goto_e

    :cond_24
    const/4 v10, 0x6

    if-ne v6, v10, :cond_26

    if-eqz v2, :cond_25

    new-instance v6, Lcom/sun/imageio/plugins/tiff/TIFFExifJPEGCompressor;

    iget-object v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->param:Ljavax/imageio/ImageWriteParam;

    invoke-direct {v6, v10}, Lcom/sun/imageio/plugins/tiff/TIFFExifJPEGCompressor;-><init>(Ljavax/imageio/ImageWriteParam;)V

    iput-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressor:Lcom/sun/imageio/plugins/tiff/TIFFCompressor;

    goto :goto_e

    :cond_25
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "Old JPEG compression not supported!"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_26
    if-ne v6, v7, :cond_2b

    const/4 v10, 0x3

    if-ne v14, v10, :cond_27

    const/4 v6, 0x0

    aget v10, v13, v6

    const/16 v6, 0x8

    if-ne v10, v6, :cond_28

    const/4 v10, 0x1

    aget v11, v13, v10

    if-ne v11, v6, :cond_29

    const/4 v11, 0x2

    aget v15, v13, v11

    if-ne v15, v6, :cond_29

    const/4 v11, 0x6

    iput v11, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    goto :goto_f

    :cond_27
    const/16 v6, 0x8

    :cond_28
    const/4 v10, 0x1

    :cond_29
    if-ne v14, v10, :cond_2a

    const/4 v11, 0x0

    aget v15, v13, v11

    if-ne v15, v6, :cond_2a

    iput v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    :goto_f
    new-instance v6, Lcom/sun/imageio/plugins/tiff/TIFFJPEGCompressor;

    iget-object v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->param:Ljavax/imageio/ImageWriteParam;

    invoke-direct {v6, v10}, Lcom/sun/imageio/plugins/tiff/TIFFJPEGCompressor;-><init>(Ljavax/imageio/ImageWriteParam;)V

    iput-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressor:Lcom/sun/imageio/plugins/tiff/TIFFCompressor;

    goto :goto_e

    :cond_2a
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "JPEG compression supported for 1- and 3-band byte images only!"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2b
    const/16 v10, 0x8

    if-ne v6, v10, :cond_2c

    new-instance v6, Lcom/sun/imageio/plugins/tiff/TIFFZLibCompressor;

    iget-object v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->param:Ljavax/imageio/ImageWriteParam;

    iget v11, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->predictor:I

    invoke-direct {v6, v10, v11}, Lcom/sun/imageio/plugins/tiff/TIFFZLibCompressor;-><init>(Ljavax/imageio/ImageWriteParam;I)V

    iput-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressor:Lcom/sun/imageio/plugins/tiff/TIFFCompressor;

    goto/16 :goto_e

    :cond_2c
    const v10, 0x8005

    if-ne v6, v10, :cond_2d

    new-instance v6, Lcom/sun/imageio/plugins/tiff/TIFFPackBitsCompressor;

    invoke-direct {v6}, Lcom/sun/imageio/plugins/tiff/TIFFPackBitsCompressor;-><init>()V

    iput-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressor:Lcom/sun/imageio/plugins/tiff/TIFFCompressor;

    goto/16 :goto_e

    :cond_2d
    const v10, 0x80b2

    if-ne v6, v10, :cond_2e

    new-instance v6, Lcom/sun/imageio/plugins/tiff/TIFFDeflateCompressor;

    iget-object v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->param:Ljavax/imageio/ImageWriteParam;

    iget v11, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->predictor:I

    invoke-direct {v6, v10, v11}, Lcom/sun/imageio/plugins/tiff/TIFFDeflateCompressor;-><init>(Ljavax/imageio/ImageWriteParam;I)V

    iput-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressor:Lcom/sun/imageio/plugins/tiff/TIFFCompressor;

    goto/16 :goto_e

    :cond_2e
    const/16 v6, 0x10a

    invoke-virtual {v4, v6}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v6

    if-eqz v6, :cond_2f

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v6

    const/4 v10, 0x2

    if-ne v6, v10, :cond_2f

    const/4 v6, 0x1

    goto :goto_10

    :cond_2f
    const/4 v6, 0x0

    :goto_10
    if-eqz v6, :cond_30

    new-instance v6, Lcom/sun/imageio/plugins/tiff/TIFFLSBCompressor;

    invoke-direct {v6}, Lcom/sun/imageio/plugins/tiff/TIFFLSBCompressor;-><init>()V

    iput-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressor:Lcom/sun/imageio/plugins/tiff/TIFFCompressor;

    goto/16 :goto_e

    :cond_30
    new-instance v6, Lcom/sun/imageio/plugins/tiff/TIFFNullCompressor;

    invoke-direct {v6}, Lcom/sun/imageio/plugins/tiff/TIFFNullCompressor;-><init>()V

    iput-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compressor:Lcom/sun/imageio/plugins/tiff/TIFFCompressor;

    goto/16 :goto_e

    :goto_11
    iput-object v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->colorConverter:Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;

    if-eqz v1, :cond_32

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v10

    invoke-virtual {v10}, Ljava/awt/color/ColorSpace;->getType()I

    move-result v10

    const/4 v11, 0x5

    if-ne v10, v11, :cond_32

    iget v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    const/4 v11, 0x6

    if-ne v10, v11, :cond_31

    iget v11, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compression:I

    if-eq v11, v7, :cond_31

    new-instance v10, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;

    iget-object v11, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->imageMetadata:Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-direct {v10, v11}, Lcom/sun/imageio/plugins/tiff/TIFFYCbCrColorConverter;-><init>(Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;)V

    iput-object v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->colorConverter:Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;

    goto :goto_12

    :cond_31
    const/16 v11, 0x8

    if-ne v10, v11, :cond_32

    new-instance v10, Lcom/sun/imageio/plugins/tiff/TIFFCIELabColorConverter;

    invoke-direct {v10}, Lcom/sun/imageio/plugins/tiff/TIFFCIELabColorConverter;-><init>()V

    iput-object v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->colorConverter:Lcom/sun/imageio/plugins/tiff/TIFFColorConverter;

    :cond_32
    :goto_12
    iget v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    const/16 v11, 0x213

    const/16 v15, 0x212

    const/4 v6, 0x6

    if-ne v10, v6, :cond_33

    iget v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compression:I

    if-eq v6, v7, :cond_33

    invoke-virtual {v4, v15}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    invoke-virtual {v4, v11}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    new-instance v6, Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v5, v15}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v10

    const/4 v12, 0x2

    new-array v15, v12, [C

    fill-array-data v15, :array_0

    const/4 v7, 0x3

    invoke-direct {v6, v10, v7, v12, v15}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    new-instance v6, Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v5, v11}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v10

    const/4 v15, 0x1

    new-array v11, v15, [C

    const/16 v19, 0x0

    aput-char v12, v11, v19

    invoke-direct {v6, v10, v7, v15, v11}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_33
    new-instance v6, Ljavax/imageio/plugins/tiff/TIFFField;

    const/16 v7, 0x106

    invoke-virtual {v5, v7}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v7

    iget v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    int-to-long v10, v10

    invoke-direct {v6, v7, v10, v11}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;J)V

    invoke-virtual {v4, v6}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    add-int v6, v14, v17

    new-array v7, v6, [C

    iput-object v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitsPerSample:[C

    const/4 v7, 0x0

    iput v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    const/4 v7, 0x0

    :goto_13
    if-ge v7, v14, :cond_34

    iget v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    aget v11, v13, v7

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    add-int/lit8 v7, v7, 0x1

    goto :goto_13

    :cond_34
    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    const/16 v10, 0x20

    const/16 v11, 0x10

    const/4 v13, 0x3

    if-ne v7, v13, :cond_35

    iput v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    goto :goto_14

    :cond_35
    const/16 v13, 0x8

    if-le v7, v9, :cond_36

    if-ge v7, v13, :cond_36

    iput v13, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    goto :goto_14

    :cond_36
    if-le v7, v13, :cond_37

    if-ge v7, v11, :cond_37

    iput v11, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    goto :goto_14

    :cond_37
    if-le v7, v11, :cond_38

    if-ge v7, v10, :cond_38

    iput v10, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    goto :goto_14

    :cond_38
    if-le v7, v10, :cond_39

    const/16 v7, 0x40

    iput v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    :cond_39
    :goto_14
    const/4 v7, 0x0

    :goto_15
    iget-object v13, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitsPerSample:[C

    array-length v15, v13

    if-ge v7, v15, :cond_3a

    iget v15, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    int-to-char v15, v15

    aput-char v15, v13, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    :cond_3a
    array-length v7, v13

    const/16 v15, 0x102

    const/4 v12, 0x1

    if-ne v7, v12, :cond_3d

    const/4 v7, 0x0

    aget-char v13, v13, v7

    if-eq v13, v12, :cond_3b

    goto :goto_16

    :cond_3b
    invoke-virtual {v4, v15}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v13

    if-eqz v13, :cond_3e

    invoke-virtual {v13}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInts()[I

    move-result-object v13

    if-eqz v13, :cond_3c

    array-length v9, v13

    if-ne v9, v12, :cond_3c

    aget v9, v13, v7

    if-eq v9, v12, :cond_3e

    :cond_3c
    invoke-virtual {v4, v15}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    goto :goto_17

    :cond_3d
    :goto_16
    new-instance v9, Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v5, v15}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v12

    iget-object v13, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitsPerSample:[C

    array-length v7, v13

    const/4 v15, 0x3

    invoke-direct {v9, v12, v15, v7, v13}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    invoke-virtual {v4, v9}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_3e
    :goto_17
    const/16 v7, 0x153

    invoke-virtual {v4, v7}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v7

    if-nez v7, :cond_44

    iget v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    if-eq v9, v11, :cond_3f

    if-eq v9, v10, :cond_3f

    const/16 v12, 0x40

    if-ne v9, v12, :cond_44

    :cond_3f
    invoke-virtual/range {p2 .. p2}, Ljava/awt/image/SampleModel;->getDataType()I

    move-result v7

    iget v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    if-ne v9, v11, :cond_40

    const/4 v12, 0x1

    if-ne v7, v12, :cond_40

    const/4 v7, 0x1

    goto :goto_18

    :cond_40
    if-ne v9, v10, :cond_41

    const/4 v10, 0x4

    if-eq v7, v10, :cond_42

    :cond_41
    const/16 v10, 0x40

    if-ne v9, v10, :cond_43

    const/4 v9, 0x5

    if-ne v7, v9, :cond_43

    :cond_42
    const/4 v7, 0x3

    goto :goto_18

    :cond_43
    const/4 v7, 0x2

    :goto_18
    iput v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sampleFormat:I

    iget-object v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitsPerSample:[C

    array-length v9, v9

    new-array v10, v9, [C

    invoke-static {v10, v7}, Ljava/util/Arrays;->fill([CC)V

    const/16 v7, 0x153

    invoke-virtual {v5, v7}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v7

    new-instance v12, Ljavax/imageio/plugins/tiff/TIFFField;

    const/4 v13, 0x3

    invoke-direct {v12, v7, v13, v9, v10}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    invoke-virtual {v4, v12}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    goto :goto_19

    :cond_44
    if-eqz v7, :cond_45

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v7

    iput v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sampleFormat:I

    goto :goto_19

    :cond_45
    const/4 v7, 0x4

    iput v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->sampleFormat:I

    :goto_19
    if-eqz v8, :cond_46

    new-instance v7, Ljavax/imageio/plugins/tiff/TIFFField;

    const/16 v9, 0x152

    invoke-virtual {v5, v9}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v9

    array-length v10, v8

    const/4 v13, 0x3

    invoke-direct {v7, v9, v13, v10, v8}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    invoke-virtual {v4, v7}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    goto :goto_1a

    :cond_46
    const/16 v7, 0x152

    invoke-virtual {v4, v7}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    :goto_1a
    new-instance v7, Ljavax/imageio/plugins/tiff/TIFFField;

    const/16 v8, 0x115

    invoke-virtual {v5, v8}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v8

    iget-object v9, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitsPerSample:[C

    array-length v9, v9

    int-to-long v9, v9

    invoke-direct {v7, v8, v9, v10}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;J)V

    invoke-virtual {v4, v7}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    const/4 v8, 0x3

    if-ne v7, v8, :cond_48

    instance-of v7, v1, Ljava/awt/image/IndexColorModel;

    if-eqz v7, :cond_48

    iget-object v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitsPerSample:[C

    const/4 v9, 0x0

    aget-char v7, v7, v9

    const/4 v9, 0x1

    shl-int v10, v9, v7

    mul-int/2addr v10, v8

    new-array v8, v10, [C

    move-object v13, v1

    check-cast v13, Ljava/awt/image/IndexColorModel;

    shl-int v7, v9, v7

    invoke-virtual {v13}, Ljava/awt/image/IndexColorModel;->getMapSize()I

    move-result v9

    invoke-static {v7, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    const/4 v15, 0x0

    :goto_1b
    if-ge v15, v9, :cond_47

    invoke-virtual {v13, v15}, Ljava/awt/image/IndexColorModel;->getRed(I)I

    move-result v20

    const v23, 0xffff

    mul-int v12, v20, v23

    const/16 v11, 0xff

    div-int/2addr v12, v11

    int-to-char v12, v12

    aput-char v12, v8, v15

    add-int v12, v7, v15

    invoke-virtual {v13, v15}, Ljava/awt/image/IndexColorModel;->getGreen(I)I

    move-result v18

    move/from16 v24, v9

    mul-int v9, v18, v23

    div-int/2addr v9, v11

    int-to-char v9, v9

    aput-char v9, v8, v12

    const/4 v9, 0x2

    mul-int/lit8 v12, v7, 0x2

    add-int/2addr v12, v15

    invoke-virtual {v13, v15}, Ljava/awt/image/IndexColorModel;->getBlue(I)I

    move-result v9

    const v18, 0xffff

    mul-int v9, v9, v18

    div-int/2addr v9, v11

    int-to-char v9, v9

    aput-char v9, v8, v12

    add-int/lit8 v15, v15, 0x1

    move/from16 v9, v24

    const/16 v11, 0x10

    goto :goto_1b

    :cond_47
    new-instance v7, Ljavax/imageio/plugins/tiff/TIFFField;

    const/16 v9, 0x140

    invoke-virtual {v5, v9}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v9

    const/4 v11, 0x3

    invoke-direct {v7, v9, v11, v10, v8}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    invoke-virtual {v4, v7}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    goto :goto_1c

    :cond_48
    const/16 v7, 0x140

    invoke-virtual {v4, v7}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    :goto_1c
    if-eqz v1, :cond_49

    const v7, 0x8773

    invoke-virtual {v4, v7}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v7

    if-nez v7, :cond_49

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v7

    invoke-static {v7}, Lcom/sun/imageio/plugins/common/ImageUtil;->isNonStandardICCColorSpace(Ljava/awt/color/ColorSpace;)Z

    move-result v7

    if-eqz v7, :cond_49

    invoke-virtual/range {p1 .. p1}, Ljava/awt/image/ColorModel;->getColorSpace()Ljava/awt/color/ColorSpace;

    move-result-object v1

    check-cast v1, Ljava/awt/color/ICC_ColorSpace;

    invoke-virtual {v1}, Ljava/awt/color/ICC_ColorSpace;->getProfile()Ljava/awt/color/ICC_Profile;

    move-result-object v1

    invoke-virtual {v1}, Ljava/awt/color/ICC_Profile;->getData()[B

    move-result-object v1

    new-instance v7, Ljavax/imageio/plugins/tiff/TIFFField;

    const v8, 0x8773

    invoke-virtual {v5, v8}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v8

    array-length v9, v1

    const/4 v10, 0x7

    invoke-direct {v7, v8, v10, v9, v1}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    invoke-virtual {v4, v7}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_49
    const/16 v1, 0x11a

    invoke-virtual {v4, v1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v1

    const/16 v7, 0x11b

    invoke-virtual {v4, v7}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v7

    const/16 v8, 0x128

    if-nez v1, :cond_4e

    if-nez v7, :cond_4e

    const/4 v9, 0x2

    const/4 v10, 0x1

    filled-new-array {v10, v9}, [I

    move-result-object v1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v7, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[J

    new-array v7, v9, [J

    const/4 v9, 0x0

    aput-object v7, v1, v9

    invoke-virtual {v4, v8}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v7

    if-nez v7, :cond_4a

    const/16 v10, 0x11e

    invoke-virtual {v4, v10}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v10

    if-nez v10, :cond_4a

    const/16 v10, 0x11f

    invoke-virtual {v4, v10}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v10

    if-nez v10, :cond_4a

    aget-object v7, v1, v9

    const-wide/16 v10, 0x1

    aput-wide v10, v7, v9

    const/4 v12, 0x1

    aput-wide v10, v7, v12

    new-instance v7, Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v4, v8}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v12

    invoke-direct {v7, v12, v10, v11}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;J)V

    invoke-virtual {v4, v7}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    move v15, v14

    const/4 v13, 0x1

    goto :goto_1e

    :cond_4a
    if-eqz v7, :cond_4b

    invoke-virtual {v7, v9}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v7

    goto :goto_1d

    :cond_4b
    const/4 v7, 0x2

    :goto_1d
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->max(II)I

    move-result v10

    const/4 v11, 0x2

    if-eq v7, v11, :cond_4d

    const/4 v11, 0x3

    if-eq v7, v11, :cond_4c

    aget-object v7, v1, v9

    const-wide/16 v10, 0x1

    aput-wide v10, v7, v9

    const/4 v13, 0x1

    aput-wide v10, v7, v13

    move v15, v14

    goto :goto_1e

    :cond_4c
    const/4 v13, 0x1

    aget-object v7, v1, v9

    const-wide/16 v11, 0x64

    move v15, v14

    int-to-long v13, v10

    mul-long/2addr v13, v11

    aput-wide v13, v7, v9

    const-wide/16 v10, 0x3f8

    const/4 v13, 0x1

    aput-wide v10, v7, v13

    goto :goto_1e

    :cond_4d
    move v15, v14

    const/4 v13, 0x1

    aget-object v7, v1, v9

    int-to-long v10, v10

    aput-wide v10, v7, v9

    const-wide/16 v9, 0x4

    aput-wide v9, v7, v13

    :goto_1e
    new-instance v7, Ljavax/imageio/plugins/tiff/TIFFField;

    const/16 v9, 0x11a

    invoke-virtual {v4, v9}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v9

    const/4 v10, 0x5

    invoke-direct {v7, v9, v10, v13, v1}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    invoke-virtual {v4, v7}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    new-instance v7, Ljavax/imageio/plugins/tiff/TIFFField;

    const/16 v9, 0x11b

    invoke-virtual {v4, v9}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v9

    invoke-direct {v7, v9, v10, v13, v1}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    invoke-virtual {v4, v7}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    goto :goto_1f

    :cond_4e
    move v15, v14

    if-nez v1, :cond_4f

    if-eqz v7, :cond_4f

    const/4 v9, 0x0

    invoke-virtual {v7, v9}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsRational(I)[J

    move-result-object v1

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    new-instance v7, Ljavax/imageio/plugins/tiff/TIFFField;

    const/16 v9, 0x11a

    invoke-virtual {v4, v9}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v9

    const/4 v10, 0x5

    const/4 v11, 0x1

    invoke-direct {v7, v9, v10, v11, v1}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    invoke-virtual {v4, v7}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    goto :goto_1f

    :cond_4f
    if-eqz v1, :cond_50

    if-nez v7, :cond_50

    const/4 v7, 0x0

    invoke-virtual {v1, v7}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsRational(I)[J

    move-result-object v1

    invoke-virtual {v1}, [J->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [J

    new-instance v7, Ljavax/imageio/plugins/tiff/TIFFField;

    const/16 v9, 0x11b

    invoke-virtual {v4, v9}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v9

    const/4 v10, 0x5

    const/4 v11, 0x1

    invoke-direct {v7, v9, v10, v11, v1}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    invoke-virtual {v4, v7}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_50
    :goto_1f
    new-instance v1, Ljavax/imageio/plugins/tiff/TIFFField;

    const/16 v7, 0x100

    invoke-virtual {v5, v7}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v7

    move/from16 v9, p3

    int-to-long v10, v9

    invoke-direct {v1, v7, v10, v11}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;J)V

    invoke-virtual {v4, v1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    new-instance v1, Ljavax/imageio/plugins/tiff/TIFFField;

    const/16 v7, 0x101

    invoke-virtual {v5, v7}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v7

    move/from16 v13, p4

    int-to-long v8, v13

    invoke-direct {v1, v7, v8, v9}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;J)V

    invoke-virtual {v4, v1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    const/16 v1, 0x116

    invoke-virtual {v4, v1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v7

    if-eqz v7, :cond_52

    const/4 v12, 0x0

    invoke-virtual {v7, v12}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v6

    if-gez v6, :cond_51

    move/from16 v6, p3

    move v7, v13

    const/4 v12, 0x1

    goto :goto_20

    :cond_51
    move v7, v6

    const/4 v12, 0x1

    move/from16 v6, p3

    goto :goto_20

    :cond_52
    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->bitDepth:I

    mul-int/2addr v7, v6

    move/from16 v6, p3

    mul-int/2addr v7, v6

    const/4 v14, 0x7

    add-int/2addr v7, v14

    const/16 v14, 0x8

    div-int/2addr v7, v14

    const/16 v16, 0x2000

    div-int v7, v16, v7

    const/4 v12, 0x1

    invoke-static {v7, v12}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v7, v14}, Ljava/lang/Math;->max(II)I

    move-result v7

    :goto_20
    invoke-static {v7, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    iget-object v14, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->param:Ljavax/imageio/ImageWriteParam;

    invoke-virtual {v14}, Ljavax/imageio/ImageWriteParam;->getTilingMode()I

    move-result v14

    if-eqz v14, :cond_58

    if-ne v14, v12, :cond_53

    goto :goto_23

    :cond_53
    const/4 v12, 0x2

    if-ne v14, v12, :cond_54

    iget-object v12, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->param:Ljavax/imageio/ImageWriteParam;

    invoke-virtual {v12}, Ljavax/imageio/ImageWriteParam;->getTileWidth()I

    move-result v12

    iput v12, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileWidth:I

    iget-object v12, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->param:Ljavax/imageio/ImageWriteParam;

    invoke-virtual {v12}, Ljavax/imageio/ImageWriteParam;->getTileHeight()I

    move-result v12

    iput v12, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileLength:I

    :goto_21
    const/4 v1, 0x1

    goto :goto_24

    :cond_54
    const/4 v12, 0x3

    if-ne v14, v12, :cond_57

    const/16 v12, 0x142

    invoke-virtual {v4, v12}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v12

    if-nez v12, :cond_55

    iput v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileWidth:I

    const/4 v12, 0x0

    const/4 v14, 0x0

    goto :goto_22

    :cond_55
    const/4 v14, 0x0

    invoke-virtual {v12, v14}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v12

    iput v12, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileWidth:I

    const/4 v12, 0x1

    :goto_22
    const/16 v1, 0x143

    invoke-virtual {v4, v1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v1

    if-nez v1, :cond_56

    iput v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileLength:I

    move v1, v12

    goto :goto_24

    :cond_56
    invoke-virtual {v1, v14}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v1

    iput v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileLength:I

    goto :goto_21

    :cond_57
    new-instance v0, Ljavax/imageio/IIOException;

    const-string v1, "Illegal value of tilingMode!"

    invoke-direct {v0, v1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_58
    :goto_23
    iput v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileWidth:I

    iput v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileLength:I

    const/4 v1, 0x0

    :goto_24
    iget v14, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compression:I

    const/4 v12, 0x7

    if-ne v14, v12, :cond_5c

    move v14, v15

    const/4 v12, 0x1

    if-ne v14, v12, :cond_59

    const/4 v3, 0x1

    goto :goto_25

    :cond_59
    const/4 v3, 0x2

    :goto_25
    if-eqz v1, :cond_5a

    const/16 v12, 0x8

    mul-int/2addr v3, v12

    iget v12, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileWidth:I

    div-int/lit8 v14, v3, 0x2

    add-int/2addr v12, v14

    div-int/2addr v12, v3

    mul-int/2addr v12, v3

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v12

    iput v12, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileWidth:I

    iget v12, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileLength:I

    add-int/2addr v12, v14

    div-int/2addr v12, v3

    mul-int/2addr v12, v3

    invoke-static {v12, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileLength:I

    goto :goto_26

    :cond_5a
    if-ge v7, v13, :cond_5b

    invoke-static {v3, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/16 v7, 0x8

    mul-int/2addr v3, v7

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileLength:I

    div-int/lit8 v12, v3, 0x2

    add-int/2addr v7, v12

    div-int/2addr v7, v3

    mul-int/2addr v7, v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileLength:I

    move v7, v3

    :cond_5b
    :goto_26
    const/16 v3, 0x201

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v3, 0x202

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v3, 0x200

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v3, 0x203

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v3, 0x205

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v3, 0x206

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v3, 0x207

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v3, 0x208

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v3, 0x209

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    goto :goto_27

    :cond_5c
    if-eqz v3, :cond_5d

    iput v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileWidth:I

    iput v13, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileLength:I

    goto :goto_27

    :cond_5d
    if-eqz v1, :cond_5f

    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileWidth:I

    rem-int/lit8 v12, v3, 0x10

    if-eqz v12, :cond_5e

    const/16 v12, 0x8

    add-int/2addr v3, v12

    const/16 v12, 0x10

    div-int/2addr v3, v12

    mul-int/2addr v3, v12

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileWidth:I

    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->currentImage:I

    const-string v12, "Tile width rounded to multiple of 16."

    invoke-virtual {v0, v3, v12}, Ljavax/imageio/ImageWriter;->processWarningOccurred(ILjava/lang/String;)V

    :cond_5e
    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileLength:I

    rem-int/lit8 v12, v3, 0x10

    if-eqz v12, :cond_5f

    const/16 v12, 0x8

    add-int/2addr v3, v12

    const/16 v12, 0x10

    div-int/2addr v3, v12

    mul-int/2addr v3, v12

    invoke-static {v3, v12}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileLength:I

    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->currentImage:I

    const-string v12, "Tile height rounded to multiple of 16."

    invoke-virtual {v0, v3, v12}, Ljavax/imageio/ImageWriter;->processWarningOccurred(ILjava/lang/String;)V

    :cond_5f
    :goto_27
    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileWidth:I

    add-int/2addr v6, v3

    const/4 v12, 0x1

    sub-int/2addr v6, v12

    div-int/2addr v6, v3

    iput v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tilesAcross:I

    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileLength:I

    add-int v6, v13, v3

    sub-int/2addr v6, v12

    div-int/2addr v6, v3

    iput v6, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tilesDown:I

    if-nez v1, :cond_60

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isTiled:Z

    const/16 v3, 0x142

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v3, 0x143

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v3, 0x144

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v3, 0x145

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    new-instance v3, Ljavax/imageio/plugins/tiff/TIFFField;

    const/16 v6, 0x116

    invoke-virtual {v5, v6}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v12

    int-to-long v6, v7

    invoke-direct {v3, v12, v6, v7}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;J)V

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    new-instance v3, Ljavax/imageio/plugins/tiff/TIFFField;

    const/16 v6, 0x111

    invoke-virtual {v5, v6}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v6

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tilesDown:I

    const/4 v12, 0x4

    invoke-direct {v3, v6, v12, v7}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;II)V

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    new-instance v3, Ljavax/imageio/plugins/tiff/TIFFField;

    const/16 v6, 0x117

    invoke-virtual {v5, v6}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v6

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tilesDown:I

    invoke-direct {v3, v6, v12, v7}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;II)V

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    goto :goto_28

    :cond_60
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isTiled:Z

    const/16 v3, 0x116

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v3, 0x111

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v3, 0x117

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    new-instance v3, Ljavax/imageio/plugins/tiff/TIFFField;

    const/16 v6, 0x142

    invoke-virtual {v5, v6}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v6

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileWidth:I

    int-to-long v12, v7

    invoke-direct {v3, v6, v12, v13}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;J)V

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    new-instance v3, Ljavax/imageio/plugins/tiff/TIFFField;

    const/16 v6, 0x143

    invoke-virtual {v5, v6}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v6

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tileLength:I

    int-to-long v12, v7

    invoke-direct {v3, v6, v12, v13}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;J)V

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    new-instance v3, Ljavax/imageio/plugins/tiff/TIFFField;

    const/16 v6, 0x144

    invoke-virtual {v5, v6}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v6

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tilesDown:I

    iget v12, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tilesAcross:I

    mul-int/2addr v7, v12

    const/4 v12, 0x4

    invoke-direct {v3, v6, v12, v7}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;II)V

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    new-instance v3, Ljavax/imageio/plugins/tiff/TIFFField;

    const/16 v6, 0x145

    invoke-virtual {v5, v6}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v6

    iget v7, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tilesDown:I

    iget v13, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->tilesAcross:I

    mul-int/2addr v7, v13

    invoke-direct {v3, v6, v12, v7}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;II)V

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :goto_28
    if-eqz v2, :cond_70

    invoke-direct/range {p0 .. p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isEncodingEmpty()Z

    move-result v2

    iget v3, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compression:I

    const/4 v6, 0x6

    if-ne v3, v6, :cond_64

    const/16 v3, 0x100

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v3, 0x101

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v3, 0x102

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    if-eqz v2, :cond_61

    const/16 v3, 0x103

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    :cond_61
    const/16 v3, 0x106

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v3, 0x111

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v3, 0x115

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v3, 0x116

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v3, 0x117

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v3, 0x11c

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v3, 0x128

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v6

    if-nez v6, :cond_62

    new-instance v6, Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v5, v3}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v3

    const-wide/16 v12, 0x2

    invoke-direct {v6, v3, v12, v13}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;J)V

    invoke-virtual {v4, v6}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_62
    if-eqz v2, :cond_63

    const/16 v3, 0x201

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v3, 0x202

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v3, 0x212

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v3, 0x213

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v6

    if-nez v6, :cond_66

    new-instance v6, Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v5, v3}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v3

    const/4 v7, 0x1

    new-array v5, v7, [C

    const/4 v1, 0x0

    aput-char v7, v5, v1

    const/4 v1, 0x3

    invoke-direct {v6, v3, v1, v7, v5}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    invoke-virtual {v4, v6}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    goto :goto_29

    :cond_63
    const/4 v7, 0x1

    new-instance v1, Ljavax/imageio/plugins/tiff/TIFFField;

    const/16 v3, 0x201

    invoke-virtual {v5, v3}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v3

    const/4 v6, 0x4

    invoke-direct {v1, v3, v6, v7}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;II)V

    invoke-virtual {v4, v1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    new-instance v1, Ljavax/imageio/plugins/tiff/TIFFField;

    const/16 v3, 0x202

    invoke-virtual {v5, v3}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v3

    invoke-direct {v1, v3, v6, v7}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;II)V

    invoke-virtual {v4, v1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    const/16 v1, 0x212

    invoke-virtual {v4, v1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    goto :goto_29

    :cond_64
    const/16 v1, 0x128

    invoke-virtual {v4, v1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v3

    if-nez v3, :cond_65

    new-instance v3, Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v5, v1}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v1

    const-wide/16 v5, 0x2

    invoke-direct {v3, v1, v5, v6}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;J)V

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_65
    const/16 v1, 0x201

    invoke-virtual {v4, v1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v1, 0x202

    invoke-virtual {v4, v1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    iget v1, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->photometricInterpretation:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_66

    const/16 v1, 0x211

    invoke-virtual {v4, v1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v1, 0x212

    invoke-virtual {v4, v1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const/16 v1, 0x213

    invoke-virtual {v4, v1}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    :cond_66
    :goto_29
    invoke-static {}, Ljavax/imageio/plugins/tiff/ExifTIFFTagSet;->getInstance()Ljavax/imageio/plugins/tiff/ExifTIFFTagSet;

    move-result-object v1

    const v3, 0x8769

    invoke-virtual {v4, v3}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v3

    if-eqz v3, :cond_67

    invoke-virtual {v3}, Ljavax/imageio/plugins/tiff/TIFFField;->hasDirectory()Z

    move-result v5

    if-eqz v5, :cond_67

    invoke-virtual {v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getDirectory()Ljavax/imageio/plugins/tiff/TIFFDirectory;

    move-result-object v2

    invoke-static {v2}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;->getDirectoryAsIFD(Ljavax/imageio/plugins/tiff/TIFFDirectory;)Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    move-result-object v15

    goto :goto_2a

    :cond_67
    if-eqz v2, :cond_68

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v15, Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    invoke-direct {v15, v2}, Lcom/sun/imageio/plugins/tiff/TIFFIFD;-><init>(Ljava/util/List;)V

    invoke-static {}, Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet;->getInstance()Ljavax/imageio/plugins/tiff/ExifParentTIFFTagSet;

    move-result-object v2

    const v3, 0x8769

    invoke-virtual {v2, v3}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v22

    new-instance v2, Ljavax/imageio/plugins/tiff/TIFFField;

    const/16 v23, 0x4

    const-wide/16 v24, 0x1

    move-object/from16 v21, v2

    move-object/from16 v26, v15

    invoke-direct/range {v21 .. v26}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IJLjavax/imageio/plugins/tiff/TIFFDirectory;)V

    invoke-virtual {v4, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    goto :goto_2a

    :cond_68
    const/4 v15, 0x0

    :goto_2a
    if-eqz v15, :cond_70

    const v2, 0x9000

    invoke-virtual {v15, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v2

    if-nez v2, :cond_69

    new-instance v2, Ljavax/imageio/plugins/tiff/TIFFField;

    const v3, 0x9000

    invoke-virtual {v1, v3}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v3

    const-string v4, "0220"

    sget-object v5, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    const/4 v5, 0x7

    const/4 v6, 0x4

    invoke-direct {v2, v3, v5, v6, v4}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    invoke-virtual {v15, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_69
    iget v2, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compression:I

    const/4 v3, 0x6

    if-ne v2, v3, :cond_6a

    const v2, 0x9101

    invoke-virtual {v15, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v2

    if-nez v2, :cond_6b

    new-instance v2, Ljavax/imageio/plugins/tiff/TIFFField;

    const v3, 0x9101

    invoke-virtual {v1, v3}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v3

    const/4 v4, 0x4

    new-array v5, v4, [B

    fill-array-data v5, :array_1

    const/4 v6, 0x7

    invoke-direct {v2, v3, v6, v4, v5}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    invoke-virtual {v15, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    goto :goto_2b

    :cond_6a
    const v2, 0x9101

    invoke-virtual {v15, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    const v2, 0x9102

    invoke-virtual {v15, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    :cond_6b
    :goto_2b
    const v2, 0xa000

    invoke-virtual {v15, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v2

    if-nez v2, :cond_6c

    new-instance v2, Ljavax/imageio/plugins/tiff/TIFFField;

    const v3, 0xa000

    invoke-virtual {v1, v3}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v3

    const/4 v4, 0x4

    new-array v5, v4, [B

    fill-array-data v5, :array_2

    const/4 v6, 0x7

    invoke-direct {v2, v3, v6, v4, v5}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    invoke-virtual {v15, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_6c
    const v2, 0xa001

    invoke-virtual {v15, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v2

    if-nez v2, :cond_6d

    new-instance v2, Ljavax/imageio/plugins/tiff/TIFFField;

    const v3, 0xa001

    invoke-virtual {v1, v3}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v3

    const/4 v4, 0x1

    new-array v5, v4, [C

    const/4 v6, 0x0

    aput-char v4, v5, v6

    const/4 v6, 0x3

    invoke-direct {v2, v3, v6, v4, v5}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    invoke-virtual {v15, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_6d
    iget v0, v0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->compression:I

    const/4 v2, 0x6

    if-ne v0, v2, :cond_6f

    const v0, 0xa002

    invoke-virtual {v15, v0}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    if-nez v0, :cond_6e

    new-instance v0, Ljavax/imageio/plugins/tiff/TIFFField;

    const v2, 0xa002

    invoke-virtual {v1, v2}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v2

    invoke-direct {v0, v2, v10, v11}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;J)V

    invoke-virtual {v15, v0}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :cond_6e
    const v0, 0xa003

    invoke-virtual {v15, v0}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    if-nez v0, :cond_70

    new-instance v0, Ljavax/imageio/plugins/tiff/TIFFField;

    const v2, 0xa003

    invoke-virtual {v1, v2}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v1

    invoke-direct {v0, v1, v8, v9}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;J)V

    invoke-virtual {v15, v0}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    goto :goto_2c

    :cond_6f
    const v0, 0xa005

    invoke-virtual {v15, v0}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    :cond_70
    :goto_2c
    return-void

    nop

    :array_0
    .array-data 2
        0x1s
        0x1s
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x2t
        0x3t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x30t
        0x31t
        0x30t
        0x30t
    .end array-data
.end method

.method public write(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->stream:Ljavax/imageio/stream/ImageOutputStream;

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->markPositions()V

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 3
    invoke-direct/range {v1 .. v6}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->write(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;ZZ)V

    .line 4
    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->abortRequested()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->resetPositions()V

    :cond_0
    return-void

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "output == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public writeInsert(ILjavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->currentImage:I

    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->insert(ILjavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->currentImage:I

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iput v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->currentImage:I

    throw p1
.end method

.method public writeToSequence(Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->isWritingSequence:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/sun/imageio/plugins/tiff/TIFFImageWriter;->writeInsert(ILjavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "prepareWriteSequence() has not been called!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
