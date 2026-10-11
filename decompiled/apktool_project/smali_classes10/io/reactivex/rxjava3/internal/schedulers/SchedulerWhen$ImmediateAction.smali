.class Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$ImmediateAction;
.super Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$ScheduledAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImmediateAction"
.end annotation


# instance fields
.field private final action:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "action"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$ScheduledAction;-><init>()V

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$ImmediateAction;->action:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public callActual(Lio/reactivex/rxjava3/core/Scheduler$Worker;Lio/reactivex/rxjava3/core/CompletableObserver;)Lio/reactivex/rxjava3/disposables/Disposable;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "actualWorker",
            "actionCompletable"
        }
    .end annotation

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$b;

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$ImmediateAction;->action:Ljava/lang/Runnable;

    invoke-direct {v0, p0, p2}, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$b;-><init>(Ljava/lang/Runnable;Lio/reactivex/rxjava3/core/CompletableObserver;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Scheduler$Worker;->schedule(Ljava/lang/Runnable;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p0

    return-object p0
.end method
