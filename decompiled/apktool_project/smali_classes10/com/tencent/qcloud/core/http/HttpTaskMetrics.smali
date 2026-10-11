.class public Lcom/tencent/qcloud/core/http/HttpTaskMetrics;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private calculateMD5STookTime:J

.field private calculateMD5StartTime:J

.field connectAddress:Ljava/net/InetAddress;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field connectStartTimestamp:J

.field connectTookTime:J

.field dnsLookupTookTime:J

.field dnsStartTimestamp:J

.field domainName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private fullTaskStartTime:J

.field private fullTaskTookTime:J

.field private httpTaskStartTime:J

.field private httpTaskTookTime:J

.field private isClockSkewedRetry:Z

.field readResponseBodyStartTimestamp:J

.field readResponseBodyTookTime:J

.field readResponseHeaderStartTimestamp:J

.field readResponseHeaderTookTime:J

.field remoteAddress:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field requestBodyByteCount:J

.field responseBodyByteCount:J

.field private retryCount:I

.field secureConnectStartTimestamp:J

.field secureConnectTookTime:J

.field private signRequestStartTime:J

.field private signRequestTookTime:J

.field writeRequestBodyStartTimestamp:J

.field writeRequestBodyTookTime:J

.field writeRequestHeaderStartTimestamp:J

.field writeRequestHeaderTookTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createMetricsWithHost(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/HttpTaskMetrics;
    .locals 1

    new-instance v0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;-><init>()V

    iput-object p0, v0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->domainName:Ljava/lang/String;

    return-object v0
.end method

.method private toSeconds(J)D
    .locals 2

    long-to-double p0, p1

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    div-double/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public calculateMD5STookTime()D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->calculateMD5STookTime:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->toSeconds(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public connectTookTime()D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->connectTookTime:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->toSeconds(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public dnsLookupTookTime()D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->dnsLookupTookTime:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->toSeconds(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public fullTaskTookTime()D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->fullTaskTookTime:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->toSeconds(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public getConnectAddress()Ljava/net/InetAddress;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->connectAddress:Ljava/net/InetAddress;

    return-object p0
.end method

.method public getDomainName()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->domainName:Ljava/lang/String;

    return-object p0
.end method

.method public getRemoteAddress()Ljava/util/List;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->remoteAddress:Ljava/util/List;

    return-object p0
.end method

.method public getRetryCount()I
    .locals 0

    iget p0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->retryCount:I

    return p0
.end method

.method public httpTaskFullTime()D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->httpTaskTookTime:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->toSeconds(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public isClockSkewedRetry()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->isClockSkewedRetry:Z

    return p0
.end method

.method public declared-synchronized merge(Lcom/tencent/qcloud/core/http/HttpTaskMetrics;)Lcom/tencent/qcloud/core/http/HttpTaskMetrics;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->domainName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->domainName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->domainName:Ljava/lang/String;

    iget-object v1, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->domainName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object p0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->domainName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->domainName:Ljava/lang/String;

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->domainName:Ljava/lang/String;

    :cond_1
    iget-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->dnsLookupTookTime:J

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->dnsLookupTookTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->dnsLookupTookTime:J

    iget-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->connectTookTime:J

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->connectTookTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->connectTookTime:J

    iget-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->secureConnectTookTime:J

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->secureConnectTookTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->secureConnectTookTime:J

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->writeRequestHeaderTookTime:J

    iget-wide v2, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->writeRequestHeaderTookTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->writeRequestHeaderTookTime:J

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->writeRequestBodyTookTime:J

    iget-wide v2, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->writeRequestBodyTookTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->writeRequestBodyTookTime:J

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->readResponseHeaderTookTime:J

    iget-wide v2, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->readResponseHeaderTookTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->readResponseHeaderTookTime:J

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->readResponseBodyTookTime:J

    iget-wide v2, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->readResponseBodyTookTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->readResponseBodyTookTime:J

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->requestBodyByteCount:J

    iget-wide v2, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->requestBodyByteCount:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->requestBodyByteCount:J

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->responseBodyByteCount:J

    iget-wide v2, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->responseBodyByteCount:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->responseBodyByteCount:J

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->fullTaskTookTime:J

    iget-wide v2, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->fullTaskTookTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->fullTaskTookTime:J

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->httpTaskTookTime:J

    iget-wide v2, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->httpTaskTookTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->httpTaskTookTime:J

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->calculateMD5STookTime:J

    iget-wide v2, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->calculateMD5STookTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->calculateMD5STookTime:J

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->signRequestTookTime:J

    iget-wide v2, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->signRequestTookTime:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->signRequestTookTime:J

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->getRemoteAddress()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->getRemoteAddress()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->remoteAddress:Ljava/util/List;

    :cond_2
    iget-object v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->connectAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->getConnectAddress()Ljava/net/InetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->connectAddress:Ljava/net/InetAddress;

    :cond_3
    iget v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->retryCount:I

    iget v1, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->retryCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->retryCount:I

    iget-boolean v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->isClockSkewedRetry:Z

    if-nez v0, :cond_4

    iget-boolean p1, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->isClockSkewedRetry:Z

    iput-boolean p1, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->isClockSkewedRetry:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onCalculateMD5End()V
    .locals 6

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->calculateMD5STookTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->calculateMD5StartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->calculateMD5STookTime:J

    return-void
.end method

.method public onCalculateMD5Start()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->calculateMD5StartTime:J

    return-void
.end method

.method public onDataReady()V
    .locals 0

    return-void
.end method

.method public onHttpTaskEnd()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->httpTaskStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->httpTaskTookTime:J

    return-void
.end method

.method public onHttpTaskStart()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->httpTaskStartTime:J

    return-void
.end method

.method public onSignRequestEnd()V
    .locals 6

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->signRequestTookTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->signRequestStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->signRequestTookTime:J

    return-void
.end method

.method public onSignRequestStart()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->signRequestStartTime:J

    return-void
.end method

.method public onTaskEnd()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->fullTaskStartTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->fullTaskTookTime:J

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->onDataReady()V

    return-void
.end method

.method public onTaskStart()V
    .locals 2

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->fullTaskStartTime:J

    return-void
.end method

.method public readResponseBodyTookTime()D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->readResponseBodyTookTime:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->toSeconds(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public readResponseHeaderTookTime()D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->readResponseHeaderTookTime:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->toSeconds(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public recordConnectAddress(Ljava/net/InetAddress;)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->domainName:Ljava/lang/String;

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->connectAddress:Ljava/net/InetAddress;

    :cond_0
    return-void
.end method

.method public requestBodyByteCount()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->requestBodyByteCount:J

    return-wide v0
.end method

.method public responseBodyByteCount()J
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->responseBodyByteCount:J

    return-wide v0
.end method

.method public secureConnectTookTime()D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->secureConnectTookTime:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->toSeconds(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public setClockSkewedRetry(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->isClockSkewedRetry:Z

    return-void
.end method

.method public setDomainName(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->domainName:Ljava/lang/String;

    return-void
.end method

.method public setRetryCount(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->retryCount:I

    return-void
.end method

.method public signRequestTookTime()D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->signRequestTookTime:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->toSeconds(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Http Metrics: \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "domain : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->domainName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "connectAddress : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->connectAddress:Ljava/net/InetAddress;

    const-string v3, "null"

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "retryCount : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->retryCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "isClockSkewedRetry : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->isClockSkewedRetry:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dns : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->remoteAddress:Ljava/util/List;

    if-eqz v2, :cond_1

    move-object v3, v2

    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "fullTaskTookTime : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->fullTaskTookTime()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "httpTaskTookTime : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->httpTaskFullTime()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "calculateMD5STookTime : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->calculateMD5STookTime()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "signRequestTookTime : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->signRequestTookTime()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dnsStartTimestamp : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->dnsStartTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "dnsLookupTookTime : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->dnsLookupTookTime()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "connectStartTimestamp : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->connectStartTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "connectTookTime : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->connectTookTime()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "secureConnectStartTimestamp : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->secureConnectStartTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "secureConnectTookTime : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->secureConnectTookTime()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "writeRequestHeaderStartTimestamp : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->writeRequestHeaderStartTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "writeRequestHeaderTookTime : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->writeRequestHeaderTookTime()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "writeRequestBodyStartTimestamp : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->writeRequestBodyStartTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "writeRequestBodyTookTime : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->writeRequestBodyTookTime()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "readResponseHeaderStartTimestamp : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->readResponseHeaderStartTimestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "readResponseHeaderTookTime : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->readResponseHeaderTookTime()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "readResponseBodyStartTimestamp : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->readResponseBodyStartTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "readResponseBodyTookTime : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->readResponseBodyTookTime()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeRequestBodyTookTime()D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->writeRequestBodyTookTime:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->toSeconds(J)D

    move-result-wide v0

    return-wide v0
.end method

.method public writeRequestHeaderTookTime()D
    .locals 2

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->writeRequestHeaderTookTime:J

    invoke-direct {p0, v0, v1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->toSeconds(J)D

    move-result-wide v0

    return-wide v0
.end method
