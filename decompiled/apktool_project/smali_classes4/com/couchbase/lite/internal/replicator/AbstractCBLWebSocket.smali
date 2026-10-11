.class public abstract Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/sockets/SocketFromCore;
.implements Lcom/couchbase/lite/internal/sockets/SocketFromRemote;
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket$WebSocketCookieJar;,
        Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket$ConstrainedAddressSocketFactory;
    }
.end annotation


# static fields
.field private static final CHALLENGE_BASIC:Ljava/lang/String; = "Basic"

.field public static final DEFAULT_HEARTBEAT_SEC:I = 0x12c

.field public static final HEADER_AUTH:Ljava/lang/String; = "Authorization"

.field public static final HEADER_COOKIES:Ljava/lang/String; = "Cookies"

.field public static final HEADER_PROXY_AUTH:Ljava/lang/String; = "Proxy-Authorization"

.field public static final HEADER_USER_AGENT:Ljava/lang/String; = "User-Agent"

.field private static final KEY_MANAGERS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding<",
            "Ljavax/net/ssl/KeyManager;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

.field public static final MAX_AUTH_RETRIES:I = 0x3


# instance fields
.field private final cookieStore:Lcom/couchbase/lite/internal/replicator/CBLCookieStore;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getPeerLock()"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final options:Ljava/util/Map;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final serverCertsListener:Lcom/couchbase/lite/internal/utils/Fn$Consumer;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/couchbase/lite/internal/utils/Fn$Consumer<",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;>;"
        }
    .end annotation
.end field

.field private final state:Lcom/couchbase/lite/internal/utils/StateMachine;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getPeerLock()"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/couchbase/lite/internal/utils/StateMachine<",
            "Lcom/couchbase/lite/internal/sockets/SocketState;",
            ">;"
        }
    .end annotation
.end field

.field private final toCore:Lcom/couchbase/lite/internal/sockets/SocketToCore;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final toRemote:Lcom/couchbase/lite/internal/sockets/SocketToRemote;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final uri:Ljava/net/URI;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/couchbase/lite/LogDomain;->NETWORK:Lcom/couchbase/lite/LogDomain;

    sput-object v0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    new-instance v0, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-direct {v0}, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->KEY_MANAGERS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/sockets/SocketToRemote;Lcom/couchbase/lite/internal/sockets/SocketToCore;Ljava/net/URI;[BLcom/couchbase/lite/internal/replicator/CBLCookieStore;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/sockets/SocketToRemote;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/sockets/SocketToCore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/net/URI;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p5    # Lcom/couchbase/lite/internal/replicator/CBLCookieStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Lcom/couchbase/lite/internal/utils/Fn$Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/sockets/SocketToRemote;",
            "Lcom/couchbase/lite/internal/sockets/SocketToCore;",
            "Ljava/net/URI;",
            "[B",
            "Lcom/couchbase/lite/internal/replicator/CBLCookieStore;",
            "Lcom/couchbase/lite/internal/utils/Fn$Consumer<",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/couchbase/lite/internal/sockets/SocketState;->getSocketStateMachine()Lcom/couchbase/lite/internal/utils/StateMachine;

    move-result-object v0

    iput-object v0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->state:Lcom/couchbase/lite/internal/utils/StateMachine;

    iput-object p2, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->toCore:Lcom/couchbase/lite/internal/sockets/SocketToCore;

    iput-object p1, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->toRemote:Lcom/couchbase/lite/internal/sockets/SocketToRemote;

    iput-object p3, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->uri:Ljava/net/URI;

    iput-object p5, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->cookieStore:Lcom/couchbase/lite/internal/replicator/CBLCookieStore;

    iput-object p6, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->serverCertsListener:Lcom/couchbase/lite/internal/utils/Fn$Consumer;

    if-nez p4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p4}, Lcom/couchbase/lite/internal/fleece/FLValue;->fromData([B)Lcom/couchbase/lite/internal/fleece/FLValue;

    move-result-object p1

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/fleece/FLValue;->asDict()Ljava/util/Map;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->options:Ljava/util/Map;

    return-void
.end method

.method public static synthetic H(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->lambda$setupSSLSocketFactory$3(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z

    move-result p0

    return p0
.end method

.method public static synthetic access$000(Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;)Lcom/couchbase/lite/internal/replicator/CBLCookieStore;
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->cookieStore:Lcom/couchbase/lite/internal/replicator/CBLCookieStore;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;)Lcom/couchbase/lite/internal/utils/StateMachine;
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->state:Lcom/couchbase/lite/internal/utils/StateMachine;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->options:Ljava/util/Map;

    return-object p0
.end method

.method public static addKeyManager(Ljavax/net/ssl/KeyManager;)J
    .locals 3
    .param p0    # Ljavax/net/ssl/KeyManager;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->KEY_MANAGERS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;->reserveKey()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p0}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->bind(JLjava/lang/Object;)V

    return-wide v1
.end method

.method private varargs assertState([Lcom/couchbase/lite/internal/sockets/SocketState;)Z
    .locals 1
    .param p1    # [Lcom/couchbase/lite/internal/sockets/SocketState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->state:Lcom/couchbase/lite/internal/utils/StateMachine;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/utils/StateMachine;->assertState([Ljava/lang/Enum;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private authenticate(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;
    .locals 4
    .param p1    # Lokhttp3/Response;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "RCN_REDUNDANT_NULLCHECK_OF_NONNULL_VALUE"
        }
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "%s.authenticate: %s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->responseCount(Lokhttp3/Response;)I

    move-result p0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-lt p0, v1, :cond_0

    return-object v2

    :cond_0
    invoke-virtual {p1}, Lokhttp3/Response;->challenges()Ljava/util/List;

    move-result-object p0

    const-string v1, "challenges: %s"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v3}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p0, :cond_1

    return-object v2

    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/Challenge;

    const-string v1, "Basic"

    invoke-virtual {v0}, Lokhttp3/Challenge;->scheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0, p2, p3}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v2
.end method

.method private changeState(Lcom/couchbase/lite/internal/sockets/SocketState;)Z
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/sockets/SocketState;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->getLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->state:Lcom/couchbase/lite/internal/utils/StateMachine;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/utils/StateMachine;->setState(Ljava/lang/Enum;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private encodeHeaders(Ljava/util/Map;)[B
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)[B"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->getManagedEncoder()Lcom/couchbase/lite/internal/fleece/FLEncoder;

    move-result-object p0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->write(Ljava/util/Map;)Z

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->finish()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->close()V
    :try_end_2
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_2 .. :try_end_2} :catch_0

    return-object v0

    :catchall_0
    move-exception v0

    if-eqz p0, :cond_0

    :try_start_3
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    throw v0
    :try_end_4
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    sget-object v0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "CBLWebSocket failed to encode response headers"

    invoke-static {v0, v1, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lcom/couchbase/lite/internal/utils/StringUtils;->toString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic f(Ljava/lang/String;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->lambda$forcePreAuth$2(Ljava/lang/String;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;

    move-result-object p0

    return-object p0
.end method

.method private forcePreAuth(Lokhttp3/OkHttpClient$Builder;Ljava/lang/String;)V
    .locals 0
    .param p1    # Lokhttp3/OkHttpClient$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance p0, Lcom/sunia/HTREnginev2/o2;

    invoke-direct {p0, p2}, Lcom/sunia/HTREnginev2/o2;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    return-void
.end method

.method private getCodeForError(Ljava/lang/Throwable;)I
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->handleCloseCause(Ljava/lang/Throwable;)I

    move-result p0

    if-lez p0, :cond_1

    return p0

    :cond_1
    instance-of p0, p1, Ljava/security/cert/CertificateExpiredException;

    if-eqz p0, :cond_2

    const/16 p0, 0xe

    return p0

    :cond_2
    instance-of p0, p1, Ljava/security/cert/CertificateException;

    if-eqz p0, :cond_3

    const/16 p0, 0x8

    return p0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private getKeyManager(Ljava/util/Map;)Ljavax/net/ssl/KeyManager;
    .locals 2
    .param p1    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)",
            "Ljavax/net/ssl/KeyManager;"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_2

    const-string v0, "type"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Client Cert"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "clientCertKey"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Long;

    if-eqz v0, :cond_1

    sget-object p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->KEY_MANAGERS:Lcom/couchbase/lite/internal/core/peers/TaggedWeakPeerBinding;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/couchbase/lite/internal/core/peers/WeakPeerBinding;->getBinding(J)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/net/ssl/KeyManager;

    :cond_1
    if-nez p0, :cond_2

    sget-object p1, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v0, "CBLWebSocket: No key manager configured for client certificate authentication"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-object p0
.end method

.method private getSelectedInterface(Ljava/lang/String;)Ljava/net/InetAddress;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 p0, 0x5

    :try_start_0
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/net/NetworkInterface;

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInterfaceAddresses()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 p1, 0x0

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/net/InterfaceAddress;

    invoke-virtual {p1}, Ljava/net/InterfaceAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1

    return-object p0

    :cond_1
    :try_start_1
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p0
    :try_end_1
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/couchbase/lite/internal/sockets/CBLSocketException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not resolve specified interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v2, 0x1b

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/couchbase/lite/internal/sockets/CBLSocketException;-><init>(IILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception p1

    new-instance v0, Lcom/couchbase/lite/internal/sockets/CBLSocketException;

    const/16 v1, 0x14

    const-string v2, "Could not get device interfaces"

    invoke-direct {v0, p0, v1, v2, p1}, Lcom/couchbase/lite/internal/sockets/CBLSocketException;-><init>(IILjava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method private getStatusForError(Ljava/lang/Throwable;)Lcom/couchbase/lite/internal/sockets/CloseStatus;
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "WebSocket CLOSED with error"

    invoke-static {v0, v1, p1}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x6

    if-nez p1, :cond_0

    new-instance p0, Lcom/couchbase/lite/internal/sockets/CloseStatus;

    const/4 p1, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/couchbase/lite/internal/sockets/CloseStatus;-><init>(IILjava/lang/String;)V

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->handleClose(Ljava/lang/Throwable;)Lcom/couchbase/lite/internal/sockets/CloseStatus;

    move-result-object v1

    if-eqz v1, :cond_1

    return-object v1

    :cond_1
    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->getCodeForError(Ljava/lang/Throwable;)I

    move-result p0

    instance-of v1, p1, Ljava/net/SocketTimeoutException;

    const/4 v2, 0x5

    if-eqz v1, :cond_2

    const/4 v0, 0x3

    :goto_0
    move p0, v0

    :goto_1
    move v0, v2

    goto :goto_5

    :cond_2
    instance-of v1, p1, Ljava/net/NoRouteToHostException;

    if-nez v1, :cond_d

    instance-of v1, p1, Ljava/net/PortUnreachableException;

    if-eqz v1, :cond_3

    goto :goto_4

    :cond_3
    instance-of v1, p1, Ljava/net/SocketException;

    if-nez v1, :cond_c

    instance-of v1, p1, Ljava/io/EOFException;

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    if-lez p0, :cond_5

    goto :goto_1

    :cond_5
    instance-of p0, p1, Ljava/net/UnknownHostException;

    if-eqz p0, :cond_6

    const/4 v0, 0x2

    goto :goto_0

    :cond_6
    instance-of p0, p1, Ljavax/net/ssl/SSLHandshakeException;

    if-eqz p0, :cond_7

    goto :goto_0

    :cond_7
    instance-of p0, p1, Ljavax/net/ssl/SSLKeyException;

    if-nez p0, :cond_b

    instance-of p0, p1, Ljavax/net/ssl/SSLPeerUnverifiedException;

    if-eqz p0, :cond_8

    goto :goto_2

    :cond_8
    instance-of p0, p1, Ljavax/net/ssl/SSLProtocolException;

    if-eqz p0, :cond_9

    const/16 p0, 0x3ea

    goto :goto_5

    :cond_9
    instance-of p0, p1, Ljavax/net/ssl/SSLException;

    if-eqz p0, :cond_a

    const/16 v0, 0x12

    goto :goto_0

    :cond_a
    const/16 p0, 0x3f0

    goto :goto_5

    :cond_b
    :goto_2
    const/16 v0, 0x8

    goto :goto_0

    :cond_c
    :goto_3
    const/16 v0, 0x16

    goto :goto_0

    :cond_d
    :goto_4
    const/16 v0, 0x18

    goto :goto_0

    :goto_5
    new-instance v1, Lcom/couchbase/lite/internal/sockets/CloseStatus;

    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v0, p0, p1}, Lcom/couchbase/lite/internal/sockets/CloseStatus;-><init>(IILjava/lang/String;)V

    return-object v1
.end method

.method public static synthetic j(Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;Ljava/lang/String;Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->lambda$setupAuthentication$0(Ljava/lang/String;Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$forcePreAuth$2(Ljava/lang/String;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v0

    :try_start_0
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object p0, v0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v1

    const-string v2, "Authorization"

    invoke-virtual {v1, v2, p0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p0

    :goto_0
    invoke-interface {p1, p0}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected interceptor failure @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "\""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    throw p0
.end method

.method private synthetic lambda$setupAuthentication$0(Ljava/lang/String;Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "Proxy-Authorization"

    invoke-direct {p0, p3, p2, p1}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->authenticate(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$setupAuthentication$1(Ljava/lang/String;Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string p2, "Authorization"

    invoke-direct {p0, p3, p2, p1}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->authenticate(Lokhttp3/Response;Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$setupSSLSocketFactory$3(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private responseCount(Lokhttp3/Response;)I
    .locals 0

    const/4 p0, 0x1

    :goto_0
    invoke-virtual {p1}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object p1

    if-eqz p1, :cond_0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return p0
.end method

.method private setupAuthentication(Lokhttp3/OkHttpClient$Builder;Ljava/util/Map;)V
    .locals 3
    .param p1    # Lokhttp3/OkHttpClient$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient$Builder;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    const-string v0, "proxyUser"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "proxyPassword"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v0, Ljava/lang/String;

    if-eqz v2, :cond_0

    instance-of v2, v1, Ljava/lang/String;

    if-eqz v2, :cond_0

    check-cast v0, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    invoke-static {v0, v1}, Lokhttp3/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/q2;

    invoke-direct {v1, p0, v0}, Lcom/sunia/HTREnginev2/q2;-><init>(Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lokhttp3/OkHttpClient$Builder;->proxyAuthenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    :cond_0
    const-string v0, "type"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Basic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "username"

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "password"

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_1

    instance-of v1, p2, Ljava/lang/String;

    if-eqz v1, :cond_1

    check-cast v0, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    invoke-static {v0, p2}, Lokhttp3/Credentials;->basic(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance v0, Lcom/sunia/HTREnginev2/r2;

    invoke-direct {v0, p0, p2}, Lcom/sunia/HTREnginev2/r2;-><init>(Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->authenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->forcePreAuth(Lokhttp3/OkHttpClient$Builder;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private setupSSLSocketFactory(Lokhttp3/OkHttpClient$Builder;Ljava/util/Map;)V
    .locals 7
    .param p1    # Lokhttp3/OkHttpClient$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient$Builder;",
            "Ljava/util/Map<",
            "**>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->options:Ljava/util/Map;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    const-string v4, "pinnedCert"

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, [B

    if-eqz v4, :cond_0

    :try_start_0
    const-string v4, "X.509"

    invoke-static {v4}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v4

    new-instance v5, Ljava/io/ByteArrayInputStream;

    check-cast v0, [B

    invoke-direct {v5, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v4, v5}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    check-cast v0, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v4, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v5, "Can\'t parse pinned certificate.  Ignored"

    invoke-static {v4, v5, v0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    move-object v0, v2

    :goto_0
    iget-object v4, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->options:Ljava/util/Map;

    const-string v5, "onlySelfSignedServer"

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    instance-of v5, v4, Ljava/lang/Boolean;

    if-eqz v5, :cond_1

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-direct {p0, p2}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->getKeyManager(Ljava/util/Map;)Ljavax/net/ssl/KeyManager;

    move-result-object p2

    if-eqz p2, :cond_2

    new-array v5, v1, [Ljavax/net/ssl/KeyManager;

    aput-object p2, v5, v3

    goto :goto_2

    :cond_2
    move-object v5, v2

    :goto_2
    iget-object p2, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->options:Ljava/util/Map;

    const-string v6, "networkInterface"

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    instance-of v6, p2, Ljava/lang/String;

    if-eqz v6, :cond_3

    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->getSelectedInterface(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p2

    goto :goto_3

    :cond_3
    move-object p2, v2

    goto :goto_3

    :cond_4
    move-object p2, v2

    move-object v0, p2

    move-object v5, v0

    move v4, v3

    :goto_3
    new-instance v6, Lcom/couchbase/lite/internal/replicator/CBLTrustManager;

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->serverCertsListener:Lcom/couchbase/lite/internal/utils/Fn$Consumer;

    invoke-direct {v6, v0, v4, p0}, Lcom/couchbase/lite/internal/replicator/CBLTrustManager;-><init>(Ljava/security/cert/X509Certificate;ZLcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    :try_start_1
    const-string p0, "TLS"

    invoke-static {p0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object p0

    new-array v1, v1, [Ljavax/net/ssl/TrustManager;

    aput-object v6, v1, v3

    invoke-virtual {p0, v5, v1, v2}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/KeyManagementException; {:try_start_1 .. :try_end_1} :catch_1

    invoke-virtual {p0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object p0

    if-nez p2, :cond_5

    goto :goto_4

    :cond_5
    new-instance v1, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket$ConstrainedAddressSocketFactory;

    invoke-direct {v1, p2, p0, v2}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket$ConstrainedAddressSocketFactory;-><init>(Ljava/net/InetAddress;Ljavax/net/ssl/SSLSocketFactory;Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket$1;)V

    move-object p0, v1

    :goto_4
    invoke-virtual {p1, p0, v6}, Lokhttp3/OkHttpClient$Builder;->sslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/X509TrustManager;)Lokhttp3/OkHttpClient$Builder;

    if-nez v0, :cond_6

    if-eqz v4, :cond_7

    :cond_6
    new-instance p0, Lcom/sunia/HTREnginev2/p2;

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/p2;-><init>()V

    invoke-virtual {p1, p0}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    :cond_7
    return-void

    :catch_1
    move-exception p0

    new-instance p1, Lcom/couchbase/lite/internal/sockets/CBLSocketException;

    const/16 p2, 0x3f3

    const-string v0, "Failed getting SSL context"

    const/4 v1, 0x6

    invoke-direct {p1, v1, p2, v0, p0}, Lcom/couchbase/lite/internal/sockets/CBLSocketException;-><init>(IILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static synthetic w(Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;Ljava/lang/String;Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->lambda$setupAuthentication$1(Ljava/lang/String;Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public close()V
    .locals 3

    sget-object v0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    iget-object v1, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->uri:Ljava/net/URI;

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s.close: %s"

    invoke-static {v0, v2, v1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->toCore:Lcom/couchbase/lite/internal/sockets/SocketToCore;

    new-instance v0, Lcom/couchbase/lite/internal/sockets/CloseStatus;

    const/16 v1, 0x3e9

    const-string v2, "Closed by client"

    invoke-direct {v0, v1, v2}, Lcom/couchbase/lite/internal/sockets/CloseStatus;-><init>(ILjava/lang/String;)V

    invoke-interface {p0, v0}, Lcom/couchbase/lite/internal/sockets/SocketToCore;->requestCoreClose(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V

    return-void
.end method

.method public coreAcksWrite(J)V
    .locals 1

    sget-object v0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%s.coreAckReceive: %d"

    invoke-static {v0, p1, p0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final coreClosed()V
    .locals 2

    sget-object v0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "%s.coreClosed: ignoring unexpected call"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, v1, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final coreRequestsClose(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V
    .locals 4
    .param p1    # Lcom/couchbase/lite/internal/sockets/CloseStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "%s.coreRequestsClose: %s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v1, Lcom/couchbase/lite/internal/sockets/SocketState;->OPENING:Lcom/couchbase/lite/internal/sockets/SocketState;

    sget-object v2, Lcom/couchbase/lite/internal/sockets/SocketState;->OPEN:Lcom/couchbase/lite/internal/sockets/SocketState;

    sget-object v3, Lcom/couchbase/lite/internal/sockets/SocketState;->CLOSING:Lcom/couchbase/lite/internal/sockets/SocketState;

    filled-new-array {v1, v2, v3}, [Lcom/couchbase/lite/internal/sockets/SocketState;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->assertState([Lcom/couchbase/lite/internal/sockets/SocketState;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p1, Lcom/couchbase/lite/internal/sockets/CloseStatus;->code:I

    const/16 v2, 0x64

    if-le v1, v2, :cond_1

    const/16 v2, 0x258

    if-ge v1, v2, :cond_1

    new-instance v1, Lcom/couchbase/lite/internal/sockets/CloseStatus;

    const/16 v2, 0x3f0

    iget-object p1, p1, Lcom/couchbase/lite/internal/sockets/CloseStatus;->message:Ljava/lang/String;

    const/4 v3, 0x6

    invoke-direct {v1, v3, v2, p1}, Lcom/couchbase/lite/internal/sockets/CloseStatus;-><init>(IILjava/lang/String;)V

    move-object p1, v1

    :cond_1
    iget-object v1, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->toRemote:Lcom/couchbase/lite/internal/sockets/SocketToRemote;

    invoke-interface {v1, p1}, Lcom/couchbase/lite/internal/sockets/SocketToRemote;->closeRemote(Lcom/couchbase/lite/internal/sockets/CloseStatus;)Z

    move-result p1

    if-eqz p1, :cond_2

    return-void

    :cond_2
    const-string p1, "%s.coreRequestsClose: Could not close remote"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final coreRequestsOpen()V
    .locals 3

    sget-object v0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "%s.coreRequestedOpen"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/couchbase/lite/internal/sockets/SocketState;->OPENING:Lcom/couchbase/lite/internal/sockets/SocketState;

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->changeState(Lcom/couchbase/lite/internal/sockets/SocketState;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->toRemote:Lcom/couchbase/lite/internal/sockets/SocketToRemote;

    iget-object v1, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->uri:Ljava/net/URI;

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->options:Ljava/util/Map;

    invoke-interface {v0, v1, p0}, Lcom/couchbase/lite/internal/sockets/SocketToRemote;->openRemote(Ljava/net/URI;Ljava/util/Map;)Z

    return-void
.end method

.method public final coreWrites([B)V
    .locals 4
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    array-length v0, p1

    sget-object v1, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "%s.coreWrites: %d"

    invoke-static {v1, v3, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v2, Lcom/couchbase/lite/internal/sockets/SocketState;->OPEN:Lcom/couchbase/lite/internal/sockets/SocketState;

    sget-object v3, Lcom/couchbase/lite/internal/sockets/SocketState;->CLOSING:Lcom/couchbase/lite/internal/sockets/SocketState;

    filled-new-array {v2, v3}, [Lcom/couchbase/lite/internal/sockets/SocketState;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->assertState([Lcom/couchbase/lite/internal/sockets/SocketState;)Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->toRemote:Lcom/couchbase/lite/internal/sockets/SocketToRemote;

    invoke-interface {v2, p1}, Lcom/couchbase/lite/internal/sockets/SocketToRemote;->writeToRemote([B)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->toCore:Lcom/couchbase/lite/internal/sockets/SocketToCore;

    int-to-long v0, v0

    invoke-interface {p0, v0, v1}, Lcom/couchbase/lite/internal/sockets/SocketToCore;->ackWriteToCore(J)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "CBLWebSocket failed to send data of length: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return-void
.end method

.method public getLock()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->toCore:Lcom/couchbase/lite/internal/sockets/SocketToCore;

    invoke-interface {p0}, Lcom/couchbase/lite/internal/sockets/SocketToCore;->getLock()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getOptions()Ljava/util/Map;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->options:Ljava/util/Map;

    return-object p0
.end method

.method public getSocketState()Lcom/couchbase/lite/internal/sockets/SocketState;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->state:Lcom/couchbase/lite/internal/utils/StateMachine;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/utils/StateMachine;->getCurrentState()Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/sockets/SocketState;

    return-object p0
.end method

.method public abstract handleClose(Ljava/lang/Throwable;)Lcom/couchbase/lite/internal/sockets/CloseStatus;
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract handleCloseCause(Ljava/lang/Throwable;)I
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public remoteClosed(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/sockets/CloseStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "%s.remoteClosed: %s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/couchbase/lite/internal/sockets/SocketState;->CLOSED:Lcom/couchbase/lite/internal/sockets/SocketState;

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->changeState(Lcom/couchbase/lite/internal/sockets/SocketState;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Lcom/couchbase/lite/internal/sockets/CloseStatus;->code:I

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/couchbase/lite/internal/sockets/CloseStatus;

    const/4 v1, 0x0

    iget-object p1, p1, Lcom/couchbase/lite/internal/sockets/CloseStatus;->message:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1, p1}, Lcom/couchbase/lite/internal/sockets/CloseStatus;-><init>(IILjava/lang/String;)V

    move-object p1, v0

    :cond_1
    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->toCore:Lcom/couchbase/lite/internal/sockets/SocketToCore;

    invoke-interface {p0, p1}, Lcom/couchbase/lite/internal/sockets/SocketToCore;->closeCore(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V

    return-void
.end method

.method public remoteFailed(Ljava/lang/Throwable;)V
    .locals 3
    .param p1    # Ljava/lang/Throwable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "%s.remoteFailed"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, p1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    sget-object v0, Lcom/couchbase/lite/internal/sockets/SocketState;->CLOSED:Lcom/couchbase/lite/internal/sockets/SocketState;

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->changeState(Lcom/couchbase/lite/internal/sockets/SocketState;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->toCore:Lcom/couchbase/lite/internal/sockets/SocketToCore;

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->getStatusForError(Ljava/lang/Throwable;)Lcom/couchbase/lite/internal/sockets/CloseStatus;

    move-result-object p0

    invoke-interface {v0, p0}, Lcom/couchbase/lite/internal/sockets/SocketToCore;->closeCore(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V

    return-void
.end method

.method public remoteOpened(ILjava/util/Map;)V
    .locals 3
    .param p2    # Ljava/util/Map;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "%s.remoteOpened: %s"

    filled-new-array {p0, p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/couchbase/lite/internal/sockets/SocketState;->OPEN:Lcom/couchbase/lite/internal/sockets/SocketState;

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->changeState(Lcom/couchbase/lite/internal/sockets/SocketState;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->toCore:Lcom/couchbase/lite/internal/sockets/SocketToCore;

    invoke-direct {p0, p2}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->encodeHeaders(Ljava/util/Map;)[B

    move-result-object p0

    invoke-interface {v0, p1, p0}, Lcom/couchbase/lite/internal/sockets/SocketToCore;->ackOpenToCore(I[B)V

    return-void
.end method

.method public remoteRequestsClose(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/sockets/CloseStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "%s.remoteRequestsClose: %s"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/couchbase/lite/internal/sockets/SocketState;->CLOSING:Lcom/couchbase/lite/internal/sockets/SocketState;

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->changeState(Lcom/couchbase/lite/internal/sockets/SocketState;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->toCore:Lcom/couchbase/lite/internal/sockets/SocketToCore;

    invoke-interface {p0, p1}, Lcom/couchbase/lite/internal/sockets/SocketToCore;->requestCoreClose(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V

    return-void
.end method

.method public remoteWrites([B)V
    .locals 3
    .param p1    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    array-length v1, p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s.remoteWrites: %d"

    invoke-static {v0, v2, v1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/couchbase/lite/internal/sockets/SocketState;->OPEN:Lcom/couchbase/lite/internal/sockets/SocketState;

    sget-object v1, Lcom/couchbase/lite/internal/sockets/SocketState;->CLOSING:Lcom/couchbase/lite/internal/sockets/SocketState;

    filled-new-array {v0, v1}, [Lcom/couchbase/lite/internal/sockets/SocketState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->assertState([Lcom/couchbase/lite/internal/sockets/SocketState;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->toCore:Lcom/couchbase/lite/internal/sockets/SocketToCore;

    invoke-interface {p0, p1}, Lcom/couchbase/lite/internal/sockets/SocketToCore;->writeToCore([B)V

    return-void
.end method

.method public setupRemoteSocketFactory(Lokhttp3/OkHttpClient$Builder;)V
    .locals 5
    .param p1    # Lokhttp3/OkHttpClient$Builder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->options:Ljava/util/Map;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const-string v3, "auth"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/util/Map;

    if-eqz v3, :cond_0

    move-object v1, v0

    check-cast v1, Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->options:Ljava/util/Map;

    const-string v3, "heartbeat"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Number;

    if-eqz v3, :cond_1

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_0

    :cond_1
    const-wide/16 v3, 0x12c

    :goto_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v3, v4, v0}, Lokhttp3/OkHttpClient$Builder;->pingInterval(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    iget-object v0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->options:Ljava/util/Map;

    const-string v3, "acceptParentDomainCookies"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0, p1, v1}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->setupAuthentication(Lokhttp3/OkHttpClient$Builder;Ljava/util/Map;)V

    :cond_3
    new-instance v0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket$WebSocketCookieJar;

    invoke-direct {v0, p0, v2}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket$WebSocketCookieJar;-><init>(Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;Z)V

    invoke-virtual {p1, v0}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    invoke-direct {p0, p1, v1}, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->setupSSLSocketFactory(Lokhttp3/OkHttpClient$Builder;Ljava/util/Map;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CBLWebSocket@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/ClassUtils;->objId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->toCore:Lcom/couchbase/lite/internal/sockets/SocketToCore;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " <=> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->toRemote:Lcom/couchbase/lite/internal/sockets/SocketToRemote;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/AbstractCBLWebSocket;->uri:Ljava/net/URI;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ")}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
