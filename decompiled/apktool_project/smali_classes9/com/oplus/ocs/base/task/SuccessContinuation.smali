.class public interface abstract Lcom/oplus/ocs/base/task/SuccessContinuation;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<TResult:",
        "Ljava/lang/Object;",
        "TContinuationResult:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract then(Ljava/lang/Object;)Lcom/oplus/ocs/base/task/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTContinuationResult;>;"
        }
    .end annotation
.end method
