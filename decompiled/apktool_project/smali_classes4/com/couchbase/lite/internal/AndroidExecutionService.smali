.class public final Lcom/couchbase/lite/internal/AndroidExecutionService;
.super Lcom/couchbase/lite/internal/exec/AbstractExecutionService;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/AndroidExecutionService$CancellableTask;
    }
.end annotation


# instance fields
.field private final mainHandler:Landroid/os/Handler;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final mainThreadExecutor:Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/couchbase/lite/internal/exec/CBLExecutor;

    const-string v1, "CBL worker"

    invoke-direct {v0, v1}, Lcom/couchbase/lite/internal/exec/CBLExecutor;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/couchbase/lite/internal/AndroidExecutionService;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadPoolExecutor;)V
    .locals 1
    .param p1    # Ljava/util/concurrent/ThreadPoolExecutor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lcom/couchbase/lite/internal/exec/AbstractExecutionService;-><init>(Ljava/util/concurrent/ThreadPoolExecutor;)V

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/couchbase/lite/internal/AndroidExecutionService;->mainHandler:Landroid/os/Handler;

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/b8e;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/b8e;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/couchbase/lite/internal/AndroidExecutionService;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public static synthetic a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;J)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/couchbase/lite/internal/AndroidExecutionService;->lambda$postDelayedOnExecutor$0(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;J)V

    return-void
.end method

.method private static synthetic lambda$postDelayedOnExecutor$0(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;J)V
    .locals 2

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor$ExecutorClosedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/couchbase/lite/internal/exec/AbstractExecutionService;->throttled()Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Execution rejected after delay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/couchbase/lite/internal/exec/AbstractExecutionService;->dumpThreads()V

    goto :goto_0

    :catch_1
    sget-object p2, Lcom/couchbase/lite/LogDomain;->DATABASE:Lcom/couchbase/lite/LogDomain;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Scheduled on closed executor: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/couchbase/lite/internal/logging/Log;->w(Lcom/couchbase/lite/LogDomain;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public getDefaultExecutor()Ljava/util/concurrent/Executor;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    iget-object p0, p0, Lcom/couchbase/lite/internal/AndroidExecutionService;->mainThreadExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public postDelayedOnExecutor(JLjava/util/concurrent/Executor;Ljava/lang/Runnable;)Lcom/couchbase/lite/internal/exec/ExecutionService$Cancellable;
    .locals 1
    .param p3    # Ljava/util/concurrent/Executor;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/lang/Runnable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    const-string v0, "executor"

    invoke-static {p3, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "task"

    invoke-static {p4, v0}, Lcom/couchbase/lite/internal/utils/Preconditions;->assertNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Lcom/sunia/HTREnginev2/na;

    invoke-direct {v0, p3, p4, p1, p2}, Lcom/sunia/HTREnginev2/na;-><init>(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;J)V

    iget-object p3, p0, Lcom/couchbase/lite/internal/AndroidExecutionService;->mainHandler:Landroid/os/Handler;

    invoke-virtual {p3, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    new-instance p1, Lcom/couchbase/lite/internal/AndroidExecutionService$CancellableTask;

    iget-object p0, p0, Lcom/couchbase/lite/internal/AndroidExecutionService;->mainHandler:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-direct {p1, p0, v0, p2}, Lcom/couchbase/lite/internal/AndroidExecutionService$CancellableTask;-><init>(Landroid/os/Handler;Ljava/lang/Runnable;Lcom/couchbase/lite/internal/AndroidExecutionService$1;)V

    return-object p1
.end method
