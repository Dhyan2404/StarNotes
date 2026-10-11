.class public final Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout;
.super Lio/reactivex/rxjava3/core/Completable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout$a;,
        Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout$b;
    }
.end annotation


# instance fields
.field public final e:Lio/reactivex/rxjava3/core/CompletableSource;

.field public final f:J

.field public final g:Ljava/util/concurrent/TimeUnit;

.field public final h:Lio/reactivex/rxjava3/core/Scheduler;

.field public final i:Lio/reactivex/rxjava3/core/CompletableSource;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/core/CompletableSource;JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;Lio/reactivex/rxjava3/core/CompletableSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "source",
            "timeout",
            "unit",
            "scheduler",
            "other"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Completable;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout;->e:Lio/reactivex/rxjava3/core/CompletableSource;

    iput-wide p2, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout;->f:J

    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout;->g:Ljava/util/concurrent/TimeUnit;

    iput-object p5, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout;->h:Lio/reactivex/rxjava3/core/Scheduler;

    iput-object p6, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout;->i:Lio/reactivex/rxjava3/core/CompletableSource;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/rxjava3/core/CompletableObserver;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "observer"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/CompletableObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout;->h:Lio/reactivex/rxjava3/core/Scheduler;

    new-instance v3, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout$a;

    invoke-direct {v3, p0, v1, v0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout$a;-><init>(Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/rxjava3/disposables/CompositeDisposable;Lio/reactivex/rxjava3/core/CompletableObserver;)V

    iget-wide v4, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout;->f:J

    iget-object v6, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout;->g:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5, v6}, Lio/reactivex/rxjava3/core/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout;->e:Lio/reactivex/rxjava3/core/CompletableSource;

    new-instance v2, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout$b;

    invoke-direct {v2, v0, v1, p1}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimeout$b;-><init>(Lio/reactivex/rxjava3/disposables/CompositeDisposable;Ljava/util/concurrent/atomic/AtomicBoolean;Lio/reactivex/rxjava3/core/CompletableObserver;)V

    invoke-interface {p0, v2}, Lio/reactivex/rxjava3/core/CompletableSource;->subscribe(Lio/reactivex/rxjava3/core/CompletableObserver;)V

    return-void
.end method
