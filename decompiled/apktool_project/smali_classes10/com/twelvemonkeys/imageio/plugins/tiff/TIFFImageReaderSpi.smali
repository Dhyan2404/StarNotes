.class public Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReaderSpi;
.super Lcom/twelvemonkeys/imageio/spi/ImageReaderSpiBase;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/d7n;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/d7n;-><init>()V

    invoke-direct {p0, v0}, Lcom/twelvemonkeys/imageio/spi/ImageReaderSpiBase;-><init>(Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;)V

    return-void
.end method


# virtual methods
.method public canDecodeInput(Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of p0, p1, Ljavax/imageio/stream/ImageInputStream;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    check-cast p1, Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->mark()V

    const/4 p0, 0x2

    :try_start_0
    new-array p0, p0, [B

    invoke-interface {p1, p0}, Ljavax/imageio/stream/ImageInputStream;->readFully([B)V

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->getByteOrder()Ljava/nio/ByteOrder;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    aget-byte v2, p0, v0

    const/16 v3, 0x49

    const/4 v4, 0x1

    if-ne v2, v3, :cond_1

    aget-byte v5, p0, v4

    if-ne v5, v3, :cond_1

    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-interface {p1, p0}, Ljavax/imageio/stream/ImageInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    goto :goto_0

    :cond_1
    const/16 v3, 0x4d

    if-ne v2, v3, :cond_3

    aget-byte p0, p0, v4

    if-ne p0, v3, :cond_3

    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-interface {p1, p0}, Ljavax/imageio/stream/ImageInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    :goto_0
    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->readUnsignedShort()I

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/16 v2, 0x2a

    if-ne p0, v2, :cond_2

    move v0, v4

    :cond_2
    :try_start_2
    invoke-interface {p1, v1}, Ljavax/imageio/stream/ImageInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    return v0

    :cond_3
    :try_start_3
    invoke-interface {p1, v1}, Ljavax/imageio/stream/ImageInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    return v0

    :catchall_0
    move-exception p0

    :try_start_4
    invoke-interface {p1, v1}, Ljavax/imageio/stream/ImageInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->reset()V

    throw p0
.end method

.method public createReaderInstance(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;
    .locals 0

    .line 2
    new-instance p1, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;

    invoke-direct {p1, p0}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;-><init>(Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReaderSpi;)V

    return-object p1
.end method

.method public bridge synthetic createReaderInstance(Ljava/lang/Object;)Ljavax/imageio/ImageReader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReaderSpi;->createReaderInstance(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/plugins/tiff/TIFFImageReader;

    move-result-object p0

    return-object p0
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p0, "Aldus/Adobe Tagged Image File Format (TIFF) image reader"

    return-object p0
.end method

.method public onRegistration(Ljavax/imageio/spi/ServiceRegistry;Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/imageio/spi/ServiceRegistry;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    const-class v0, Lcom/sun/imageio/plugins/tiff/TIFFImageReaderSpi;

    invoke-virtual {p1, v0}, Ljavax/imageio/spi/ServiceRegistry;->getServiceProviderByClass(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/imageio/spi/ImageReaderSpi;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljavax/imageio/spi/IIOServiceProvider;->getVendorName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljavax/imageio/spi/IIOServiceProvider;->getVendorName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Apple"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1, p2, p0, v0}, Ljavax/imageio/spi/ServiceRegistry;->setOrdering(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method
