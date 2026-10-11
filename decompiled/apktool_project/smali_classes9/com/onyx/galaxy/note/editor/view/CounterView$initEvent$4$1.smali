.class final Lcom/onyx/galaxy/note/editor/view/CounterView$initEvent$4$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/CounterView;->l()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lcom/onyx/android/sdk/ui/CommonDialog;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "<anonymous parameter 0>",
        "Lcom/onyx/android/sdk/ui/CommonDialog;",
        "<anonymous parameter 1>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x9,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/view/CounterView;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/CounterView;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/CounterView$initEvent$4$1;->this$0:Lcom/onyx/galaxy/note/editor/view/CounterView;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/ui/CommonDialog;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/view/CounterView$initEvent$4$1;->invoke(Lcom/onyx/android/sdk/ui/CommonDialog;Ljava/lang/String;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/ui/CommonDialog;Ljava/lang/String;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/ui/CommonDialog;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "<anonymous parameter 0>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "<anonymous parameter 1>"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/onyx/galaxy/note/editor/action/counter/ResetCounterAction;

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/CounterView$initEvent$4$1;->this$0:Lcom/onyx/galaxy/note/editor/view/CounterView;

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/view/CounterView;->access$getCounterEntry$p(Lcom/onyx/galaxy/note/editor/view/CounterView;)Lcom/onyx/galaxy/note/editor/data/CounterEntry;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/onyx/galaxy/note/editor/action/counter/ResetCounterAction;-><init>(Lcom/onyx/galaxy/note/editor/data/CounterEntry;)V

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/onyx/galaxy/note/editor/view/CounterView$initEvent$4$1$a;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/CounterView$initEvent$4$1;->this$0:Lcom/onyx/galaxy/note/editor/view/CounterView;

    invoke-direct {p2, p0}, Lcom/onyx/galaxy/note/editor/view/CounterView$initEvent$4$1$a;-><init>(Lcom/onyx/galaxy/note/editor/view/CounterView;)V

    invoke-virtual {p1, p2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string p0, "doOnNext(...)"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    .line 5
    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
