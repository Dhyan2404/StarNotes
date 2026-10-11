.class public final Lcom/sunia/HTREnginev2/axo;
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
.method public constructor <init>(Ljava/io/InputStream;[IIILjava/nio/ByteOrder;)V
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

    const-string p1, "byteOrder"

    invoke-static {p5, p1}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    aget p1, p2, v0

    iput p1, p0, Lcom/sunia/HTREnginev2/axo;->e:I

    aget p2, p2, v1

    iput p2, p0, Lcom/sunia/HTREnginev2/axo;->f:I

    iput p3, p0, Lcom/sunia/HTREnginev2/axo;->g:I

    iput p4, p0, Lcom/sunia/HTREnginev2/axo;->h:I

    mul-int p3, p1, p2

    add-int/2addr p3, v2

    mul-int/2addr p3, v2

    iput p3, p0, Lcom/sunia/HTREnginev2/axo;->j:I

    add-int p5, p4, p1

    sub-int/2addr p5, v1

    div-int/2addr p5, p1

    iput p5, p0, Lcom/sunia/HTREnginev2/axo;->i:I

    mul-int/2addr p1, p5

    sub-int/2addr p1, p4

    mul-int/2addr p1, v2

    iput p1, p0, Lcom/sunia/HTREnginev2/axo;->k:I

    mul-int/2addr p4, v2

    mul-int/2addr p4, p2

    mul-int/lit8 p4, p4, 0x3

    new-array p1, p4, [B

    iput-object p1, p0, Lcom/sunia/HTREnginev2/axo;->l:[B

    mul-int/2addr p3, p5

    new-array p1, p3, [B

    iput-object p1, p0, Lcom/sunia/HTREnginev2/axo;->o:[B

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/axo;->l:[B

    array-length v0, v0

    iput v0, p0, Lcom/sunia/HTREnginev2/axo;->m:I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/sunia/HTREnginev2/axo;->i:I

    if-ge v1, v2, :cond_4

    iget v2, p0, Lcom/sunia/HTREnginev2/axo;->q:I

    iget v3, p0, Lcom/sunia/HTREnginev2/axo;->p:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/sunia/HTREnginev2/axo;->o:[B

    iget v4, p0, Lcom/sunia/HTREnginev2/axo;->j:I

    add-int v5, v2, v4

    add-int/lit8 v5, v5, -0x4

    aget-byte v5, v3, v5

    add-int v6, v2, v4

    add-int/lit8 v6, v6, -0x3

    aget-byte v6, v3, v6

    add-int v7, v2, v4

    add-int/lit8 v7, v7, -0x2

    aget-byte v7, v3, v7

    add-int/2addr v2, v4

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v3, v2

    move v3, v0

    :goto_1
    iget v4, p0, Lcom/sunia/HTREnginev2/axo;->f:I

    if-ge v3, v4, :cond_2

    move v4, v0

    :goto_2
    iget v8, p0, Lcom/sunia/HTREnginev2/axo;->e:I

    if-ge v4, v8, :cond_1

    mul-int/2addr v8, v1

    add-int/2addr v8, v4

    iget v9, p0, Lcom/sunia/HTREnginev2/axo;->h:I

    if-lt v8, v9, :cond_0

    iget v4, p0, Lcom/sunia/HTREnginev2/axo;->q:I

    iget v8, p0, Lcom/sunia/HTREnginev2/axo;->k:I

    add-int/2addr v4, v8

    iput v4, p0, Lcom/sunia/HTREnginev2/axo;->q:I

    goto :goto_3

    :cond_0
    mul-int/2addr v9, v3

    add-int/2addr v8, v9

    mul-int/lit8 v8, v8, 0x6

    iget-object v9, p0, Lcom/sunia/HTREnginev2/axo;->l:[B

    iget-object v10, p0, Lcom/sunia/HTREnginev2/axo;->o:[B

    iget v11, p0, Lcom/sunia/HTREnginev2/axo;->q:I

    add-int/lit8 v12, v11, 0x1

    aget-byte v11, v10, v11

    aput-byte v11, v9, v8

    add-int/lit8 v11, v8, 0x1

    add-int/lit8 v13, v12, 0x1

    iput v13, p0, Lcom/sunia/HTREnginev2/axo;->q:I

    aget-byte v10, v10, v12

    aput-byte v10, v9, v11

    add-int/lit8 v10, v8, 0x2

    aput-byte v5, v9, v10

    add-int/lit8 v10, v8, 0x3

    aput-byte v6, v9, v10

    add-int/lit8 v10, v8, 0x4

    aput-byte v7, v9, v10

    add-int/lit8 v8, v8, 0x5

    aput-byte v2, v9, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/sunia/HTREnginev2/axo;->q:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/sunia/HTREnginev2/axo;->q:I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance p0, Ljava/io/EOFException;

    const-string v0, "Unexpected end of stream"

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    iget v1, p0, Lcom/sunia/HTREnginev2/axo;->p:I

    iput v1, p0, Lcom/sunia/HTREnginev2/axo;->q:I

    iput v0, p0, Lcom/sunia/HTREnginev2/axo;->n:I

    return-void
.end method

.method public final j()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/sunia/HTREnginev2/axo;->q:I

    iget v1, p0, Lcom/sunia/HTREnginev2/axo;->p:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/sunia/HTREnginev2/axo;->o:[B

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/axo;->o:[B

    array-length v4, v3

    sub-int/2addr v4, v1

    invoke-virtual {v2, v3, v1, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_0

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/sunia/HTREnginev2/axo;->p:I

    iput v0, p0, Lcom/sunia/HTREnginev2/axo;->q:I

    :cond_1
    iget v0, p0, Lcom/sunia/HTREnginev2/axo;->p:I

    if-lez v0, :cond_2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/axo;->f()V

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/sunia/HTREnginev2/axo;->m:I

    :goto_1
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
    iget v0, p0, Lcom/sunia/HTREnginev2/axo;->m:I

    const/4 v1, -0x1

    if-gez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget v2, p0, Lcom/sunia/HTREnginev2/axo;->n:I

    if-lt v2, v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/axo;->j()V

    .line 4
    iget v0, p0, Lcom/sunia/HTREnginev2/axo;->m:I

    if-gez v0, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/axo;->l:[B

    iget v1, p0, Lcom/sunia/HTREnginev2/axo;->n:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sunia/HTREnginev2/axo;->n:I

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
    iget v0, p0, Lcom/sunia/HTREnginev2/axo;->m:I

    const/4 v1, -0x1

    if-gez v0, :cond_0

    return v1

    .line 7
    :cond_0
    iget v2, p0, Lcom/sunia/HTREnginev2/axo;->n:I

    if-lt v2, v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/axo;->j()V

    .line 9
    iget v0, p0, Lcom/sunia/HTREnginev2/axo;->m:I

    if-gez v0, :cond_1

    return v1

    .line 10
    :cond_1
    iget v0, p0, Lcom/sunia/HTREnginev2/axo;->m:I

    iget v1, p0, Lcom/sunia/HTREnginev2/axo;->n:I

    sub-int/2addr v0, v1

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 11
    iget-object v0, p0, Lcom/sunia/HTREnginev2/axo;->l:[B

    iget v1, p0, Lcom/sunia/HTREnginev2/axo;->n:I

    invoke-static {v0, v1, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    iget p1, p0, Lcom/sunia/HTREnginev2/axo;->n:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/sunia/HTREnginev2/axo;->n:I

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

    iget v0, p0, Lcom/sunia/HTREnginev2/axo;->m:I

    const-wide/16 v1, -0x1

    if-gez v0, :cond_0

    return-wide v1

    :cond_0
    iget v3, p0, Lcom/sunia/HTREnginev2/axo;->n:I

    if-lt v3, v0, :cond_1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/axo;->j()V

    iget v0, p0, Lcom/sunia/HTREnginev2/axo;->m:I

    if-gez v0, :cond_1

    return-wide v1

    :cond_1
    iget v0, p0, Lcom/sunia/HTREnginev2/axo;->m:I

    iget v1, p0, Lcom/sunia/HTREnginev2/axo;->n:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    iget p2, p0, Lcom/sunia/HTREnginev2/axo;->n:I

    add-int/2addr p2, p1

    iput p2, p0, Lcom/sunia/HTREnginev2/axo;->n:I

    int-to-long p0, p1

    return-wide p0
.end method
