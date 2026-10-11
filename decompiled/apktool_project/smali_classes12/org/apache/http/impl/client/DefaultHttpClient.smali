.class public Lorg/apache/http/impl/client/DefaultHttpClient;
.super Lorg/apache/http/impl/client/AbstractHttpClient;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation

.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->SAFE_CONDITIONAL:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, v0}, Lorg/apache/http/impl/client/AbstractHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0}, Lorg/apache/http/impl/client/AbstractHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/http/impl/client/AbstractHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/params/HttpParams;)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, p1}, Lorg/apache/http/impl/client/AbstractHttpClient;-><init>(Lorg/apache/http/conn/ClientConnectionManager;Lorg/apache/http/params/HttpParams;)V

    return-void
.end method

.method public static setDefaultHttpParams(Lorg/apache/http/params/HttpParams;)V
    .locals 3

    sget-object v0, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {p0, v0}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    sget-object v0, Lorg/apache/http/protocol/HTTP;->DEF_CONTENT_CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/http/params/HttpConnectionParams;->setTcpNoDelay(Lorg/apache/http/params/HttpParams;Z)V

    const/16 v0, 0x2000

    invoke-static {p0, v0}, Lorg/apache/http/params/HttpConnectionParams;->setSocketBufferSize(Lorg/apache/http/params/HttpParams;I)V

    const-string v0, "org.apache.http.client"

    const-class v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    const-string v2, "Apache-HttpClient"

    invoke-static {v2, v0, v1}, Lorg/apache/http/util/VersionInfo;->getUserAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/http/params/HttpProtocolParams;->setUserAgent(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createHttpParams()Lorg/apache/http/params/HttpParams;
    .locals 0

    new-instance p0, Lorg/apache/http/params/SyncBasicHttpParams;

    invoke-direct {p0}, Lorg/apache/http/params/SyncBasicHttpParams;-><init>()V

    invoke-static {p0}, Lorg/apache/http/impl/client/DefaultHttpClient;->setDefaultHttpParams(Lorg/apache/http/params/HttpParams;)V

    return-object p0
.end method

.method public createHttpProcessor()Lorg/apache/http/protocol/BasicHttpProcessor;
    .locals 1

    new-instance p0, Lorg/apache/http/protocol/BasicHttpProcessor;

    invoke-direct {p0}, Lorg/apache/http/protocol/BasicHttpProcessor;-><init>()V

    new-instance v0, Lorg/apache/http/client/protocol/RequestDefaultHeaders;

    invoke-direct {v0}, Lorg/apache/http/client/protocol/RequestDefaultHeaders;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    new-instance v0, Lorg/apache/http/protocol/RequestContent;

    invoke-direct {v0}, Lorg/apache/http/protocol/RequestContent;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    new-instance v0, Lorg/apache/http/protocol/RequestTargetHost;

    invoke-direct {v0}, Lorg/apache/http/protocol/RequestTargetHost;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    new-instance v0, Lorg/apache/http/client/protocol/RequestClientConnControl;

    invoke-direct {v0}, Lorg/apache/http/client/protocol/RequestClientConnControl;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    new-instance v0, Lorg/apache/http/protocol/RequestUserAgent;

    invoke-direct {v0}, Lorg/apache/http/protocol/RequestUserAgent;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    new-instance v0, Lorg/apache/http/protocol/RequestExpectContinue;

    invoke-direct {v0}, Lorg/apache/http/protocol/RequestExpectContinue;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    new-instance v0, Lorg/apache/http/client/protocol/RequestAddCookies;

    invoke-direct {v0}, Lorg/apache/http/client/protocol/RequestAddCookies;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    new-instance v0, Lorg/apache/http/client/protocol/ResponseProcessCookies;

    invoke-direct {v0}, Lorg/apache/http/client/protocol/ResponseProcessCookies;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpResponseInterceptor;)V

    new-instance v0, Lorg/apache/http/client/protocol/RequestAuthCache;

    invoke-direct {v0}, Lorg/apache/http/client/protocol/RequestAuthCache;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    new-instance v0, Lorg/apache/http/client/protocol/RequestTargetAuthentication;

    invoke-direct {v0}, Lorg/apache/http/client/protocol/RequestTargetAuthentication;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    new-instance v0, Lorg/apache/http/client/protocol/RequestProxyAuthentication;

    invoke-direct {v0}, Lorg/apache/http/client/protocol/RequestProxyAuthentication;-><init>()V

    invoke-virtual {p0, v0}, Lorg/apache/http/protocol/BasicHttpProcessor;->addInterceptor(Lorg/apache/http/HttpRequestInterceptor;)V

    return-object p0
.end method
