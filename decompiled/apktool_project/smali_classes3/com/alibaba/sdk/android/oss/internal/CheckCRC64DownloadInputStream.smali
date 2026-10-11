.class public Lcom/alibaba/sdk/android/oss/internal/CheckCRC64DownloadInputStream;
.super Ljava/util/zip/CheckedInputStream;
.source "SourceFile"


# instance fields
.field public e:J

.field public f:J

.field public g:J

.field public h:Ljava/lang/String;

.field public i:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;JJLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/util/zip/CheckedInputStream;-><init>(Ljava/io/InputStream;Ljava/util/zip/Checksum;)V

    iput-wide p3, p0, Lcom/alibaba/sdk/android/oss/internal/CheckCRC64DownloadInputStream;->f:J

    iput-wide p5, p0, Lcom/alibaba/sdk/android/oss/internal/CheckCRC64DownloadInputStream;->g:J

    iput-object p7, p0, Lcom/alibaba/sdk/android/oss/internal/CheckCRC64DownloadInputStream;->h:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final f(I)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/internal/CheckCRC64DownloadInputStream;->e:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/internal/CheckCRC64DownloadInputStream;->e:J

    iget-wide v2, p0, Lcom/alibaba/sdk/android/oss/internal/CheckCRC64DownloadInputStream;->f:J

    cmp-long p1, v0, v2

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Ljava/util/zip/CheckedInputStream;->getChecksum()Ljava/util/zip/Checksum;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/alibaba/sdk/android/oss/internal/CheckCRC64DownloadInputStream;->i:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/internal/CheckCRC64DownloadInputStream;->g:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-object p0, p0, Lcom/alibaba/sdk/android/oss/internal/CheckCRC64DownloadInputStream;->h:Ljava/lang/String;

    invoke-static {p1, v0, p0}, Lcom/alibaba/sdk/android/oss/common/utils/OSSUtils;->checkChecksum(Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public getClientCRC64()J
    .locals 2

    iget-wide v0, p0, Lcom/alibaba/sdk/android/oss/internal/CheckCRC64DownloadInputStream;->i:J

    return-wide v0
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Ljava/util/zip/CheckedInputStream;->read()I

    move-result v0

    .line 2
    invoke-virtual {p0, v0}, Lcom/alibaba/sdk/android/oss/internal/CheckCRC64DownloadInputStream;->f(I)V

    return v0
.end method

.method public read([BII)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3
    invoke-super {p0, p1, p2, p3}, Ljava/util/zip/CheckedInputStream;->read([BII)I

    move-result p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/alibaba/sdk/android/oss/internal/CheckCRC64DownloadInputStream;->f(I)V

    return p1
.end method
