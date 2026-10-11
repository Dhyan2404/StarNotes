.class public Lcom/oplus/ocs/base/task/TaskCompletionSource;
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


# instance fields
.field private a:Lcom/oplus/ocs/base/task/TaskImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oplus/ocs/base/task/TaskImpl<",
            "TTResult;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/ocs/base/task/TaskImpl;

    invoke-direct {v0}, Lcom/oplus/ocs/base/task/TaskImpl;-><init>()V

    iput-object v0, p0, Lcom/oplus/ocs/base/task/TaskCompletionSource;->a:Lcom/oplus/ocs/base/task/TaskImpl;

    return-void
.end method


# virtual methods
.method public getTask()Lcom/oplus/ocs/base/task/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/ocs/base/task/TaskCompletionSource;->a:Lcom/oplus/ocs/base/task/TaskImpl;

    return-object p0
.end method

.method public setException(Ljava/lang/Exception;)V
    .locals 0

    invoke-static {p1}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/ocs/base/task/TaskCompletionSource;->a:Lcom/oplus/ocs/base/task/TaskImpl;

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/base/task/TaskImpl;->setException(Ljava/lang/Exception;)V

    return-void
.end method

.method public setResult(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/ocs/base/task/TaskCompletionSource;->a:Lcom/oplus/ocs/base/task/TaskImpl;

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/base/task/TaskImpl;->setResult(Ljava/lang/Object;)V

    return-void
.end method

.method public trySetException(Ljava/lang/Exception;)Z
    .locals 0

    invoke-static {p1}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/oplus/ocs/base/task/TaskCompletionSource;->a:Lcom/oplus/ocs/base/task/TaskImpl;

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/base/task/TaskImpl;->trySetException(Ljava/lang/Exception;)Z

    move-result p0

    return p0
.end method

.method public trySetResult(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTResult;)Z"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/ocs/base/task/TaskCompletionSource;->a:Lcom/oplus/ocs/base/task/TaskImpl;

    invoke-virtual {p0, p1}, Lcom/oplus/ocs/base/task/TaskImpl;->trySetResult(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
