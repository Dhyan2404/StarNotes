.class public Lcom/tencent/qcloud/core/http/OkHttpProxy;
.super Lcom/tencent/qcloud/core/http/NetworkProxy;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/tencent/qcloud/core/http/NetworkProxy<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private eventListenerFiled:Ljava/lang/reflect/Field;

.field private httpCall:Lokhttp3/Call;

.field private okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0

    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/NetworkProxy;-><init>()V

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/OkHttpProxy;->okHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method

.method private isCosResponse(Lokhttp3/Response;)Z
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "Server"

    invoke-virtual {p1, p0}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "tencent-cos"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private recordDns(Ljava/lang/String;Lcom/tencent/qcloud/core/http/CallMetricsListener;)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/tencent/qcloud/core/http/CallMetricsListener;->dumpDns()Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/tencent/qcloud/core/http/ConnectionRepository;->getInstance()Lcom/tencent/qcloud/core/http/ConnectionRepository;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/tencent/qcloud/core/http/ConnectionRepository;->insertDnsRecordCache(Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/OkHttpProxy;->httpCall:Lokhttp3/Call;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lokhttp3/Call;->cancel()V

    :cond_0
    return-void
.end method

.method public convertResponse(Lcom/tencent/qcloud/core/http/HttpRequest;Lokhttp3/Response;)Lcom/tencent/qcloud/core/http/HttpResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/http/HttpRequest<",
            "TT;>;",
            "Lokhttp3/Response;",
            ")",
            "Lcom/tencent/qcloud/core/http/HttpResult<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;,
            Lcom/tencent/qcloud/core/common/QCloudServiceException;
        }
    .end annotation

    new-instance v0, Lcom/tencent/qcloud/core/http/HttpResponse;

    invoke-direct {v0, p1, p2}, Lcom/tencent/qcloud/core/http/HttpResponse;-><init>(Lcom/tencent/qcloud/core/http/HttpRequest;Lokhttp3/Response;)V

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpRequest;->getResponseBodyConverter()Lcom/tencent/qcloud/core/http/ResponseBodyConverter;

    move-result-object p1

    instance-of p2, p1, Lcom/tencent/qcloud/core/http/ProgressBody;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lcom/tencent/qcloud/core/http/ProgressBody;

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/NetworkProxy;->mProgressListener:Lcom/tencent/qcloud/core/common/QCloudProgressListener;

    invoke-interface {p2, p0}, Lcom/tencent/qcloud/core/http/ProgressBody;->setProgressListener(Lcom/tencent/qcloud/core/common/QCloudProgressListener;)V

    :cond_0
    invoke-virtual {p1, v0}, Lcom/tencent/qcloud/core/http/ResponseBodyConverter;->convert(Lcom/tencent/qcloud/core/http/HttpResponse;)Ljava/lang/Object;

    move-result-object p0

    new-instance p1, Lcom/tencent/qcloud/core/http/HttpResult;

    invoke-direct {p1, v0, p0}, Lcom/tencent/qcloud/core/http/HttpResult;-><init>(Lcom/tencent/qcloud/core/http/HttpResponse;Ljava/lang/Object;)V

    return-object p1
.end method

.method public executeHttpRequest(Lcom/tencent/qcloud/core/http/HttpRequest;)Lcom/tencent/qcloud/core/http/HttpResult;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/http/HttpRequest<",
            "TT;>;)",
            "Lcom/tencent/qcloud/core/http/HttpResult<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;,
            Lcom/tencent/qcloud/core/common/QCloudServiceException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpRequest;->getResponseBodyConverter()Lcom/tencent/qcloud/core/http/ResponseBodyConverter;

    move-result-object v0

    instance-of v0, v0, Lcom/tencent/qcloud/core/http/SelfCloseConverter;

    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/tencent/qcloud/core/http/NetworkProxy;->identifier:Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/tencent/qcloud/core/http/HttpRequest;->setOkHttpRequestTag(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/tencent/qcloud/core/http/HttpRequest;->buildRealRequest()Lokhttp3/Request;

    move-result-object v2

    iget-object v3, p0, Lcom/tencent/qcloud/core/http/OkHttpProxy;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v3, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qcloud/core/http/OkHttpProxy;->httpCall:Lokhttp3/Call;

    iget-object v3, p0, Lcom/tencent/qcloud/core/http/OkHttpProxy;->eventListenerFiled:Ljava/lang/reflect/Field;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "eventListener"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/tencent/qcloud/core/http/OkHttpProxy;->eventListenerFiled:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V

    iget-object v2, p0, Lcom/tencent/qcloud/core/http/OkHttpProxy;->eventListenerFiled:Ljava/lang/reflect/Field;

    iget-object v3, p0, Lcom/tencent/qcloud/core/http/OkHttpProxy;->httpCall:Lokhttp3/Call;

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/qcloud/core/http/CallMetricsListener;
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :cond_0
    move-object v2, v1

    :goto_0
    :try_start_2
    iget-object v3, p0, Lcom/tencent/qcloud/core/http/OkHttpProxy;->httpCall:Lokhttp3/Call;

    invoke-interface {v3}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v3
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_1

    :try_start_3
    iget-object v4, p0, Lcom/tencent/qcloud/core/http/NetworkProxy;->metrics:Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    invoke-virtual {v2, v4}, Lcom/tencent/qcloud/core/http/CallMetricsListener;->dumpMetrics(Lcom/tencent/qcloud/core/http/HttpTaskMetrics;)V

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {p0, p1, v3}, Lcom/tencent/qcloud/core/http/OkHttpProxy;->convertResponse(Lcom/tencent/qcloud/core/http/HttpRequest;Lokhttp3/Response;)Lcom/tencent/qcloud/core/http/HttpResult;

    move-result-object p0

    move-object p1, p0

    move-object p0, v1

    goto :goto_2

    :cond_2
    new-instance p0, Lcom/tencent/qcloud/core/common/QCloudServiceException;

    const-string p1, "http response is null"

    invoke-direct {p0, p1}, Lcom/tencent/qcloud/core/common/QCloudServiceException;-><init>(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object p1, v1

    :goto_2
    if-eqz v3, :cond_6

    if-nez v0, :cond_6

    invoke-static {v3}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_6

    :catchall_0
    move-exception p0

    goto :goto_7

    :catch_2
    move-exception p0

    move-object v3, v1

    :goto_3
    :try_start_4
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/tencent/qcloud/core/common/QCloudClientException;

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    :goto_4
    move-object p1, v1

    goto :goto_5

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lcom/tencent/qcloud/core/common/QCloudServiceException;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/common/QCloudServiceException;

    move-object p1, p0

    move-object p0, v1

    goto :goto_5

    :cond_4
    new-instance p1, Lcom/tencent/qcloud/core/common/QCloudClientException;

    invoke-direct {p1, p0}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object p0, p1

    goto :goto_4

    :goto_5
    if-eqz v3, :cond_5

    if-nez v0, :cond_5

    invoke-static {v3}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_5
    move-object v5, v1

    move-object v1, p0

    move-object p0, p1

    move-object p1, v5

    :cond_6
    :goto_6
    if-nez v1, :cond_8

    if-nez p0, :cond_7

    return-object p1

    :cond_7
    throw p0

    :cond_8
    throw v1

    :catchall_1
    move-exception p0

    move-object v1, v3

    :goto_7
    if-eqz v1, :cond_9

    if-nez v0, :cond_9

    invoke-static {v1}, Lcom/tencent/qcloud/core/util/OkhttpInternalUtils;->closeQuietly(Ljava/io/Closeable;)V

    :cond_9
    throw p0
.end method
