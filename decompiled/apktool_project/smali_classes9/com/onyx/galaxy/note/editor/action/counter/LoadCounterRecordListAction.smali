.class public final Lcom/onyx/galaxy/note/editor/action/counter/LoadCounterRecordListAction;
.super Lcom/onyx/galaxy/note/editor/action/counter/RxCounterBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/galaxy/note/editor/action/counter/RxCounterBaseAction<",
        "Ljava/util/List<",
        "+",
        "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0001B\u000f\u0012\u0006\u0010\t\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\n\u0010\u000bJ\u0014\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00030\u00020\u0004H\u0014R\u0014\u0010\t\u001a\u00020\u00068\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/counter/LoadCounterRecordListAction;",
        "Lcom/onyx/galaxy/note/editor/action/counter/RxCounterBaseAction;",
        "",
        "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "",
        "e",
        "Z",
        "isCountUp",
        "<init>",
        "(Z)V",
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
.field public final e:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/action/counter/RxCounterBaseAction;-><init>()V

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/action/counter/LoadCounterRecordListAction;->e:Z

    return-void
.end method

.method public static final synthetic access$isCountUp$p(Lcom/onyx/galaxy/note/editor/action/counter/LoadCounterRecordListAction;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/onyx/galaxy/note/editor/action/counter/LoadCounterRecordListAction;->e:Z

    return p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/replicator/counter/model/CounterRecordModel;",
            ">;>;"
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

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/counter/LoadCounterRecordListAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/counter/LoadCounterRecordListAction$a;-><init>(Lcom/onyx/galaxy/note/editor/action/counter/LoadCounterRecordListAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->getMainUIScheduler()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object p0

    invoke-virtual {v0, p0}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "observeOn(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
