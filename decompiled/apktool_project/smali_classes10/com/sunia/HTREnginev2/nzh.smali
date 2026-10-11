.class public final Lcom/sunia/HTREnginev2/nzh;
.super Ljava/io/OutputStream;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:Ljava/nio/channels/WritableByteChannel;

.field public final i:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;IIILjava/nio/ByteOrder;)V
    .locals 5

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

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

    iput v2, p0, Lcom/sunia/HTREnginev2/nzh;->e:I

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

    iput v0, p0, Lcom/sunia/HTREnginev2/nzh;->f:I

    invoke-virtual {p0, p4}, Lcom/sunia/HTREnginev2/nzh;->w(I)Z

    move-result v0

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "Unsupported bits per sample value: %s"

    invoke-static {v0, v1, v3}, Lcom/twelvemonkeys/lang/Validate;->isTrue(ZLjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/sunia/HTREnginev2/nzh;->g:I

    const-string v0, "stream"

    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/OutputStream;

    invoke-static {p1}, Ljava/nio/channels/Channels;->newChannel(Ljava/io/OutputStream;)Ljava/nio/channels/WritableByteChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nzh;->h:Ljava/nio/channels/WritableByteChannel;

    mul-int/2addr p2, p3

    mul-int/2addr p2, p4

    add-int/lit8 p2, p2, 0x7

    div-int/2addr p2, v2

    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/nzh;->i:Ljava/nio/ByteBuffer;

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
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/nzh;->j()Z

    invoke-super {p0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nzh;->h:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v0}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nzh;->h:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {p0}, Ljava/nio/channels/Channel;->close()V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/nzh;->h:Ljava/nio/channels/WritableByteChannel;

    invoke-interface {v1}, Ljava/nio/channels/Channel;->isOpen()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nzh;->h:Ljava/nio/channels/WritableByteChannel;

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

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    iget v1, p0, Lcom/sunia/HTREnginev2/nzh;->g:I

    const/16 v2, 0x40

    const/16 v3, 0x20

    const/16 v4, 0x10

    const/16 v5, 0x8

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x4

    const/4 v9, 0x1

    if-eq v1, v9, :cond_c

    if-eq v1, v7, :cond_a

    if-eq v1, v8, :cond_8

    if-eq v1, v5, :cond_6

    if-eq v1, v4, :cond_4

    if-eq v1, v3, :cond_2

    if-ne v1, v2, :cond_1

    iget v0, p0, Lcom/sunia/HTREnginev2/nzh;->e:I

    sub-int/2addr v0, v9

    :goto_0
    if-lez v0, :cond_e

    move v1, v6

    :goto_1
    iget v2, p0, Lcom/sunia/HTREnginev2/nzh;->f:I

    if-ge v1, v2, :cond_0

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/sunia/HTREnginev2/nzh;->i:Ljava/nio/ByteBuffer;

    mul-int/lit8 v4, v2, 0x8

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v7

    iget-object v9, p0, Lcom/sunia/HTREnginev2/nzh;->i:Ljava/nio/ByteBuffer;

    iget v10, p0, Lcom/sunia/HTREnginev2/nzh;->f:I

    sub-int/2addr v2, v10

    mul-int/2addr v2, v5

    invoke-virtual {v9, v2}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-virtual {v3, v4, v7, v8}, Ljava/nio/ByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    iget p0, p0, Lcom/sunia/HTREnginev2/nzh;->g:I

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
    iget v0, p0, Lcom/sunia/HTREnginev2/nzh;->e:I

    sub-int/2addr v0, v9

    :goto_2
    if-lez v0, :cond_e

    move v1, v6

    :goto_3
    iget v2, p0, Lcom/sunia/HTREnginev2/nzh;->f:I

    if-ge v1, v2, :cond_3

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/sunia/HTREnginev2/nzh;->i:Ljava/nio/ByteBuffer;

    mul-int/lit8 v4, v2, 0x4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v5

    iget-object v7, p0, Lcom/sunia/HTREnginev2/nzh;->i:Ljava/nio/ByteBuffer;

    iget v9, p0, Lcom/sunia/HTREnginev2/nzh;->f:I

    sub-int/2addr v2, v9

    mul-int/2addr v2, v8

    invoke-virtual {v7, v2}, Ljava/nio/ByteBuffer;->getInt(I)I

    move-result v2

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/nio/ByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/sunia/HTREnginev2/nzh;->e:I

    sub-int/2addr v0, v9

    :goto_4
    if-lez v0, :cond_e

    move v1, v6

    :goto_5
    iget v2, p0, Lcom/sunia/HTREnginev2/nzh;->f:I

    if-ge v1, v2, :cond_5

    mul-int/2addr v2, v0

    add-int/2addr v2, v1

    iget-object v3, p0, Lcom/sunia/HTREnginev2/nzh;->i:Ljava/nio/ByteBuffer;

    mul-int/lit8 v4, v2, 0x2

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v5

    iget-object v8, p0, Lcom/sunia/HTREnginev2/nzh;->i:Ljava/nio/ByteBuffer;

    iget v9, p0, Lcom/sunia/HTREnginev2/nzh;->f:I

    sub-int/2addr v2, v9

    mul-int/2addr v2, v7

    invoke-virtual {v8, v2}, Ljava/nio/ByteBuffer;->getShort(I)S

    move-result v2

    sub-int/2addr v5, v2

    int-to-short v2, v5

    invoke-virtual {v3, v4, v2}, Ljava/nio/ByteBuffer;->putShort(IS)Ljava/nio/ByteBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_5
    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    :cond_6
    iget v1, p0, Lcom/sunia/HTREnginev2/nzh;->e:I

    sub-int/2addr v1, v9

    :goto_6
    if-lez v1, :cond_e

    iget v2, p0, Lcom/sunia/HTREnginev2/nzh;->f:I

    mul-int/2addr v2, v1

    move v3, v6

    :goto_7
    iget v4, p0, Lcom/sunia/HTREnginev2/nzh;->f:I

    if-ge v3, v4, :cond_7

    add-int v5, v2, v3

    aget-byte v7, v0, v5

    sub-int v4, v5, v4

    aget-byte v4, v0, v4

    sub-int/2addr v7, v4

    int-to-byte v4, v7

    aput-byte v4, v0, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_8
    iget p0, p0, Lcom/sunia/HTREnginev2/nzh;->e:I

    add-int/2addr p0, v9

    div-int/2addr p0, v7

    sub-int/2addr p0, v9

    :goto_8
    if-lez p0, :cond_9

    aget-byte v1, v0, p0

    add-int/lit8 v2, p0, -0x1

    aget-byte v2, v0, v2

    and-int/lit8 v2, v2, 0xf

    and-int/lit16 v3, v1, 0xf0

    shr-int/2addr v3, v8

    sub-int v2, v3, v2

    shl-int/2addr v2, v8

    int-to-byte v2, v2

    and-int/lit8 v1, v1, 0xf

    sub-int/2addr v1, v3

    and-int/lit16 v2, v2, 0xf0

    and-int/lit8 v1, v1, 0xf

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_8

    :cond_9
    aget-byte p0, v0, v6

    and-int/lit8 v1, p0, 0xf

    and-int/lit16 p0, p0, 0xf0

    shr-int/lit8 v2, p0, 0x4

    sub-int/2addr v1, v2

    and-int/lit8 v1, v1, 0xf

    or-int/2addr p0, v1

    int-to-byte p0, p0

    aput-byte p0, v0, v6

    goto/16 :goto_b

    :cond_a
    iget p0, p0, Lcom/sunia/HTREnginev2/nzh;->e:I

    add-int/lit8 p0, p0, 0x3

    div-int/2addr p0, v8

    sub-int/2addr p0, v9

    :goto_9
    if-lez p0, :cond_b

    aget-byte v1, v0, p0

    add-int/lit8 v2, p0, -0x1

    aget-byte v2, v0, v2

    and-int/lit8 v2, v2, 0x3

    and-int/lit16 v3, v1, 0xc0

    shr-int/lit8 v3, v3, 0x6

    sub-int v2, v3, v2

    shl-int/lit8 v2, v2, 0x6

    int-to-byte v2, v2

    and-int/lit8 v4, v1, 0x30

    shr-int/2addr v4, v8

    sub-int v3, v4, v3

    shl-int/2addr v3, v8

    and-int/lit8 v3, v3, 0x30

    or-int/2addr v2, v3

    int-to-byte v2, v2

    and-int/lit8 v3, v1, 0xc

    shr-int/2addr v3, v7

    sub-int v4, v3, v4

    shl-int/2addr v4, v7

    and-int/lit8 v4, v4, 0xc

    or-int/2addr v2, v4

    int-to-byte v2, v2

    and-int/lit8 v1, v1, 0x3

    sub-int/2addr v1, v3

    and-int/lit16 v2, v2, 0xfc

    and-int/lit8 v1, v1, 0x3

    or-int/2addr v1, v2

    int-to-byte v1, v1

    aput-byte v1, v0, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_9

    :cond_b
    aget-byte p0, v0, v6

    and-int/lit16 v1, p0, 0xc0

    int-to-byte v2, v1

    and-int/lit8 v3, p0, 0x30

    shr-int/2addr v3, v8

    shr-int/lit8 v1, v1, 0x6

    sub-int v1, v3, v1

    shl-int/2addr v1, v8

    and-int/lit8 v1, v1, 0x30

    or-int/2addr v1, v2

    int-to-byte v1, v1

    and-int/lit8 v2, p0, 0xc

    shr-int/2addr v2, v7

    sub-int v3, v2, v3

    shl-int/2addr v3, v7

    and-int/lit8 v3, v3, 0xc

    or-int/2addr v1, v3

    int-to-byte v1, v1

    and-int/lit8 p0, p0, 0x3

    sub-int/2addr p0, v2

    and-int/lit16 v1, v1, 0xfc

    and-int/lit8 p0, p0, 0x3

    or-int/2addr p0, v1

    int-to-byte p0, p0

    aput-byte p0, v0, v6

    goto/16 :goto_b

    :cond_c
    iget p0, p0, Lcom/sunia/HTREnginev2/nzh;->e:I

    add-int/lit8 p0, p0, 0x7

    div-int/2addr p0, v5

    sub-int/2addr p0, v9

    :goto_a
    if-lez p0, :cond_d

    aget-byte v1, v0, p0

    add-int/lit8 v10, p0, -0x1

    aget-byte v10, v0, v10

    and-int/2addr v10, v9

    and-int/lit16 v11, v1, 0x80

    shr-int/lit8 v11, v11, 0x7

    sub-int v10, v11, v10

    shl-int/lit8 v10, v10, 0x7

    int-to-byte v10, v10

    and-int/lit8 v12, v1, 0x40

    shr-int/lit8 v12, v12, 0x6

    sub-int v11, v12, v11

    shl-int/lit8 v11, v11, 0x6

    and-int/2addr v11, v2

    or-int/2addr v10, v11

    int-to-byte v10, v10

    and-int/lit8 v11, v1, 0x20

    shr-int/lit8 v11, v11, 0x5

    sub-int v12, v11, v12

    shl-int/lit8 v12, v12, 0x5

    and-int/2addr v12, v3

    or-int/2addr v10, v12

    int-to-byte v10, v10

    and-int/lit8 v12, v1, 0x10

    shr-int/2addr v12, v8

    sub-int v11, v12, v11

    shl-int/2addr v11, v8

    and-int/2addr v11, v4

    or-int/2addr v10, v11

    int-to-byte v10, v10

    and-int/lit8 v11, v1, 0x8

    shr-int/lit8 v11, v11, 0x3

    sub-int v12, v11, v12

    shl-int/lit8 v12, v12, 0x3

    and-int/2addr v12, v5

    or-int/2addr v10, v12

    int-to-byte v10, v10

    and-int/lit8 v12, v1, 0x4

    shr-int/2addr v12, v7

    sub-int v11, v12, v11

    shl-int/2addr v11, v7

    and-int/2addr v11, v8

    or-int/2addr v10, v11

    int-to-byte v10, v10

    and-int/lit8 v11, v1, 0x2

    shr-int/2addr v11, v9

    sub-int v12, v11, v12

    shl-int/2addr v12, v9

    and-int/2addr v12, v7

    or-int/2addr v10, v12

    int-to-byte v10, v10

    and-int/2addr v1, v9

    sub-int/2addr v1, v11

    and-int/lit16 v10, v10, 0xfe

    and-int/2addr v1, v9

    or-int/2addr v1, v10

    int-to-byte v1, v1

    aput-byte v1, v0, p0

    add-int/lit8 p0, p0, -0x1

    goto :goto_a

    :cond_d
    aget-byte p0, v0, v6

    and-int/lit16 v1, p0, 0x80

    int-to-byte v10, v1

    and-int/lit8 v11, p0, 0x40

    shr-int/lit8 v11, v11, 0x6

    shr-int/lit8 v1, v1, 0x7

    sub-int v1, v11, v1

    shl-int/lit8 v1, v1, 0x6

    and-int/2addr v1, v2

    or-int/2addr v1, v10

    int-to-byte v1, v1

    and-int/lit8 v2, p0, 0x20

    shr-int/lit8 v2, v2, 0x5

    sub-int v10, v2, v11

    shl-int/lit8 v10, v10, 0x5

    and-int/2addr v3, v10

    or-int/2addr v1, v3

    int-to-byte v1, v1

    and-int/lit8 v3, p0, 0x10

    shr-int/2addr v3, v8

    sub-int v2, v3, v2

    shl-int/2addr v2, v8

    and-int/2addr v2, v4

    or-int/2addr v1, v2

    int-to-byte v1, v1

    and-int/lit8 v2, p0, 0x8

    shr-int/lit8 v2, v2, 0x3

    sub-int v3, v2, v3

    shl-int/lit8 v3, v3, 0x3

    and-int/2addr v3, v5

    or-int/2addr v1, v3

    int-to-byte v1, v1

    and-int/lit8 v3, p0, 0x4

    shr-int/2addr v3, v7

    sub-int v2, v3, v2

    shl-int/2addr v2, v7

    and-int/2addr v2, v8

    or-int/2addr v1, v2

    int-to-byte v1, v1

    and-int/lit8 v2, p0, 0x2

    shr-int/2addr v2, v9

    sub-int v3, v2, v3

    shl-int/2addr v3, v9

    and-int/2addr v3, v7

    or-int/2addr v1, v3

    int-to-byte v1, v1

    and-int/2addr p0, v9

    sub-int/2addr p0, v2

    and-int/lit16 v1, v1, 0xfe

    and-int/2addr p0, v9

    or-int/2addr p0, v1

    int-to-byte p0, p0

    aput-byte p0, v0, v6

    :cond_e
    :goto_b
    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/nzh;->j()Z

    return-void
.end method

.method public final j()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/nzh;->f()V

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/sunia/HTREnginev2/nzh;->h:Ljava/nio/channels/WritableByteChannel;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/nzh;->i:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/nzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    const/4 p0, 0x1

    return p0
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

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sunia/HTREnginev2/nzh;->i:Ljava/nio/ByteBuffer;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    .line 2
    iget-object p1, p0, Lcom/sunia/HTREnginev2/nzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/nzh;->j()Z

    :cond_0
    return-void
.end method

.method public write([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :cond_0
    :goto_0
    if-lez p3, :cond_1

    .line 4
    iget-object v0, p0, Lcom/sunia/HTREnginev2/nzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 5
    iget-object v1, p0, Lcom/sunia/HTREnginev2/nzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    add-int/2addr p2, v0

    sub-int/2addr p3, v0

    .line 6
    iget-object v0, p0, Lcom/sunia/HTREnginev2/nzh;->i:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/nzh;->j()Z

    goto :goto_0

    :cond_1
    return-void
.end method
