.class public abstract Lcom/couchbase/lite/internal/exec/AbstractExecutionService;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/couchbase/lite/internal/exec/ExecutionService;


# static fields
.field private static final DUMP_INTERVAL_MS:I = 0x7d0

.field private static final DUMP_LOCK:Ljava/lang/Object;

.field private static lastDump:J


# instance fields
.field private final baseExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final concurrentExecutor:Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/couchbase/lite/internal/exec/AbstractExecutionService;->DUMP_LOCK:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/ThreadPoolExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/couchbase/lite/internal/exec/AbstractExecutionService;->baseExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v0, Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;

    invoke-direct {v0, p1}, Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    iput-object v0, p0, Lcom/couchbase/lite/internal/exec/AbstractExecutionService;->concurrentExecutor:Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;

    return-void
.end method

.method public static dumpThreads()V
    .locals 9

    invoke-static {}, Ljava/lang/Thread;->getAllStackTraces()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    sget-object v2, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "==== Threads: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Thread;

    sget-object v4, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "**"

    goto :goto_0

    :cond_2
    const-string v6, "=="

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/StackTraceElement;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    sget-object v6, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "      at "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static throttled()Z
    .locals 7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/couchbase/lite/internal/exec/AbstractExecutionService;->DUMP_LOCK:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    sget-wide v3, Lcom/couchbase/lite/internal/exec/AbstractExecutionService;->lastDump:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x7d0

    cmp-long v3, v3, v5

    if-gez v3, :cond_0

    monitor-exit v2

    const/4 v0, 0x1

    return v0

    :cond_0
    sput-wide v0, Lcom/couchbase/lite/internal/exec/AbstractExecutionService;->lastDump:J

    monitor-exit v2

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancelDelayedTask(Lcom/couchbase/lite/internal/exec/ExecutionService$Cancellable;)V
    .locals 0
    .param p1    # Lcom/couchbase/lite/internal/exec/ExecutionService$Cancellable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const-string p0, "cancellableTask"

    invoke-static {p1, p0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p1}, Lcom/couchbase/lite/internal/exec/ExecutionService$Cancellable;->cancel()V

    return-void
.end method

.method public dumpState()V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/AbstractExecutionService;->concurrentExecutor:Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;->dumpState(Lcom/couchbase/lite/internal/exec/InstrumentedTask;)V

    return-void
.end method

.method public getConcurrentExecutor()Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/AbstractExecutionService;->concurrentExecutor:Lcom/couchbase/lite/internal/exec/ConcurrentExecutor;

    return-object p0
.end method

.method public getSerialExecutor()Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/couchbase/lite/internal/exec/SerialExecutor;

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/AbstractExecutionService;->baseExecutor:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-direct {v0, p0}, Lcom/couchbase/lite/internal/exec/SerialExecutor;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-object v0
.end method
