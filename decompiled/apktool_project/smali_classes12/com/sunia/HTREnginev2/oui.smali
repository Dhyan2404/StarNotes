.class public Lcom/sunia/HTREnginev2/oui;
.super Lcom/sunia/HTREnginev2/swd;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Lorg/tukaani/xz/LZMA2Options;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Ljava/lang/Number;

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/swd;-><init>([Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;Ljava/io/InputStream;JLcom/sunia/HTREnginev2/rwd;[BI)Ljava/io/InputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p5}, Lcom/sunia/HTREnginev2/oui;->h(Lcom/sunia/HTREnginev2/rwd;)I

    move-result p0

    invoke-static {p0}, Lorg/tukaani/xz/LZMA2InputStream;->getMemoryUsage(I)I

    move-result p1

    if-gt p1, p7, :cond_0

    new-instance p1, Lorg/tukaani/xz/LZMA2InputStream;

    invoke-direct {p1, p2, p0}, Lorg/tukaani/xz/LZMA2InputStream;-><init>(Ljava/io/InputStream;I)V

    return-object p1

    :cond_0
    new-instance p0, Lorg/apache/commons/compress/MemoryLimitException;

    int-to-long p1, p1

    invoke-direct {p0, p1, p2, p7}, Lorg/apache/commons/compress/MemoryLimitException;-><init>(JI)V

    throw p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/io/OutputStream;Ljava/lang/Object;)Ljava/io/OutputStream;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/oui;->i(Ljava/lang/Object;)Lorg/tukaani/xz/LZMA2Options;

    move-result-object p0

    new-instance p2, Lorg/tukaani/xz/FinishableWrapperOutputStream;

    invoke-direct {p2, p1}, Lorg/tukaani/xz/FinishableWrapperOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p0, p2}, Lorg/tukaani/xz/LZMA2Options;->getOutputStream(Lorg/tukaani/xz/FinishableOutputStream;)Lorg/tukaani/xz/FinishableOutputStream;

    move-result-object p0

    return-object p0
.end method

.method public d(Ljava/lang/Object;)[B
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/oui;->g(Ljava/lang/Object;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p1

    rsub-int/lit8 v0, p1, 0x1e

    ushr-int/2addr p0, v0

    add-int/lit8 p0, p0, -0x2

    const/4 v0, 0x1

    new-array v0, v0, [B

    rsub-int/lit8 p1, p1, 0x13

    mul-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p0

    int-to-byte p0, p1

    const/4 p1, 0x0

    aput-byte p0, v0, p1

    return-object v0
.end method

.method public e(Lcom/sunia/HTREnginev2/rwd;Ljava/io/InputStream;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/oui;->h(Lcom/sunia/HTREnginev2/rwd;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public final g(Ljava/lang/Object;)I
    .locals 1

    instance-of v0, p1, Lorg/tukaani/xz/LZMA2Options;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/tukaani/xz/LZMA2Options;

    invoke-virtual {p1}, Lorg/tukaani/xz/LZMA2Options;->getDictSize()I

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/oui;->j(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final h(Lcom/sunia/HTREnginev2/rwd;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p1, Lcom/sunia/HTREnginev2/rwd;->d:[B

    if-eqz p0, :cond_4

    array-length p1, p0

    const/4 v0, 0x1

    if-lt p1, v0, :cond_3

    const/4 p1, 0x0

    aget-byte p0, p0, p1

    and-int/lit16 p0, p0, 0xff

    and-int/lit8 p1, p0, -0x40

    if-nez p1, :cond_2

    const/16 p1, 0x28

    if-gt p0, p1, :cond_1

    if-ne p0, p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    and-int/lit8 p1, p0, 0x1

    or-int/lit8 p1, p1, 0x2

    div-int/lit8 p0, p0, 0x2

    add-int/lit8 p0, p0, 0xb

    shl-int p0, p1, p0

    return p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Dictionary larger than 4GiB maximum size"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Unsupported LZMA2 property bits"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/io/IOException;

    const-string p1, "LZMA2 properties too short"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/io/IOException;

    const-string p1, "Missing LZMA2 properties"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final i(Ljava/lang/Object;)Lorg/tukaani/xz/LZMA2Options;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    instance-of v0, p1, Lorg/tukaani/xz/LZMA2Options;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/tukaani/xz/LZMA2Options;

    return-object p1

    :cond_0
    new-instance v0, Lorg/tukaani/xz/LZMA2Options;

    invoke-direct {v0}, Lorg/tukaani/xz/LZMA2Options;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/oui;->j(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/tukaani/xz/LZMA2Options;->setDictSize(I)V

    return-object v0
.end method

.method public final j(Ljava/lang/Object;)I
    .locals 0

    const/high16 p0, 0x800000

    invoke-static {p1, p0}, Lcom/sunia/HTREnginev2/swd;->f(Ljava/lang/Object;I)I

    move-result p0

    return p0
.end method
