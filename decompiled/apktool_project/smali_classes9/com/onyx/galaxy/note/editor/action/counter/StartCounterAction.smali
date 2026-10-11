.class public final Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0017\u0012\u0006\u0010\u0007\u001a\u00020\u0004\u0012\u0006\u0010\u000b\u001a\u00020\u0008\u00a2\u0006\u0004\u0008\u000c\u0010\rJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014R\u0014\u0010\u0007\u001a\u00020\u00048\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\u0006R\u0014\u0010\u000b\u001a\u00020\u00088\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\n\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;",
        "e",
        "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;",
        "counterBundle",
        "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;",
        "f",
        "Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;",
        "taskModel",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;)V",
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
.field public final e:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final f:Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/ui/CounterBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "counterBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "taskModel"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;->e:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;->f:Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    return-void
.end method

.method public static final synthetic access$getCounterBundle$p(Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;)Lcom/onyx/galaxy/note/editor/ui/CounterBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;->e:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    return-object p0
.end method

.method public static final synthetic access$getTaskModel$p(Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;)Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;->f:Lcom/onyx/android/sdk/replicator/counter/model/CounterTaskModel;

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction$a;->e:Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction$a;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction$b;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction$b;-><init>(Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction$c;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction$c;-><init>(Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    sget-object v1, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction$d;->e:Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction$d;

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction$e;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction$e;-><init>(Lcom/onyx/galaxy/note/editor/action/counter/StartCounterAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "map(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
