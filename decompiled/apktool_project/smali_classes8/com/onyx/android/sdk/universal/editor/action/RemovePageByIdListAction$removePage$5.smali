.class final Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$removePage$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;->r(Ljava/lang/String;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/Integer;",
        ">;",
        "Lio/reactivex/rxjava3/core/Observable<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0010\u0008\n\u0000\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u00012\u000c\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "it",
        "",
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
.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$removePage$5;->this$0:Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lio/reactivex/rxjava3/core/Observable<",
            "+",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;->Companion:Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$Companion;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$removePage$5;->this$0:Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0, v1, p1}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$Companion;->removePage(Lcom/onyx/android/sdk/universal/editor/EditorBundle;I)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 3
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$removePage$5$1;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$removePage$5$1;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$removePage$5$2;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$removePage$5;->this$0:Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$removePage$5$2;-><init>(Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction;)V

    invoke-static {p1, v0, v1}, Lcom/onyx/android/sdk/base/extension/RxjavaKt;->flatMapIf(Lio/reactivex/rxjava3/core/Observable;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RemovePageByIdListAction$removePage$5;->invoke(Ljava/util/List;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
