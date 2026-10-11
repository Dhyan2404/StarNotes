.class public abstract Lcom/oplus/ocs/base/task/Task;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract addOnCanceledListener(Lcom/oplus/ocs/base/task/OnCanceledListener;)Lcom/oplus/ocs/base/task/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/ocs/base/task/OnCanceledListener;",
            ")",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation
.end method

.method public abstract addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/oplus/ocs/base/task/OnCanceledListener;)Lcom/oplus/ocs/base/task/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/oplus/ocs/base/task/OnCanceledListener;",
            ")",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation
.end method

.method public abstract addOnCompleteListener(Lcom/oplus/ocs/base/task/OnCompleteListener;)Lcom/oplus/ocs/base/task/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/ocs/base/task/OnCompleteListener<",
            "TTResult;>;)",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation
.end method

.method public abstract addOnCompleteListener(Ljava/util/concurrent/Executor;Lcom/oplus/ocs/base/task/OnCompleteListener;)Lcom/oplus/ocs/base/task/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/oplus/ocs/base/task/OnCompleteListener<",
            "TTResult;>;)",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation
.end method

.method public abstract addOnFailureListener(Lcom/oplus/ocs/base/task/OnFailureListener;)Lcom/oplus/ocs/base/task/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/ocs/base/task/OnFailureListener;",
            ")",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation
.end method

.method public abstract addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/oplus/ocs/base/task/OnFailureListener;)Lcom/oplus/ocs/base/task/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/oplus/ocs/base/task/OnFailureListener;",
            ")",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation
.end method

.method public abstract addOnSuccessListener(Lcom/oplus/ocs/base/task/OnSuccessListener;)Lcom/oplus/ocs/base/task/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/ocs/base/task/OnSuccessListener<",
            "-TTResult;>;)",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation
.end method

.method public abstract addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/oplus/ocs/base/task/OnSuccessListener;)Lcom/oplus/ocs/base/task/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/oplus/ocs/base/task/OnSuccessListener<",
            "-TTResult;>;)",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation
.end method

.method public abstract continueWith(Lcom/oplus/ocs/base/task/Continuation;)Lcom/oplus/ocs/base/task/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/base/task/Continuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end method

.method public abstract continueWith(Ljava/util/concurrent/Executor;Lcom/oplus/ocs/base/task/Continuation;)Lcom/oplus/ocs/base/task/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/oplus/ocs/base/task/Continuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end method

.method public abstract continueWithTask(Lcom/oplus/ocs/base/task/Continuation;)Lcom/oplus/ocs/base/task/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/base/task/Continuation<",
            "TTResult;",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTContinuationResult;>;>;)",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end method

.method public abstract continueWithTask(Ljava/util/concurrent/Executor;Lcom/oplus/ocs/base/task/Continuation;)Lcom/oplus/ocs/base/task/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/oplus/ocs/base/task/Continuation<",
            "TTResult;",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTContinuationResult;>;>;)",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end method

.method public abstract getException()Ljava/lang/Exception;
.end method

.method public abstract getResult()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTResult;"
        }
    .end annotation
.end method

.method public abstract getResult(Ljava/lang/Class;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<X:",
            "Ljava/lang/Throwable;",
            ">(",
            "Ljava/lang/Class<",
            "TX;>;)TTResult;^TX;^",
            "Ljava/lang/Throwable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;,
            Ljava/lang/Throwable;
        }
    .end annotation
.end method

.method public abstract isCanceled()Z
.end method

.method public abstract isComplete()Z
.end method

.method public abstract isSuccessful()Z
.end method

.method public abstract onSuccessTask(Lcom/oplus/ocs/base/task/SuccessContinuation;)Lcom/oplus/ocs/base/task/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/base/task/SuccessContinuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end method

.method public abstract onSuccessTask(Ljava/util/concurrent/Executor;Lcom/oplus/ocs/base/task/SuccessContinuation;)Lcom/oplus/ocs/base/task/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TContinuationResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Lcom/oplus/ocs/base/task/SuccessContinuation<",
            "TTResult;TTContinuationResult;>;)",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end method
