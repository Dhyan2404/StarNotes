.class public abstract Lcom/couchbase/lite/internal/replicator/BaseReplicator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private c4Replicator:Lcom/couchbase/lite/internal/core/C4Replicator;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field protected final dispatcher:Ljava/util/concurrent/Executor;

.field private id:Ljava/lang/String;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->lock:Ljava/lang/Object;

    invoke-static {}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->getExecutionService()Lcom/couchbase/lite/internal/exec/ExecutionService;

    move-result-object v0

    invoke-interface {v0}, Lcom/couchbase/lite/internal/exec/ExecutionService;->getSerialExecutor()Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;

    move-result-object v0

    iput-object v0, p0, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->dispatcher:Ljava/util/concurrent/Executor;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getReplId(Lcom/couchbase/lite/internal/core/C4Replicator;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/ClassUtils;->objId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->id:Ljava/lang/String;

    return-void
.end method

.method private getReplId(Lcom/couchbase/lite/internal/core/C4Replicator;)Ljava/lang/String;
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/core/C4Replicator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    if-nez p1, :cond_0

    const-string p0, "unattached"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/couchbase/lite/internal/core/C4Replicator;->getReplId()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private setC4ReplicatorInternal(Lcom/couchbase/lite/internal/core/C4Replicator;)V
    .locals 6
    .param p1    # Lcom/couchbase/lite/internal/core/C4Replicator;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getReplicatorLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->c4Replicator:Lcom/couchbase/lite/internal/core/C4Replicator;

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getReplId(Lcom/couchbase/lite/internal/core/C4Replicator;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/ClassUtils;->objId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->id:Ljava/lang/String;

    iput-object p1, p0, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->c4Replicator:Lcom/couchbase/lite/internal/core/C4Replicator;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p1, Lcom/couchbase/lite/LogDomain;->REPLICATOR:Lcom/couchbase/lite/LogDomain;

    const-string v0, "%s: new c4Repl: %s"

    filled-new-array {v1, v3, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, v0, p0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/couchbase/lite/internal/core/C4Replicator;->close()V

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


# virtual methods
.method public final closeC4Replicator()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->setC4ReplicatorInternal(Lcom/couchbase/lite/internal/core/C4Replicator;)V

    return-void
.end method

.method public final getC4Replicator()Lcom/couchbase/lite/internal/core/C4Replicator;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getReplicatorLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->c4Replicator:Lcom/couchbase/lite/internal/core/C4Replicator;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->getReplicatorLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->id:Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getReplicatorLock()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->lock:Ljava/lang/Object;

    return-object p0
.end method

.method public final setC4Replicator(Lcom/couchbase/lite/internal/core/C4Replicator;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/core/C4Replicator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/replicator/BaseReplicator;->setC4ReplicatorInternal(Lcom/couchbase/lite/internal/core/C4Replicator;)V

    return-void
.end method
