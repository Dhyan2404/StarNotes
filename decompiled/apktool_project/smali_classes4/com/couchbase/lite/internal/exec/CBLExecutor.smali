.class public Lcom/couchbase/lite/internal/exec/CBLExecutor;
.super Ljava/util/concurrent/ThreadPoolExecutor;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;
    }
.end annotation


# static fields
.field public static final CPU_COUNT:I

.field public static final POOL_SIZE:I


# instance fields
.field private m2:F
    .annotation build Landroidx/annotation/GuardedBy;
        value = "name"
    .end annotation
.end field

.field private n:J
    .annotation build Landroidx/annotation/GuardedBy;
        value = "name"
    .end annotation
.end field

.field private final name:Ljava/lang/String;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private qSizeMax:I
    .annotation build Landroidx/annotation/GuardedBy;
        value = "name"
    .end annotation
.end field

.field private qSizeMean:F
    .annotation build Landroidx/annotation/GuardedBy;
        value = "name"
    .end annotation
.end field

.field private qSizeVariance:F
    .annotation build Landroidx/annotation/GuardedBy;
        value = "name"
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/couchbase/lite/internal/exec/CBLExecutor;->CPU_COUNT:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x4

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/couchbase/lite/internal/exec/CBLExecutor;->POOL_SIZE:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/couchbase/lite/internal/exec/CBLExecutor;->POOL_SIZE:I

    new-instance v1, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v1}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    invoke-direct {p0, p1, v0, v0, v1}, Lcom/couchbase/lite/internal/exec/CBLExecutor;-><init>(Ljava/lang/String;IILjava/util/concurrent/BlockingQueue;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIJLjava/util/concurrent/BlockingQueue;)V
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p6    # Ljava/util/concurrent/BlockingQueue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIJ",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    .line 3
    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Lcom/couchbase/lite/internal/exec/CBLExecutor$1;

    invoke-direct {v7, p1}, Lcom/couchbase/lite/internal/exec/CBLExecutor$1;-><init>(Ljava/lang/String;)V

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    move-object v6, p6

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    const/4 p2, 0x1

    .line 4
    invoke-virtual {p0, p2}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V

    .line 5
    iput-object p1, p0, Lcom/couchbase/lite/internal/exec/CBLExecutor;->name:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IILjava/util/concurrent/BlockingQueue;)V
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/BlockingQueue;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;)V"
        }
    .end annotation

    const-wide/16 v4, 0x1e

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/couchbase/lite/internal/exec/CBLExecutor;-><init>(Ljava/lang/String;IIJLjava/util/concurrent/BlockingQueue;)V

    return-void
.end method

.method private computeQueueStats()V
    .locals 9

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    iget-object v1, p0, Lcom/couchbase/lite/internal/exec/CBLExecutor;->name:Ljava/lang/String;

    monitor-enter v1

    :try_start_0
    iget v2, p0, Lcom/couchbase/lite/internal/exec/CBLExecutor;->qSizeMax:I

    if-ge v2, v0, :cond_0

    iput v0, p0, Lcom/couchbase/lite/internal/exec/CBLExecutor;->qSizeMax:I

    :cond_0
    iget-wide v2, p0, Lcom/couchbase/lite/internal/exec/CBLExecutor;->n:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/couchbase/lite/internal/exec/CBLExecutor;->n:J

    int-to-float v0, v0

    iget v6, p0, Lcom/couchbase/lite/internal/exec/CBLExecutor;->qSizeMean:F

    sub-float v7, v0, v6

    long-to-float v8, v2

    div-float v8, v7, v8

    add-float/2addr v6, v8

    iput v6, p0, Lcom/couchbase/lite/internal/exec/CBLExecutor;->qSizeMean:F

    iget v8, p0, Lcom/couchbase/lite/internal/exec/CBLExecutor;->m2:F

    sub-float/2addr v0, v6

    mul-float/2addr v7, v0

    add-float/2addr v8, v7

    iput v8, p0, Lcom/couchbase/lite/internal/exec/CBLExecutor;->m2:F

    const-wide/16 v6, 0x2

    cmp-long v0, v2, v6

    if-lez v0, :cond_1

    sub-long/2addr v2, v4

    long-to-float v0, v2

    div-float/2addr v8, v0

    iput v8, p0, Lcom/couchbase/lite/internal/exec/CBLExecutor;->qSizeVariance:F

    :cond_1
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public dumpState()V
    .locals 8

    invoke-virtual {p0}, Lcom/couchbase/lite/internal/exec/CBLExecutor;->getStats()Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;

    move-result-object v0

    sget-object v1, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/couchbase/lite/internal/exec/CBLExecutor;->name:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-boolean v3, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->isShutdown:Z

    if-eqz v3, :cond_0

    const-string v3, "x"

    goto :goto_0

    :cond_0
    iget-boolean v3, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->isTerminated:Z

    if-eqz v3, :cond_1

    const-string v3, "-"

    goto :goto_0

    :cond_1
    iget-boolean v3, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->isTerminating:Z

    if-eqz v3, :cond_2

    const-string v3, "o"

    goto :goto_0

    :cond_2
    const-string v3, "+"

    :goto_0
    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-string v3, "==== CBL Executor \"%s\" (%s)"

    invoke-static {v1, v3, v2}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-wide v2, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->totalTasks:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-wide v5, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->completedTasks:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "== Tasks: %d, %d"

    invoke-static {v1, v3, v2}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v2, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->poolSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->corePoolSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->largestPoolSize:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->maxPoolSize:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    filled-new-array {v2, v3, v5, v6}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "== Pool: %d, %d, %d, %d"

    invoke-static {v1, v3, v2}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    iget v2, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->qCurSize:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->qMaxSize:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v5, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->qMeanSize:F

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    iget-wide v6, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;->qSizeSD:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    filled-new-array {v2, v3, v5, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "== Queue: %d, %d, %.2f, %.4f"

    invoke-static {v1, v2, v0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;[Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    sget-object v1, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    instance-of v2, v0, Lcom/couchbase/lite/internal/exec/InstrumentedTask;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    move-object v2, v0

    check-cast v2, Lcom/couchbase/lite/internal/exec/InstrumentedTask;

    iget-object v2, v2, Lcom/couchbase/lite/internal/exec/InstrumentedTask;->origin:Ljava/lang/Exception;

    :goto_2
    add-int/lit8 v3, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v4, "@%d: %s"

    invoke-static {v1, v4, v2, v0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;[Ljava/lang/Object;)V

    move v4, v3

    goto :goto_1

    :cond_4
    return-void
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 0
    .param p1    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    :try_start_0
    invoke-super {p0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0}, Lcom/couchbase/lite/internal/exec/CBLExecutor;->computeQueueStats()V

    return-void

    :catchall_0
    move-exception p1

    invoke-direct {p0}, Lcom/couchbase/lite/internal/exec/CBLExecutor;->computeQueueStats()V

    throw p1
.end method

.method public getStats()Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;
    .locals 19
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor;->name:Ljava/lang/String;

    monitor-enter v1

    :try_start_0
    iget v15, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor;->qSizeMax:I

    iget v14, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor;->qSizeMean:F

    iget v2, v0, Lcom/couchbase/lite/internal/exec/CBLExecutor;->qSizeVariance:F

    float-to-double v12, v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;

    move-object v2, v1

    invoke-interface/range {p0 .. p0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v3

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ThreadPoolExecutor;->isTerminating()Z

    move-result v4

    invoke-interface/range {p0 .. p0}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getTaskCount()J

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCompletedTaskCount()J

    move-result-wide v8

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getPoolSize()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getCorePoolSize()I

    move-result v11

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getLargestPoolSize()I

    move-result v16

    move-wide/from16 v17, v12

    move/from16 v12, v16

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getMaximumPoolSize()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    move/from16 v16, v14

    move v14, v0

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v17

    invoke-direct/range {v2 .. v18}, Lcom/couchbase/lite/internal/exec/CBLExecutor$Stats;-><init>(ZZZJJIIIIIIFD)V

    return-object v1

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CBLExecutor{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/couchbase/lite/internal/exec/CBLExecutor;->name:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
