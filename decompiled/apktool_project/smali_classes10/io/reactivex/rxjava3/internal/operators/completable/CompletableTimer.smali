.class public final Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimer;
.super Lio/reactivex/rxjava3/core/Completable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimer$TimerDisposable;
    }
.end annotation


# instance fields
.field public final e:J

.field public final f:Ljava/util/concurrent/TimeUnit;

.field public final g:Lio/reactivex/rxjava3/core/Scheduler;


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;Lio/reactivex/rxjava3/core/Scheduler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "delay",
            "unit",
            "scheduler"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Completable;-><init>()V

    iput-wide p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimer;->e:J

    iput-object p3, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimer;->f:Ljava/util/concurrent/TimeUnit;

    iput-object p4, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimer;->g:Lio/reactivex/rxjava3/core/Scheduler;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/rxjava3/core/CompletableObserver;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "observer"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimer$TimerDisposable;

    invoke-direct {v0, p1}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimer$TimerDisposable;-><init>(Lio/reactivex/rxjava3/core/CompletableObserver;)V

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/CompletableObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    iget-object p1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimer;->g:Lio/reactivex/rxjava3/core/Scheduler;

    iget-wide v1, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimer;->e:J

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimer;->f:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2, p0}, Lio/reactivex/rxjava3/core/Scheduler;->scheduleDirect(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/internal/operators/completable/CompletableTimer$TimerDisposable;->setFuture(Lio/reactivex/rxjava3/disposables/Disposable;)V

    return-void
.end method
