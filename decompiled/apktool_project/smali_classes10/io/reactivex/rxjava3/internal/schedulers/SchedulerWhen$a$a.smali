.class public final Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$a$a;
.super Lio/reactivex/rxjava3/core/Completable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final e:Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$ScheduledAction;

.field public final synthetic f:Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$a;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$a;Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$ScheduledAction;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "action"
        }
    .end annotation

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$a$a;->f:Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$a;

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Completable;-><init>()V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$a$a;->e:Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$ScheduledAction;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/rxjava3/core/CompletableObserver;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "actionCompletable"
        }
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$a$a;->e:Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$ScheduledAction;

    invoke-interface {p1, v0}, Lio/reactivex/rxjava3/core/CompletableObserver;->onSubscribe(Lio/reactivex/rxjava3/disposables/Disposable;)V

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$a$a;->e:Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$ScheduledAction;

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$a$a;->f:Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$a;

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$a;->e:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    invoke-virtual {v0, p0, p1}, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$ScheduledAction;->call(Lio/reactivex/rxjava3/core/Scheduler$Worker;Lio/reactivex/rxjava3/core/CompletableObserver;)V

    return-void
.end method
