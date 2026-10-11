.class public final Lcom/twelvemonkeys/imageio/stream/SubImageInputStream;
.super Ljavax/imageio/stream/ImageInputStreamImpl;
.source "SourceFile"


# instance fields
.field public final e:Ljavax/imageio/stream/ImageInputStream;

.field public final f:J

.field public final g:J


# direct methods
.method public constructor <init>(Ljavax/imageio/stream/ImageInputStream;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;-><init>()V

    const-string v0, "stream"

    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "length < 0: %d"

    invoke-static {v0, v1, v2}, Lcom/twelvemonkeys/lang/Validate;->isTrue(ZLjava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/twelvemonkeys/imageio/stream/SubImageInputStream;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {p1}, Ljavax/imageio/stream/ImageInputStream;->getStreamPosition()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twelvemonkeys/imageio/stream/SubImageInputStream;->f:J

    iput-wide p2, p0, Lcom/twelvemonkeys/imageio/stream/SubImageInputStream;->g:J

    return-void
.end method


# virtual methods
.method public finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method public length()J
    .locals 6

    const-wide/16 v0, -0x1

    :try_start_0
    iget-object v2, p0, Lcom/twelvemonkeys/imageio/stream/SubImageInputStream;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v2}, Ljavax/imageio/stream/ImageInputStream;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/twelvemonkeys/imageio/stream/SubImageInputStream;->f:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcom/twelvemonkeys/imageio/stream/SubImageInputStream;->g:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
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
    iget-wide v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    iget-wide v2, p0, Lcom/twelvemonkeys/imageio/stream/SubImageInputStream;->g:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/twelvemonkeys/imageio/stream/SubImageInputStream;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0}, Ljavax/imageio/stream/ImageInputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1

    .line 3
    iget-wide v1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    :cond_1
    return v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    iget-wide v0, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    iget-wide v2, p0, Lcom/twelvemonkeys/imageio/stream/SubImageInputStream;->g:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    int-to-long v4, p3

    sub-long/2addr v2, v0

    .line 5
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 6
    iget-object v0, p0, Lcom/twelvemonkeys/imageio/stream/SubImageInputStream;->e:Ljavax/imageio/stream/ImageInputStream;

    invoke-interface {v0, p1, p2, p3}, Ljavax/imageio/stream/ImageInputStream;->read([BII)I

    move-result p1

    if-ltz p1, :cond_1

    .line 7
    iget-wide p2, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    :cond_1
    return p1
.end method

.method public seek(J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/imageio/stream/ImageInputStreamImpl;->getFlushedPosition()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/twelvemonkeys/imageio/stream/SubImageInputStream;->e:Ljavax/imageio/stream/ImageInputStream;

    iget-wide v1, p0, Lcom/twelvemonkeys/imageio/stream/SubImageInputStream;->f:J

    add-long/2addr v1, p1

    invoke-interface {v0, v1, v2}, Ljavax/imageio/stream/ImageInputStream;->seek(J)V

    iput-wide p1, p0, Ljavax/imageio/stream/ImageInputStreamImpl;->streamPos:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "pos < flushedPosition"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
