.class public final Lcom/onyx/android/sdk/universal/editor/handler/shape/TextSelectionHandler;
.super Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u001a\u001a\u00020\u0019\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016J\u0012\u0010\u0007\u001a\u00020\u00022\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0007J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u000bH\u0007J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\rH\u0007J\u0010\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0012\u0010\u0014\u001a\u00020\u00132\u0008\u0010\t\u001a\u0004\u0018\u00010\u0012H\u0016R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/handler/shape/TextSelectionHandler;",
        "Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;",
        "",
        "onActivate",
        "onDeactivate",
        "Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;",
        "args",
        "startTextSelection",
        "Lcom/onyx/android/sdk/universal/editor/events/note/HideTextSelectionMenuIfQuitEvent;",
        "event",
        "onHideTextSelectionMenuIfQuitEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/note/QuitTextSelectionEvent;",
        "onQuitTextSelectionEvent",
        "Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;",
        "onThemeChangedEvent",
        "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;",
        "touchMode",
        "updateTouchMode",
        "Landroid/view/MotionEvent;",
        "",
        "isProcessing",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;",
        "d",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;",
        "handlerAction",
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
.field public d:Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;


# direct methods
.method public constructor <init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/EditorBundle;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "editorBundle"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method


# virtual methods
.method public isProcessing(Landroid/view/MotionEvent;)Z
    .locals 0
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextSelectionHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;

    if-nez p0, :cond_0

    const-string p0, "handlerAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->hasSelection()Z

    move-result p0

    return p0
.end method

.method public onActivate()V
    .locals 3

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onActivate()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getTouchReader()Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextSelectionHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->addAndExecuteAction(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;)V

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

    const-string v1, "render_key_text_selection"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->removeRenderSilent(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onDeactivate()V

    return-void
.end method

.method public final onHideTextSelectionMenuIfQuitEvent(Lcom/onyx/android/sdk/universal/editor/events/note/HideTextSelectionMenuIfQuitEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/HideTextSelectionMenuIfQuitEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextSelectionHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;

    if-nez p0, :cond_0

    const-string p0, "handlerAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/HideTextSelectionMenuIfQuitEvent;->getHide()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->setHideMenuIfQuit(Z)V

    return-void
.end method

.method public final onQuitTextSelectionEvent(Lcom/onyx/android/sdk/universal/editor/events/note/QuitTextSelectionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/QuitTextSelectionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextSelectionHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;

    if-nez p0, :cond_0

    const-string p0, "handlerAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->quitTextSelection()V

    return-void
.end method

.method public final onThemeChangedEvent(Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextSelectionHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;

    const/4 v0, 0x0

    const-string v1, "handlerAction"

    if-nez p1, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object p1, v0

    :cond_0
    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->quitTextSelection()V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextSelectionHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;

    if-nez p0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->onThemeUpdated()V

    return-void
.end method

.method public startTextSelection(Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;)V
    .locals 0
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/TextSelectionHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;

    if-nez p0, :cond_1

    const-string p0, "handlerAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/TextSelectionDrawingHandlerAction;->startTextSelection(Lcom/onyx/android/sdk/universal/editor/events/note/StartTextSelectionArgs;)V

    return-void
.end method

.method public updateTouchMode(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchMode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p1, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->FINGER_SCRIBBLE:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->updateTouchMode(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V

    return-void
.end method
