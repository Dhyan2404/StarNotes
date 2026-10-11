.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;->startExcerptEdit(Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;)V
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

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/data/TextExcerptEditContext;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/TextExcerptEditContext;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$q;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$q;->f:Lcom/onyx/android/sdk/universal/editor/data/TextExcerptEditContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;)Lio/reactivex/rxjava3/core/ObservableSource;
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;",
            ")",
            "Lio/reactivex/rxjava3/core/ObservableSource<",
            "+",
            "Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "action"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$q;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$q;->f:Lcom/onyx/android/sdk/universal/editor/data/TextExcerptEditContext;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v1

    invoke-static {v0, p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;->access$removeOriginalShape(Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;Lcom/onyx/android/sdk/universal/editor/data/TextExcerptEditContext;Lcom/onyx/android/sdk/note/common/shape/Shape;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$q$a;

    invoke-direct {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$q$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;)V

    invoke-virtual {p0, v0}, Lio/reactivex/rxjava3/core/Observable;->map(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$q;->a(Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;)Lio/reactivex/rxjava3/core/ObservableSource;

    move-result-object p0

    return-object p0
.end method
