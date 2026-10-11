.class public final Lcom/google/api/client/googleapis/apache/v2/GoogleApacheHttpTransport;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/api/client/googleapis/apache/v2/GoogleApacheHttpTransport$SocketFactoryRegistryHandler;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static newTrustedTransport()Lcom/google/api/client/http/apache/v2/ApacheHttpTransport;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/api/client/googleapis/mtls/MtlsUtils;->getDefaultMtlsProvider()Lcom/google/api/client/googleapis/mtls/MtlsProvider;

    move-result-object v0

    invoke-static {v0}, Lcom/google/api/client/googleapis/apache/v2/GoogleApacheHttpTransport;->newTrustedTransport(Lcom/google/api/client/googleapis/mtls/MtlsProvider;)Lcom/google/api/client/http/apache/v2/ApacheHttpTransport;

    move-result-object v0

    return-object v0
.end method

.method public static newTrustedTransport(Lcom/google/api/client/googleapis/mtls/MtlsProvider;)Lcom/google/api/client/http/apache/v2/ApacheHttpTransport;
    .locals 9
    .annotation build Lcom/google/api/client/util/Beta;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/google/api/client/googleapis/apache/v2/GoogleApacheHttpTransport$SocketFactoryRegistryHandler;

    invoke-direct {v0, p0}, Lcom/google/api/client/googleapis/apache/v2/GoogleApacheHttpTransport$SocketFactoryRegistryHandler;-><init>(Lcom/google/api/client/googleapis/mtls/MtlsProvider;)V

    .line 3
    new-instance p0, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;

    .line 4
    invoke-virtual {v0}, Lcom/google/api/client/googleapis/apache/v2/GoogleApacheHttpTransport$SocketFactoryRegistryHandler;->getSocketFactoryRegistry()Lorg/apache/http/config/Registry;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v6, -0x1

    sget-object v8, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v1, p0

    invoke-direct/range {v1 .. v8}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;JLjava/util/concurrent/TimeUnit;)V

    const/4 v1, -0x1

    .line 5
    invoke-virtual {p0, v1}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setValidateAfterInactivity(I)V

    .line 6
    invoke-static {}, Lorg/apache/http/impl/client/HttpClientBuilder;->create()Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lorg/apache/http/impl/client/HttpClientBuilder;->useSystemProperties()Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v1

    const/16 v2, 0xc8

    .line 8
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/HttpClientBuilder;->setMaxConnTotal(I)Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v1

    const/16 v2, 0x14

    .line 9
    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/HttpClientBuilder;->setMaxConnPerRoute(I)Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v1

    new-instance v2, Lorg/apache/http/impl/conn/SystemDefaultRoutePlanner;

    .line 10
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/apache/http/impl/conn/SystemDefaultRoutePlanner;-><init>(Ljava/net/ProxySelector;)V

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/HttpClientBuilder;->setRoutePlanner(Lorg/apache/http/conn/routing/HttpRoutePlanner;)Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object v1

    .line 11
    invoke-virtual {v1, p0}, Lorg/apache/http/impl/client/HttpClientBuilder;->setConnectionManager(Lorg/apache/http/conn/HttpClientConnectionManager;)Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object p0

    .line 12
    invoke-virtual {p0}, Lorg/apache/http/impl/client/HttpClientBuilder;->disableRedirectHandling()Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Lorg/apache/http/impl/client/HttpClientBuilder;->disableAutomaticRetries()Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lorg/apache/http/impl/client/HttpClientBuilder;->build()Lorg/apache/http/impl/client/CloseableHttpClient;

    move-result-object p0

    .line 15
    new-instance v1, Lcom/google/api/client/http/apache/v2/ApacheHttpTransport;

    invoke-virtual {v0}, Lcom/google/api/client/googleapis/apache/v2/GoogleApacheHttpTransport$SocketFactoryRegistryHandler;->isMtls()Z

    move-result v0

    invoke-direct {v1, p0, v0}, Lcom/google/api/client/http/apache/v2/ApacheHttpTransport;-><init>(Lorg/apache/http/client/HttpClient;Z)V

    return-object v1
.end method
