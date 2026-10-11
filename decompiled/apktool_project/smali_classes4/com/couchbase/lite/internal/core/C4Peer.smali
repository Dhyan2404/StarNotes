.class public abstract Lcom/couchbase/lite/internal/core/C4Peer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;,
        Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;,
        Lcom/couchbase/lite/internal/core/C4Peer$UncountedPeerHolder;
    }
.end annotation


# static fields
.field static final CLEANER:Lcom/couchbase/lite/internal/exec/Cleaner;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field static final CORE_CLEANER:Lcom/couchbase/lite/internal/exec/CBLExecutor;
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field final cleaner:Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final peerHolder:Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/couchbase/lite/internal/exec/Cleaner;

    const-string v1, "c4peer"

    invoke-direct {v0, v1}, Lcom/couchbase/lite/internal/exec/Cleaner;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Peer;->CLEANER:Lcom/couchbase/lite/internal/exec/Cleaner;

    new-instance v0, Lcom/couchbase/lite/internal/exec/CBLExecutor;

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v2, "CoreCleaner"

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3, v3, v1}, Lcom/couchbase/lite/internal/exec/CBLExecutor;-><init>(Ljava/lang/String;IILjava/util/concurrent/BlockingQueue;)V

    sput-object v0, Lcom/couchbase/lite/internal/core/C4Peer;->CORE_CLEANER:Lcom/couchbase/lite/internal/exec/CBLExecutor;

    return-void
.end method

.method public constructor <init>(JLcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;)V
    .locals 1
    .param p3    # Lcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/couchbase/lite/internal/core/C4Peer;-><init>(JLcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;Z)V

    return-void
.end method

.method public constructor <init>(JLcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;Z)V
    .locals 2
    .param p3    # Lcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/couchbase/lite/internal/utils/ClassUtils;->objId(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/couchbase/lite/internal/core/C4Peer;->name:Ljava/lang/String;

    const-string v1, "peer"

    .line 4
    invoke-static {p1, p2, v1}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotZero(JLjava/lang/String;)J

    if-eqz p4, :cond_0

    .line 5
    new-instance p4, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;

    invoke-direct {p4, v0, p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;-><init>(Ljava/lang/String;JLcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;)V

    goto :goto_0

    .line 6
    :cond_0
    new-instance p4, Lcom/couchbase/lite/internal/core/C4Peer$UncountedPeerHolder;

    invoke-direct {p4, v0, p1, p2, p3}, Lcom/couchbase/lite/internal/core/C4Peer$UncountedPeerHolder;-><init>(Ljava/lang/String;JLcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;)V

    :goto_0
    iput-object p4, p0, Lcom/couchbase/lite/internal/core/C4Peer;->peerHolder:Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;

    .line 7
    sget-object p1, Lcom/couchbase/lite/internal/core/C4Peer;->CLEANER:Lcom/couchbase/lite/internal/exec/Cleaner;

    invoke-virtual {p1, p0, p4}, Lcom/couchbase/lite/internal/exec/Cleaner;->register(Ljava/lang/Object;Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;)Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;

    move-result-object p1

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4Peer;->cleaner:Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Peer;->cleaner:Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;->clean(Z)V

    return-void
.end method

.method public final getPeerLock()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Peer;->peerHolder:Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->getPeerLock()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Peer;->name:Ljava/lang/String;

    return-object p0
.end method

.method public final voidWithPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V
    .locals 5
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

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Peer;->getPeerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/internal/core/C4Peer;->peerHolder:Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;

    invoke-static {v1}, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->access$000(Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;->accept(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Peer;->peerHolder:Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;

    invoke-static {p0}, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->access$100(Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;)V

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

.method public final voidWithPeerOrWarn(Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;)V
    .locals 5
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

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Peer;->getPeerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/internal/core/C4Peer;->peerHolder:Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;

    invoke-static {v1}, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->access$000(Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/couchbase/lite/internal/utils/Fn$ConsumerThrows;->accept(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Peer;->peerHolder:Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;

    invoke-static {p0}, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->access$100(Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final withPeerOrDefault(Ljava/lang/Object;Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;)Ljava/lang/Object;
    .locals 5
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

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Peer;->getPeerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/internal/core/C4Peer;->peerHolder:Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;

    invoke-static {v1}, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->access$000(Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_1

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

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Peer;->peerHolder:Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;

    invoke-static {p0}, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->access$100(Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;)V

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
    .locals 5
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

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Peer;->getPeerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/internal/core/C4Peer;->peerHolder:Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;

    invoke-static {v1}, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->access$000(Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-interface {p1, p0}, Lcom/couchbase/lite/internal/utils/Fn$NullableFunctionThrows;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Peer;->peerHolder:Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;

    invoke-static {p0}, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->access$100(Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;)V

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final withPeerOrThrow(Lcom/couchbase/lite/internal/utils/Fn$NonNullFunctionThrows;)Ljava/lang/Object;
    .locals 5
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

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Peer;->getPeerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/internal/core/C4Peer;->peerHolder:Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;

    invoke-static {v1}, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->access$000(Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;)J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-eqz v3, :cond_0

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

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Peer;->peerHolder:Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;

    invoke-static {p0}, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->access$100(Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;)V

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Closed peer"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
