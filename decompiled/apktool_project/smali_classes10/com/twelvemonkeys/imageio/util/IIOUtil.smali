.class public final Lcom/twelvemonkeys/imageio/util/IIOUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p0, v2

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result p0

    new-array p0, p0, [Ljava/lang/String;

    invoke-interface {v0, p0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public static createStreamAdapter(Ljavax/imageio/stream/ImageInputStream;)Ljava/io/InputStream;
    .locals 2

    .line 1
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Lcom/sunia/HTREnginev2/dci;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/dci;-><init>(Ljavax/imageio/stream/ImageInputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static createStreamAdapter(Ljavax/imageio/stream/ImageInputStream;J)Ljava/io/InputStream;
    .locals 2

    .line 2
    new-instance v0, Ljava/io/BufferedInputStream;

    new-instance v1, Lcom/sunia/HTREnginev2/dci;

    invoke-direct {v1, p0, p1, p2}, Lcom/sunia/HTREnginev2/dci;-><init>(Ljavax/imageio/stream/ImageInputStream;J)V

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static createStreamAdapter(Ljavax/imageio/stream/ImageOutputStream;)Ljava/io/OutputStream;
    .locals 2

    .line 3
    new-instance v0, Ljava/io/BufferedOutputStream;

    new-instance v1, Lcom/sunia/HTREnginev2/gci;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/gci;-><init>(Ljavax/imageio/stream/ImageOutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static deregisterProvider(Ljavax/imageio/spi/ServiceRegistry;Ljavax/imageio/spi/IIOServiceProvider;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljavax/imageio/spi/ServiceRegistry;",
            "Ljavax/imageio/spi/IIOServiceProvider;",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    invoke-virtual {p2, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Ljavax/imageio/spi/ServiceRegistry;->deregisterServiceProvider(Ljava/lang/Object;Ljava/lang/Class;)Z

    return-void
.end method

.method public static fakeAOI(Ljava/awt/image/BufferedImage;Ljava/awt/Rectangle;)Ljava/awt/image/BufferedImage;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    iget v0, p1, Ljava/awt/Rectangle;->x:I

    if-nez v0, :cond_1

    iget v0, p1, Ljava/awt/Rectangle;->y:I

    if-nez v0, :cond_1

    iget v0, p1, Ljava/awt/Rectangle;->width:I

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_1

    iget v0, p1, Ljava/awt/Rectangle;->height:I

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result v1

    if-eq v0, v1, :cond_2

    :cond_1
    iget v0, p1, Ljava/awt/Rectangle;->x:I

    iget v1, p1, Ljava/awt/Rectangle;->y:I

    iget v2, p1, Ljava/awt/Rectangle;->width:I

    iget p1, p1, Ljava/awt/Rectangle;->height:I

    invoke-virtual {p0, v0, v1, v2, p1}, Ljava/awt/image/BufferedImage;->getSubimage(IIII)Ljava/awt/image/BufferedImage;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static fakeSubsampling(Ljava/awt/Image;Ljavax/imageio/IIOParam;)Ljava/awt/Image;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljavax/imageio/IIOParam;->getSourceXSubsampling()I

    move-result v0

    invoke-virtual {p1}, Ljavax/imageio/IIOParam;->getSourceYSubsampling()I

    move-result p1

    const/4 v1, 0x1

    if-gt v0, v1, :cond_1

    if-le p1, v1, :cond_2

    :cond_1
    invoke-static {p0}, Lcom/twelvemonkeys/image/ImageUtil;->getWidth(Ljava/awt/Image;)I

    move-result v2

    add-int/2addr v2, v0

    sub-int/2addr v2, v1

    div-int/2addr v2, v0

    invoke-static {p0}, Lcom/twelvemonkeys/image/ImageUtil;->getHeight(Ljava/awt/Image;)I

    move-result v0

    add-int/2addr v0, p1

    sub-int/2addr v0, v1

    div-int/2addr v0, p1

    const/4 p1, 0x2

    invoke-virtual {p0, v2, v0, p1}, Ljava/awt/Image;->getScaledInstance(III)Ljava/awt/Image;

    move-result-object p0

    :cond_2
    return-object p0
.end method

.method public static getNormalizedReaderFormatNames()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljavax/imageio/ImageIO;->getReaderFormatNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twelvemonkeys/imageio/util/IIOUtil;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getNormalizedWriterFormatNames()[Ljava/lang/String;
    .locals 1

    invoke-static {}, Ljavax/imageio/ImageIO;->getWriterFormatNames()[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twelvemonkeys/imageio/util/IIOUtil;->a([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getProviderInfo(Ljava/lang/Class;)Lcom/twelvemonkeys/imageio/spi/ProviderInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljavax/imageio/spi/IIOServiceProvider;",
            ">;)",
            "Lcom/twelvemonkeys/imageio/spi/ProviderInfo;"
        }
    .end annotation

    new-instance v0, Lcom/twelvemonkeys/imageio/spi/ProviderInfo;

    invoke-virtual {p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/twelvemonkeys/imageio/spi/ProviderInfo;-><init>(Ljava/lang/Package;)V

    return-object v0
.end method

.method public static getSourceRegion(Ljavax/imageio/IIOParam;II)Ljava/awt/Rectangle;
    .locals 1

    new-instance v0, Ljava/awt/Rectangle;

    invoke-direct {v0, p1, p2}, Ljava/awt/Rectangle;-><init>(II)V

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
