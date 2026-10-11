.class public final Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final e:Ljava/lang/Runnable;

.field public final f:Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$c;

.field public final g:J


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$c;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "run",
            "worker",
            "execTime"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$a;->e:Ljava/lang/Runnable;

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$a;->f:Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$c;

    iput-wide p3, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$a;->g:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$a;->f:Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$c;

    iget-boolean v0, v0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$c;->h:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$a;->f:Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$c;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Scheduler$Worker;->now(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$a;->g:J

    cmp-long v4, v2, v0

    if-lez v4, :cond_0

    sub-long/2addr v2, v0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    invoke-static {p0}, Lio/reactivex/rxjava3/plugins/RxJavaPlugins;->onError(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    :goto_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$a;->f:Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$c;

    iget-boolean v0, v0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$c;->h:Z

    if-nez v0, :cond_1

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/TrampolineScheduler$a;->e:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method
