.class public final Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;
.super Lio/reactivex/rxjava3/core/Scheduler;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/internal/schedulers/SchedulerMultiWorkerSupport;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$c;,
        Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$a;,
        Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;
    }
.end annotation


# static fields
.field public static final i:Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;

.field public static final j:Ljava/lang/String; = "RxComputationThreadPool"

.field public static final k:Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

.field public static final l:Ljava/lang/String; = "rx3.computation-threads"

.field public static final m:I

.field public static final n:Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$c;

.field public static final o:Ljava/lang/String; = "rx3.computation-priority"


# instance fields
.field public final g:Ljava/util/concurrent/ThreadFactory;

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    const-string v1, "rx3.computation-threads"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v0, v1}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->c(II)I

    move-result v0

    sput v0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->m:I

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$c;

    new-instance v1, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    const-string v3, "RxComputationShutdown"

    invoke-direct {v1, v3}, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->n:Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->dispose()V

    const-string v0, "rx3.computation-priority"

    const/4 v1, 0x5

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/16 v1, 0xa

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    new-instance v3, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    const-string v4, "RxComputationThreadPool"

    invoke-direct {v3, v4, v0, v1}, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;IZ)V

    sput-object v3, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->k:Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;

    invoke-direct {v0, v2, v3}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->i:Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;->b()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->k:Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    invoke-direct {p0, v0}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ThreadFactory;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "threadFactory"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Scheduler;-><init>()V

    .line 3
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->g:Ljava/util/concurrent/ThreadFactory;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->i:Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->start()V

    return-void
.end method

.method public static c(II)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cpuCount",
            "paramThreads"
        }
    .end annotation

    if-lez p1, :cond_1

    if-le p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    :cond_1
    :goto_0
    return p0
.end method


# virtual methods
.method public createWorker()Lio/reactivex/rxjava3/core/Scheduler$Worker;
    .locals 1
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$a;

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;->a()Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$c;

    move-result-object p0

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$a;-><init>(Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$c;)V

    return-object v0
.end method

.method public createWorkers(ILio/reactivex/rxjava3/internal/schedulers/SchedulerMultiWorkerSupport$WorkerCallback;)V
    .locals 1
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

    const-string v0, "number > 0 required"

    invoke-static {p1, v0}, Lio/reactivex/rxjava3/internal/functions/ObjectHelper;->verifyPositive(ILjava/lang/String;)I

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;

    invoke-virtual {p0, p1, p2}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;->createWorkers(ILio/reactivex/rxjava3/internal/schedulers/SchedulerMultiWorkerSupport$WorkerCallback;)V

    return-void
.end method

.method public scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 0
    .param p1    # Ljava/lang/Runnable;
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
            "delay",
            "unit"
        }
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;->a()Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$c;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 7
    .param p1    # Ljava/lang/Runnable;
        .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "run",
            "initialDelay",
            "period",
            "unit"
        }
    .end annotation

    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;->a()Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$c;

    move-result-object v0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->schedulePeriodicallyDirect(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method

.method public shutdown()V
    .locals 1

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->h:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->i:Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;

    if-eq p0, v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;->b()V

    :cond_0
    return-void
.end method

.method public start()V
    .locals 3

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;

    sget v1, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->m:I

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->g:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1, v2}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;-><init>(ILjava/util/concurrent/ThreadFactory;)V

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->h:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler;->i:Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;

    invoke-static {p0, v1, v0}, Lcom/sunia/HTREnginev2/cyi;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/schedulers/ComputationScheduler$b;->b()V

    :cond_0
    return-void
.end method
