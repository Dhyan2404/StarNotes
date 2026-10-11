.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$saveOrRestore$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;->B(Lcom/onyx/android/sdk/universal/editor/data/TextExcerptEditContext;Z)Lio/reactivex/rxjava3/core/Observable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Function;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;

.field public final synthetic f:Lcom/onyx/android/sdk/note/common/shape/Shape;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;Lcom/onyx/android/sdk/note/common/shape/Shape;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$saveOrRestore$1;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$saveOrRestore$1;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/note/common/document/page/NotePage;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/note/common/document/page/NotePage;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "notePage"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$saveOrRestore$1;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$saveOrRestore$1$1;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$saveOrRestore$1;->f:Lcom/onyx/android/sdk/note/common/shape/Shape;

    invoke-direct {v1, p1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$saveOrRestore$1$1;-><init>(Lcom/onyx/android/sdk/note/common/document/page/NotePage;Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocCommonActionsKt;->createNoteObservable(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lkotlin/jvm/functions/Function1;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/note/common/document/page/NotePage;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$saveOrRestore$1;->a(Lcom/onyx/android/sdk/note/common/document/page/NotePage;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
