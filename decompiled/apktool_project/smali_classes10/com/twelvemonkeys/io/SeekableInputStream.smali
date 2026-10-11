.class public abstract Lcom/twelvemonkeys/io/SeekableInputStream;
.super Ljava/io/InputStream;
.source "SourceFile"

# interfaces
.implements Lcom/twelvemonkeys/io/Seekable;


# instance fields
.field public e:J

.field public f:J

.field public g:Z

.field protected markedPositions:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->markedPositions:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public final checkOpen()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean p0, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->g:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "closed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableInputStream;->checkOpen()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->g:Z

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableInputStream;->closeImpl()V

    return-void
.end method

.method public abstract closeImpl()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->g:Z

    if-nez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public final flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->f:J

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/io/SeekableInputStream;->flushBefore(J)V

    return-void
.end method

.method public final flushBefore(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->f:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_1

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableInputStream;->getStreamPosition()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableInputStream;->checkOpen()V

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/io/SeekableInputStream;->flushBeforeImpl(J)V

    iput-wide p1, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->f:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "position > stream position"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "position < flushedPosition"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract flushBeforeImpl(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final getFlushedPosition()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableInputStream;->checkOpen()V

    iget-wide v0, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->f:J

    return-wide v0
.end method

.method public final getStreamPosition()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableInputStream;->checkOpen()V

    iget-wide v0, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    return-wide v0
.end method

.method public final mark()V
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->markedPositions:Ljava/util/Stack;

    iget-wide v1, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final mark(I)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableInputStream;->mark()V

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    int-to-long v2, p1

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->f:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/io/SeekableInputStream;->flushBefore(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public final markSupported()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    array-length v0, p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    return p0
.end method

.method public final reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableInputStream;->checkOpen()V

    iget-object v0, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->markedPositions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->markedPositions:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->f:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/io/SeekableInputStream;->seek(J)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Previous marked position has been discarded"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/twelvemonkeys/io/SeekableInputStream;->seek(J)V

    :goto_0
    return-void
.end method

.method public final seek(J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableInputStream;->checkOpen()V

    iget-wide v0, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->f:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/io/SeekableInputStream;->seekImpl(J)V

    iput-wide p1, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    const-string p1, "position < flushedPosition"

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public abstract seekImpl(J)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final skip(J)J
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    add-long v2, v0, p1

    iget-wide v4, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->f:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_2

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v4

    if-lez v4, :cond_0

    int-to-long p1, v4

    add-long/2addr p1, v0

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/io/SeekableInputStream;->seek(J)V

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x200

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    const-wide/16 v2, -0x200

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    long-to-int p1, p1

    :goto_0
    if-lez p1, :cond_1

    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result p2

    if-ltz p2, :cond_1

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    :goto_1
    iget-wide p0, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    sub-long/2addr p0, v0

    return-wide p0

    :cond_2
    new-instance p0, Ljava/io/IOException;

    const-string p1, "position < flushedPosition"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
