.class public final Lcom/onyx/galaxy/note/editor/action/counter/QueryLastCountUpRecordAction;
.super Lcom/onyx/galaxy/note/editor/action/counter/RxCounterBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/editor/action/counter/RxCounterBaseAction<",
        "Lcom/onyx/galaxy/note/editor/action/counter/QueryLastCountUpRecordAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R$\u0010\u000b\u001a\u0004\u0018\u00010\u00048\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0005\u0010\u0006\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/counter/QueryLastCountUpRecordAction;",
        "Lcom/onyx/galaxy/note/editor/action/counter/RxCounterBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;",
        "e",
        "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;",
        "getRecord",
        "()Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;",
        "setRecord",
        "(Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;)V",
        "record",
        "<init>",
        "()V",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public e:Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/action/counter/RxCounterBaseAction;-><init>()V

    return-void
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/editor/action/counter/QueryLastCountUpRecordAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/counter/RxCounterBaseAction;->getObserveOn()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/counter/QueryLastCountUpRecordAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/counter/QueryLastCountUpRecordAction$a;-><init>(Lcom/onyx/galaxy/note/editor/action/counter/QueryLastCountUpRecordAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getRecord()Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/counter/QueryLastCountUpRecordAction;->e:Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    return-object p0
.end method

.method public final setRecord(Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/counter/QueryLastCountUpRecordAction;->e:Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;

    return-void
.end method
