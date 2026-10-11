.class public Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen;
.super Lio/reactivex/rxjava3/core/Scheduler;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/disposables/Disposable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$d;,
        Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$c;,
        Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$a;,
        Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$b;,
        Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$DelayedAction;,
        Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$ImmediateAction;,
        Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$ScheduledAction;
    }
.end annotation


# static fields
.field public static final j:Lio/reactivex/rxjava3/disposables/Disposable;

.field public static final k:Lio/reactivex/rxjava3/disposables/Disposable;


# instance fields
.field public final g:Lio/reactivex/rxjava3/core/Scheduler;

.field public final h:Lio/reactivex/rxjava3/processors/FlowableProcessor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/rxjava3/processors/FlowableProcessor<",
            "Lio/reactivex/rxjava3/core/Flowable<",
            "Lio/reactivex/rxjava3/core/Completable;",
            ">;>;"
        }
    .end annotation
.end field

.field public i:Lio/reactivex/rxjava3/disposables/Disposable;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$d;

    invoke-direct {v0}, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$d;-><init>()V

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen;->j:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-static {}, Lio/reactivex/rxjava3/disposables/Disposable;->disposed()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v0

    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen;->k:Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public constructor <init>(Lio/reactivex/rxjava3/functions/Function;Lio/reactivex/rxjava3/core/Scheduler;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "combine",
            "actualScheduler"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/rxjava3/functions/Function<",
            "Lio/reactivex/rxjava3/core/Flowable<",
            "Lio/reactivex/rxjava3/core/Flowable<",
            "Lio/reactivex/rxjava3/core/Completable;",
            ">;>;",
            "Lio/reactivex/rxjava3/core/Completable;",
            ">;",
            "Lio/reactivex/rxjava3/core/Scheduler;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Lio/reactivex/rxjava3/core/Scheduler;-><init>()V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen;->g:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-static {}, Lio/reactivex/rxjava3/processors/UnicastProcessor;->create()Lio/reactivex/rxjava3/processors/UnicastProcessor;

    move-result-object p2

    invoke-virtual {p2}, Lio/reactivex/rxjava3/processors/FlowableProcessor;->toSerialized()Lio/reactivex/rxjava3/processors/FlowableProcessor;

    move-result-object p2

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen;->h:Lio/reactivex/rxjava3/processors/FlowableProcessor;

    :try_start_0
    invoke-interface {p1, p2}, Lio/reactivex/rxjava3/functions/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/reactivex/rxjava3/core/Completable;

    invoke-virtual {p1}, Lio/reactivex/rxjava3/core/Completable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen;->i:Lio/reactivex/rxjava3/disposables/Disposable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    invoke-static {p0}, Lio/reactivex/rxjava3/internal/util/ExceptionHelper;->wrapOrThrow(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method


# virtual methods
.method public createWorker()Lio/reactivex/rxjava3/core/Scheduler$Worker;
    .locals 4
    .annotation build Lio/reactivex/rxjava3/annotations/NonNull;
    .end annotation

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen;->g:Lio/reactivex/rxjava3/core/Scheduler;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Scheduler;->createWorker()Lio/reactivex/rxjava3/core/Scheduler$Worker;

    move-result-object v0

    invoke-static {}, Lio/reactivex/rxjava3/processors/UnicastProcessor;->create()Lio/reactivex/rxjava3/processors/UnicastProcessor;

    move-result-object v1

    invoke-virtual {v1}, Lio/reactivex/rxjava3/processors/FlowableProcessor;->toSerialized()Lio/reactivex/rxjava3/processors/FlowableProcessor;

    move-result-object v1

    new-instance v2, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$a;

    invoke-direct {v2, v0}, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$a;-><init>(Lio/reactivex/rxjava3/core/Scheduler$Worker;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Flowable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Flowable;

    move-result-object v2

    new-instance v3, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$c;

    invoke-direct {v3, v1, v0}, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen$c;-><init>(Lio/reactivex/rxjava3/processors/FlowableProcessor;Lio/reactivex/rxjava3/core/Scheduler$Worker;)V

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen;->h:Lio/reactivex/rxjava3/processors/FlowableProcessor;

    invoke-interface {p0, v2}, Lorg/reactivestreams/Subscriber;->onNext(Ljava/lang/Object;)V

    return-object v3
.end method

.method public dispose()V
    .locals 0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen;->i:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void
.end method

.method public isDisposed()Z
    .locals 0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/schedulers/SchedulerWhen;->i:Lio/reactivex/rxjava3/disposables/Disposable;

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->isDisposed()Z

    move-result p0

    return p0
.end method
