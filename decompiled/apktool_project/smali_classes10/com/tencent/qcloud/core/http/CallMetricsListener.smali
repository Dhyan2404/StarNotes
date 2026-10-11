.class public Lcom/tencent/qcloud/core/http/CallMetricsListener;
.super Lokhttp3/EventListener;
.source "SourceFile"


# instance fields
.field private connectAddress:Ljava/net/InetAddress;

.field private connectStartTime:J

.field private connectStartTimestamp:J

.field private connectTookTime:J

.field private dnsInetAddressList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation
.end field

.field private dnsLookupTookTime:J

.field private dnsStartTime:J

.field private dnsStartTimestamp:J

.field private readResponseBodyStartTime:J

.field private readResponseBodyStartTimestamp:J

.field private readResponseBodyTookTime:J

.field private readResponseHeaderStartTime:J

.field private readResponseHeaderStartTimestamp:J

.field private readResponseHeaderTookTime:J

.field private requestBodyByteCount:J

.field private responseBodyByteCount:J

.field private secureConnectStartTime:J

.field private secureConnectStartTimestamp:J

.field private secureConnectTookTime:J

.field private writeRequestBodyStartTime:J

.field private writeRequestBodyStartTimestamp:J

.field private writeRequestBodyTookTime:J

.field private writeRequestHeaderStartTime:J

.field private writeRequestHeaderStartTimestamp:J

.field private writeRequestHeaderTookTime:J


# direct methods
.method public constructor <init>(Lokhttp3/Call;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/EventListener;-><init>()V

    return-void
.end method


# virtual methods
.method public connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Lokhttp3/EventListener;->connectEnd(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;)V

    iget-wide p3, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->connectTookTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->connectStartTime:J

    sub-long/2addr v0, v2

    add-long/2addr p3, v0

    iput-wide p3, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->connectTookTime:J

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->connectAddress:Ljava/net/InetAddress;

    :cond_0
    return-void
.end method

.method public connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V
    .locals 4

    invoke-super/range {p0 .. p5}, Lokhttp3/EventListener;->connectFailed(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;Lokhttp3/Protocol;Ljava/io/IOException;)V

    iget-wide p3, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->connectTookTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->connectStartTime:J

    sub-long/2addr v0, v2

    add-long/2addr p3, v0

    iput-wide p3, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->connectTookTime:J

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->connectAddress:Ljava/net/InetAddress;

    :cond_0
    return-void
.end method

.method public connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->connectStart(Lokhttp3/Call;Ljava/net/InetSocketAddress;Ljava/net/Proxy;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->connectStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->connectStartTimestamp:J

    return-void
.end method

.method public dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Call;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;)V"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->dnsEnd(Lokhttp3/Call;Ljava/lang/String;Ljava/util/List;)V

    new-instance p1, Ljava/lang/StringBuffer;

    const-string v0, "{"

    invoke-direct {p1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    if-eqz p3, :cond_0

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/InetAddress;

    invoke-virtual {v1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const-string v0, "}"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dns: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "QCloudHttp"

    invoke-static {v0, p1, p2}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide p1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->dnsLookupTookTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->dnsStartTime:J

    sub-long/2addr v0, v2

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->dnsLookupTookTime:J

    iput-object p3, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->dnsInetAddressList:Ljava/util/List;

    return-void
.end method

.method public dnsStart(Lokhttp3/Call;Ljava/lang/String;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->dnsStart(Lokhttp3/Call;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->dnsStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->dnsStartTimestamp:J

    return-void
.end method

.method public dumpDns()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->dnsInetAddressList:Ljava/util/List;

    return-object p0
.end method

.method public dumpMetrics(Lcom/tencent/qcloud/core/http/HttpTaskMetrics;)V
    .locals 4

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->connectAddress:Ljava/net/InetAddress;

    invoke-virtual {p1, v0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->recordConnectAddress(Ljava/net/InetAddress;)V

    iget-object v0, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->dnsInetAddressList:Ljava/util/List;

    iput-object v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->remoteAddress:Ljava/util/List;

    iget-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->dnsStartTimestamp:J

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->dnsStartTimestamp:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->dnsStartTimestamp:J

    iget-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->dnsLookupTookTime:J

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->dnsLookupTookTime:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->dnsLookupTookTime:J

    iget-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->connectStartTimestamp:J

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->connectStartTimestamp:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->connectStartTimestamp:J

    iget-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->connectTookTime:J

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->connectTookTime:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->connectTookTime:J

    iget-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->secureConnectStartTimestamp:J

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->secureConnectStartTimestamp:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->secureConnectStartTimestamp:J

    iget-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->secureConnectTookTime:J

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->secureConnectTookTime:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->secureConnectTookTime:J

    iget-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->writeRequestHeaderStartTimestamp:J

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->writeRequestHeaderStartTimestamp:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->writeRequestHeaderStartTimestamp:J

    iget-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->writeRequestHeaderTookTime:J

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->writeRequestHeaderTookTime:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->writeRequestHeaderTookTime:J

    iget-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->writeRequestBodyStartTimestamp:J

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->writeRequestBodyStartTimestamp:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->writeRequestBodyStartTimestamp:J

    iget-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->writeRequestBodyTookTime:J

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->writeRequestBodyTookTime:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->writeRequestBodyTookTime:J

    iget-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->readResponseHeaderStartTimestamp:J

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->readResponseHeaderStartTimestamp:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->readResponseHeaderStartTimestamp:J

    iget-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->readResponseHeaderTookTime:J

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->readResponseHeaderTookTime:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->readResponseHeaderTookTime:J

    iget-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->readResponseBodyStartTimestamp:J

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->readResponseBodyStartTimestamp:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->readResponseBodyStartTimestamp:J

    iget-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->readResponseBodyTookTime:J

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->readResponseBodyTookTime:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->readResponseBodyTookTime:J

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->requestBodyByteCount:J

    iput-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->requestBodyByteCount:J

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->responseBodyByteCount:J

    iput-wide v0, p1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->responseBodyByteCount:J

    return-void
.end method

.method public requestBodyEnd(Lokhttp3/Call;J)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->requestBodyEnd(Lokhttp3/Call;J)V

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->writeRequestBodyTookTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->writeRequestBodyStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->writeRequestBodyTookTime:J

    iput-wide p2, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->requestBodyByteCount:J

    return-void
.end method

.method public requestBodyStart(Lokhttp3/Call;)V
    .locals 2

    invoke-super {p0, p1}, Lokhttp3/EventListener;->requestBodyStart(Lokhttp3/Call;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->writeRequestBodyStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->writeRequestBodyStartTimestamp:J

    return-void
.end method

.method public requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->requestHeadersEnd(Lokhttp3/Call;Lokhttp3/Request;)V

    iget-wide p1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->writeRequestHeaderTookTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->writeRequestHeaderStartTime:J

    sub-long/2addr v0, v2

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->writeRequestHeaderTookTime:J

    return-void
.end method

.method public requestHeadersStart(Lokhttp3/Call;)V
    .locals 2

    invoke-super {p0, p1}, Lokhttp3/EventListener;->requestHeadersStart(Lokhttp3/Call;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->writeRequestHeaderStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->writeRequestHeaderStartTimestamp:J

    return-void
.end method

.method public responseBodyEnd(Lokhttp3/Call;J)V
    .locals 6

    invoke-super {p0, p1, p2, p3}, Lokhttp3/EventListener;->responseBodyEnd(Lokhttp3/Call;J)V

    iget-wide v0, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->readResponseBodyTookTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->readResponseBodyStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->readResponseBodyTookTime:J

    iput-wide p2, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->responseBodyByteCount:J

    return-void
.end method

.method public responseBodyStart(Lokhttp3/Call;)V
    .locals 2

    invoke-super {p0, p1}, Lokhttp3/EventListener;->responseBodyStart(Lokhttp3/Call;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->readResponseBodyStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->readResponseBodyStartTimestamp:J

    return-void
.end method

.method public responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->responseHeadersEnd(Lokhttp3/Call;Lokhttp3/Response;)V

    iget-wide p1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->readResponseHeaderTookTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->readResponseHeaderStartTime:J

    sub-long/2addr v0, v2

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->readResponseHeaderTookTime:J

    return-void
.end method

.method public responseHeadersStart(Lokhttp3/Call;)V
    .locals 2

    invoke-super {p0, p1}, Lokhttp3/EventListener;->responseHeadersStart(Lokhttp3/Call;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->readResponseHeaderStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->readResponseHeaderStartTimestamp:J

    return-void
.end method

.method public secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V
    .locals 4

    invoke-super {p0, p1, p2}, Lokhttp3/EventListener;->secureConnectEnd(Lokhttp3/Call;Lokhttp3/Handshake;)V

    iget-wide p1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->secureConnectTookTime:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->secureConnectStartTime:J

    sub-long/2addr v0, v2

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->secureConnectTookTime:J

    return-void
.end method

.method public secureConnectStart(Lokhttp3/Call;)V
    .locals 2

    invoke-super {p0, p1}, Lokhttp3/EventListener;->secureConnectStart(Lokhttp3/Call;)V

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->secureConnectStartTime:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->secureConnectStartTimestamp:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CallMetricsListener{dnsStartTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->dnsStartTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", dnsLookupTookTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->dnsLookupTookTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", connectTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->connectStartTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", connectTookTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->connectTookTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", secureConnectTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->secureConnectStartTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", secureConnectTookTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->secureConnectTookTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", writeRequestHeaderTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->writeRequestHeaderStartTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", writeRequestHeaderTookTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->writeRequestHeaderTookTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", writeRequestBodyTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->writeRequestBodyStartTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", writeRequestBodyTookTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->writeRequestBodyTookTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", readResponseHeaderTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->readResponseHeaderStartTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", readResponseHeaderTookTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->readResponseHeaderTookTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", readResponseBodyTimestamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->readResponseBodyStartTimestamp:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", readResponseBodyTookTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->readResponseBodyTookTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", inetAddressList="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->dnsInetAddressList:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", connectAddress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->connectAddress:Ljava/net/InetAddress;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", requestBodyByteCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->requestBodyByteCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", responseBodyByteCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/tencent/qcloud/core/http/CallMetricsListener;->responseBodyByteCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
