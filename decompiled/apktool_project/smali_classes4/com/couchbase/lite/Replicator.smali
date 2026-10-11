.class public final Lcom/couchbase/lite/Replicator;
.super Lcom/couchbase/lite/AbstractReplicator;
.source "SourceFile"


# instance fields
.field private final connectivityObserver:Lcom/couchbase/lite/internal/replicator/AndroidConnectivityObserver;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/couchbase/lite/ReplicatorConfiguration;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/ReplicatorConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-static {}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->getNetworkConnectivityManager()Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/couchbase/lite/Replicator;-><init>(Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager;Lcom/couchbase/lite/ReplicatorConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager;Lcom/couchbase/lite/ReplicatorConfiguration;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/ReplicatorConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0, p2}, Lcom/couchbase/lite/AbstractReplicator;-><init>(Lcom/couchbase/lite/ReplicatorConfiguration;)V

    .line 3
    invoke-virtual {p2}, Lcom/couchbase/lite/AbstractReplicatorConfiguration;->isContinuous()Z

    move-result p2

    if-eqz p2, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p2, Lcom/couchbase/lite/internal/replicator/AndroidConnectivityObserver;

    new-instance v0, Lcom/sunia/HTREnginev2/pkl;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/pkl;-><init>(Lcom/couchbase/lite/Replicator;)V

    invoke-direct {p2, p1, v0}, Lcom/couchbase/lite/internal/replicator/AndroidConnectivityObserver;-><init>(Lcom/couchbase/lite/internal/replicator/NetworkConnectivityManager;Lcom/couchbase/lite/internal/utils/Fn$Provider;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x0

    :goto_1
    iput-object p2, p0, Lcom/couchbase/lite/Replicator;->connectivityObserver:Lcom/couchbase/lite/internal/replicator/AndroidConnectivityObserver;

    return-void
.end method

.method public static synthetic h0(Lcom/couchbase/lite/Replicator;)Lcom/couchbase/lite/internal/core/C4Replicator;
    .locals 0

    invoke-static {p0}, Lcom/couchbase/lite/Replicator;->lambda$new$0(Lcom/couchbase/lite/Replicator;)Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$new$0(Lcom/couchbase/lite/Replicator;)Lcom/couchbase/lite/internal/core/C4Replicator;
    .locals 0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getC4Replicator()Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public createReplicatorForTarget(Lcom/couchbase/lite/Endpoint;)Lcom/couchbase/lite/internal/core/C4Replicator;
    .locals 2
    .param p1    # Lcom/couchbase/lite/Endpoint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    instance-of v0, p1, Lcom/couchbase/lite/URLEndpoint;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/couchbase/lite/URLEndpoint;

    invoke-virtual {p1}, Lcom/couchbase/lite/URLEndpoint;->getURL()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/AbstractReplicator;->getRemoteC4Replicator(Ljava/net/URI;)Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object p0

    return-object p0

    :cond_0
    instance-of v0, p1, Lcom/couchbase/lite/DatabaseEndpoint;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/couchbase/lite/DatabaseEndpoint;

    invoke-virtual {p1}, Lcom/couchbase/lite/DatabaseEndpoint;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/AbstractReplicator;->getLocalC4Replicator(Lcom/couchbase/lite/Database;)Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p1, Lcom/couchbase/lite/MessageEndpoint;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/couchbase/lite/MessageEndpoint;

    invoke-virtual {p1}, Lcom/couchbase/lite/MessageEndpoint;->getMessageFraming()Lcom/couchbase/lite/internal/sockets/MessageFraming;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/AbstractReplicator;->getMessageC4Replicator(Lcom/couchbase/lite/internal/sockets/MessageFraming;)Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unrecognized endpoint type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public handleOffline(Lcom/couchbase/lite/ReplicatorActivityLevel;Z)V
    .locals 4
    .param p1    # Lcom/couchbase/lite/ReplicatorActivityLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/couchbase/lite/Replicator;->connectivityObserver:Lcom/couchbase/lite/internal/replicator/AndroidConnectivityObserver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/couchbase/lite/LogDomain;->NETWORK:Lcom/couchbase/lite/LogDomain;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getId()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/couchbase/lite/Replicator;->connectivityObserver:Lcom/couchbase/lite/internal/replicator/AndroidConnectivityObserver;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    filled-new-array {v1, v2, p1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s: offline state change for %s: %s -> %b"

    invoke-static {v0, v2, v1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p0, p0, Lcom/couchbase/lite/Replicator;->connectivityObserver:Lcom/couchbase/lite/internal/replicator/AndroidConnectivityObserver;

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/internal/replicator/AndroidConnectivityObserver;->handleOffline(Lcom/couchbase/lite/ReplicatorActivityLevel;Z)V

    return-void
.end method
