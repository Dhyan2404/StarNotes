.class public final Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/internal/schedulers/SchedulerMultiWorkerSupport;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final e:I

.field public final f:[Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$c;

.field public g:J


# direct methods
.method public constructor <init>(ILjava/util/concurrent/ThreadFactory;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "maxThreads",
            "threadFactory"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;->e:I

    new-array v0, p1, [Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$c;

    iput-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;->f:[Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$c;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;->f:[Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$c;

    new-instance v2, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$c;

    invoke-direct {v2, p2}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$c;
    .locals 6

    iget v0, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;->e:I

    if-nez v0, :cond_0

    sget-object p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->n:Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$c;

    return-object p0

    :cond_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;->f:[Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$c;

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;->g:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;->g:J

    int-to-long v4, v0

    rem-long/2addr v2, v4

    long-to-int p0, v2

    aget-object p0, v1, p0

    return-object p0
.end method

.method public b()V
    .locals 3

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;->f:[Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$c;

    array-length v0, p0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p0, v1

    invoke-virtual {v2}, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->dispose()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createWorkers(ILio/reactivex/rxjava3/internal/schedulers/SchedulerMultiWorkerSupport$WorkerCallback;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "number",
            "callback"
        }
    .end annotation

    iget v0, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;->e:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    if-ge v1, p1, :cond_3

    sget-object p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->n:Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$c;

    invoke-interface {p2, v1, p0}, Lio/reactivex/rxjava3/internal/schedulers/SchedulerMultiWorkerSupport$WorkerCallback;->onWorker(ILio/reactivex/rxjava3/core/Scheduler$Worker;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;->g:J

    long-to-int v2, v2

    rem-int/2addr v2, v0

    move v3, v1

    :goto_1
    if-ge v3, p1, :cond_2

    new-instance v4, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$a;

    iget-object v5, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;->f:[Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$c;

    aget-object v5, v5, v2

    invoke-direct {v4, v5}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$a;-><init>(Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$c;)V

    invoke-interface {p2, v3, v4}, Lio/reactivex/rxjava3/internal/schedulers/SchedulerMultiWorkerSupport$WorkerCallback;->onWorker(ILio/reactivex/rxjava3/core/Scheduler$Worker;)V

    add-int/lit8 v2, v2, 0x1

    if-ne v2, v0, :cond_1

    move v2, v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    int-to-long p1, v2

    iput-wide p1, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;->g:J

    :cond_3
    return-void
.end method
