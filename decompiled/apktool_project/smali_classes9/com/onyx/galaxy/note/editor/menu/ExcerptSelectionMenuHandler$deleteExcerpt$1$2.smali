.class final Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1;->invoke()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;",
        "Lio/reactivex/rxjava3/core/Observable<",
        "+",
        "Ljava/lang/Object;",
        ">;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0012\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\n\u0012\u0006\u0008\u0001\u0012\u00020\u00020\u00012\u0006\u0010\u0003\u001a\u00020\u0004H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "it",
        "Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;",
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

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1$2;->this$0:Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1$2;->$args:Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;)Lio/reactivex/rxjava3/core/Observable;
    .locals 3
    .param p1    # Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;",
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
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptByShapeIdAction;

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1$2;->this$0:Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/menu/BaseSelectionMenuHandler;->getEditorBundle$note_overseasRelease()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1$2;->$args:Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;->getHitTestVirtualPage()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v1

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1$2;->$args:Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;->getHitTestShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v2

    invoke-interface {v2}, Lcom/onyx/android/sdk/note/common/shape/ShapeAttributes;->getShapeUniqueId()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1$2;->$args:Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowExcerptPopupArgs;->getHitTestShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p0

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/DeleteExcerptByShapeIdAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/BoxInfo;Ljava/lang/String;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler$deleteExcerpt$1$2;->invoke(Lcom/onyx/galaxy/note/editor/menu/ExcerptSelectionMenuHandler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
