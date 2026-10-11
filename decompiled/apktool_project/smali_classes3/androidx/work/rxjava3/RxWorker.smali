.class public abstract Landroidx/work/rxjava3/RxWorker;
.super Landroidx/work/ListenableWorker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/rxjava3/RxWorker$a;
    }
.end annotation


# static fields
.field public static final f:Ljava/util/concurrent/Executor;


# instance fields
.field public e:Landroidx/work/rxjava3/RxWorker$a;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/work/rxjava3/RxWorker$a<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/work/impl/utils/SynchronousExecutor;

    invoke-direct {v0}, Landroidx/work/impl/utils/SynchronousExecutor;-><init>()V

    sput-object v0, Landroidx/work/rxjava3/RxWorker;->f:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroidx/work/WorkerParameters;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroidx/work/ListenableWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    return-void
.end method


# virtual methods
.method public final a(Landroidx/work/rxjava3/RxWorker$a;Lio/reactivex/rxjava3/core/Single;)Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroidx/work/rxjava3/RxWorker$a<",
            "TT;>;",
            "Lio/reactivex/rxjava3/core/Single<",
            "TT;>;)",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "TT;>;"
        }
    .end annotation

    invoke-virtual {p0}, Landroidx/work/rxjava3/RxWorker;->getBackgroundScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p2, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getTaskExecutor()Landroidx/work/impl/utils/taskexecutor/TaskExecutor;

    move-result-object p0

    invoke-interface {p0}, Landroidx/work/impl/utils/taskexecutor/TaskExecutor;->getSerialTaskExecutor()Landroidx/work/impl/utils/taskexecutor/SerialExecutor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lio/reactivex/rxjava3/schedulers/Schedulers;->from(Ljava/util/concurrent/Executor;ZZ)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {p2, p0}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/core/SingleObserver;)V

    iget-object p0, p1, Landroidx/work/rxjava3/RxWorker$a;->e:Landroidx/work/impl/utils/futures/SettableFuture;

    return-object p0
.end method

.method public abstract createWork()Lio/reactivex/rxjava3/core/Single;
    .annotation build Landroidx/annotation/MainThread;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Single<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation
.end method

.method public getBackgroundScheduler()Lio/reactivex/rxjava3/core/Scheduler;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getBackgroundExecutor()Ljava/util/concurrent/Executor;

    move-result-object p0

    const/4 v0, 0x1

    invoke-static {p0, v0, v0}, Lio/reactivex/rxjava3/schedulers/Schedulers;->from(Ljava/util/concurrent/Executor;ZZ)Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    return-object p0
.end method

.method public getForegroundInfo()Lio/reactivex/rxjava3/core/Single;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Single<",
            "Landroidx/work/ForegroundInfo;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Expedited WorkRequests require a RxWorker to provide an implementation for `getForegroundInfo()`"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Single;->error(Ljava/lang/Throwable;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p0

    return-object p0
.end method

.method public getForegroundInfoAsync()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ForegroundInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/work/rxjava3/RxWorker$a;

    invoke-direct {v0}, Landroidx/work/rxjava3/RxWorker$a;-><init>()V

    invoke-virtual {p0}, Landroidx/work/rxjava3/RxWorker;->getForegroundInfo()Lio/reactivex/rxjava3/core/Single;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/work/rxjava3/RxWorker;->a(Landroidx/work/rxjava3/RxWorker$a;Lio/reactivex/rxjava3/core/Single;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method

.method public onStopped()V
    .locals 1
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    invoke-super {p0}, Landroidx/work/ListenableWorker;->onStopped()V

    iget-object v0, p0, Landroidx/work/rxjava3/RxWorker;->e:Landroidx/work/rxjava3/RxWorker$a;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/work/rxjava3/RxWorker$a;->a()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/work/rxjava3/RxWorker;->e:Landroidx/work/rxjava3/RxWorker$a;

    :cond_0
    return-void
.end method

.method public final setCompletableProgress(Landroidx/work/Data;)Lio/reactivex/rxjava3/core/Completable;
    .locals 0
    .param p1    # Landroidx/work/Data;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/work/ListenableWorker;->setProgressAsync(Landroidx/work/Data;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Completable;->fromFuture(Ljava/util/concurrent/Future;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p0

    return-object p0
.end method

.method public final setForeground(Landroidx/work/ForegroundInfo;)Lio/reactivex/rxjava3/core/Completable;
    .locals 0
    .param p1    # Landroidx/work/ForegroundInfo;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    invoke-virtual {p0, p1}, Landroidx/work/ListenableWorker;->setForegroundAsync(Landroidx/work/ForegroundInfo;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Completable;->fromFuture(Ljava/util/concurrent/Future;)Lio/reactivex/rxjava3/core/Completable;

    move-result-object p0

    return-object p0
.end method

.method public final startWork()Lcom/google/common/util/concurrent/ListenableFuture;
    .locals 2
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/util/concurrent/ListenableFuture<",
            "Landroidx/work/ListenableWorker$Result;",
            ">;"
        }
    .end annotation

    new-instance v0, Landroidx/work/rxjava3/RxWorker$a;

    invoke-direct {v0}, Landroidx/work/rxjava3/RxWorker$a;-><init>()V

    iput-object v0, p0, Landroidx/work/rxjava3/RxWorker;->e:Landroidx/work/rxjava3/RxWorker$a;

    invoke-virtual {p0}, Landroidx/work/rxjava3/RxWorker;->createWork()Lio/reactivex/rxjava3/core/Single;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/work/rxjava3/RxWorker;->a(Landroidx/work/rxjava3/RxWorker$a;Lio/reactivex/rxjava3/core/Single;)Lcom/google/common/util/concurrent/ListenableFuture;

    move-result-object p0

    return-object p0
.end method
