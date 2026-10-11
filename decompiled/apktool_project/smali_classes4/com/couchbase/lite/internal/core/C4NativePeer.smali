.class public abstract Lcom/couchbase/lite/internal/core/C4NativePeer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# instance fields
.field private volatile history:Ljava/lang/Exception;

.field private volatile open:Z
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getPeerLock()"
    .end annotation
.end field

.field private final peer:J
    .annotation build Landroidx/annotation/GuardedBy;
        value = "getPeerLock()"
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->open:Z

    const-string v0, "peer handle"

    .line 4
    invoke-static {p1, p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotZero(JLjava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->peer:J

    const-string v0, "Created at:"

    .line 5
    invoke-direct {p0, p1, p2, v0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->updateHistory(JLjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Long;)V
    .locals 2
    .param p1    # Ljava/lang/Long;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const-string v0, "peer handle"

    .line 1
    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/couchbase/lite/internal/core/C4NativePeer;-><init>(J)V

    return-void
.end method

.method private logBadCall()V
    .locals 2

    sget-object v0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    const-string v1, "Operation on closed native peer"

    invoke-direct {p0, v0, v1}, Lcom/couchbase/lite/internal/core/C4NativePeer;->logCall(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    return-void
.end method

.method private logCall(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V
    .locals 5
    .param p1    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->debugging()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-wide v0, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->peer:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "%s@0x%x: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v2, Ljava/lang/Exception;

    const-string v3, "At: "

    iget-object v4, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->history:Ljava/lang/Exception;

    invoke-direct {v2, v3, v4}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p1, p2, v2, p0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    return-void
.end method

.method private releasePeer(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)J
    .locals 5
    .param p1    # Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows<",
            "Ljava/lang/Long;",
            "TE;>;)J^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 6
    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->getPeerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 7
    :try_start_0
    invoke-direct {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->releasePeerLocked()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 8
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;->accept(Ljava/lang/Object;)V

    .line 9
    :cond_0
    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private releasePeerLocked()J
    .locals 2
    .annotation build Landroidx/annotation/GuardedBy;
        value = "lock"
    .end annotation

    iget-boolean v0, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->open:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->open:Z

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->peer:J

    :goto_0
    return-wide v0
.end method

.method private updateHistory(JLjava/lang/String;)V
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-wide/16 v0, 0x0

    cmp-long p1, p1, v0

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->debugging()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/Exception;

    iget-object p2, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->history:Ljava/lang/Exception;

    invoke-direct {p1, p3, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->history:Ljava/lang/Exception;

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final getPeer()J
    .locals 3

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->getPeerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->open:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->peer:J

    monitor-exit v0

    return-wide v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->logBadCall()V

    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string v0, "Operation on closed peer"

    invoke-direct {p0, v0}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final getPeerLock()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    return-object p0
.end method

.method public final nonNullWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunction;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/utils/Fn$NonNullFunction;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/couchbase/lite/internal/utils/Fn$NonNullFunction<",
            "Ljava/lang/Long;",
            "TR;>;)TR;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->getPeerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->open:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->peer:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/couchbase/lite/internal/utils/Fn$NonNullFunction;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->logBadCall()V

    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "Closed peer"

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final nullableWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows<",
            "Ljava/lang/Long;",
            "TR;TE;>;)TR;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->getPeerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->open:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->peer:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->logBadCall()V

    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "Closed peer"

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final releasePeer(Lcom/couchbase/lite/LogDomain;Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V
    .locals 4
    .param p1    # Lcom/couchbase/lite/LogDomain;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/couchbase/lite/LogDomain;",
            "Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows<",
            "Ljava/lang/Long;",
            "TE;>;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcom/couchbase/lite/internal/core/C4NativePeer;->releasePeer(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->debugging()Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    :cond_0
    const-wide/16 v2, 0x0

    if-nez p1, :cond_1

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 3
    invoke-direct {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->logBadCall()V

    goto :goto_0

    :cond_1
    cmp-long p2, v0, v2

    if-eqz p2, :cond_2

    const-string p2, "Expected this peer to have been closed previously"

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/couchbase/lite/internal/core/C4NativePeer;->logCall(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    :cond_2
    :goto_0
    const-string p1, "Released at:"

    .line 5
    invoke-direct {p0, v0, v1, p1}, Lcom/couchbase/lite/internal/core/C4NativePeer;->updateHistory(JLjava/lang/String;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->peer:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final voidWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows<",
            "Ljava/lang/Long;",
            "TE;>;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->getPeerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->open:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->peer:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;->accept(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->logBadCall()V

    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "Closed peer"

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final withPeer(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows<",
            "Ljava/lang/Long;",
            "TE;>;)V^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->getPeerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->open:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->peer:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;->accept(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->logBadCall()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final withPeerOrDefault(Ljava/lang/Object;Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;
    .locals 3
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Exception;",
            ">(TR;",
            "Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows<",
            "Ljava/lang/Long;",
            "TR;TE;>;)TR;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->getPeerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->open:Z

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->peer:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p2, p0}, Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    move-object p1, p0

    :cond_0
    monitor-exit v0

    return-object p1

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->logBadCall()V

    return-object p1

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final withPeerOrNull(Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows<",
            "Ljava/lang/Long;",
            "TR;TE;>;)TR;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->getPeerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->open:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->peer:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->logBadCall()V

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "E:",
            "Ljava/lang/Exception;",
            ">(",
            "Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows<",
            "Ljava/lang/Long;",
            "TR;TE;>;)TR;^TE;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->getPeerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->open:Z

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4NativePeer;->peer:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/couchbase/lite/internal/core/C4NativePeer;->logBadCall()V

    new-instance p0, Lcom/couchbase/lite/CouchbaseLiteError;

    const-string p1, "Closed peer"

    invoke-direct {p0, p1}, Lcom/couchbase/lite/CouchbaseLiteError;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
