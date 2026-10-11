.class final Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction$saveOrRestore$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction;->J(Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;Z)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n\u00a2\u0006\u0002\u0008\u0004"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/onyx/android/sdk/note/NoteBundle;",
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
.field final synthetic $editContext:Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction$saveOrRestore$1;->$editContext:Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/note/NoteBundle;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction$saveOrRestore$1;->invoke(Lcom/onyx/android/sdk/note/NoteBundle;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lcom/onyx/android/sdk/note/NoteBundle;)V
    .locals 6
    .param p1    # Lcom/onyx/android/sdk/note/NoteBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction$saveOrRestore$1;->$editContext:Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->getTransformShapes()Ljava/util/List;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->INSTANCE:Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction$saveOrRestore$1;->$editContext:Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->getTransformShapes()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/note/common/shape/ShapeTypes;->resetTransformMatrix(Ljava/util/List;)V

    .line 4
    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction$saveOrRestore$1;->$editContext:Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->getNotePage()Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v0, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->INSTANCE:Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/RectExcerptShapeDrawingHandlerAction$saveOrRestore$1;->$editContext:Lcom/onyx/android/sdk/universal/editor/data/RectExcerptEditContext;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->getTransformShapes()Ljava/util/List;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Ljava/util/Collection;

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;->addShapeList$default(Lcom/onyx/android/sdk/note/common/document/page/NotePageShape;Lcom/onyx/android/sdk/note/common/document/page/NotePage;Ljava/util/Collection;IILjava/lang/Object;)V

    :cond_0
    return-void
.end method
