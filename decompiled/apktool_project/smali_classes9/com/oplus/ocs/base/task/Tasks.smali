.class public Lcom/oplus/ocs/base/task/Tasks;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/ocs/base/task/Tasks$a;,
        Lcom/oplus/ocs/base/task/Tasks$c;,
        Lcom/oplus/ocs/base/task/Tasks$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lcom/oplus/ocs/base/task/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/oplus/ocs/base/task/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/oplus/ocs/base/task/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/oplus/ocs/base/task/Task;->isCanceled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance p0, Ljava/util/concurrent/CancellationException;

    const-string v0, "Task is already canceled"

    invoke-direct {p0, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_1
    new-instance v0, Ljava/util/concurrent/ExecutionException;

    invoke-virtual {p0}, Lcom/oplus/ocs/base/task/Task;->getException()Ljava/lang/Exception;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/util/concurrent/ExecutionException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method private static a(Lcom/oplus/ocs/base/task/Task;Lcom/oplus/ocs/base/task/Tasks$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTResult;>;",
            "Lcom/oplus/ocs/base/task/Tasks$c;",
            ")V"
        }
    .end annotation

    .line 6
    sget-object v0, Lcom/oplus/ocs/base/task/TaskExecutors;->CURRENT_THREAD:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Lcom/oplus/ocs/base/task/Task;->addOnSuccessListener(Ljava/util/concurrent/Executor;Lcom/oplus/ocs/base/task/OnSuccessListener;)Lcom/oplus/ocs/base/task/Task;

    .line 7
    invoke-virtual {p0, v0, p1}, Lcom/oplus/ocs/base/task/Task;->addOnFailureListener(Ljava/util/concurrent/Executor;Lcom/oplus/ocs/base/task/OnFailureListener;)Lcom/oplus/ocs/base/task/Task;

    .line 8
    invoke-virtual {p0, v0, p1}, Lcom/oplus/ocs/base/task/Task;->addOnCanceledListener(Ljava/util/concurrent/Executor;Lcom/oplus/ocs/base/task/OnCanceledListener;)Lcom/oplus/ocs/base/task/Task;

    return-void
.end method

.method public static await(Lcom/oplus/ocs/base/task/Task;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTResult;>;)TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "Must not be called on the main application thread"

    .line 1
    invoke-static {v0}, Lcom/oplus/ocs/base/utils/d;->b(Ljava/lang/String;)V

    const-string v0, "Task must not be null"

    .line 2
    invoke-static {p0, v0}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lcom/oplus/ocs/base/task/Task;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0}, Lcom/oplus/ocs/base/task/Tasks;->a(Lcom/oplus/ocs/base/task/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/oplus/ocs/base/task/Tasks$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/ocs/base/task/Tasks$b;-><init>(B)V

    .line 6
    invoke-static {p0, v0}, Lcom/oplus/ocs/base/task/Tasks;->a(Lcom/oplus/ocs/base/task/Task;Lcom/oplus/ocs/base/task/Tasks$c;)V

    .line 7
    iget-object v0, v0, Lcom/oplus/ocs/base/task/Tasks$b;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V

    .line 8
    invoke-static {p0}, Lcom/oplus/ocs/base/task/Tasks;->a(Lcom/oplus/ocs/base/task/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static await(Lcom/oplus/ocs/base/task/Task;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTResult;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TTResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/concurrent/ExecutionException;,
            Ljava/lang/InterruptedException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const-string v0, "Must not be called on the main application thread"

    .line 9
    invoke-static {v0}, Lcom/oplus/ocs/base/utils/d;->b(Ljava/lang/String;)V

    const-string v0, "Task must not be null"

    .line 10
    invoke-static {p0, v0}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "TimeUnit must not be null"

    .line 11
    invoke-static {p3, v0}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    invoke-virtual {p0}, Lcom/oplus/ocs/base/task/Task;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 13
    invoke-static {p0}, Lcom/oplus/ocs/base/task/Tasks;->a(Lcom/oplus/ocs/base/task/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 14
    :cond_0
    new-instance v0, Lcom/oplus/ocs/base/task/Tasks$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/ocs/base/task/Tasks$b;-><init>(B)V

    .line 15
    invoke-static {p0, v0}, Lcom/oplus/ocs/base/task/Tasks;->a(Lcom/oplus/ocs/base/task/Task;Lcom/oplus/ocs/base/task/Tasks$c;)V

    .line 16
    iget-object v0, v0, Lcom/oplus/ocs/base/task/Tasks$b;->a:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 17
    invoke-static {p0}, Lcom/oplus/ocs/base/task/Tasks;->a(Lcom/oplus/ocs/base/task/Task;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 18
    :cond_1
    new-instance p0, Ljava/util/concurrent/TimeoutException;

    const-string p1, "Timed out waiting for Task"

    invoke-direct {p0, p1}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static call(Ljava/util/concurrent/Callable;)Lcom/oplus/ocs/base/task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/oplus/ocs/base/task/TaskExecutors;->MAIN_THREAD:Ljava/util/concurrent/Executor;

    invoke-static {v0, p0}, Lcom/oplus/ocs/base/task/Tasks;->call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/oplus/ocs/base/task/Task;

    move-result-object p0

    return-object p0
.end method

.method public static call(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lcom/oplus/ocs/base/task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;)",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    const-string v0, "Executor must not be null"

    .line 3
    invoke-static {p0, v0}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Callback must not be null"

    .line 4
    invoke-static {p1, v0}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    new-instance v0, Lcom/oplus/ocs/base/task/TaskImpl;

    invoke-direct {v0}, Lcom/oplus/ocs/base/task/TaskImpl;-><init>()V

    .line 6
    new-instance v1, Lcom/oplus/ocs/base/task/a;

    invoke-direct {v1, v0, p1}, Lcom/oplus/ocs/base/task/a;-><init>(Lcom/oplus/ocs/base/task/TaskImpl;Ljava/util/concurrent/Callable;)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public static forCanceled()Lcom/oplus/ocs/base/task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/oplus/ocs/base/task/TaskImpl;

    invoke-direct {v0}, Lcom/oplus/ocs/base/task/TaskImpl;-><init>()V

    invoke-virtual {v0}, Lcom/oplus/ocs/base/task/TaskImpl;->tryCancel()Z

    return-object v0
.end method

.method public static forException(Ljava/lang/Exception;)Lcom/oplus/ocs/base/task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Exception;",
            ")",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    invoke-static {p0}, Lcom/oplus/ocs/base/utils/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/oplus/ocs/base/task/TaskImpl;

    invoke-direct {v0}, Lcom/oplus/ocs/base/task/TaskImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/oplus/ocs/base/task/TaskImpl;->setException(Ljava/lang/Exception;)V

    return-object v0
.end method

.method public static forResult(Ljava/lang/Object;)Lcom/oplus/ocs/base/task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(TTResult;)",
            "Lcom/oplus/ocs/base/task/Task<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lcom/oplus/ocs/base/task/TaskImpl;

    invoke-direct {v0}, Lcom/oplus/ocs/base/task/TaskImpl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/oplus/ocs/base/task/TaskImpl;->setResult(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static whenAll(Ljava/util/Collection;)Lcom/oplus/ocs/base/task/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/oplus/ocs/base/task/Task<",
            "*>;>;)",
            "Lcom/oplus/ocs/base/task/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Lcom/oplus/ocs/base/task/Tasks;->forResult(Ljava/lang/Object;)Lcom/oplus/ocs/base/task/Task;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oplus/ocs/base/task/Task;

    if-eqz v1, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "null tasks are not accepted"

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5
    :cond_2
    new-instance v0, Lcom/oplus/ocs/base/task/TaskImpl;

    invoke-direct {v0}, Lcom/oplus/ocs/base/task/TaskImpl;-><init>()V

    .line 6
    new-instance v1, Lcom/oplus/ocs/base/task/Tasks$a;

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcom/oplus/ocs/base/task/Tasks$a;-><init>(ILcom/oplus/ocs/base/task/TaskImpl;)V

    .line 7
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oplus/ocs/base/task/Task;

    .line 8
    invoke-static {v2, v1}, Lcom/oplus/ocs/base/task/Tasks;->a(Lcom/oplus/ocs/base/task/Task;Lcom/oplus/ocs/base/task/Tasks$c;)V

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method public static varargs whenAll([Lcom/oplus/ocs/base/task/Task;)Lcom/oplus/ocs/base/task/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/oplus/ocs/base/task/Task<",
            "*>;)",
            "Lcom/oplus/ocs/base/task/Task<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 9
    array-length v0, p0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    .line 10
    invoke-static {p0}, Lcom/oplus/ocs/base/task/Tasks;->forResult(Ljava/lang/Object;)Lcom/oplus/ocs/base/task/Task;

    move-result-object p0

    return-object p0

    .line 11
    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/ocs/base/task/Tasks;->whenAll(Ljava/util/Collection;)Lcom/oplus/ocs/base/task/Task;

    move-result-object p0

    return-object p0
.end method

.method public static whenAllComplete(Ljava/util/Collection;)Lcom/oplus/ocs/base/task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/oplus/ocs/base/task/Task<",
            "*>;>;)",
            "Lcom/oplus/ocs/base/task/Task<",
            "Ljava/util/List<",
            "Lcom/oplus/ocs/base/task/Task<",
            "*>;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/oplus/ocs/base/task/Tasks;->whenAll(Ljava/util/Collection;)Lcom/oplus/ocs/base/task/Task;

    move-result-object v0

    new-instance v1, Lcom/oplus/ocs/base/task/o;

    invoke-direct {v1, p0}, Lcom/oplus/ocs/base/task/o;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/oplus/ocs/base/task/Task;->continueWithTask(Lcom/oplus/ocs/base/task/Continuation;)Lcom/oplus/ocs/base/task/Task;

    move-result-object p0

    return-object p0
.end method

.method public static varargs whenAllComplete([Lcom/oplus/ocs/base/task/Task;)Lcom/oplus/ocs/base/task/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/oplus/ocs/base/task/Task<",
            "*>;)",
            "Lcom/oplus/ocs/base/task/Task<",
            "Ljava/util/List<",
            "Lcom/oplus/ocs/base/task/Task<",
            "*>;>;>;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/ocs/base/task/Tasks;->whenAllComplete(Ljava/util/Collection;)Lcom/oplus/ocs/base/task/Task;

    move-result-object p0

    return-object p0
.end method

.method public static whenAllSuccess(Ljava/util/Collection;)Lcom/oplus/ocs/base/task/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/oplus/ocs/base/task/Task<",
            "*>;>;)",
            "Lcom/oplus/ocs/base/task/Task<",
            "Ljava/util/List<",
            "TTResult;>;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/oplus/ocs/base/task/Tasks;->whenAll(Ljava/util/Collection;)Lcom/oplus/ocs/base/task/Task;

    move-result-object v0

    new-instance v1, Lcom/oplus/ocs/base/task/p;

    invoke-direct {v1, p0}, Lcom/oplus/ocs/base/task/p;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/oplus/ocs/base/task/Task;->continueWith(Lcom/oplus/ocs/base/task/Continuation;)Lcom/oplus/ocs/base/task/Task;

    move-result-object p0

    return-object p0
.end method

.method public static varargs whenAllSuccess([Lcom/oplus/ocs/base/task/Task;)Lcom/oplus/ocs/base/task/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">([",
            "Lcom/oplus/ocs/base/task/Task<",
            "*>;)",
            "Lcom/oplus/ocs/base/task/Task<",
            "Ljava/util/List<",
            "TTResult;>;>;"
        }
    .end annotation

    .line 2
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/ocs/base/task/Tasks;->whenAllSuccess(Ljava/util/Collection;)Lcom/oplus/ocs/base/task/Task;

    move-result-object p0

    return-object p0
.end method
