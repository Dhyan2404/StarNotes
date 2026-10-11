.class public final Lcom/sunia/HTREnginev2/mzh;
.super Ljava/io/InputStream;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Ljava/nio/channels/ReadableByteChannel;

.field public final i:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;IIILjava/nio/ByteOrder;)V
    .locals 5

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-lez p2, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "width must be greater than 0"

    invoke-static {v2, v3, v4}, Lcom/twelvemonkeys/lang/Validate;->isTrue(ZLjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/sunia/HTREnginev2/mzh;->e:I

    const/16 v2, 0x8

    if-ge p4, v2, :cond_1

    if-ne p3, v1, :cond_2

    :cond_1
    move v0, v1

    :cond_2
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Unsupported samples per pixel for < 8 bit samples: %s"

    invoke-static {v0, v1, v3}, Lcom/twelvemonkeys/lang/Validate;->isTrue(ZLjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sunia/HTREnginev2/mzh;->f:I

    invoke-virtual {p0, p4}, Lcom/sunia/HTREnginev2/mzh;->w(I)Z

    move-result v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Unsupported bits per sample value: %s"

    invoke-static {v0, v1, v3}, Lcom/twelvemonkeys/lang/Validate;->isTrue(ZLjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sunia/HTREnginev2/mzh;->g:I

    const-string v0, "stream"

    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/InputStream;)Ljava/nio/channels/ReadableByteChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mzh;->h:Ljava/nio/channels/ReadableByteChannel;

    mul-int/2addr p2, p3

    mul-int/2addr p2, p4

    add-int/lit8 p2, p2, 0x7

    div-int/2addr p2, v2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/mzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mzh;->h:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mzh;->h:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {p0}, Ljava/nio/channels/Channel;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/mzh;->h:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mzh;->h:Ljava/nio/channels/ReadableByteChannel;

    invoke-interface {p0}, Ljava/nio/channels/Channel;->close()V

    :cond_1
    throw v0
.end method

.method public final f()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/EOFException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget v1, p0, Lcom/sunia/HTREnginev2/mzh;->g:I

    const/16 v2, 0x40

    const/16 v3, 0x20

    const/16 v4, 0x10

    const/16 v5, 0x8

    const/4 v6, 0x2

    const/4 v7, 0x4

    const/4 v8, 0x1

    const/4 v9, 0x0

    if-eq v1, v8, :cond_a

    if-eq v1, v6, :cond_9

    if-eq v1, v7, :cond_8

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    :goto_0
    iget v0, p0, Lcom/sunia/HTREnginev2/mzh;->e:I

    if-ge v8, v0, :cond_b

    move v0, v9

    :goto_1
    iget v1, p0, Lcom/sunia/HTREnginev2/mzh;->f:I

    if-ge v0, v1, :cond_0

    mul-int v2, v8, v1

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/sunia/HTREnginev2/mzh;->i:Ljava/nio/ByteBuffer;

    mul-int/lit8 v4, v2, 0x8

    sub-int/2addr v2, v1

    mul-int/2addr v2, v5

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v1

    iget-object v6, p0, Lcom/sunia/HTREnginev2/mzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v6, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v6

    add-long/2addr v1, v6

    invoke-virtual {v3, v4, v1, v2}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    iget p0, p0, Lcom/sunia/HTREnginev2/mzh;->g:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Unsupported bits per sample value: %d"

    invoke-static {v1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :cond_2
    :goto_2
    iget v0, p0, Lcom/sunia/HTREnginev2/mzh;->e:I

    if-ge v8, v0, :cond_b

    move v0, v9

    :goto_3
    iget v1, p0, Lcom/sunia/HTREnginev2/mzh;->f:I

    if-ge v0, v1, :cond_3

    mul-int v2, v8, v1

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/sunia/HTREnginev2/mzh;->i:Ljava/nio/ByteBuffer;

    mul-int/lit8 v4, v2, 0x4

    sub-int/2addr v2, v1

    mul-int/2addr v2, v7

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/mzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v3, v4, v1}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_4
    :goto_4
    iget v0, p0, Lcom/sunia/HTREnginev2/mzh;->e:I

    if-ge v8, v0, :cond_b

    move v0, v9

    :goto_5
    iget v1, p0, Lcom/sunia/HTREnginev2/mzh;->f:I

    if-ge v0, v1, :cond_5

    mul-int v2, v8, v1

    add-int/2addr v2, v0

    iget-object v3, p0, Lcom/sunia/HTREnginev2/mzh;->i:Ljava/nio/ByteBuffer;

    mul-int/lit8 v4, v2, 0x2

    sub-int/2addr v2, v1

    mul-int/2addr v2, v6

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/mzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    add-int/2addr v1, v2

    int-to-short v1, v1

    invoke-virtual {v3, v4, v1}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_6
    :goto_6
    iget v1, p0, Lcom/sunia/HTREnginev2/mzh;->e:I

    if-ge v8, v1, :cond_b

    move v1, v9

    :goto_7
    iget v2, p0, Lcom/sunia/HTREnginev2/mzh;->f:I

    if-ge v1, v2, :cond_7

    mul-int v3, v8, v2

    add-int/2addr v3, v1

    sub-int v2, v3, v2

    aget-byte v2, v0, v2

    aget-byte v4, v0, v3

    add-int/2addr v2, v4

    int-to-byte v2, v2

    aput-byte v2, v0, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_8
    move v1, v9

    :goto_8
    iget v2, p0, Lcom/sunia/HTREnginev2/mzh;->e:I

    add-int/2addr v2, v8

    div-int/2addr v2, v6

    if-ge v9, v2, :cond_b

    aget-byte v2, v0, v9

    shr-int/lit8 v3, v2, 0x4

    and-int/lit8 v3, v3, 0xf

    add-int/2addr v1, v3

    shl-int/lit8 v3, v1, 0x4

    and-int/lit16 v3, v3, 0xf0

    int-to-byte v3, v3

    and-int/lit8 v2, v2, 0xf

    add-int/2addr v1, v2

    and-int/lit8 v2, v1, 0xf

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    :cond_9
    move v1, v9

    :goto_9
    iget v2, p0, Lcom/sunia/HTREnginev2/mzh;->e:I

    add-int/lit8 v2, v2, 0x3

    div-int/2addr v2, v7

    if-ge v9, v2, :cond_b

    aget-byte v2, v0, v9

    shr-int/lit8 v3, v2, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/2addr v1, v3

    shl-int/lit8 v3, v1, 0x6

    and-int/lit16 v3, v3, 0xc0

    int-to-byte v3, v3

    shr-int/lit8 v4, v2, 0x4

    and-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    shl-int/lit8 v4, v1, 0x4

    and-int/lit8 v4, v4, 0x30

    int-to-byte v4, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    shr-int/lit8 v4, v2, 0x2

    and-int/lit8 v4, v4, 0x3

    add-int/2addr v1, v4

    shl-int/lit8 v4, v1, 0x2

    and-int/lit8 v4, v4, 0xc

    int-to-byte v4, v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    and-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    and-int/lit8 v2, v1, 0x3

    or-int/2addr v2, v3

    int-to-byte v2, v2

    aput-byte v2, v0, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_9

    :cond_a
    move v1, v9

    :goto_a
    iget v10, p0, Lcom/sunia/HTREnginev2/mzh;->e:I

    add-int/lit8 v10, v10, 0x7

    div-int/2addr v10, v5

    if-ge v9, v10, :cond_b

    aget-byte v10, v0, v9

    shr-int/lit8 v11, v10, 0x7

    and-int/2addr v11, v8

    add-int/2addr v1, v11

    shl-int/lit8 v11, v1, 0x7

    and-int/lit16 v11, v11, 0x80

    int-to-byte v11, v11

    shr-int/lit8 v12, v10, 0x6

    and-int/2addr v12, v8

    add-int/2addr v1, v12

    shl-int/lit8 v12, v1, 0x6

    and-int/2addr v12, v2

    int-to-byte v12, v12

    or-int/2addr v11, v12

    int-to-byte v11, v11

    shr-int/lit8 v12, v10, 0x5

    and-int/2addr v12, v8

    add-int/2addr v1, v12

    shl-int/lit8 v12, v1, 0x5

    and-int/2addr v12, v3

    int-to-byte v12, v12

    or-int/2addr v11, v12

    int-to-byte v11, v11

    shr-int/lit8 v12, v10, 0x4

    and-int/2addr v12, v8

    add-int/2addr v1, v12

    shl-int/lit8 v12, v1, 0x4

    and-int/2addr v12, v4

    int-to-byte v12, v12

    or-int/2addr v11, v12

    int-to-byte v11, v11

    shr-int/lit8 v12, v10, 0x3

    and-int/2addr v12, v8

    add-int/2addr v1, v12

    shl-int/lit8 v12, v1, 0x3

    and-int/2addr v12, v5

    int-to-byte v12, v12

    or-int/2addr v11, v12

    int-to-byte v11, v11

    shr-int/lit8 v12, v10, 0x2

    and-int/2addr v12, v8

    add-int/2addr v1, v12

    shl-int/lit8 v12, v1, 0x2

    and-int/2addr v12, v7

    int-to-byte v12, v12

    or-int/2addr v11, v12

    int-to-byte v11, v11

    shr-int/lit8 v12, v10, 0x1

    and-int/2addr v12, v8

    add-int/2addr v1, v12

    shl-int/lit8 v12, v1, 0x1

    and-int/2addr v12, v6

    int-to-byte v12, v12

    or-int/2addr v11, v12

    int-to-byte v11, v11

    and-int/2addr v10, v8

    add-int/2addr v1, v10

    and-int/lit8 v10, v1, 0x1

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v0, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_b
    return-void
.end method

.method public final j()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :goto_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/mzh;->h:Ljava/nio/channels/ReadableByteChannel;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/mzh;->i:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/mzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/mzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/mzh;->f()V

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    const/4 p0, 0x1

    return p0

    :cond_1
    new-instance p0, Ljava/io/EOFException;

    const-string v0, "Unexpected end of stream"

    invoke-direct {p0, v0}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    iget-object p0, p0, Lcom/sunia/HTREnginev2/mzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    const/4 p0, 0x0

    return p0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/mzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/mzh;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/mzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->get()B

    move-result p0

    and-int/lit16 p0, p0, 0xff

    return p0
.end method

.method public read([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lcom/sunia/HTREnginev2/mzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/mzh;->j()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/mzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 7
    iget-object p0, p0, Lcom/sunia/HTREnginev2/mzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p3
.end method

.method public skip(J)J
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    iget-object v2, p0, Lcom/sunia/HTREnginev2/mzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/mzh;->j()Z

    move-result v2

    if-nez v2, :cond_1

    return-wide v0

    :cond_1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/mzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    int-to-long v0, v0

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/mzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/Buffer;->position()I

    move-result p2

    add-int/2addr p2, p1

    invoke-virtual {p0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    int-to-long p0, p1

    return-wide p0
.end method

.method public final w(I)Z
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/16 v0, 0x8

    if-eq p1, v0, :cond_0

    const/16 v0, 0x10

    if-eq p1, v0, :cond_0

    const/16 v0, 0x20

    if-eq p1, v0, :cond_0

    const/16 v0, 0x40

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method
