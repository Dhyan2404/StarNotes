.class public Lcom/tencent/cos/xml/CosXmlBaseService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/cos/xml/BaseCosXml;


# static fields
.field public static BRIDGE:Ljava/lang/String; = null

.field public static IS_CLOSE_REPORT:Z = false

.field private static final TAG:Ljava/lang/String; = "CosXmlBaseService"

.field public static appCachePath:Ljava/lang/String;


# instance fields
.field protected volatile client:Lcom/tencent/qcloud/core/http/QCloudHttpClient;

.field protected config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

.field protected credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

.field protected requestDomain:Ljava/lang/String;

.field protected selfSigner:Lcom/tencent/qcloud/core/auth/QCloudSelfSigner;

.field protected signerType:Ljava/lang/String;

.field protected tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/tencent/cos/xml/CosXmlServiceConfig;)V
    .locals 3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "CosXml"

    .line 4
    iput-object v0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->tag:Ljava/lang/String;

    const-string v0, "CosXmlSigner"

    .line 5
    iput-object v0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->signerType:Ljava/lang/String;

    .line 6
    invoke-virtual {p2}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "QLog"

    .line 7
    invoke-static {p1, v0}, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/qcloud/core/logger/FileLogAdapter;

    move-result-object v0

    .line 8
    invoke-static {v0}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->addAdapter(Lcom/tencent/qcloud/core/logger/LogAdapter;)V

    .line 9
    :cond_0
    invoke-virtual {p2}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->isDebuggable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 10
    new-instance v0, Lcom/tencent/qcloud/core/logger/AndroidLogcatAdapter;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/logger/AndroidLogcatAdapter;-><init>()V

    .line 11
    invoke-static {v0}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->addAdapter(Lcom/tencent/qcloud/core/logger/LogAdapter;)V

    .line 12
    :cond_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget-boolean v1, Lcom/tencent/cos/xml/CosXmlBaseService;->IS_CLOSE_REPORT:Z

    sget-object v2, Lcom/tencent/cos/xml/CosXmlBaseService;->BRIDGE:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/tencent/cos/xml/CosTrackService;->init(Landroid/content/Context;ZLjava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/tencent/cos/xml/CosXmlBaseService;->appCachePath:Ljava/lang/String;

    .line 14
    invoke-virtual {p2}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getUploadMaxThreadCount()I

    move-result v0

    invoke-virtual {p2}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getDownloadMaxThreadCount()I

    move-result v1

    invoke-static {v0, v1}, Lcom/tencent/qcloud/core/task/TaskExecutors;->initExecutor(II)V

    .line 15
    invoke-virtual {p0, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->setNetworkClient(Lcom/tencent/cos/xml/CosXmlServiceConfig;)V

    .line 16
    invoke-static {p1}, Lcom/tencent/qcloud/core/util/ContextHolder;->setContext(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/cos/xml/CosXmlServiceConfig;Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;-><init>(Landroid/content/Context;Lcom/tencent/cos/xml/CosXmlServiceConfig;)V

    .line 2
    iput-object p3, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/cos/xml/CosXmlServiceConfig;Lcom/tencent/qcloud/core/auth/QCloudSelfSigner;)V
    .locals 0

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;-><init>(Landroid/content/Context;Lcom/tencent/cos/xml/CosXmlServiceConfig;)V

    .line 22
    iput-object p3, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->selfSigner:Lcom/tencent/qcloud/core/auth/QCloudSelfSigner;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/tencent/cos/xml/CosXmlServiceConfig;Lcom/tencent/qcloud/core/auth/QCloudSigner;)V
    .locals 0

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;-><init>(Landroid/content/Context;Lcom/tencent/cos/xml/CosXmlServiceConfig;)V

    .line 18
    new-instance p1, Lcom/tencent/qcloud/core/auth/StaticCredentialProvider;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcom/tencent/qcloud/core/auth/StaticCredentialProvider;-><init>(Lcom/tencent/qcloud/core/auth/QCloudCredentials;)V

    iput-object p1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    const-string p1, "UserCosXmlSigner"

    .line 19
    iput-object p1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->signerType:Ljava/lang/String;

    .line 20
    invoke-static {p1, p3}, Lcom/tencent/qcloud/core/auth/SignerFactory;->registerSigner(Ljava/lang/String;Lcom/tencent/qcloud/core/auth/QCloudSigner;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/cos/xml/CosXmlBaseService;Lcom/tencent/cos/xml/model/CosXmlRequest;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->logRequestMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    return-void
.end method

.method private init(Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;Lcom/tencent/cos/xml/CosXmlServiceConfig;)V
    .locals 1

    invoke-virtual {p2}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getConnectionTimeout()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->setConnectionTimeout(I)Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;

    move-result-object p0

    invoke-virtual {p2}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getSocketTimeout()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->setSocketTimeout(I)Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;

    invoke-virtual {p2}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getRetryStrategy()Lcom/tencent/qcloud/core/task/RetryStrategy;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1, p0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->setRetryStrategy(Lcom/tencent/qcloud/core/task/RetryStrategy;)Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;

    :cond_0
    invoke-virtual {p2}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getQCloudHttpRetryHandler()Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->setQCloudHttpRetryHandler(Lcom/tencent/qcloud/core/http/QCloudHttpRetryHandler;)Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;

    :cond_1
    invoke-virtual {p2}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->isDebuggable()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->enableDebugLog(Z)Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;

    invoke-virtual {p2}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->isEnableQuic()Z

    move-result p0

    if-eqz p0, :cond_2

    :try_start_0
    const-string p0, "com.tencent.qcloud.quic.QuicClientImpl"

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/http/NetworkClient;

    invoke-virtual {p1, p0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->setNetworkClient(Lcom/tencent/qcloud/core/http/NetworkClient;)Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/tencent/cos/xml/CosTrackService;->getInstance()Lcom/tencent/cos/xml/CosTrackService;

    move-result-object p0

    const-string p2, "CosXmlBaseService"

    invoke-virtual {p0, p2, p1}, Lcom/tencent/cos/xml/CosTrackService;->reportError(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1

    :cond_2
    new-instance p0, Lcom/tencent/qcloud/core/http/OkHttpClientImpl;

    invoke-direct {p0}, Lcom/tencent/qcloud/core/http/OkHttpClientImpl;-><init>()V

    invoke-virtual {p1, p0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->setNetworkClient(Lcom/tencent/qcloud/core/http/NetworkClient;)Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;

    :goto_0
    invoke-virtual {p2}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->isDnsCache()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->dnsCache(Z)Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;

    invoke-virtual {p2}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getEndpointSuffix()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->addPrefetchHost(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;

    return-void
.end method

.method private logRequestMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;)V
    .locals 1

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->isDebuggable()Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getMetrics()Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getMetrics()Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "QCloudHttp"

    invoke-static {v0, p0, p1}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public addCustomerDNS(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->client:Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    invoke-virtual {p0, p1, p2}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->addDnsRecord(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object p2, Lcom/tencent/cos/xml/common/ClientErrorCode;->POOR_NETWORK:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {p2}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result p2

    invoke-direct {p1, p2, p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method public addCustomerDNSFetch(Lcom/tencent/qcloud/core/http/QCloudHttpClient$QCloudDnsFetch;)V
    .locals 0
    .param p1    # Lcom/tencent/qcloud/core/http/QCloudHttpClient$QCloudDnsFetch;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->client:Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    invoke-virtual {p0, p1}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->addDnsFetch(Lcom/tencent/qcloud/core/http/QCloudHttpClient$QCloudDnsFetch;)V

    return-void
.end method

.method public addVerifiedHost(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->client:Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    invoke-virtual {p0, p1}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->addVerifiedHost(Ljava/lang/String;)V

    return-void
.end method

.method public basePutObject(Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;)Lcom/tencent/cos/xml/model/object/BasePutObjectResult;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    new-instance v0, Lcom/tencent/cos/xml/model/object/BasePutObjectResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/BasePutObjectResult;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->getAccessUrl(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->accessUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/tencent/cos/xml/CosXmlBaseService;->execute(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/cos/xml/model/CosXmlResult;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/object/BasePutObjectResult;

    return-object p0
.end method

.method public basePutObjectAsync(Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 2

    new-instance v0, Lcom/tencent/cos/xml/model/object/BasePutObjectResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/BasePutObjectResult;-><init>()V

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->getAccessUrl(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/tencent/cos/xml/model/CosXmlResult;->accessUrl:Ljava/lang/String;

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->schedule(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method public buildHttpRequest(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Lcom/tencent/cos/xml/model/CosXmlRequest;",
            "T2:",
            "Lcom/tencent/cos/xml/model/CosXmlResult;",
            ">(TT1;TT2;)",
            "Lcom/tencent/qcloud/core/http/QCloudHttpRequest;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    new-instance v0, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->method(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/tencent/cos/xml/CosXmlBaseService;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->userAgent(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->tag(Ljava/lang/Object;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getNoSignHeaders()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->addNoSignHeaderKeys(Ljava/util/Set;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getNoSignHeaders()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->addNoSignHeaderKeys(Ljava/util/Set;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getNoSignParams()Ljava/util/Set;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->addNoSignParamKeys(Ljava/util/Set;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRequestURL()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->getRequestHost(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_0

    :try_start_0
    new-instance v3, Ljava/net/URL;

    invoke-direct {v3, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->url(Ljava/net/URL;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object p2, Lcom/tencent/cos/xml/common/ClientErrorCode;->BAD_REQUEST:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {p2}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result p2

    invoke-direct {p1, p2, p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/Throwable;)V

    throw p1

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->checkParameters()V

    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getProtocol()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->scheme(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->host(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {p1, v3}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getPath(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->path(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getPort()I

    move-result v1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getPort()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->port(I)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    :cond_1
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getQueryString()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->query(Ljava/util/Map;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getQueryEncodedString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getQueryEncodedString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->encodedQuery(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    :cond_2
    :goto_0
    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->setCopySource(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iget-object v3, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {v3}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getCommonHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRequestHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {v5}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getCommonHeaders()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    :cond_4
    if-eqz v5, :cond_3

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const-string v1, "Host"

    invoke-interface {v3, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v3, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->headersHasUnsafeNonAscii()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {v0, v3}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->addHeadersUnsafeNonAscii(Ljava/util/Map;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    goto :goto_2

    :cond_7
    invoke-virtual {v0, v3}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->addHeaders(Ljava/util/Map;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    :goto_2
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->isNeedMD5()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->contentMD5()Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    :cond_8
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getKeyTime()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qcloud/core/http/HttpRequest$Builder;->setKeyTime(Ljava/lang/String;)Lcom/tencent/qcloud/core/http/HttpRequest$Builder;

    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    if-nez v1, :cond_a

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getCredentialProvider()Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->signerType:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->signerTypeCompat(Ljava/lang/String;Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getSignSourceProvider()Lcom/tencent/qcloud/core/auth/QCloudSignSourceProvider;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->signer(Ljava/lang/String;Lcom/tencent/qcloud/core/auth/QCloudSignSourceProvider;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    goto :goto_3

    :cond_9
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->signer(Ljava/lang/String;Lcom/tencent/qcloud/core/auth/QCloudSignSourceProvider;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    goto :goto_3

    :cond_a
    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->signerType:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->signerTypeCompat(Ljava/lang/String;Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getSignSourceProvider()Lcom/tencent/qcloud/core/auth/QCloudSignSourceProvider;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->signer(Ljava/lang/String;Lcom/tencent/qcloud/core/auth/QCloudSignSourceProvider;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    :goto_3
    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->selfSigner:Lcom/tencent/qcloud/core/auth/QCloudSelfSigner;

    if-eqz v1, :cond_b

    invoke-virtual {v0, v1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->selfSigner(Lcom/tencent/qcloud/core/auth/QCloudSelfSigner;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    :cond_b
    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {p1, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getSTSCredentialScope(Lcom/tencent/cos/xml/CosXmlServiceConfig;)[Lcom/tencent/qcloud/core/auth/STSCredentialScope;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->credentialScope([Lcom/tencent/qcloud/core/auth/STSCredentialScope;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRequestBody()Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRequestBody()Lcom/tencent/qcloud/core/http/RequestBodySerializer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->body(Lcom/tencent/qcloud/core/http/RequestBodySerializer;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    :cond_c
    instance-of v1, p1, Lcom/tencent/cos/xml/model/object/SaveLocalRequest;

    if-eqz v1, :cond_e

    move-object v1, p1

    check-cast v1, Lcom/tencent/cos/xml/model/object/SaveLocalRequest;

    invoke-interface {v1}, Lcom/tencent/cos/xml/model/object/SaveLocalRequest;->getSaveLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    new-instance v2, Lcom/tencent/cos/xml/transfer/ResponseFileBodySerializer;

    check-cast p2, Lcom/tencent/cos/xml/model/object/GetObjectResult;

    invoke-interface {v1}, Lcom/tencent/cos/xml/model/object/SaveLocalRequest;->getSaveLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Lcom/tencent/cos/xml/model/object/SaveLocalRequest;->getSaveLocalOffset()J

    move-result-wide v4

    invoke-direct {v2, p2, v3, v4, v5}, Lcom/tencent/cos/xml/transfer/ResponseFileBodySerializer;-><init>(Lcom/tencent/cos/xml/model/object/GetObjectResult;Ljava/lang/String;J)V

    invoke-virtual {v0, v2}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->converter(Lcom/tencent/qcloud/core/http/ResponseBodyConverter;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    goto :goto_4

    :cond_d
    invoke-interface {v1}, Lcom/tencent/cos/xml/model/object/SaveLocalRequest;->getSaveLocalUri()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_11

    new-instance v2, Lcom/tencent/cos/xml/transfer/ResponseFileBodySerializer;

    move-object v4, p2

    check-cast v4, Lcom/tencent/cos/xml/model/object/GetObjectResult;

    invoke-interface {v1}, Lcom/tencent/cos/xml/model/object/SaveLocalRequest;->getSaveLocalUri()Landroid/net/Uri;

    move-result-object v5

    invoke-static {}, Lcom/tencent/qcloud/core/util/ContextHolder;->getAppContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-interface {v1}, Lcom/tencent/cos/xml/model/object/SaveLocalRequest;->getSaveLocalOffset()J

    move-result-wide v7

    move-object v3, v2

    invoke-direct/range {v3 .. v8}, Lcom/tencent/cos/xml/transfer/ResponseFileBodySerializer;-><init>(Lcom/tencent/cos/xml/model/object/GetObjectResult;Landroid/net/Uri;Landroid/content/ContentResolver;J)V

    invoke-virtual {v0, v2}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->converter(Lcom/tencent/qcloud/core/http/ResponseBodyConverter;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    goto :goto_4

    :cond_e
    instance-of v1, p1, Lcom/tencent/cos/xml/model/object/GetObjectBytesRequest;

    if-eqz v1, :cond_f

    new-instance v1, Lcom/tencent/cos/xml/transfer/ResponseBytesConverter;

    check-cast p2, Lcom/tencent/cos/xml/model/object/GetObjectBytesResult;

    invoke-direct {v1, p2}, Lcom/tencent/cos/xml/transfer/ResponseBytesConverter;-><init>(Lcom/tencent/cos/xml/model/object/GetObjectBytesResult;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->converter(Lcom/tencent/qcloud/core/http/ResponseBodyConverter;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    goto :goto_4

    :cond_f
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/cos/xml/CosXmlBaseService;->buildHttpRequestBodyConverter(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;)Z

    move-result v1

    if-eqz v1, :cond_10

    goto :goto_4

    :cond_10
    new-instance v1, Lcom/tencent/cos/xml/transfer/ResponseXmlS3BodySerializer;

    invoke-direct {v1, p2}, Lcom/tencent/cos/xml/transfer/ResponseXmlS3BodySerializer;-><init>(Lcom/tencent/cos/xml/model/CosXmlResult;)V

    invoke-virtual {v0, v1}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->converter(Lcom/tencent/qcloud/core/http/ResponseBodyConverter;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    :cond_11
    :goto_4
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->isSignInUrl()Z

    move-result p1

    if-nez p1, :cond_13

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->isSignInUrl()Z

    move-result p0

    if-eqz p0, :cond_12

    goto :goto_5

    :cond_12
    const/4 p0, 0x0

    goto :goto_6

    :cond_13
    :goto_5
    const/4 p0, 0x1

    :goto_6
    invoke-virtual {v0, p0}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->signInUrl(Z)Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;

    invoke-virtual {v0}, Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;->build()Lcom/tencent/qcloud/core/http/QCloudHttpRequest;

    move-result-object p0

    return-object p0
.end method

.method public buildHttpRequestBodyConverter(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Lcom/tencent/cos/xml/model/CosXmlRequest;",
            "T2:",
            "Lcom/tencent/cos/xml/model/CosXmlResult;",
            ">(TT1;TT2;",
            "Lcom/tencent/qcloud/core/http/QCloudHttpRequest$Builder<",
            "TT2;>;)Z"
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getHttpTask()Lcom/tencent/qcloud/core/http/HttpTask;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getHttpTask()Lcom/tencent/qcloud/core/http/HttpTask;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/http/HttpTask;->cancel()V

    :cond_0
    return-void
.end method

.method public cancel(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getHttpTask()Lcom/tencent/qcloud/core/http/HttpTask;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getHttpTask()Lcom/tencent/qcloud/core/http/HttpTask;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/tencent/qcloud/core/http/HttpTask;->cancel(Z)V

    :cond_0
    return-void
.end method

.method public cancelAll()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->client:Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->tag:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->getTasksByTag(Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/tencent/qcloud/core/http/HttpTask;

    invoke-virtual {v0}, Lcom/tencent/qcloud/core/http/HttpTask;->cancel()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public execute(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/cos/xml/model/CosXmlResult;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Lcom/tencent/cos/xml/model/CosXmlRequest;",
            "T2:",
            "Lcom/tencent/cos/xml/model/CosXmlResult;",
            ">(TT1;TT2;)TT2;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/cos/xml/CosXmlBaseService;->execute(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Z)Lcom/tencent/cos/xml/model/CosXmlResult;

    move-result-object p0

    return-object p0
.end method

.method public execute(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Z)Lcom/tencent/cos/xml/model/CosXmlResult;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Lcom/tencent/cos/xml/model/CosXmlRequest;",
            "T2:",
            "Lcom/tencent/cos/xml/model/CosXmlResult;",
            ">(TT1;TT2;Z)TT2;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getRegion()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRegion(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getMetrics()Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;-><init>()V

    invoke-virtual {p1, v0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->attachMetrics(Lcom/tencent/qcloud/core/http/HttpTaskMetrics;)V

    .line 6
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->buildHttpRequest(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest;

    move-result-object p2

    .line 7
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getCredentialProvider()Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->client:Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getCredentialProvider()Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->resolveRequest(Lcom/tencent/qcloud/core/http/QCloudHttpRequest;Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)Lcom/tencent/qcloud/core/http/HttpTask;

    move-result-object p2

    goto :goto_0

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->client:Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    invoke-virtual {v0, p2, v1}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->resolveRequest(Lcom/tencent/qcloud/core/http/QCloudHttpRequest;Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)Lcom/tencent/qcloud/core/http/HttpTask;

    move-result-object p2

    .line 10
    :goto_0
    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->isTransferThreadControl()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tencent/qcloud/core/task/QCloudTask;->setTransferThreadControl(Z)V

    .line 11
    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getUploadMaxThreadCount()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tencent/qcloud/core/task/QCloudTask;->setUploadMaxThreadCount(I)V

    .line 12
    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getDownloadMaxThreadCount()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tencent/qcloud/core/task/QCloudTask;->setDownloadMaxThreadCount(I)V

    .line 13
    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->isDomainSwitch()Z

    move-result v0

    invoke-virtual {p2, v0}, Lcom/tencent/qcloud/core/task/QCloudTask;->setDomainSwitch(Z)V

    .line 14
    invoke-virtual {p1, p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setTask(Lcom/tencent/qcloud/core/http/HttpTask;)V

    const/4 v0, 0x0

    .line 15
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/cos/xml/CosXmlBaseService;->setProgressListener(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/http/HttpTask;Z)V

    .line 16
    invoke-virtual {p2}, Lcom/tencent/qcloud/core/task/QCloudTask;->executeNow()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/tencent/qcloud/core/http/HttpResult;

    .line 17
    invoke-static {}, Lcom/tencent/cos/xml/CosTrackService;->getInstance()Lcom/tencent/cos/xml/CosTrackService;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Lcom/tencent/cos/xml/CosTrackService;->reportRequestSuccess(Lcom/tencent/cos/xml/model/CosXmlRequest;Z)V

    .line 18
    invoke-direct {p0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->logRequestMetrics(Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    if-eqz p2, :cond_3

    .line 19
    invoke-virtual {p2}, Lcom/tencent/qcloud/core/http/HttpResult;->content()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/CosXmlResult;
    :try_end_0
    .catch Lcom/tencent/qcloud/core/common/QCloudServiceException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/tencent/qcloud/core/common/QCloudClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    const/4 p0, 0x0

    :goto_1
    return-object p0

    :catch_0
    move-exception p0

    .line 20
    invoke-static {}, Lcom/tencent/cos/xml/CosTrackService;->getInstance()Lcom/tencent/cos/xml/CosTrackService;

    move-result-object p2

    invoke-virtual {p2, p1, p0, p3}, Lcom/tencent/cos/xml/CosTrackService;->reportRequestClientException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudClientException;Z)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    throw p0

    :catch_1
    move-exception p0

    .line 21
    invoke-static {}, Lcom/tencent/cos/xml/CosTrackService;->getInstance()Lcom/tencent/cos/xml/CosTrackService;

    move-result-object p2

    invoke-virtual {p2, p1, p0, p3}, Lcom/tencent/cos/xml/CosTrackService;->reportRequestServiceException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudServiceException;Z)Lcom/tencent/cos/xml/exception/CosXmlServiceException;

    move-result-object p0

    throw p0
.end method

.method public getAccessUrl(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;
    .locals 3

    const-string v0, "CosXmlBaseService"

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRequestURL()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string p0, "?"

    invoke-virtual {v1, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v1, p1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->getRequestHost(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Lcom/tencent/cos/xml/exception/CosXmlClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-static {}, Lcom/tencent/cos/xml/CosTrackService;->getInstance()Lcom/tencent/cos/xml/CosTrackService;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/tencent/cos/xml/CosTrackService;->reportError(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 v1, 0x0

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {p1, v2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getPath(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/cos/xml/utils/URLEncodeUtils;->cosPathEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Lcom/tencent/cos/xml/exception/CosXmlClientException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {}, Lcom/tencent/cos/xml/CosTrackService;->getInstance()Lcom/tencent/cos/xml/CosTrackService;

    move-result-object v2

    invoke-virtual {v2, v0, p1}, Lcom/tencent/cos/xml/CosTrackService;->reportError(Ljava/lang/String;Ljava/lang/Exception;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const-string p1, "/"

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getProtocol()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "://"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAppid()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getAppid()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getConfig()Lcom/tencent/cos/xml/CosXmlServiceConfig;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    return-object p0
.end method

.method public getCredentialProvider()Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;
    .locals 0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    return-object p0
.end method

.method public getLogFiles(I)[Ljava/io/File;
    .locals 0

    const-class p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;

    invoke-static {p0}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->getAdapter(Ljava/lang/Class;)Lcom/tencent/qcloud/core/logger/LogAdapter;

    move-result-object p0

    check-cast p0, Lcom/tencent/qcloud/core/logger/FileLogAdapter;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/tencent/qcloud/core/logger/FileLogAdapter;->getLogFilesDesc(I)[Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getObject(Lcom/tencent/cos/xml/model/object/GetObjectRequest;)Lcom/tencent/cos/xml/model/object/GetObjectResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/tencent/cos/xml/model/object/GetObjectResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/GetObjectResult;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/tencent/cos/xml/CosXmlBaseService;->execute(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/cos/xml/model/CosXmlResult;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/object/GetObjectResult;

    return-object p0
.end method

.method public getObject(Lcom/tencent/cos/xml/model/object/GetObjectBytesRequest;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    .line 5
    new-instance v0, Lcom/tencent/cos/xml/model/object/GetObjectBytesResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/GetObjectBytesResult;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/tencent/cos/xml/CosXmlBaseService;->execute(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/cos/xml/model/CosXmlResult;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/object/GetObjectBytesResult;

    if-eqz p0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/GetObjectBytesResult;->data:[B

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [B

    :goto_0
    return-object p0
.end method

.method public getObject(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/tencent/cos/xml/model/object/GetObjectBytesRequest;

    invoke-direct {v0, p1, p2}, Lcom/tencent/cos/xml/model/object/GetObjectBytesRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p1, Lcom/tencent/cos/xml/model/object/GetObjectBytesResult;

    invoke-direct {p1}, Lcom/tencent/cos/xml/model/object/GetObjectBytesResult;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->execute(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/cos/xml/model/CosXmlResult;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/object/GetObjectBytesResult;

    if-eqz p0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/tencent/cos/xml/model/object/GetObjectBytesResult;->data:[B

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    new-array p0, p0, [B

    :goto_0
    return-object p0
.end method

.method public getObjectAsync(Lcom/tencent/cos/xml/model/object/GetObjectRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 1

    new-instance v0, Lcom/tencent/cos/xml/model/object/GetObjectResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/GetObjectResult;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->schedule(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method

.method public getObjectUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;

    const-string v1, ""

    invoke-direct {v0, p1, p3, v1}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRegion(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/tencent/cos/xml/CosXmlBaseService;->getAccessUrl(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getPresignedURL(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getCredentialProvider()Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getCredentialProvider()Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;->getCredentials()Lcom/tencent/qcloud/core/auth/QCloudCredentials;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    instance-of v1, v0, Lcom/tencent/qcloud/core/auth/ScopeLimitCredentialProvider;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/tencent/qcloud/core/auth/ScopeLimitCredentialProvider;

    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {p1, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getSTSCredentialScope(Lcom/tencent/cos/xml/CosXmlServiceConfig;)[Lcom/tencent/qcloud/core/auth/STSCredentialScope;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/tencent/qcloud/core/auth/ScopeLimitCredentialProvider;->getCredentials([Lcom/tencent/qcloud/core/auth/STSCredentialScope;)Lcom/tencent/qcloud/core/auth/SessionQCloudCredentials;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;->getCredentials()Lcom/tencent/qcloud/core/auth/QCloudCredentials;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->signerType:Ljava/lang/String;

    invoke-virtual {p0, v1, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->signerTypeCompat(Ljava/lang/String;Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/tencent/qcloud/core/auth/SignerFactory;->getSigner(Ljava/lang/String;)Lcom/tencent/qcloud/core/auth/QCloudSigner;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v2}, Lcom/tencent/cos/xml/CosXmlBaseService;->buildHttpRequest(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lcom/tencent/qcloud/core/auth/QCloudSigner;->sign(Lcom/tencent/qcloud/core/http/QCloudHttpRequest;Lcom/tencent/qcloud/core/auth/QCloudCredentials;)V

    const-string v0, "Authorization"

    invoke-virtual {v2, v0}, Lcom/tencent/qcloud/core/http/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "x-cos-security-token"

    invoke-virtual {v2, v1}, Lcom/tencent/qcloud/core/http/HttpRequest;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "&x-cos-security-token="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->getAccessUrl(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getQueryString()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/cos/xml/utils/StringUtils;->flat(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_0
    .catch Lcom/tencent/qcloud/core/common/QCloudClientException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "?"

    if-eqz v1, :cond_3

    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lcom/tencent/qcloud/core/common/QCloudClientException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lcom/tencent/cos/xml/exception/CosXmlClientException;

    sget-object v0, Lcom/tencent/cos/xml/common/ClientErrorCode;->INVALID_CREDENTIALS:Lcom/tencent/cos/xml/common/ClientErrorCode;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/common/ClientErrorCode;->getCode()I

    move-result v0

    invoke-direct {p1, v0, p0}, Lcom/tencent/cos/xml/exception/CosXmlClientException;-><init>(ILjava/lang/Throwable;)V

    throw p1
.end method

.method public getRegion()Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getRegion()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRegion(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRegion()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getRegion()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRegion()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getRequestHost(Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->requestDomain:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->requestDomain:Ljava/lang/String;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {p1, p0}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRequestHost(Lcom/tencent/cos/xml/CosXmlServiceConfig;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUserAgent()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/tencent/cos/xml/common/VersionInfo;->getUserAgent()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->isEnableQuic()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/tencent/cos/xml/common/VersionInfo;->getQuicUserAgent()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/tencent/cos/xml/common/VersionInfo;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getUserAgentExtended()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-object v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getUserAgentExtended()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public internalGetObjectAsync(Lcom/tencent/cos/xml/model/object/GetObjectRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 2

    new-instance v0, Lcom/tencent/cos/xml/model/object/GetObjectResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/GetObjectResult;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/tencent/cos/xml/CosXmlBaseService;->schedule(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Lcom/tencent/cos/xml/listener/CosXmlResultListener;Z)V

    return-void
.end method

.method public release()V
    .locals 0

    invoke-virtual {p0}, Lcom/tencent/cos/xml/CosXmlBaseService;->cancelAll()V

    return-void
.end method

.method public schedule(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Lcom/tencent/cos/xml/model/CosXmlRequest;",
            "T2:",
            "Lcom/tencent/cos/xml/model/CosXmlResult;",
            ">(TT1;TT2;",
            "Lcom/tencent/cos/xml/listener/CosXmlResultListener;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/tencent/cos/xml/CosXmlBaseService;->schedule(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Lcom/tencent/cos/xml/listener/CosXmlResultListener;Z)V

    return-void
.end method

.method public schedule(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Lcom/tencent/cos/xml/listener/CosXmlResultListener;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Lcom/tencent/cos/xml/model/CosXmlRequest;",
            "T2:",
            "Lcom/tencent/cos/xml/model/CosXmlResult;",
            ">(TT1;TT2;",
            "Lcom/tencent/cos/xml/listener/CosXmlResultListener;",
            "Z)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/tencent/cos/xml/CosXmlBaseService$1;

    invoke-direct {v0, p0, p1, p4, p3}, Lcom/tencent/cos/xml/CosXmlBaseService$1;-><init>(Lcom/tencent/cos/xml/CosXmlBaseService;Lcom/tencent/cos/xml/model/CosXmlRequest;ZLcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    .line 3
    :try_start_0
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setRegion(Ljava/lang/String;)V

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getMetrics()Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    move-result-object v1

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;

    invoke-direct {v1}, Lcom/tencent/qcloud/core/http/HttpTaskMetrics;-><init>()V

    invoke-virtual {p1, v1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->attachMetrics(Lcom/tencent/qcloud/core/http/HttpTaskMetrics;)V

    .line 7
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->buildHttpRequest(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/qcloud/core/http/QCloudHttpRequest;

    move-result-object p2

    .line 8
    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getCredentialProvider()Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->client:Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getCredentialProvider()Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->resolveRequest(Lcom/tencent/qcloud/core/http/QCloudHttpRequest;Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)Lcom/tencent/qcloud/core/http/HttpTask;

    move-result-object p2

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->client:Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    iget-object v2, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->credentialProvider:Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;

    invoke-virtual {v1, p2, v2}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->resolveRequest(Lcom/tencent/qcloud/core/http/QCloudHttpRequest;Lcom/tencent/qcloud/core/auth/QCloudCredentialProvider;)Lcom/tencent/qcloud/core/http/HttpTask;

    move-result-object p2

    .line 11
    :goto_0
    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->isTransferThreadControl()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/tencent/qcloud/core/task/QCloudTask;->setTransferThreadControl(Z)V

    .line 12
    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getUploadMaxThreadCount()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/tencent/qcloud/core/task/QCloudTask;->setUploadMaxThreadCount(I)V

    .line 13
    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getDownloadMaxThreadCount()I

    move-result v1

    invoke-virtual {p2, v1}, Lcom/tencent/qcloud/core/task/QCloudTask;->setDownloadMaxThreadCount(I)V

    .line 14
    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->isDomainSwitch()Z

    move-result v1

    invoke-virtual {p2, v1}, Lcom/tencent/qcloud/core/task/QCloudTask;->setDomainSwitch(Z)V

    .line 15
    invoke-virtual {p1, p2}, Lcom/tencent/cos/xml/model/CosXmlRequest;->setTask(Lcom/tencent/qcloud/core/http/HttpTask;)V

    const/4 v1, 0x1

    .line 16
    invoke-virtual {p0, p1, p2, v1}, Lcom/tencent/cos/xml/CosXmlBaseService;->setProgressListener(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/http/HttpTask;Z)V

    .line 17
    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {v1}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    .line 18
    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    invoke-virtual {p0}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getObserveExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 19
    invoke-virtual {p2, p0}, Lcom/tencent/qcloud/core/task/QCloudTask;->observeOn(Ljava/util/concurrent/Executor;)Lcom/tencent/qcloud/core/task/QCloudTask;

    .line 20
    :cond_3
    invoke-virtual {p2, v0}, Lcom/tencent/qcloud/core/task/QCloudTask;->addResultListener(Lcom/tencent/qcloud/core/common/QCloudResultListener;)Lcom/tencent/qcloud/core/task/QCloudTask;

    if-eqz v1, :cond_4

    .line 21
    invoke-virtual {p2, v1}, Lcom/tencent/qcloud/core/http/HttpTask;->scheduleOn(Ljava/util/concurrent/Executor;)Lcom/tencent/qcloud/core/http/HttpTask;

    goto :goto_1

    .line 22
    :cond_4
    instance-of p0, p1, Lcom/tencent/cos/xml/model/object/UploadRequest;

    if-eqz p0, :cond_5

    .line 23
    sget-object p0, Lcom/tencent/qcloud/core/task/TaskExecutors;->UPLOAD_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/CosXmlRequest;->getPriority()I

    move-result v0

    invoke-virtual {p2, p0, v0}, Lcom/tencent/qcloud/core/http/HttpTask;->scheduleOn(Ljava/util/concurrent/Executor;I)Lcom/tencent/qcloud/core/http/HttpTask;

    goto :goto_1

    .line 24
    :cond_5
    invoke-virtual {p2}, Lcom/tencent/qcloud/core/http/HttpTask;->schedule()Lcom/tencent/qcloud/core/http/HttpTask;
    :try_end_0
    .catch Lcom/tencent/qcloud/core/common/QCloudClientException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 25
    invoke-static {}, Lcom/tencent/cos/xml/CosTrackService;->getInstance()Lcom/tencent/cos/xml/CosTrackService;

    move-result-object p2

    invoke-virtual {p2, p1, p0, p4}, Lcom/tencent/cos/xml/CosTrackService;->reportRequestClientException(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/common/QCloudClientException;Z)Lcom/tencent/cos/xml/exception/CosXmlClientException;

    move-result-object p0

    const/4 p2, 0x0

    .line 26
    invoke-interface {p3, p1, p0, p2}, Lcom/tencent/cos/xml/listener/CosXmlResultListener;->onFail(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/exception/CosXmlClientException;Lcom/tencent/cos/xml/exception/CosXmlServiceException;)V

    :goto_1
    return-void
.end method

.method public setCopySource(Lcom/tencent/cos/xml/model/CosXmlRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Lcom/tencent/cos/xml/model/CosXmlRequest;",
            ">(TT1;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;
        }
    .end annotation

    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->requestDomain:Ljava/lang/String;

    return-void
.end method

.method public setNetworkClient(Lcom/tencent/cos/xml/CosXmlServiceConfig;)V
    .locals 4

    new-instance v0, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;

    invoke-direct {v0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService;->init(Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;Lcom/tencent/cos/xml/CosXmlServiceConfig;)V

    invoke-virtual {v0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;->build()Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->client:Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    iget-object v1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->client:Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    invoke-virtual {v1, v0}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->setNetworkClientType(Lcom/tencent/qcloud/core/http/QCloudHttpClient$Builder;)V

    iput-object p1, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->config:Lcom/tencent/cos/xml/CosXmlServiceConfig;

    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->client:Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getEndpointSuffix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->addVerifiedHost(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->client:Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getRegion()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->getEndpointSuffix(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->addVerifiedHost(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/tencent/cos/xml/CosXmlBaseService;->client:Lcom/tencent/qcloud/core/http/QCloudHttpClient;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/CosXmlServiceConfig;->isDebuggable()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/tencent/qcloud/core/http/QCloudHttpClient;->setDebuggable(Z)V

    return-void
.end method

.method public setProgressListener(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/qcloud/core/http/HttpTask;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Lcom/tencent/cos/xml/model/CosXmlRequest;",
            "T2:",
            "Lcom/tencent/cos/xml/model/CosXmlResult;",
            ">(TT1;",
            "Lcom/tencent/qcloud/core/http/HttpTask<",
            "TT2;>;Z)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/BasePutObjectRequest;->getProgressListener()Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/tencent/qcloud/core/task/QCloudTask;->addProgressListener(Lcom/tencent/qcloud/core/common/QCloudProgressListener;)Lcom/tencent/qcloud/core/task/QCloudTask;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/tencent/cos/xml/model/object/UploadPartRequest;

    invoke-virtual {v0}, Lcom/tencent/cos/xml/model/object/UploadPartRequest;->getProgressListener()Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/tencent/qcloud/core/task/QCloudTask;->addProgressListener(Lcom/tencent/qcloud/core/common/QCloudProgressListener;)Lcom/tencent/qcloud/core/task/QCloudTask;

    if-eqz p3, :cond_2

    new-instance p3, Lcom/tencent/cos/xml/CosXmlBaseService$2;

    invoke-direct {p3, p0, p1}, Lcom/tencent/cos/xml/CosXmlBaseService$2;-><init>(Lcom/tencent/cos/xml/CosXmlBaseService;Lcom/tencent/cos/xml/model/CosXmlRequest;)V

    invoke-virtual {p2, p3}, Lcom/tencent/qcloud/core/task/QCloudTask;->setOnRequestWeightListener(Lcom/tencent/qcloud/core/task/QCloudTask$OnRequestWeightListener;)V

    goto :goto_0

    :cond_1
    instance-of p0, p1, Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    if-eqz p0, :cond_2

    check-cast p1, Lcom/tencent/cos/xml/model/object/GetObjectRequest;

    invoke-virtual {p1}, Lcom/tencent/cos/xml/model/object/GetObjectRequest;->getProgressListener()Lcom/tencent/cos/xml/listener/CosXmlProgressListener;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/tencent/qcloud/core/task/QCloudTask;->addProgressListener(Lcom/tencent/qcloud/core/common/QCloudProgressListener;)Lcom/tencent/qcloud/core/task/QCloudTask;

    :cond_2
    :goto_0
    return-void
.end method

.method public signerTypeCompat(Ljava/lang/String;Lcom/tencent/cos/xml/model/CosXmlRequest;)Ljava/lang/String;
    .locals 0

    return-object p1
.end method

.method public uploadPart(Lcom/tencent/cos/xml/model/object/UploadPartRequest;)Lcom/tencent/cos/xml/model/object/UploadPartResult;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/cos/xml/exception/CosXmlClientException;,
            Lcom/tencent/cos/xml/exception/CosXmlServiceException;
        }
    .end annotation

    new-instance v0, Lcom/tencent/cos/xml/model/object/UploadPartResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/UploadPartResult;-><init>()V

    invoke-virtual {p0, p1, v0}, Lcom/tencent/cos/xml/CosXmlBaseService;->execute(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;)Lcom/tencent/cos/xml/model/CosXmlResult;

    move-result-object p0

    check-cast p0, Lcom/tencent/cos/xml/model/object/UploadPartResult;

    return-object p0
.end method

.method public uploadPartAsync(Lcom/tencent/cos/xml/model/object/UploadPartRequest;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V
    .locals 1

    new-instance v0, Lcom/tencent/cos/xml/model/object/UploadPartResult;

    invoke-direct {v0}, Lcom/tencent/cos/xml/model/object/UploadPartResult;-><init>()V

    invoke-virtual {p0, p1, v0, p2}, Lcom/tencent/cos/xml/CosXmlBaseService;->schedule(Lcom/tencent/cos/xml/model/CosXmlRequest;Lcom/tencent/cos/xml/model/CosXmlResult;Lcom/tencent/cos/xml/listener/CosXmlResultListener;)V

    return-void
.end method
