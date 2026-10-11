.class public Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;
.super Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;
.source "SourceFile"


# static fields
.field protected static final EOI:I = 0xd9

.field protected static final SOI:I = 0xd8


# instance fields
.field protected JPEGParam:Ljavax/imageio/ImageReadParam;

.field protected JPEGReader:Ljavax/imageio/ImageReader;

.field private data:[B

.field protected hasJPEGTables:Z

.field protected tables:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->JPEGReader:Ljavax/imageio/ImageReader;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->hasJPEGTables:Z

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->tables:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->data:[B

    return-void
.end method


# virtual methods
.method public beginDecoding()V
    .locals 2

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->JPEGReader:Ljavax/imageio/ImageReader;

    if-nez v0, :cond_1

    const-string v0, "jpeg"

    invoke-static {v0}, Ljavax/imageio/ImageIO;->getImageReadersByFormatName(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/imageio/ImageReader;

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->JPEGReader:Ljavax/imageio/ImageReader;

    invoke-virtual {v0}, Ljavax/imageio/ImageReader;->getDefaultReadParam()Ljavax/imageio/ImageReadParam;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->JPEGParam:Ljavax/imageio/ImageReadParam;

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No JPEG readers found!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->metadata:Ljavax/imageio/metadata/IIOMetadata;

    check-cast v0, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    const/16 v1, 0x15b

    invoke-virtual {v0, v1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->hasJPEGTables:Z

    invoke-virtual {v0}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->tables:[B

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->hasJPEGTables:Z

    :goto_1
    return-void
.end method

.method public decodeRaw([BIII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    iget-wide p2, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->offset:J

    invoke-interface {p1, p2, p3}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-boolean p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->hasJPEGTables:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->tables:[B

    array-length p3, p1

    iget p4, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->byteCount:I

    add-int/2addr p3, p4

    iget-object p4, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->data:[B

    array-length p4, p4

    if-ge p4, p3, :cond_0

    new-array p3, p3, [B

    iput-object p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->data:[B

    :cond_0
    array-length p3, p1

    array-length p1, p1

    add-int/lit8 p1, p1, -0x2

    :goto_0
    const/16 p4, 0xff

    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->tables:[B

    aget-byte v1, v0, p1

    and-int/2addr v1, p4

    if-ne v1, p4, :cond_1

    add-int/lit8 v1, p1, 0x1

    aget-byte v0, v0, v1

    and-int/2addr v0, p4

    const/16 v1, 0xd9

    if-ne v0, v1, :cond_1

    move p3, p1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->tables:[B

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->data:[B

    invoke-static {p1, p2, v0, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->read()I

    move-result p1

    int-to-byte p1, p1

    iget-object v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->read()I

    move-result v0

    int-to-byte v0, v0

    and-int/lit16 v1, p1, 0xff

    if-ne v1, p4, :cond_3

    and-int/lit16 p4, v0, 0xff

    const/16 v1, 0xd8

    if-eq p4, v1, :cond_4

    :cond_3
    iget-object p4, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->data:[B

    add-int/lit8 v1, p3, 0x1

    aput-byte p1, p4, p3

    add-int/lit8 p3, v1, 0x1

    aput-byte v0, p4, v1

    :cond_4
    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    iget-object p4, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->data:[B

    iget v0, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->byteCount:I

    add-int/lit8 v0, v0, -0x2

    invoke-interface {p1, p4, p3, v0}, Ljavax/imageio/stream/ImageInputStream;->readFully([BII)V

    new-instance p1, Ljava/io/ByteArrayInputStream;

    iget-object p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->data:[B

    invoke-direct {p1, p3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p3, Ljavax/imageio/stream/MemoryCacheImageInputStream;

    invoke-direct {p3, p1}, Ljavax/imageio/stream/MemoryCacheImageInputStream;-><init>(Ljava/io/InputStream;)V

    goto :goto_2

    :cond_5
    iget-object p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->stream:Ljavax/imageio/stream/ImageInputStream;

    :goto_2
    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->JPEGReader:Ljavax/imageio/ImageReader;

    const/4 p4, 0x1

    invoke-virtual {p1, p3, p2, p4}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->JPEGParam:Ljavax/imageio/ImageReadParam;

    iget-object p3, p0, Lcom/sun/imageio/plugins/tiff/TIFFDecompressor;->rawImage:Ljava/awt/image/BufferedImage;

    invoke-virtual {p1, p3}, Ljavax/imageio/ImageReadParam;->setDestination(Ljava/awt/image/BufferedImage;)V

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->JPEGReader:Ljavax/imageio/ImageReader;

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->JPEGParam:Ljavax/imageio/ImageReadParam;

    invoke-virtual {p1, p2, p0}, Ljavax/imageio/ImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    return-void
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    iget-object p0, p0, Lcom/sun/imageio/plugins/tiff/TIFFJPEGDecompressor;->JPEGReader:Ljavax/imageio/ImageReader;

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->dispose()V

    return-void
.end method
