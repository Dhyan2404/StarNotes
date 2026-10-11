.class public final Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;
.super Lio/reactivex/rxjava3/core/Scheduler$Worker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/schedulers/TestScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TestWorker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker$QueueRemove;
    }
.end annotation


# instance fields
.field public volatile e:Z

.field public final synthetic f:Lio/reactivex/rxjava3/schedulers/TestScheduler;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/schedulers/TestScheduler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    iput-object p1, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;->f:Lio/reactivex/rxjava3/schedulers/TestScheduler;

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Scheduler$Worker;-><init>()V

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;->e:Z

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-boolean p0, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;->e:Z

    return p0
.end method

.method public now(Ljava/util/concurrent/TimeUnit;)J
    .locals 0
    .param p1    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "unit"
        }
    .end annotation

    iget-object p0, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;->f:Lio/reactivex/rxjava3/schedulers/TestScheduler;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/schedulers/TestScheduler;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public schedule(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 9
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "run"
        }
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .line 8
    iget-boolean v0, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;->e:Z

    if-eqz v0, :cond_0

    .line 9
    sget-object p0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p0

    .line 10
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;->f:Lio/reactivex/rxjava3/schedulers/TestScheduler;

    iget-boolean v0, v0, Lio/reactivex/rxjava3/schedulers/TestScheduler;->h:Z

    if-eqz v0, :cond_1

    .line 11
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    :cond_1
    move-object v4, p1

    .line 12
    new-instance p1, Lio/reactivex/rxjava3/schedulers/TestScheduler$a;

    const-wide/16 v2, 0x0

    iget-object v0, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;->f:Lio/reactivex/rxjava3/schedulers/TestScheduler;

    iget-wide v5, v0, Lio/reactivex/rxjava3/schedulers/TestScheduler;->i:J

    const-wide/16 v7, 0x1

    add-long/2addr v7, v5

    iput-wide v7, v0, Lio/reactivex/rxjava3/schedulers/TestScheduler;->i:J

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lio/reactivex/rxjava3/schedulers/TestScheduler$a;-><init>(Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;JLjava/lang/Runnable;J)V

    .line 13
    iget-object v0, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;->f:Lio/reactivex/rxjava3/schedulers/TestScheduler;

    iget-object v0, v0, Lio/reactivex/rxjava3/schedulers/TestScheduler;->g:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v0, Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker$QueueRemove;

    invoke-direct {v0, p0, p1}, Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker$QueueRemove;-><init>(Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;Lio/reactivex/rxjava3/schedulers/TestScheduler$a;)V

    return-object v0
.end method

.method public schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 7
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .param p4    # Ljava/util/concurrent/TimeUnit;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "run",
            "delayTime",
            "unit"
        }
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    .line 1
    iget-boolean v0, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;->e:Z

    if-eqz v0, :cond_0

    .line 2
    sget-object p0, Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;->INSTANCE:Lio/reactivex/rxjava3/internal/disposables/EmptyDisposable;

    return-object p0

    .line 3
    :cond_0
    iget-object v0, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;->f:Lio/reactivex/rxjava3/schedulers/TestScheduler;

    iget-boolean v0, v0, Lio/reactivex/rxjava3/schedulers/TestScheduler;->h:Z

    if-eqz v0, :cond_1

    .line 4
    invoke-static {p1}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onSchedule(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object p1

    :cond_1
    move-object v4, p1

    .line 5
    new-instance p1, Lio/reactivex/rxjava3/schedulers/TestScheduler$a;

    iget-object v0, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;->f:Lio/reactivex/rxjava3/schedulers/TestScheduler;

    iget-wide v0, v0, Lio/reactivex/rxjava3/schedulers/TestScheduler;->j:J

    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p2

    add-long v2, v0, p2

    iget-object p2, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;->f:Lio/reactivex/rxjava3/schedulers/TestScheduler;

    iget-wide v5, p2, Lio/reactivex/rxjava3/schedulers/TestScheduler;->i:J

    const-wide/16 p3, 0x1

    add-long/2addr p3, v5

    iput-wide p3, p2, Lio/reactivex/rxjava3/schedulers/TestScheduler;->i:J

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lio/reactivex/rxjava3/schedulers/TestScheduler$a;-><init>(Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;JLjava/lang/Runnable;J)V

    .line 6
    iget-object p2, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;->f:Lio/reactivex/rxjava3/schedulers/TestScheduler;

    iget-object p2, p2, Lio/reactivex/rxjava3/schedulers/TestScheduler;->g:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance p2, Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker$QueueRemove;

    invoke-direct {p2, p0, p1}, Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker$QueueRemove;-><init>(Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;Lio/reactivex/rxjava3/schedulers/TestScheduler$a;)V

    return-object p2
.end method
