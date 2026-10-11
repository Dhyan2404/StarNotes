.class public Lcom/sun/imageio/plugins/tiff/TIFFJPEGCompressor;
.super Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/imageio/plugins/tiff/TIFFJPEGCompressor$JPEGSPIFilter;
    }
.end annotation


# static fields
.field static final CHROMA_SUBSAMPLING:I = 0x2


# direct methods
.method public constructor <init>(Ljavax/imageio/ImageWriteParam;)V
    .locals 3

    const/4 v0, 0x7

    const/4 v1, 0x0

    const-string v2, "JPEG"

    invoke-direct {p0, v2, v0, v1, p1}, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;-><init>(Ljava/lang/String;IZLjavax/imageio/ImageWriteParam;)V

    return-void
.end method

.method private static getJPEGTablesReader()Ljavax/imageio/ImageReader;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljavax/imageio/spi/IIORegistry;->getDefaultInstance()Ljavax/imageio/spi/IIORegistry;

    move-result-object v1

    const-class v2, Ljavax/imageio/spi/ImageReaderSpi;

    new-instance v3, Lcom/sun/imageio/plugins/tiff/TIFFJPEGCompressor$JPEGSPIFilter;

    invoke-direct {v3}, Lcom/sun/imageio/plugins/tiff/TIFFJPEGCompressor$JPEGSPIFilter;-><init>()V

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Ljavax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Ljavax/imageio/spi/ServiceRegistry$Filter;Z)Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {v1}, Ljavax/imageio/spi/ImageReaderSpi;->createReaderInstance()Ljavax/imageio/ImageReader;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-object v0
.end method


# virtual methods
.method public setMetadata(Ljavax/imageio/metadata/IIOMetadata;)V
    .locals 11

    invoke-super {p0, p1}, Lcom/sun/imageio/plugins/tiff/TIFFCompressor;->setMetadata(Ljavax/imageio/metadata/IIOMetadata;)V

    instance-of v0, p1, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    if-eqz v0, :cond_4

    check-cast p1, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;

    invoke-virtual {p1}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getRootIFD()Lcom/sun/imageio/plugins/tiff/TIFFIFD;

    move-result-object v0

    invoke-static {}, Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;->getInstance()Ljavax/imageio/plugins/tiff/BaselineTIFFTagSet;

    move-result-object v1

    const/16 v2, 0x115

    invoke-virtual {p1, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsInt(I)I

    move-result v2

    const/16 v4, 0x214

    const/16 v5, 0x213

    const/16 v6, 0x212

    const/4 v7, 0x1

    if-ne v2, v7, :cond_0

    invoke-virtual {v0, v6}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    invoke-virtual {v0, v5}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    invoke-virtual {v0, v4}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    goto :goto_0

    :cond_0
    new-instance v2, Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v1, v6}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v6

    const/4 v8, 0x2

    new-array v9, v8, [C

    fill-array-data v9, :array_0

    const/4 v10, 0x3

    invoke-direct {v2, v6, v10, v8, v9}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    new-instance v2, Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v1, v5}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v5

    new-array v6, v7, [C

    aput-char v7, v6, v3

    invoke-direct {v2, v5, v10, v7, v6}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    new-instance v2, Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v1, v4}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v4

    const/4 v5, 0x6

    new-array v6, v5, [[J

    new-array v9, v8, [J

    fill-array-data v9, :array_1

    aput-object v9, v6, v3

    new-array v9, v8, [J

    fill-array-data v9, :array_2

    aput-object v9, v6, v7

    new-array v9, v8, [J

    fill-array-data v9, :array_3

    aput-object v9, v6, v8

    new-array v9, v8, [J

    fill-array-data v9, :array_4

    aput-object v9, v6, v10

    new-array v9, v8, [J

    fill-array-data v9, :array_5

    const/4 v10, 0x4

    aput-object v9, v6, v10

    new-array v8, v8, [J

    fill-array-data v8, :array_6

    const/4 v9, 0x5

    aput-object v8, v6, v9

    invoke-direct {v2, v4, v9, v5, v6}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V

    :goto_0
    const/16 v2, 0x15b

    invoke-virtual {p1, v2}, Lcom/sun/imageio/plugins/tiff/TIFFImageMetadata;->getTIFFField(I)Ljavax/imageio/plugins/tiff/TIFFField;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v7, v3}, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->initJPEGWriter(ZZ)V

    :cond_1
    if-eqz p1, :cond_3

    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGWriter:Ljavax/imageio/ImageWriter;

    if-eqz v4, :cond_3

    iput-boolean v7, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->writeAbbreviatedStream:Z

    invoke-virtual {p1}, Ljavax/imageio/plugins/tiff/TIFFField;->getCount()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p1}, Ljavax/imageio/plugins/tiff/TIFFField;->getAsBytes()[B

    move-result-object p1

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance p1, Ljavax/imageio/stream/MemoryCacheImageInputStream;

    invoke-direct {p1, v4}, Ljavax/imageio/stream/MemoryCacheImageInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {}, Lcom/sun/imageio/plugins/tiff/TIFFJPEGCompressor;->getJPEGTablesReader()Ljavax/imageio/ImageReader;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;)V

    :try_start_0
    invoke-virtual {v4}, Ljavax/imageio/ImageReader;->getStreamMetadata()Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGStreamMetadata:Ljavax/imageio/metadata/IIOMetadata;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    invoke-virtual {v4}, Ljavax/imageio/ImageReader;->reset()V

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    const/4 p1, 0x0

    :try_start_1
    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGStreamMetadata:Ljavax/imageio/metadata/IIOMetadata;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_2
    invoke-virtual {v4}, Ljavax/imageio/ImageReader;->reset()V

    throw p0

    :cond_2
    :goto_3
    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGStreamMetadata:Ljavax/imageio/metadata/IIOMetadata;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGWriter:Ljavax/imageio/ImageWriter;

    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGParam:Ljavax/imageio/plugins/jpeg/JPEGImageWriteParam;

    invoke-virtual {p1, v4}, Ljavax/imageio/ImageWriter;->getDefaultStreamMetadata(Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGStreamMetadata:Ljavax/imageio/metadata/IIOMetadata;

    new-instance p1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljavax/imageio/stream/MemoryCacheImageOutputStream;

    invoke-direct {v4, p1}, Ljavax/imageio/stream/MemoryCacheImageOutputStream;-><init>(Ljava/io/OutputStream;)V

    iget-object v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGWriter:Ljavax/imageio/ImageWriter;

    invoke-virtual {v5, v4}, Ljavax/imageio/ImageWriter;->setOutput(Ljava/lang/Object;)V

    :try_start_2
    iget-object v5, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGWriter:Ljavax/imageio/ImageWriter;

    iget-object v6, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGStreamMetadata:Ljavax/imageio/metadata/IIOMetadata;

    invoke-virtual {v5, v6}, Ljavax/imageio/ImageWriter;->prepareWriteSequence(Ljavax/imageio/metadata/IIOMetadata;)V

    invoke-virtual {v4}, Ljavax/imageio/stream/ImageInputStreamImpl;->flush()V

    iget-object v4, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->JPEGWriter:Ljavax/imageio/ImageWriter;

    invoke-virtual {v4}, Ljavax/imageio/ImageWriter;->endWriteSequence()V

    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p1

    new-instance v4, Ljavax/imageio/plugins/tiff/TIFFField;

    invoke-virtual {v1, v2}, Ljavax/imageio/plugins/tiff/TIFFTagSet;->getTag(I)Ljavax/imageio/plugins/tiff/TIFFTag;

    move-result-object v1

    array-length v5, p1

    const/4 v6, 0x7

    invoke-direct {v4, v1, v6, v5, p1}, Ljavax/imageio/plugins/tiff/TIFFField;-><init>(Ljavax/imageio/plugins/tiff/TIFFTag;IILjava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->addTIFFField(Ljavax/imageio/plugins/tiff/TIFFField;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    invoke-virtual {v0, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    iput-boolean v3, p0, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->writeAbbreviatedStream:Z

    goto :goto_4

    :cond_3
    invoke-virtual {v0, v2}, Ljavax/imageio/plugins/tiff/TIFFDirectory;->removeTIFFField(I)V

    invoke-virtual {p0, v3, v3}, Lcom/sun/imageio/plugins/tiff/TIFFBaseJPEGCompressor;->initJPEGWriter(ZZ)V

    :cond_4
    :goto_4
    return-void

    nop

    :array_0
    .array-data 2
        0x2s
        0x2s
    .end array-data

    :array_1
    .array-data 8
        0x0
        0x1
    .end array-data

    :array_2
    .array-data 8
        0xff
        0x1
    .end array-data

    :array_3
    .array-data 8
        0x80
        0x1
    .end array-data

    :array_4
    .array-data 8
        0xff
        0x1
    .end array-data

    :array_5
    .array-data 8
        0x80
        0x1
    .end array-data

    :array_6
    .array-data 8
        0xff
        0x1
    .end array-data
.end method
