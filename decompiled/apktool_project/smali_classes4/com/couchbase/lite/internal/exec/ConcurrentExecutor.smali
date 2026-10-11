.class Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;
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

.field private running:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
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

    sput-object v0, Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/ThreadPoolExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "executor"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method private executeTask(Lcom/couchbase/lite/internal/exec/InstrumentedTask;)V
    .locals 3
    .param p1    # Lcom/couchbase/lite/internal/exec/InstrumentedTask;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/GuardedBy;
        value = "this"
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    iget v0, p0, Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;->running:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;->running:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    const-string v2, "Catastrophic executor failure (Concurrent Executor)!"

    invoke-static {v1, v2, v0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/couchbase/lite/internal/exec/AbstractExecutionService;->throttled()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;->dumpState(Lcom/couchbase/lite/internal/exec/InstrumentedTask;)V

    :cond_0
    throw v0
.end method


# virtual methods
.method public dumpState(Lcom/couchbase/lite/internal/exec/InstrumentedTask;)V
    .locals 4
    .param p1    # Lcom/couchbase/lite/internal/exec/InstrumentedTask;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;->running:I

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v1, Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;->DOMAIN:Lcom/couchbase/lite/LogDomain;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "==== Concurrent Executor ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "== Rejected task: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lcom/couchbase/lite/internal/exec/InstrumentedTask;->origin:Ljava/lang/Exception;

    invoke-static {v1, v0, p1}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    instance-of p1, p0, Lcom/couchbase/lite/internal/exec/CBLExecutor;

    if-eqz p1, :cond_1

    check-cast p0, Lcom/couchbase/lite/internal/exec/CBLExecutor;

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/exec/CBLExecutor;->dumpState()V

    :cond_1
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
    .locals 2
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "task"

    invoke-static {p1, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;->stopLatch:Ljava/util/concurrent/CountDownLatch;

    if-nez v0, :cond_0

    new-instance v0, Lcom/couchbase/lite/internal/exec/InstrumentedTask;

    new-instance v1, Lcom/couchbase/lite/internal/exec/e;

    invoke-direct {v1, p0}, Lcom/couchbase/lite/internal/exec/e;-><init>(Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;)V

    invoke-direct {v0, p1, v1}, Lcom/couchbase/lite/internal/exec/InstrumentedTask;-><init>(Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;->executeTask(Lcom/couchbase/lite/internal/exec/InstrumentedTask;)V

    monitor-exit p0

    return-void

    :cond_0
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

.method public finishTask()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;->running:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;->running:I

    if-lez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;->stopLatch:Ljava/util/concurrent/CountDownLatch;

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

.method public getPending()I
    .locals 0

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;->executor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result p0

    return p0
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
    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;->stopLatch:Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;->stopLatch:Ljava/util/concurrent/CountDownLatch;

    :cond_0
    iget v0, p0, Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;->running:I

    if-gtz v0, :cond_1

    monitor-exit p0

    return v1

    :cond_1
    iget-object v0, p0, Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;->stopLatch:Ljava/util/concurrent/CountDownLatch;

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

    const-string p0, "CBL concurrent executor"

    return-object p0
.end method
