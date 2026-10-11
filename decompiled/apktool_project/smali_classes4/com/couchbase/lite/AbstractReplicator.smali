.class public abstract Lcom/couchbase/lite/AbstractReplicator;
.super Lcom/couchbase/lite/internal/replicator/BaseReplicator;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/listener/Listenable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/AbstractReplicator$ReplicatorCookieStore;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/couchbase/lite/internal/replicator/BaseReplicator;",
        "Lcom/couchbase/lite/internal/listener/Listenable<",
        "Lcom/couchbase/lite/ReplicatorChange;",
        "Lcom/couchbase/lite/ReplicatorChangeListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;


# instance fields
.field private final changeListeners:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getReplicatorLock()"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/ReplicatorChangeListenerToken;",
            ">;"
        }
    .end annotation
.end field

.field private closed:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getReplicatorLock()"
    .end annotation
.end field

.field private final config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private volatile desc:Ljava/lang/String;

.field private final docEndedListeners:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getReplicatorLock()"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/DocumentReplicationListenerToken;",
            ">;"
        }
    .end annotation
.end field

.field private lastError:Lcom/couchbase/lite/CouchbaseLiteException;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getReplicatorLock()"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final pendingResolutions:Ljava/util/Set;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getReplicatorLock()"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/internal/utils/Fn$NullableConsumer<",
            "Lcom/couchbase/lite/CouchbaseLiteException;",
            ">;>;"
        }
    .end annotation
.end field

.field private final pendingStatusNotifications:Ljava/util/Deque;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getReplicatorLock()"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final serverCertificates:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;>;"
        }
    .end annotation
.end field

.field private final socketFactory:Lcom/couchbase/lite/internal/SocketFactory;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private status:Lcom/couchbase/lite/ReplicatorStatus;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getReplicatorLock()"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/couchbase/lite/LogDomain;->REPLICATOR:Lcom/couchbase/lite/LogDomain;

    sput-object v0, Lcom/couchbase/lite/AbstractReplicator;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    return-void
.end method

.method public constructor <init>(Lcom/couchbase/lite/ReplicatorConfiguration;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/ReplicatorConfiguration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/AbstractReplicator;->serverCertificates:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/AbstractReplicator;->changeListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/AbstractReplicator;->docEndedListeners:Ljava/util/Set;

    sget-object v0, Lcom/couchbase/lite/ReplicatorStatus;->INIT:Lcom/couchbase/lite/ReplicatorStatus;

    iput-object v0, p0, Lcom/couchbase/lite/AbstractReplicator;->status:Lcom/couchbase/lite/ReplicatorStatus;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/AbstractReplicator;->pendingResolutions:Ljava/util/Set;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/AbstractReplicator;->pendingStatusNotifications:Ljava/util/Deque;

    const-string v0, "config"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    invoke-direct {v0, p1}, Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;-><init>(Lcom/couchbase/lite/ReplicatorConfiguration;)V

    iput-object v0, p0, Lcom/couchbase/lite/AbstractReplicator;->config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    new-instance v0, Lcom/couchbase/lite/internal/SocketFactory;

    new-instance v1, Lcom/couchbase/lite/AbstractReplicator$ReplicatorCookieStore;

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractReplicator;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/couchbase/lite/AbstractReplicator$ReplicatorCookieStore;-><init>(Lcom/couchbase/lite/Database;)V

    new-instance v2, Lcom/sunia/HTREnginev2/e4;

    invoke-direct {v2, p0}, Lcom/sunia/HTREnginev2/e4;-><init>(Lcom/couchbase/lite/AbstractReplicator;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/couchbase/lite/internal/SocketFactory;-><init>(Lcom/couchbase/lite/ReplicatorConfiguration;Lcom/couchbase/lite/internal/replicator/CBLCookieStore;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    iput-object v0, p0, Lcom/couchbase/lite/AbstractReplicator;->socketFactory:Lcom/couchbase/lite/internal/SocketFactory;

    return-void
.end method

.method public static synthetic H(Ljava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/Collection;)Z
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/couchbase/lite/AbstractReplicator;->lambda$verifyCollection$3(Ljava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/Collection;)Z

    move-result p0

    return p0
.end method

.method public static synthetic I(Lcom/couchbase/lite/AbstractReplicator;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/AbstractReplicator;->setServerCertificates(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic M(Lcom/couchbase/lite/AbstractReplicator;Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/AbstractReplicator;->lambda$dispatchDocumentsEnded$1(Ljava/util/List;Z)V

    return-void
.end method

.method private baseDesc()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Replicator{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/ClassUtils;->objId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/AbstractReplicator;->config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->isPull()Z

    move-result v1

    const-string v2, ""

    if-eqz v1, :cond_0

    const-string v1, "<"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/couchbase/lite/AbstractReplicator;->config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->isContinuous()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "*"

    goto :goto_1

    :cond_1
    const-string v1, "o"

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicator;->config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->isPush()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string v2, ">"

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private description()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractReplicator;->baseDesc()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractReplicator;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " => "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicator;->config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->getTarget()Lcom/couchbase/lite/Endpoint;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private documentsEnded(Ljava/util/List;Z)V
    .locals 11
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/internal/core/C4DocumentEnded;",
            ">;Z)V"
        }
    .end annotation

    sget-object v0, Lcom/couchbase/lite/AbstractReplicator;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "%s: documents ended: %d"

    invoke-static {v0, v2, v1}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/internal/core/C4DocumentEnded;

    iget-object v2, v1, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->docId:Ljava/lang/String;

    if-nez v2, :cond_0

    sget-object v2, Lcom/couchbase/lite/AbstractReplicator;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getId()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%s: DocId is null in document end: "

    invoke-static {v2, v3, v1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-wide v2, v1, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->token:J

    invoke-static {v2, v3}, Lcom/couchbase/lite/internal/ReplicationCollection;->getBinding(J)Lcom/couchbase/lite/internal/ReplicationCollection;

    move-result-object v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/couchbase/lite/AbstractReplicator;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getId()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "%s: No collection for document end: "

    invoke-static {v2, v3, v1}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->getErrorCode()I

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->getErrorDomain()I

    move-result v4

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->getErrorInfo()I

    move-result v5

    invoke-static {v4, v3, v5}, Lcom/couchbase/lite/CouchbaseLiteException;->toCouchbaseLiteException(III)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object v3

    :goto_1
    new-instance v10, Lcom/couchbase/lite/ReplicatedDocument;

    iget-object v5, v2, Lcom/couchbase/lite/internal/ReplicationCollection;->scope:Ljava/lang/String;

    iget-object v6, v2, Lcom/couchbase/lite/internal/ReplicationCollection;->name:Ljava/lang/String;

    iget-object v7, v1, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->docId:Ljava/lang/String;

    iget v8, v1, Lcom/couchbase/lite/internal/core/C4DocumentEnded;->flags:I

    move-object v4, v10

    move-object v9, v3

    invoke-direct/range {v4 .. v9}, Lcom/couchbase/lite/ReplicatedDocument;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/couchbase/lite/CouchbaseLiteException;)V

    if-nez p2, :cond_4

    invoke-static {v3}, Lcom/couchbase/lite/CouchbaseLiteException;->isConflict(Lcom/couchbase/lite/CouchbaseLiteException;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/couchbase/lite/internal/ReplicationCollection;->getConflictResolver()Lcom/couchbase/lite/ConflictResolver;

    move-result-object v1

    invoke-direct {p0, v10, v1}, Lcom/couchbase/lite/AbstractReplicator;->queueConflictResolution(Lcom/couchbase/lite/ReplicatedDocument;Lcom/couchbase/lite/ConflictResolver;)V

    goto :goto_0

    :cond_4
    :goto_2
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    invoke-virtual {p0, p2, v0}, Lcom/couchbase/lite/AbstractReplicator;->notifyDocumentEnded(ZLjava/util/List;)V

    :cond_6
    return-void
.end method

.method public static synthetic e0(Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/ListenerToken;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/AbstractReplicator;->removeReplicationListener(Lcom/couchbase/lite/ListenerToken;)V

    return-void
.end method

.method public static synthetic f(Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/AbstractReplicator;->lambda$onConflictResolved$2(Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V

    return-void
.end method

.method public static synthetic f0(Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/ListenerToken;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/AbstractReplicator;->removeDocumentReplicationListener(Lcom/couchbase/lite/ListenerToken;)V

    return-void
.end method

.method public static synthetic g0(Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/AbstractReplicator;->lambda$dispatchStatusChange$0(Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V

    return-void
.end method

.method private getDatabase()Lcom/couchbase/lite/Database;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicator;->config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v0, "No database in Replicator"

    invoke-direct {p0, v0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getOrCreateC4Replicator()Lcom/couchbase/lite/internal/core/C4Replicator;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractReplicator;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    invoke-virtual {v0}, Lcom/couchbase/lite/BaseDatabase;->getDbLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/couchbase/lite/AbstractReplicator;->closed:Z

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getC4Replicator()Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object v1

    iget-object v2, p0, Lcom/couchbase/lite/AbstractReplicator;->config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    invoke-virtual {v2}, Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;->getConnectionOptions()Ljava/util/Map;

    move-result-object v2

    if-eqz v1, :cond_0

    invoke-static {v2}, Lcom/couchbase/lite/internal/fleece/FLEncoder;->encodeMap(Ljava/util/Map;)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/couchbase/lite/internal/core/C4Replicator;->setOptions([B)V

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getReplicatorLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-direct {p0}, Lcom/couchbase/lite/AbstractReplicator;->setProgressLevel()V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-object v1

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_0
    iget-object v1, p0, Lcom/couchbase/lite/AbstractReplicator;->config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->getTarget()Lcom/couchbase/lite/Endpoint;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/couchbase/lite/AbstractReplicator;->createReplicatorForTarget(Lcom/couchbase/lite/Endpoint;)Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object v1

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getReplicatorLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {p0, v1}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->setC4Replicator(Lcom/couchbase/lite/internal/core/C4Replicator;)V

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractReplicator;->setProgressLevel()V

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    return-object v1

    :catchall_1
    move-exception p0

    :try_start_7
    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0

    :cond_1
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v1, "Attempt to operate on a closed replicator"

    invoke-direct {p0, v1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    throw p0
.end method

.method private getPendingDocIds(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/AbstractReplicator;->config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->getType()Lcom/couchbase/lite/ReplicatorType;

    move-result-object v0

    sget-object v1, Lcom/couchbase/lite/ReplicatorType;->PULL:Lcom/couchbase/lite/ReplicatorType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/AbstractReplicator;->verifyCollection(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/couchbase/lite/AbstractReplicator;->getOrCreateC4Replicator()Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4Replicator;->getPendingDocIDs(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    const-string p1, "Failed fetching pending documentIds"

    invoke-static {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;Ljava/lang/String;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string p1, "CouchbaseLite"

    const/16 p2, 0x13

    const-string v0, "PullOnlyPendingDocIDs"

    invoke-direct {p0, v0, p1, p2}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p0
.end method

.method private isDocPending(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Ljava/lang/String;
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
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    const-string v0, "document ID"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/couchbase/lite/AbstractReplicator;->config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    invoke-virtual {v0}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->getType()Lcom/couchbase/lite/ReplicatorType;

    move-result-object v0

    sget-object v1, Lcom/couchbase/lite/ReplicatorType;->PULL:Lcom/couchbase/lite/ReplicatorType;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2, p3}, Lcom/couchbase/lite/AbstractReplicator;->verifyCollection(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p0}, Lcom/couchbase/lite/AbstractReplicator;->getOrCreateC4Replicator()Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4Replicator;->isDocumentPending(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "Failed getting document pending status"

    invoke-static {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteException;->convertException(Lcom/couchbase/lite/LiteCoreException;Ljava/lang/String;)Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object p0

    throw p0

    :cond_0
    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteException;

    const-string p1, "CouchbaseLite"

    const/16 p2, 0x13

    const-string p3, "PullOnlyPendingDocIDs"

    invoke-direct {p0, p3, p1, p2}, Lcom/couchbase/lite/CouchbaseLiteException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw p0
.end method

.method public static isOffline(Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)Z
    .locals 1
    .param p0    # Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->getActivityLevel()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isStopped(Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)Z
    .locals 0
    .param p0    # Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->getActivityLevel()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic j(Lcom/couchbase/lite/Database;Lcom/couchbase/lite/ConflictResolver;Lcom/couchbase/lite/ReplicatedDocument;Lcom/couchbase/lite/internal/utils/Fn$NullableConsumer;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/couchbase/lite/AbstractReplicator;->lambda$queueConflictResolution$5(Lcom/couchbase/lite/Database;Lcom/couchbase/lite/ConflictResolver;Lcom/couchbase/lite/ReplicatedDocument;Lcom/couchbase/lite/internal/utils/Fn$NullableConsumer;)V

    return-void
.end method

.method private synthetic lambda$dispatchDocumentsEnded$1(Ljava/util/List;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/AbstractReplicator;->documentsEnded(Ljava/util/List;Z)V

    return-void
.end method

.method private synthetic lambda$dispatchStatusChange$0(Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/AbstractReplicator;->statusChanged(Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V

    return-void
.end method

.method private synthetic lambda$onConflictResolved$2(Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/AbstractReplicator;->statusChanged(Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V

    return-void
.end method

.method private static synthetic lambda$postChange$4(Lcom/couchbase/lite/ReplicatorChange;Lcom/couchbase/lite/ReplicatorChangeListenerToken;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/ReplicatorChangeListenerToken;->postChange(Lcom/couchbase/lite/ReplicatorChange;)V

    return-void
.end method

.method private static synthetic lambda$queueConflictResolution$5(Lcom/couchbase/lite/Database;Lcom/couchbase/lite/ConflictResolver;Lcom/couchbase/lite/ReplicatedDocument;Lcom/couchbase/lite/internal/utils/Fn$NullableConsumer;)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Lcom/couchbase/lite/AbstractDatabase;->resolveReplicationConflict(Lcom/couchbase/lite/ConflictResolver;Lcom/couchbase/lite/ReplicatedDocument;Lcom/couchbase/lite/internal/utils/Fn$NullableConsumer;)V

    return-void
.end method

.method private static synthetic lambda$verifyCollection$3(Ljava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/Collection;)Z
    .locals 1

    invoke-virtual {p2}, Lcom/couchbase/lite/Collection;->getScope()Lcom/couchbase/lite/Scope;

    move-result-object v0

    invoke-virtual {v0}, Lcom/couchbase/lite/Scope;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    invoke-virtual {p2}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private postChange(ZLcom/couchbase/lite/ReplicatorChange;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Lcom/couchbase/lite/ReplicatorChange;",
            "Ljava/util/Set<",
            "Lcom/couchbase/lite/ReplicatorChangeListenerToken;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractReplicator;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/couchbase/lite/AbstractDatabase;->removeActiveReplicator(Lcom/couchbase/lite/AbstractReplicator;)V

    :cond_0
    new-instance p0, Lcom/couchbase/lite/g;

    invoke-direct {p0, p2}, Lcom/couchbase/lite/g;-><init>(Lcom/couchbase/lite/ReplicatorChange;)V

    invoke-static {p3, p0}, Lcom/couchbase/lite/internal/utils/Fn;->forAll(Ljava/util/Collection;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    return-void
.end method

.method private queueConflictResolution(Lcom/couchbase/lite/ReplicatedDocument;Lcom/couchbase/lite/ConflictResolver;)V
    .locals 8
    .param p1    # Lcom/couchbase/lite/ReplicatedDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/ConflictResolver;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractReplicator;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    sget-object v1, Lcom/couchbase/lite/AbstractReplicator;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v2, "%s: found conflicting version of \'%s.%s.%s#%s\'"

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/couchbase/lite/Database;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatedDocument;->getScope()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatedDocument;->getCollection()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/couchbase/lite/ReplicatedDocument;->getID()Ljava/lang/String;

    move-result-object v7

    filled-new-array {v3, v4, v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v1, Lcom/couchbase/lite/AbstractReplicator$1;

    invoke-direct {v1, p0, p1}, Lcom/couchbase/lite/AbstractReplicator$1;-><init>(Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/ReplicatedDocument;)V

    new-instance v2, Lcom/sunia/HTREnginev2/d4;

    invoke-direct {v2, v0, p2, p1, v1}, Lcom/sunia/HTREnginev2/d4;-><init>(Lcom/couchbase/lite/Database;Lcom/couchbase/lite/ConflictResolver;Lcom/couchbase/lite/ReplicatedDocument;Lcom/couchbase/lite/internal/utils/Fn$NullableConsumer;)V

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getReplicatorLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    invoke-virtual {p0, v2}, Lcom/couchbase/lite/AbstractReplicator;->runTaskConcurrently(Ljava/lang/Runnable;)V

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicator;->pendingResolutions:Ljava/util/Set;

    invoke-interface {p0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private removeDocumentReplicationListener(Lcom/couchbase/lite/ListenerToken;)V
    .locals 2
    .param p1    # Lcom/couchbase/lite/ListenerToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getReplicatorLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/AbstractReplicator;->docEndedListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractReplicator;->setProgressLevel()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private removeReplicationListener(Lcom/couchbase/lite/ListenerToken;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/ListenerToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getReplicatorLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicator;->changeListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private setProgressLevel()V
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getReplicatorLock()"
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getC4Replicator()Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/AbstractReplicator;->docEndedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/couchbase/lite/internal/core/C4Replicator;->setProgressLevel(I)V
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v0, Lcom/couchbase/lite/AbstractReplicator;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getId()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "%s: failed setting progress level"

    invoke-static {v0, v1, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    return-void
.end method

.method private setServerCertificates(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicator;->serverCertificates:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void
.end method

.method private simpleDesc()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractReplicator;->baseDesc()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private splitPath(Ljava/lang/String;)Ljava/util/Deque;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Deque<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayDeque;

    invoke-direct {p0}, Ljava/util/ArrayDeque;-><init>()V

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {p0, v2}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method private statusChanged(Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V
    .locals 8
    .param p1    # Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getReplicatorLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/couchbase/lite/AbstractReplicator;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v2, "%s: status changed: (%d, %d) @%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getId()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-object v4, p0, Lcom/couchbase/lite/AbstractReplicator;->pendingResolutions:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    iget-object v4, p0, Lcom/couchbase/lite/AbstractReplicator;->pendingStatusNotifications:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const/4 v4, 0x3

    aput-object p1, v3, v4

    invoke-static {v1, v2, v3}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/couchbase/lite/AbstractReplicator;->config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->isContinuous()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/couchbase/lite/AbstractReplicator;->status:Lcom/couchbase/lite/ReplicatorStatus;

    invoke-virtual {v1}, Lcom/couchbase/lite/ReplicatorStatus;->getActivityLevel()Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object v1

    invoke-static {p1}, Lcom/couchbase/lite/AbstractReplicator;->isOffline(Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)Z

    move-result v2

    if-nez v2, :cond_0

    move v5, v6

    :cond_0
    invoke-virtual {p0, v1, v5}, Lcom/couchbase/lite/AbstractReplicator;->handleOffline(Lcom/couchbase/lite/ReplicatorActivityLevel;Z)V

    :cond_1
    iget-object v1, p0, Lcom/couchbase/lite/AbstractReplicator;->pendingResolutions:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/couchbase/lite/AbstractReplicator;->pendingStatusNotifications:Ljava/util/Deque;

    invoke-interface {v1, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v1, p0, Lcom/couchbase/lite/AbstractReplicator;->pendingStatusNotifications:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/couchbase/lite/AbstractReplicator;->updateStatus(Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;

    new-instance v1, Lcom/couchbase/lite/ReplicatorChange;

    move-object v2, p0

    check-cast v2, Lcom/couchbase/lite/Replicator;

    invoke-virtual {p0}, Lcom/couchbase/lite/AbstractReplicator;->getStatus()Lcom/couchbase/lite/ReplicatorStatus;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/couchbase/lite/ReplicatorChange;-><init>(Lcom/couchbase/lite/Replicator;Lcom/couchbase/lite/ReplicatorStatus;)V

    new-instance v2, Ljava/util/HashSet;

    iget-object v3, p0, Lcom/couchbase/lite/AbstractReplicator;->changeListeners:Ljava/util/Set;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p1}, Lcom/couchbase/lite/AbstractReplicator;->isStopped(Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)Z

    move-result p1

    invoke-direct {p0, p1, v1, v2}, Lcom/couchbase/lite/AbstractReplicator;->postChange(ZLcom/couchbase/lite/ReplicatorChange;Ljava/util/Set;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private updateStatus(Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;
    .locals 9
    .param p1    # Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getReplicatorLock()"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/AbstractReplicator;->status:Lcom/couchbase/lite/ReplicatorStatus;

    new-instance v1, Lcom/couchbase/lite/ReplicatorStatus;

    invoke-direct {v1, p1}, Lcom/couchbase/lite/ReplicatorStatus;-><init>(Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V

    iput-object v1, p0, Lcom/couchbase/lite/AbstractReplicator;->status:Lcom/couchbase/lite/ReplicatorStatus;

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->getErrorCode()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/couchbase/lite/AbstractReplicator;->status:Lcom/couchbase/lite/ReplicatorStatus;

    invoke-virtual {v2}, Lcom/couchbase/lite/ReplicatorStatus;->getError()Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object v2

    iput-object v2, p0, Lcom/couchbase/lite/AbstractReplicator;->lastError:Lcom/couchbase/lite/CouchbaseLiteException;

    :cond_0
    sget-object v2, Lcom/couchbase/lite/AbstractReplicator;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/couchbase/lite/ReplicatorStatus;->getActivityLevel()Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object v5

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicator;->status:Lcom/couchbase/lite/ReplicatorStatus;

    invoke-virtual {p0}, Lcom/couchbase/lite/ReplicatorStatus;->getActivityLevel()Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object v6

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->getProgressUnitsCompleted()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;->getProgressUnitsTotal()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array/range {v3 .. v8}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "%s: state changed(%d): %s => %s(%d/%d)"

    invoke-static {v2, v0, p0}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance p0, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;-><init>(Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V

    return-object p0
.end method

.method private verifyCollection(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicator;->config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->getCollectionConfigs()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/l4;

    invoke-direct {v0, p1, p2}, Lcom/sunia/HTREnginev2/l4;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/couchbase/lite/internal/utils/Fn;->firstOrNull(Ljava/util/Collection;Lcom/couchbase/lite/internal/utils/Fn$Predicate;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "This replicator is not replicating the collection "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static synthetic w(Lcom/couchbase/lite/ReplicatorChange;Lcom/couchbase/lite/ReplicatorChangeListenerToken;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/couchbase/lite/AbstractReplicator;->lambda$postChange$4(Lcom/couchbase/lite/ReplicatorChange;Lcom/couchbase/lite/ReplicatorChangeListenerToken;)V

    return-void
.end method


# virtual methods
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
    check-cast p1, Lcom/couchbase/lite/ReplicatorChangeListener;

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/AbstractReplicator;->addChangeListener(Lcom/couchbase/lite/ReplicatorChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public addChangeListener(Lcom/couchbase/lite/ReplicatorChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 1
    .param p1    # Lcom/couchbase/lite/ReplicatorChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "listener"

    .line 3
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0, p1}, Lcom/couchbase/lite/AbstractReplicator;->addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/ReplicatorChangeListener;)Lcom/couchbase/lite/ListenerToken;

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
    check-cast p2, Lcom/couchbase/lite/ReplicatorChangeListener;

    invoke-virtual {p0, p1, p2}, Lcom/couchbase/lite/AbstractReplicator;->addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/ReplicatorChangeListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public addChangeListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/ReplicatorChangeListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/ReplicatorChangeListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "listener"

    .line 5
    invoke-static {p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lcom/couchbase/lite/ReplicatorChangeListenerToken;

    new-instance v1, Lcom/sunia/HTREnginev2/g4;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/g4;-><init>(Lcom/couchbase/lite/AbstractReplicator;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/couchbase/lite/ReplicatorChangeListenerToken;-><init>(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/ReplicatorChangeListener;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    .line 7
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getReplicatorLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicator;->changeListeners:Ljava/util/Set;

    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addDocumentReplicationListener(Lcom/couchbase/lite/DocumentReplicationListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 1
    .param p1    # Lcom/couchbase/lite/DocumentReplicationListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "listener"

    .line 1
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Lcom/couchbase/lite/AbstractReplicator;->addDocumentReplicationListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/DocumentReplicationListener;)Lcom/couchbase/lite/ListenerToken;

    move-result-object p0

    return-object p0
.end method

.method public addDocumentReplicationListener(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/DocumentReplicationListener;)Lcom/couchbase/lite/ListenerToken;
    .locals 2
    .param p1    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/DocumentReplicationListener;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "listener"

    .line 3
    invoke-static {p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    new-instance v0, Lcom/couchbase/lite/DocumentReplicationListenerToken;

    new-instance v1, Lcom/sunia/HTREnginev2/j4;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/j4;-><init>(Lcom/couchbase/lite/AbstractReplicator;)V

    invoke-direct {v0, p1, p2, v1}, Lcom/couchbase/lite/DocumentReplicationListenerToken;-><init>(Ljava/util/concurrent/Executor;Lcom/couchbase/lite/DocumentReplicationListener;Lcom/couchbase/lite/internal/utils/Fn$Consumer;)V

    .line 5
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getReplicatorLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 6
    :try_start_0
    iget-object p2, p0, Lcom/couchbase/lite/AbstractReplicator;->docEndedListeners:Ljava/util/Set;

    invoke-interface {p2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-direct {p0}, Lcom/couchbase/lite/AbstractReplicator;->setProgressLevel()V

    .line 8
    monitor-exit p1

    return-object v0

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public close()V
    .locals 7

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getReplicatorLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/couchbase/lite/AbstractReplicator;->closed:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/couchbase/lite/AbstractReplicator;->closed:Z

    iget-object v2, p0, Lcom/couchbase/lite/AbstractReplicator;->status:Lcom/couchbase/lite/ReplicatorStatus;

    invoke-virtual {v2}, Lcom/couchbase/lite/ReplicatorStatus;->getActivityLevel()Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object v2

    sget-object v3, Lcom/couchbase/lite/ReplicatorActivityLevel;->STOPPED:Lcom/couchbase/lite/ReplicatorActivityLevel;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    new-instance v2, Ljava/util/HashSet;

    iget-object v5, p0, Lcom/couchbase/lite/AbstractReplicator;->changeListeners:Ljava/util/Set;

    invoke-direct {v2, v5}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    new-instance v5, Lcom/couchbase/lite/ReplicatorStatus;

    iget-object v6, p0, Lcom/couchbase/lite/AbstractReplicator;->status:Lcom/couchbase/lite/ReplicatorStatus;

    invoke-virtual {v6}, Lcom/couchbase/lite/ReplicatorStatus;->getProgress()Lcom/couchbase/lite/ReplicatorProgress;

    move-result-object v6

    invoke-direct {v5, v3, v6, v4}, Lcom/couchbase/lite/ReplicatorStatus;-><init>(Lcom/couchbase/lite/ReplicatorActivityLevel;Lcom/couchbase/lite/ReplicatorProgress;Lcom/couchbase/lite/CouchbaseLiteException;)V

    iput-object v5, p0, Lcom/couchbase/lite/AbstractReplicator;->status:Lcom/couchbase/lite/ReplicatorStatus;

    move-object v4, v2

    goto :goto_0

    :cond_1
    move-object v5, v4

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->closeC4Replicator()V

    sget-object v0, Lcom/couchbase/lite/AbstractReplicator;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v2, "Replicator(%s) closed: %s"

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getId()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v3, p0}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v2, v3}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v4, :cond_3

    invoke-virtual {v4}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/couchbase/lite/ReplicatorChange;

    move-object v2, p0

    check-cast v2, Lcom/couchbase/lite/Replicator;

    invoke-direct {v0, v2, v5}, Lcom/couchbase/lite/ReplicatorChange;-><init>(Lcom/couchbase/lite/Replicator;Lcom/couchbase/lite/ReplicatorStatus;)V

    invoke-direct {p0, v1, v0, v4}, Lcom/couchbase/lite/AbstractReplicator;->postChange(ZLcom/couchbase/lite/ReplicatorChange;Ljava/util/Set;)V

    :cond_3
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public abstract createReplicatorForTarget(Lcom/couchbase/lite/Endpoint;)Lcom/couchbase/lite/internal/core/C4Replicator;
    .param p1    # Lcom/couchbase/lite/Endpoint;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getDbLock()"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation
.end method

.method public dispatchDocumentsEnded(Ljava/util/List;Z)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/internal/core/C4DocumentEnded;",
            ">;Z)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->dispatcher:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sunia/HTREnginev2/m4;

    invoke-direct {v1, p0, p1, p2}, Lcom/sunia/HTREnginev2/m4;-><init>(Lcom/couchbase/lite/AbstractReplicator;Ljava/util/List;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public dispatchStatusChange(Lcom/couchbase/lite/internal/core/C4Replicator;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V
    .locals 1
    .param p1    # Lcom/couchbase/lite/internal/core/C4Replicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->dispatcher:Ljava/util/concurrent/Executor;

    new-instance v0, Lcom/sunia/HTREnginev2/f4;

    invoke-direct {v0, p0, p2}, Lcom/sunia/HTREnginev2/f4;-><init>(Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getConfig()Lcom/couchbase/lite/ReplicatorConfiguration;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/ReplicatorConfiguration;

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicator;->config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/ReplicatorConfiguration;-><init>(Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;)V

    return-object v0
.end method

.method public getDocEndListenerCount()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getReplicatorLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicator;->docEndedListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

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

.method public getLastError()Lcom/couchbase/lite/CouchbaseLiteException;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicator;->lastError:Lcom/couchbase/lite/CouchbaseLiteException;

    return-object p0
.end method

.method public getListenerCount()I
    .locals 2
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getReplicatorLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/AbstractReplicator;->changeListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicator;->docEndedListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result p0

    add-int/2addr v1, p0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getLocalC4Replicator(Lcom/couchbase/lite/Database;)Lcom/couchbase/lite/internal/core/C4Replicator;
    .locals 9
    .param p1    # Lcom/couchbase/lite/Database;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getDbLock()"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractReplicator;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v0

    iget-object v1, p0, Lcom/couchbase/lite/AbstractReplicator;->config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->getCollectionConfigs()Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/couchbase/lite/AbstractReplicator;->config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    invoke-virtual {v2}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->getType()Lcom/couchbase/lite/ReplicatorType;

    move-result-object v3

    iget-object v2, p0, Lcom/couchbase/lite/AbstractReplicator;->config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    invoke-virtual {v2}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->isContinuous()Z

    move-result v4

    iget-object v2, p0, Lcom/couchbase/lite/AbstractReplicator;->config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    invoke-virtual {v2}, Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;->getConnectionOptions()Ljava/util/Map;

    move-result-object v5

    new-instance v6, Lcom/sunia/HTREnginev2/h4;

    invoke-direct {v6, p0}, Lcom/sunia/HTREnginev2/h4;-><init>(Lcom/couchbase/lite/AbstractReplicator;)V

    new-instance v7, Lcom/sunia/HTREnginev2/i4;

    invoke-direct {v7, p0}, Lcom/sunia/HTREnginev2/i4;-><init>(Lcom/couchbase/lite/AbstractReplicator;)V

    move-object v8, p0

    check-cast v8, Lcom/couchbase/lite/Replicator;

    move-object v2, p1

    invoke-virtual/range {v0 .. v8}, Lcom/couchbase/lite/AbstractDatabase;->createLocalReplicator(Ljava/util/Map;Lcom/couchbase/lite/Database;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/Replicator;)Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object p0

    return-object p0
.end method

.method public final getMessageC4Replicator(Lcom/couchbase/lite/internal/sockets/MessageFraming;)Lcom/couchbase/lite/internal/core/C4Replicator;
    .locals 15
    .param p1    # Lcom/couchbase/lite/internal/sockets/MessageFraming;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getDbLock()"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractReplicator;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v1

    iget-object v2, v0, Lcom/couchbase/lite/AbstractReplicator;->config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    invoke-virtual {v2}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->getCollectionConfigs()Ljava/util/Map;

    move-result-object v2

    const-string v3, "x-msg-endpt"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    iget-object v8, v0, Lcom/couchbase/lite/AbstractReplicator;->config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    invoke-virtual {v8}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->getType()Lcom/couchbase/lite/ReplicatorType;

    move-result-object v8

    iget-object v9, v0, Lcom/couchbase/lite/AbstractReplicator;->config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    invoke-virtual {v9}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->isContinuous()Z

    move-result v9

    iget-object v10, v0, Lcom/couchbase/lite/AbstractReplicator;->config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    invoke-virtual {v10}, Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;->getConnectionOptions()Ljava/util/Map;

    move-result-object v10

    new-instance v11, Lcom/sunia/HTREnginev2/h4;

    invoke-direct {v11, p0}, Lcom/sunia/HTREnginev2/h4;-><init>(Lcom/couchbase/lite/AbstractReplicator;)V

    new-instance v12, Lcom/sunia/HTREnginev2/i4;

    invoke-direct {v12, p0}, Lcom/sunia/HTREnginev2/i4;-><init>(Lcom/couchbase/lite/AbstractReplicator;)V

    move-object v13, v0

    check-cast v13, Lcom/couchbase/lite/Replicator;

    iget-object v14, v0, Lcom/couchbase/lite/AbstractReplicator;->socketFactory:Lcom/couchbase/lite/internal/SocketFactory;

    move-object v0, v1

    move-object v1, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v5

    move-object v5, v6

    move-object v6, v7

    move-object/from16 v7, p1

    invoke-virtual/range {v0 .. v14}, Lcom/couchbase/lite/AbstractDatabase;->createRemoteReplicator(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/internal/sockets/MessageFraming;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/Replicator;Lcom/couchbase/lite/internal/SocketFactory;)Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object v0

    return-object v0
.end method

.method public getPendingDocumentIds()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "_default"

    .line 1
    invoke-direct {p0, v0, v0}, Lcom/couchbase/lite/AbstractReplicator;->getPendingDocIds(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public getPendingDocumentIds(Lcom/couchbase/lite/Collection;)Ljava/util/Set;
    .locals 1
    .param p1    # Lcom/couchbase/lite/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/Collection;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/couchbase/lite/Collection;->getScope()Lcom/couchbase/lite/Scope;

    move-result-object v0

    invoke-virtual {v0}, Lcom/couchbase/lite/Scope;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/couchbase/lite/AbstractReplicator;->getPendingDocIds(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final getRemoteC4Replicator(Ljava/net/URI;)Lcom/couchbase/lite/internal/core/C4Replicator;
    .locals 18
    .param p1    # Ljava/net/URI;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getDbLock()"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/LiteCoreException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getPort()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/couchbase/lite/AbstractReplicator;->splitPath(Ljava/lang/String;)Ljava/util/Deque;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v2

    if-gtz v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Ljava/util/Deque;->removeLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    :goto_0
    move-object v9, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v1}, Lcom/couchbase/lite/internal/utils/StringUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {p0 .. p0}, Lcom/couchbase/lite/AbstractReplicator;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v3

    iget-object v1, v0, Lcom/couchbase/lite/AbstractReplicator;->config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->getCollectionConfigs()Ljava/util/Map;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v6

    sget-object v10, Lcom/couchbase/lite/internal/sockets/MessageFraming;->NO_FRAMING:Lcom/couchbase/lite/internal/sockets/MessageFraming;

    iget-object v1, v0, Lcom/couchbase/lite/AbstractReplicator;->config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->getType()Lcom/couchbase/lite/ReplicatorType;

    move-result-object v11

    iget-object v1, v0, Lcom/couchbase/lite/AbstractReplicator;->config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/BaseImmutableReplicatorConfiguration;->isContinuous()Z

    move-result v12

    iget-object v1, v0, Lcom/couchbase/lite/AbstractReplicator;->config:Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;

    invoke-virtual {v1}, Lcom/couchbase/lite/internal/ImmutableReplicatorConfiguration;->getConnectionOptions()Ljava/util/Map;

    move-result-object v13

    new-instance v14, Lcom/sunia/HTREnginev2/h4;

    invoke-direct {v14, v0}, Lcom/sunia/HTREnginev2/h4;-><init>(Lcom/couchbase/lite/AbstractReplicator;)V

    new-instance v15, Lcom/sunia/HTREnginev2/i4;

    invoke-direct {v15, v0}, Lcom/sunia/HTREnginev2/i4;-><init>(Lcom/couchbase/lite/AbstractReplicator;)V

    move-object/from16 v16, v0

    check-cast v16, Lcom/couchbase/lite/Replicator;

    iget-object v0, v0, Lcom/couchbase/lite/AbstractReplicator;->socketFactory:Lcom/couchbase/lite/internal/SocketFactory;

    move-object/from16 v17, v0

    invoke-virtual/range {v3 .. v17}, Lcom/couchbase/lite/AbstractDatabase;->createRemoteReplicator(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/couchbase/lite/internal/sockets/MessageFraming;Lcom/couchbase/lite/ReplicatorType;ZLjava/util/Map;Lcom/couchbase/lite/internal/core/C4Replicator$StatusListener;Lcom/couchbase/lite/internal/core/C4Replicator$DocEndsListener;Lcom/couchbase/lite/Replicator;Lcom/couchbase/lite/internal/SocketFactory;)Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object v0

    return-object v0
.end method

.method public getReplicatorListenerCount()I
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getReplicatorLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicator;->changeListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->size()I

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

.method public getServerCertificates()Ljava/util/List;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicator;->serverCertificates:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method public getSocketFactory()Lcom/couchbase/lite/internal/SocketFactory;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicator;->socketFactory:Lcom/couchbase/lite/internal/SocketFactory;

    return-object p0
.end method

.method public getState()Lcom/couchbase/lite/ReplicatorActivityLevel;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getReplicatorLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicator;->status:Lcom/couchbase/lite/ReplicatorStatus;

    invoke-virtual {p0}, Lcom/couchbase/lite/ReplicatorStatus;->getActivityLevel()Lcom/couchbase/lite/ReplicatorActivityLevel;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getStatus()Lcom/couchbase/lite/ReplicatorStatus;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getReplicatorLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/couchbase/lite/ReplicatorStatus;

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicator;->status:Lcom/couchbase/lite/ReplicatorStatus;

    invoke-direct {v1, p0}, Lcom/couchbase/lite/ReplicatorStatus;-><init>(Lcom/couchbase/lite/ReplicatorStatus;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public abstract handleOffline(Lcom/couchbase/lite/ReplicatorActivityLevel;Z)V
    .param p1    # Lcom/couchbase/lite/ReplicatorActivityLevel;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public isClosed()Z
    .locals 1

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getReplicatorLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean p0, p0, Lcom/couchbase/lite/AbstractReplicator;->closed:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isDocumentPending(Ljava/lang/String;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "_default"

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/couchbase/lite/AbstractReplicator;->isDocPending(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isDocumentPending(Ljava/lang/String;Lcom/couchbase/lite/Collection;)Z
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/Collection;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/couchbase/lite/CouchbaseLiteException;
        }
    .end annotation

    .line 2
    invoke-virtual {p2}, Lcom/couchbase/lite/Collection;->getScope()Lcom/couchbase/lite/Scope;

    move-result-object v0

    invoke-virtual {v0}, Lcom/couchbase/lite/Scope;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/couchbase/lite/Collection;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v0, p2}, Lcom/couchbase/lite/AbstractReplicator;->isDocPending(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public notifyDocumentEnded(ZLjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/List<",
            "Lcom/couchbase/lite/ReplicatedDocument;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/couchbase/lite/DocumentReplication;

    move-object v1, p0

    check-cast v1, Lcom/couchbase/lite/Replicator;

    invoke-direct {v0, v1, p1, p2}, Lcom/couchbase/lite/DocumentReplication;-><init>(Lcom/couchbase/lite/Replicator;ZLjava/util/List;)V

    sget-object p1, Lcom/couchbase/lite/AbstractReplicator;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string p2, "%s: document end notification: %s"

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getId()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, p2, v1}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getReplicatorLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    :try_start_0
    new-instance p2, Ljava/util/HashSet;

    iget-object p0, p0, Lcom/couchbase/lite/AbstractReplicator;->docEndedListeners:Ljava/util/Set;

    invoke-direct {p2, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/couchbase/lite/DocumentReplicationListenerToken;

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/DocumentReplicationListenerToken;->postChange(Lcom/couchbase/lite/DocumentReplication;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onConflictResolved(Lcom/couchbase/lite/internal/utils/Fn$NullableConsumer;Lcom/couchbase/lite/ReplicatedDocument;)V
    .locals 5
    .param p2    # Lcom/couchbase/lite/ReplicatedDocument;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/couchbase/lite/internal/utils/Fn$NullableConsumer<",
            "Lcom/couchbase/lite/CouchbaseLiteException;",
            ">;",
            "Lcom/couchbase/lite/ReplicatedDocument;",
            ")V"
        }
    .end annotation

    sget-object v0, Lcom/couchbase/lite/AbstractReplicator;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "%s: conflict resolved: %s"

    invoke-virtual {p2}, Lcom/couchbase/lite/ReplicatedDocument;->getError()Lcom/couchbase/lite/CouchbaseLiteException;

    move-result-object v2

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/couchbase/lite/ReplicatedDocument;->getID()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getReplicatorLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/AbstractReplicator;->pendingResolutions:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/couchbase/lite/AbstractReplicator;->pendingResolutions:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/couchbase/lite/AbstractReplicator;->pendingStatusNotifications:Ljava/util/Deque;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/couchbase/lite/AbstractReplicator;->pendingStatusNotifications:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    filled-new-array {p2}, [Lcom/couchbase/lite/ReplicatedDocument;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p2}, Lcom/couchbase/lite/AbstractReplicator;->notifyDocumentEnded(ZLjava/util/List;)V

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;

    iget-object v0, p0, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->dispatcher:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/sunia/HTREnginev2/k4;

    invoke-direct {v1, p0, p2}, Lcom/sunia/HTREnginev2/k4;-><init>(Lcom/couchbase/lite/AbstractReplicator;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public removeChangeListener(Lcom/couchbase/lite/ListenerToken;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/ListenerToken;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "token"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getReplicatorLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    instance-of v1, p1, Lcom/couchbase/lite/ReplicatorChangeListenerToken;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/AbstractReplicator;->removeReplicationListener(Lcom/couchbase/lite/ListenerToken;)V

    monitor-exit v0

    return-void

    :cond_0
    instance-of v1, p1, Lcom/couchbase/lite/DocumentReplicationListenerToken;

    if-eqz v1, :cond_1

    invoke-direct {p0, p1}, Lcom/couchbase/lite/AbstractReplicator;->removeDocumentReplicationListener(Lcom/couchbase/lite/ListenerToken;)V

    monitor-exit v0

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unexpected token: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public runTaskConcurrently(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    invoke-static {}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->getExecutionService()Lcom/couchbase/lite/internal/exec/ExecutionService;

    move-result-object p0

    invoke-interface {p0}, Lcom/couchbase/lite/internal/exec/ExecutionService;->getConcurrentExecutor()Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/couchbase/lite/AbstractReplicator;->start(Z)V

    return-void
.end method

.method public start(Z)V
    .locals 6

    .line 2
    sget-object v0, Lcom/couchbase/lite/AbstractReplicator;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "Replicator(%s) starting: %s"

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getId()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3
    invoke-direct {p0}, Lcom/couchbase/lite/AbstractReplicator;->getDatabase()Lcom/couchbase/lite/Database;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/couchbase/lite/AbstractDatabase;->addActiveReplicator(Lcom/couchbase/lite/AbstractReplicator;)V

    .line 4
    :try_start_0
    invoke-direct {p0}, Lcom/couchbase/lite/AbstractReplicator;->getOrCreateC4Replicator()Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object v1
    :try_end_0
    .catch Lcom/couchbase/lite/LiteCoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getReplicatorLock()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 6
    :try_start_1
    invoke-virtual {v1, p1}, Lcom/couchbase/lite/internal/core/C4Replicator;->start(Z)V

    .line 7
    invoke-virtual {v1}, Lcom/couchbase/lite/internal/core/C4Replicator;->getStatus()Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;

    move-result-object p1

    if-nez p1, :cond_0

    .line 8
    new-instance p1, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;

    const/4 v3, 0x1

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-direct {p1, v5, v3, v4}, Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;-><init>(III)V

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/couchbase/lite/AbstractReplicator;->updateStatus(Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;

    move-result-object p1

    .line 10
    invoke-virtual {p0, v1, p1}, Lcom/couchbase/lite/AbstractReplicator;->dispatchStatusChange(Lcom/couchbase/lite/internal/core/C4Replicator;Lcom/couchbase/lite/internal/core/C4ReplicatorStatus;)V

    .line 11
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string p1, "Replicator(%s) started: %s"

    .line 12
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getId()Ljava/lang/String;

    move-result-object v1

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {v0, p1, p0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :catchall_0
    move-exception p0

    .line 13
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v0, "Failed to create replicator"

    invoke-direct {p1, v0, p0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p1
.end method

.method public stop()V
    .locals 3

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getC4Replicator()Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object v0

    sget-object v1, Lcom/couchbase/lite/AbstractReplicator;->LOG_DOMAIN:Lcom/couchbase/lite/LogDomain;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getId()Ljava/lang/String;

    move-result-object v2

    filled-new-array {v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v2, "Replicator(%s) stopped: %s"

    invoke-static {v1, v2, p0}, Lcom/couchbase/lite/internal/logging/Log;->i(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/couchbase/lite/internal/core/C4Replicator;->stop()V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/AbstractReplicator;->desc:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/couchbase/lite/AbstractReplicator;->description()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/couchbase/lite/AbstractReplicator;->desc:Ljava/lang/String;

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/couchbase/lite/AbstractReplicator;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " $"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getC4Replicator()Lcom/couchbase/lite/internal/core/C4Replicator;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
