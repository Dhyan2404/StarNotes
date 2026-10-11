.class public abstract Lcom/tencent/qcloud/core/task/QCloudTask;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/qcloud/core/task/QCloudTask$OnRequestWeightListener;,
        Lcom/tencent/qcloud/core/task/QCloudTask$AtomTask;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final PRIORITY_HIGH:I = 0x3

.field public static final PRIORITY_LOW:I = 0x1

.field protected static final PRIORITY_NORMAL:I = 0x2

.field public static final STATE_COMPLETE:I = 0x3

.field public static final STATE_EXECUTING:I = 0x2

.field public static final STATE_QUEUEING:I = 0x1

.field public static final WEIGHT_HIGH:I = 0x2

.field public static final WEIGHT_LOW:I = 0x0

.field public static final WEIGHT_NORMAL:I = 0x1


# instance fields
.field private domainSwitch:Z

.field private downloadMaxThreadCount:I

.field private enableTraffic:Z

.field private final identifier:Ljava/lang/String;

.field private mCancellationTokenSource:Lbolts/CancellationTokenSource;

.field private mProgressListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tencent/qcloud/core/common/QCloudProgressListener;",
            ">;"
        }
    .end annotation
.end field

.field private mResultListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tencent/qcloud/core/common/QCloudResultListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private mState:I

.field private mStateListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/tencent/qcloud/core/common/QCloudTaskStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mTask:Lbolts/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/Task<",
            "TT;>;"
        }
    .end annotation
.end field

.field private observerExecutor:Ljava/util/concurrent/Executor;

.field private onRequestWeightListener:Lcom/tencent/qcloud/core/task/QCloudTask$OnRequestWeightListener;

.field private final tag:Ljava/lang/Object;

.field private taskManager:Lcom/tencent/qcloud/core/task/TaskManager;

.field private uploadMaxThreadCount:I

.field private weight:I

.field private workerExecutor:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->weight:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->enableTraffic:Z

    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mResultListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mProgressListeners:Ljava/util/Set;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    iput-object v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mStateListeners:Ljava/util/Set;

    iput-object p1, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->identifier:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->tag:Ljava/lang/Object;

    invoke-static {}, Lcom/tencent/qcloud/core/task/TaskManager;->getInstance()Lcom/tencent/qcloud/core/task/TaskManager;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->taskManager:Lcom/tencent/qcloud/core/task/TaskManager;

    return-void
.end method

.method public static synthetic access$000(Lcom/tencent/qcloud/core/task/QCloudTask;)Ljava/util/concurrent/Executor;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->observerExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/tencent/qcloud/core/task/QCloudTask;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mProgressListeners:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/tencent/qcloud/core/task/QCloudTask;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mStateListeners:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/tencent/qcloud/core/task/QCloudTask;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->identifier:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/tencent/qcloud/core/task/QCloudTask;)I
    .locals 0

    iget p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mState:I

    return p0
.end method

.method private static callTask(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;I)Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Callable<",
            "TTResult;>;",
            "Ljava/util/concurrent/Executor;",
            "Lbolts/CancellationToken;",
            "I)",
            "Lbolts/Task<",
            "TTResult;>;"
        }
    .end annotation

    new-instance v0, Lbolts/TaskCompletionSource;

    invoke-direct {v0}, Lbolts/TaskCompletionSource;-><init>()V

    :try_start_0
    new-instance v1, Lcom/tencent/qcloud/core/task/QCloudTask$AtomTask;

    invoke-direct {v1, v0, p2, p0, p3}, Lcom/tencent/qcloud/core/task/QCloudTask$AtomTask;-><init>(Lbolts/TaskCompletionSource;Lbolts/CancellationToken;Ljava/util/concurrent/Callable;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lbolts/ExecutorException;

    invoke-direct {p1, p0}, Lbolts/ExecutorException;-><init>(Ljava/lang/Exception;)V

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->setError(Ljava/lang/Exception;)V

    :goto_0
    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object p0

    return-object p0
.end method

.method private executeListener(Ljava/lang/Runnable;)V
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->observerExecutor:Ljava/util/concurrent/Executor;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method private declared-synchronized setState(I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final addProgressListener(Lcom/tencent/qcloud/core/common/QCloudProgressListener;)Lcom/tencent/qcloud/core/task/QCloudTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/common/QCloudProgressListener;",
            ")",
            "Lcom/tencent/qcloud/core/task/QCloudTask<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mProgressListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public final addProgressListeners(Ljava/util/List;)Lcom/tencent/qcloud/core/task/QCloudTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/qcloud/core/common/QCloudProgressListener;",
            ">;)",
            "Lcom/tencent/qcloud/core/task/QCloudTask<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mProgressListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method public final addResultListener(Lcom/tencent/qcloud/core/common/QCloudResultListener;)Lcom/tencent/qcloud/core/task/QCloudTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/common/QCloudResultListener<",
            "TT;>;)",
            "Lcom/tencent/qcloud/core/task/QCloudTask<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mResultListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public final addResultListeners(Ljava/util/List;)Lcom/tencent/qcloud/core/task/QCloudTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/qcloud/core/common/QCloudResultListener<",
            "TT;>;>;)",
            "Lcom/tencent/qcloud/core/task/QCloudTask<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mResultListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method public final addStateListener(Lcom/tencent/qcloud/core/common/QCloudTaskStateListener;)Lcom/tencent/qcloud/core/task/QCloudTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/common/QCloudTaskStateListener;",
            ")",
            "Lcom/tencent/qcloud/core/task/QCloudTask<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mStateListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public final addStateListeners(Ljava/util/List;)Lcom/tencent/qcloud/core/task/QCloudTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/tencent/qcloud/core/common/QCloudTaskStateListener;",
            ">;)",
            "Lcom/tencent/qcloud/core/task/QCloudTask<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mStateListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-object p0
.end method

.method public call()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "[Task] %s complete"

    const-string v1, "QCloudTask"

    const/4 v2, 0x3

    :try_start_0
    const-string v3, "[Task] %s start testExecute"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/task/QCloudTask;->getIdentifier()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v1, v3, v4}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v3, 0x2

    invoke-virtual {p0, v3}, Lcom/tencent/qcloud/core/task/QCloudTask;->onStateChanged(I)V

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/task/QCloudTask;->execute()Ljava/lang/Object;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/task/QCloudTask;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/tencent/qcloud/core/task/QCloudTask;->onStateChanged(I)V

    iget-object v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->taskManager:Lcom/tencent/qcloud/core/task/TaskManager;

    invoke-virtual {v0, p0}, Lcom/tencent/qcloud/core/task/TaskManager;->remove(Lcom/tencent/qcloud/core/task/QCloudTask;)V

    return-object v3

    :catchall_0
    move-exception v3

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/task/QCloudTask;->getIdentifier()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/tencent/qcloud/core/task/QCloudTask;->onStateChanged(I)V

    iget-object v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->taskManager:Lcom/tencent/qcloud/core/task/TaskManager;

    invoke-virtual {v0, p0}, Lcom/tencent/qcloud/core/task/TaskManager;->remove(Lcom/tencent/qcloud/core/task/QCloudTask;)V

    throw v3
.end method

.method public cancel()V
    .locals 3

    const-string v0, "[Call] %s cancel"

    .line 1
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "QCloudTask"

    invoke-static {v2, v0, v1}, Lcom/tencent/qcloud/core/logger/QCloudLogger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mCancellationTokenSource:Lbolts/CancellationTokenSource;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lbolts/CancellationTokenSource;->cancel()V

    :cond_0
    return-void
.end method

.method public cancel(Z)V
    .locals 0

    .line 4
    invoke-virtual {p0}, Lcom/tencent/qcloud/core/task/QCloudTask;->cancel()V

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->taskManager:Lcom/tencent/qcloud/core/task/TaskManager;

    invoke-virtual {p1, p0}, Lcom/tencent/qcloud/core/task/TaskManager;->remove(Lcom/tencent/qcloud/core/task/QCloudTask;)V

    :cond_0
    return-void
.end method

.method public final cast()Lbolts/Task;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mTask:Lbolts/Task;

    return-object p0
.end method

.method public abstract execute()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;,
            Lcom/tencent/qcloud/core/common/QCloudServiceException;
        }
    .end annotation
.end method

.method public final executeNow()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/tencent/qcloud/core/common/QCloudClientException;,
            Lcom/tencent/qcloud/core/common/QCloudServiceException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/task/QCloudTask;->executeNowSilently()V

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/task/QCloudTask;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_2

    instance-of p0, v0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    if-nez p0, :cond_1

    instance-of p0, v0, Lcom/tencent/qcloud/core/common/QCloudServiceException;

    if-eqz p0, :cond_0

    check-cast v0, Lcom/tencent/qcloud/core/common/QCloudServiceException;

    throw v0

    :cond_0
    new-instance p0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    invoke-direct {p0, v0}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    check-cast v0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    throw v0

    :cond_2
    invoke-virtual {p0}, Lcom/tencent/qcloud/core/task/QCloudTask;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final executeNowSilently()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->taskManager:Lcom/tencent/qcloud/core/task/TaskManager;

    invoke-virtual {v0, p0}, Lcom/tencent/qcloud/core/task/TaskManager;->add(Lcom/tencent/qcloud/core/task/QCloudTask;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/tencent/qcloud/core/task/QCloudTask;->onStateChanged(I)V

    invoke-static {p0}, Lbolts/Task;->call(Ljava/util/concurrent/Callable;)Lbolts/Task;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mTask:Lbolts/Task;

    return-void
.end method

.method public final getAllProgressListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/qcloud/core/common/QCloudProgressListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mProgressListeners:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getAllResultListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/qcloud/core/common/QCloudResultListener<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mResultListeners:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public final getAllStateListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/qcloud/core/common/QCloudTaskStateListener;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mStateListeners:Ljava/util/Set;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDownloadMaxThreadCount()I
    .locals 0

    iget p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->downloadMaxThreadCount:I

    return p0
.end method

.method public getException()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mTask:Lbolts/Task;

    invoke-virtual {v0}, Lbolts/Task;->isFaulted()Z

    move-result v0

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mTask:Lbolts/Task;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lbolts/Task;->isCancelled()Z

    move-result p0

    if-eqz p0, :cond_1

    new-instance p0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    const-string v0, "canceled"

    invoke-direct {p0, v0}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final getIdentifier()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->identifier:Ljava/lang/String;

    return-object p0
.end method

.method public getResult()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mTask:Lbolts/Task;

    invoke-virtual {p0}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final declared-synchronized getState()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getTag()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->tag:Ljava/lang/Object;

    return-object p0
.end method

.method public getUploadMaxThreadCount()I
    .locals 0

    iget p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->uploadMaxThreadCount:I

    return p0
.end method

.method public getWeight()I
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->onRequestWeightListener:Lcom/tencent/qcloud/core/task/QCloudTask$OnRequestWeightListener;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/tencent/qcloud/core/task/QCloudTask$OnRequestWeightListener;->onWeight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCanceled()Z
    .locals 0

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mCancellationTokenSource:Lbolts/CancellationTokenSource;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lbolts/CancellationTokenSource;->isCancellationRequested()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final isCompleted()Z
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/task/QCloudTask;->getState()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDomainSwitch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->domainSwitch:Z

    return p0
.end method

.method public isEnableTraffic()Z
    .locals 0

    iget-boolean p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->enableTraffic:Z

    return p0
.end method

.method public final isExecuting()Z
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/task/QCloudTask;->getState()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public final observeOn(Ljava/util/concurrent/Executor;)Lcom/tencent/qcloud/core/task/QCloudTask;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            ")",
            "Lcom/tencent/qcloud/core/task/QCloudTask<",
            "TT;>;"
        }
    .end annotation

    iput-object p1, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->observerExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public onFailure()V
    .locals 5

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/task/QCloudTask;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mResultListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_3

    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mResultListeners:Ljava/util/Set;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qcloud/core/common/QCloudResultListener;

    instance-of v2, v0, Lcom/tencent/qcloud/core/common/QCloudClientException;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lcom/tencent/qcloud/core/common/QCloudClientException;

    invoke-interface {v1, v2, v3}, Lcom/tencent/qcloud/core/common/QCloudResultListener;->onFailure(Lcom/tencent/qcloud/core/common/QCloudClientException;Lcom/tencent/qcloud/core/common/QCloudServiceException;)V

    goto :goto_0

    :cond_0
    instance-of v2, v0, Lcom/tencent/qcloud/core/common/QCloudServiceException;

    if-eqz v2, :cond_1

    move-object v2, v0

    check-cast v2, Lcom/tencent/qcloud/core/common/QCloudServiceException;

    invoke-interface {v1, v3, v2}, Lcom/tencent/qcloud/core/common/QCloudResultListener;->onFailure(Lcom/tencent/qcloud/core/common/QCloudClientException;Lcom/tencent/qcloud/core/common/QCloudServiceException;)V

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/tencent/qcloud/core/common/QCloudClientException;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    if-nez v4, :cond_2

    move-object v4, v0

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    :goto_1
    invoke-direct {v2, v4}, Lcom/tencent/qcloud/core/common/QCloudClientException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v1, v2, v3}, Lcom/tencent/qcloud/core/common/QCloudResultListener;->onFailure(Lcom/tencent/qcloud/core/common/QCloudClientException;Lcom/tencent/qcloud/core/common/QCloudServiceException;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onProgress(JJ)V
    .locals 7

    iget-object v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mProgressListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/tencent/qcloud/core/task/QCloudTask$2;

    move-object v1, v0

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/tencent/qcloud/core/task/QCloudTask$2;-><init>(Lcom/tencent/qcloud/core/task/QCloudTask;JJ)V

    invoke-direct {p0, v0}, Lcom/tencent/qcloud/core/task/QCloudTask;->executeListener(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onStateChanged(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/tencent/qcloud/core/task/QCloudTask;->setState(I)V

    iget-object p1, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mStateListeners:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    if-lez p1, :cond_0

    new-instance p1, Lcom/tencent/qcloud/core/task/QCloudTask$3;

    invoke-direct {p1, p0}, Lcom/tencent/qcloud/core/task/QCloudTask$3;-><init>(Lcom/tencent/qcloud/core/task/QCloudTask;)V

    invoke-direct {p0, p1}, Lcom/tencent/qcloud/core/task/QCloudTask;->executeListener(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 3

    iget-object v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mResultListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mResultListeners:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/qcloud/core/common/QCloudResultListener;

    invoke-virtual {p0}, Lcom/tencent/qcloud/core/task/QCloudTask;->getResult()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/tencent/qcloud/core/common/QCloudResultListener;->onSuccess(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final removeAllListeners()V
    .locals 1

    iget-object v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mResultListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object p0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mProgressListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    return-void
.end method

.method public final removeProgressListener(Lcom/tencent/qcloud/core/common/QCloudProgressListener;)Lcom/tencent/qcloud/core/task/QCloudTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/common/QCloudProgressListener;",
            ")",
            "Lcom/tencent/qcloud/core/task/QCloudTask<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mProgressListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public final removeResultListener(Lcom/tencent/qcloud/core/common/QCloudResultListener;)Lcom/tencent/qcloud/core/task/QCloudTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/common/QCloudResultListener<",
            "TT;>;)",
            "Lcom/tencent/qcloud/core/task/QCloudTask<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mResultListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public final removeStateListener(Lcom/tencent/qcloud/core/common/QCloudTaskStateListener;)Lcom/tencent/qcloud/core/task/QCloudTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/tencent/qcloud/core/common/QCloudTaskStateListener;",
            ")",
            "Lcom/tencent/qcloud/core/task/QCloudTask<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mStateListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public scheduleOn(Ljava/util/concurrent/Executor;Lbolts/CancellationTokenSource;)Lcom/tencent/qcloud/core/task/QCloudTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lbolts/CancellationTokenSource;",
            ")",
            "Lcom/tencent/qcloud/core/task/QCloudTask<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/tencent/qcloud/core/task/QCloudTask;->scheduleOn(Ljava/util/concurrent/Executor;Lbolts/CancellationTokenSource;I)Lcom/tencent/qcloud/core/task/QCloudTask;

    move-result-object p0

    return-object p0
.end method

.method public scheduleOn(Ljava/util/concurrent/Executor;Lbolts/CancellationTokenSource;I)Lcom/tencent/qcloud/core/task/QCloudTask;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Lbolts/CancellationTokenSource;",
            "I)",
            "Lcom/tencent/qcloud/core/task/QCloudTask<",
            "TT;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->taskManager:Lcom/tencent/qcloud/core/task/TaskManager;

    invoke-virtual {v0, p0}, Lcom/tencent/qcloud/core/task/TaskManager;->add(Lcom/tencent/qcloud/core/task/QCloudTask;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lcom/tencent/qcloud/core/task/QCloudTask;->onStateChanged(I)V

    .line 4
    iput-object p1, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->workerExecutor:Ljava/util/concurrent/Executor;

    .line 5
    iput-object p2, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mCancellationTokenSource:Lbolts/CancellationTokenSource;

    if-gtz p3, :cond_0

    const/4 p3, 0x2

    :cond_0
    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {p2}, Lbolts/CancellationTokenSource;->getToken()Lbolts/CancellationToken;

    move-result-object p2

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 7
    :goto_0
    invoke-static {p0, p1, p2, p3}, Lcom/tencent/qcloud/core/task/QCloudTask;->callTask(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;Lbolts/CancellationToken;I)Lbolts/Task;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->mTask:Lbolts/Task;

    .line 8
    new-instance p2, Lcom/tencent/qcloud/core/task/QCloudTask$1;

    invoke-direct {p2, p0}, Lcom/tencent/qcloud/core/task/QCloudTask$1;-><init>(Lcom/tencent/qcloud/core/task/QCloudTask;)V

    invoke-virtual {p1, p2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    return-object p0
.end method

.method public setDomainSwitch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->domainSwitch:Z

    return-void
.end method

.method public setDownloadMaxThreadCount(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->downloadMaxThreadCount:I

    return-void
.end method

.method public setOnRequestWeightListener(Lcom/tencent/qcloud/core/task/QCloudTask$OnRequestWeightListener;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->onRequestWeightListener:Lcom/tencent/qcloud/core/task/QCloudTask$OnRequestWeightListener;

    return-void
.end method

.method public setTransferThreadControl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->enableTraffic:Z

    return-void
.end method

.method public setUploadMaxThreadCount(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/qcloud/core/task/QCloudTask;->uploadMaxThreadCount:I

    return-void
.end method
