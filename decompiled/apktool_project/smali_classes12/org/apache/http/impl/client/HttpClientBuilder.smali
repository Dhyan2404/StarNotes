.class public Lorg/apache/http/impl/client/HttpClientBuilder;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public A:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/http/client/entity/InputStreamFactory;",
            ">;"
        }
    .end annotation
.end field

.field public B:Lorg/apache/http/client/CookieStore;

.field public C:Lorg/apache/http/client/CredentialsProvider;

.field public D:Ljava/lang/String;

.field public E:Lorg/apache/http/HttpHost;

.field public F:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/http/Header;",
            ">;"
        }
    .end annotation
.end field

.field public G:Lorg/apache/http/config/SocketConfig;

.field public H:Lorg/apache/http/config/ConnectionConfig;

.field public I:Lorg/apache/http/client/config/RequestConfig;

.field public J:Z

.field public K:Z

.field public L:J

.field public M:Ljava/util/concurrent/TimeUnit;

.field public N:Z

.field public O:Z

.field public P:Z

.field public Q:Z

.field public R:Z

.field public S:Z

.field public T:Z

.field public U:Z

.field public V:I

.field public W:I

.field public X:J

.field public Y:Ljava/util/concurrent/TimeUnit;

.field public Z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field public a:Lorg/apache/http/protocol/HttpRequestExecutor;

.field public a0:Lorg/apache/http/conn/util/PublicSuffixMatcher;

.field public b:Ljavax/net/ssl/HostnameVerifier;

.field public c:Lorg/apache/http/conn/socket/LayeredConnectionSocketFactory;

.field public d:Ljavax/net/ssl/SSLContext;

.field public e:Lorg/apache/http/conn/HttpClientConnectionManager;

.field public f:Z

.field public g:Lorg/apache/http/conn/SchemePortResolver;

.field public h:Lorg/apache/http/ConnectionReuseStrategy;

.field public i:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

.field public j:Lorg/apache/http/client/AuthenticationStrategy;

.field public k:Lorg/apache/http/client/AuthenticationStrategy;

.field public l:Lorg/apache/http/client/UserTokenHandler;

.field public m:Lorg/apache/http/protocol/HttpProcessor;

.field public n:Lorg/apache/http/conn/DnsResolver;

.field public o:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/http/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field public p:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/http/HttpRequestInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field public q:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/http/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field public r:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lorg/apache/http/HttpResponseInterceptor;",
            ">;"
        }
    .end annotation
.end field

.field public s:Lorg/apache/http/client/HttpRequestRetryHandler;

.field public t:Lorg/apache/http/conn/routing/HttpRoutePlanner;

.field public u:Lorg/apache/http/client/RedirectStrategy;

.field public v:Lorg/apache/http/client/ConnectionBackoffStrategy;

.field public w:Lorg/apache/http/client/BackoffManager;

.field public x:Lorg/apache/http/client/ServiceUnavailableRetryStrategy;

.field public y:Lorg/apache/http/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/config/Lookup<",
            "Lorg/apache/http/auth/AuthSchemeProvider;",
            ">;"
        }
    .end annotation
.end field

.field public z:Lorg/apache/http/config/Lookup;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/http/config/Lookup<",
            "Lorg/apache/http/cookie/CookieSpecProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->V:I

    iput v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->W:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->X:J

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iput-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->Y:Ljava/util/concurrent/TimeUnit;

    return-void
.end method

.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lorg/apache/http/util/TextUtils;->isBlank(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, " *, *"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static create()Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    new-instance v0, Lorg/apache/http/impl/client/HttpClientBuilder;

    invoke-direct {v0}, Lorg/apache/http/impl/client/HttpClientBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addCloseable(Ljava/io/Closeable;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->Z:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->Z:Ljava/util/List;

    :cond_1
    iget-object p0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->Z:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final addInterceptorFirst(Lorg/apache/http/HttpRequestInterceptor;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->o:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->o:Ljava/util/LinkedList;

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->o:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final addInterceptorFirst(Lorg/apache/http/HttpResponseInterceptor;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->q:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->q:Ljava/util/LinkedList;

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->q:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final addInterceptorLast(Lorg/apache/http/HttpRequestInterceptor;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 4
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->p:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->p:Ljava/util/LinkedList;

    .line 6
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->p:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-object p0
.end method

.method public final addInterceptorLast(Lorg/apache/http/HttpResponseInterceptor;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->r:Ljava/util/LinkedList;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->r:Ljava/util/LinkedList;

    .line 3
    :cond_1
    iget-object v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->r:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    return-object p0
.end method

.method public build()Lorg/apache/http/impl/client/CloseableHttpClient;
    .locals 23

    move-object/from16 v9, p0

    iget-object v0, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->a0:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    if-nez v0, :cond_0

    invoke-static {}, Lorg/apache/http/conn/util/PublicSuffixMatcherLoader;->getDefault()Lorg/apache/http/conn/util/PublicSuffixMatcher;

    move-result-object v0

    :cond_0
    move-object v10, v0

    iget-object v0, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->a:Lorg/apache/http/protocol/HttpRequestExecutor;

    if-nez v0, :cond_1

    new-instance v0, Lorg/apache/http/protocol/HttpRequestExecutor;

    invoke-direct {v0}, Lorg/apache/http/protocol/HttpRequestExecutor;-><init>()V

    :cond_1
    move-object v1, v0

    iget-object v0, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->e:Lorg/apache/http/conn/HttpClientConnectionManager;

    const-string v2, "http.keepAlive"

    const/4 v11, 0x2

    const-string v3, "true"

    if-nez v0, :cond_e

    iget-object v0, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->c:Lorg/apache/http/conn/socket/LayeredConnectionSocketFactory;

    if-nez v0, :cond_7

    iget-boolean v0, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->N:Z

    if-eqz v0, :cond_2

    const-string v0, "https.protocols"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/impl/client/HttpClientBuilder;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    iget-boolean v4, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->N:Z

    if-eqz v4, :cond_3

    const-string v4, "https.cipherSuites"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/apache/http/impl/client/HttpClientBuilder;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    iget-object v5, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->b:Ljavax/net/ssl/HostnameVerifier;

    if-nez v5, :cond_4

    new-instance v5, Lorg/apache/http/conn/ssl/DefaultHostnameVerifier;

    invoke-direct {v5, v10}, Lorg/apache/http/conn/ssl/DefaultHostnameVerifier;-><init>(Lorg/apache/http/conn/util/PublicSuffixMatcher;)V

    :cond_4
    iget-object v6, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->d:Ljavax/net/ssl/SSLContext;

    if-eqz v6, :cond_5

    new-instance v6, Lorg/apache/http/conn/ssl/SSLConnectionSocketFactory;

    iget-object v7, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->d:Ljavax/net/ssl/SSLContext;

    invoke-direct {v6, v7, v0, v4, v5}, Lorg/apache/http/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;[Ljava/lang/String;[Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;)V

    :goto_2
    move-object v0, v6

    goto :goto_3

    :cond_5
    iget-boolean v6, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->N:Z

    if-eqz v6, :cond_6

    new-instance v6, Lorg/apache/http/conn/ssl/SSLConnectionSocketFactory;

    invoke-static {}, Ljavax/net/ssl/SSLSocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v7

    check-cast v7, Ljavax/net/ssl/SSLSocketFactory;

    invoke-direct {v6, v7, v0, v4, v5}, Lorg/apache/http/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLSocketFactory;[Ljava/lang/String;[Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;)V

    goto :goto_2

    :cond_6
    new-instance v0, Lorg/apache/http/conn/ssl/SSLConnectionSocketFactory;

    invoke-static {}, Lorg/apache/http/ssl/SSLContexts;->createDefault()Ljavax/net/ssl/SSLContext;

    move-result-object v4

    invoke-direct {v0, v4, v5}, Lorg/apache/http/conn/ssl/SSLConnectionSocketFactory;-><init>(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/HostnameVerifier;)V

    :cond_7
    :goto_3
    new-instance v4, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;

    invoke-static {}, Lorg/apache/http/config/RegistryBuilder;->create()Lorg/apache/http/config/RegistryBuilder;

    move-result-object v5

    const-string v6, "http"

    invoke-static {}, Lorg/apache/http/conn/socket/PlainConnectionSocketFactory;->getSocketFactory()Lorg/apache/http/conn/socket/PlainConnectionSocketFactory;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v5

    const-string v6, "https"

    invoke-virtual {v5, v6, v0}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/http/config/RegistryBuilder;->build()Lorg/apache/http/config/Registry;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    iget-object v0, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->n:Lorg/apache/http/conn/DnsResolver;

    iget-wide v5, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->X:J

    iget-object v7, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->Y:Ljava/util/concurrent/TimeUnit;

    if-eqz v7, :cond_8

    goto :goto_4

    :cond_8
    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_4
    move-object/from16 v20, v7

    move-object v13, v4

    move-object/from16 v17, v0

    move-wide/from16 v18, v5

    invoke-direct/range {v13 .. v20}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;-><init>(Lorg/apache/http/config/Registry;Lorg/apache/http/conn/HttpConnectionFactory;Lorg/apache/http/conn/SchemePortResolver;Lorg/apache/http/conn/DnsResolver;JLjava/util/concurrent/TimeUnit;)V

    iget-object v0, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->G:Lorg/apache/http/config/SocketConfig;

    if-eqz v0, :cond_9

    invoke-virtual {v4, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setDefaultSocketConfig(Lorg/apache/http/config/SocketConfig;)V

    :cond_9
    iget-object v0, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->H:Lorg/apache/http/config/ConnectionConfig;

    if-eqz v0, :cond_a

    invoke-virtual {v4, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setDefaultConnectionConfig(Lorg/apache/http/config/ConnectionConfig;)V

    :cond_a
    iget-boolean v0, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->N:Z

    if-eqz v0, :cond_b

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "http.maxConnections"

    const-string v5, "5"

    invoke-static {v0, v5}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setDefaultMaxPerRoute(I)V

    mul-int/2addr v0, v11

    invoke-virtual {v4, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setMaxTotal(I)V

    :cond_b
    iget v0, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->V:I

    if-lez v0, :cond_c

    invoke-virtual {v4, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setMaxTotal(I)V

    :cond_c
    iget v0, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->W:I

    if-lez v0, :cond_d

    invoke-virtual {v4, v0}, Lorg/apache/http/impl/conn/PoolingHttpClientConnectionManager;->setDefaultMaxPerRoute(I)V

    :cond_d
    move-object v15, v4

    goto :goto_5

    :cond_e
    move-object v15, v0

    :goto_5
    iget-object v0, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->h:Lorg/apache/http/ConnectionReuseStrategy;

    if-nez v0, :cond_11

    iget-boolean v0, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->N:Z

    if-eqz v0, :cond_10

    invoke-static {v2, v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    sget-object v0, Lorg/apache/http/impl/client/DefaultClientConnectionReuseStrategy;->INSTANCE:Lorg/apache/http/impl/client/DefaultClientConnectionReuseStrategy;

    goto :goto_6

    :cond_f
    sget-object v0, Lorg/apache/http/impl/NoConnectionReuseStrategy;->INSTANCE:Lorg/apache/http/impl/NoConnectionReuseStrategy;

    goto :goto_6

    :cond_10
    sget-object v0, Lorg/apache/http/impl/client/DefaultClientConnectionReuseStrategy;->INSTANCE:Lorg/apache/http/impl/client/DefaultClientConnectionReuseStrategy;

    :cond_11
    :goto_6
    move-object v3, v0

    iget-object v0, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->i:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    if-nez v0, :cond_12

    sget-object v0, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;->INSTANCE:Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;

    :cond_12
    move-object v4, v0

    iget-object v0, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->j:Lorg/apache/http/client/AuthenticationStrategy;

    if-nez v0, :cond_13

    sget-object v0, Lorg/apache/http/impl/client/TargetAuthenticationStrategy;->INSTANCE:Lorg/apache/http/impl/client/TargetAuthenticationStrategy;

    :cond_13
    move-object v6, v0

    iget-object v0, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->k:Lorg/apache/http/client/AuthenticationStrategy;

    if-nez v0, :cond_14

    sget-object v0, Lorg/apache/http/impl/client/ProxyAuthenticationStrategy;->INSTANCE:Lorg/apache/http/impl/client/ProxyAuthenticationStrategy;

    :cond_14
    move-object v7, v0

    iget-object v0, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->l:Lorg/apache/http/client/UserTokenHandler;

    if-nez v0, :cond_16

    iget-boolean v0, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->T:Z

    if-nez v0, :cond_15

    sget-object v0, Lorg/apache/http/impl/client/DefaultUserTokenHandler;->INSTANCE:Lorg/apache/http/impl/client/DefaultUserTokenHandler;

    goto :goto_7

    :cond_15
    sget-object v0, Lorg/apache/http/impl/client/NoopUserTokenHandler;->INSTANCE:Lorg/apache/http/impl/client/NoopUserTokenHandler;

    :cond_16
    :goto_7
    move-object v8, v0

    iget-object v0, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->D:Ljava/lang/String;

    if-nez v0, :cond_18

    iget-boolean v2, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->N:Z

    if-eqz v2, :cond_17

    const-string v0, "http.agent"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_17
    if-nez v0, :cond_18

    iget-boolean v2, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->U:Z

    if-nez v2, :cond_18

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v2, "Apache-HttpClient"

    const-string v5, "org.apache.http.client"

    invoke-static {v2, v5, v0}, Lorg/apache/http/util/VersionInfo;->getUserAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    :cond_18
    move-object v13, v0

    new-instance v5, Lorg/apache/http/protocol/ImmutableHttpProcessor;

    new-array v0, v11, [Lorg/apache/http/HttpRequestInterceptor;

    new-instance v2, Lorg/apache/http/protocol/RequestTargetHost;

    invoke-direct {v2}, Lorg/apache/http/protocol/RequestTargetHost;-><init>()V

    const/4 v14, 0x0

    aput-object v2, v0, v14

    new-instance v2, Lorg/apache/http/protocol/RequestUserAgent;

    invoke-direct {v2, v13}, Lorg/apache/http/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    const/4 v12, 0x1

    aput-object v2, v0, v12

    invoke-direct {v5, v0}, Lorg/apache/http/protocol/ImmutableHttpProcessor;-><init>([Lorg/apache/http/HttpRequestInterceptor;)V

    move-object/from16 v0, p0

    move-object v2, v15

    invoke-virtual/range {v0 .. v8}, Lorg/apache/http/impl/client/HttpClientBuilder;->createMainExec(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/UserTokenHandler;)Lorg/apache/http/impl/execchain/ClientExecChain;

    move-result-object v0

    invoke-virtual {v9, v0}, Lorg/apache/http/impl/client/HttpClientBuilder;->decorateMainExec(Lorg/apache/http/impl/execchain/ClientExecChain;)Lorg/apache/http/impl/execchain/ClientExecChain;

    move-result-object v0

    iget-object v1, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->m:Lorg/apache/http/protocol/HttpProcessor;

    if-nez v1, :cond_25

    invoke-static {}, Lorg/apache/http/protocol/HttpProcessorBuilder;->create()Lorg/apache/http/protocol/HttpProcessorBuilder;

    move-result-object v1

    iget-object v2, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->o:Ljava/util/LinkedList;

    if-eqz v2, :cond_19

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/HttpRequestInterceptor;

    invoke-virtual {v1, v3}, Lorg/apache/http/protocol/HttpProcessorBuilder;->addFirst(Lorg/apache/http/HttpRequestInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    goto :goto_8

    :cond_19
    iget-object v2, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->q:Ljava/util/LinkedList;

    if-eqz v2, :cond_1a

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/HttpResponseInterceptor;

    invoke-virtual {v1, v3}, Lorg/apache/http/protocol/HttpProcessorBuilder;->addFirst(Lorg/apache/http/HttpResponseInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    goto :goto_9

    :cond_1a
    const/4 v2, 0x6

    new-array v2, v2, [Lorg/apache/http/HttpRequestInterceptor;

    new-instance v3, Lorg/apache/http/client/protocol/RequestDefaultHeaders;

    iget-object v4, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->F:Ljava/util/Collection;

    invoke-direct {v3, v4}, Lorg/apache/http/client/protocol/RequestDefaultHeaders;-><init>(Ljava/util/Collection;)V

    aput-object v3, v2, v14

    new-instance v3, Lorg/apache/http/protocol/RequestContent;

    invoke-direct {v3}, Lorg/apache/http/protocol/RequestContent;-><init>()V

    aput-object v3, v2, v12

    new-instance v3, Lorg/apache/http/protocol/RequestTargetHost;

    invoke-direct {v3}, Lorg/apache/http/protocol/RequestTargetHost;-><init>()V

    aput-object v3, v2, v11

    new-instance v3, Lorg/apache/http/client/protocol/RequestClientConnControl;

    invoke-direct {v3}, Lorg/apache/http/client/protocol/RequestClientConnControl;-><init>()V

    const/4 v4, 0x3

    aput-object v3, v2, v4

    new-instance v3, Lorg/apache/http/protocol/RequestUserAgent;

    invoke-direct {v3, v13}, Lorg/apache/http/protocol/RequestUserAgent;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x4

    aput-object v3, v2, v4

    new-instance v3, Lorg/apache/http/client/protocol/RequestExpectContinue;

    invoke-direct {v3}, Lorg/apache/http/client/protocol/RequestExpectContinue;-><init>()V

    const/4 v4, 0x5

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Lorg/apache/http/protocol/HttpProcessorBuilder;->addAll([Lorg/apache/http/HttpRequestInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    iget-boolean v2, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->R:Z

    if-nez v2, :cond_1b

    new-instance v2, Lorg/apache/http/client/protocol/RequestAddCookies;

    invoke-direct {v2}, Lorg/apache/http/client/protocol/RequestAddCookies;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/http/protocol/HttpProcessorBuilder;->add(Lorg/apache/http/HttpRequestInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    :cond_1b
    iget-boolean v2, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->Q:Z

    if-nez v2, :cond_1d

    iget-object v2, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->A:Ljava/util/Map;

    if-eqz v2, :cond_1c

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->A:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    new-instance v3, Lorg/apache/http/client/protocol/RequestAcceptEncoding;

    invoke-direct {v3, v2}, Lorg/apache/http/client/protocol/RequestAcceptEncoding;-><init>(Ljava/util/List;)V

    invoke-virtual {v1, v3}, Lorg/apache/http/protocol/HttpProcessorBuilder;->add(Lorg/apache/http/HttpRequestInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    goto :goto_a

    :cond_1c
    new-instance v2, Lorg/apache/http/client/protocol/RequestAcceptEncoding;

    invoke-direct {v2}, Lorg/apache/http/client/protocol/RequestAcceptEncoding;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/http/protocol/HttpProcessorBuilder;->add(Lorg/apache/http/HttpRequestInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    :cond_1d
    :goto_a
    iget-boolean v2, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->S:Z

    if-nez v2, :cond_1e

    new-instance v2, Lorg/apache/http/client/protocol/RequestAuthCache;

    invoke-direct {v2}, Lorg/apache/http/client/protocol/RequestAuthCache;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/http/protocol/HttpProcessorBuilder;->add(Lorg/apache/http/HttpRequestInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    :cond_1e
    iget-boolean v2, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->R:Z

    if-nez v2, :cond_1f

    new-instance v2, Lorg/apache/http/client/protocol/ResponseProcessCookies;

    invoke-direct {v2}, Lorg/apache/http/client/protocol/ResponseProcessCookies;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/http/protocol/HttpProcessorBuilder;->add(Lorg/apache/http/HttpResponseInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    :cond_1f
    iget-boolean v2, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->Q:Z

    if-nez v2, :cond_22

    iget-object v2, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->A:Ljava/util/Map;

    if-eqz v2, :cond_21

    invoke-static {}, Lorg/apache/http/config/RegistryBuilder;->create()Lorg/apache/http/config/RegistryBuilder;

    move-result-object v2

    iget-object v3, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->A:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v5, v4}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    goto :goto_b

    :cond_20
    new-instance v3, Lorg/apache/http/client/protocol/ResponseContentEncoding;

    invoke-virtual {v2}, Lorg/apache/http/config/RegistryBuilder;->build()Lorg/apache/http/config/Registry;

    move-result-object v2

    invoke-direct {v3, v2}, Lorg/apache/http/client/protocol/ResponseContentEncoding;-><init>(Lorg/apache/http/config/Lookup;)V

    invoke-virtual {v1, v3}, Lorg/apache/http/protocol/HttpProcessorBuilder;->add(Lorg/apache/http/HttpResponseInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    goto :goto_c

    :cond_21
    new-instance v2, Lorg/apache/http/client/protocol/ResponseContentEncoding;

    invoke-direct {v2}, Lorg/apache/http/client/protocol/ResponseContentEncoding;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/http/protocol/HttpProcessorBuilder;->add(Lorg/apache/http/HttpResponseInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    :cond_22
    :goto_c
    iget-object v2, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->p:Ljava/util/LinkedList;

    if-eqz v2, :cond_23

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_23

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/HttpRequestInterceptor;

    invoke-virtual {v1, v3}, Lorg/apache/http/protocol/HttpProcessorBuilder;->addLast(Lorg/apache/http/HttpRequestInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    goto :goto_d

    :cond_23
    iget-object v2, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->r:Ljava/util/LinkedList;

    if-eqz v2, :cond_24

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/http/HttpResponseInterceptor;

    invoke-virtual {v1, v3}, Lorg/apache/http/protocol/HttpProcessorBuilder;->addLast(Lorg/apache/http/HttpResponseInterceptor;)Lorg/apache/http/protocol/HttpProcessorBuilder;

    goto :goto_e

    :cond_24
    invoke-virtual {v1}, Lorg/apache/http/protocol/HttpProcessorBuilder;->build()Lorg/apache/http/protocol/HttpProcessor;

    move-result-object v1

    :cond_25
    new-instance v2, Lorg/apache/http/impl/execchain/ProtocolExec;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/execchain/ProtocolExec;-><init>(Lorg/apache/http/impl/execchain/ClientExecChain;Lorg/apache/http/protocol/HttpProcessor;)V

    invoke-virtual {v9, v2}, Lorg/apache/http/impl/client/HttpClientBuilder;->decorateProtocolExec(Lorg/apache/http/impl/execchain/ClientExecChain;)Lorg/apache/http/impl/execchain/ClientExecChain;

    move-result-object v0

    iget-boolean v1, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->P:Z

    if-nez v1, :cond_27

    iget-object v1, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->s:Lorg/apache/http/client/HttpRequestRetryHandler;

    if-nez v1, :cond_26

    sget-object v1, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;->INSTANCE:Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    :cond_26
    new-instance v2, Lorg/apache/http/impl/execchain/RetryExec;

    invoke-direct {v2, v0, v1}, Lorg/apache/http/impl/execchain/RetryExec;-><init>(Lorg/apache/http/impl/execchain/ClientExecChain;Lorg/apache/http/client/HttpRequestRetryHandler;)V

    move-object v0, v2

    :cond_27
    iget-object v1, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->t:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    if-nez v1, :cond_2b

    iget-object v1, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->g:Lorg/apache/http/conn/SchemePortResolver;

    if-nez v1, :cond_28

    sget-object v1, Lorg/apache/http/impl/conn/DefaultSchemePortResolver;->INSTANCE:Lorg/apache/http/impl/conn/DefaultSchemePortResolver;

    :cond_28
    iget-object v2, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->E:Lorg/apache/http/HttpHost;

    if-eqz v2, :cond_29

    new-instance v3, Lorg/apache/http/impl/conn/DefaultProxyRoutePlanner;

    invoke-direct {v3, v2, v1}, Lorg/apache/http/impl/conn/DefaultProxyRoutePlanner;-><init>(Lorg/apache/http/HttpHost;Lorg/apache/http/conn/SchemePortResolver;)V

    move-object v2, v3

    goto :goto_f

    :cond_29
    iget-boolean v2, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->N:Z

    if-eqz v2, :cond_2a

    new-instance v2, Lorg/apache/http/impl/conn/SystemDefaultRoutePlanner;

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lorg/apache/http/impl/conn/SystemDefaultRoutePlanner;-><init>(Lorg/apache/http/conn/SchemePortResolver;Ljava/net/ProxySelector;)V

    goto :goto_f

    :cond_2a
    new-instance v2, Lorg/apache/http/impl/conn/DefaultRoutePlanner;

    invoke-direct {v2, v1}, Lorg/apache/http/impl/conn/DefaultRoutePlanner;-><init>(Lorg/apache/http/conn/SchemePortResolver;)V

    goto :goto_f

    :cond_2b
    move-object v2, v1

    :goto_f
    iget-object v1, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->x:Lorg/apache/http/client/ServiceUnavailableRetryStrategy;

    if-eqz v1, :cond_2c

    new-instance v3, Lorg/apache/http/impl/execchain/ServiceUnavailableRetryExec;

    invoke-direct {v3, v0, v1}, Lorg/apache/http/impl/execchain/ServiceUnavailableRetryExec;-><init>(Lorg/apache/http/impl/execchain/ClientExecChain;Lorg/apache/http/client/ServiceUnavailableRetryStrategy;)V

    move-object v0, v3

    :cond_2c
    iget-boolean v1, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->O:Z

    if-nez v1, :cond_2e

    iget-object v1, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->u:Lorg/apache/http/client/RedirectStrategy;

    if-nez v1, :cond_2d

    sget-object v1, Lorg/apache/http/impl/client/DefaultRedirectStrategy;->INSTANCE:Lorg/apache/http/impl/client/DefaultRedirectStrategy;

    :cond_2d
    new-instance v3, Lorg/apache/http/impl/execchain/RedirectExec;

    invoke-direct {v3, v0, v2, v1}, Lorg/apache/http/impl/execchain/RedirectExec;-><init>(Lorg/apache/http/impl/execchain/ClientExecChain;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/client/RedirectStrategy;)V

    move-object v0, v3

    :cond_2e
    iget-object v1, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->w:Lorg/apache/http/client/BackoffManager;

    if-eqz v1, :cond_2f

    iget-object v3, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->v:Lorg/apache/http/client/ConnectionBackoffStrategy;

    if-eqz v3, :cond_2f

    new-instance v4, Lorg/apache/http/impl/execchain/BackoffStrategyExec;

    invoke-direct {v4, v0, v3, v1}, Lorg/apache/http/impl/execchain/BackoffStrategyExec;-><init>(Lorg/apache/http/impl/execchain/ClientExecChain;Lorg/apache/http/client/ConnectionBackoffStrategy;Lorg/apache/http/client/BackoffManager;)V

    move-object v0, v4

    :cond_2f
    iget-object v1, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->y:Lorg/apache/http/config/Lookup;

    if-nez v1, :cond_30

    invoke-static {}, Lorg/apache/http/config/RegistryBuilder;->create()Lorg/apache/http/config/RegistryBuilder;

    move-result-object v1

    new-instance v3, Lorg/apache/http/impl/auth/BasicSchemeFactory;

    invoke-direct {v3}, Lorg/apache/http/impl/auth/BasicSchemeFactory;-><init>()V

    const-string v4, "Basic"

    invoke-virtual {v1, v4, v3}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v1

    new-instance v3, Lorg/apache/http/impl/auth/DigestSchemeFactory;

    invoke-direct {v3}, Lorg/apache/http/impl/auth/DigestSchemeFactory;-><init>()V

    const-string v4, "Digest"

    invoke-virtual {v1, v4, v3}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v1

    new-instance v3, Lorg/apache/http/impl/auth/NTLMSchemeFactory;

    invoke-direct {v3}, Lorg/apache/http/impl/auth/NTLMSchemeFactory;-><init>()V

    const-string v4, "NTLM"

    invoke-virtual {v1, v4, v3}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v1

    new-instance v3, Lorg/apache/http/impl/auth/SPNegoSchemeFactory;

    invoke-direct {v3}, Lorg/apache/http/impl/auth/SPNegoSchemeFactory;-><init>()V

    const-string v4, "Negotiate"

    invoke-virtual {v1, v4, v3}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v1

    new-instance v3, Lorg/apache/http/impl/auth/KerberosSchemeFactory;

    invoke-direct {v3}, Lorg/apache/http/impl/auth/KerberosSchemeFactory;-><init>()V

    const-string v4, "Kerberos"

    invoke-virtual {v1, v4, v3}, Lorg/apache/http/config/RegistryBuilder;->register(Ljava/lang/String;Ljava/lang/Object;)Lorg/apache/http/config/RegistryBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/http/config/RegistryBuilder;->build()Lorg/apache/http/config/Registry;

    move-result-object v1

    :cond_30
    iget-object v3, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->z:Lorg/apache/http/config/Lookup;

    if-nez v3, :cond_31

    invoke-static {v10}, Lorg/apache/http/impl/client/CookieSpecRegistries;->createDefault(Lorg/apache/http/conn/util/PublicSuffixMatcher;)Lorg/apache/http/config/Lookup;

    move-result-object v3

    :cond_31
    iget-object v4, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->B:Lorg/apache/http/client/CookieStore;

    if-nez v4, :cond_32

    new-instance v4, Lorg/apache/http/impl/client/BasicCookieStore;

    invoke-direct {v4}, Lorg/apache/http/impl/client/BasicCookieStore;-><init>()V

    :cond_32
    iget-object v5, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->C:Lorg/apache/http/client/CredentialsProvider;

    if-nez v5, :cond_34

    iget-boolean v5, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->N:Z

    if-eqz v5, :cond_33

    new-instance v5, Lorg/apache/http/impl/client/SystemDefaultCredentialsProvider;

    invoke-direct {v5}, Lorg/apache/http/impl/client/SystemDefaultCredentialsProvider;-><init>()V

    goto :goto_10

    :cond_33
    new-instance v5, Lorg/apache/http/impl/client/BasicCredentialsProvider;

    invoke-direct {v5}, Lorg/apache/http/impl/client/BasicCredentialsProvider;-><init>()V

    :cond_34
    :goto_10
    iget-object v6, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->Z:Ljava/util/List;

    if-eqz v6, :cond_35

    new-instance v6, Ljava/util/ArrayList;

    iget-object v7, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->Z:Ljava/util/List;

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v16, v6

    goto :goto_11

    :cond_35
    const/16 v16, 0x0

    :goto_11
    iget-boolean v6, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->f:Z

    if-nez v6, :cond_3b

    if-nez v16, :cond_36

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v12}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_12

    :cond_36
    move-object/from16 v6, v16

    :goto_12
    iget-boolean v7, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->J:Z

    if-nez v7, :cond_38

    iget-boolean v7, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->K:Z

    if-eqz v7, :cond_37

    goto :goto_13

    :cond_37
    move-object/from16 v21, v5

    move-object v5, v15

    goto :goto_16

    :cond_38
    :goto_13
    new-instance v7, Lorg/apache/http/impl/client/IdleConnectionEvictor;

    iget-wide v10, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->L:J

    const-wide/16 v12, 0x0

    cmp-long v8, v10, v12

    if-lez v8, :cond_39

    move-wide/from16 v16, v10

    goto :goto_14

    :cond_39
    const-wide/16 v12, 0xa

    move-wide/from16 v16, v12

    :goto_14
    iget-object v8, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->M:Ljava/util/concurrent/TimeUnit;

    if-eqz v8, :cond_3a

    move-object v12, v8

    goto :goto_15

    :cond_3a
    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    :goto_15
    move-object v13, v7

    move-object v14, v15

    move-object/from16 v21, v5

    move-object v5, v15

    move-wide/from16 v15, v16

    move-object/from16 v17, v12

    move-wide/from16 v18, v10

    move-object/from16 v20, v8

    invoke-direct/range {v13 .. v20}, Lorg/apache/http/impl/client/IdleConnectionEvictor;-><init>(Lorg/apache/http/conn/HttpClientConnectionManager;JLjava/util/concurrent/TimeUnit;JLjava/util/concurrent/TimeUnit;)V

    new-instance v8, Lorg/apache/http/impl/client/HttpClientBuilder$a;

    invoke-direct {v8, v9, v7}, Lorg/apache/http/impl/client/HttpClientBuilder$a;-><init>(Lorg/apache/http/impl/client/HttpClientBuilder;Lorg/apache/http/impl/client/IdleConnectionEvictor;)V

    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7}, Lorg/apache/http/impl/client/IdleConnectionEvictor;->start()V

    :goto_16
    new-instance v7, Lorg/apache/http/impl/client/HttpClientBuilder$b;

    invoke-direct {v7, v9, v5}, Lorg/apache/http/impl/client/HttpClientBuilder$b;-><init>(Lorg/apache/http/impl/client/HttpClientBuilder;Lorg/apache/http/conn/HttpClientConnectionManager;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v22, v6

    goto :goto_17

    :cond_3b
    move-object/from16 v21, v5

    move-object v5, v15

    move-object/from16 v22, v16

    :goto_17
    new-instance v6, Lcom/sunia/HTREnginev2/jpi;

    iget-object v7, v9, Lorg/apache/http/impl/client/HttpClientBuilder;->I:Lorg/apache/http/client/config/RequestConfig;

    if-eqz v7, :cond_3c

    goto :goto_18

    :cond_3c
    sget-object v7, Lorg/apache/http/client/config/RequestConfig;->DEFAULT:Lorg/apache/http/client/config/RequestConfig;

    :goto_18
    move-object v13, v6

    move-object v14, v0

    move-object v15, v5

    move-object/from16 v16, v2

    move-object/from16 v17, v3

    move-object/from16 v18, v1

    move-object/from16 v19, v4

    move-object/from16 v20, v21

    move-object/from16 v21, v7

    invoke-direct/range {v13 .. v22}, Lcom/sunia/HTREnginev2/jpi;-><init>(Lorg/apache/http/impl/execchain/ClientExecChain;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/conn/routing/HttpRoutePlanner;Lorg/apache/http/config/Lookup;Lorg/apache/http/config/Lookup;Lorg/apache/http/client/CookieStore;Lorg/apache/http/client/CredentialsProvider;Lorg/apache/http/client/config/RequestConfig;Ljava/util/List;)V

    return-object v6
.end method

.method public createMainExec(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/UserTokenHandler;)Lorg/apache/http/impl/execchain/ClientExecChain;
    .locals 10

    new-instance v9, Lorg/apache/http/impl/execchain/MainClientExec;

    move-object v0, v9

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    invoke-direct/range {v0 .. v8}, Lorg/apache/http/impl/execchain/MainClientExec;-><init>(Lorg/apache/http/protocol/HttpRequestExecutor;Lorg/apache/http/conn/HttpClientConnectionManager;Lorg/apache/http/ConnectionReuseStrategy;Lorg/apache/http/conn/ConnectionKeepAliveStrategy;Lorg/apache/http/protocol/HttpProcessor;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/AuthenticationStrategy;Lorg/apache/http/client/UserTokenHandler;)V

    return-object v9
.end method

.method public decorateMainExec(Lorg/apache/http/impl/execchain/ClientExecChain;)Lorg/apache/http/impl/execchain/ClientExecChain;
    .locals 0

    return-object p1
.end method

.method public decorateProtocolExec(Lorg/apache/http/impl/execchain/ClientExecChain;)Lorg/apache/http/impl/execchain/ClientExecChain;
    .locals 0

    return-object p1
.end method

.method public final disableAuthCaching()Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->S:Z

    return-object p0
.end method

.method public final disableAutomaticRetries()Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->P:Z

    return-object p0
.end method

.method public final disableConnectionState()Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->T:Z

    return-object p0
.end method

.method public final disableContentCompression()Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->Q:Z

    return-object p0
.end method

.method public final disableCookieManagement()Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->R:Z

    return-object p0
.end method

.method public final disableDefaultUserAgent()Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->U:Z

    return-object p0
.end method

.method public final disableRedirectHandling()Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->O:Z

    return-object p0
.end method

.method public final evictExpiredConnections()Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->J:Z

    return-object p0
.end method

.method public final evictIdleConnections(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->K:Z

    .line 3
    iput-wide p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->L:J

    .line 4
    iput-object p3, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->M:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public final evictIdleConnections(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p2}, Lorg/apache/http/impl/client/HttpClientBuilder;->evictIdleConnections(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final setBackoffManager(Lorg/apache/http/client/BackoffManager;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->w:Lorg/apache/http/client/BackoffManager;

    return-object p0
.end method

.method public final setConnectionBackoffStrategy(Lorg/apache/http/client/ConnectionBackoffStrategy;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->v:Lorg/apache/http/client/ConnectionBackoffStrategy;

    return-object p0
.end method

.method public final setConnectionManager(Lorg/apache/http/conn/HttpClientConnectionManager;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->e:Lorg/apache/http/conn/HttpClientConnectionManager;

    return-object p0
.end method

.method public final setConnectionManagerShared(Z)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-boolean p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->f:Z

    return-object p0
.end method

.method public final setConnectionReuseStrategy(Lorg/apache/http/ConnectionReuseStrategy;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->h:Lorg/apache/http/ConnectionReuseStrategy;

    return-object p0
.end method

.method public final setConnectionTimeToLive(JLjava/util/concurrent/TimeUnit;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-wide p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->X:J

    iput-object p3, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->Y:Ljava/util/concurrent/TimeUnit;

    return-object p0
.end method

.method public final setContentDecoderRegistry(Ljava/util/Map;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/apache/http/client/entity/InputStreamFactory;",
            ">;)",
            "Lorg/apache/http/impl/client/HttpClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->A:Ljava/util/Map;

    return-object p0
.end method

.method public final setDefaultAuthSchemeRegistry(Lorg/apache/http/config/Lookup;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Lookup<",
            "Lorg/apache/http/auth/AuthSchemeProvider;",
            ">;)",
            "Lorg/apache/http/impl/client/HttpClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->y:Lorg/apache/http/config/Lookup;

    return-object p0
.end method

.method public final setDefaultConnectionConfig(Lorg/apache/http/config/ConnectionConfig;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->H:Lorg/apache/http/config/ConnectionConfig;

    return-object p0
.end method

.method public final setDefaultCookieSpecRegistry(Lorg/apache/http/config/Lookup;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/config/Lookup<",
            "Lorg/apache/http/cookie/CookieSpecProvider;",
            ">;)",
            "Lorg/apache/http/impl/client/HttpClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->z:Lorg/apache/http/config/Lookup;

    return-object p0
.end method

.method public final setDefaultCookieStore(Lorg/apache/http/client/CookieStore;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->B:Lorg/apache/http/client/CookieStore;

    return-object p0
.end method

.method public final setDefaultCredentialsProvider(Lorg/apache/http/client/CredentialsProvider;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->C:Lorg/apache/http/client/CredentialsProvider;

    return-object p0
.end method

.method public final setDefaultHeaders(Ljava/util/Collection;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/http/Header;",
            ">;)",
            "Lorg/apache/http/impl/client/HttpClientBuilder;"
        }
    .end annotation

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->F:Ljava/util/Collection;

    return-object p0
.end method

.method public final setDefaultRequestConfig(Lorg/apache/http/client/config/RequestConfig;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->I:Lorg/apache/http/client/config/RequestConfig;

    return-object p0
.end method

.method public final setDefaultSocketConfig(Lorg/apache/http/config/SocketConfig;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->G:Lorg/apache/http/config/SocketConfig;

    return-object p0
.end method

.method public final setDnsResolver(Lorg/apache/http/conn/DnsResolver;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->n:Lorg/apache/http/conn/DnsResolver;

    return-object p0
.end method

.method public final setHostnameVerifier(Lorg/apache/http/conn/ssl/X509HostnameVerifier;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->b:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public final setHttpProcessor(Lorg/apache/http/protocol/HttpProcessor;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->m:Lorg/apache/http/protocol/HttpProcessor;

    return-object p0
.end method

.method public final setKeepAliveStrategy(Lorg/apache/http/conn/ConnectionKeepAliveStrategy;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->i:Lorg/apache/http/conn/ConnectionKeepAliveStrategy;

    return-object p0
.end method

.method public final setMaxConnPerRoute(I)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->W:I

    return-object p0
.end method

.method public final setMaxConnTotal(I)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->V:I

    return-object p0
.end method

.method public final setProxy(Lorg/apache/http/HttpHost;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->E:Lorg/apache/http/HttpHost;

    return-object p0
.end method

.method public final setProxyAuthenticationStrategy(Lorg/apache/http/client/AuthenticationStrategy;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->k:Lorg/apache/http/client/AuthenticationStrategy;

    return-object p0
.end method

.method public final setPublicSuffixMatcher(Lorg/apache/http/conn/util/PublicSuffixMatcher;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->a0:Lorg/apache/http/conn/util/PublicSuffixMatcher;

    return-object p0
.end method

.method public final setRedirectStrategy(Lorg/apache/http/client/RedirectStrategy;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->u:Lorg/apache/http/client/RedirectStrategy;

    return-object p0
.end method

.method public final setRequestExecutor(Lorg/apache/http/protocol/HttpRequestExecutor;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->a:Lorg/apache/http/protocol/HttpRequestExecutor;

    return-object p0
.end method

.method public final setRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->s:Lorg/apache/http/client/HttpRequestRetryHandler;

    return-object p0
.end method

.method public final setRoutePlanner(Lorg/apache/http/conn/routing/HttpRoutePlanner;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->t:Lorg/apache/http/conn/routing/HttpRoutePlanner;

    return-object p0
.end method

.method public final setSSLContext(Ljavax/net/ssl/SSLContext;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->d:Ljavax/net/ssl/SSLContext;

    return-object p0
.end method

.method public final setSSLHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->b:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public final setSSLSocketFactory(Lorg/apache/http/conn/socket/LayeredConnectionSocketFactory;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->c:Lorg/apache/http/conn/socket/LayeredConnectionSocketFactory;

    return-object p0
.end method

.method public final setSchemePortResolver(Lorg/apache/http/conn/SchemePortResolver;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->g:Lorg/apache/http/conn/SchemePortResolver;

    return-object p0
.end method

.method public final setServiceUnavailableRetryStrategy(Lorg/apache/http/client/ServiceUnavailableRetryStrategy;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->x:Lorg/apache/http/client/ServiceUnavailableRetryStrategy;

    return-object p0
.end method

.method public final setSslcontext(Ljavax/net/ssl/SSLContext;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/http/impl/client/HttpClientBuilder;->setSSLContext(Ljavax/net/ssl/SSLContext;)Lorg/apache/http/impl/client/HttpClientBuilder;

    move-result-object p0

    return-object p0
.end method

.method public final setTargetAuthenticationStrategy(Lorg/apache/http/client/AuthenticationStrategy;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->j:Lorg/apache/http/client/AuthenticationStrategy;

    return-object p0
.end method

.method public final setUserAgent(Ljava/lang/String;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->D:Ljava/lang/String;

    return-object p0
.end method

.method public final setUserTokenHandler(Lorg/apache/http/client/UserTokenHandler;)Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 0

    iput-object p1, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->l:Lorg/apache/http/client/UserTokenHandler;

    return-object p0
.end method

.method public final useSystemProperties()Lorg/apache/http/impl/client/HttpClientBuilder;
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/http/impl/client/HttpClientBuilder;->N:Z

    return-object p0
.end method
