.class public Ljavax/imageio/stream/MemoryCacheImageOutputStream;
.super Ljavax/imageio/stream/ImageOutputStreamImpl;
.source "SourceFile"


# instance fields
.field public e:Ljava/io/OutputStream;

.field public f:Lcom/sunia/HTREnginev2/amj;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljavax/imageio/stream/ImageOutputStreamImpl;-><init>()V

    new-instance v0, Lcom/sunia/HTREnginev2/amj;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/amj;-><init>()V

    iput-object v0, p0, Ljavax/imageio/stream/MemoryCacheImageOutputStream;->f:Lcom/sunia/HTREnginev2/amj;

    if-eqz p1, :cond_0

    iput-object p1, p0, Ljavax/imageio/stream/MemoryCacheImageOutputStream;->e:Ljava/io/OutputStream;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "stream == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/imageio/stream/MemoryCacheImageOutputStream;->f:Lcom/sunia/HTREnginev2/amj;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/amj;->c()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/stream/ImageInputStreamImpl;->seek(J)V

    invoke-virtual {p0, v0, v1}, Ljavax/imageio/stream/MemoryCacheImageOutputStream;->flushBefore(J)V

    invoke-super {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->close()V

    iget-object v0, p0, Ljavax/imageio/stream/MemoryCacheImageOutputStream;->f:Lcom/sunia/HTREnginev2/amj;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/amj;->h()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/imageio/stream/MemoryCacheImageOutputStream;->f:Lcom/sunia/HTREnginev2/amj;

    iput-object v0, p0, Ljavax/imageio/stream/MemoryCacheImageOutputStream;->e:Ljava/io/OutputStream;

    return-void
.end method

.method public flushBefore(J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v2, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    invoke-super {p0, p1, p2}, Ljavax/imageio/stream/ImageInputStreamImpl;->flushBefore(J)V

    iget-wide p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    sub-long v4, p1, v2

    iget-object v0, p0, Ljavax/imageio/stream/MemoryCacheImageOutputStream;->f:Lcom/sunia/HTREnginev2/amj;

    iget-object v1, p0, Ljavax/imageio/stream/MemoryCacheImageOutputStream;->e:Ljava/io/OutputStream;

    invoke-virtual/range {v0 .. v5}, Lcom/sunia/HTREnginev2/amj;->k(Ljava/io/OutputStream;JJ)V

    iget-object p1, p0, Ljavax/imageio/stream/MemoryCacheImageOutputStream;->f:Lcom/sunia/HTREnginev2/amj;

    iget-wide v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->flushedPos:J

    invoke-virtual {p1, v0, v1}, Lcom/sunia/HTREnginev2/amj;->a(J)V

    iget-object p0, p0, Ljavax/imageio/stream/MemoryCacheImageOutputStream;->e:Ljava/io/OutputStream;

    invoke-virtual {p0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public isCached()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isCachedFile()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCachedMemory()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public length()J
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    iget-object p0, p0, Ljavax/imageio/stream/MemoryCacheImageOutputStream;->f:Lcom/sunia/HTREnginev2/amj;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/amj;->c()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    .line 3
    iget-object v0, p0, Ljavax/imageio/stream/MemoryCacheImageOutputStream;->f:Lcom/sunia/HTREnginev2/amj;

    iget-wide v1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    invoke-virtual {v0, v1, v2}, Lcom/sunia/HTREnginev2/amj;->f(J)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 4
    iget-wide v1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    :cond_0
    return v0
.end method

.method public read([BII)I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->checkClosed()V

    if-eqz p1, :cond_3

    if-ltz p2, :cond_2

    if-ltz p3, :cond_2

    add-int v0, p2, p3

    .line 6
    array-length v1, p1

    if-gt v0, v1, :cond_2

    if-ltz v0, :cond_2

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->bitOffset:I

    if-nez p3, :cond_0

    return v0

    .line 8
    :cond_0
    iget-object v0, p0, Ljavax/imageio/stream/MemoryCacheImageOutputStream;->f:Lcom/sunia/HTREnginev2/amj;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/amj;->c()J

    move-result-wide v0

    iget-wide v2, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    int-to-long v2, p3

    .line 9
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 10
    iget-object v2, p0, Ljavax/imageio/stream/MemoryCacheImageOutputStream;->f:Lcom/sunia/HTREnginev2/amj;

    iget-wide v6, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lcom/sunia/HTREnginev2/amj;->g([BIIJ)V

    .line 11
    iget-wide p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    return p3

    .line 12
    :cond_2
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "off < 0 || len < 0 || off+len > b.length || off+len < 0!"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 13
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "b == null!"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public write(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljavax/imageio/stream/ImageOutputStreamImpl;->flushBits()V

    .line 2
    iget-object v0, p0, Ljavax/imageio/stream/MemoryCacheImageOutputStream;->f:Lcom/sunia/HTREnginev2/amj;

    iget-wide v1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    invoke-virtual {v0, p1, v1, v2}, Lcom/sunia/HTREnginev2/amj;->i(IJ)V

    .line 3
    iget-wide v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    return-void
.end method

.method public write([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0}, Ljavax/imageio/stream/ImageOutputStreamImpl;->flushBits()V

    .line 5
    iget-object v0, p0, Ljavax/imageio/stream/MemoryCacheImageOutputStream;->f:Lcom/sunia/HTREnginev2/amj;

    iget-wide v4, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sunia/HTREnginev2/amj;->j([BIIJ)V

    .line 6
    iget-wide p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    return-void
.end method
