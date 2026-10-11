.class Lcom/tencent/qcloud/core/http/CountingInputStream;
.super Ljava/io/FilterInputStream;
.source "SourceFile"


# instance fields
.field private bytesTotal:J

.field private bytesWritten:J

.field private mark:J

.field private progressListener:Lcom/tencent/qcloud/core/common/QCloudProgressListener;

.field private recentReportBytes:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;JLcom/tencent/qcloud/core/common/QCloudProgressListener;)V
    .locals 2

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/CountingInputStream;->bytesWritten:J

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/CountingInputStream;->recentReportBytes:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/CountingInputStream;->mark:J

    iput-wide p2, p0, Lcom/tencent/qcloud/core/http/CountingInputStream;->bytesTotal:J

    iput-object p4, p0, Lcom/tencent/qcloud/core/http/CountingInputStream;->progressListener:Lcom/tencent/qcloud/core/common/QCloudProgressListener;

    return-void
.end method

.method private reportProgress()V
    .locals 7

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/CountingInputStream;->progressListener:Lcom/tencent/qcloud/core/common/QCloudProgressListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v1, p0, Lcom/tencent/qcloud/core/http/CountingInputStream;->bytesWritten:J

    iget-wide v3, p0, Lcom/tencent/qcloud/core/http/CountingInputStream;->recentReportBytes:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0xc800

    cmp-long v5, v3, v5

    if-gtz v5, :cond_2

    const-wide/16 v5, 0xa

    mul-long/2addr v3, v5

    iget-wide v5, p0, Lcom/tencent/qcloud/core/http/CountingInputStream;->bytesTotal:J

    cmp-long v3, v3, v5

    if-gtz v3, :cond_2

    cmp-long v3, v1, v5

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_3

    iput-wide v1, p0, Lcom/tencent/qcloud/core/http/CountingInputStream;->recentReportBytes:J

    iget-wide v3, p0, Lcom/tencent/qcloud/core/http/CountingInputStream;->bytesTotal:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tencent/qcloud/core/common/QCloudProgressListener;->onProgress(JJ)V

    :cond_3
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

    invoke-super {p0}, Ljava/io/FilterInputStream;->close()V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    const-string v0, "Test"

    const-string v1, "CountingInputStream is closed"

    invoke-static {v0, v1, p0}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getBytesTotal()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/CountingInputStream;->bytesTotal:J

    return-wide v0
.end method

.method public getTotalTransferred()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/CountingInputStream;->bytesWritten:J

    return-wide v0
.end method

.method public declared-synchronized mark(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Ljava/io/FilterInputStream;->mark(I)V

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/CountingInputStream;->bytesWritten:J

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/CountingInputStream;->mark:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Ljava/io/FilterInputStream;->read([BII)I

    move-result p1

    if-lez p1, :cond_0

    int-to-long p2, p1

    invoke-virtual {p0, p2, p3}, Lcom/tencent/qcloud/core/http/CountingInputStream;->readBytesInternal(J)V

    :cond_0
    return p1
.end method

.method public readBytesInternal(J)V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/CountingInputStream;->bytesWritten:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/CountingInputStream;->bytesWritten:J

    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/CountingInputStream;->reportProgress()V

    return-void
.end method

.method public declared-synchronized reset()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/CountingInputStream;->mark:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljava/io/FilterInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/CountingInputStream;->mark:J

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/CountingInputStream;->bytesWritten:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not set"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Mark not supported"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/tencent/qcloud/core/http/CountingInputStream;->readBytesInternal(J)V

    return-wide p1
.end method
