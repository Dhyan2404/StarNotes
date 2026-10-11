.class public final Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;
.super Ljavax/imageio/stream/ImageInputStreamImpl;
.source "SourceFile"

# interfaces
.implements Ljavax/imageio/stream/ImageInputStream;


# static fields
.field public static final g:I = 0x2000


# instance fields
.field public e:Ljavax/imageio/stream/ImageInputStream;

.field public f:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljavax/imageio/stream/ImageInputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0x2000

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;-><init>(Ljavax/imageio/stream/ImageInputStream;I)V

    return-void
.end method

.method public constructor <init>(Ljavax/imageio/stream/ImageInputStream;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;-><init>()V

    const-string v0, "stream"

    .line 3
    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/imageio/stream/ImageInputStream;

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->e:Ljavax/imageio/stream/ImageInputStream;

    .line 4
    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    iput-wide v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    .line 5
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->f:Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    .line 6
    invoke-virtual {p1, p0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->e:Ljavax/imageio/stream/ImageInputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->e:Ljavax/imageio/stream/ImageInputStream;

    iput-object v0, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->f:Ljava/nio/ByteBuffer;

    :cond_0
    invoke-super {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->close()V

    return-void
.end method

.method public final e0()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->e:Ljavax/imageio/stream/ImageInputStream;

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    iget-object v2, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/Buffer;->capacity()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v2}, Ljavax/imageio/stream/ImageInputStream;->read([BII)I

    move-result v0

    if-ltz v0, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    goto :goto_0

    :catch_0
    move-exception p0

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    throw p0

    :cond_0
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    :goto_0
    return-void
.end method

.method public final f0([BII)I
    .locals 2

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    iget-object v0, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->remaining()I

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    if-lez p3, :cond_1

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1, v0, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->f:Ljava/nio/ByteBuffer;

    add-int/2addr v0, p3

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    :cond_1
    iget-wide p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    return p3
.end method

.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->finalize()V

    return-void
.end method

.method public flushBefore(J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p0, p1, p2}, Ljavax/imageio/stream/ImageInputStream;->flushBefore(J)V

    return-void
.end method

.method public final g0([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->e:Ljavax/imageio/stream/ImageInputStream;

    iget-object v1, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    invoke-static {v1, p3}, Ljava/lang/Math;->min(II)I

    move-result p3

    invoke-interface {v0, p1, p2, p3}, Ljavax/imageio/stream/ImageInputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_0

    iget-wide p2, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    :cond_0
    return p1
.end method

.method public getFlushedPosition()J
    .locals 2

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->getFlushedPosition()J

    move-result-wide v0

    return-wide v0
.end method

.method public isCached()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->isCached()Z

    move-result p0

    return p0
.end method

.method public isCachedFile()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->isCachedFile()Z

    move-result p0

    return p0
.end method

.method public isCachedMemory()Z
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->isCachedMemory()Z

    move-result p0

    return p0
.end method

.method public length()J
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p0}, Ljavax/imageio/stream/ImageInputStream;->length()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->e0()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    .line 5
    iget-wide v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    .line 6
    iget-object p0, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->f:Ljava/nio/ByteBuffer;

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

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    .line 8
    iget-object v0, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    iget-object v0, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->f:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->capacity()I

    move-result v0

    if-lt p3, v0, :cond_0

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->g0([BII)I

    move-result p0

    return p0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->e0()V

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->f0([BII)I

    move-result p0

    return p0
.end method

.method public seek(J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0, p1, p2}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iget-object p1, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->f:Ljava/nio/ByteBuffer;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/twelvemonkeys/imageio/stream/BufferedImageInputStream;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide p1

    iput-wide p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    return-void
.end method
