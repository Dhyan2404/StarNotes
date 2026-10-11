.class public final Lcom/sunia/HTREnginev2/wqi;
.super Lcom/sunia/HTREnginev2/phn;
.source "SourceFile"


# instance fields
.field public final d:Ljavax/imageio/ImageReader;

.field public final e:Lcom/sunia/HTREnginev2/vqi;

.field public transient f:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/awt/image/BufferedImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/ohn;Ljavax/imageio/ImageReader;IILcom/sunia/HTREnginev2/vqi;)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lcom/sunia/HTREnginev2/phn;-><init>(Lcom/sunia/HTREnginev2/ohn;II)V

    invoke-static {p2}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/imageio/ImageReader;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/wqi;->d:Ljavax/imageio/ImageReader;

    iput-object p5, p0, Lcom/sunia/HTREnginev2/wqi;->e:Lcom/sunia/HTREnginev2/vqi;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/wqi;->e:Lcom/sunia/HTREnginev2/vqi;

    iget v1, v0, Lcom/sunia/HTREnginev2/vqi;->d:I

    const/16 v2, 0x10

    if-eq v1, v2, :cond_2

    const/16 v2, 0x11

    if-eq v1, v2, :cond_1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljavax/imageio/IIOException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wqi;->e:Lcom/sunia/HTREnginev2/vqi;

    iget p0, p0, Lcom/sunia/HTREnginev2/vqi;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Unsupported JFXX extension code: %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object p0, v0, Lcom/sunia/HTREnginev2/vqi;->e:[B

    const/4 v0, 0x1

    aget-byte p0, p0, v0

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/wqi;->j(Z)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p0

    return p0
.end method

.method public b()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/wqi;->e:Lcom/sunia/HTREnginev2/vqi;

    iget v1, v0, Lcom/sunia/HTREnginev2/vqi;->d:I

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-eq v1, v2, :cond_2

    const/16 v2, 0x11

    if-eq v1, v2, :cond_1

    const/16 v2, 0x13

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljavax/imageio/IIOException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wqi;->e:Lcom/sunia/HTREnginev2/vqi;

    iget p0, p0, Lcom/sunia/HTREnginev2/vqi;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Unsupported JFXX extension code: %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget-object p0, v0, Lcom/sunia/HTREnginev2/vqi;->e:[B

    aget-byte p0, p0, v3

    and-int/lit16 p0, p0, 0xff

    return p0

    :cond_2
    invoke-virtual {p0, v3}, Lcom/sunia/HTREnginev2/wqi;->j(Z)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p0

    return p0
.end method

.method public f()Ljava/awt/image/BufferedImage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/phn;->e()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/wqi;->e:Lcom/sunia/HTREnginev2/vqi;

    iget v0, v0, Lcom/sunia/HTREnginev2/vqi;->d:I

    const/16 v1, 0x10

    if-eq v0, v1, :cond_2

    const/16 v1, 0x11

    if-eq v0, v1, :cond_1

    const/16 v1, 0x13

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/wqi;->l()Ljava/awt/image/BufferedImage;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljavax/imageio/IIOException;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wqi;->e:Lcom/sunia/HTREnginev2/vqi;

    iget p0, p0, Lcom/sunia/HTREnginev2/vqi;->d:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Unsupported JFXX extension code: %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/wqi;->i()Ljava/awt/image/BufferedImage;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/wqi;->j(Z)Ljava/awt/image/BufferedImage;

    move-result-object v0

    :goto_0
    const/high16 v1, 0x42c80000    # 100.0f

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/phn;->d(F)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/phn;->c()V

    return-object v0
.end method

.method public final i()Ljava/awt/image/BufferedImage;
    .locals 13

    iget-object v0, p0, Lcom/sunia/HTREnginev2/wqi;->e:Lcom/sunia/HTREnginev2/vqi;

    iget-object v0, v0, Lcom/sunia/HTREnginev2/vqi;->e:[B

    const/4 v1, 0x0

    aget-byte v2, v0, v1

    and-int/lit16 v2, v2, 0xff

    const/4 v3, 0x1

    aget-byte v0, v0, v3

    and-int/lit16 v0, v0, 0xff

    const/16 v3, 0x100

    new-array v7, v3, [I

    :goto_0
    const/16 v12, 0x8

    if-ge v1, v3, :cond_0

    iget-object v4, p0, Lcom/sunia/HTREnginev2/wqi;->e:Lcom/sunia/HTREnginev2/vqi;

    iget-object v4, v4, Lcom/sunia/HTREnginev2/vqi;->e:[B

    mul-int/lit8 v5, v1, 0x3

    add-int/lit8 v6, v5, 0x2

    aget-byte v6, v4, v6

    and-int/lit16 v6, v6, 0xff

    shl-int/lit8 v6, v6, 0x10

    add-int/lit8 v8, v5, 0x3

    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    shl-int/2addr v8, v12

    or-int/2addr v6, v8

    add-int/lit8 v5, v5, 0x4

    aget-byte v4, v4, v5

    and-int/lit16 v4, v4, 0xff

    or-int/2addr v4, v6

    aput v4, v7, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;

    const/16 v5, 0x8

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, -0x1

    const/4 v11, 0x0

    const/16 v6, 0x100

    move-object v4, v1

    invoke-direct/range {v4 .. v11}, Lcom/twelvemonkeys/image/InverseColorMapIndexColorModel;-><init>(II[IIZII)V

    new-instance v3, Ljava/awt/image/DataBufferByte;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wqi;->e:Lcom/sunia/HTREnginev2/vqi;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vqi;->e:[B

    array-length v4, p0

    const/16 v5, 0x302

    sub-int/2addr v4, v5

    invoke-direct {v3, p0, v4, v5}, Ljava/awt/image/DataBufferByte;-><init>([BII)V

    const/4 p0, 0x0

    invoke-static {v3, v2, v0, v12, p0}, Ljava/awt/image/Raster;->createPackedRaster(Ljava/awt/image/DataBuffer;IIILjava/awt/Point;)Ljava/awt/image/WritableRaster;

    move-result-object v0

    new-instance v2, Ljava/awt/image/BufferedImage;

    invoke-virtual {v1}, Ljava/awt/image/ColorModel;->isAlphaPremultiplied()Z

    move-result v3

    invoke-direct {v2, v1, v0, v3, p0}, Ljava/awt/image/BufferedImage;-><init>(Ljava/awt/image/ColorModel;Ljava/awt/image/WritableRaster;ZLjava/util/Hashtable;)V

    return-object v2
.end method

.method public final j(Z)Ljava/awt/image/BufferedImage;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/wqi;->f:Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/awt/image/BufferedImage;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/wqi;->e:Lcom/sunia/HTREnginev2/vqi;

    iget-object v2, v2, Lcom/sunia/HTREnginev2/vqi;->e:[B

    invoke-direct {v0, v2}, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;-><init>([B)V

    :try_start_0
    iget-object v2, p0, Lcom/sunia/HTREnginev2/wqi;->d:Ljavax/imageio/ImageReader;

    invoke-static {v2, v0}, Lcom/sunia/HTREnginev2/phn;->g(Ljavax/imageio/ImageReader;Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/BufferedImage;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->close()V

    move-object v0, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->close()V

    throw p0

    :cond_1
    :goto_1
    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    :goto_2
    iput-object v1, p0, Lcom/sunia/HTREnginev2/wqi;->f:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method public k()Ljavax/imageio/metadata/IIOMetadata;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/wqi;->e:Lcom/sunia/HTREnginev2/vqi;

    iget-object v1, v1, Lcom/sunia/HTREnginev2/vqi;->e:[B

    invoke-direct {v0, v1}, Lcom/twelvemonkeys/imageio/stream/ByteArrayImageInputStream;-><init>([B)V

    :try_start_0
    iget-object v1, p0, Lcom/sunia/HTREnginev2/wqi;->d:Ljavax/imageio/ImageReader;

    invoke-virtual {v1, v0}, Ljavax/imageio/ImageReader;->setInput(Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wqi;->d:Ljavax/imageio/ImageReader;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljavax/imageio/ImageReader;->getImageMetadata(I)Ljavax/imageio/metadata/IIOMetadata;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->close()V

    throw p0
.end method

.method public final l()Ljava/awt/image/BufferedImage;
    .locals 4

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wqi;->e:Lcom/sunia/HTREnginev2/vqi;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vqi;->e:[B

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    array-length v2, p0

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    invoke-static {p0, v2, v3, v0, v1}, Lcom/sunia/HTREnginev2/phn;->h([BIIII)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0
.end method
