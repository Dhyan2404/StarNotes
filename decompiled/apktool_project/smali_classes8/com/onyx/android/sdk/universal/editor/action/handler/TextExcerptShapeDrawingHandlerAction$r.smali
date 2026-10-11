.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lio/reactivex/rxjava3/functions/Consumer;


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
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/rxjava3/functions/Consumer;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;

.field public final synthetic f:Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;

.field public final synthetic g:Lcom/onyx/android/sdk/universal/editor/data/TextExcerptEditContext;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;Lcom/onyx/android/sdk/universal/editor/data/TextExcerptEditContext;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$r;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$r;->f:Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;

    iput-object p3, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$r;->g:Lcom/onyx/android/sdk/universal/editor/data/TextExcerptEditContext;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->getSelection()Lcom/onyx/android/sdk/reader/api/ReaderSelection;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$r;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;

    iget-object v2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$r;->f:Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$r;->g:Lcom/onyx/android/sdk/universal/editor/data/TextExcerptEditContext;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;->getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/onyx/android/sdk/universal/editor/action/handler/BaseExcerptShapeHandlerAction;->setDownVirtualBoxInfo(Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;->access$getDownPoint$p(Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;)Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v3

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->getStartPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v4

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/events/note/StartExcerptEditArgs;->getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v4, v6, v2, v5, v6}, Lcom/onyx/android/sdk/geometry/extension/TouchPointKt;->toDownTouchData$default(Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/base/data/TouchPoint;Lcom/onyx/android/sdk/geometry/data/BoxInfo;ILjava/lang/Object;)Lcom/onyx/android/sdk/geometry/data/TouchData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/onyx/android/sdk/base/data/TouchPoint;->set(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    const-string v2, ""

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;->setContentPath(Ljava/lang/String;)V

    invoke-static {v1, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;->access$setCurrentSelection$p(Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/data/TextExcerptEditContext;->setSelection(Lcom/onyx/android/sdk/reader/api/ReaderSelection;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;->getShape()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/BaseExcerptEditContext;->setOriginalExcerptShape(Lcom/onyx/android/sdk/note/common/shape/Shape;)V

    invoke-static {v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;->access$getHighlightViewHandler$p(Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction;)Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/view/TextSelectionHighlightViewHandler;->initPaint()V

    :cond_0
    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextExcerptShapeDrawingHandlerAction$r;->a(Lcom/onyx/android/sdk/universal/editor/action/selection/GetReaderSelectionByShapeAction;)V

    return-void
.end method
