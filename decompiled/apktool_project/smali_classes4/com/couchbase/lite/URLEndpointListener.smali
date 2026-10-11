.class public Lcom/couchbase/lite/URLEndpointListener;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private c4Listener:Lcom/couchbase/lite/internal/core/C4Listener;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final config:Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private identity:Lcom/couchbase/lite/TLSIdentity;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private port:I


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/URLEndpointListenerConfiguration;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/URLEndpointListenerConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/URLEndpointListener;->lock:Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->getDb()Lcom/couchbase/lite/Database;

    move-result-object v0

    invoke-virtual {v0}, Lcom/couchbase/lite/AbstractDatabase;->getUuid()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;

    invoke-direct {v0, p1}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;-><init>(Lcom/couchbase/lite/URLEndpointListenerConfiguration;)V

    iput-object v0, p0, Lcom/couchbase/lite/URLEndpointListener;->config:Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;

    invoke-virtual {p1}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->isTlsDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->getTlsIdentity()Lcom/couchbase/lite/TLSIdentity;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/couchbase/lite/URLEndpointListener;->identity:Lcom/couchbase/lite/TLSIdentity;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Configured database is not open"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getCachedPort(Lcom/couchbase/lite/internal/core/C4Listener;)I
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/core/C4Listener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p0, Lcom/couchbase/lite/URLEndpointListener;->port:I

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4Listener;->getPort()I

    move-result p1

    iput p1, p0, Lcom/couchbase/lite/URLEndpointListener;->port:I

    :cond_0
    iget p0, p0, Lcom/couchbase/lite/URLEndpointListener;->port:I

    return p0
.end method

.method private getDbUuid()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/URLEndpointListener;->config:Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractDatabase;->getUuid()Ljava/lang/String;

    move-result-object p0

    const-string v0, "uuid"

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method private startLocked()Lcom/couchbase/lite/internal/core/C4Listener;
    .locals 11
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/URLEndpointListener;->config:Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->getAuthenticator()Lcom/couchbase/lite/ListenerAuthenticator;

    move-result-object v0

    sget-object v1, Lcom/couchbase/lite/LogDomain;->LISTENER:Lcom/couchbase/lite/LogDomain;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting with auth: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/couchbase/lite/URLEndpointListener;->config:Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v1

    invoke-virtual {v1}, Lcom/couchbase/lite/Database;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v1, p0, Lcom/couchbase/lite/URLEndpointListener;->config:Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->isTlsDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/couchbase/lite/URLEndpointListener;->config:Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->getPort()I

    move-result v2

    iget-object v1, p0, Lcom/couchbase/lite/URLEndpointListener;->config:Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->getNetworkInterface()Ljava/lang/String;

    move-result-object v3

    move-object v5, v0

    check-cast v5, Lcom/couchbase/lite/ListenerPasswordAuthenticator;

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/couchbase/lite/URLEndpointListener;->config:Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->isReadOnly()Z

    move-result v0

    xor-int/lit8 v7, v0, 0x1

    iget-object p0, p0, Lcom/couchbase/lite/URLEndpointListener;->config:Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->isDeltaSyncEnabled()Z

    move-result v8

    invoke-static/range {v2 .. v8}, Lcom/couchbase/lite/internal/core/C4Listener;->createHttpListener(ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/ListenerPasswordAuthenticator;ZZZ)Lcom/couchbase/lite/internal/core/C4Listener;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/couchbase/lite/URLEndpointListener;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/couchbase/lite/URLEndpointListener;->identity:Lcom/couchbase/lite/TLSIdentity;

    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/couchbase/lite/URLEndpointListener;->getDbUuid()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "@"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/couchbase/lite/URLEndpointListener;->config:Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;

    invoke-virtual {v2}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->getPort()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/couchbase/lite/TLSIdentity;->getAnonymousIdentity(Ljava/lang/String;)Lcom/couchbase/lite/TLSIdentity;

    move-result-object v2

    iput-object v2, p0, Lcom/couchbase/lite/URLEndpointListener;->identity:Lcom/couchbase/lite/TLSIdentity;

    :cond_1
    iget-object v2, p0, Lcom/couchbase/lite/URLEndpointListener;->identity:Lcom/couchbase/lite/TLSIdentity;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lcom/couchbase/lite/internal/BaseTLSIdentity;->getCert(Lcom/couchbase/lite/internal/BaseTLSIdentity;)Ljava/security/cert/Certificate;

    move-result-object v9

    if-eqz v9, :cond_4

    if-eqz v0, :cond_3

    instance-of v1, v0, Lcom/couchbase/lite/ListenerPasswordAuthenticator;

    if-eqz v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/couchbase/lite/URLEndpointListener;->config:Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->getPort()I

    move-result v1

    iget-object v3, p0, Lcom/couchbase/lite/URLEndpointListener;->config:Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;

    invoke-virtual {v3}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->getNetworkInterface()Ljava/lang/String;

    move-result-object v3

    move-object v5, v0

    check-cast v5, Lcom/couchbase/lite/ListenerCertificateAuthenticator;

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/couchbase/lite/URLEndpointListener;->config:Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->isReadOnly()Z

    move-result v0

    xor-int/lit8 v7, v0, 0x1

    iget-object p0, p0, Lcom/couchbase/lite/URLEndpointListener;->config:Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->isDeltaSyncEnabled()Z

    move-result v8

    invoke-virtual {v2}, Lcom/couchbase/lite/internal/BaseTLSIdentity;->getKeyPair()Lcom/couchbase/lite/internal/core/C4KeyPair;

    move-result-object v10

    move v2, v1

    invoke-static/range {v2 .. v10}, Lcom/couchbase/lite/internal/core/C4Listener;->createTlsListenerCertAuth(ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/ListenerCertificateAuthenticator;ZZZLjava/security/cert/Certificate;Lcom/couchbase/lite/internal/core/C4KeyPair;)Lcom/couchbase/lite/internal/core/C4Listener;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    iget-object v1, p0, Lcom/couchbase/lite/URLEndpointListener;->config:Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->getPort()I

    move-result v1

    iget-object v3, p0, Lcom/couchbase/lite/URLEndpointListener;->config:Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;

    invoke-virtual {v3}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->getNetworkInterface()Ljava/lang/String;

    move-result-object v3

    move-object v5, v0

    check-cast v5, Lcom/couchbase/lite/ListenerPasswordAuthenticator;

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/couchbase/lite/URLEndpointListener;->config:Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->isReadOnly()Z

    move-result v0

    xor-int/lit8 v7, v0, 0x1

    iget-object p0, p0, Lcom/couchbase/lite/URLEndpointListener;->config:Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->isDeltaSyncEnabled()Z

    move-result v8

    invoke-virtual {v2}, Lcom/couchbase/lite/internal/BaseTLSIdentity;->getKeyPair()Lcom/couchbase/lite/internal/core/C4KeyPair;

    move-result-object v10

    move v2, v1

    invoke-static/range {v2 .. v10}, Lcom/couchbase/lite/internal/core/C4Listener;->createTlsListenerPasswordAuth(ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/ListenerPasswordAuthenticator;ZZZLjava/security/cert/Certificate;Lcom/couchbase/lite/internal/core/C4KeyPair;)Lcom/couchbase/lite/internal/core/C4Listener;

    move-result-object p0

    return-object p0

    :cond_4
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v0, "Server cert is null"

    invoke-direct {p0, v0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_5
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v0, "Listener database is not open"

    invoke-direct {p0, v0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getConfig()Lcom/couchbase/lite/URLEndpointListenerConfiguration;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/URLEndpointListenerConfiguration;

    iget-object p0, p0, Lcom/couchbase/lite/URLEndpointListener;->config:Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;-><init>(Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;)V

    return-object v0
.end method

.method public getPort()I
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/URLEndpointListener;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/URLEndpointListener;->c4Listener:Lcom/couchbase/lite/internal/core/C4Listener;

    if-nez v1, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lcom/couchbase/lite/URLEndpointListener;->getCachedPort(Lcom/couchbase/lite/internal/core/C4Listener;)I

    move-result p0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getStatus()Lcom/couchbase/lite/ConnectionStatus;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/URLEndpointListener;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/URLEndpointListener;->c4Listener:Lcom/couchbase/lite/internal/core/C4Listener;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Listener;->getConnectionStatus()Lcom/couchbase/lite/ConnectionStatus;

    move-result-object p0

    :goto_0
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTlsIdentity()Lcom/couchbase/lite/TLSIdentity;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/URLEndpointListener;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/URLEndpointListener;->identity:Lcom/couchbase/lite/TLSIdentity;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getUrls()Ljava/util/List;
    .locals 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/couchbase/lite/URLEndpointListener;->getConfig()Lcom/couchbase/lite/URLEndpointListenerConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->getDb()Lcom/couchbase/lite/Database;

    move-result-object v1

    invoke-virtual {v1}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-virtual {v1}, Lcom/couchbase/lite/BaseDatabase;->getOpenC4DbLocked()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object v1

    iget-object v3, p0, Lcom/couchbase/lite/URLEndpointListener;->lock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/couchbase/lite/URLEndpointListener;->c4Listener:Lcom/couchbase/lite/internal/core/C4Listener;

    if-nez p0, :cond_0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :cond_0
    :try_start_3
    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/core/C4Listener;->getUrls(Lcom/couchbase/lite/internal/core/C4Database;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    return-object v0

    :cond_1
    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :try_start_7
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catch Ljava/net/URISyntaxException; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_0

    :catch_0
    sget-object v2, Lcom/couchbase/lite/LogDomain;->LISTENER:Lcom/couchbase/lite/LogDomain;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed creating URI for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    return-object v0

    :catchall_0
    move-exception p0

    :try_start_8
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw p0

    :catchall_1
    move-exception p0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw p0
.end method

.method public isRunning()Z
    .locals 1

    iget-object v0, p0, Lcom/couchbase/lite/URLEndpointListener;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/URLEndpointListener;->c4Listener:Lcom/couchbase/lite/internal/core/C4Listener;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public start()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/URLEndpointListener;->getConfig()Lcom/couchbase/lite/URLEndpointListenerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->getDb()Lcom/couchbase/lite/Database;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, p0}, Lcom/couchbase/lite/Database;->registerUrlListener(Lcom/couchbase/lite/URLEndpointListener;)V

    iget-object v1, p0, Lcom/couchbase/lite/URLEndpointListener;->lock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/couchbase/lite/URLEndpointListener;->c4Listener:Lcom/couchbase/lite/internal/core/C4Listener;

    if-eqz v2, :cond_0

    monitor-exit v1

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/couchbase/lite/URLEndpointListener;->startLocked()Lcom/couchbase/lite/internal/core/C4Listener;

    move-result-object v2

    iput-object v2, p0, Lcom/couchbase/lite/URLEndpointListener;->c4Listener:Lcom/couchbase/lite/internal/core/C4Listener;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v3, p0, Lcom/couchbase/lite/URLEndpointListener;->config:Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;

    invoke-virtual {v3}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->getCollections()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lcom/sunia/HTREnginev2/opn;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/opn;-><init>()V

    invoke-static {v3, v4}, Lcom/couchbase/lite/internal/utils/Fn;->mapToSet(Ljava/util/Collection;Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/util/Set;

    move-result-object v3

    invoke-virtual {v0}, Lcom/couchbase/lite/Database;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/couchbase/lite/BaseDatabase;->getOpenC4DbLocked()Lcom/couchbase/lite/internal/core/C4Database;

    move-result-object v5

    invoke-virtual {v2, v4, v5, v3}, Lcom/couchbase/lite/internal/core/C4Listener;->shareDbCollections(Ljava/lang/String;Lcom/couchbase/lite/internal/core/C4Database;Ljava/util/Set;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2
    :try_end_4
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    :catchall_1
    move-exception v2

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2
    :try_end_6
    .catch Lcom/couchbase/lite/CouchbaseLiteException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_0
    move-exception v1

    invoke-virtual {v0, p0}, Lcom/couchbase/lite/Database;->unregisterUrlListener(Lcom/couchbase/lite/URLEndpointListener;)V

    throw v1
.end method

.method public stop()V
    .locals 4

    iget-object v0, p0, Lcom/couchbase/lite/URLEndpointListener;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/URLEndpointListener;->c4Listener:Lcom/couchbase/lite/internal/core/C4Listener;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/couchbase/lite/URLEndpointListener;->c4Listener:Lcom/couchbase/lite/internal/core/C4Listener;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/couchbase/lite/LogDomain;->LISTENER:Lcom/couchbase/lite/LogDomain;

    const-string v2, "%s: URLEndpointListener is stopping (%s)"

    filled-new-array {p0, v1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/core/C4Listener;->close()V

    invoke-virtual {p0}, Lcom/couchbase/lite/URLEndpointListener;->getConfig()Lcom/couchbase/lite/URLEndpointListenerConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/couchbase/lite/URLEndpointListenerConfiguration;->getDb()Lcom/couchbase/lite/Database;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/couchbase/lite/Database;->unregisterUrlListener(Lcom/couchbase/lite/URLEndpointListener;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URLListener{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/URLEndpointListener;->config:Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->isTlsDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ws"

    goto :goto_0

    :cond_0
    const-string v1, "wss"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "://localhost:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/couchbase/lite/URLEndpointListener;->port:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/URLEndpointListener;->config:Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/ImmutableURLEndpointListenerConfiguration;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    invoke-virtual {p0}, Lcom/couchbase/lite/Database;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
