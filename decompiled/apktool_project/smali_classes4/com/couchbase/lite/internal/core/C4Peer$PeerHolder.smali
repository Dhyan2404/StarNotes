.class Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/exec/Cleaner$Cleanable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/core/C4Peer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PeerHolder"
.end annotation


# instance fields
.field private final cleaner:Lcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final createdAt:J

.field protected final id:J

.field private final lifecycle:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Exception;",
            ">;"
        }
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private peer:J
    .annotation build Landroidx/annotation/GuardedBy;
        value = "name"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;JLcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Lcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->id:J

    iput-object p4, p0, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->cleaner:Lcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;

    iput-wide p2, p0, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->peer:J

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->name:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->createdAt:J

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-static {}, Lcom/couchbase/lite/internal/CouchbaseLiteInternal;->debugging()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    new-instance p2, Ljava/lang/Exception;

    const-string p3, "Created at:"

    invoke-direct {p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->lifecycle:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static synthetic a(Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;Lcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->lambda$clean$0(Lcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;)J
    .locals 2

    iget-wide v0, p0, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->peer:J

    return-wide v0
.end method

.method public static synthetic access$100(Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->logBadCall()V

    return-void
.end method

.method public static synthetic b(Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;)V
    .locals 0

    invoke-direct {p0}, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->lambda$clean$1()V

    return-void
.end method

.method private disposeRef(Lcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;)V
    .locals 5
    .param p1    # Lcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->getPeerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->peer:J

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->peer:J

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long p0, v1, v3

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1, v1, v2}, Lcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;->dispose(J)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private synthetic lambda$clean$0(Lcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->disposeRef(Lcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;)V

    return-void
.end method

.method private synthetic lambda$clean$1()V
    .locals 3

    sget-object v0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->createdAt:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->name:Ljava/lang/String;

    filled-new-array {v1, p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v1, "Peer %s not explicitly closed"

    invoke-static {v0, v1, p0}, Lcom/couchbase/lite/internal/logging/Log;->d(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private logBadCall()V
    .locals 3

    sget-object v0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    new-instance v1, Ljava/lang/Exception;

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->lifecycle:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Throwable;

    const-string v2, "Used at:"

    invoke-direct {v1, v2, p0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string p0, "Operation on closed native peer"

    invoke-static {v0, p0, v1}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public final clean(Z)V
    .locals 3
    .annotation build Ledu/umd/cs/findbugs/annotations/SuppressFBWarnings;
        value = {
            "JLM_JSR166_UTILCONCURRENT_MONITORENTER"
        }
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->cleaner:Lcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->disposeRef(Lcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;)V

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/couchbase/lite/internal/core/C4Peer;->CORE_CLEANER:Lcom/couchbase/lite/internal/exec/CBLExecutor;

    new-instance v2, Lcom/couchbase/lite/internal/core/f;

    invoke-direct {v2, p0, v0}, Lcom/couchbase/lite/internal/core/f;-><init>(Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;Lcom/couchbase/lite/internal/core/C4Peer$PeerCleaner;)V

    invoke-virtual {v1, v2}, Lcom/couchbase/lite/internal/exec/CBLExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->lifecycle:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-nez p1, :cond_3

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->lifecycle:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/lang/Exception;

    const-string v1, "Closed at:"

    invoke-direct {p1, v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {p0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    return-void

    :cond_3
    sget-object p1, Lcom/couchbase/lite/internal/core/C4Peer;->CORE_CLEANER:Lcom/couchbase/lite/internal/exec/CBLExecutor;

    new-instance v0, Lcom/couchbase/lite/internal/core/g;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/internal/core/g;-><init>(Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;)V

    invoke-virtual {p1, v0}, Lcom/couchbase/lite/internal/exec/CBLExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public getPeerLock()Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->name:Ljava/lang/String;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PeerHolder{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->peer:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " @"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/couchbase/lite/internal/core/C4Peer$PeerHolder;->createdAt:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
