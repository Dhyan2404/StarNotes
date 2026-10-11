.class public final Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->PDF417_GF:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    iput-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    return-void
.end method


# virtual methods
.method public final a(Lcom/sunia/HTREnginev2/soj;)[I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/soj;->e()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->e()I

    move-result v4

    if-ge v3, v4, :cond_1

    if-ge v2, v0, :cond_1

    invoke-virtual {p1, v3}, Lcom/sunia/HTREnginev2/soj;->b(I)I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v4, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->g(I)I

    move-result v4

    aput v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    if-ne v2, v0, :cond_2

    return-object v1

    :cond_2
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p0

    throw p0
.end method

.method public final b(Lcom/sunia/HTREnginev2/soj;Lcom/sunia/HTREnginev2/soj;[I)[I
    .locals 7

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/soj;->e()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x1

    :goto_0
    if-gt v2, v0, :cond_0

    sub-int v3, v0, v2

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {p2, v2}, Lcom/sunia/HTREnginev2/soj;->c(I)I

    move-result v5

    invoke-virtual {v4, v2, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->i(II)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p2, Lcom/sunia/HTREnginev2/soj;

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {p2, v0, v1}, Lcom/sunia/HTREnginev2/soj;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    array-length v0, p3

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_1

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    aget v5, p3, v3

    invoke-virtual {v4, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->g(I)I

    move-result v4

    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {p1, v4}, Lcom/sunia/HTREnginev2/soj;->b(I)I

    move-result v6

    invoke-virtual {v5, v2, v6}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->j(II)I

    move-result v5

    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {p2, v4}, Lcom/sunia/HTREnginev2/soj;->b(I)I

    move-result v4

    invoke-virtual {v6, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->g(I)I

    move-result v4

    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v6, v5, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->i(II)I

    move-result v4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public final c(Lcom/sunia/HTREnginev2/soj;Lcom/sunia/HTREnginev2/soj;I)[Lcom/sunia/HTREnginev2/soj;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/soj;->e()I

    move-result v0

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/soj;->e()I

    move-result v1

    if-ge v0, v1, :cond_0

    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    :cond_0
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->f()Lcom/sunia/HTREnginev2/soj;

    move-result-object v0

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v1}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->d()Lcom/sunia/HTREnginev2/soj;

    move-result-object v1

    :goto_0
    move-object v7, p2

    move-object p2, p1

    move-object p1, v7

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/soj;->e()I

    move-result v2

    div-int/lit8 v3, p3, 0x2

    if-lt v2, v3, :cond_3

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/soj;->f()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->f()Lcom/sunia/HTREnginev2/soj;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/soj;->e()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/sunia/HTREnginev2/soj;->c(I)I

    move-result v3

    iget-object v4, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v4, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->g(I)I

    move-result v3

    :goto_1
    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/soj;->e()I

    move-result v4

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/soj;->e()I

    move-result v5

    if-lt v4, v5, :cond_1

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/soj;->f()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/soj;->e()I

    move-result v4

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/soj;->e()I

    move-result v5

    sub-int/2addr v4, v5

    iget-object v5, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/soj;->e()I

    move-result v6

    invoke-virtual {p2, v6}, Lcom/sunia/HTREnginev2/soj;->c(I)I

    move-result v6

    invoke-virtual {v5, v6, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->i(II)I

    move-result v5

    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v6, v4, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->b(II)Lcom/sunia/HTREnginev2/soj;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/sunia/HTREnginev2/soj;->a(Lcom/sunia/HTREnginev2/soj;)Lcom/sunia/HTREnginev2/soj;

    move-result-object v2

    invoke-virtual {p1, v4, v5}, Lcom/sunia/HTREnginev2/soj;->i(II)Lcom/sunia/HTREnginev2/soj;

    move-result-object v4

    invoke-virtual {p2, v4}, Lcom/sunia/HTREnginev2/soj;->k(Lcom/sunia/HTREnginev2/soj;)Lcom/sunia/HTREnginev2/soj;

    move-result-object p2

    goto :goto_1

    :cond_1
    invoke-virtual {v2, v0}, Lcom/sunia/HTREnginev2/soj;->h(Lcom/sunia/HTREnginev2/soj;)Lcom/sunia/HTREnginev2/soj;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sunia/HTREnginev2/soj;->k(Lcom/sunia/HTREnginev2/soj;)Lcom/sunia/HTREnginev2/soj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/soj;->j()Lcom/sunia/HTREnginev2/soj;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p0

    throw p0

    :cond_3
    const/4 p2, 0x0

    invoke-virtual {v0, p2}, Lcom/sunia/HTREnginev2/soj;->c(I)I

    move-result p2

    if-eqz p2, :cond_4

    iget-object p0, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {p0, p2}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->g(I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/sunia/HTREnginev2/soj;->g(I)Lcom/sunia/HTREnginev2/soj;

    move-result-object p2

    invoke-virtual {p1, p0}, Lcom/sunia/HTREnginev2/soj;->g(I)Lcom/sunia/HTREnginev2/soj;

    move-result-object p0

    filled-new-array {p2, p0}, [Lcom/sunia/HTREnginev2/soj;

    move-result-object p0

    return-object p0

    :cond_4
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p0

    throw p0
.end method

.method public decode([II[I)I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/soj;

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {v0, v1, p1}, Lcom/sunia/HTREnginev2/soj;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    new-array v1, p2, [I

    const/4 v2, 0x0

    move v3, p2

    move v4, v2

    :goto_0
    const/4 v5, 0x1

    if-lez v3, :cond_1

    iget-object v6, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v6, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->c(I)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/sunia/HTREnginev2/soj;->b(I)I

    move-result v6

    sub-int v7, p2, v3

    aput v6, v1, v7

    if-eqz v6, :cond_0

    move v4, v5

    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    return v2

    :cond_2
    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v0}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->d()Lcom/sunia/HTREnginev2/soj;

    move-result-object v0

    if-eqz p3, :cond_3

    array-length v3, p3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_3

    aget v6, p3, v4

    iget-object v7, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    array-length v8, p1

    sub-int/2addr v8, v5

    sub-int/2addr v8, v6

    invoke-virtual {v7, v8}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->c(I)I

    move-result v6

    new-instance v7, Lcom/sunia/HTREnginev2/soj;

    iget-object v8, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v8, v2, v6}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->j(II)I

    move-result v6

    filled-new-array {v6, v5}, [I

    move-result-object v6

    invoke-direct {v7, v8, v6}, Lcom/sunia/HTREnginev2/soj;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    invoke-virtual {v0, v7}, Lcom/sunia/HTREnginev2/soj;->h(Lcom/sunia/HTREnginev2/soj;)Lcom/sunia/HTREnginev2/soj;

    move-result-object v0

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    new-instance p3, Lcom/sunia/HTREnginev2/soj;

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-direct {p3, v0, v1}, Lcom/sunia/HTREnginev2/soj;-><init>(Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;[I)V

    iget-object v0, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    invoke-virtual {v0, p2, v5}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->b(II)Lcom/sunia/HTREnginev2/soj;

    move-result-object v0

    invoke-virtual {p0, v0, p3, p2}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->c(Lcom/sunia/HTREnginev2/soj;Lcom/sunia/HTREnginev2/soj;I)[Lcom/sunia/HTREnginev2/soj;

    move-result-object p2

    aget-object p3, p2, v2

    aget-object p2, p2, v5

    invoke-virtual {p0, p3}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a(Lcom/sunia/HTREnginev2/soj;)[I

    move-result-object v0

    invoke-virtual {p0, p2, p3, v0}, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->b(Lcom/sunia/HTREnginev2/soj;Lcom/sunia/HTREnginev2/soj;[I)[I

    move-result-object p2

    :goto_2
    array-length p3, v0

    if-ge v2, p3, :cond_5

    array-length p3, p1

    sub-int/2addr p3, v5

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    aget v3, v0, v2

    invoke-virtual {v1, v3}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->h(I)I

    move-result v1

    sub-int/2addr p3, v1

    if-ltz p3, :cond_4

    iget-object v1, p0, Lcom/google/zxing/pdf417/decoder/ec/ErrorCorrection;->a:Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;

    aget v3, p1, p3

    aget v4, p2, v2

    invoke-virtual {v1, v3, v4}, Lcom/google/zxing/pdf417/decoder/ec/ModulusGF;->j(II)I

    move-result v1

    aput v1, p1, p3

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object p0

    throw p0

    :cond_5
    array-length p0, v0

    return p0
.end method
