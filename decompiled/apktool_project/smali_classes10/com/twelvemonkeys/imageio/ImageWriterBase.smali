.class public abstract Lcom/twelvemonkeys/imageio/ImageWriterBase;
.super Ljavax/imageio/ImageWriter;
.source "SourceFile"


# instance fields
.field protected imageOutput:Ljavax/imageio/stream/ImageOutputStream;


# direct methods
.method public constructor <init>(Ljavax/imageio/spi/ImageWriterSpi;)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/imageio/ImageWriter;-><init>(Ljavax/imageio/spi/ImageWriterSpi;)V

    return-void
.end method

.method public static fakeAOI(Ljava/awt/image/BufferedImage;Ljavax/imageio/ImageWriteParam;)Ljava/awt/image/BufferedImage;
    .locals 2

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/twelvemonkeys/imageio/ImageWriterBase;->getSourceRegion(Ljavax/imageio/ImageWriteParam;II)Ljava/awt/Rectangle;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/twelvemonkeys/imageio/util/IIOUtil;->fakeAOI(Ljava/awt/image/BufferedImage;Ljava/awt/Rectangle;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public static fakeSubsampling(Ljava/awt/Image;Ljavax/imageio/ImageWriteParam;)Ljava/awt/Image;
    .locals 0

    invoke-static {p0, p1}, Lcom/twelvemonkeys/imageio/util/IIOUtil;->fakeSubsampling(Ljava/awt/Image;Ljavax/imageio/IIOParam;)Ljava/awt/Image;

    move-result-object p0

    return-object p0
.end method

.method public static getSourceRegion(Ljavax/imageio/ImageWriteParam;II)Ljava/awt/Rectangle;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/twelvemonkeys/imageio/util/IIOUtil;->getSourceRegion(Ljavax/imageio/IIOParam;II)Ljava/awt/Rectangle;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public assertOutput()V
    .locals 1

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getOutput() == null"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public convertStreamMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDefaultStreamMetadata(Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getOriginatingProvider()Ljavax/imageio/spi/ImageWriterSpi;

    move-result-object p0

    invoke-virtual {p0}, Ljavax/imageio/spi/ImageReaderWriterSpi;->getFormatNames()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Ljavax/imageio/ImageWriter;->reset()V

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/ImageWriterBase;->resetMembers()V

    return-void
.end method

.method public resetMembers()V
    .locals 0

    return-void
.end method

.method public setOutput(Ljava/lang/Object;)V
    .locals 1

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/ImageWriterBase;->resetMembers()V

    invoke-super {p0, p1}, Ljavax/imageio/ImageWriter;->setOutput(Ljava/lang/Object;)V

    instance-of v0, p1, Ljavax/imageio/stream/ImageOutputStream;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/imageio/stream/ImageOutputStream;

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/ImageWriterBase;->imageOutput:Ljavax/imageio/stream/ImageOutputStream;

    :goto_0
    return-void
.end method
