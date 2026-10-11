.class public final Lcom/tencent/cos/xml/crypto/InputSubstream;
.super Lcom/tencent/cos/xml/crypto/SdkFilterInputStream;
.source "SourceFile"


# static fields
.field private static final MAX_SKIPS:I = 0x64


# instance fields
.field private final closeSourceStream:Z

.field private currentPosition:J

.field private markedPosition:J

.field private final requestedLength:J

.field private final requestedOffset:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JJZ)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/crypto/SdkFilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/cos/xml/crypto/InputSubstream;->markedPosition:J

    iput-wide v0, p0, Lcom/tencent/cos/xml/crypto/InputSubstream;->currentPosition:J

    iput-wide p4, p0, Lcom/tencent/cos/xml/crypto/InputSubstream;->requestedLength:J

    iput-wide p2, p0, Lcom/tencent/cos/xml/crypto/InputSubstream;->requestedOffset:J

    iput-boolean p6, p0, Lcom/tencent/cos/xml/crypto/InputSubstream;->closeSourceStream:Z

    return-void
.end method


# virtual methods
.method public available()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/tencent/cos/xml/crypto/InputSubstream;->currentPosition:J

    iget-wide v2, p0, Lcom/tencent/cos/xml/crypto/InputSubstream;->requestedOffset:J

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    iget-wide v0, p0, Lcom/tencent/cos/xml/crypto/InputSubstream;->requestedLength:J

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/tencent/cos/xml/crypto/InputSubstream;->requestedLength:J

    add-long/2addr v4, v2

    sub-long v0, v4, v0

    :goto_0
    invoke-super {p0}, Lcom/tencent/cos/xml/crypto/SdkFilterInputStream;->available()I

    move-result p0

    int-to-long v2, p0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/cos/xml/crypto/InputSubstream;->closeSourceStream:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/tencent/cos/xml/crypto/SdkFilterInputStream;->close()V

    :cond_0
    return-void
.end method

.method public getWrappedInputStream()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    return-object p0
.end method

.method public declared-synchronized mark(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/tencent/cos/xml/crypto/InputSubstream;->currentPosition:J

    iput-wide v0, p0, Lcom/tencent/cos/xml/crypto/InputSubstream;->markedPosition:J

    invoke-super {p0, p1}, Lcom/tencent/cos/xml/crypto/SdkFilterInputStream;->mark(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [B

    const/4 v2, 0x0

    .line 1
    invoke-virtual {p0, v1, v2, v0}, Lcom/tencent/cos/xml/crypto/InputSubstream;->read([BII)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_0

    return p0

    :cond_0
    aget-byte p0, v1, v2

    return p0
.end method

.method public read([BII)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-wide v1, p0, Lcom/tencent/cos/xml/crypto/InputSubstream;->currentPosition:J

    iget-wide v3, p0, Lcom/tencent/cos/xml/crypto/InputSubstream;->requestedOffset:J

    cmp-long v5, v1, v3

    const-wide/16 v6, 0x0

    if-gez v5, :cond_2

    sub-long/2addr v3, v1

    .line 3
    invoke-super {p0, v3, v4}, Lcom/tencent/cos/xml/crypto/SdkFilterInputStream;->skip(J)J

    move-result-wide v1

    cmp-long v3, v1, v6

    if-nez v3, :cond_1

    add-int/lit8 v0, v0, 0x1

    const/16 v3, 0x64

    if-gt v0, v3, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    new-instance p1, Ljava/io/IOException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to position the currentPosition from "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tencent/cos/xml/crypto/InputSubstream;->currentPosition:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/tencent/cos/xml/crypto/InputSubstream;->requestedOffset:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    :goto_1
    iget-wide v3, p0, Lcom/tencent/cos/xml/crypto/InputSubstream;->currentPosition:J

    add-long/2addr v3, v1

    iput-wide v3, p0, Lcom/tencent/cos/xml/crypto/InputSubstream;->currentPosition:J

    goto :goto_0

    .line 6
    :cond_2
    iget-wide v8, p0, Lcom/tencent/cos/xml/crypto/InputSubstream;->requestedLength:J

    add-long/2addr v8, v3

    sub-long/2addr v8, v1

    cmp-long v0, v8, v6

    if-gtz v0, :cond_3

    const/4 p0, -0x1

    return p0

    :cond_3
    int-to-long v0, p3

    .line 7
    invoke-static {v0, v1, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int p3, v0

    .line 8
    invoke-super {p0, p1, p2, p3}, Lcom/tencent/cos/xml/crypto/SdkFilterInputStream;->read([BII)I

    move-result p1

    .line 9
    iget-wide p2, p0, Lcom/tencent/cos/xml/crypto/InputSubstream;->currentPosition:J

    int-to-long v0, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Lcom/tencent/cos/xml/crypto/InputSubstream;->currentPosition:J

    return p1
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
    iget-wide v0, p0, Lcom/tencent/cos/xml/crypto/InputSubstream;->markedPosition:J

    iput-wide v0, p0, Lcom/tencent/cos/xml/crypto/InputSubstream;->currentPosition:J

    invoke-super {p0}, Lcom/tencent/cos/xml/crypto/SdkFilterInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
