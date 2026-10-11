.class public final Lio/reactivex/rxjava3/schedulers/TestScheduler;
.super Lio/reactivex/rxjava3/core/Scheduler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;,
        Lio/reactivex/rxjava3/schedulers/TestScheduler$a;
    }
.end annotation


# instance fields
.field public final g:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lio/reactivex/rxjava3/schedulers/TestScheduler$a;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Z

.field public i:J

.field public volatile j:J


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lio/reactivex/rxjava3/schedulers/TestScheduler;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "delayTime",
            "unit"
        }
    .end annotation

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, p1, p2, p3, v0}, Lio/reactivex/rxjava3/schedulers/TestScheduler;-><init>(JLjava/util/concurrent/TimeUnit;Z)V

    return-void
.end method

.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "delayTime",
            "unit",
            "useOnScheduleHook"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Scheduler;-><init>()V

    .line 7
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler;->g:Ljava/util/Queue;

    .line 8
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    iput-wide p1, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler;->j:J

    .line 9
    iput-boolean p4, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler;->h:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "useOnScheduleHook"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Scheduler;-><init>()V

    .line 3
    new-instance v0, Ljava/util/concurrent/PriorityBlockingQueue;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler;->g:Ljava/util/Queue;

    .line 4
    iput-boolean p1, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler;->h:Z

    return-void
.end method


# virtual methods
.method public advanceTimeBy(JLjava/util/concurrent/TimeUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "delayTime",
            "unit"
        }
    .end annotation

    iget-wide v0, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler;->j:J

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    add-long/2addr v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, p1}, Lio/reactivex/rxjava3/schedulers/TestScheduler;->advanceTimeTo(JLjava/util/concurrent/TimeUnit;)V

    return-void
.end method

.method public advanceTimeTo(JLjava/util/concurrent/TimeUnit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "delayTime",
            "unit"
        }
    .end annotation

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lio/reactivex/rxjava3/schedulers/TestScheduler;->c(J)V

    return-void
.end method

.method public final c(J)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "targetTimeInNanoseconds"
        }
    .end annotation

    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler;->g:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/reactivex/rxjava3/schedulers/TestScheduler$a;

    if-eqz v0, :cond_3

    iget-wide v1, v0, Lio/reactivex/rxjava3/schedulers/TestScheduler$a;->e:J

    cmp-long v3, v1, p1

    if-lez v3, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-nez v3, :cond_2

    iget-wide v1, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler;->j:J

    :cond_2
    iput-wide v1, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler;->j:J

    iget-object v1, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler;->g:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    iget-object v1, v0, Lio/reactivex/rxjava3/schedulers/TestScheduler$a;->g:Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;

    iget-boolean v1, v1, Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;->e:Z

    if-nez v1, :cond_0

    iget-object v0, v0, Lio/reactivex/rxjava3/schedulers/TestScheduler$a;->f:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_3
    :goto_1
    iput-wide p1, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler;->j:J

    return-void
.end method

.method public createWorker()Lio/reactivex/rxjava3/core/Scheduler$Worker;
    .locals 1
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/schedulers/TestScheduler$TestWorker;-><init>(Lio/reactivex/rxjava3/schedulers/TestScheduler;)V

    return-object v0
.end method

.method public now(Ljava/util/concurrent/TimeUnit;)J
    .locals 2
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

    iget-wide v0, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler;->j:J

    sget-object p0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, p0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0

    return-wide p0
.end method

.method public triggerActions()V
    .locals 2

    iget-wide v0, p0, Lio/reactivex/rxjava3/schedulers/TestScheduler;->j:J

    invoke-virtual {p0, v0, v1}, Lio/reactivex/rxjava3/schedulers/TestScheduler;->c(J)V

    return-void
.end method
