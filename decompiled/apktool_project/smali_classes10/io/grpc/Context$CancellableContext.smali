.class public final Lio/grpc/Context$CancellableContext;
.super Lio/grpc/Context;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/grpc/Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CancellableContext"
.end annotation


# instance fields
.field public final m:Lio/grpc/Deadline;

.field public final n:Lio/grpc/Context;

.field public o:Z

.field public p:Ljava/lang/Throwable;

.field public q:Ljava/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lio/grpc/Context;)V
    .locals 2

    .line 3
    iget-object v0, p1, Lio/grpc/Context;->h:Lcom/sunia/HTREnginev2/q3l;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lcom/sunia/HTREnginev2/q3l;Lio/grpc/Context$a;)V

    .line 4
    invoke-virtual {p1}, Lio/grpc/Context;->getDeadline()Lio/grpc/Deadline;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/Context$CancellableContext;->m:Lio/grpc/Deadline;

    .line 5
    new-instance p1, Lio/grpc/Context;

    iget-object v0, p0, Lio/grpc/Context;->h:Lcom/sunia/HTREnginev2/q3l;

    invoke-direct {p1, p0, v0, v1}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lcom/sunia/HTREnginev2/q3l;Lio/grpc/Context$a;)V

    iput-object p1, p0, Lio/grpc/Context$CancellableContext;->n:Lio/grpc/Context;

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/Context;Lio/grpc/Context$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lio/grpc/Context$CancellableContext;-><init>(Lio/grpc/Context;)V

    return-void
.end method

.method public constructor <init>(Lio/grpc/Context;Lio/grpc/Deadline;)V
    .locals 2

    .line 6
    iget-object v0, p1, Lio/grpc/Context;->h:Lcom/sunia/HTREnginev2/q3l;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lcom/sunia/HTREnginev2/q3l;Lio/grpc/Context$a;)V

    .line 7
    iput-object p2, p0, Lio/grpc/Context$CancellableContext;->m:Lio/grpc/Deadline;

    .line 8
    new-instance p1, Lio/grpc/Context;

    iget-object p2, p0, Lio/grpc/Context;->h:Lcom/sunia/HTREnginev2/q3l;

    invoke-direct {p1, p0, p2, v1}, Lio/grpc/Context;-><init>(Lio/grpc/Context;Lcom/sunia/HTREnginev2/q3l;Lio/grpc/Context$a;)V

    iput-object p1, p0, Lio/grpc/Context$CancellableContext;->n:Lio/grpc/Context;

    return-void
.end method

.method public synthetic constructor <init>(Lio/grpc/Context;Lio/grpc/Deadline;Lio/grpc/Context$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lio/grpc/Context$CancellableContext;-><init>(Lio/grpc/Context;Lio/grpc/Deadline;)V

    return-void
.end method

.method public static synthetic g0(Lio/grpc/Context$CancellableContext;Lio/grpc/Deadline;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lio/grpc/Context$CancellableContext;->h0(Lio/grpc/Deadline;Ljava/util/concurrent/ScheduledExecutorService;)V

    return-void
.end method


# virtual methods
.method public attach()Lio/grpc/Context;
    .locals 0

    iget-object p0, p0, Lio/grpc/Context$CancellableContext;->n:Lio/grpc/Context;

    invoke-virtual {p0}, Lio/grpc/Context;->attach()Lio/grpc/Context;

    move-result-object p0

    return-object p0
.end method

.method public cancel(Ljava/lang/Throwable;)Z
    .locals 3
    .annotation build Lio/grpc/Context$e;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/grpc/Context$CancellableContext;->o:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/grpc/Context$CancellableContext;->o:Z

    iget-object v2, p0, Lio/grpc/Context$CancellableContext;->q:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Ljava/util/concurrent/Future;->cancel(Z)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lio/grpc/Context$CancellableContext;->q:Ljava/util/concurrent/ScheduledFuture;

    :cond_0
    iput-object p1, p0, Lio/grpc/Context$CancellableContext;->p:Ljava/lang/Throwable;

    move v1, v0

    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lio/grpc/Context;->M()V

    :cond_2
    return v1

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public cancellationCause()Ljava/lang/Throwable;
    .locals 1

    invoke-virtual {p0}, Lio/grpc/Context$CancellableContext;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lio/grpc/Context$CancellableContext;->p:Ljava/lang/Throwable;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public close()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public detach(Lio/grpc/Context;)V
    .locals 0

    iget-object p0, p0, Lio/grpc/Context$CancellableContext;->n:Lio/grpc/Context;

    invoke-virtual {p0, p1}, Lio/grpc/Context;->detach(Lio/grpc/Context;)V

    return-void
.end method

.method public detachAndCancel(Lio/grpc/Context;Ljava/lang/Throwable;)V
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1}, Lio/grpc/Context$CancellableContext;->detach(Lio/grpc/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0, p2}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    return-void

    :catchall_0
    move-exception p1

    invoke-virtual {p0, p2}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    throw p1
.end method

.method public f()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDeadline()Lio/grpc/Deadline;
    .locals 0

    iget-object p0, p0, Lio/grpc/Context$CancellableContext;->m:Lio/grpc/Deadline;

    return-object p0
.end method

.method public final h0(Lio/grpc/Deadline;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    invoke-virtual {p1}, Lio/grpc/Deadline;->isExpired()Z

    move-result v0

    if-nez v0, :cond_0

    monitor-enter p0

    :try_start_0
    new-instance v0, Lio/grpc/Context$CancellableContext$a;

    invoke-direct {v0, p0}, Lio/grpc/Context$CancellableContext$a;-><init>(Lio/grpc/Context$CancellableContext;)V

    invoke-virtual {p1, v0, p2}, Lio/grpc/Deadline;->runOnExpiration(Ljava/lang/Runnable;Ljava/util/concurrent/ScheduledExecutorService;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lio/grpc/Context$CancellableContext;->q:Ljava/util/concurrent/ScheduledFuture;

    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_0
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    const-string p2, "context timed out"

    invoke-direct {p1, p2}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    :goto_0
    return-void
.end method

.method public isCancelled()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lio/grpc/Context$CancellableContext;->o:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    monitor-exit p0

    return v1

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lio/grpc/Context;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Lio/grpc/Context;->cancellationCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lio/grpc/Context$CancellableContext;->cancel(Ljava/lang/Throwable;)Z

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isCurrent()Z
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lio/grpc/Context$CancellableContext;->n:Lio/grpc/Context;

    invoke-virtual {p0}, Lio/grpc/Context;->isCurrent()Z

    move-result p0

    return p0
.end method
