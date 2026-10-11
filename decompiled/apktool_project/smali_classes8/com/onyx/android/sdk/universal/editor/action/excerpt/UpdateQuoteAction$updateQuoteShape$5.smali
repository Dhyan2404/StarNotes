.class final Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;->q(Lkotlin/Pair;)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;",
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
        "Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;",
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
.field final synthetic $quoteShape:Lcom/onyx/android/sdk/note/common/shape/object/QuoteShape;

.field final synthetic $shapeTransformBean:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

.field final synthetic this$0:Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;Lcom/onyx/android/sdk/note/common/shape/object/QuoteShape;Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$5;->this$0:Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$5;->$quoteShape:Lcom/onyx/android/sdk/note/common/shape/object/QuoteShape;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$5;->$shapeTransformBean:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;)Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;",
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
    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$5;->this$0:Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$5;->$quoteShape:Lcom/onyx/android/sdk/note/common/shape/object/QuoteShape;

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p1, v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/shape/GetReferenceShapeAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/util/List;)V

    .line 3
    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/rx/RxBaseAction;->build()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    .line 4
    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$5$a;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$5;->$shapeTransformBean:Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$5$a;-><init>(Lcom/onyx/android/sdk/note/common/data/shape/ShapeTransformBean;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "doOnNext(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/excerpt/UpdateQuoteAction$updateQuoteShape$5;->invoke(Lcom/onyx/android/sdk/universal/editor/request/page/FindBoxInfoByNotePageIdRequest;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method
