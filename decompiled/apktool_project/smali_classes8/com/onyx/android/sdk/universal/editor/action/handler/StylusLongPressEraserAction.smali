.class public final Lcom/onyx/android/sdk/universal/editor/action/handler/StylusLongPressEraserAction;
.super Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0017\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000e\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0014J\u000e\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0003H\u0002J\u0016\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u00032\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\u0010\u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u0006H\u0002R\u0017\u0010\u0007\u001a\u00020\u00068\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\r\u0010\u000e\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/action/handler/StylusLongPressEraserAction;",
        "Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;",
        "",
        "Lio/reactivex/rxjava3/core/Observable;",
        "create",
        "n",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "touchData",
        "m",
        "",
        "l",
        "h",
        "Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "getTouchData",
        "()Lcom/onyx/android/sdk/geometry/data/TouchData;",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/TouchData;)V",
        "sdk-universal_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final h:Lcom/onyx/android/sdk/geometry/data/TouchData;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/onyx/android/sdk/geometry/data/TouchData;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "touchData"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    iput-object p2, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/StylusLongPressEraserAction;->h:Lcom/onyx/android/sdk/geometry/data/TouchData;

    return-void
.end method

.method public static final synthetic access$activeEraseHandler(Lcom/onyx/android/sdk/universal/editor/action/handler/StylusLongPressEraserAction;Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/StylusLongPressEraserAction;->l(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    return-void
.end method

.method public static final synthetic access$startEraseHandler(Lcom/onyx/android/sdk/universal/editor/action/handler/StylusLongPressEraserAction;)Lio/reactivex/rxjava3/core/Observable;
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/StylusLongPressEraserAction;->n()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public create()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {p0}, Lio/reactivex/rxjava3/core/Observable;->just(Ljava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/StylusLongPressEraserAction$a;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/StylusLongPressEraserAction$a;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/StylusLongPressEraserAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "flatMap(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final getTouchData()Lcom/onyx/android/sdk/geometry/data/TouchData;
    .locals 0
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/StylusLongPressEraserAction;->h:Lcom/onyx/android/sdk/geometry/data/TouchData;

    return-object p0
.end method

.method public final l(Lcom/onyx/android/sdk/geometry/data/TouchData;)V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->shapeHandlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->isEraserHandler()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->shapeHandlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->isShapeDrawingHandler()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->Companion:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args$Companion;->restoreUserProviderDrawingArgs()Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;

    move-result-object v0

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->Companion:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args$Companion;->shapeDrawingArgs()Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;

    move-result-object v0

    :goto_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->shapeHandlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;

    move-result-object p0

    const-string v1, "erase_provider"

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->activeShapeProvider(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/ShapeHandlerManager;->getActiveHandler()Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;

    move-result-object p0

    if-eqz p0, :cond_2

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/StartErasingArgs;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->getQuitEvent()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Lcom/onyx/android/sdk/universal/editor/events/note/StartErasingArgs;-><init>(Lcom/onyx/android/sdk/geometry/data/TouchData;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->startErasing(Lcom/onyx/android/sdk/universal/editor/events/note/StartErasingArgs;)V

    :cond_2
    return-void
.end method

.method public final m(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lio/reactivex/rxjava3/core/Observable;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/geometry/data/TouchData;",
            ")",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/onyx/android/sdk/base/data/TouchPointList;

    invoke-direct {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;-><init>()V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/geometry/data/TouchData;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/base/data/TouchPointList;->add(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getPoints()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->first(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/onyx/android/sdk/base/data/TouchPoint;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v2

    invoke-static {v2}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->uiDrawingArgs(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;

    move-result-object v2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/base/data/TouchPointList;->getBoundingRect()Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getEraserWidth()F

    move-result v3

    invoke-virtual {v2}, Lcom/onyx/android/sdk/note/common/data/NoteDrawingArgs;->getEraserWidth()F

    move-result v2

    invoke-static {v0, v3, v2}, Lcom/onyx/android/sdk/base/extension/RectKt;->expand(Landroid/graphics/RectF;FF)Landroid/graphics/RectF;

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/universal/editor/action/extension/CommonEditorActionsKt;->hitTestVisibleBoxObservable(Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;Lcom/onyx/android/sdk/base/data/TouchPoint;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/onyx/android/sdk/universal/editor/action/handler/StylusLongPressEraserAction$b;

    invoke-direct {v2, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/StylusLongPressEraserAction$b;-><init>(Lcom/onyx/android/sdk/geometry/data/TouchData;)V

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/StylusLongPressEraserAction$c;

    invoke-direct {v1, p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/StylusLongPressEraserAction$c;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/StylusLongPressEraserAction;Landroid/graphics/RectF;)V

    invoke-virtual {p1, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string p1, "flatMap(...)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public final n()Lio/reactivex/rxjava3/core/Observable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/RxBaseAppAction;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/note/PreparePressureErasingEvent;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/events/note/PreparePressureErasingEvent;-><init>()V

    invoke-static {v0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/action/handler/StylusLongPressEraserAction;->h:Lcom/onyx/android/sdk/geometry/data/TouchData;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/StylusLongPressEraserAction;->m(Lcom/onyx/android/sdk/geometry/data/TouchData;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/action/handler/StylusLongPressEraserAction$d;

    invoke-direct {v1, p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/StylusLongPressEraserAction$d;-><init>(Lcom/onyx/android/sdk/universal/editor/action/handler/StylusLongPressEraserAction;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    const-string v0, "doOnNext(...)"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
