.class public final Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;
.super Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00aa\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010=\u001a\u00020<\u00a2\u0006\u0004\u0008>\u0010?J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\u0008\u0010\t\u001a\u00020\u0008H\u0016J\u0008\u0010\n\u001a\u00020\u0008H\u0016J\u0010\u0010\u000c\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\rH\u0007J\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u000fH\u0007J\u0010\u0010\u0012\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0011H\u0007J\u0010\u0010\u0014\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0013H\u0007J\u0010\u0010\u0016\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0015H\u0007J\u0010\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0017H\u0007J\u0010\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u0019H\u0007J\u0010\u0010\u001c\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u001bH\u0007J\u0010\u0010\u001e\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u001dH\u0007J\u0010\u0010 \u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\u001fH\u0007J\u0010\u0010\"\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020!H\u0007J\u0010\u0010$\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020#H\u0007J\u0010\u0010&\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020%H\u0016J\u0010\u0010(\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020\'H\u0016J\u0010\u0010*\u001a\u00020\u00082\u0006\u0010\u0005\u001a\u00020)H\u0016J\u0012\u0010+\u001a\u00020\u00062\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u0008\u0010,\u001a\u00020\u0008H\u0002J\u0014\u00100\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020/0.0-H\u0002R\u0016\u00104\u001a\u0002018\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00082\u00103R\u0016\u00108\u001a\u0002058\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00086\u00107R\u0016\u0010;\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u00089\u0010:\u00a8\u0006@"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;",
        "Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;",
        "Landroid/view/View;",
        "view",
        "Landroid/view/MotionEvent;",
        "event",
        "",
        "onTouchEvent",
        "",
        "onActivate",
        "onDeactivate",
        "Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;",
        "onThemeChangedEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;",
        "onUniversalShapeEditEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/EnablePressureEraserEvent;",
        "onEraserEnabledEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/PreparePressureErasingEvent;",
        "onPreparePressureErasingEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;",
        "onQuitTransformEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeAttributesEvent;",
        "onChangeShapeAttributesEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCopyEvent;",
        "onSelectionCopyEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCutEvent;",
        "onSelectionCutEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionToppingEvent;",
        "onSelectionToppingEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionBottomingEvent;",
        "onSelectionBottomingEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionDeleteEvent;",
        "onSelectionDeleteEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCreateShapeLinkEvent;",
        "onSelectionCreateShapeLinkEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/MoveShapesToLayerEvent;",
        "onMoveShapesToLayerEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/UndoEvent;",
        "onUndoEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;",
        "onRedoEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ActivityPausedEvent;",
        "onActivityPausedEvent",
        "isProcessing",
        "b",
        "Lio/reactivex/rxjava3/core/Observable;",
        "",
        "Lcom/onyx/android/sdk/note/common/shape/Shape;",
        "a",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;",
        "d",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;",
        "handlerAction",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;",
        "e",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;",
        "pressureDetectorArgs",
        "f",
        "Z",
        "isEraserEnabled",
        "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
        "editorBundle",
        "<init>",
        "(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V",
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
.field public d:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

.field public e:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 7
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcom/onyx/android/sdk/universal/editor/events/note/RestoreUserProviderEvent;

    invoke-direct {v4}, Lcom/onyx/android/sdk/universal/editor/events/note/RestoreUserProviderEvent;-><init>()V

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v6}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;-><init>(FZLjava/lang/Object;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->f:Z

    return-void
.end method

.method public static final synthetic access$getHandlerAction$p(Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;)Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    return-object p0
.end method

.method public static final synthetic access$onRedoEvent$s-1246632454(Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onRedoEvent(Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;)V

    return-void
.end method

.method public static final synthetic access$onUndoEvent$s-1246632454(Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;Lcom/onyx/android/sdk/universal/editor/events/note/UndoEvent;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onUndoEvent(Lcom/onyx/android/sdk/universal/editor/events/note/UndoEvent;)V

    return-void
.end method


# virtual methods
.method public final a()Lio/reactivex/rxjava3/core/Observable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/reactivex/rxjava3/core/Observable<",
            "Ljava/util/List<",
            "Lcom/onyx/android/sdk/note/common/shape/Shape;",
            ">;>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    if-nez p0, :cond_0

    const-string p0, "handlerAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->quitEditObservable(Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    return-object p0
.end method

.method public final b()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportTouchEdit()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getTouchReader()Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;

    move-result-object p0

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->Companion:Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader$Companion;

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader$Companion;->getDISABLE_EVENT_FILTER()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->setEventFilter(Lkotlin/jvm/functions/Function1;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getTouchReader()Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;

    move-result-object v0

    iget-object v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    if-nez v1, :cond_1

    const-string v1, "handlerAction"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->isEditMode()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportFingerTouchEdit()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;->setEventFilter(Z)V

    return-void
.end method

.method public isProcessing(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    if-nez p0, :cond_0

    const-string p0, "handlerAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->isUndefinedTransformAction()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public onActivate()V
    .locals 4

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onActivate()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getTouchReader()Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->addAndExecuteAction(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getTouchReader()Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;

    move-result-object v2

    iget-object v3, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;

    invoke-direct {v0, v1, v2, v3}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;)V

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->addAndExecuteAction(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/EnablePressureEraserEvent;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/events/note/EnablePressureEraserEvent;-><init>(Z)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public onActivityPausedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ActivityPausedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ActivityPausedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    if-nez p1, :cond_0

    const-string p1, "handlerAction"

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p1, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->isEditMode()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->a()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onChangeShapeAttributesEvent(Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeAttributesEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeAttributesEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/ChangeShapeAttributesEvent;->getShapeAttrPairs()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/CollectionKt;->getFirst(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;->isChanged()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    if-nez p0, :cond_2

    const-string p0, "handlerAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_2
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->updateShapeAttr(Lcom/onyx/android/sdk/note/common/data/shape/ShapeAttributesBean;)V

    return-void
.end method

.method public onDeactivate()V
    .locals 2

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v0

    const-string v1, "render_key_universal"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->removeRenderSilent(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onDeactivate()V

    return-void
.end method

.method public final onEraserEnabledEvent(Lcom/onyx/android/sdk/universal/editor/events/note/EnablePressureEraserEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/EnablePressureEraserEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/EnablePressureEraserEvent;->getEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->f:Z

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/EnablePressureEraserEvent;->getEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->setDetectEraser(Z)V

    return-void
.end method

.method public final onMoveShapesToLayerEvent(Lcom/onyx/android/sdk/universal/editor/events/note/MoveShapesToLayerEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/MoveShapesToLayerEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    if-nez v0, :cond_0

    const-string v0, "handlerAction"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->quitEditObservable(Z)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$a;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$a;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;Lcom/onyx/android/sdk/universal/editor/events/note/MoveShapesToLayerEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onPreparePressureErasingEvent(Lcom/onyx/android/sdk/universal/editor/events/note/PreparePressureErasingEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/PreparePressureErasingEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    if-nez p0, :cond_0

    const-string p0, "handlerAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->cancelEdit()V

    return-void
.end method

.method public final onQuitTransformEvent(Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/QuitTransformEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->a()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public onRedoEvent(Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    if-nez v0, :cond_0

    const-string v0, "handlerAction"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onRedoEvent(Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->a()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$b;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$b;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;Lcom/onyx/android/sdk/universal/editor/events/note/RedoEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSelectionBottomingEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SelectionBottomingEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SelectionBottomingEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->a()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$c;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$c;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSelectionCopyEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCopyEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCopyEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->a()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$d;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$d;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSelectionCreateShapeLinkEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCreateShapeLinkEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCreateShapeLinkEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->a()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$e;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$e;

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->filter(Lio/reactivex/rxjava3/functions/Predicate;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$f;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$f;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$g;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$g;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$h;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$h;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSelectionCutEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCutEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SelectionCutEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->a()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$i;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$i;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$j;->e:Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$j;

    invoke-virtual {p0, p1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSelectionDeleteEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SelectionDeleteEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SelectionDeleteEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->a()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$k;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$k;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSelectionToppingEvent(Lcom/onyx/android/sdk/universal/editor/events/note/SelectionToppingEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/SelectionToppingEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->a()Lio/reactivex/rxjava3/core/Observable;

    move-result-object p1

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$l;

    invoke-direct {v0, p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$l;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Observable;->flatMap(Lio/reactivex/rxjava3/functions/Function;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onThemeChangedEvent(Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    if-nez p0, :cond_0

    const-string p0, "handlerAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->onThemeUpdated()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "event"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->getRulerTransformHandler()Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p2}, Lcom/onyx/android/sdk/universal/editor/gesture/TouchEventTransformer;->processMotionEvent(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    :cond_0
    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    const/4 v1, 0x0

    const-string v2, "handlerAction"

    if-nez v0, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    invoke-virtual {v0, p2}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isDownAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->b()V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->e:Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;

    iget-boolean v1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->f:Z

    if-eqz v1, :cond_2

    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isPenTouchType(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/PressureDetectHandlerAction$Args;->setDetectEraser(Z)V

    goto :goto_2

    :cond_3
    invoke-static {p2}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isUpAction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    if-nez v0, :cond_4

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    move-object v1, v0

    :goto_1
    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->isUndefinedTransformAction()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->a()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    invoke-virtual {v0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    :cond_5
    :goto_2
    invoke-super {p0, p1, p2}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onTouchEvent(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public onUndoEvent(Lcom/onyx/android/sdk/universal/editor/events/note/UndoEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/UndoEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    if-nez v0, :cond_0

    const-string v0, "handlerAction"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->isEditMode()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onUndoEvent(Lcom/onyx/android/sdk/universal/editor/events/note/UndoEvent;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->a()Lio/reactivex/rxjava3/core/Observable;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$m;

    invoke-direct {v1, p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler$m;-><init>(Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;Lcom/onyx/android/sdk/universal/editor/events/note/UndoEvent;)V

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/core/Observable;->doOnNext(Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onUniversalShapeEditEvent(Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/UniversalShapeHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    if-nez p0, :cond_0

    const-string p0, "handlerAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->onShapeEdit(Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;)Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/UniversalShapeEditEvent;->getShowMenu()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;->setShowMenu(Z)Lcom/onyx/android/sdk/universal/editor/action/handler/UniversalShapeEditAction;

    return-void
.end method
