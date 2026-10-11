.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDelay$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDelay$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final e:Ljava/lang/Throwable;

.field public final synthetic f:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDelay$a;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDelay$a;Ljava/lang/Throwable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "t"
        }
    .end annotation

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDelay$a$b;->f:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDelay$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDelay$a$b;->e:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDelay$a$b;->f:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDelay$a;

    iget-object v0, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDelay$a;->e:Lorg/reactivestreams/Subscriber;

    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDelay$a$b;->e:Ljava/lang/Throwable;

    invoke-interface {v0, v1}, Lorg/reactivestreams/Subscriber;->onError(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDelay$a$b;->f:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDelay$a;

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDelay$a;->h:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    return-void

    :catchall_0
    move-exception v0

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDelay$a$b;->f:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDelay$a;

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableDelay$a;->h:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    invoke-interface {p0}, Lio/reactivex/rxjava3/disposables/Disposable;->dispose()V

    throw v0
.end method
