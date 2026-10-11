.class public Lcom/tencent/qcloud/core/http/ResponseInputStreamConverter;
.super Lcom/tencent/qcloud/core/http/ResponseBodyConverter;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/qcloud/core/http/ProgressBody;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tencent/qcloud/core/http/ResponseBodyConverter<",
        "TT;>;",
        "Lcom/tencent/qcloud/core/http/ProgressBody;"
    }
.end annotation


# instance fields
.field private countingInputStream:Lcom/tencent/qcloud/core/http/CountingInputStream;

.field protected isQuic:Z

.field protected progressListener:Lcom/tencent/qcloud/core/common/QCloudProgressListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/ResponseBodyConverter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/tencent/qcloud/core/http/ResponseInputStreamConverter;->isQuic:Z

    return-void
.end method


# virtual methods
.method public convert(Lcom/tencent/qcloud/core/http/HttpResponse;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/http/HttpResponse<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;,
            Lcom/tencent/qcloud/core/common/QCloudServiceException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/qcloud/core/http/ResponseInputStreamConverter;->isQuic:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-static {p1}, Lcom/tencent/qcloud/core/http/HttpResponse;->checkResponseSuccessful(Lcom/tencent/qcloud/core/http/HttpResponse;)V

    const-string v0, "Content-Range"

    invoke-virtual {p1, v0}, Lcom/tencent/qcloud/core/http/HttpResponse;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qcloud/core/util/QCloudHttpUtils;->parseContentRange(Ljava/lang/String;)[J

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    const/4 v4, 0x0

    aget-wide v4, v0, v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpResponse;->contentLength()J

    move-result-wide v2

    :goto_0
    new-instance v0, Lcom/tencent/qcloud/core/http/CountingInputStream;

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpResponse;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    iget-object v4, p0, Lcom/tencent/qcloud/core/http/ResponseInputStreamConverter;->progressListener:Lcom/tencent/qcloud/core/common/QCloudProgressListener;

    invoke-direct {v0, p1, v2, v3, v4}, Lcom/tencent/qcloud/core/http/CountingInputStream;-><init>(Ljava/io/InputStream;JLcom/tencent/qcloud/core/common/QCloudProgressListener;)V

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/ResponseInputStreamConverter;->countingInputStream:Lcom/tencent/qcloud/core/http/CountingInputStream;

    return-object v1
.end method

.method public enableQuic(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qcloud/core/http/ResponseInputStreamConverter;->isQuic:Z

    return-void
.end method

.method public getBytesTotal()J
    .locals 2

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/ResponseInputStreamConverter;->countingInputStream:Lcom/tencent/qcloud/core/http/CountingInputStream;

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/CountingInputStream;->getBytesTotal()J

    move-result-wide v0

    return-wide v0
.end method

.method public getBytesTransferred()J
    .locals 2

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/ResponseInputStreamConverter;->countingInputStream:Lcom/tencent/qcloud/core/http/CountingInputStream;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/CountingInputStream;->getTotalTransferred()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/ResponseInputStreamConverter;->countingInputStream:Lcom/tencent/qcloud/core/http/CountingInputStream;

    return-object p0
.end method

.method public getProgressListener()Lcom/tencent/qcloud/core/common/QCloudProgressListener;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/ResponseInputStreamConverter;->progressListener:Lcom/tencent/qcloud/core/common/QCloudProgressListener;

    return-object p0
.end method

.method public setProgressListener(Lcom/tencent/qcloud/core/common/QCloudProgressListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/ResponseInputStreamConverter;->progressListener:Lcom/tencent/qcloud/core/common/QCloudProgressListener;

    return-void
.end method
