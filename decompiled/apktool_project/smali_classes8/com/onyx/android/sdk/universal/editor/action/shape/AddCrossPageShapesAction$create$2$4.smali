.class final Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$4;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2;->a(Lcom/onyx/android/sdk/universal/editor/action/shape/UpdateCrossPageShapesAction;)Lio/reactivex/rxjava3/core/ObservableSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/core/Observable<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAddCrossPageShapesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddCrossPageShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$4\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,70:1\n1#2:71\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0002H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "it",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAddCrossPageShapesAction.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AddCrossPageShapesAction.kt\ncom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$4\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,70:1\n1#2:71\n*E\n"
    }
.end annotation


# instance fields
.field final synthetic $changedShapeBean:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$4;->this$0:Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$4;->$changedShapeBean:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
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
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$4;->this$0:Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$4;->$changedShapeBean:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;->getRemoveShapeList()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/onyx/android/sdk/universal/editor/action/shape/DeleteShapesAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;ZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 3
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$4;->this$0:Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;->getPostShapeChangedEvent()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppShapeAction;->setPostShapeChangedEvent(Z)V

    .line 4
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 5
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$4$a;

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$4;->this$0:Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$4;->$changedShapeBean:Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;

    invoke-direct {v0, v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$4$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction;Lcom/onyx/android/sdk/note/common/data/option/ChangedShapeBean;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/shape/AddCrossPageShapesAction$create$2$4;->invoke(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
