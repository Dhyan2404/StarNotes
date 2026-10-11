.class Lcom/tencent/qcloud/core/http/CountingSink;
.super Lokio/ForwardingSink;
.source "SourceFile"


# instance fields
.field private bytesTotal:J

.field private bytesWritten:J

.field private lastTimeBytesWritten:J

.field private progressListener:Lcom/tencent/qcloud/core/common/QCloudProgressListener;

.field private recentReportBytes:J


# direct methods
.method public constructor <init>(Lokio/Sink;JJLcom/tencent/qcloud/core/common/QCloudProgressListener;)V
    .locals 2

    .line 7
    invoke-direct {p0, p1}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/CountingSink;->bytesWritten:J

    .line 9
    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/CountingSink;->recentReportBytes:J

    .line 10
    iput-wide p2, p0, Lcom/tencent/qcloud/core/http/CountingSink;->bytesTotal:J

    .line 11
    iput-wide p4, p0, Lcom/tencent/qcloud/core/http/CountingSink;->lastTimeBytesWritten:J

    .line 12
    iput-object p6, p0, Lcom/tencent/qcloud/core/http/CountingSink;->progressListener:Lcom/tencent/qcloud/core/common/QCloudProgressListener;

    return-void
.end method

.method public constructor <init>(Lokio/Sink;JLcom/tencent/qcloud/core/common/QCloudProgressListener;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/CountingSink;->lastTimeBytesWritten:J

    .line 3
    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/CountingSink;->bytesWritten:J

    .line 4
    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/CountingSink;->recentReportBytes:J

    .line 5
    iput-wide p2, p0, Lcom/tencent/qcloud/core/http/CountingSink;->bytesTotal:J

    .line 6
    iput-object p4, p0, Lcom/tencent/qcloud/core/http/CountingSink;->progressListener:Lcom/tencent/qcloud/core/common/QCloudProgressListener;

    return-void
.end method

.method private reportProgress()V
    .locals 7

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/CountingSink;->progressListener:Lcom/tencent/qcloud/core/common/QCloudProgressListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v1, p0, Lcom/tencent/qcloud/core/http/CountingSink;->bytesWritten:J

    iget-wide v3, p0, Lcom/tencent/qcloud/core/http/CountingSink;->recentReportBytes:J

    sub-long v3, v1, v3

    const-wide/32 v5, 0xc800

    cmp-long v5, v3, v5

    if-gtz v5, :cond_2

    const-wide/16 v5, 0xa

    mul-long/2addr v3, v5

    iget-wide v5, p0, Lcom/tencent/qcloud/core/http/CountingSink;->bytesTotal:J

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

    iput-wide v1, p0, Lcom/tencent/qcloud/core/http/CountingSink;->recentReportBytes:J

    iget-wide v3, p0, Lcom/tencent/qcloud/core/http/CountingSink;->lastTimeBytesWritten:J

    add-long/2addr v1, v3

    iget-wide v5, p0, Lcom/tencent/qcloud/core/http/CountingSink;->bytesTotal:J

    add-long/2addr v3, v5

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/tencent/qcloud/core/common/QCloudProgressListener;->onProgress(JJ)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getBytesWritten()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/CountingSink;->bytesWritten:J

    return-wide v0
.end method

.method public getTotalTransferred()J
    .locals 4

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/CountingSink;->bytesWritten:J

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/CountingSink;->lastTimeBytesWritten:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public write(Lokio/Buffer;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    invoke-virtual {p0, p2, p3}, Lcom/tencent/qcloud/core/http/CountingSink;->writeBytesInternal(J)V

    return-void
.end method

.method public writeBytesInternal(J)V
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/CountingSink;->bytesWritten:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/CountingSink;->bytesWritten:J

    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/CountingSink;->reportProgress()V

    return-void
.end method
