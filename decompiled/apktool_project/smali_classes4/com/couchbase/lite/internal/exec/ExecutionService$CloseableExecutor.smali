.class public interface abstract Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Executor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/couchbase/lite/internal/exec/ExecutionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "CloseableExecutor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/couchbase/lite/internal/exec/ExecutionService$CloseableExecutor$ExecutorClosedException;
    }
.end annotation


# virtual methods
.method public abstract getPending()I
.end method

.method public abstract stop(JLjava/util/concurrent/TimeUnit;)Z
    .param p3    # Ljava/util/concurrent/TimeUnit;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method
