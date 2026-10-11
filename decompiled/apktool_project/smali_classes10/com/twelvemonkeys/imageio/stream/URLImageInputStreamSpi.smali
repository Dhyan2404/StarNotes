.class public Lcom/twelvemonkeys/imageio/stream/URLImageInputStreamSpi;
.super Ljavax/imageio/spi/ImageInputStreamSpi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "1.0 BETA"

    const-class v1, Ljava/net/URL;

    const-string v2, "TwelveMonkeys"

    invoke-direct {p0, v2, v0, v1}, Ljavax/imageio/spi/ImageInputStreamSpi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public createInputStreamInstance(Ljava/lang/Object;ZLjava/io/File;)Ljavax/imageio/stream/ImageInputStream;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Ljava/net/URL;

    if-eqz v0, :cond_2

    check-cast p1, Ljava/net/URL;

    invoke-virtual {p1}, Ljava/net/URL;->getProtocol()Ljava/lang/String;

    move-result-object v0

    const-string v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;

    new-instance v1, Ljavax/imageio/stream/FileImageInputStream;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-direct {v1, v2}, Ljavax/imageio/stream/FileImageInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;-><init>(Ljavax/imageio/stream/ImageInputStream;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p2, :cond_1

    new-instance p2, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;

    new-instance v0, Lcom/twelvemonkeys/imageio/stream/URLImageInputStreamSpi$a;

    invoke-direct {v0, p0, p1, p3, p1}, Lcom/twelvemonkeys/imageio/stream/URLImageInputStreamSpi$a;-><init>(Lcom/twelvemonkeys/imageio/stream/URLImageInputStreamSpi;Ljava/io/InputStream;Ljava/io/File;Ljava/io/InputStream;)V

    invoke-direct {p2, v0}, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;-><init>(Ljavax/imageio/stream/ImageInputStream;)V

    return-object p2

    :cond_1
    new-instance p2, Lcom/twelvemonkeys/imageio/stream/URLImageInputStreamSpi$b;

    invoke-direct {p2, p0, p1, p1}, Lcom/twelvemonkeys/imageio/stream/URLImageInputStreamSpi$b;-><init>(Lcom/twelvemonkeys/imageio/stream/URLImageInputStreamSpi;Ljava/io/InputStream;Ljava/io/InputStream;)V

    return-object p2

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Expected input of type URL: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p0, "Service provider that instantiates an ImageInputStream from a URL"

    return-object p0
.end method
