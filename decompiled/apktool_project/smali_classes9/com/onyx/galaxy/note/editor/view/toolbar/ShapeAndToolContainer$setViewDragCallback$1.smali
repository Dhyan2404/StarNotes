.class public final Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$setViewDragCallback$1;
.super Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->setViewDragCallback(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\t\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u000c\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\r\u001a\u00020\nH\u0016J\u0008\u0010\u000e\u001a\u00020\nH\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fH\u0016J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0010\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002\u00a8\u0006\u0014"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$setViewDragCallback$1",
        "Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;",
        "",
        "state",
        "",
        "onViewDragStateChanged",
        "Landroid/view/MotionEvent;",
        "event",
        "onInterceptTouchEvent",
        "onTouchEvent",
        "",
        "canDragByPen",
        "canDragByFinger",
        "canQuickDrag",
        "canDrag",
        "Landroid/view/View;",
        "releasedChild",
        "onViewMaxReleased",
        "onViewDownTouch",
        "a",
        "note_overseasRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x9,
        0x0
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

.field public final synthetic b:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$setViewDragCallback$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    iput-object p2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$setViewDragCallback$1;->b:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/MotionEvent;)V
    .locals 1

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isDoneAction(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$setViewDragCallback$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->access$getEditorBundle(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getUiStateInfo()Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->isDragStateIdle()Z

    move-result p1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getUiStateInfo()Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->delayResetDragStateIdleIf()V

    if-nez p1, :cond_1

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/DragAppendingPageEndEvent;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/DragAppendingPageEndEvent;-><init>()V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public canDrag()Z
    .locals 4

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$setViewDragCallback$1;->canQuickDrag()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$setViewDragCallback$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->access$getEditorBundle(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isGestureMoved()Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$setViewDragCallback$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    iget-object v3, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$setViewDragCallback$1;->b:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-static {v2, v3}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->access$loadPaperTemplateThumbnail(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getUiStateInfo()Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->setDragStateIdle(Z)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$setViewDragCallback$1;->b:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->requestDragViewInterceptTouchEvent()V

    const/4 p0, 0x1

    return p0
.end method

.method public canDragByFinger(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$setViewDragCallback$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->access$getEditorBundle(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportFingerTouchEdit()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isMultiTouch(Landroid/view/MotionEvent;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_0
    return v0
.end method

.method public canDragByPen()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$setViewDragCallback$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->access$getEditorBundle(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->handlerManager(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/handler/finger/HandlerManager;->isSupportTouchEdit()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public canQuickDrag()Z
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$setViewDragCallback$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->access$isDragAddEnable(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$setViewDragCallback$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->access$getEditorBundle(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->getUiFeature(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;

    move-result-object v0

    invoke-interface {v0}, Lcom/onyx/android/sdk/universal/editor/feature/ui/UIFeature;->supportMultiPage()Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-static {p0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->isReachLimitEdge(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;->onInterceptTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$setViewDragCallback$1;->a(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;->onTouchEvent(Landroid/view/MotionEvent;)V

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$setViewDragCallback$1;->a(Landroid/view/MotionEvent;)V

    return-void
.end method

.method public onViewDownTouch(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$setViewDragCallback$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->access$getEditorBundle(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$setViewDragCallback$1;->b:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-static {p1}, Lcom/onyx/android/sdk/universal/editor/action/extension/DocOptionsActionsKt;->getLayoutType(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->setLayoutType(I)V

    :cond_0
    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$setViewDragCallback$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->access$getEditorBundle(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getUiStateInfo()Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->setDragStateIdle(Z)V

    :cond_1
    return-void
.end method

.method public onViewMaxReleased(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "releasedChild"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$setViewDragCallback$1;->a:Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;->access$getEditorBundle(Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/EditorBundle;->getUiBundle()Lcom/onyx/android/sdk/universal/editor/UIBundle;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/UIBundle;->getUiStateInfo()Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/universal/editor/data/UIStateInfo;->setDragAppendingPage(Z)V

    sget-object p1, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->INSTANCE:Lcom/onyx/android/sdk/base/utils/RxTimerUtil;

    new-instance v0, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$setViewDragCallback$1$onViewMaxReleased$1;

    invoke-direct {v0, p0}, Lcom/onyx/galaxy/note/editor/view/toolbar/ShapeAndToolContainer$setViewDragCallback$1$onViewMaxReleased$1;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    invoke-virtual {p1, v0}, Lcom/onyx/android/sdk/base/utils/RxTimerUtil;->shortTimer(Lkotlin/jvm/functions/Function1;)I

    return-void
.end method
