.class public final Lcom/twelvemonkeys/io/FileCacheSeekableStream;
.super Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twelvemonkeys/io/FileCacheSeekableStream$a;
    }
.end annotation


# instance fields
.field public i:[B


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "iocache"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/twelvemonkeys/io/FileCacheSeekableStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/twelvemonkeys/io/FileCacheSeekableStream$a;

    invoke-direct {v0, p2}, Lcom/twelvemonkeys/io/FileCacheSeekableStream$a;-><init>(Ljava/io/File;)V

    invoke-direct {p0, p1, v0}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;-><init>(Ljava/io/InputStream;Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;)V

    const/16 p1, 0x400

    new-array p1, p1, [B

    .line 5
    iput-object p1, p0, Lcom/twelvemonkeys/io/FileCacheSeekableStream;->i:[B

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/twelvemonkeys/io/FileCacheSeekableStream;-><init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/File;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljava/io/File;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "stream"

    .line 3
    invoke-static {p1, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/InputStream;

    invoke-static {p2, p3}, Lcom/twelvemonkeys/io/FileCacheSeekableStream;->f(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/twelvemonkeys/io/FileCacheSeekableStream;-><init>(Ljava/io/InputStream;Ljava/io/File;)V

    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "tempBaseName"

    invoke-static {p0, v0}, Lcom/twelvemonkeys/lang/Validate;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->deleteOnExit()V

    return-object p0
.end method


# virtual methods
.method public bridge synthetic available()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->available()I

    move-result p0

    return p0
.end method

.method public closeImpl()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->closeImpl()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twelvemonkeys/io/FileCacheSeekableStream;->i:[B

    return-void
.end method

.method public final isCachedFile()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final isCachedMemory()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final j([BII)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->stream:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p3

    if-lez p3, :cond_0

    iget-wide v0, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->streamPosition:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->streamPosition:J

    invoke-virtual {p0}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->getCache()Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;->g([BII)V

    :cond_0
    return p3
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

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/twelvemonkeys/io/FileCacheSeekableStream;->i:[B

    array-length v1, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2, v1}, Lcom/twelvemonkeys/io/FileCacheSeekableStream;->j([BII)I

    move-result v0

    if-ltz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/twelvemonkeys/io/FileCacheSeekableStream;->i:[B

    aget-byte v0, v0, v2

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->syncPosition()V

    .line 6
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->getCache()Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;->c()I

    move-result v0

    :cond_1
    :goto_0
    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 7
    iget-wide v1, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    :cond_2
    return v0
.end method

.method public read([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/SeekableInputStream;->checkOpen()V

    .line 9
    iget-wide v0, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    iget-wide v2, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->streamPosition:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p0, p1, p2, p3}, Lcom/twelvemonkeys/io/FileCacheSeekableStream;->j([BII)I

    move-result p1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->syncPosition()V

    .line 12
    invoke-virtual {p0}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->getCache()Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;

    move-result-object v0

    int-to-long v1, p3

    iget-wide v3, p0, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream;->streamPosition:J

    iget-wide v5, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int p3, v1

    invoke-virtual {v0, p1, p2, p3}, Lcom/twelvemonkeys/io/AbstractCachedSeekableStream$StreamCache;->d([BII)I

    move-result p1

    :goto_0
    if-lez p1, :cond_1

    .line 13
    iget-wide p2, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/twelvemonkeys/io/SeekableInputStream;->e:J

    :cond_1
    return p1
.end method
