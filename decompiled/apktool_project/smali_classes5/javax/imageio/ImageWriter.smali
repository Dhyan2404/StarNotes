.class public abstract Ljavax/imageio/ImageWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/imageio/ImageTranscoder;


# instance fields
.field private abortFlag:Z

.field protected availableLocales:[Ljava/util/Locale;

.field protected locale:Ljava/util/Locale;

.field protected originatingProvider:Ljavax/imageio/spi/ImageWriterSpi;

.field protected output:Ljava/lang/Object;

.field protected progressListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/imageio/event/IIOWriteProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field protected warningListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/imageio/event/IIOWriteWarningListener;",
            ">;"
        }
    .end annotation
.end field

.field protected warningLocales:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/imageio/spi/ImageWriterSpi;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/imageio/ImageWriter;->output:Ljava/lang/Object;

    iput-object v0, p0, Ljavax/imageio/ImageWriter;->availableLocales:[Ljava/util/Locale;

    iput-object v0, p0, Ljavax/imageio/ImageWriter;->locale:Ljava/util/Locale;

    iput-object v0, p0, Ljavax/imageio/ImageWriter;->warningListeners:Ljava/util/List;

    iput-object v0, p0, Ljavax/imageio/ImageWriter;->warningLocales:Ljava/util/List;

    iput-object v0, p0, Ljavax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/imageio/ImageWriter;->abortFlag:Z

    iput-object p1, p0, Ljavax/imageio/ImageWriter;->originatingProvider:Ljavax/imageio/spi/ImageWriterSpi;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getOutput() == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported write variant!"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized abort()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ljavax/imageio/ImageWriter;->abortFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized abortRequested()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Ljavax/imageio/ImageWriter;->abortFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addIIOWriteProgressListener(Ljavax/imageio/event/IIOWriteProgressListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljavax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    invoke-static {v0, p1}, Ljavax/imageio/ImageReader;->addToList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ljavax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    return-void
.end method

.method public addIIOWriteWarningListener(Ljavax/imageio/event/IIOWriteWarningListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljavax/imageio/ImageWriter;->warningListeners:Ljava/util/List;

    invoke-static {v0, p1}, Ljavax/imageio/ImageReader;->addToList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ljavax/imageio/ImageWriter;->warningListeners:Ljava/util/List;

    iget-object p1, p0, Ljavax/imageio/ImageWriter;->warningLocales:Ljava/util/List;

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Ljavax/imageio/ImageReader;->addToList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ljavax/imageio/ImageWriter;->warningLocales:Ljava/util/List;

    return-void
.end method

.method public canInsertEmpty(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "getOutput() == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public canInsertImage(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "getOutput() == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public canRemoveImage(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "getOutput() == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public canReplaceImageMetadata(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "getOutput() == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public canReplacePixels(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "getOutput() == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public canReplaceStreamMetadata()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getOutput() == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

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

    const/4 p0, 0x0

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getOutput() == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public canWriteRasters()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public canWriteSequence()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized clearAbortRequest()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Ljavax/imageio/ImageWriter;->abortFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public abstract convertImageMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
.end method

.method public abstract convertStreamMetadata(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public endInsertEmpty()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->a()V

    return-void
.end method

.method public endReplacePixels()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->a()V

    return-void
.end method

.method public endWriteEmpty()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getOutput()Ljava/lang/Object;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "getOutput() == null!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "No call to prepareWriteEmpty!"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public endWriteSequence()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->a()V

    return-void
.end method

.method public getAvailableLocales()[Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/ImageWriter;->availableLocales:[Ljava/util/Locale;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Locale;

    :goto_0
    return-object p0
.end method

.method public abstract getDefaultImageMetadata(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
.end method

.method public abstract getDefaultStreamMetadata(Ljavax/imageio/ImageWriteParam;)Ljavax/imageio/metadata/IIOMetadata;
.end method

.method public getDefaultWriteParam()Ljavax/imageio/ImageWriteParam;
    .locals 1

    new-instance v0, Ljavax/imageio/ImageWriteParam;

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getLocale()Ljava/util/Locale;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/imageio/ImageWriteParam;-><init>(Ljava/util/Locale;)V

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/ImageWriter;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method public getNumThumbnailsSupported(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/metadata/IIOMetadata;)I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getOriginatingProvider()Ljavax/imageio/spi/ImageWriterSpi;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/ImageWriter;->originatingProvider:Ljavax/imageio/spi/ImageWriterSpi;

    return-object p0
.end method

.method public getOutput()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/ImageWriter;->output:Ljava/lang/Object;

    return-object p0
.end method

.method public getPreferredThumbnailSizes(Ljavax/imageio/ImageTypeSpecifier;Ljavax/imageio/ImageWriteParam;Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/metadata/IIOMetadata;)[Ljava/awt/Dimension;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public prepareInsertEmpty(ILjavax/imageio/ImageTypeSpecifier;IILjavax/imageio/metadata/IIOMetadata;Ljava/util/List;Ljavax/imageio/ImageWriteParam;)V
    .locals 0
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

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->a()V

    return-void
.end method

.method public prepareReplacePixels(ILjava/awt/Rectangle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->a()V

    return-void
.end method

.method public prepareWriteEmpty(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/ImageTypeSpecifier;IILjavax/imageio/metadata/IIOMetadata;Ljava/util/List;Ljavax/imageio/ImageWriteParam;)V
    .locals 0
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

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->a()V

    return-void
.end method

.method public prepareWriteSequence(Ljavax/imageio/metadata/IIOMetadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->a()V

    return-void
.end method

.method public processImageComplete()V
    .locals 3

    iget-object v0, p0, Ljavax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ljavax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/event/IIOWriteProgressListener;

    invoke-interface {v2, p0}, Ljavax/imageio/event/IIOWriteProgressListener;->imageComplete(Ljavax/imageio/ImageWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processImageProgress(F)V
    .locals 3

    iget-object v0, p0, Ljavax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ljavax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/event/IIOWriteProgressListener;

    invoke-interface {v2, p0, p1}, Ljavax/imageio/event/IIOWriteProgressListener;->imageProgress(Ljavax/imageio/ImageWriter;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processImageStarted(I)V
    .locals 3

    iget-object v0, p0, Ljavax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ljavax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/event/IIOWriteProgressListener;

    invoke-interface {v2, p0, p1}, Ljavax/imageio/event/IIOWriteProgressListener;->imageStarted(Ljavax/imageio/ImageWriter;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processThumbnailComplete()V
    .locals 3

    iget-object v0, p0, Ljavax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ljavax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/event/IIOWriteProgressListener;

    invoke-interface {v2, p0}, Ljavax/imageio/event/IIOWriteProgressListener;->thumbnailComplete(Ljavax/imageio/ImageWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processThumbnailProgress(F)V
    .locals 3

    iget-object v0, p0, Ljavax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ljavax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/event/IIOWriteProgressListener;

    invoke-interface {v2, p0, p1}, Ljavax/imageio/event/IIOWriteProgressListener;->thumbnailProgress(Ljavax/imageio/ImageWriter;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processThumbnailStarted(II)V
    .locals 3

    iget-object v0, p0, Ljavax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ljavax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/event/IIOWriteProgressListener;

    invoke-interface {v2, p0, p1, p2}, Ljavax/imageio/event/IIOWriteProgressListener;->thumbnailStarted(Ljavax/imageio/ImageWriter;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processWarningOccurred(ILjava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ljavax/imageio/ImageWriter;->warningListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    iget-object v2, p0, Ljavax/imageio/ImageWriter;->warningListeners:Ljava/util/List;

    .line 4
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/event/IIOWriteWarningListener;

    .line 5
    invoke-interface {v2, p0, p1, p2}, Ljavax/imageio/event/IIOWriteWarningListener;->warningOccurred(Ljavax/imageio/ImageWriter;ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "warning == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public processWarningOccurred(ILjava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 7
    iget-object v0, p0, Ljavax/imageio/ImageWriter;->warningListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 9
    iget-object v2, p0, Ljavax/imageio/ImageWriter;->warningListeners:Ljava/util/List;

    .line 10
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/event/IIOWriteWarningListener;

    .line 11
    iget-object v3, p0, Ljavax/imageio/ImageWriter;->warningLocales:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    if-nez v3, :cond_1

    .line 12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 13
    :cond_1
    new-instance v4, Ljavax/imageio/ImageWriter$a;

    invoke-direct {v4, p0}, Ljavax/imageio/ImageWriter$a;-><init>(Ljavax/imageio/ImageWriter;)V

    .line 14
    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ClassLoader;

    .line 15
    :try_start_0
    invoke-static {p2, v3, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_2

    .line 16
    :try_start_1
    invoke-virtual {v3, p3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    invoke-interface {v2, p0, p1, v3}, Ljavax/imageio/event/IIOWriteWarningListener;->warningOccurred(Ljavax/imageio/ImageWriter;ILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 18
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Resource is missing!"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 19
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Resource is not a String!"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_2
    move-exception p0

    .line 20
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Bundle not found!"

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    return-void

    .line 21
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "keyword == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 22
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "baseName == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public processWriteAborted()V
    .locals 3

    iget-object v0, p0, Ljavax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ljavax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/event/IIOWriteProgressListener;

    invoke-interface {v2, p0}, Ljavax/imageio/event/IIOWriteProgressListener;->writeAborted(Ljavax/imageio/ImageWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public removeAllIIOWriteProgressListeners()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    return-void
.end method

.method public removeAllIIOWriteWarningListeners()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/imageio/ImageWriter;->warningListeners:Ljava/util/List;

    iput-object v0, p0, Ljavax/imageio/ImageWriter;->warningLocales:Ljava/util/List;

    return-void
.end method

.method public removeIIOWriteProgressListener(Ljavax/imageio/event/IIOWriteProgressListener;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Ljavax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Ljavax/imageio/ImageReader;->removeFromList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ljavax/imageio/ImageWriter;->progressListeners:Ljava/util/List;

    :cond_1
    :goto_0
    return-void
.end method

.method public removeIIOWriteWarningListener(Ljavax/imageio/event/IIOWriteWarningListener;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Ljavax/imageio/ImageWriter;->warningListeners:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Ljavax/imageio/ImageWriter;->warningListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Ljavax/imageio/ImageWriter;->warningLocales:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Ljavax/imageio/ImageWriter;->warningListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Ljavax/imageio/ImageWriter;->warningListeners:Ljava/util/List;

    iput-object p1, p0, Ljavax/imageio/ImageWriter;->warningLocales:Ljava/util/List;

    :cond_1
    :goto_0
    return-void
.end method

.method public removeImage(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->a()V

    return-void
.end method

.method public replaceImageMetadata(ILjavax/imageio/metadata/IIOMetadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->a()V

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
    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->a()V

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
    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->a()V

    return-void
.end method

.method public replaceStreamMetadata(Ljavax/imageio/metadata/IIOMetadata;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->a()V

    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/imageio/ImageWriter;->setOutput(Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljavax/imageio/ImageWriter;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->removeAllIIOWriteWarningListeners()V

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->removeAllIIOWriteProgressListeners()V

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->clearAbortRequest()V

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 4

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {p1, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid locale!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    iput-object p1, p0, Ljavax/imageio/ImageWriter;->locale:Ljava/util/Locale;

    return-void
.end method

.method public setOutput(Ljava/lang/Object;)V
    .locals 4

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->getOriginatingProvider()Ljavax/imageio/spi/ImageWriterSpi;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljavax/imageio/spi/ImageWriterSpi;->getOutputTypes()[Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Illegal output type!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_2
    iput-object p1, p0, Ljavax/imageio/ImageWriter;->output:Ljava/lang/Object;

    return-void
.end method

.method public write(Ljava/awt/image/RenderedImage;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Ljavax/imageio/IIOImage;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1, v1}, Ljavax/imageio/IIOImage;-><init>(Ljava/awt/image/RenderedImage;Ljava/util/List;Ljavax/imageio/metadata/IIOMetadata;)V

    invoke-virtual {p0, v1, v0, v1}, Ljavax/imageio/ImageWriter;->write(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V

    return-void
.end method

.method public write(Ljavax/imageio/IIOImage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, p1, v0}, Ljavax/imageio/ImageWriter;->write(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V

    return-void
.end method

.method public abstract write(Ljavax/imageio/metadata/IIOMetadata;Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public writeInsert(ILjavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->a()V

    return-void
.end method

.method public writeToSequence(Ljavax/imageio/IIOImage;Ljavax/imageio/ImageWriteParam;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageWriter;->a()V

    return-void
.end method
