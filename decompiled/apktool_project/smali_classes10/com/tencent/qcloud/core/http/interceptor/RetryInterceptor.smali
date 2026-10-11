.class public Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;
    }
.end annotation


# static fields
.field private static final MIN_CLOCK_SKEWED_OFFSET:I = 0x258

.field private static volatile hostReliables:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private additionComputer:Lcom/tencent/qcloud/core/task/RetryStrategy$WeightAndReliableAddition;

.field private retryStrategy:Lcom/tencent/qcloud/core/task/RetryStrategy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->hostReliables:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Lcom/tencent/qcloud/core/task/RetryStrategy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/tencent/qcloud/core/task/RetryStrategy$WeightAndReliableAddition;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/task/RetryStrategy$WeightAndReliableAddition;-><init>()V

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->additionComputer:Lcom/tencent/qcloud/core/task/RetryStrategy$WeightAndReliableAddition;

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->retryStrategy:Lcom/tencent/qcloud/core/task/RetryStrategy;

    return-void
.end method

.method private buildNewRangeRequest(Lokhttp3/Request;J)Lokhttp3/Request;
    .locals 10

    const-string p0, "Range"

    invoke-virtual {p1, p0}, Lokhttp3/Request;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, ""

    const/4 v3, 0x1

    const-wide/16 v4, -0x1

    if-eqz v0, :cond_2

    const-string v6, "bytes="

    invoke-virtual {v0, v6, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "-"

    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    if-lez v6, :cond_0

    :try_start_0
    aget-object v6, v0, v1

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    move-wide v6, v4

    :goto_0
    array-length v8, v0

    if-le v8, v3, :cond_1

    :try_start_1
    aget-object v0, v0, v3

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    move-wide v8, v4

    goto :goto_1

    :cond_2
    move-wide v6, v4

    move-wide v8, v6

    :goto_1
    cmp-long v0, v6, v4

    if-eqz v0, :cond_3

    add-long/2addr p2, v6

    :cond_3
    invoke-virtual {p1}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {p1}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object p1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    aput-object p2, v6, v1

    cmp-long p2, v8, v4

    if-nez p2, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    :goto_2
    aput-object v2, v6, v3

    const-string p2, "bytes=%s-%s"

    invoke-static {p2, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Lokhttp3/Headers$Builder;->set(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    invoke-virtual {p1}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object p0

    invoke-virtual {v0, p0}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method private decreaseHostAccess(Ljava/lang/String;)V
    .locals 2

    sget-object p0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->hostReliables:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;->access$200(Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->hostReliables:Ljava/util/Map;

    new-instance v0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;-><init>(Ljava/lang/String;Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$1;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private executeTaskOnce(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Lcom/tencent/qcloud/core/http/HttpTask;)Lokhttp3/Response;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p3}, Lcom/tencent/qcloud/core/task/QCloudTask;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lcom/tencent/qcloud/core/http/HttpTask;->isResponseFilePathConverter()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p3}, Lcom/tencent/qcloud/core/http/HttpTask;->getTransferBodySize()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-lez p3, :cond_0

    invoke-direct {p0, p2, v0, v1}, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->buildNewRangeRequest(Lokhttp3/Request;J)Lokhttp3/Request;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->processSingleRequest(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/io/IOException;

    const-string p1, "CANCELED"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Ljava/net/ProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p3, "HTTP 204 had non-zero Content-Length: "

    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    new-instance p1, Lokhttp3/Response$Builder;

    invoke-direct {p1}, Lokhttp3/Response$Builder;-><init>()V

    invoke-virtual {p1, p2}, Lokhttp3/Response$Builder;->request(Lokhttp3/Request;)Lokhttp3/Response$Builder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lokhttp3/Response$Builder;->message(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object p0

    const/16 p1, 0xcc

    invoke-virtual {p0, p1}, Lokhttp3/Response$Builder;->code(I)Lokhttp3/Response$Builder;

    move-result-object p0

    sget-object p1, Lokhttp3/Protocol;->HTTP_1_1:Lokhttp3/Protocol;

    invoke-virtual {p0, p1}, Lokhttp3/Response$Builder;->protocol(Lokhttp3/Protocol;)Lokhttp3/Response$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    throw p0
.end method

.method private getHostReliable(Ljava/lang/String;)I
    .locals 0

    sget-object p0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->hostReliables:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;->access$300(Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x2

    return p0
.end method

.method private increaseHostReliable(Ljava/lang/String;)V
    .locals 2

    sget-object p0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->hostReliables:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;->access$000(Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;)V

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->hostReliables:Ljava/util/Map;

    new-instance v0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$HostReliable;-><init>(Ljava/lang/String;Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor$1;)V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private isRecoverable(Ljava/io/IOException;)Z
    .locals 1

    instance-of p0, p1, Ljava/net/ProtocolException;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    instance-of p0, p1, Ljava/io/InterruptedIOException;

    if-eqz p0, :cond_1

    instance-of p0, p1, Ljava/net/SocketTimeoutException;

    return p0

    :cond_1
    instance-of p0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Ljava/security/cert/CertificateException;

    if-eqz p0, :cond_2

    return v0

    :cond_2
    instance-of p0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p0, :cond_3

    return v0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method private isUserCancelled(Ljava/io/IOException;)Z
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "canceled"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shouldRetry(Lokhttp3/Request;Lokhttp3/Response;IIJLjava/io/IOException;I)Z
    .locals 6

    invoke-direct {p0, p7}, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->isUserCancelled(Ljava/io/IOException;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->getHostReliable(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->additionComputer:Lcom/tencent/qcloud/core/task/RetryStrategy$WeightAndReliableAddition;

    invoke-virtual {v2, p4, v0}, Lcom/tencent/qcloud/core/task/RetryStrategy$WeightAndReliableAddition;->getRetryAddition(II)I

    move-result v2

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v4, p4, v0, v5}, [Ljava/lang/Object;

    move-result-object p4

    const-string v0, "attempts = %d, weight = %d, reliable = %d, addition = %d"

    invoke-static {v3, v0, p4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    new-array v0, v1, [Ljava/lang/Object;

    const-string v3, "QCloudHttp"

    invoke-static {v3, p4, v0}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p4, p0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->retryStrategy:Lcom/tencent/qcloud/core/task/RetryStrategy;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long/2addr v3, p5

    invoke-virtual {p4, p3, v3, v4, v2}, Lcom/tencent/qcloud/core/task/RetryStrategy;->shouldRetry(IJI)Z

    move-result p3

    if-nez p3, :cond_1

    return v1

    :cond_1
    iget-object p3, p0, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->retryStrategy:Lcom/tencent/qcloud/core/task/RetryStrategy;

    invoke-virtual {p3}, Lcom/tencent/qcloud/core/task/RetryStrategy;->getQCloudHttpRetryHandler()Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;

    move-result-object p3

    invoke-virtual {p3, p1, p2, p7}, Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;->shouldRetry(Lokhttp3/Request;Lokhttp3/Response;Ljava/lang/Exception;)Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x1

    if-eqz p7, :cond_3

    invoke-direct {p0, p7}, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->isRecoverable(Ljava/io/IOException;)Z

    move-result p0

    if-eqz p0, :cond_3

    return p1

    :cond_3
    const/16 p0, 0x1f4

    if-eq p8, p0, :cond_4

    const/16 p0, 0x1f6

    if-eq p8, p0, :cond_4

    const/16 p0, 0x1f7

    if-eq p8, p0, :cond_4

    const/16 p0, 0x1f8

    if-ne p8, p0, :cond_5

    :cond_4
    move v1, p1

    :cond_5
    return v1
.end method


# virtual methods
.method public getClockSkewError(Lokhttp3/Response;I)Ljava/lang/String;
    .locals 3

    const-string p0, "RequestTimeTooSkewed"

    if-eqz p1, :cond_2

    const/16 v0, 0x193

    if-ne p2, v0, :cond_2

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object p2

    sget-object v0, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p2, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "HEAD"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, "RequestIsExpired"

    if-eqz p2, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object p1

    const-wide v1, 0x7fffffffffffffffL

    invoke-interface {p1, v1, v2}, Lokio/BufferedSource;->request(J)Z

    invoke-interface {p1}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object p1

    invoke-virtual {p1}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object p1

    const-string p2, "UTF-8"

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "<Code>(RequestTimeTooSkewed|AccessDenied)</Code>"

    invoke-static {p2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object p2

    const-string v1, "<Message>Request has expired</Message>"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    invoke-virtual {v1, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    invoke-virtual {p2, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object p0

    :cond_1
    const-string p0, "AccessDenied"

    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_2

    return-object v0

    :catch_0
    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
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

    invoke-virtual {p0, p1, v0, v1}, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->processRequest(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Lcom/tencent/qcloud/core/http/HttpTask;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method public processRequest(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Lcom/tencent/qcloud/core/http/HttpTask;)Lokhttp3/Response;
    .locals 19
    .param p3    # Lcom/tencent/qcloud/core/http/HttpTask;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v10, p0

    move-object/from16 v11, p2

    if-eqz p3, :cond_13

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/qcloud/core/task/QCloudTask;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/qcloud/core/task/QCloudTask;->isDomainSwitch()Z

    move-result v0

    const/4 v12, 0x0

    if-eqz v0, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/qcloud/core/http/HttpTask;->isSelfSigner()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual/range {p2 .. p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/qcloud/core/util/DomainSwitchUtils;->isMyqcloudUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    invoke-direct/range {p0 .. p3}, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->executeTaskOnce(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Lcom/tencent/qcloud/core/http/HttpTask;)Lokhttp3/Response;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v1}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "x-cos-request-id"

    invoke-virtual {v1, v0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lcom/tencent/qcloud/core/common/DomainSwitchException;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/common/DomainSwitchException;-><init>()V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object v1, v12

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    instance-of v2, v2, Lcom/tencent/qcloud/core/common/QCloudServiceException;

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lcom/tencent/qcloud/core/common/QCloudServiceException;

    invoke-virtual {v0}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->getRequestId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/tencent/qcloud/core/common/DomainSwitchException;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/common/DomainSwitchException;-><init>()V

    throw v0

    :cond_2
    move-object v1, v12

    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v13

    const/4 v15, 0x0

    move v0, v15

    :goto_2
    iget-object v2, v10, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->retryStrategy:Lcom/tencent/qcloud/core/task/RetryStrategy;

    invoke-virtual {v2, v0}, Lcom/tencent/qcloud/core/task/RetryStrategy;->getNextDelay(I)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-lez v4, :cond_4

    :try_start_2
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    :cond_4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v11, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v9, "QCloudHttp"

    const-string v3, "%s start to execute, attempts is %d"

    invoke-static {v9, v3, v2}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/qcloud/core/http/HttpTask;->metrics()Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2, v0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->setRetryCount(I)V

    :cond_5
    add-int/lit8 v8, v0, 0x1

    const/4 v2, 0x1

    if-ne v8, v2, :cond_6

    if-eqz v1, :cond_6

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    :try_start_3
    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    :cond_7
    invoke-direct/range {p0 .. p3}, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->executeTaskOnce(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Lcom/tencent/qcloud/core/http/HttpTask;)Lokhttp3/Response;

    move-result-object v0

    move-object v1, v0

    :goto_3
    invoke-virtual {v1}, Lokhttp3/Response;->code()I

    move-result v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_3

    move v6, v0

    move-object v7, v1

    :goto_4
    move-object v0, v12

    goto :goto_5

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "cannot make a new request because the previous response is still open: please call response.close()"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    :cond_8
    :try_start_4
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_4

    :catch_4
    if-eqz v1, :cond_9

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v1}, Lokhttp3/Response;->close()V

    :cond_9
    invoke-direct/range {p0 .. p3}, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->executeTaskOnce(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;Lcom/tencent/qcloud/core/http/HttpTask;)Lokhttp3/Response;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    move-object v7, v0

    move v6, v1

    goto :goto_4

    :cond_a
    throw v0

    :catch_5
    move-exception v0

    instance-of v3, v0, Lcom/tencent/qcloud/core/common/DomainSwitchException;

    if-nez v3, :cond_12

    const/4 v3, -0x1

    move-object v7, v1

    move v6, v3

    :goto_5
    if-eqz v7, :cond_b

    const-string v1, "Server"

    invoke-virtual {v7, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "tencent-cos"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    const-string v1, "Date"

    invoke-virtual {v7, v1}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "serverDate is %s"

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v9, v3, v4}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    :cond_b
    move-object v1, v12

    :goto_6
    if-nez v0, :cond_d

    invoke-virtual {v7}, Lokhttp3/Response;->isSuccessful()Z

    move-result v3

    if-eqz v3, :cond_d

    if-eqz v1, :cond_c

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    const/16 v4, 0x258

    invoke-static {v1, v3, v4}, Lcom/tencent/qcloud/core/http/HttpConfiguration;->calculateGlobalTimeOffset(Ljava/lang/String;Ljava/util/Date;I)V

    :cond_c
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->increaseHostReliable(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->retryStrategy:Lcom/tencent/qcloud/core/task/RetryStrategy;

    invoke-virtual {v1, v2, v12}, Lcom/tencent/qcloud/core/task/RetryStrategy;->onTaskEnd(ZLjava/lang/Exception;)V

    goto :goto_7

    :cond_d
    invoke-virtual {v10, v7, v6}, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->getClockSkewError(Lokhttp3/Response;I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_f

    const-string v3, "%s failed for %s"

    filled-new-array {v11, v2}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v9, v3, v4}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_e

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v3}, Lcom/tencent/qcloud/core/http/HttpConfiguration;->calculateGlobalTimeOffset(Ljava/lang/String;Ljava/util/Date;)J

    move-result-wide v3

    const-wide/16 v5, 0x2

    cmp-long v1, v3, v5

    if-lez v1, :cond_e

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Lcom/tencent/qcloud/core/common/QCloudServiceException;

    const-string v3, "client clock skewed"

    invoke-direct {v1, v3}, Lcom/tencent/qcloud/core/common/QCloudServiceException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/tencent/qcloud/core/common/QCloudServiceException;->setErrorCode(Ljava/lang/String;)Lcom/tencent/qcloud/core/common/QCloudServiceException;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    :cond_e
    :goto_7
    move-object/from16 v16, v7

    goto :goto_8

    :cond_f
    invoke-virtual/range {p3 .. p3}, Lcom/tencent/qcloud/core/task/QCloudTask;->getWeight()I

    move-result v5

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object v3, v7

    move v4, v8

    move/from16 v17, v6

    move-object/from16 v16, v7

    move-wide v6, v13

    move/from16 v18, v8

    move-object v8, v0

    move-object v12, v9

    move/from16 v9, v17

    invoke-direct/range {v1 .. v9}, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->shouldRetry(Lokhttp3/Request;Lokhttp3/Response;IIJLjava/io/IOException;I)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual/range {p3 .. p3}, Lcom/tencent/qcloud/core/task/QCloudTask;->isCanceled()Z

    move-result v1

    if-nez v1, :cond_10

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v11, v0, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s failed for %s, code is %d"

    invoke-static {v12, v2, v1}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, v10, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->retryStrategy:Lcom/tencent/qcloud/core/task/RetryStrategy;

    invoke-virtual {v1, v15, v0}, Lcom/tencent/qcloud/core/task/RetryStrategy;->onTaskEnd(ZLjava/lang/Exception;)V

    move-object/from16 v1, v16

    move/from16 v0, v18

    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_10
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v11, v0, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s ends for %s, code is %d"

    invoke-static {v12, v2, v1}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_8
    if-nez v0, :cond_11

    return-object v16

    :cond_11
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v10, v1}, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->decreaseHostAccess(Ljava/lang/String;)V

    iget-object v1, v10, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;->retryStrategy:Lcom/tencent/qcloud/core/task/RetryStrategy;

    invoke-virtual {v1, v15, v0}, Lcom/tencent/qcloud/core/task/RetryStrategy;->onTaskEnd(ZLjava/lang/Exception;)V

    throw v0

    :cond_12
    throw v0

    :cond_13
    new-instance v0, Ljava/io/IOException;

    const-string v1, "CANCELED"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public processSingleRequest(Lokhttp3/Interceptor$Chain;Lokhttp3/Request;)Lokhttp3/Response;
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
