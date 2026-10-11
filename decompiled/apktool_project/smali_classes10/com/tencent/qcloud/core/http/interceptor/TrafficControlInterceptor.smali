.class public Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor$ModerateTrafficStrategy;,
        Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor$AggressiveTrafficStrategy;,
        Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor$TrafficStrategy;,
        Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor$ResizableSemaphore;
    }
.end annotation


# instance fields
.field private downloadTrafficStrategy:Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor$TrafficStrategy;

.field private uploadTrafficStrategy:Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor$TrafficStrategy;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor$ModerateTrafficStrategy;

    const-string v1, "UploadStrategy-"

    sget v2, Lcom/tencent/qcloud/core/task/TaskExecutors;->UPLOAD_THREAD_COUNT:I

    invoke-direct {v0, v1, v2}, Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor$ModerateTrafficStrategy;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor;->uploadTrafficStrategy:Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor$TrafficStrategy;

    new-instance v0, Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor$AggressiveTrafficStrategy;

    const-string v1, "DownloadStrategy-"

    sget v2, Lcom/tencent/qcloud/core/task/TaskExecutors;->DOWNLOAD_THREAD_COUNT:I

    invoke-direct {v0, v1, v2}, Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor$AggressiveTrafficStrategy;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor;->downloadTrafficStrategy:Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor$TrafficStrategy;

    return-void
.end method

.method private getAverageStreamingSpeed(Lcom/tencent/qcloud/core/http/HttpTask;J)D
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long p0, p2, v0

    if-nez p0, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTask;->getTransferBodySize()J

    move-result-wide p0

    long-to-double p0, p0

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    div-double/2addr p0, v0

    long-to-double p2, p2

    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p2, v0

    div-double/2addr p0, p2

    return-wide p0
.end method

.method private getSuitableStrategy(Lcom/tencent/qcloud/core/http/HttpTask;)Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor$TrafficStrategy;
    .locals 2

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/task/QCloudTask;->isEnableTraffic()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTask;->isDownloadTask()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor;->downloadTrafficStrategy:Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor$TrafficStrategy;

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTask;->isUploadTask()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor;->uploadTrafficStrategy:Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor$TrafficStrategy;

    return-object p0

    :cond_2
    return-object v1
.end method

.method private processRequest(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;)Lokhttp3/Response;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1, p2}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    invoke-static {}, Lcom/tencent/qcloud/core/task/TaskManager;->getInstance()Lcom/tencent/qcloud/core/task/TaskManager;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/Request;->tag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/tencent/qcloud/core/task/TaskManager;->get(Ljava/lang/String;)Lcom/tencent/qcloud/core/task/QCloudTask;

    move-result-object v1

    check-cast v1, Lcom/tencent/qcloud/core/http/HttpTask;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lcom/tencent/qcloud/core/task/QCloudTask;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-direct {p0, v1}, Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor;->getSuitableStrategy(Lcom/tencent/qcloud/core/http/HttpTask;)Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor$TrafficStrategy;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor$TrafficStrategy;->waitForPermit()V

    :cond_0
    const-string v3, " %s begin to execute"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    const-string v5, "QCloudHttp"

    invoke-static {v5, v3, v4}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x0

    :try_start_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-direct {p0, p1, v0}, Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor;->processRequest(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Lcom/tencent/qcloud/core/common/QCloudClientException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lcom/tencent/qcloud/core/common/QCloudServiceException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    invoke-virtual {v1}, Lcom/tencent/qcloud/core/http/HttpTask;->isDownloadTask()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v1, p1}, Lcom/tencent/qcloud/core/http/HttpTask;->convertResponse(Lokhttp3/Response;)V

    :cond_1
    if-eqz v2, :cond_3

    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v6

    if-eqz v6, :cond_2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-direct {p0, v1, v3, v4}, Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor;->getAverageStreamingSpeed(Lcom/tencent/qcloud/core/http/HttpTask;J)D

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor$TrafficStrategy;->reportSpeed(Lokhttp3/Request;D)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v0, v3}, Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor$TrafficStrategy;->reportException(Lokhttp3/Request;Ljava/io/IOException;)V
    :try_end_1
    .catch Lcom/tencent/qcloud/core/common/QCloudClientException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/tencent/qcloud/core/common/QCloudServiceException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_0
    return-object p1

    :catch_0
    move-exception p0

    move-object v3, p1

    goto :goto_1

    :catch_1
    move-exception p0

    move-object v3, p1

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v3, p1

    goto :goto_3

    :catch_3
    move-exception p0

    move-object v3, p1

    goto :goto_4

    :catch_4
    move-exception p0

    :goto_1
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_5
    move-exception p0

    :goto_2
    move-object p1, p0

    goto :goto_5

    :catch_6
    move-exception p0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    goto :goto_2

    :cond_4
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    goto :goto_5

    :catch_7
    move-exception p0

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Ljava/io/IOException;

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Ljava/io/IOException;

    goto :goto_2

    :cond_5
    new-instance p1, Ljava/io/IOException;

    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    :goto_5
    if-eqz v2, :cond_7

    invoke-static {p1}, Lcom/tencent/qcloud/core/http/HttpUtil;->isNetworkTimeoutError(Ljava/lang/Exception;)Z

    move-result p0

    if-eqz p0, :cond_6

    invoke-virtual {v2, v0}, Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor$TrafficStrategy;->reportTimeOut(Lokhttp3/Request;)V

    goto :goto_6

    :cond_6
    invoke-virtual {v2, v0, p1}, Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor$TrafficStrategy;->reportException(Lokhttp3/Request;Ljava/io/IOException;)V

    :cond_7
    :goto_6
    if-eqz v3, :cond_8

    invoke-virtual {v3}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p0

    if-eqz p0, :cond_8

    invoke-virtual {v3}, Lokhttp3/Response;->close()V

    :cond_8
    throw p1

    :cond_9
    new-instance p0, Ljava/io/IOException;

    const-string p1, "CANCELED"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
