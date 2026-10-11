.class public abstract Ljavax/imageio/ImageReader;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private abortFlag:Z

.field protected availableLocales:[Ljava/util/Locale;

.field protected ignoreMetadata:Z

.field protected input:Ljava/lang/Object;

.field protected locale:Ljava/util/Locale;

.field protected minIndex:I

.field protected originatingProvider:Ljavax/imageio/spi/ImageReaderSpi;

.field protected progressListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/imageio/event/IIOReadProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field protected seekForwardOnly:Z

.field protected updateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/imageio/event/IIOReadUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field protected warningListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljavax/imageio/event/IIOReadWarningListener;",
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
.method public constructor <init>(Ljavax/imageio/spi/ImageReaderSpi;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/imageio/ImageReader;->input:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Ljavax/imageio/ImageReader;->seekForwardOnly:Z

    iput-boolean v1, p0, Ljavax/imageio/ImageReader;->ignoreMetadata:Z

    iput v1, p0, Ljavax/imageio/ImageReader;->minIndex:I

    iput-object v0, p0, Ljavax/imageio/ImageReader;->availableLocales:[Ljava/util/Locale;

    iput-object v0, p0, Ljavax/imageio/ImageReader;->locale:Ljava/util/Locale;

    iput-object v0, p0, Ljavax/imageio/ImageReader;->warningListeners:Ljava/util/List;

    iput-object v0, p0, Ljavax/imageio/ImageReader;->warningLocales:Ljava/util/List;

    iput-object v0, p0, Ljavax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    iput-object v0, p0, Ljavax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    iput-boolean v1, p0, Ljavax/imageio/ImageReader;->abortFlag:Z

    iput-object p1, p0, Ljavax/imageio/ImageReader;->originatingProvider:Ljavax/imageio/spi/ImageReaderSpi;

    return-void
.end method

.method public static addToList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static checkReadParamBandSettings(Ljavax/imageio/ImageReadParam;II)V
    .locals 4

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljavax/imageio/IIOParam;->getSourceBands()[I

    move-result-object v0

    invoke-virtual {p0}, Ljavax/imageio/ImageReadParam;->getDestinationBands()[I

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object p0, v0

    :goto_0
    if-nez v0, :cond_1

    move v1, p1

    goto :goto_1

    :cond_1
    array-length v1, v0

    :goto_1
    if-nez p0, :cond_2

    move v2, p2

    goto :goto_2

    :cond_2
    array-length v2, p0

    :goto_2
    if-ne v1, v2, :cond_7

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    move v2, v1

    :goto_3
    array-length v3, v0

    if-ge v2, v3, :cond_4

    aget v3, v0, v2

    if-ge v3, p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ImageReadParam source bands contains a value >= the number of source bands!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    if-eqz p0, :cond_6

    :goto_4
    array-length p1, p0

    if-ge v1, p1, :cond_6

    aget p1, p0, v1

    if-ge p1, p2, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ImageReadParam dest bands contains a value >= the number of dest bands!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ImageReadParam num source & dest bands differ!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static computeRegions(Ljavax/imageio/ImageReadParam;IILjava/awt/image/BufferedImage;Ljava/awt/Rectangle;Ljava/awt/Rectangle;)V
    .locals 5

    if-eqz p4, :cond_9

    if-eqz p5, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p4, v0, v0, p1, p2}, Ljava/awt/Rectangle;->setBounds(IIII)V

    invoke-virtual {p5, v0, v0, p1, p2}, Ljava/awt/Rectangle;->setBounds(IIII)V

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljavax/imageio/IIOParam;->getSourceRegion()Ljava/awt/Rectangle;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p4, p2}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljava/awt/Rectangle;->setBounds(Ljava/awt/Rectangle;)V

    :cond_0
    invoke-virtual {p0}, Ljavax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result p2

    invoke-virtual {p0}, Ljavax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result v1

    invoke-virtual {p0}, Ljavax/imageio/IIOParam;->getSubsamplingXOffset()I

    move-result v2

    invoke-virtual {p0}, Ljavax/imageio/IIOParam;->getSubsamplingYOffset()I

    move-result v3

    invoke-virtual {p4, v2, v3}, Ljava/awt/Rectangle;->translate(II)V

    iget v4, p4, Ljava/awt/Rectangle;->width:I

    sub-int/2addr v4, v2

    iput v4, p4, Ljava/awt/Rectangle;->width:I

    iget v2, p4, Ljava/awt/Rectangle;->height:I

    sub-int/2addr v2, v3

    iput v2, p4, Ljava/awt/Rectangle;->height:I

    invoke-virtual {p0}, Ljavax/imageio/IIOParam;->getDestinationOffset()Ljava/awt/Point;

    move-result-object p0

    invoke-virtual {p5, p0}, Ljava/awt/Rectangle;->setLocation(Ljava/awt/Point;)V

    goto :goto_0

    :cond_1
    move p2, p1

    move v1, p2

    :goto_0
    iget p0, p5, Ljava/awt/Rectangle;->x:I

    if-gez p0, :cond_2

    neg-int p0, p0

    mul-int/2addr p0, p2

    iget v2, p4, Ljava/awt/Rectangle;->x:I

    add-int/2addr v2, p0

    iput v2, p4, Ljava/awt/Rectangle;->x:I

    iget v2, p4, Ljava/awt/Rectangle;->width:I

    sub-int/2addr v2, p0

    iput v2, p4, Ljava/awt/Rectangle;->width:I

    iput v0, p5, Ljava/awt/Rectangle;->x:I

    :cond_2
    iget p0, p5, Ljava/awt/Rectangle;->y:I

    if-gez p0, :cond_3

    neg-int p0, p0

    mul-int/2addr p0, v1

    iget v2, p4, Ljava/awt/Rectangle;->y:I

    add-int/2addr v2, p0

    iput v2, p4, Ljava/awt/Rectangle;->y:I

    iget v2, p4, Ljava/awt/Rectangle;->height:I

    sub-int/2addr v2, p0

    iput v2, p4, Ljava/awt/Rectangle;->height:I

    iput v0, p5, Ljava/awt/Rectangle;->y:I

    :cond_3
    iget p0, p4, Ljava/awt/Rectangle;->width:I

    add-int/2addr p0, p2

    sub-int/2addr p0, p1

    div-int/2addr p0, p2

    iget v2, p4, Ljava/awt/Rectangle;->height:I

    add-int/2addr v2, v1

    sub-int/2addr v2, p1

    div-int/2addr v2, v1

    iput p0, p5, Ljava/awt/Rectangle;->width:I

    iput v2, p5, Ljava/awt/Rectangle;->height:I

    if-eqz p3, :cond_6

    new-instance p1, Ljava/awt/Rectangle;

    invoke-virtual {p3}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v3

    invoke-virtual {p3}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v4

    invoke-direct {p1, v0, v0, v3, v4}, Ljava/awt/Rectangle;-><init>(IIII)V

    invoke-virtual {p5, p1}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object p1

    invoke-virtual {p5, p1}, Ljava/awt/Rectangle;->setBounds(Ljava/awt/Rectangle;)V

    invoke-virtual {p5}, Ljava/awt/Rectangle;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    iget p1, p5, Ljava/awt/Rectangle;->x:I

    add-int/2addr p1, p0

    invoke-virtual {p3}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p0

    sub-int/2addr p1, p0

    if-lez p1, :cond_4

    iget p0, p4, Ljava/awt/Rectangle;->width:I

    mul-int/2addr p1, p2

    sub-int/2addr p0, p1

    iput p0, p4, Ljava/awt/Rectangle;->width:I

    :cond_4
    iget p0, p5, Ljava/awt/Rectangle;->y:I

    add-int/2addr p0, v2

    invoke-virtual {p3}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p1

    sub-int/2addr p0, p1

    if-lez p0, :cond_6

    iget p1, p4, Ljava/awt/Rectangle;->height:I

    mul-int/2addr p0, v1

    sub-int/2addr p1, p0

    iput p1, p4, Ljava/awt/Rectangle;->height:I

    goto :goto_1

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty destination region!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    :goto_1
    invoke-virtual {p4}, Ljava/awt/Rectangle;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    invoke-virtual {p5}, Ljava/awt/Rectangle;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_7

    return-void

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Empty region!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "destRegion == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "srcRegion == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getDestination(Ljavax/imageio/ImageReadParam;Ljava/util/Iterator;II)Ljava/awt/image/BufferedImage;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/imageio/ImageReadParam;",
            "Ljava/util/Iterator<",
            "Ljavax/imageio/ImageTypeSpecifier;",
            ">;II)",
            "Ljava/awt/image/BufferedImage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/imageio/IIOException;
        }
    .end annotation

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    int-to-long v0, p2

    int-to-long v2, p3

    mul-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljavax/imageio/ImageReadParam;->getDestination()Ljava/awt/image/BufferedImage;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljavax/imageio/IIOParam;->getDestinationType()Ljavax/imageio/ImageTypeSpecifier;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljavax/imageio/ImageTypeSpecifier;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljavax/imageio/ImageTypeSpecifier;

    goto :goto_2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Non-ImageTypeSpecifier retrieved from imageTypes!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/ImageTypeSpecifier;

    invoke-virtual {v2, v0}, Ljavax/imageio/ImageTypeSpecifier;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_4
    move p1, v1

    :goto_1
    if-eqz p1, :cond_5

    :goto_2
    new-instance v6, Ljava/awt/Rectangle;

    invoke-direct {v6, v1, v1, v1, v1}, Ljava/awt/Rectangle;-><init>(IIII)V

    new-instance p1, Ljava/awt/Rectangle;

    invoke-direct {p1, v1, v1, v1, v1}, Ljava/awt/Rectangle;-><init>(IIII)V

    const/4 v5, 0x0

    move-object v2, p0

    move v3, p2

    move v4, p3

    move-object v7, p1

    invoke-static/range {v2 .. v7}, Ljavax/imageio/ImageReader;->computeRegions(Ljavax/imageio/ImageReadParam;IILjava/awt/image/BufferedImage;Ljava/awt/Rectangle;Ljava/awt/Rectangle;)V

    iget p0, p1, Ljava/awt/Rectangle;->x:I

    iget p2, p1, Ljava/awt/Rectangle;->width:I

    add-int/2addr p0, p2

    iget p2, p1, Ljava/awt/Rectangle;->y:I

    iget p1, p1, Ljava/awt/Rectangle;->height:I

    add-int/2addr p2, p1

    invoke-virtual {v0, p0, p2}, Ljavax/imageio/ImageTypeSpecifier;->createBufferedImage(II)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0

    :cond_5
    new-instance p0, Ljavax/imageio/IIOException;

    const-string p1, "Destination type from ImageReadParam does not match!"

    invoke-direct {p0, p1}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "width*height > Integer.MAX_VALUE!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "imageTypes null or empty!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getSourceRegion(Ljavax/imageio/ImageReadParam;II)Ljava/awt/Rectangle;
    .locals 2

    new-instance v0, Ljava/awt/Rectangle;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, p1, p2}, Ljava/awt/Rectangle;-><init>(IIII)V

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljavax/imageio/IIOParam;->getSourceRegion()Ljava/awt/Rectangle;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {v0, p1}, Ljava/awt/Rectangle;->intersection(Ljava/awt/Rectangle;)Ljava/awt/Rectangle;

    move-result-object p1

    move-object v0, p1

    :cond_0
    invoke-virtual {p0}, Ljavax/imageio/IIOParam;->getSubsamplingXOffset()I

    move-result p1

    invoke-virtual {p0}, Ljavax/imageio/IIOParam;->getSubsamplingYOffset()I

    move-result p0

    iget p2, v0, Ljava/awt/Rectangle;->x:I

    add-int/2addr p2, p1

    iput p2, v0, Ljava/awt/Rectangle;->x:I

    iget p2, v0, Ljava/awt/Rectangle;->y:I

    add-int/2addr p2, p0

    iput p2, v0, Ljava/awt/Rectangle;->y:I

    iget p2, v0, Ljava/awt/Rectangle;->width:I

    sub-int/2addr p2, p1

    iput p2, v0, Ljava/awt/Rectangle;->width:I

    iget p1, v0, Ljava/awt/Rectangle;->height:I

    sub-int/2addr p1, p0

    iput p1, v0, Ljava/awt/Rectangle;->height:I

    :cond_1
    return-object v0
.end method

.method public static removeFromList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    if-nez p0, :cond_0

    return-object p0

    :cond_0
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, 0x0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/util/Set;ZI)Ljavax/imageio/metadata/IIOMetadata;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;ZI)",
            "Ljavax/imageio/metadata/IIOMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_6

    if-eqz p2, :cond_5

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->getStreamMetadata()Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p4}, Ljavax/imageio/ImageReader;->getImageMetadata(I)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_4

    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadata;->isStandardMetadataFormatSupported()Z

    move-result p2

    if-eqz p2, :cond_1

    const-string p2, "javax_imageio_1.0"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadata;->getNativeMetadataFormatName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadata;->getExtraMetadataFormatNames()[Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4

    const/4 p3, 0x0

    :goto_1
    array-length p4, p2

    if-ge p3, p4, :cond_4

    aget-object p4, p2, p3

    invoke-virtual {p1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    return-object p0

    :cond_3
    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_4
    const/4 p0, 0x0

    return-object p0

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "nodeNames == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "formatName == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public declared-synchronized abort()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Ljavax/imageio/ImageReader;->abortFlag:Z
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
    iget-boolean v0, p0, Ljavax/imageio/ImageReader;->abortFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addIIOReadProgressListener(Ljavax/imageio/event/IIOReadProgressListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljavax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    invoke-static {v0, p1}, Ljavax/imageio/ImageReader;->addToList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ljavax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    return-void
.end method

.method public addIIOReadUpdateListener(Ljavax/imageio/event/IIOReadUpdateListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljavax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    invoke-static {v0, p1}, Ljavax/imageio/ImageReader;->addToList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ljavax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    return-void
.end method

.method public addIIOReadWarningListener(Ljavax/imageio/event/IIOReadWarningListener;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ljavax/imageio/ImageReader;->warningListeners:Ljava/util/List;

    invoke-static {v0, p1}, Ljavax/imageio/ImageReader;->addToList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ljavax/imageio/ImageReader;->warningListeners:Ljava/util/List;

    iget-object p1, p0, Ljavax/imageio/ImageReader;->warningLocales:Ljava/util/List;

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->getLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {p1, v0}, Ljavax/imageio/ImageReader;->addToList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ljavax/imageio/ImageReader;->warningLocales:Ljava/util/List;

    return-void
.end method

.method public canReadRaster()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public declared-synchronized clearAbortRequest()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Ljavax/imageio/ImageReader;->abortFlag:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getAspectRatio(I)F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->getWidth(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->getHeight(I)I

    move-result p0

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public getAvailableLocales()[Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/ImageReader;->availableLocales:[Ljava/util/Locale;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, [Ljava/util/Locale;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/util/Locale;

    return-object p0
.end method

.method public getDefaultReadParam()Ljavax/imageio/ImageReadParam;
    .locals 0

    new-instance p0, Ljavax/imageio/ImageReadParam;

    invoke-direct {p0}, Ljavax/imageio/ImageReadParam;-><init>()V

    return-object p0
.end method

.method public getFormatName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Ljavax/imageio/ImageReader;->originatingProvider:Ljavax/imageio/spi/ImageReaderSpi;

    invoke-virtual {p0}, Ljavax/imageio/spi/ImageReaderWriterSpi;->getFormatNames()[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    aget-object p0, p0, v0

    return-object p0
.end method

.method public abstract getHeight(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getImageMetadata(I)Ljavax/imageio/metadata/IIOMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getImageMetadata(ILjava/lang/String;Ljava/util/Set;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljavax/imageio/metadata/IIOMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p2, p3, v0, p1}, Ljavax/imageio/ImageReader;->a(Ljava/lang/String;Ljava/util/Set;ZI)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p0

    return-object p0
.end method

.method public abstract getImageTypes(I)Ljava/util/Iterator;
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
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getInput()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/ImageReader;->input:Ljava/lang/Object;

    return-object p0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/ImageReader;->locale:Ljava/util/Locale;

    return-object p0
.end method

.method public getMinIndex()I
    .locals 0

    iget p0, p0, Ljavax/imageio/ImageReader;->minIndex:I

    return p0
.end method

.method public abstract getNumImages(Z)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
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

.method public getOriginatingProvider()Ljavax/imageio/spi/ImageReaderSpi;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/ImageReader;->originatingProvider:Ljavax/imageio/spi/ImageReaderSpi;

    return-object p0
.end method

.method public getRawImageType(I)Ljavax/imageio/ImageTypeSpecifier;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->getImageTypes(I)Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/imageio/ImageTypeSpecifier;

    return-object p0
.end method

.method public abstract getStreamMetadata()Ljavax/imageio/metadata/IIOMetadata;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getStreamMetadata(Ljava/lang/String;Ljava/util/Set;)Ljavax/imageio/metadata/IIOMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljavax/imageio/metadata/IIOMetadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0, v1}, Ljavax/imageio/ImageReader;->a(Ljava/lang/String;Ljava/util/Set;ZI)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p0

    return-object p0
.end method

.method public getThumbnailHeight(II)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/ImageReader;->readThumbnail(II)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p0

    return p0
.end method

.method public getThumbnailWidth(II)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/ImageReader;->readThumbnail(II)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p0

    return p0
.end method

.method public getTileGridXOffset(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getTileGridYOffset(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getTileHeight(I)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->getHeight(I)I

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

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->getWidth(I)I

    move-result p0

    return p0
.end method

.method public abstract getWidth(I)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public hasThumbnails(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->getNumThumbnails(I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isIgnoringMetadata()Z
    .locals 0

    iget-boolean p0, p0, Ljavax/imageio/ImageReader;->ignoreMetadata:Z

    return p0
.end method

.method public isImageTiled(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isRandomAccessEasy(I)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public isSeekForwardOnly()Z
    .locals 0

    iget-boolean p0, p0, Ljavax/imageio/ImageReader;->seekForwardOnly:Z

    return p0
.end method

.method public processImageComplete()V
    .locals 3

    iget-object v0, p0, Ljavax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ljavax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/event/IIOReadProgressListener;

    invoke-interface {v2, p0}, Ljavax/imageio/event/IIOReadProgressListener;->imageComplete(Ljavax/imageio/ImageReader;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processImageProgress(F)V
    .locals 3

    iget-object v0, p0, Ljavax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ljavax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/event/IIOReadProgressListener;

    invoke-interface {v2, p0, p1}, Ljavax/imageio/event/IIOReadProgressListener;->imageProgress(Ljavax/imageio/ImageReader;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processImageStarted(I)V
    .locals 3

    iget-object v0, p0, Ljavax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ljavax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/event/IIOReadProgressListener;

    invoke-interface {v2, p0, p1}, Ljavax/imageio/event/IIOReadProgressListener;->imageStarted(Ljavax/imageio/ImageReader;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processImageUpdate(Ljava/awt/image/BufferedImage;IIIIII[I)V
    .locals 13

    move-object v10, p0

    iget-object v0, v10, Ljavax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    const/4 v0, 0x0

    move v12, v0

    :goto_0
    if-ge v12, v11, :cond_1

    iget-object v0, v10, Ljavax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/imageio/event/IIOReadUpdateListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Ljavax/imageio/event/IIOReadUpdateListener;->imageUpdate(Ljavax/imageio/ImageReader;Ljava/awt/image/BufferedImage;IIIIII[I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processPassComplete(Ljava/awt/image/BufferedImage;)V
    .locals 3

    iget-object v0, p0, Ljavax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ljavax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/event/IIOReadUpdateListener;

    invoke-interface {v2, p0, p1}, Ljavax/imageio/event/IIOReadUpdateListener;->passComplete(Ljavax/imageio/ImageReader;Ljava/awt/image/BufferedImage;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processPassStarted(Ljava/awt/image/BufferedImage;IIIIIII[I)V
    .locals 14

    move-object v11, p0

    iget-object v0, v11, Ljavax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    const/4 v0, 0x0

    move v13, v0

    :goto_0
    if-ge v13, v12, :cond_1

    iget-object v0, v11, Ljavax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/imageio/event/IIOReadUpdateListener;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v0 .. v10}, Ljavax/imageio/event/IIOReadUpdateListener;->passStarted(Ljavax/imageio/ImageReader;Ljava/awt/image/BufferedImage;IIIIIII[I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processReadAborted()V
    .locals 3

    iget-object v0, p0, Ljavax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ljavax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/event/IIOReadProgressListener;

    invoke-interface {v2, p0}, Ljavax/imageio/event/IIOReadProgressListener;->readAborted(Ljavax/imageio/ImageReader;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processSequenceComplete()V
    .locals 3

    iget-object v0, p0, Ljavax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ljavax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/event/IIOReadProgressListener;

    invoke-interface {v2, p0}, Ljavax/imageio/event/IIOReadProgressListener;->sequenceComplete(Ljavax/imageio/ImageReader;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processSequenceStarted(I)V
    .locals 3

    iget-object v0, p0, Ljavax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ljavax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/event/IIOReadProgressListener;

    invoke-interface {v2, p0, p1}, Ljavax/imageio/event/IIOReadProgressListener;->sequenceStarted(Ljavax/imageio/ImageReader;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processThumbnailComplete()V
    .locals 3

    iget-object v0, p0, Ljavax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ljavax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/event/IIOReadProgressListener;

    invoke-interface {v2, p0}, Ljavax/imageio/event/IIOReadProgressListener;->thumbnailComplete(Ljavax/imageio/ImageReader;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processThumbnailPassComplete(Ljava/awt/image/BufferedImage;)V
    .locals 3

    iget-object v0, p0, Ljavax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ljavax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/event/IIOReadUpdateListener;

    invoke-interface {v2, p0, p1}, Ljavax/imageio/event/IIOReadUpdateListener;->thumbnailPassComplete(Ljavax/imageio/ImageReader;Ljava/awt/image/BufferedImage;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processThumbnailPassStarted(Ljava/awt/image/BufferedImage;IIIIIII[I)V
    .locals 14

    move-object v11, p0

    iget-object v0, v11, Ljavax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    const/4 v0, 0x0

    move v13, v0

    :goto_0
    if-ge v13, v12, :cond_1

    iget-object v0, v11, Ljavax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/imageio/event/IIOReadUpdateListener;

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    invoke-interface/range {v0 .. v10}, Ljavax/imageio/event/IIOReadUpdateListener;->thumbnailPassStarted(Ljavax/imageio/ImageReader;Ljava/awt/image/BufferedImage;IIIIIII[I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processThumbnailProgress(F)V
    .locals 3

    iget-object v0, p0, Ljavax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ljavax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/event/IIOReadProgressListener;

    invoke-interface {v2, p0, p1}, Ljavax/imageio/event/IIOReadProgressListener;->thumbnailProgress(Ljavax/imageio/ImageReader;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processThumbnailStarted(II)V
    .locals 3

    iget-object v0, p0, Ljavax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ljavax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/event/IIOReadProgressListener;

    invoke-interface {v2, p0, p1, p2}, Ljavax/imageio/event/IIOReadProgressListener;->thumbnailStarted(Ljavax/imageio/ImageReader;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processThumbnailUpdate(Ljava/awt/image/BufferedImage;IIIIII[I)V
    .locals 13

    move-object v10, p0

    iget-object v0, v10, Ljavax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v11

    const/4 v0, 0x0

    move v12, v0

    :goto_0
    if-ge v12, v11, :cond_1

    iget-object v0, v10, Ljavax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/imageio/event/IIOReadUpdateListener;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v0 .. v9}, Ljavax/imageio/event/IIOReadUpdateListener;->thumbnailUpdate(Ljavax/imageio/ImageReader;Ljava/awt/image/BufferedImage;IIIIII[I)V

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public processWarningOccurred(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Ljavax/imageio/ImageReader;->warningListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    iget-object v2, p0, Ljavax/imageio/ImageReader;->warningListeners:Ljava/util/List;

    .line 4
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/event/IIOReadWarningListener;

    .line 5
    invoke-interface {v2, p0, p1}, Ljavax/imageio/event/IIOReadWarningListener;->warningOccurred(Ljavax/imageio/ImageReader;Ljava/lang/String;)V

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

.method public processWarningOccurred(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 7
    iget-object v0, p0, Ljavax/imageio/ImageReader;->warningListeners:Ljava/util/List;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    if-eqz p2, :cond_3

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 9
    iget-object v2, p0, Ljavax/imageio/ImageReader;->warningListeners:Ljava/util/List;

    .line 10
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/imageio/event/IIOReadWarningListener;

    .line 11
    iget-object v3, p0, Ljavax/imageio/ImageReader;->warningLocales:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    if-nez v3, :cond_1

    .line 12
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    .line 13
    :cond_1
    new-instance v4, Ljavax/imageio/ImageReader$a;

    invoke-direct {v4, p0}, Ljavax/imageio/ImageReader$a;-><init>(Ljavax/imageio/ImageReader;)V

    .line 14
    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ClassLoader;

    .line 15
    :try_start_0
    invoke-static {p1, v3, v4}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    move-result-object v3
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_2

    .line 16
    :try_start_1
    invoke-virtual {v3, p2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    invoke-interface {v2, p0, v3}, Ljavax/imageio/event/IIOReadWarningListener;->warningOccurred(Ljavax/imageio/ImageReader;Ljava/lang/String;)V

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

.method public read(I)Ljava/awt/image/BufferedImage;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Ljavax/imageio/ImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public abstract read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public readAll(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "+",
            "Ljavax/imageio/ImageReadParam;",
            ">;)",
            "Ljava/util/Iterator<",
            "Ljavax/imageio/IIOImage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->getMinIndex()I

    move-result v1

    .line 11
    invoke-virtual {p0, v1}, Ljavax/imageio/ImageReader;->processSequenceStarted(I)V

    :goto_0
    const/4 v2, 0x0

    if-eqz p1, :cond_1

    .line 12
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 14
    instance-of v4, v3, Ljavax/imageio/ImageReadParam;

    if-eqz v4, :cond_0

    .line 15
    check-cast v3, Ljavax/imageio/ImageReadParam;

    goto :goto_1

    .line 16
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Non-ImageReadParam supplied as part of params!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    move-object v3, v2

    .line 17
    :goto_1
    :try_start_0
    invoke-virtual {p0, v1, v3}, Ljavax/imageio/ImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    invoke-virtual {p0, v1}, Ljavax/imageio/ImageReader;->getNumThumbnails(I)I

    move-result v4

    if-lez v4, :cond_2

    .line 19
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v5, 0x0

    :goto_2
    if-ge v5, v4, :cond_2

    .line 20
    invoke-virtual {p0, v1, v5}, Ljavax/imageio/ImageReader;->readThumbnail(II)Ljava/awt/image/BufferedImage;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 21
    :cond_2
    invoke-virtual {p0, v1}, Ljavax/imageio/ImageReader;->getImageMetadata(I)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object v4

    .line 22
    new-instance v5, Ljavax/imageio/IIOImage;

    invoke-direct {v5, v3, v2, v4}, Ljavax/imageio/IIOImage;-><init>(Ljava/awt/image/RenderedImage;Ljava/util/List;Ljavax/imageio/metadata/IIOMetadata;)V

    .line 23
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 24
    :catch_0
    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->processSequenceComplete()V

    .line 25
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public readAll(ILjavax/imageio/ImageReadParam;)Ljavax/imageio/IIOImage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->getMinIndex()I

    move-result v0

    if-lt p1, v0, :cond_2

    .line 2
    invoke-virtual {p0, p1, p2}, Ljavax/imageio/ImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-result-object p2

    .line 3
    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->getNumThumbnails(I)I

    move-result v0

    if-lez v0, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 5
    invoke-virtual {p0, p1, v2}, Ljavax/imageio/ImageReader;->readThumbnail(II)Ljava/awt/image/BufferedImage;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->getImageMetadata(I)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p0

    .line 7
    new-instance p1, Ljavax/imageio/IIOImage;

    invoke-direct {p1, p2, v1, p0}, Ljavax/imageio/IIOImage;-><init>(Ljava/awt/image/RenderedImage;Ljava/util/List;Ljavax/imageio/metadata/IIOMetadata;)V

    return-object p1

    .line 8
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "imageIndex < getMinIndex()!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readAsRenderedImage(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/RenderedImage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/ImageReader;->read(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method

.method public readRaster(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/Raster;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "readRaster not supported!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readThumbnail(II)Ljava/awt/image/BufferedImage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Thumbnails not supported!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readTile(III)Ljava/awt/image/BufferedImage;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    invoke-virtual {p0, p1}, Ljavax/imageio/ImageReader;->read(I)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid tile indices"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readTileRaster(III)Ljava/awt/image/Raster;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->canReadRaster()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/ImageReader;->readRaster(ILjavax/imageio/ImageReadParam;)Ljava/awt/image/Raster;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid tile indices"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "readTileRaster not supported!"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public readerSupportsThumbnails()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public removeAllIIOReadProgressListeners()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    return-void
.end method

.method public removeAllIIOReadUpdateListeners()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    return-void
.end method

.method public removeAllIIOReadWarningListeners()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/imageio/ImageReader;->warningListeners:Ljava/util/List;

    iput-object v0, p0, Ljavax/imageio/ImageReader;->warningLocales:Ljava/util/List;

    return-void
.end method

.method public removeIIOReadProgressListener(Ljavax/imageio/event/IIOReadProgressListener;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Ljavax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Ljavax/imageio/ImageReader;->removeFromList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ljavax/imageio/ImageReader;->progressListeners:Ljava/util/List;

    :cond_1
    :goto_0
    return-void
.end method

.method public removeIIOReadUpdateListener(Ljavax/imageio/event/IIOReadUpdateListener;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Ljavax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, p1}, Ljavax/imageio/ImageReader;->removeFromList(Ljava/util/List;Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Ljavax/imageio/ImageReader;->updateListeners:Ljava/util/List;

    :cond_1
    :goto_0
    return-void
.end method

.method public removeIIOReadWarningListener(Ljavax/imageio/event/IIOReadWarningListener;)V
    .locals 1

    if-eqz p1, :cond_1

    iget-object v0, p0, Ljavax/imageio/ImageReader;->warningListeners:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Ljavax/imageio/ImageReader;->warningListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v0, p0, Ljavax/imageio/ImageReader;->warningLocales:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object p1, p0, Ljavax/imageio/ImageReader;->warningListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Ljavax/imageio/ImageReader;->warningListeners:Ljava/util/List;

    iput-object p1, p0, Ljavax/imageio/ImageReader;->warningLocales:Ljava/util/List;

    :cond_1
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v0}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    invoke-virtual {p0, v1}, Ljavax/imageio/ImageReader;->setLocale(Ljava/util/Locale;)V

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->removeAllIIOReadUpdateListeners()V

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->removeAllIIOReadProgressListeners()V

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->removeAllIIOReadWarningListeners()V

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->clearAbortRequest()V

    return-void
.end method

.method public setInput(Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, p1, v0, v0}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public setInput(Ljava/lang/Object;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, p2, v0}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public setInput(Ljava/lang/Object;ZZ)V
    .locals 5

    if-eqz p1, :cond_4

    .line 1
    iget-object v0, p0, Ljavax/imageio/ImageReader;->originatingProvider:Ljavax/imageio/spi/ImageReaderSpi;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Ljavax/imageio/spi/ImageReaderSpi;->getInputTypes()[Ljava/lang/Class;

    move-result-object v0

    move v3, v2

    .line 3
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_2

    .line 4
    aget-object v4, v0, v3

    invoke-virtual {v4, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p1, Ljavax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    if-eqz v1, :cond_3

    .line 6
    iput-boolean p2, p0, Ljavax/imageio/ImageReader;->seekForwardOnly:Z

    .line 7
    iput-boolean p3, p0, Ljavax/imageio/ImageReader;->ignoreMetadata:Z

    .line 8
    iput v2, p0, Ljavax/imageio/ImageReader;->minIndex:I

    goto :goto_2

    .line 9
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Incorrect input type!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10
    :cond_4
    :goto_2
    iput-object p1, p0, Ljavax/imageio/ImageReader;->input:Ljava/lang/Object;

    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 4

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljavax/imageio/ImageReader;->getAvailableLocales()[Ljava/util/Locale;

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
    iput-object p1, p0, Ljavax/imageio/ImageReader;->locale:Ljava/util/Locale;

    return-void
.end method
