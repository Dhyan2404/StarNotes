.class public final Lcom/sunia/HTREnginev2/bxo;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:[B

.field public m:I

.field public n:I

.field public final o:[B

.field public p:I

.field public q:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;[III)V
    .locals 4

    const-string v0, "stream"

    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-string p1, "chromaSub"

    invoke-static {p2, p1}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length p1, p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ne p1, v2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    const-string v3, "chromaSub.length != 2"

    invoke-static {p1, v3}, Lcom/twelvemonkeys/lang/Validate;->isTrue(ZLjava/lang/String;)Z

    aget p1, p2, v0

    iput p1, p0, Lcom/sunia/HTREnginev2/bxo;->e:I

    aget p2, p2, v1

    iput p2, p0, Lcom/sunia/HTREnginev2/bxo;->f:I

    iput p3, p0, Lcom/sunia/HTREnginev2/bxo;->g:I

    iput p4, p0, Lcom/sunia/HTREnginev2/bxo;->h:I

    mul-int p3, p1, p2

    add-int/2addr p3, v2

    iput p3, p0, Lcom/sunia/HTREnginev2/bxo;->j:I

    add-int v0, p4, p1

    sub-int/2addr v0, v1

    div-int/2addr v0, p1

    iput v0, p0, Lcom/sunia/HTREnginev2/bxo;->i:I

    mul-int/2addr p1, v0

    sub-int/2addr p1, p4

    iput p1, p0, Lcom/sunia/HTREnginev2/bxo;->k:I

    mul-int/2addr p4, p2

    mul-int/lit8 p4, p4, 0x3

    new-array p1, p4, [B

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bxo;->l:[B

    mul-int/2addr p3, v0

    new-array p1, p3, [B

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bxo;->o:[B

    return-void
.end method

.method public static f(I)B
    .locals 1

    const/16 v0, 0xff

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    int-to-byte p0, p0

    return p0
.end method


# virtual methods
.method public final j()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/bxo;->l:[B

    array-length v0, v0

    iput v0, p0, Lcom/sunia/HTREnginev2/bxo;->m:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sunia/HTREnginev2/bxo;->i:I

    if-ge v1, v2, :cond_4

    iget v2, p0, Lcom/sunia/HTREnginev2/bxo;->q:I

    iget v3, p0, Lcom/sunia/HTREnginev2/bxo;->p:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/sunia/HTREnginev2/bxo;->o:[B

    iget v4, p0, Lcom/sunia/HTREnginev2/bxo;->j:I

    add-int v5, v2, v4

    add-int/lit8 v5, v5, -0x2

    aget-byte v5, v3, v5

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v3, v2

    move v3, v0

    :goto_1
    iget v4, p0, Lcom/sunia/HTREnginev2/bxo;->f:I

    if-ge v3, v4, :cond_2

    move v4, v0

    :goto_2
    iget v6, p0, Lcom/sunia/HTREnginev2/bxo;->e:I

    if-ge v4, v6, :cond_1

    mul-int/2addr v6, v1

    add-int/2addr v6, v4

    iget v7, p0, Lcom/sunia/HTREnginev2/bxo;->h:I

    if-lt v6, v7, :cond_0

    iget v4, p0, Lcom/sunia/HTREnginev2/bxo;->q:I

    iget v6, p0, Lcom/sunia/HTREnginev2/bxo;->k:I

    add-int/2addr v4, v6

    iput v4, p0, Lcom/sunia/HTREnginev2/bxo;->q:I

    goto :goto_3

    :cond_0
    mul-int/2addr v7, v3

    add-int/2addr v6, v7

    mul-int/lit8 v6, v6, 0x3

    iget-object v7, p0, Lcom/sunia/HTREnginev2/bxo;->l:[B

    iget-object v8, p0, Lcom/sunia/HTREnginev2/bxo;->o:[B

    iget v9, p0, Lcom/sunia/HTREnginev2/bxo;->q:I

    add-int/lit8 v10, v9, 0x1

    iput v10, p0, Lcom/sunia/HTREnginev2/bxo;->q:I

    aget-byte v8, v8, v9

    aput-byte v8, v7, v6

    add-int/lit8 v8, v6, 0x1

    aput-byte v5, v7, v8

    add-int/lit8 v6, v6, 0x2

    aput-byte v2, v7, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/sunia/HTREnginev2/bxo;->q:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/sunia/HTREnginev2/bxo;->q:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/io/EOFException;

    const-string v0, "Unexpected end of stream"

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget v1, p0, Lcom/sunia/HTREnginev2/bxo;->p:I

    iput v1, p0, Lcom/sunia/HTREnginev2/bxo;->q:I

    iput v0, p0, Lcom/sunia/HTREnginev2/bxo;->n:I

    return-void
.end method

.method public markSupported()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/sunia/HTREnginev2/bxo;->m:I

    const/4 v1, -0x1

    if-gez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v2, p0, Lcom/sunia/HTREnginev2/bxo;->n:I

    if-lt v2, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/bxo;->w()V

    .line 4
    iget v0, p0, Lcom/sunia/HTREnginev2/bxo;->m:I

    if-gez v0, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/bxo;->l:[B

    iget v1, p0, Lcom/sunia/HTREnginev2/bxo;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sunia/HTREnginev2/bxo;->n:I

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public read([BII)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6
    iget v0, p0, Lcom/sunia/HTREnginev2/bxo;->m:I

    const/4 v1, -0x1

    if-gez v0, :cond_0

    return v1

    .line 7
    :cond_0
    iget v2, p0, Lcom/sunia/HTREnginev2/bxo;->n:I

    if-lt v2, v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/bxo;->w()V

    .line 9
    iget v0, p0, Lcom/sunia/HTREnginev2/bxo;->m:I

    if-gez v0, :cond_1

    return v1

    .line 10
    :cond_1
    iget v0, p0, Lcom/sunia/HTREnginev2/bxo;->m:I

    iget v1, p0, Lcom/sunia/HTREnginev2/bxo;->n:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 11
    iget-object v0, p0, Lcom/sunia/HTREnginev2/bxo;->l:[B

    iget v1, p0, Lcom/sunia/HTREnginev2/bxo;->n:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget p1, p0, Lcom/sunia/HTREnginev2/bxo;->n:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/sunia/HTREnginev2/bxo;->n:I

    return p3
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "mark/reset not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sunia/HTREnginev2/bxo;->m:I

    const-wide/16 v1, -0x1

    if-gez v0, :cond_0

    return-wide v1

    :cond_0
    iget v3, p0, Lcom/sunia/HTREnginev2/bxo;->n:I

    if-lt v3, v0, :cond_1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/bxo;->w()V

    iget v0, p0, Lcom/sunia/HTREnginev2/bxo;->m:I

    if-gez v0, :cond_1

    return-wide v1

    :cond_1
    iget v0, p0, Lcom/sunia/HTREnginev2/bxo;->m:I

    iget v1, p0, Lcom/sunia/HTREnginev2/bxo;->n:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    iget p2, p0, Lcom/sunia/HTREnginev2/bxo;->n:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/sunia/HTREnginev2/bxo;->n:I

    int-to-long p0, p1

    return-wide p0
.end method

.method public final w()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sunia/HTREnginev2/bxo;->q:I

    iget v1, p0, Lcom/sunia/HTREnginev2/bxo;->p:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sunia/HTREnginev2/bxo;->o:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/bxo;->o:[B

    array-length v4, v3

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/sunia/HTREnginev2/bxo;->p:I

    iput v0, p0, Lcom/sunia/HTREnginev2/bxo;->q:I

    :cond_1
    iget v0, p0, Lcom/sunia/HTREnginev2/bxo;->p:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/bxo;->j()V

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/bxo;->m:I

    :goto_1
    return-void
.end method
