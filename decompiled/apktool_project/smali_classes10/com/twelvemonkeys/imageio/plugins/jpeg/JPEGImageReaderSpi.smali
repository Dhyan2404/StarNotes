.class public Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReaderSpi;
.super Lcom/twelvemonkeys/imageio/spi/ImageReaderSpiBase;
.source "SourceFile"


# instance fields
.field protected delegateProvider:Ljavax/imageio/spi/ImageReaderSpi;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/sunia/HTREnginev2/zqi;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/zqi;-><init>()V

    invoke-direct {p0, v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReaderSpi;-><init>(Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lcom/twelvemonkeys/imageio/spi/ImageReaderSpiBase;-><init>(Lcom/twelvemonkeys/imageio/spi/ReaderWriterProviderInfo;)V

    return-void
.end method

.method public constructor <init>(Ljavax/imageio/spi/ImageReaderSpi;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReaderSpi;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/imageio/spi/ImageReaderSpi;

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReaderSpi;->delegateProvider:Ljavax/imageio/spi/ImageReaderSpi;

    return-void
.end method

.method public static b(Ljavax/imageio/spi/ServiceRegistry;)Ljavax/imageio/spi/ImageReaderSpi;
    .locals 3

    const-class v0, Ljavax/imageio/spi/ImageReaderSpi;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/spi/ServiceRegistry;->getServiceProviders(Ljava/lang/Class;Z)Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.sun.imageio.plugins.jpeg.JPEGImageReaderSpi"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public canDecodeInput(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReaderSpi;->delegateProvider:Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {p0, p1}, Ljavax/imageio/spi/ImageReaderSpi;->canDecodeInput(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public createReaderInstance(Ljava/lang/Object;)Ljavax/imageio/ImageReader;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReaderSpi;->delegateProvider:Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {v1, p1}, Ljavax/imageio/spi/ImageReaderSpi;->createReaderInstance(Ljava/lang/Object;)Ljavax/imageio/ImageReader;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;-><init>(Ljavax/imageio/spi/ImageReaderSpi;Ljavax/imageio/ImageReader;)V

    return-object v0
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReaderSpi;->delegateProvider:Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {p0, p1}, Ljavax/imageio/spi/IIOServiceProvider;->getDescription(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExtraImageMetadataFormatNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReaderSpi;->delegateProvider:Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {p0}, Ljavax/imageio/spi/ImageReaderWriterSpi;->getExtraImageMetadataFormatNames()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getExtraStreamMetadataFormatNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReaderSpi;->delegateProvider:Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {p0}, Ljavax/imageio/spi/ImageReaderWriterSpi;->getExtraStreamMetadataFormatNames()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFileSuffixes()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReaderSpi;->delegateProvider:Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {p0}, Ljavax/imageio/spi/ImageReaderWriterSpi;->getFileSuffixes()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFormatNames()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReaderSpi;->delegateProvider:Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {p0}, Ljavax/imageio/spi/ImageReaderWriterSpi;->getFormatNames()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getImageMetadataFormat(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormat;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReaderSpi;->delegateProvider:Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {p0, p1}, Ljavax/imageio/spi/ImageReaderWriterSpi;->getImageMetadataFormat(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormat;

    move-result-object p0

    return-object p0
.end method

.method public getInputTypes()[Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReaderSpi;->delegateProvider:Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {p0}, Ljavax/imageio/spi/ImageReaderSpi;->getInputTypes()[Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public getMIMETypes()[Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReaderSpi;->delegateProvider:Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {p0}, Ljavax/imageio/spi/ImageReaderWriterSpi;->getMIMETypes()[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNativeImageMetadataFormatName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReaderSpi;->delegateProvider:Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {p0}, Ljavax/imageio/spi/ImageReaderWriterSpi;->getNativeImageMetadataFormatName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNativeStreamMetadataFormatName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReaderSpi;->delegateProvider:Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {p0}, Ljavax/imageio/spi/ImageReaderWriterSpi;->getNativeStreamMetadataFormatName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getStreamMetadataFormat(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormat;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReaderSpi;->delegateProvider:Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {p0, p1}, Ljavax/imageio/spi/ImageReaderWriterSpi;->getStreamMetadataFormat(Ljava/lang/String;)Ljavax/imageio/metadata/IIOMetadataFormat;

    move-result-object p0

    return-object p0
.end method

.method public getVendorName()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljavax/imageio/spi/IIOServiceProvider;->getVendorName()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReaderSpi;->delegateProvider:Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {p0}, Ljavax/imageio/spi/IIOServiceProvider;->getVendorName()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s/%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljavax/imageio/spi/IIOServiceProvider;->getVersion()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReaderSpi;->delegateProvider:Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {p0}, Ljavax/imageio/spi/IIOServiceProvider;->getVersion()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s/%s"

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public isStandardImageMetadataFormatSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReaderSpi;->delegateProvider:Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {p0}, Ljavax/imageio/spi/ImageReaderWriterSpi;->isStandardImageMetadataFormatSupported()Z

    move-result p0

    return p0
.end method

.method public isStandardStreamMetadataFormatSupported()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReaderSpi;->delegateProvider:Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {p0}, Ljavax/imageio/spi/ImageReaderWriterSpi;->isStandardStreamMetadataFormatSupported()Z

    move-result p0

    return p0
.end method

.method public onRegistration(Ljavax/imageio/spi/ServiceRegistry;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/imageio/spi/ServiceRegistry;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReaderSpi;->delegateProvider:Ljavax/imageio/spi/ImageReaderSpi;

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReaderSpi;->b(Ljavax/imageio/spi/ServiceRegistry;)Ljavax/imageio/spi/ImageReaderSpi;

    move-result-object v0

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReaderSpi;->delegateProvider:Ljavax/imageio/spi/ImageReaderSpi;

    :cond_0
    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReaderSpi;->delegateProvider:Ljavax/imageio/spi/ImageReaderSpi;

    if-eqz v0, :cond_1

    invoke-virtual {p1, p2, p0, v0}, Ljavax/imageio/spi/ServiceRegistry;->setOrdering(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-static {p1, p0, p2}, Lcom/twelvemonkeys/imageio/util/IIOUtil;->deregisterProvider(Ljavax/imageio/spi/ServiceRegistry;Ljavax/imageio/spi/IIOServiceProvider;Ljava/lang/Class;)V

    :goto_0
    return-void
.end method
