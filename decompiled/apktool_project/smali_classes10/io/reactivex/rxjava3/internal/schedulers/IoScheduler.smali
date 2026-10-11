.class public final Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;
.super Lio/reactivex/rxjava3/core/Scheduler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$c;,
        Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$b;,
        Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;
    }
.end annotation


# static fields
.field public static final KEEP_ALIVE_TIME_DEFAULT:J = 0x3cL

.field public static final i:Ljava/lang/String; = "RxCachedThreadScheduler"

.field public static final j:Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

.field public static final k:Ljava/lang/String; = "RxCachedWorkerPoolEvictor"

.field public static final l:Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

.field public static final m:Ljava/lang/String; = "rx3.io-keep-alive-time"

.field public static final n:J

.field public static final o:Ljava/util/concurrent/TimeUnit;

.field public static final p:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$c;

.field public static final q:Ljava/lang/String; = "rx3.io-priority"

.field public static final r:Ljava/lang/String; = "rx3.io-scheduled-release"

.field public static s:Z

.field public static final t:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;


# instance fields
.field public final g:Ljava/util/concurrent/ThreadFactory;

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->o:Ljava/util/concurrent/TimeUnit;

    const-string v0, "rx3.io-keep-alive-time"

    const-wide/16 v1, 0x3c

    invoke-static {v0, v1, v2}, Ljava/lang/Long;->getLong(Ljava/lang/String;J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->n:J

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$c;

    new-instance v1, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    const-string v2, "RxCachedThreadSchedulerShutdown"

    invoke-direct {v1, v2}, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$c;-><init>(Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->p:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$c;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/schedulers/NewThreadWorker;->dispose()V

    const-string v0, "rx3.io-priority"

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

    new-instance v1, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    const-string v2, "RxCachedThreadScheduler"

    invoke-direct {v1, v2, v0}, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->j:Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    new-instance v2, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    const-string v3, "RxCachedWorkerPoolEvictor"

    invoke-direct {v2, v3, v0}, Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->l:Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    const-string v0, "rx3.io-scheduled-release"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->s:Z

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {v0, v2, v3, v4, v1}, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->t:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;->e()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->j:Lio/reactivex/rxjava3/internal/schedulers/RxThreadFactory;

    invoke-direct {p0, v0}, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;-><init>(Ljava/util/concurrent/ThreadFactory;)V

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
    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->g:Ljava/util/concurrent/ThreadFactory;

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->t:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->start()V

    return-void
.end method


# virtual methods
.method public createWorker()Lio/reactivex/rxjava3/core/Scheduler$Worker;
    .locals 1
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$b;

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;

    invoke-direct {v0, p0}, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$b;-><init>(Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;)V

    return-object v0
.end method

.method public shutdown()V
    .locals 1

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->h:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->t:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;

    if-eq p0, v0, :cond_0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;->e()V

    :cond_0
    return-void
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->h:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;->g:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {p0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->size()I

    move-result p0

    return p0
.end method

.method public start()V
    .locals 5

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;

    sget-wide v1, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->n:J

    sget-object v3, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->o:Ljava/util/concurrent/TimeUnit;

    iget-object v4, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->g:Ljava/util/concurrent/ThreadFactory;

    invoke-direct {v0, v1, v2, v3, v4}, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;-><init>(JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ThreadFactory;)V

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->h:Ljava/util/concurrent/atomic/AtomicReference;

    sget-object v1, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler;->t:Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;

    invoke-static {p0, v1, v0}, Lcom/sunia/HTREnginev2/cyi;->a(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/internal/schedulers/IoScheduler$a;->e()V

    :cond_0
    return-void
.end method
