.class public final Lcom/onyx/android/sdk/universal/editor/handler/shape/LaserShapeDrawingHandler;
.super Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0007J\u0010\u0010\u000e\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\rH\u0007J\u0010\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\u000fH\u0016J\u0008\u0010\u0011\u001a\u00020\u0007H\u0002R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/handler/shape/LaserShapeDrawingHandler;",
        "Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;",
        "",
        "onActivate",
        "onDeactivate",
        "Lcom/onyx/android/sdk/base/data/TouchPoint;",
        "touchPoint",
        "",
        "onSingleTapUp",
        "cancelAction",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;",
        "event",
        "onScrollBeginEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ScaleBeginEvent;",
        "onScaleBeginEvent",
        "Lcom/onyx/android/sdk/universal/editor/events/app/ActivityStopEvent;",
        "onActivityStopEvent",
        "a",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;",
        "d",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;",
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
.field public d:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;


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
.method public final a()Z
    .locals 0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportFingerTouchEdit()Z

    move-result p0

    return p0
.end method

.method public cancelAction()V
    .locals 0

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/LaserShapeDrawingHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;

    if-nez p0, :cond_0

    const-string p0, "handlerAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->cancelCurrentPath()V

    return-void
.end method

.method public onActivate()V
    .locals 3

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onActivate()V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getTouchReader()Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/LaserShapeDrawingHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->addAndExecuteAction(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;)V

    return-void
.end method

.method public onActivityStopEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ActivityStopEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ActivityStopEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onActivityStopEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ActivityStopEvent;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/LaserShapeDrawingHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;

    if-nez p0, :cond_0

    const-string p0, "handlerAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->stopRendering()V

    return-void
.end method

.method public onDeactivate()V
    .locals 2

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->renderManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/display/RenderManager;

    move-result-object v0

    const-string v1, "render_key_laser"

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/display/RenderManager;->removeRenderSilent(Ljava/lang/String;)V

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onDeactivate()V

    return-void
.end method

.method public final onScaleBeginEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ScaleBeginEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ScaleBeginEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/LaserShapeDrawingHandler;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/LaserShapeDrawingHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;

    if-nez p0, :cond_0

    const-string p0, "handlerAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->startDismissTimerIf()V

    :cond_1
    return-void
.end method

.method public final onScrollBeginEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ScrollBeginEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/LaserShapeDrawingHandler;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/LaserShapeDrawingHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;

    if-nez p0, :cond_0

    const-string p0, "handlerAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/LaserShapeDrawingHandlerAction;->startDismissTimerIf()V

    :cond_1
    return-void
.end method

.method public onSingleTapUp(Lcom/onyx/android/sdk/base/data/TouchPoint;)Z
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/base/data/TouchPoint;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "touchPoint"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/LaserShapeDrawingHandler;->a()Z

    move-result p0

    return p0
.end method
