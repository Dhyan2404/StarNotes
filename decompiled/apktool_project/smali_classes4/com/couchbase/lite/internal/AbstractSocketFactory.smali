.class public abstract Lcom/couchbase/lite/internal/AbstractSocketFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/BaseSocketFactory;


# instance fields
.field private final cookieStore:Lcom/couchbase/lite/internal/replicator/CBLCookieStore;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field protected final endpoint:Lcom/couchbase/lite/Endpoint;
    .annotation build Landroidx/annotation/NonNull;
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

.field private testListener:Lcom/couchbase/lite/internal/utils/Fn$Consumer;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "endpoint"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/couchbase/lite/internal/utils/Fn$Consumer<",
            "Lcom/couchbase/lite/internal/sockets/SocketFromCore;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/ReplicatorConfiguration;Lcom/couchbase/lite/internal/replicator/CBLCookieStore;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/ReplicatorConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/replicator/CBLCookieStore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/couchbase/lite/internal/utils/Fn$Consumer;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/ReplicatorConfiguration;",
            "Lcom/couchbase/lite/internal/replicator/CBLCookieStore;",
            "Lcom/couchbase/lite/internal/utils/Fn$Consumer<",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->getTarget()Lcom/couchbase/lite/Endpoint;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/internal/AbstractSocketFactory;->endpoint:Lcom/couchbase/lite/Endpoint;

    iput-object p2, p0, Lcom/couchbase/lite/internal/AbstractSocketFactory;->cookieStore:Lcom/couchbase/lite/internal/replicator/CBLCookieStore;

    iput-object p3, p0, Lcom/couchbase/lite/internal/AbstractSocketFactory;->serverCertsListener:Lcom/couchbase/lite/internal/utils/Fn$Consumer;

    return-void
.end method

.method private createCBLWebSocket(Lcom/couchbase/lite/internal/sockets/SocketToCore;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[B)Lcom/couchbase/lite/internal/sockets/SocketFromCore;
    .locals 9
    .param p1    # Lcom/couchbase/lite/internal/sockets/SocketToCore;
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
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    :try_start_0
    new-instance v8, Ljava/net/URI;

    invoke-direct {p0, p2}, Lcom/couchbase/lite/internal/AbstractSocketFactory;->translateScheme(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Ljava/net/URI;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance p2, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;

    invoke-direct {p2}, Lcom/couchbase/lite/internal/sockets/OkHttpSocket;-><init>()V

    new-instance p3, Lcom/couchbase/lite/internal/replicator/CBLWebSocket;

    iget-object v5, p0, Lcom/couchbase/lite/internal/AbstractSocketFactory;->cookieStore:Lcom/couchbase/lite/internal/replicator/CBLCookieStore;

    iget-object v6, p0, Lcom/couchbase/lite/internal/AbstractSocketFactory;->serverCertsListener:Lcom/couchbase/lite/internal/utils/Fn$Consumer;

    move-object v0, p3

    move-object v1, p2

    move-object v2, p1

    move-object v3, v8

    move-object v4, p6

    invoke-direct/range {v0 .. v6}, Lcom/couchbase/lite/internal/replicator/CBLWebSocket;-><init>(Lcom/couchbase/lite/internal/sockets/SocketToRemote;Lcom/couchbase/lite/internal/sockets/SocketToCore;Ljava/net/URI;[BLcom/couchbase/lite/internal/replicator/CBLCookieStore;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    invoke-interface {p2, p3}, Lcom/couchbase/lite/internal/sockets/SocketToRemote;->init(Lcom/couchbase/lite/internal/sockets/SocketFromRemote;)V

    return-object p3

    :catch_0
    move-exception p0

    new-instance p1, Lcom/couchbase/lite/internal/sockets/CBLSocketException;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    filled-new-array {p2, p3, p4, p5}, [Ljava/lang/Object;

    move-result-object p2

    const-string p3, "Bad URI for socket: %s//%s:%d/%s"

    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x5

    const/4 p4, 0x4

    invoke-direct {p1, p3, p4, p2, p0}, Lcom/couchbase/lite/internal/sockets/CBLSocketException;-><init>(IILjava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method private getTestListener()Lcom/couchbase/lite/internal/utils/Fn$Consumer;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/couchbase/lite/internal/utils/Fn$Consumer<",
            "Lcom/couchbase/lite/internal/sockets/SocketFromCore;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/AbstractSocketFactory;->endpoint:Lcom/couchbase/lite/Endpoint;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/AbstractSocketFactory;->testListener:Lcom/couchbase/lite/internal/utils/Fn$Consumer;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private translateScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "scheme"

    invoke-static {p1, p0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string p0, "blip"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "ws"

    return-object p0

    :cond_0
    const-string p0, "blips"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    const-string p0, "wss"

    return-object p0

    :cond_1
    return-object p1
.end method


# virtual methods
.method public abstract createPlatformSocket(Lcom/couchbase/lite/internal/sockets/SocketToCore;)Lcom/couchbase/lite/internal/sockets/SocketFromCore;
    .param p1    # Lcom/couchbase/lite/internal/sockets/SocketToCore;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public final createSocket(Lcom/couchbase/lite/internal/sockets/SocketToCore;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[B)Lcom/couchbase/lite/internal/sockets/SocketFromCore;
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/sockets/SocketToCore;
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
    .param p5    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # [B
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/AbstractSocketFactory;->endpoint:Lcom/couchbase/lite/Endpoint;

    instance-of v0, v0, Lcom/couchbase/lite/URLEndpoint;

    if-eqz v0, :cond_0

    invoke-direct/range {p0 .. p6}, Lcom/couchbase/lite/internal/AbstractSocketFactory;->createCBLWebSocket(Lcom/couchbase/lite/internal/sockets/SocketToCore;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;[B)Lcom/couchbase/lite/internal/sockets/SocketFromCore;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/AbstractSocketFactory;->createPlatformSocket(Lcom/couchbase/lite/internal/sockets/SocketToCore;)Lcom/couchbase/lite/internal/sockets/SocketFromCore;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/couchbase/lite/internal/AbstractSocketFactory;->getTestListener()Lcom/couchbase/lite/internal/utils/Fn$Consumer;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-interface {p0, p1}, Lcom/couchbase/lite/internal/utils/Fn$Consumer;->accept(Ljava/lang/Object;)V

    :cond_1
    return-object p1

    :cond_2
    new-instance p1, Lcom/couchbase/lite/internal/sockets/CBLSocketException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Can\'t create endpoint: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/internal/AbstractSocketFactory;->endpoint:Lcom/couchbase/lite/Endpoint;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x6

    const/16 p3, 0x3f3

    invoke-direct {p1, p2, p3, p0}, Lcom/couchbase/lite/internal/sockets/CBLSocketException;-><init>(IILjava/lang/String;)V

    throw p1
.end method

.method public final setTestListener(Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/utils/Fn$Consumer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/utils/Fn$Consumer<",
            "Lcom/couchbase/lite/internal/sockets/SocketFromCore;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/AbstractSocketFactory;->endpoint:Lcom/couchbase/lite/Endpoint;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/couchbase/lite/internal/AbstractSocketFactory;->testListener:Lcom/couchbase/lite/internal/utils/Fn$Consumer;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SocketFactory{@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/internal/AbstractSocketFactory;->endpoint:Lcom/couchbase/lite/Endpoint;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
