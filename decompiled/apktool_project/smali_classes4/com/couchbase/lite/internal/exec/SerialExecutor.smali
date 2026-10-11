.class Lcom/couchbase/lite/internal/exec/SerialExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;


# static fields
.field private static final DOMAIN:Lcom/couchbase/lite/LogDomain;


# instance fields
.field private final executor:Ljava/util/concurrent/ThreadPoolExecutor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final pendingTasks:Ljava/util/Deque;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lcom/couchbase/lite/internal/exec/InstrumentedTask;",
            ">;"
        }
    .end annotation
.end field

.field private stopLatch:Ljava/util/concurrent/CountDownLatch;
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    sput-object v0, Lcom/couchbase/lite/internal/exec/SerialExecutor;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/ThreadPoolExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/couchbase/lite/internal/exec/SerialExecutor;->pendingTasks:Ljava/util/Deque;

    const-string v0, "executor"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/couchbase/lite/internal/exec/SerialExecutor;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static synthetic a(Lcom/couchbase/lite/internal/exec/SerialExecutor;)V
    .locals 0

    invoke-direct {p0}, Lcom/couchbase/lite/internal/exec/SerialExecutor;->scheduleNext()V

    return-void
.end method

.method private executeTask(Lcom/couchbase/lite/internal/exec/InstrumentedTask;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/exec/InstrumentedTask;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/SerialExecutor;->pendingTasks:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/exec/InstrumentedTask;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/couchbase/lite/internal/exec/SerialExecutor;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    const-string v2, "Catastrophic executor failure (Serial Executor)!"

    invoke-static {v1, v2, v0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/couchbase/lite/internal/exec/AbstractExecutionService;->throttled()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/exec/SerialExecutor;->dumpState(Lcom/couchbase/lite/internal/exec/InstrumentedTask;)V

    :cond_1
    throw v0
.end method

.method private scheduleNext()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/SerialExecutor;->pendingTasks:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/couchbase/lite/internal/exec/InstrumentedTask;

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/exec/SerialExecutor;->executeTask(Lcom/couchbase/lite/internal/exec/InstrumentedTask;)V

    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/SerialExecutor;->pendingTasks:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/SerialExecutor;->stopLatch:Ljava/util/concurrent/CountDownLatch;

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public dumpState(Lcom/couchbase/lite/internal/exec/InstrumentedTask;)V
    .locals 5
    .param p1    # Lcom/couchbase/lite/internal/exec/InstrumentedTask;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    sget-object v0, Lcom/couchbase/lite/internal/exec/SerialExecutor;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    const-string v1, "==== Serial Executor"

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== Previous task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object p1, p1, Lcom/couchbase/lite/internal/exec/InstrumentedTask;->origin:Ljava/lang/Exception;

    invoke-static {v0, v1, p1}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    monitor-enter p0

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/couchbase/lite/internal/exec/SerialExecutor;->pendingTasks:Ljava/util/Deque;

    invoke-direct {p1, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string p1, "== Queue is empty"

    invoke-static {v0, p1}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== Queued tasks ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/couchbase/lite/internal/exec/InstrumentedTask;

    sget-object v2, Lcom/couchbase/lite/internal/exec/SerialExecutor;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ": "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, v1, Lcom/couchbase/lite/internal/exec/InstrumentedTask;->origin:Ljava/lang/Exception;

    invoke-static {v2, v0, v1}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v4

    goto :goto_0

    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/SerialExecutor;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    instance-of p1, p0, Lcom/couchbase/lite/internal/exec/CBLExecutor;

    if-eqz p1, :cond_3

    check-cast p0, Lcom/couchbase/lite/internal/exec/CBLExecutor;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/exec/CBLExecutor;->dumpState()V

    :cond_3
    invoke-static {}, Lcom/couchbase/lite/internal/exec/AbstractExecutionService;->dumpThreads()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 3
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "task"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/SerialExecutor;->stopLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/SerialExecutor;->pendingTasks:Ljava/util/Deque;

    new-instance v1, Lcom/couchbase/lite/internal/exec/InstrumentedTask;

    new-instance v2, Lcom/couchbase/lite/internal/exec/f;

    invoke-direct {v2, p0}, Lcom/couchbase/lite/internal/exec/f;-><init>(Lcom/couchbase/lite/internal/exec/SerialExecutor;)V

    invoke-direct {v1, p1, v2}, Lcom/couchbase/lite/internal/exec/InstrumentedTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/couchbase/lite/internal/exec/SerialExecutor;->pendingTasks:Ljava/util/Deque;

    invoke-interface {p1}, Ljava/util/Deque;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/exec/SerialExecutor;->executeTask(Lcom/couchbase/lite/internal/exec/InstrumentedTask;)V

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    new-instance p1, Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor$ExecutorClosedException;

    const-string v0, "Executor has been stopped"

    invoke-direct {p1, v0}, Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor$ExecutorClosedException;-><init>(Ljava/lang/String;)V

    throw p1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public getPending()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/SerialExecutor;->pendingTasks:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public stop(JLjava/util/concurrent/TimeUnit;)Z
    .locals 2
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "timeout"

    invoke-static {p1, p2, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNegative(JLjava/lang/String;)J

    const-string v0, "time unit"

    invoke-static {p3, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/SerialExecutor;->stopLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/couchbase/lite/internal/exec/SerialExecutor;->stopLatch:Ljava/util/concurrent/CountDownLatch;

    :cond_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/SerialExecutor;->pendingTasks:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    if-gtz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/SerialExecutor;->stopLatch:Ljava/util/concurrent/CountDownLatch;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p1

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string p0, "CBL serial executor"

    return-object p0
.end method
