.class public Lcom/couchbase/lite/MessageEndpointListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/listener/Listenable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/couchbase/lite/internal/listener/Listenable<",
        "Lcom/couchbase/lite/MessageEndpointListenerChange;",
        "Lcom/couchbase/lite/MessageEndpointListenerChangeListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final DOMAIN:Lcom/couchbase/lite/LogDomain;


# instance fields
.field private final changeNotifier:Lcom/couchbase/lite/MessageEndpointChangeNotifier;

.field private final config:Lcom/couchbase/lite/MessageEndpointListenerConfiguration;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final dispatcher:Ljava/util/concurrent/Executor;

.field private final lock:Ljava/lang/Object;

.field private final replicators:Ljava/util/Map;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/couchbase/lite/internal/core/C4Replicator;",
            "Lcom/couchbase/lite/MessageEndpointConnection;",
            ">;"
        }
    .end annotation
.end field

.field private final stopped:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/couchbase/lite/LogDomain;->NETWORK:Lcom/couchbase/lite/LogDomain;

    sput-object v0, Lcom/couchbase/lite/MessageEndpointListener;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/MessageEndpointListenerConfiguration;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/MessageEndpointListenerConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/MessageEndpointListener;->lock:Ljava/lang/Object;

    invoke-static {}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->getExecutionService()Lcom/couchbase/lite/internal/exec/ExecutionService;

    move-result-object v0

    invoke-interface {v0}, Lcom/couchbase/lite/internal/exec/ExecutionService;->getSerialExecutor()Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/couchbase/lite/MessageEndpointListener;->dispatcher:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/couchbase/lite/MessageEndpointChangeNotifier;

    invoke-direct {v0}, Lcom/couchbase/lite/MessageEndpointChangeNotifier;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/MessageEndpointListener;->changeNotifier:Lcom/couchbase/lite/MessageEndpointChangeNotifier;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/couchbase/lite/MessageEndpointListener;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/MessageEndpointListener;->replicators:Ljava/util/Map;

    const-string v0, "config"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/couchbase/lite/MessageEndpointListener;->config:Lcom/couchbase/lite/MessageEndpointListenerConfiguration;

    return-void
.end method

.method public static synthetic a(Lcom/couchbase/lite/MessageEndpointListener;Lcom/couchbase/lite/internal/core/C4Replicator;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/MessageEndpointListener;->lambda$dispatchStatusChanged$0(Lcom/couchbase/lite/internal/core/C4Replicator;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V

    return-void
.end method

.method private addConnection(Lcom/couchbase/lite/internal/core/C4Replicator;Lcom/couchbase/lite/MessageEndpointConnection;)Z
    .locals 2
    .param p1    # Lcom/couchbase/lite/internal/core/C4Replicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/MessageEndpointConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/couchbase/lite/MessageEndpointListener;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/MessageEndpointListener;->replicators:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/couchbase/lite/MessageEndpointListener;->replicators:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getConnection(Lcom/couchbase/lite/internal/core/C4Replicator;)Lcom/couchbase/lite/MessageEndpointConnection;
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/core/C4Replicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/MessageEndpointListener;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/MessageEndpointListener;->replicators:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/MessageEndpointConnection;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getOptions()Ljava/util/Map;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "noIncomingConflicts"

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method private synthetic lambda$dispatchStatusChanged$0(Lcom/couchbase/lite/internal/core/C4Replicator;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MessageEndpointListener;->statusChanged(Lcom/couchbase/lite/internal/core/C4Replicator;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V

    return-void
.end method

.method private removeConnection(Lcom/couchbase/lite/internal/core/C4Replicator;)Lcom/couchbase/lite/MessageEndpointConnection;
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/core/C4Replicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/MessageEndpointListener;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/MessageEndpointListener;->replicators:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iget-object v1, p0, Lcom/couchbase/lite/MessageEndpointListener;->replicators:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/MessageEndpointConnection;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/couchbase/lite/MessageEndpointListener;->config:Lcom/couchbase/lite/MessageEndpointListenerConfiguration;

    invoke-virtual {v0}, Lcom/couchbase/lite/MessageEndpointListenerConfiguration;->getDb()Lcom/couchbase/lite/Database;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/couchbase/lite/Database;->unregisterMessageListener(Lcom/couchbase/lite/MessageEndpointListener;)V

    :cond_1
    return-object p1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method


# virtual methods
.method public accept(Lcom/couchbase/lite/MessageEndpointConnection;)V
    .locals 7
    .param p1    # Lcom/couchbase/lite/MessageEndpointConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/couchbase/lite/MessageEndpointListener;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    sget-object v1, Lcom/couchbase/lite/MessageEndpointListener;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v2, "Accepting connection (%s): %s"

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "connection"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/couchbase/lite/MessageEndpointListener;->config:Lcom/couchbase/lite/MessageEndpointListenerConfiguration;

    invoke-virtual {v0}, Lcom/couchbase/lite/MessageEndpointListenerConfiguration;->getMessageFraming()Lcom/couchbase/lite/internal/sockets/MessageFraming;

    move-result-object v0

    iget-object v1, p0, Lcom/couchbase/lite/MessageEndpointListener;->config:Lcom/couchbase/lite/MessageEndpointListenerConfiguration;

    invoke-virtual {v1}, Lcom/couchbase/lite/MessageEndpointListenerConfiguration;->getDb()Lcom/couchbase/lite/Database;

    move-result-object v1

    invoke-virtual {v1}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3, v0}, Lcom/couchbase/lite/internal/core/C4Socket;->createPassiveSocket(ILcom/couchbase/lite/internal/sockets/MessageFraming;)Lcom/couchbase/lite/internal/core/C4Socket;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {v3, p1, v0}, Lcom/couchbase/lite/internal/replicator/MessageSocket;->create(Lcom/couchbase/lite/internal/sockets/SocketToCore;Lcom/couchbase/lite/MessageEndpointConnection;Lcom/couchbase/lite/internal/sockets/MessageFraming;)Lcom/couchbase/lite/internal/replicator/MessageSocket;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/couchbase/lite/internal/core/C4Socket;->init(Lcom/couchbase/lite/internal/sockets/SocketFromCore;)V
    :try_end_1
    .catch Lcom/couchbase/lite/internal/sockets/CBLSocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x0

    :try_start_2
    iget-object v4, p0, Lcom/couchbase/lite/MessageEndpointListener;->config:Lcom/couchbase/lite/MessageEndpointListenerConfiguration;

    invoke-virtual {v4}, Lcom/couchbase/lite/MessageEndpointListenerConfiguration;->getCollections()Ljava/util/Set;

    move-result-object v4

    invoke-direct {p0}, Lcom/couchbase/lite/MessageEndpointListener;->getOptions()Ljava/util/Map;

    move-result-object v5

    new-instance v6, Lcom/sunia/HTREnginev2/vmj;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/vmj;-><init>(Lcom/couchbase/lite/MessageEndpointListener;)V

    invoke-virtual {v1, v4, v3, v5, v6}, Lcom/couchbase/lite/AbstractDatabase;->createMessageEndpointReplicator(Ljava/util/Set;Lcom/couchbase/lite/internal/core/C4Socket;Ljava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;)Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object v3

    invoke-direct {p0, v3, p1}, Lcom/couchbase/lite/MessageEndpointListener;->addConnection(Lcom/couchbase/lite/internal/core/C4Replicator;Lcom/couchbase/lite/MessageEndpointConnection;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, p0}, Lcom/couchbase/lite/Database;->registerMessageListener(Lcom/couchbase/lite/MessageEndpointListener;)V

    :cond_1
    invoke-virtual {v3, v0}, Lcom/couchbase/lite/internal/core/C4Replicator;->start(Z)V

    new-instance v1, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;

    const/4 v3, 0x2

    invoke-direct {v1, v3, v0, v0}, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;-><init>(III)V
    :try_end_2
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_3
    new-instance v3, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;

    iget v4, v1, Lcom/couchbase/lite/LiteCoreException;->domain:I

    iget v1, v1, Lcom/couchbase/lite/LiteCoreException;->code:I

    invoke-direct {v3, v0, v4, v1}, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;-><init>(III)V

    move-object v1, v3

    :goto_0
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p0, p0, Lcom/couchbase/lite/MessageEndpointListener;->changeNotifier:Lcom/couchbase/lite/MessageEndpointChangeNotifier;

    new-instance v0, Lcom/couchbase/lite/MessageEndpointListenerChange;

    invoke-direct {v0, p1, v1}, Lcom/couchbase/lite/MessageEndpointListenerChange;-><init>(Lcom/couchbase/lite/MessageEndpointConnection;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/listener/ChangeNotifier;->postChange(Ljava/lang/Object;)V

    return-void

    :catch_1
    move-exception p0

    :try_start_4
    sget-object p1, Lcom/couchbase/lite/MessageEndpointListener;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v0, "Failed getting opening message socket"

    invoke-static {p1, v0, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance p1, Lcom/couchbase/lite/internal/sockets/CloseStatus;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    const/16 v1, 0x12

    invoke-direct {p1, v0, v1, p0}, Lcom/couchbase/lite/internal/sockets/CloseStatus;-><init>(IILjava/lang/String;)V

    invoke-virtual {v3, p1}, Lcom/couchbase/lite/internal/core/C4Socket;->closeCore(Lcom/couchbase/lite/internal/sockets/CloseStatus;)V

    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public bridge synthetic addChangeListener(Lcom/couchbase/lite/ChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 0
    .param p1    # Lcom/couchbase/lite/ChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/couchbase/lite/MessageEndpointListenerChangeListener;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/MessageEndpointListener;->addChangeListener(Lcom/couchbase/lite/MessageEndpointListenerChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public addChangeListener(Lcom/couchbase/lite/MessageEndpointListenerChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 1
    .param p1    # Lcom/couchbase/lite/MessageEndpointListenerChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0, p1}, Lcom/couchbase/lite/MessageEndpointListener;->addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/MessageEndpointListenerChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/ChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 0
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/ChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .line 2
    check-cast p2, Lcom/couchbase/lite/MessageEndpointListenerChangeListener;

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/MessageEndpointListener;->addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/MessageEndpointListenerChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/MessageEndpointListenerChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 1
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/MessageEndpointListenerChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "listener"

    .line 4
    invoke-static {p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 5
    iget-object p0, p0, Lcom/couchbase/lite/MessageEndpointListener;->changeNotifier:Lcom/couchbase/lite/MessageEndpointChangeNotifier;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/z;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/z;-><init>(Lcom/couchbase/lite/MessageEndpointChangeNotifier;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/couchbase/lite/internal/listener/ChangeNotifier;->addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/ChangeListener;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)Lcom/couchbase/lite/internal/listener/ChangeListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public close(Lcom/couchbase/lite/MessageEndpointConnection;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/MessageEndpointConnection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/MessageEndpointListener;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "Closing connection: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "connection"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/couchbase/lite/MessageEndpointListener;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/MessageEndpointListener;->replicators:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/couchbase/lite/internal/core/C4Replicator;

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Replicator;->stop()V

    :cond_2
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public closeAll()V
    .locals 2

    iget-object v0, p0, Lcom/couchbase/lite/MessageEndpointListener;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/couchbase/lite/MessageEndpointListener;->replicators:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/core/C4Replicator;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/C4Replicator;->stop()V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dispatchStatusChanged(Lcom/couchbase/lite/internal/core/C4Replicator;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/core/C4Replicator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/MessageEndpointListener;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "MessageEndpointReplicatorListener.statusChanged: %s"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez p1, :cond_0

    const-string p0, "MessageEndpointListener.statusChanged, repl is null"

    invoke-static {v0, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return-void

    :cond_0
    if-nez p2, :cond_1

    const-string p0, "MessageEndpointListener.statusChanged, status is null"

    invoke-static {v0, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/couchbase/lite/MessageEndpointListener;->dispatcher:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sunia/HTREnginev2/wmj;

    invoke-direct {v1, p0, p1, p2}, Lcom/sunia/HTREnginev2/wmj;-><init>(Lcom/couchbase/lite/MessageEndpointListener;Lcom/couchbase/lite/internal/core/C4Replicator;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getConfig()Lcom/couchbase/lite/MessageEndpointListenerConfiguration;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/MessageEndpointListener;->config:Lcom/couchbase/lite/MessageEndpointListenerConfiguration;

    return-object p0
.end method

.method public isStopped()Z
    .locals 1

    iget-object v0, p0, Lcom/couchbase/lite/MessageEndpointListener;->lock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/MessageEndpointListener;->replicators:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->isEmpty()Z

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

.method public removeChangeListener(Lcom/couchbase/lite/ListenerToken;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/ListenerToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/couchbase/lite/MessageEndpointListener;->changeNotifier:Lcom/couchbase/lite/MessageEndpointChangeNotifier;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/listener/ChangeNotifier;->removeChangeListener(Lcom/couchbase/lite/ListenerToken;)Z

    return-void
.end method

.method public statusChanged(Lcom/couchbase/lite/internal/core/C4Replicator;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/core/C4Replicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/MessageEndpointListener;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "MessageEndpointListener status changed (%s): %s"

    filled-new-array {p2, p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p2}, Lcom/couchbase/lite/AbstractReplicator;->isStopped(Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/MessageEndpointListener;->getConnection(Lcom/couchbase/lite/internal/core/C4Replicator;)Lcom/couchbase/lite/MessageEndpointConnection;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/couchbase/lite/MessageEndpointListener;->removeConnection(Lcom/couchbase/lite/internal/core/C4Replicator;)Lcom/couchbase/lite/MessageEndpointConnection;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/couchbase/lite/MessageEndpointListener;->changeNotifier:Lcom/couchbase/lite/MessageEndpointChangeNotifier;

    new-instance v0, Lcom/couchbase/lite/MessageEndpointListenerChange;

    invoke-direct {v0, p1, p2}, Lcom/couchbase/lite/MessageEndpointListenerChange;-><init>(Lcom/couchbase/lite/MessageEndpointConnection;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/listener/ChangeNotifier;->postChange(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public stop()V
    .locals 3

    iget-object v0, p0, Lcom/couchbase/lite/MessageEndpointListener;->stopped:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    sget-object v0, Lcom/couchbase/lite/MessageEndpointListener;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "%s: MessageEndpointListener is stopping"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/couchbase/lite/MessageEndpointListener;->closeAll()V

    return-void
.end method
