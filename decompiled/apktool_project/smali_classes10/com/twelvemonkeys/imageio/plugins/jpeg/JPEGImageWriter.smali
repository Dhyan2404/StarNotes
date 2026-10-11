.class public Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;
.super Lcom/twelvemonkeys/imageio/ImageWriterBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter$b;
    }
.end annotation


# instance fields
.field public final e:Ljavax/imageio/ImageWriter;

.field public final f:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter$b;


# direct methods
.method public constructor <init>(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriterSpi;Ljavax/imageio/ImageWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/twelvemonkeys/imageio/ImageWriterBase;-><init>(Ljavax/imageio/spi/ImageWriterSpi;)V

    iput-object p2, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    new-instance p1, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter$b;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter$b;-><init>(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter$a;)V

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->f:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter$b;

    return-void
.end method

.method public static synthetic b(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;)V
    .locals 0

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->processImageComplete()V

    return-void
.end method

.method public static synthetic c(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;F)V
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageWriter;->processImageProgress(F)V

    return-void
.end method

.method public static synthetic d(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;I)V
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageWriter;->processImageStarted(I)V

    return-void
.end method

.method public static synthetic e(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;)V
    .locals 0

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->processThumbnailComplete()V

    return-void
.end method

.method public static synthetic f(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;F)V
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageWriter;->processThumbnailProgress(F)V

    return-void
.end method

.method public static synthetic g(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;II)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/ImageWriter;->processThumbnailStarted(II)V

    return-void
.end method

.method public static synthetic h(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;)V
    .locals 0

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->processWriteAborted()V

    return-void
.end method

.method public static synthetic i(Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;ILjava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/ImageWriter;->processWarningOccurred(ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public abort()V
    .locals 0

    invoke-super {p0}, Ljavax/imageio/ImageWriter;->abort()V

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->abort()V

    return-void
.end method

.method public canInsertEmpty(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageWriter;->canInsertEmpty(I)Z

    move-result p0

    return p0
.end method

.method public canInsertImage(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageWriter;->canInsertImage(I)Z

    move-result p0

    return p0
.end method

.method public canRemoveImage(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageWriter;->canRemoveImage(I)Z

    move-result p0

    return p0
.end method

.method public canReplaceImageMetadata(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageWriter;->canReplaceImageMetadata(I)Z

    move-result p0

    return p0
.end method

.method public canReplacePixels(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageWriter;->canReplacePixels(I)Z

    move-result p0

    return p0
.end method

.method public canReplaceStreamMetadata()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->canReplaceStreamMetadata()Z

    move-result p0

    return p0
.end method

.method public canWriteEmpty()Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->canWriteEmpty()Z

    move-result p0

    return p0
.end method

.method public canWriteRasters()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->canWriteRasters()Z

    move-result p0

    return p0
.end method

.method public canWriteSequence()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->canWriteSequence()Z

    move-result p0

    return p0
.end method

.method public convertImageMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0, p1, p2, p3}, Ljavax/imageio/ImageWriter;->convertImageMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p0

    return-object p0
.end method

.method public convertStreamMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/ImageWriter;->convertStreamMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p0

    return-object p0
.end method

.method public dispose()V
    .locals 0

    invoke-super {p0}, Ljavax/imageio/ImageWriter;->dispose()V

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->dispose()V

    return-void
.end method

.method public endInsertEmpty()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->endInsertEmpty()V

    return-void
.end method

.method public endReplacePixels()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->endReplacePixels()V

    return-void
.end method

.method public endWriteEmpty()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->endWriteEmpty()V

    return-void
.end method

.method public endWriteSequence()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->endWriteSequence()V

    return-void
.end method

.method public getAvailableLocales()[Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultImageMetadata(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/ImageWriter;->getDefaultImageMetadata(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultStreamMetadata(Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageWriter;->getDefaultStreamMetadata(Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultWriteParam()Ljavax/imageio/ImageWriteParam;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getDefaultWriteParam()Ljavax/imageio/ImageWriteParam;

    move-result-object p0

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getLocale()Ljava/util/Locale;

    move-result-object p0

    return-object p0
.end method

.method public getNumThumbnailsSupported(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/metadata/IIOMetadata;)I
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljavax/imageio/ImageWriter;->getNumThumbnailsSupported(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/metadata/IIOMetadata;)I

    move-result p0

    return p0
.end method

.method public getOutput()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getPreferredThumbnailSizes(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/metadata/IIOMetadata;)[Ljava/awt/Dimension;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0, p1, p2, p3, p4}, Ljavax/imageio/ImageWriter;->getPreferredThumbnailSizes(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/metadata/IIOMetadata;)[Ljava/awt/Dimension;

    move-result-object p0

    return-object p0
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->f:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter$b;

    invoke-virtual {v0, v1}, Ljavax/imageio/ImageWriter;->addIIOWriteProgressListener(Ljavax/imageio/event/IIOWriteProgressListener;)V

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->f:Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter$b;

    invoke-virtual {v0, p0}, Ljavax/imageio/ImageWriter;->addIIOWriteWarningListener(Ljavax/imageio/event/IIOWriteWarningListener;)V

    return-void
.end method

.method public prepareInsertEmpty(ILjavax/imageio/ImageTypeSpecifier;IILjavax/imageio/metadata/IIOMetadata;Ljava/util/List;Ljavax/imageio/ImageWriteParam;)V
    .locals 8
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

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Ljavax/imageio/ImageWriter;->prepareInsertEmpty(ILjavax/imageio/ImageTypeSpecifier;IILjavax/imageio/metadata/IIOMetadata;Ljava/util/List;Ljavax/imageio/ImageWriteParam;)V

    return-void
.end method

.method public prepareReplacePixels(ILjava/awt/Rectangle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/ImageWriter;->prepareReplacePixels(ILjava/awt/Rectangle;)V

    return-void
.end method

.method public prepareWriteEmpty(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageTypeSpecifier;IILjavax/imageio/metadata/IIOMetadata;Ljava/util/List;Ljavax/imageio/ImageWriteParam;)V
    .locals 8
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

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Ljavax/imageio/ImageWriter;->prepareWriteEmpty(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageTypeSpecifier;IILjavax/imageio/metadata/IIOMetadata;Ljava/util/List;Ljavax/imageio/ImageWriteParam;)V

    return-void
.end method

.method public prepareWriteSequence(Ljavax/imageio/metadata/IIOMetadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageWriter;->prepareWriteSequence(Ljavax/imageio/metadata/IIOMetadata;)V

    return-void
.end method

.method public removeImage(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageWriter;->removeImage(I)V

    return-void
.end method

.method public replaceImageMetadata(ILjavax/imageio/metadata/IIOMetadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/ImageWriter;->replaceImageMetadata(ILjavax/imageio/metadata/IIOMetadata;)V

    return-void
.end method

.method public replacePixels(Ljava/awt/image/Raster;Ljavax/imageio/ImageWriteParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/ImageWriter;->replacePixels(Ljava/awt/image/Raster;Ljavax/imageio/ImageWriteParam;)V

    return-void
.end method

.method public replacePixels(Ljava/awt/image/RenderedImage;Ljavax/imageio/ImageWriteParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/ImageWriter;->replacePixels(Ljava/awt/image/RenderedImage;Ljavax/imageio/ImageWriteParam;)V

    return-void
.end method

.method public replaceStreamMetadata(Ljavax/imageio/metadata/IIOMetadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageWriter;->replaceStreamMetadata(Ljavax/imageio/metadata/IIOMetadata;)V

    return-void
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Lcom/twelvemonkeys/imageio/ImageWriterBase;->reset()V

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->reset()V

    return-void
.end method

.method public resetMembers()V
    .locals 0

    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->j()V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageWriter;->setLocale(Ljava/util/Locale;)V

    return-void
.end method

.method public setOutput(Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/twelvemonkeys/imageio/ImageWriterBase;->setOutput(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageWriter;->setOutput(Ljava/lang/Object;)V

    return-void
.end method

.method public write(Ljava/awt/image/RenderedImage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageWriter;->write(Ljava/awt/image/RenderedImage;)V

    return-void
.end method

.method public write(Ljavax/imageio/IIOImage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageWriter;->write(Ljavax/imageio/IIOImage;)V

    return-void
.end method

.method public write(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0, p1, p2, p3}, Ljavax/imageio/ImageWriter;->write(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V

    return-void
.end method

.method public writeInsert(ILjavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0, p1, p2, p3}, Ljavax/imageio/ImageWriter;->writeInsert(ILjavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V

    return-void
.end method

.method public writeToSequence(Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageWriter;->e:Ljavax/imageio/ImageWriter;

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/ImageWriter;->writeToSequence(Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V

    return-void
.end method
