.class public Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStreamSpi;
.super Ljavax/imageio/spi/ImageInputStreamSpi;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    const-string v0, "1.0 BETA"

    const-class v1, [B

    const-string v2, "TwelveMonkeys"

    invoke-direct {p0, v2, v0, v1}, Ljavax/imageio/spi/ImageInputStreamSpi;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public createInputStreamInstance(Ljava/lang/Object;ZLjava/io/File;)Ljavax/imageio/stream/ImageInputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of p0, p1, [B

    if-eqz p0, :cond_0

    new-instance p0, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;

    check-cast p1, [B

    invoke-direct {p0, p1}, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;-><init>([B)V

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Expected input of type byte[]: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getDescription(Ljava/util/Locale;)Ljava/lang/String;
    .locals 0

    const-string p0, "Service provider that instantiates an ImageInputStream from a byte array"

    return-object p0
.end method
