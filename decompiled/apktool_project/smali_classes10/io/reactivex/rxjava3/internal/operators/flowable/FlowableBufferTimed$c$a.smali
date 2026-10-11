.class public final Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final e:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TU;"
        }
    .end annotation
.end field

.field public final synthetic f:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$c;


# direct methods
.method public constructor <init>(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$c;Ljava/util/Collection;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "buffer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TU;)V"
        }
    .end annotation

    iput-object p1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$c$a;->f:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$c$a;->e:Ljava/util/Collection;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$c$a;->f:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$c;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$c$a;->f:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$c;

    iget-object v1, v1, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$c;->R0:Ljava/util/List;

    iget-object v2, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$c$a;->e:Ljava/util/Collection;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$c$a;->f:Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$c;

    iget-object p0, p0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$c$a;->e:Ljava/util/Collection;

    const/4 v1, 0x0

    iget-object v2, v0, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$c;->Q0:Lio/reactivex/rxjava3/core/Scheduler$Worker;

    invoke-static {v0, p0, v1, v2}, Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$c;->b(Lio/reactivex/rxjava3/internal/operators/flowable/FlowableBufferTimed$c;Ljava/lang/Object;ZLio/reactivex/rxjava3/disposables/Disposable;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
