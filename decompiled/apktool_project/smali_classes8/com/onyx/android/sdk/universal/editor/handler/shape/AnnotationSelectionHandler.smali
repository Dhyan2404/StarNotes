.class public final Lcom/onyx/android/sdk/universal/editor/handler/shape/AnnotationSelectionHandler;
.super Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0014\u00a2\u0006\u0004\u0008\u0016\u0010\u0017J\u0008\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0004\u001a\u00020\u0002H\u0016J\u0010\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H\u0016J\u0010\u0010\n\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u0008H\u0007J\u0010\u0010\u000c\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\u000bH\u0007J\u0010\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u000e\u001a\u00020\rH\u0016R\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/onyx/android/sdk/universal/editor/handler/shape/AnnotationSelectionHandler;",
        "Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;",
        "",
        "onActivate",
        "onDeactivate",
        "Lcom/onyx/android/sdk/universal/editor/events/note/StartAnnotationSelectionArgs;",
        "args",
        "startAnnotationSelection",
        "Lcom/onyx/android/sdk/universal/editor/events/note/QuitAnnotationSelectionEvent;",
        "event",
        "onQuitAnnotationSelectionEvent",
        "Lcom/onyx/android/sdk/universal/common/events/ThemeChangedEvent;",
        "onThemeChangedEvent",
        "Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;",
        "touchMode",
        "updateTouchMode",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/AnnotationSelectionDrawingHandlerAction;",
        "d",
        "Lcom/onyx/android/sdk/universal/editor/action/handler/AnnotationSelectionDrawingHandlerAction;",
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
.field public d:Lcom/onyx/android/sdk/universal/editor/action/handler/AnnotationSelectionDrawingHandlerAction;


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
.method public onActivate()V
    .locals 3

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onActivate()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->register(Ljava/lang/Object;)V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;->FINGER_SCRIBBLE:Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/AnnotationSelectionHandler;->updateTouchMode(Lcom/onyx/android/sdk/universal/editor/config/EditorTouchMode;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/action/handler/AnnotationSelectionDrawingHandlerAction;

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getTouchReader()Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/action/handler/AnnotationSelectionDrawingHandlerAction;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/gesture/ScribbleTouchReader;)V

    iput-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/AnnotationSelectionHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/AnnotationSelectionDrawingHandlerAction;

    invoke-virtual {p0, v0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->addAndExecuteAction(Lcom/onyx/android/sdk/universal/editor/action/handler/BaseShapeHandlerAction;)V

    return-void
.end method

.method public onDeactivate()V
    .locals 1

    invoke-super {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->onDeactivate()V

    sget-object v0, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->INSTANCE:Lcom/onyx/android/sdk/universal/editor/GlobalBundle;

    invoke-virtual {v0, p0}, Lcom/onyx/android/sdk/universal/editor/GlobalBundle;->unregister(Ljava/lang/Object;)V

    return-void
.end method

.method public final onQuitAnnotationSelectionEvent(Lcom/onyx/android/sdk/universal/editor/events/note/QuitAnnotationSelectionEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/QuitAnnotationSelectionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/AnnotationSelectionHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/AnnotationSelectionDrawingHandlerAction;

    if-nez p0, :cond_0

    const-string p0, "handlerAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/AnnotationSelectionDrawingHandlerAction;->quitAnnotationSelection()V

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

    iget-object p0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/AnnotationSelectionHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/AnnotationSelectionDrawingHandlerAction;

    if-nez p0, :cond_0

    const-string p0, "handlerAction"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/action/handler/AnnotationSelectionDrawingHandlerAction;->quitAnnotationSelection()V

    return-void
.end method

.method public startAnnotationSelection(Lcom/onyx/android/sdk/universal/editor/events/note/StartAnnotationSelectionArgs;)V
    .locals 3
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/StartAnnotationSelectionArgs;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "args"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/android/sdk/universal/editor/handler/shape/AnnotationSelectionHandler;->d:Lcom/onyx/android/sdk/universal/editor/action/handler/AnnotationSelectionDrawingHandlerAction;

    if-nez v0, :cond_0

    const-string v0, "handlerAction"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/action/handler/AnnotationSelectionDrawingHandlerAction;->startAnnotationSelection(Lcom/onyx/android/sdk/universal/editor/events/note/StartAnnotationSelectionArgs;)V

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartAnnotationSelectionArgs;->getAnnotation()Lcom/onyx/android/sdk/note/common/shape/Shape;

    move-result-object v1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartAnnotationSelectionArgs;->getVirtualBoxInfo()Lcom/onyx/android/sdk/geometry/data/BoxInfo;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;-><init>(Lcom/onyx/android/sdk/note/common/shape/Shape;Lcom/onyx/android/sdk/geometry/data/BoxInfo;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartAnnotationSelectionArgs;->getStyle()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;->setStyle(Ljava/lang/Integer;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/note/StartAnnotationSelectionArgs;->getColor()Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;->setColor(Ljava/lang/Integer;)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/shape/BaseShapeHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/note/ShowAnnotationSelectionMenuEvent;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/universal/editor/events/note/ShowAnnotationSelectionMenuEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/events/note/AnnotationSelectionInfo;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

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
