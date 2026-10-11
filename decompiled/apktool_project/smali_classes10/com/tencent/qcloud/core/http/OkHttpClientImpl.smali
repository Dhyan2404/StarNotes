.class public Lcom/tencent/qcloud/core/http/OkHttpClientImpl;
.super Lcom/tencent/qcloud/core/http/NetworkClient;
.source "SourceFile"


# instance fields
.field private mEventListenerFactory:Lokhttp3/EventListener$Factory;

.field private okHttpClient:Lokhttp3/OkHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/NetworkClient;-><init>()V

    new-instance v0, Lcom/tencent/qcloud/core/http/OkHttpClientImpl$1;

    invoke-direct {v0, p0}, Lcom/tencent/qcloud/core/http/OkHttpClientImpl$1;-><init>(Lcom/tencent/qcloud/core/http/OkHttpClientImpl;)V

    iput-object v0, p0, Lcom/tencent/qcloud/core/http/OkHttpClientImpl;->mEventListenerFactory:Lokhttp3/EventListener$Factory;

    return-void
.end method


# virtual methods
.method public getNetworkProxy()Lcom/tencent/qcloud/core/http/NetworkProxy;
    .locals 1

    new-instance v0, Lcom/tencent/qcloud/core/http/OkHttpProxy;

    iget-object p0, p0, Lcom/tencent/qcloud/core/http/OkHttpClientImpl;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-direct {v0, p0}, Lcom/tencent/qcloud/core/http/OkHttpProxy;-><init>(Lokhttp3/OkHttpClient;)V

    return-object v0
.end method

.method public init(Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/Dns;Lcom/tencent/qcloud/core/http/HttpLogger;)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Lcom/tencent/qcloud/core/http/NetworkClient;->init(Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/Dns;Lcom/tencent/qcloud/core/http/HttpLogger;)V

    new-instance v0, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor;

    invoke-direct {v0, p4}, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor;-><init>(Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Logger;)V

    sget-object p4, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;->HEADERS:Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, p4}, Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor;->setLevel(Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor$Level;)Lcom/tencent/qcloud/core/http/HttpLoggingInterceptor;

    iget-object p4, p1, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->mBuilder:Lokhttp3/OkHttpClient$Builder;

    invoke-virtual {p4}, Lokhttp3/OkHttpClient$Builder;->interceptors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    new-instance v1, Lcom/tencent/qcloud/core/http/interceptor/RedirectInterceptor;

    invoke-direct {v1}, Lcom/tencent/qcloud/core/http/interceptor/RedirectInterceptor;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p4, v2}, Lokhttp3/OkHttpClient$Builder;->followRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p4

    const/4 v2, 0x1

    invoke-virtual {p4, v2}, Lokhttp3/OkHttpClient$Builder;->followSslRedirects(Z)Lokhttp3/OkHttpClient$Builder;

    move-result-object p4

    invoke-virtual {p4, p2}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    invoke-virtual {p2, p3}, Lokhttp3/OkHttpClient$Builder;->dns(Lokhttp3/Dns;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    iget p3, p1, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->connectionTimeout:I

    int-to-long p3, p3

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p2, p3, p4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    iget p3, p1, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->socketTimeout:I

    int-to-long p3, p3

    invoke-virtual {p2, p3, p4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    iget p3, p1, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->socketTimeout:I

    int-to-long p3, p3

    invoke-virtual {p2, p3, p4, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    iget-object p3, p0, Lcom/tencent/qcloud/core/http/OkHttpClientImpl;->mEventListenerFactory:Lokhttp3/EventListener$Factory;

    invoke-virtual {p2, p3}, Lokhttp3/OkHttpClient$Builder;->eventListenerFactory(Lokhttp3/EventListener$Factory;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    invoke-virtual {p2, v0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p2

    new-instance p3, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;

    iget-object p1, p1, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->retryStrategy:Lcom/tencent/qcloud/core/task/RetryStrategy;

    invoke-direct {p3, p1}, Lcom/tencent/qcloud/core/http/interceptor/RetryInterceptor;-><init>(Lcom/tencent/qcloud/core/task/RetryStrategy;)V

    invoke-virtual {p2, p3}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    new-instance p2, Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor;

    invoke-direct {p2}, Lcom/tencent/qcloud/core/http/interceptor/TrafficControlInterceptor;-><init>()V

    invoke-virtual {p1, p2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qcloud/core/http/OkHttpClientImpl;->okHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, p1}, Lcom/tencent/qcloud/core/http/interceptor/RedirectInterceptor;->setClient(Lokhttp3/OkHttpClient;)V

    return-void
.end method
