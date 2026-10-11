.class final Lcom/oplus/ocs/base/task/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/oplus/ocs/base/task/m;

.field private b:Lcom/oplus/ocs/base/task/Task;


# direct methods
.method public constructor <init>(Lcom/oplus/ocs/base/task/m;Lcom/oplus/ocs/base/task/Task;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/ocs/base/task/n;->a:Lcom/oplus/ocs/base/task/m;

    iput-object p2, p0, Lcom/oplus/ocs/base/task/n;->b:Lcom/oplus/ocs/base/task/Task;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/oplus/ocs/base/task/n;->a:Lcom/oplus/ocs/base/task/m;

    iget-object v0, v0, Lcom/oplus/ocs/base/task/m;->a:Lcom/oplus/ocs/base/task/SuccessContinuation;

    iget-object v1, p0, Lcom/oplus/ocs/base/task/n;->b:Lcom/oplus/ocs/base/task/Task;

    invoke-virtual {v1}, Lcom/oplus/ocs/base/task/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/oplus/ocs/base/task/SuccessContinuation;->then(Ljava/lang/Object;)Lcom/oplus/ocs/base/task/Task;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oplus/ocs/base/task/n;->a:Lcom/oplus/ocs/base/task/m;

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Continuation returned null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/base/task/m;->onFailure(Ljava/lang/Exception;)V

    return-void

    :cond_0
    sget-object v1, Lcom/oplus/ocs/base/task/TaskExecutors;->CURRENT_THREAD:Ljava/util/concurrent/Executor;

    iget-object v2, p0, Lcom/oplus/ocs/base/task/n;->a:Lcom/oplus/ocs/base/task/m;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/ocs/base/task/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/oplus/ocs/base/task/OnSuccessListener;)Lcom/oplus/ocs/base/task/Task;

    iget-object v2, p0, Lcom/oplus/ocs/base/task/n;->a:Lcom/oplus/ocs/base/task/m;

    invoke-virtual {v0, v1, v2}, Lcom/oplus/ocs/base/task/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/oplus/ocs/base/task/OnFailureListener;)Lcom/oplus/ocs/base/task/Task;

    iget-object p0, p0, Lcom/oplus/ocs/base/task/n;->a:Lcom/oplus/ocs/base/task/m;

    invoke-virtual {v0, v1, p0}, Lcom/oplus/ocs/base/task/Task;->addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/oplus/ocs/base/task/OnCanceledListener;)Lcom/oplus/ocs/base/task/Task;

    return-void

    :catch_0
    move-exception v0

    iget-object p0, p0, Lcom/oplus/ocs/base/task/n;->a:Lcom/oplus/ocs/base/task/m;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/base/task/m;->onFailure(Ljava/lang/Exception;)V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Exception;

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/oplus/ocs/base/task/n;->a:Lcom/oplus/ocs/base/task/m;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/base/task/m;->onFailure(Ljava/lang/Exception;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/oplus/ocs/base/task/n;->a:Lcom/oplus/ocs/base/task/m;

    invoke-virtual {p0, v0}, Lcom/oplus/ocs/base/task/m;->onFailure(Ljava/lang/Exception;)V

    return-void
.end method
