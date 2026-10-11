.class public abstract Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;
.super Lcom/twelvemonkeys/io/SeekableInputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;
    }
.end annotation


# instance fields
.field public h:Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;

.field protected final stream:Ljava/io/InputStream;

.field protected streamPosition:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;)V
    .locals 1

    invoke-direct {p0}, Lcom/twelvemonkeys/io/SeekableInputStream;-><init>()V

    const-string v0, "stream"

    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "cache"

    invoke-static {p2, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->stream:Ljava/io/InputStream;

    iput-object p2, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->h:Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;

    return-void
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->streamPosition:J

    iget-wide v2, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    sub-long/2addr v0, v2

    iget-object p0, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->stream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result p0

    int-to-long v2, p0

    add-long/2addr v0, v2

    const-wide/32 v2, 0x7fffffff

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const p0, 0x7fffffff

    goto :goto_0

    :cond_0
    long-to-int p0, v0

    :goto_0
    return p0
.end method

.method public closeImpl()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->h:Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;

    iget-wide v1, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    invoke-virtual {v0, v1, v2}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;->a(J)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->h:Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;

    iget-object p0, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->stream:Ljava/io/InputStream;

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    return-void
.end method

.method public flushBeforeImpl(J)V
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->h:Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;->a(J)V

    return-void
.end method

.method public final getCache()Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;
    .locals 0

    iget-object p0, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->h:Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;

    return-object p0
.end method

.method public final isCached()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract isCachedFile()Z
.end method

.method public abstract isCachedMemory()Z
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableInputStream;->checkOpen()V

    .line 2
    iget-wide v0, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    iget-wide v2, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->streamPosition:J

    cmp-long v0, v0, v2

    const-wide/16 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->read()I

    move-result v0

    if-ltz v0, :cond_1

    .line 4
    iget-wide v3, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->streamPosition:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->streamPosition:J

    .line 5
    iget-object v3, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->h:Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;

    invoke-virtual {v3, v0}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;->f(I)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->syncPosition()V

    .line 7
    iget-object v0, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->h:Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;

    invoke-virtual {v0}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;->c()I

    move-result v0

    :cond_1
    :goto_0
    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    .line 8
    iget-wide v3, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    :cond_2
    return v0
.end method

.method public read([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableInputStream;->checkOpen()V

    .line 10
    iget-wide v0, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    iget-wide v2, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->streamPosition:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-lez p3, :cond_1

    .line 12
    iget-wide v0, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->streamPosition:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->streamPosition:J

    .line 13
    iget-object v0, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->h:Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;->g([BII)V

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->syncPosition()V

    .line 15
    iget-object v0, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->h:Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;

    invoke-virtual {v0, p1, p2, p3}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;->d([BII)I

    move-result p3

    :cond_1
    :goto_0
    if-lez p3, :cond_2

    .line 16
    iget-wide p1, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    :cond_2
    return p3
.end method

.method public seekImpl(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->streamPosition:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_5

    iget-object v0, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->h:Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;

    invoke-virtual {v0}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->streamPosition:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->h:Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;

    invoke-virtual {v0, v2, v3}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;->e(J)V

    :cond_0
    iget-wide v0, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->streamPosition:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x400

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    const/16 v0, 0x400

    goto :goto_0

    :cond_1
    long-to-int v0, p1

    :goto_0
    new-array v1, v0, [B

    :cond_2
    :goto_1
    const-wide/16 v2, 0x0

    cmp-long v2, p1, v2

    if-lez v2, :cond_6

    int-to-long v2, v0

    cmp-long v2, v2, p1

    if-gez v2, :cond_3

    move v2, v0

    goto :goto_2

    :cond_3
    long-to-int v2, p1

    :goto_2
    iget-object v3, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->stream:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_4

    iget-object v3, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->h:Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;

    invoke-virtual {v3, v1, v4, v2}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;->g([BII)V

    iget-wide v3, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->streamPosition:J

    int-to-long v5, v2

    add-long/2addr v3, v5

    iput-wide v3, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->streamPosition:J

    sub-long/2addr p1, v5

    goto :goto_1

    :cond_4
    if-gez v2, :cond_2

    goto :goto_3

    :cond_5
    iget-object p0, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->h:Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;

    invoke-virtual {p0, p1, p2}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;->e(J)V

    :cond_6
    :goto_3
    return-void
.end method

.method public final syncPosition()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->h:Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;

    invoke-virtual {v0}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->h:Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;

    invoke-virtual {p0, v2, v3}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;->e(J)V

    :cond_0
    return-void
.end method
