.class public Lcom/squareup/okhttp/OkHttpClient;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field public static final Q:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field public static final Z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field public static k0:Ljavax/net/ssl/SSLSocketFactory;


# instance fields
.field public J:I

.field public O:I

.field public final e:Lcom/squareup/okhttp/internal/RouteDatabase;

.field public f:Lcom/squareup/okhttp/Dispatcher;

.field public g:Ljava/net/Proxy;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field public final j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field public final k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Interceptor;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/net/ProxySelector;

.field public m:Ljava/net/CookieHandler;

.field public n:Lcom/squareup/okhttp/internal/InternalCache;

.field public o:Lcom/squareup/okhttp/Cache;

.field public p:Ljavax/net/SocketFactory;

.field public q:Ljavax/net/ssl/SSLSocketFactory;

.field public r:Ljavax/net/ssl/HostnameVerifier;

.field public s:Lcom/squareup/okhttp/CertificatePinner;

.field public t:Lcom/squareup/okhttp/Authenticator;

.field public u:Lcom/squareup/okhttp/ConnectionPool;

.field public v:Lcom/squareup/okhttp/internal/Network;

.field public w:Z

.field public x:Z

.field public y:Z

.field public z:I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_2:Lcom/squareup/okhttp/Protocol;

    sget-object v1, Lcom/squareup/okhttp/Protocol;->SPDY_3:Lcom/squareup/okhttp/Protocol;

    sget-object v2, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    filled-new-array {v0, v1, v2}, [Lcom/squareup/okhttp/Protocol;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/OkHttpClient;->Q:Ljava/util/List;

    sget-object v0, Lcom/squareup/okhttp/ConnectionSpec;->MODERN_TLS:Lcom/squareup/okhttp/ConnectionSpec;

    sget-object v1, Lcom/squareup/okhttp/ConnectionSpec;->COMPATIBLE_TLS:Lcom/squareup/okhttp/ConnectionSpec;

    sget-object v2, Lcom/squareup/okhttp/ConnectionSpec;->CLEARTEXT:Lcom/squareup/okhttp/ConnectionSpec;

    filled-new-array {v0, v1, v2}, [Lcom/squareup/okhttp/ConnectionSpec;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->immutableList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/OkHttpClient;->Z:Ljava/util/List;

    new-instance v0, Lcom/squareup/okhttp/OkHttpClient$a;

    invoke-direct {v0}, Lcom/squareup/okhttp/OkHttpClient$a;-><init>()V

    sput-object v0, Lcom/squareup/okhttp/internal/Internal;->instance:Lcom/squareup/okhttp/internal/Internal;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->j:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->k:Ljava/util/List;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/squareup/okhttp/OkHttpClient;->w:Z

    .line 5
    iput-boolean v0, p0, Lcom/squareup/okhttp/OkHttpClient;->x:Z

    .line 6
    iput-boolean v0, p0, Lcom/squareup/okhttp/OkHttpClient;->y:Z

    .line 7
    new-instance v0, Lcom/squareup/okhttp/internal/RouteDatabase;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/RouteDatabase;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->e:Lcom/squareup/okhttp/internal/RouteDatabase;

    .line 8
    new-instance v0, Lcom/squareup/okhttp/Dispatcher;

    invoke-direct {v0}, Lcom/squareup/okhttp/Dispatcher;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->f:Lcom/squareup/okhttp/Dispatcher;

    return-void
.end method

.method public constructor <init>(Lcom/squareup/okhttp/OkHttpClient;)V
    .locals 3

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->j:Ljava/util/List;

    .line 11
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/squareup/okhttp/OkHttpClient;->k:Ljava/util/List;

    const/4 v2, 0x1

    .line 12
    iput-boolean v2, p0, Lcom/squareup/okhttp/OkHttpClient;->w:Z

    .line 13
    iput-boolean v2, p0, Lcom/squareup/okhttp/OkHttpClient;->x:Z

    .line 14
    iput-boolean v2, p0, Lcom/squareup/okhttp/OkHttpClient;->y:Z

    .line 15
    iget-object v2, p1, Lcom/squareup/okhttp/OkHttpClient;->e:Lcom/squareup/okhttp/internal/RouteDatabase;

    iput-object v2, p0, Lcom/squareup/okhttp/OkHttpClient;->e:Lcom/squareup/okhttp/internal/RouteDatabase;

    .line 16
    iget-object v2, p1, Lcom/squareup/okhttp/OkHttpClient;->f:Lcom/squareup/okhttp/Dispatcher;

    iput-object v2, p0, Lcom/squareup/okhttp/OkHttpClient;->f:Lcom/squareup/okhttp/Dispatcher;

    .line 17
    iget-object v2, p1, Lcom/squareup/okhttp/OkHttpClient;->g:Ljava/net/Proxy;

    iput-object v2, p0, Lcom/squareup/okhttp/OkHttpClient;->g:Ljava/net/Proxy;

    .line 18
    iget-object v2, p1, Lcom/squareup/okhttp/OkHttpClient;->h:Ljava/util/List;

    iput-object v2, p0, Lcom/squareup/okhttp/OkHttpClient;->h:Ljava/util/List;

    .line 19
    iget-object v2, p1, Lcom/squareup/okhttp/OkHttpClient;->i:Ljava/util/List;

    iput-object v2, p0, Lcom/squareup/okhttp/OkHttpClient;->i:Ljava/util/List;

    .line 20
    iget-object v2, p1, Lcom/squareup/okhttp/OkHttpClient;->j:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 21
    iget-object v0, p1, Lcom/squareup/okhttp/OkHttpClient;->k:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    iget-object v0, p1, Lcom/squareup/okhttp/OkHttpClient;->l:Ljava/net/ProxySelector;

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->l:Ljava/net/ProxySelector;

    .line 23
    iget-object v0, p1, Lcom/squareup/okhttp/OkHttpClient;->m:Ljava/net/CookieHandler;

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->m:Ljava/net/CookieHandler;

    .line 24
    iget-object v0, p1, Lcom/squareup/okhttp/OkHttpClient;->o:Lcom/squareup/okhttp/Cache;

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->o:Lcom/squareup/okhttp/Cache;

    if-eqz v0, :cond_0

    .line 25
    iget-object v0, v0, Lcom/squareup/okhttp/Cache;->a:Lcom/squareup/okhttp/internal/InternalCache;

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/squareup/okhttp/OkHttpClient;->n:Lcom/squareup/okhttp/internal/InternalCache;

    :goto_0
    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->n:Lcom/squareup/okhttp/internal/InternalCache;

    .line 26
    iget-object v0, p1, Lcom/squareup/okhttp/OkHttpClient;->p:Ljavax/net/SocketFactory;

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->p:Ljavax/net/SocketFactory;

    .line 27
    iget-object v0, p1, Lcom/squareup/okhttp/OkHttpClient;->q:Ljavax/net/ssl/SSLSocketFactory;

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->q:Ljavax/net/ssl/SSLSocketFactory;

    .line 28
    iget-object v0, p1, Lcom/squareup/okhttp/OkHttpClient;->r:Ljavax/net/ssl/HostnameVerifier;

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->r:Ljavax/net/ssl/HostnameVerifier;

    .line 29
    iget-object v0, p1, Lcom/squareup/okhttp/OkHttpClient;->s:Lcom/squareup/okhttp/CertificatePinner;

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->s:Lcom/squareup/okhttp/CertificatePinner;

    .line 30
    iget-object v0, p1, Lcom/squareup/okhttp/OkHttpClient;->t:Lcom/squareup/okhttp/Authenticator;

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->t:Lcom/squareup/okhttp/Authenticator;

    .line 31
    iget-object v0, p1, Lcom/squareup/okhttp/OkHttpClient;->u:Lcom/squareup/okhttp/ConnectionPool;

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->u:Lcom/squareup/okhttp/ConnectionPool;

    .line 32
    iget-object v0, p1, Lcom/squareup/okhttp/OkHttpClient;->v:Lcom/squareup/okhttp/internal/Network;

    iput-object v0, p0, Lcom/squareup/okhttp/OkHttpClient;->v:Lcom/squareup/okhttp/internal/Network;

    .line 33
    iget-boolean v0, p1, Lcom/squareup/okhttp/OkHttpClient;->w:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/OkHttpClient;->w:Z

    .line 34
    iget-boolean v0, p1, Lcom/squareup/okhttp/OkHttpClient;->x:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/OkHttpClient;->x:Z

    .line 35
    iget-boolean v0, p1, Lcom/squareup/okhttp/OkHttpClient;->y:Z

    iput-boolean v0, p0, Lcom/squareup/okhttp/OkHttpClient;->y:Z

    .line 36
    iget v0, p1, Lcom/squareup/okhttp/OkHttpClient;->z:I

    iput v0, p0, Lcom/squareup/okhttp/OkHttpClient;->z:I

    .line 37
    iget v0, p1, Lcom/squareup/okhttp/OkHttpClient;->J:I

    iput v0, p0, Lcom/squareup/okhttp/OkHttpClient;->J:I

    .line 38
    iget p1, p1, Lcom/squareup/okhttp/OkHttpClient;->O:I

    iput p1, p0, Lcom/squareup/okhttp/OkHttpClient;->O:I

    return-void
.end method

.method public static synthetic a(Lcom/squareup/okhttp/OkHttpClient;)Lcom/squareup/okhttp/internal/Network;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->v:Lcom/squareup/okhttp/internal/Network;

    return-object p0
.end method

.method public static synthetic b(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/internal/Network;)Lcom/squareup/okhttp/internal/Network;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->v:Lcom/squareup/okhttp/internal/Network;

    return-object p1
.end method


# virtual methods
.method public c()Lcom/squareup/okhttp/OkHttpClient;
    .locals 2

    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/OkHttpClient;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    iget-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->l:Ljava/net/ProxySelector;

    if-nez v1, :cond_0

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->l:Ljava/net/ProxySelector;

    :cond_0
    iget-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->m:Ljava/net/CookieHandler;

    if-nez v1, :cond_1

    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->m:Ljava/net/CookieHandler;

    :cond_1
    iget-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->p:Ljavax/net/SocketFactory;

    if-nez v1, :cond_2

    invoke-static {}, Ljavax/net/SocketFactory;->getDefault()Ljavax/net/SocketFactory;

    move-result-object v1

    iput-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->p:Ljavax/net/SocketFactory;

    :cond_2
    iget-object v1, v0, Lcom/squareup/okhttp/OkHttpClient;->q:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v1, :cond_3

    invoke-virtual {p0}, Lcom/squareup/okhttp/OkHttpClient;->d()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    iput-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->q:Ljavax/net/ssl/SSLSocketFactory;

    :cond_3
    iget-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->r:Ljavax/net/ssl/HostnameVerifier;

    if-nez p0, :cond_4

    sget-object p0, Lcom/squareup/okhttp/internal/tls/OkHostnameVerifier;->INSTANCE:Lcom/squareup/okhttp/internal/tls/OkHostnameVerifier;

    iput-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->r:Ljavax/net/ssl/HostnameVerifier;

    :cond_4
    iget-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->s:Lcom/squareup/okhttp/CertificatePinner;

    if-nez p0, :cond_5

    sget-object p0, Lcom/squareup/okhttp/CertificatePinner;->DEFAULT:Lcom/squareup/okhttp/CertificatePinner;

    iput-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->s:Lcom/squareup/okhttp/CertificatePinner;

    :cond_5
    iget-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->t:Lcom/squareup/okhttp/Authenticator;

    if-nez p0, :cond_6

    sget-object p0, Lcom/squareup/okhttp/internal/http/AuthenticatorAdapter;->INSTANCE:Lcom/squareup/okhttp/Authenticator;

    iput-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->t:Lcom/squareup/okhttp/Authenticator;

    :cond_6
    iget-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->u:Lcom/squareup/okhttp/ConnectionPool;

    if-nez p0, :cond_7

    invoke-static {}, Lcom/squareup/okhttp/ConnectionPool;->getDefault()Lcom/squareup/okhttp/ConnectionPool;

    move-result-object p0

    iput-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->u:Lcom/squareup/okhttp/ConnectionPool;

    :cond_7
    iget-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->h:Ljava/util/List;

    if-nez p0, :cond_8

    sget-object p0, Lcom/squareup/okhttp/OkHttpClient;->Q:Ljava/util/List;

    iput-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->h:Ljava/util/List;

    :cond_8
    iget-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->i:Ljava/util/List;

    if-nez p0, :cond_9

    sget-object p0, Lcom/squareup/okhttp/OkHttpClient;->Z:Ljava/util/List;

    iput-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->i:Ljava/util/List;

    :cond_9
    iget-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->v:Lcom/squareup/okhttp/internal/Network;

    if-nez p0, :cond_a

    sget-object p0, Lcom/squareup/okhttp/internal/Network;->DEFAULT:Lcom/squareup/okhttp/internal/Network;

    iput-object p0, v0, Lcom/squareup/okhttp/OkHttpClient;->v:Lcom/squareup/okhttp/internal/Network;

    :cond_a
    return-object v0
.end method

.method public cancel(Ljava/lang/Object;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 1

    invoke-virtual {p0}, Lcom/squareup/okhttp/OkHttpClient;->getDispatcher()Lcom/squareup/okhttp/Dispatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/squareup/okhttp/Dispatcher;->cancel(Ljava/lang/Object;)V

    return-object p0
.end method

.method public clone()Lcom/squareup/okhttp/OkHttpClient;
    .locals 1

    .line 2
    new-instance v0, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v0, p0}, Lcom/squareup/okhttp/OkHttpClient;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/squareup/okhttp/OkHttpClient;->clone()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized d()Ljavax/net/ssl/SSLSocketFactory;
    .locals 2

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/squareup/okhttp/OkHttpClient;->k0:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "TLS"

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    sput-object v0, Lcom/squareup/okhttp/OkHttpClient;->k0:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    :try_start_2
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_0
    :goto_0
    sget-object v0, Lcom/squareup/okhttp/OkHttpClient;->k0:Ljavax/net/ssl/SSLSocketFactory;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public e()Lcom/squareup/okhttp/internal/InternalCache;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->n:Lcom/squareup/okhttp/internal/InternalCache;

    return-object p0
.end method

.method public f()Lcom/squareup/okhttp/internal/RouteDatabase;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->e:Lcom/squareup/okhttp/internal/RouteDatabase;

    return-object p0
.end method

.method public g(Lcom/squareup/okhttp/internal/InternalCache;)V
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->n:Lcom/squareup/okhttp/internal/InternalCache;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->o:Lcom/squareup/okhttp/Cache;

    return-void
.end method

.method public getAuthenticator()Lcom/squareup/okhttp/Authenticator;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->t:Lcom/squareup/okhttp/Authenticator;

    return-object p0
.end method

.method public getCache()Lcom/squareup/okhttp/Cache;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->o:Lcom/squareup/okhttp/Cache;

    return-object p0
.end method

.method public getCertificatePinner()Lcom/squareup/okhttp/CertificatePinner;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->s:Lcom/squareup/okhttp/CertificatePinner;

    return-object p0
.end method

.method public getConnectTimeout()I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/OkHttpClient;->z:I

    return p0
.end method

.method public getConnectionPool()Lcom/squareup/okhttp/ConnectionPool;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->u:Lcom/squareup/okhttp/ConnectionPool;

    return-object p0
.end method

.method public getConnectionSpecs()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/ConnectionSpec;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->i:Ljava/util/List;

    return-object p0
.end method

.method public getCookieHandler()Ljava/net/CookieHandler;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->m:Ljava/net/CookieHandler;

    return-object p0
.end method

.method public getDispatcher()Lcom/squareup/okhttp/Dispatcher;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->f:Lcom/squareup/okhttp/Dispatcher;

    return-object p0
.end method

.method public getFollowRedirects()Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/OkHttpClient;->x:Z

    return p0
.end method

.method public getFollowSslRedirects()Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/OkHttpClient;->w:Z

    return p0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->r:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public getProtocols()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->h:Ljava/util/List;

    return-object p0
.end method

.method public getProxy()Ljava/net/Proxy;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->g:Ljava/net/Proxy;

    return-object p0
.end method

.method public getProxySelector()Ljava/net/ProxySelector;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->l:Ljava/net/ProxySelector;

    return-object p0
.end method

.method public getReadTimeout()I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/OkHttpClient;->J:I

    return p0
.end method

.method public getRetryOnConnectionFailure()Z
    .locals 0

    iget-boolean p0, p0, Lcom/squareup/okhttp/OkHttpClient;->y:Z

    return p0
.end method

.method public getSocketFactory()Ljavax/net/SocketFactory;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->p:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 0

    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->q:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public getWriteTimeout()I
    .locals 0

    iget p0, p0, Lcom/squareup/okhttp/OkHttpClient;->O:I

    return p0
.end method

.method public interceptors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Interceptor;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->j:Ljava/util/List;

    return-object p0
.end method

.method public networkInterceptors()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Interceptor;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/squareup/okhttp/OkHttpClient;->k:Ljava/util/List;

    return-object p0
.end method

.method public newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;
    .locals 1

    new-instance v0, Lcom/squareup/okhttp/Call;

    invoke-direct {v0, p0, p1}, Lcom/squareup/okhttp/Call;-><init>(Lcom/squareup/okhttp/OkHttpClient;Lcom/squareup/okhttp/Request;)V

    return-object v0
.end method

.method public setAuthenticator(Lcom/squareup/okhttp/Authenticator;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->t:Lcom/squareup/okhttp/Authenticator;

    return-object p0
.end method

.method public setCache(Lcom/squareup/okhttp/Cache;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->o:Lcom/squareup/okhttp/Cache;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->n:Lcom/squareup/okhttp/internal/InternalCache;

    return-object p0
.end method

.method public setCertificatePinner(Lcom/squareup/okhttp/CertificatePinner;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->s:Lcom/squareup/okhttp/CertificatePinner;

    return-object p0
.end method

.method public setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/32 v3, 0x7fffffff

    cmp-long p3, p1, v3

    if-gtz p3, :cond_2

    cmp-long p3, p1, v0

    if-nez p3, :cond_1

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Timeout too small."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    long-to-int p1, p1

    iput p1, p0, Lcom/squareup/okhttp/OkHttpClient;->z:I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Timeout too large."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unit == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setConnectionPool(Lcom/squareup/okhttp/ConnectionPool;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->u:Lcom/squareup/okhttp/ConnectionPool;

    return-object p0
.end method

.method public setConnectionSpecs(Ljava/util/List;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/ConnectionSpec;",
            ">;)",
            "Lcom/squareup/okhttp/OkHttpClient;"
        }
    .end annotation

    invoke-static {p1}, Lcom/squareup/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->i:Ljava/util/List;

    return-object p0
.end method

.method public setCookieHandler(Ljava/net/CookieHandler;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->m:Ljava/net/CookieHandler;

    return-object p0
.end method

.method public setDispatcher(Lcom/squareup/okhttp/Dispatcher;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->f:Lcom/squareup/okhttp/Dispatcher;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "dispatcher == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setFollowRedirects(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/okhttp/OkHttpClient;->x:Z

    return-void
.end method

.method public setFollowSslRedirects(Z)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/okhttp/OkHttpClient;->w:Z

    return-object p0
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->r:Ljavax/net/ssl/HostnameVerifier;

    return-object p0
.end method

.method public setProtocols(Ljava/util/List;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;)",
            "Lcom/squareup/okhttp/OkHttpClient;"
        }
    .end annotation

    invoke-static {p1}, Lcom/squareup/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_1_1:Lcom/squareup/okhttp/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/squareup/okhttp/Protocol;->HTTP_1_0:Lcom/squareup/okhttp/Protocol;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lcom/squareup/okhttp/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->h:Ljava/util/List;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "protocols must not contain null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "protocols must not contain http/1.0: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "protocols doesn\'t contain http/1.1: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setProxy(Ljava/net/Proxy;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->g:Ljava/net/Proxy;

    return-object p0
.end method

.method public setProxySelector(Ljava/net/ProxySelector;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->l:Ljava/net/ProxySelector;

    return-object p0
.end method

.method public setReadTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/32 v3, 0x7fffffff

    cmp-long p3, p1, v3

    if-gtz p3, :cond_2

    cmp-long p3, p1, v0

    if-nez p3, :cond_1

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Timeout too small."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    long-to-int p1, p1

    iput p1, p0, Lcom/squareup/okhttp/OkHttpClient;->J:I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Timeout too large."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unit == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setRetryOnConnectionFailure(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/squareup/okhttp/OkHttpClient;->y:Z

    return-void
.end method

.method public setSocketFactory(Ljavax/net/SocketFactory;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->p:Ljavax/net/SocketFactory;

    return-object p0
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/OkHttpClient;
    .locals 0

    iput-object p1, p0, Lcom/squareup/okhttp/OkHttpClient;->q:Ljavax/net/ssl/SSLSocketFactory;

    return-object p0
.end method

.method public setWriteTimeout(JLjava/util/concurrent/TimeUnit;)V
    .locals 5

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    if-eqz p3, :cond_3

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    const-wide/32 v3, 0x7fffffff

    cmp-long p3, p1, v3

    if-gtz p3, :cond_2

    cmp-long p3, p1, v0

    if-nez p3, :cond_1

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Timeout too small."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    long-to-int p1, p1

    iput p1, p0, Lcom/squareup/okhttp/OkHttpClient;->O:I

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Timeout too large."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "unit == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "timeout < 0"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
