.class public final Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;
.super Lcom/onyx/android/sdk/base/rx/RxBaseAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction<",
        "Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u000f\u0012\u0006\u0010\r\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000e\u0010\u000fJ\u000e\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0014J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002J\u001c\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u00022\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u0005H\u0002J\u000e\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00000\u0002H\u0002R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;",
        "Lcom/onyx/android/sdk/base/rx/RxBaseAction;",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "l",
        "",
        "Lcom/onyx/galaxy/note/editor/data/CounterEntry;",
        "list",
        "n",
        "m",
        "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;",
        "e",
        "Lcom/onyx/galaxy/note/editor/ui/CounterBundle;",
        "counterBundle",
        "<init>",
        "(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;)V",
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


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/ui/CounterBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/ui/CounterBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "counterBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;->e:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    return-void
.end method

.method public static final synthetic access$check(Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;->l()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCounterBundle$p(Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;)Lcom/onyx/galaxy/note/editor/ui/CounterBundle;
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;->e:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction$a;-><init>(Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final l()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;->e:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/CounterBundle;->hasCounterRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;->e:Lcom/onyx/galaxy/note/editor/ui/CounterBundle;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/ui/CounterBundle;->getRunningCounterList()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;->n(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;->m()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public final m()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "just(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/onyx/galaxy/note/editor/data/CounterEntry;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;",
            ">;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "just(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    :cond_0
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {p1}, Lio/reactivex/rxjava3/core/Observable;->fromIterable(Ljava/lang/Iterable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction$b;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction$b;-><init>(Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    const-string v0, "doOnNext(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->takeLastOne(Lio/reactivex/rxjava3/core/Observable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction$c;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction$c;-><init>(Lcom/onyx/galaxy/note/editor/action/counter/RecoverCounterStateAction;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "map(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
