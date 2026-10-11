.class public final Lcom/sunia/HTREnginev2/yqi;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/BufferedImage;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdm;",
            ">;",
            "Ljavax/imageio/stream/ImageInputStream;",
            ")",
            "Ljava/awt/image/BufferedImage;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;

    invoke-direct {v0, p1, p2}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;-><init>(Ljava/util/List;Ljavax/imageio/stream/ImageInputStream;)V

    invoke-virtual {v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->b()[[I

    move-result-object p1

    invoke-virtual {v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->g()I

    move-result p2

    invoke-virtual {v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->h()I

    move-result v1

    invoke-virtual {v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->j()I

    move-result v2

    const/4 v3, 0x1

    const/16 v4, 0x8

    const-string v5, "JPEG Lossless with "

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->k()I

    move-result v2

    if-eq v2, v4, :cond_1

    const/16 v3, 0x10

    if-ne v2, v3, :cond_0

    invoke-virtual {p0, p1, p2, v1}, Lcom/sunia/HTREnginev2/yqi;->c([[III)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->k()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bit precision and 1 component cannot be decoded"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    invoke-virtual {p0, p1, p2, v1}, Lcom/sunia/HTREnginev2/yqi;->e([[III)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->j()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    invoke-virtual {v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->k()I

    move-result v2

    if-ne v2, v4, :cond_3

    invoke-virtual {p0, p1, p2, v1}, Lcom/sunia/HTREnginev2/yqi;->d([[III)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->k()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bit precision and 3 components cannot be decoded"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->k()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " bit precision and "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/twelvemonkeys/imageio/plugins/jpeg/b;->j()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " component(s) cannot be decoded"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public b(Ljava/util/List;Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/Raster;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/sdm;",
            ">;",
            "Ljavax/imageio/stream/ImageInputStream;",
            ")",
            "Ljava/awt/image/Raster;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/yqi;->a(Ljava/util/List;Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p0

    return-object p0
.end method

.method public final c([[III)Ljava/awt/image/BufferedImage;
    .locals 2

    new-instance p0, Ljava/awt/image/BufferedImage;

    const/16 v0, 0xb

    invoke-direct {p0, p2, p3, v0}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p2

    invoke-virtual {p2}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object p2

    check-cast p2, Ljava/awt/image/DataBufferUShort;

    invoke-virtual {p2}, Ljava/awt/image/DataBufferUShort;->getData()[S

    move-result-object p2

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget-object v1, p1, p3

    aget v1, v1, v0

    int-to-short v1, v1

    aput-short v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final d([[III)Ljava/awt/image/BufferedImage;
    .locals 4

    new-instance p0, Ljava/awt/image/BufferedImage;

    const/4 v0, 0x5

    invoke-direct {p0, p2, p3, v0}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p2

    invoke-virtual {p2}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object p2

    check-cast p2, Ljava/awt/image/DataBufferByte;

    invoke-virtual {p2}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object p2

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    array-length v1, p2

    div-int/lit8 v1, v1, 0x3

    if-ge v0, v1, :cond_0

    mul-int/lit8 v1, v0, 0x3

    add-int/lit8 v2, v1, 0x2

    aget-object v3, p1, p3

    aget v3, v3, v0

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    add-int/lit8 v2, v1, 0x1

    const/4 v3, 0x1

    aget-object v3, p1, v3

    aget v3, v3, v0

    int-to-byte v3, v3

    aput-byte v3, p2, v2

    const/4 v2, 0x2

    aget-object v2, p1, v2

    aget v2, v2, v0

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final e([[III)Ljava/awt/image/BufferedImage;
    .locals 2

    new-instance p0, Ljava/awt/image/BufferedImage;

    const/16 v0, 0xa

    invoke-direct {p0, p2, p3, v0}, Ljava/awt/image/BufferedImage;-><init>(III)V

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getRaster()Ljava/awt/image/WritableRaster;

    move-result-object p2

    invoke-virtual {p2}, Ljava/awt/image/Raster;->getDataBuffer()Ljava/awt/image/DataBuffer;

    move-result-object p2

    check-cast p2, Ljava/awt/image/DataBufferByte;

    invoke-virtual {p2}, Ljava/awt/image/DataBufferByte;->getData()[B

    move-result-object p2

    const/4 p3, 0x0

    move v0, p3

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget-object v1, p1, p3

    aget v1, v1, v0

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method
