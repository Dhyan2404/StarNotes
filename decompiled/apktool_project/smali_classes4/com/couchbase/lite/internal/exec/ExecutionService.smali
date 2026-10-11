.class public interface abstract Lcom/couchbase/lite/internal/exec/ExecutionService;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/exec/ExecutionService$Cancellable;,
        Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;
    }
.end annotation


# virtual methods
.method public abstract cancelDelayedTask(Lcom/couchbase/lite/internal/exec/ExecutionService$Cancellable;)V
    .param p1    # Lcom/couchbase/lite/internal/exec/ExecutionService$Cancellable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public abstract getConcurrentExecutor()Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getDefaultExecutor()Ljava/util/concurrent/Executor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract getSerialExecutor()Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end method

.method public abstract postDelayedOnExecutor(JLjava/util/concurrent/Executor;Ljava/lang/Runnable;)Lcom/couchbase/lite/internal/exec/ExecutionService$Cancellable;
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
.end method
