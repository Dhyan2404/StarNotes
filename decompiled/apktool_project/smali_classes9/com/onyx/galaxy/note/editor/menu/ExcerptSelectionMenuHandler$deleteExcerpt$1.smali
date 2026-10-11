.class final Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;->b(Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
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
.field final synthetic $args:Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;

.field final synthetic this$0:Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1;->this$0:Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1;->$args:Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 8

    .line 2
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1;->this$0:Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    const-string v1, "just(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v1, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1$1;

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1;->$args:Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;

    invoke-direct {v1, v2}, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1$1;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;)V

    new-instance v2, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1$2;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1;->this$0:Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;

    iget-object v4, p0, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1;->$args:Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;

    invoke-direct {v2, v3, v4}, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1$2;-><init>(Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;)V

    invoke-static {v0, v1, v2}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    .line 4
    new-instance v1, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1$a;

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1;->this$0:Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;

    invoke-direct {v1, p0}, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1$a;-><init>(Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v2

    const-string p0, "map(...)"

    .line 5
    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x7

    const/4 v7, 0x0

    .line 6
    invoke-static/range {v2 .. v7}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->subscribeWithDefault$default(Lio/reactivex/rxjava3/core/Observable;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Action;ILjava/lang/Object;)Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
