.class public final Lcom/sunia/HTREnginev2/gkf;
.super Lcom/sunia/HTREnginev2/phn;
.source "SourceFile"


# instance fields
.field public final d:Ljavax/imageio/ImageReader;

.field public final e:Lcom/twelvemonkeys/imageio/metadata/Directory;

.field public final f:Ljavax/imageio/stream/ImageInputStream;

.field public final g:I

.field public transient h:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Ljava/awt/image/BufferedImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/ohn;Ljavax/imageio/ImageReader;IILcom/twelvemonkeys/imageio/metadata/Directory;Ljavax/imageio/stream/ImageInputStream;)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lcom/sunia/HTREnginev2/phn;-><init>(Lcom/sunia/HTREnginev2/ohn;II)V

    invoke-static {p2}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/imageio/ImageReader;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/gkf;->d:Ljavax/imageio/ImageReader;

    iput-object p5, p0, Lcom/sunia/HTREnginev2/gkf;->e:Lcom/twelvemonkeys/imageio/metadata/Directory;

    iput-object p6, p0, Lcom/sunia/HTREnginev2/gkf;->f:Ljavax/imageio/stream/ImageInputStream;

    const/16 p1, 0x103

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p5, p1}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x6

    :goto_0
    iput p1, p0, Lcom/sunia/HTREnginev2/gkf;->g:I

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

    iget v0, p0, Lcom/sunia/HTREnginev2/gkf;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gkf;->e:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v0, 0x101

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "Missing dimensions for uncompressed EXIF thumbnail"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/gkf;->j(Z)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getHeight()I

    move-result p0

    return p0

    :cond_2
    new-instance v0, Ljavax/imageio/IIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported EXIF thumbnail compression  (expected 1 or 6): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sunia/HTREnginev2/gkf;->g:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public b()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sunia/HTREnginev2/gkf;->g:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gkf;->e:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "Missing dimensions for uncompressed EXIF thumbnail"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sunia/HTREnginev2/gkf;->j(Z)Ljava/awt/image/BufferedImage;

    move-result-object p0

    invoke-virtual {p0}, Ljava/awt/image/BufferedImage;->getWidth()I

    move-result p0

    return p0

    :cond_2
    new-instance v0, Ljavax/imageio/IIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported EXIF thumbnail compression (expected 1 or 6): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sunia/HTREnginev2/gkf;->g:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public f()Ljava/awt/image/BufferedImage;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sunia/HTREnginev2/gkf;->g:I

    const/high16 v1, 0x42c80000    # 100.0f

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/phn;->e()V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/gkf;->k()Ljava/awt/image/BufferedImage;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/phn;->d(F)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/phn;->c()V

    return-object v0

    :cond_0
    const/4 v3, 0x6

    if-ne v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/phn;->e()V

    invoke-virtual {p0, v2}, Lcom/sunia/HTREnginev2/gkf;->j(Z)Ljava/awt/image/BufferedImage;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/sunia/HTREnginev2/phn;->d(F)V

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/phn;->c()V

    return-object v0

    :cond_1
    new-instance v0, Ljavax/imageio/IIOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported EXIF thumbnail compression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/sunia/HTREnginev2/gkf;->g:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final i()Ljava/awt/image/BufferedImage;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gkf;->e:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v1, 0x201

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gkf;->f:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v2

    invoke-interface {v1, v2, v3}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gkf;->f:Ljavax/imageio/stream/ImageInputStream;

    invoke-static {v0}, Lcom/twelvemonkeys/imageio/util/IIOUtil;->createStreamAdapter(Ljavax/imageio/stream/ImageInputStream;)Ljava/io/InputStream;

    move-result-object v0

    const/16 v1, 0x14

    new-array v1, v1, [B

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v2

    int-to-byte v2, v2

    const/4 v4, 0x1

    aput-byte v2, v1, v4

    const/4 v2, 0x2

    const/4 v4, -0x1

    aput-byte v4, v1, v2

    const/4 v2, 0x3

    const/16 v4, -0x1f

    aput-byte v4, v1, v2

    const/4 v2, 0x4

    aput-byte v3, v1, v2

    const/4 v2, 0x5

    const/16 v4, 0x10

    aput-byte v4, v1, v2

    const/4 v2, 0x6

    const/16 v5, 0x45

    aput-byte v5, v1, v2

    const/4 v2, 0x7

    const/16 v5, 0x78

    aput-byte v5, v1, v2

    const/16 v2, 0x8

    const/16 v5, 0x69

    aput-byte v5, v1, v2

    const/16 v2, 0x9

    const/16 v5, 0x66

    aput-byte v5, v1, v2

    const/16 v2, 0xa

    aput-byte v3, v1, v2

    const/16 v2, 0xb

    aput-byte v3, v1, v2

    const/16 v2, 0xc

    const/16 v5, 0x4d

    aput-byte v5, v1, v2

    const/16 v2, 0xd

    aput-byte v5, v1, v2

    const/16 v2, 0xe

    aput-byte v3, v1, v2

    const/16 v2, 0xf

    const/16 v5, 0x2a

    aput-byte v5, v1, v2

    aput-byte v3, v1, v4

    const/16 v2, 0x11

    aput-byte v3, v1, v2

    const/16 v2, 0x12

    aput-byte v3, v1, v2

    const/16 v2, 0x13

    aput-byte v3, v1, v2

    new-instance v2, Ljava/io/SequenceInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3, v0}, Ljava/io/SequenceInputStream;-><init>(Ljava/io/InputStream;Ljava/io/InputStream;)V

    :try_start_0
    new-instance v0, Ljavax/imageio/stream/MemoryCacheImageInputStream;

    invoke-direct {v0, v2}, Ljavax/imageio/stream/MemoryCacheImageInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object p0, p0, Lcom/sunia/HTREnginev2/gkf;->d:Ljavax/imageio/ImageReader;

    invoke-static {p0, v0}, Lcom/sunia/HTREnginev2/phn;->g(Ljavax/imageio/ImageReader;Ljavax/imageio/stream/ImageInputStream;)Ljava/awt/image/BufferedImage;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0}, Ljavax/imageio/stream/MemoryCacheImageInputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v1

    :try_start_4
    invoke-virtual {v0}, Ljavax/imageio/stream/MemoryCacheImageInputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v0

    :try_start_5
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p0

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    throw p0

    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "Missing JPEGInterchangeFormat tag for JPEG compressed EXIF thumbnail"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final j(Z)Ljava/awt/image/BufferedImage;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gkf;->h:Ljava/lang/ref/SoftReference;

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

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/gkf;->i()Ljava/awt/image/BufferedImage;

    move-result-object v0

    :cond_1
    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    :goto_1
    iput-object v1, p0, Lcom/sunia/HTREnginev2/gkf;->h:Ljava/lang/ref/SoftReference;

    return-object v0
.end method

.method public final k()Ljava/awt/image/BufferedImage;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/gkf;->e:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/gkf;->e:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v2, 0x101

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v1

    if-eqz v0, :cond_8

    if-eqz v1, :cond_8

    iget-object v2, p0, Lcom/sunia/HTREnginev2/gkf;->e:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v3, 0x102

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v2

    iget-object v3, p0, Lcom/sunia/HTREnginev2/gkf;->e:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v4, 0x115

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v3

    iget-object v4, p0, Lcom/sunia/HTREnginev2/gkf;->e:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v5, 0x106

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v4

    invoke-interface {v0}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-interface {v1}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    const/16 v6, 0x8

    filled-new-array {v6, v6, v6}, [I

    move-result-object v6

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown BitsPerSample value for uncompressed EXIF thumbnail (expected [8, 8, 8]): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const/4 v2, 0x3

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown SamplesPerPixel value for uncompressed EXIF thumbnail (expected 3): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValueAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    const/4 v3, 0x2

    if-eqz v4, :cond_4

    invoke-interface {v4}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Number;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    goto :goto_2

    :cond_4
    move v4, v3

    :goto_2
    iget-object v5, p0, Lcom/sunia/HTREnginev2/gkf;->e:Lcom/twelvemonkeys/imageio/metadata/Directory;

    const/16 v6, 0x111

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/twelvemonkeys/imageio/metadata/Directory;->getEntryById(Ljava/lang/Object;)Lcom/twelvemonkeys/imageio/metadata/Entry;

    move-result-object v5

    if-eqz v5, :cond_7

    iget-object v6, p0, Lcom/sunia/HTREnginev2/gkf;->f:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v5}, Lcom/twelvemonkeys/imageio/metadata/Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-interface {v6, v7, v8}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    mul-int v5, v0, v1

    mul-int/2addr v5, v2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/gkf;->f:Ljavax/imageio/stream/ImageInputStream;

    invoke-static {p0, v5}, Lcom/twelvemonkeys/imageio/plugins/jpeg/JPEGImageReader;->I(Ljava/io/DataInput;I)[B

    move-result-object p0

    const/4 v2, 0x0

    if-eq v4, v3, :cond_6

    const/4 v3, 0x6

    if-ne v4, v3, :cond_5

    move v3, v2

    :goto_3
    if-ge v3, v5, :cond_6

    invoke-static {p0, p0, v3}, Lcom/twelvemonkeys/imageio/color/YCbCrConverter;->convertYCbCr2RGB([B[BI)V

    add-int/lit8 v3, v3, 0x3

    goto :goto_3

    :cond_5
    new-instance p0, Ljavax/imageio/IIOException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown PhotometricInterpretation value for uncompressed EXIF thumbnail (expected 2 or 6): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    invoke-static {p0, v5, v2, v0, v1}, Lcom/sunia/HTREnginev2/phn;->h([BIIII)Ljava/awt/image/BufferedImage;

    move-result-object p0

    return-object p0

    :cond_7
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "Missing StripOffsets tag for uncompressed EXIF thumbnail"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_8
    new-instance p0, Ljavax/imageio/IIOException;

    const-string v0, "Missing dimensions for uncompressed EXIF thumbnail"

    invoke-direct {p0, v0}, Ljavax/imageio/IIOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
