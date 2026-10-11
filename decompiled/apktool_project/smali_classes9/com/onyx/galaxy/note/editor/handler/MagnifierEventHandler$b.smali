.class public final Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$b;
.super Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "b"
.end annotation


# instance fields
.field public final synthetic f:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/onyx/android/sdk/universal/editor/EditorBundle;",
            ")V"
        }
    .end annotation

    const-string v0, "editorBundle"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$b;->f:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    .line 2
    invoke-direct {p0, p2}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;-><init>(Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 3
    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$getFocusEditorBundle$p(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p2

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$b;-><init>(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Lcom/onyx/android/sdk/universal/editor/EditorBundle;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/onyx/android/sdk/base/data/TouchPoint;)V
    .locals 2

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$b;->f:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$isShowMagnifierEditorView(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$b;->f:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$getMagnifierViewportView$p(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;

    move-result-object p0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getX()F

    move-result v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/base/data/TouchPoint;->getY()F

    move-result p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;->moveCenterToPoint(FFZ)V

    return-void
.end method

.method public final onDocumentClosedEvent(Lcom/onyx/android/sdk/universal/editor/events/app/DocumentClosedEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/DocumentClosedEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$b;->f:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$isShowMagnifierEditorView(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$b;->f:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$closeMagnifier(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Z)V

    return-void
.end method

.method public final onDocumentOpenSuccessEvent(Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/DocumentOpenSuccessEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$b;->f:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$onFocusEditorDocOpened(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)V

    return-void
.end method

.method public final onInsertTagEvent(Lcom/onyx/android/sdk/universal/editor/events/note/InsertTagEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/note/InsertTagEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$b;->f:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$isShowMagnifierEditorView(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$b;->f:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->s(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;ZILjava/lang/Object;)V

    return-void
.end method

.method public final onNoGesturesEvent(Lcom/onyx/android/sdk/universal/editor/events/app/NoGesturesEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/NoGesturesEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/NoGesturesEvent;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$b;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void
.end method

.method public final onScaleResultEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ScaleResultEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ScaleResultEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$b;->f:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$isShowMagnifierEditorView(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$b;->f:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->O(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/graphics/Matrix;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onScalingResultEvent(Lcom/onyx/android/sdk/universal/editor/events/app/ScalingResultEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/ScalingResultEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$b;->f:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$isShowMagnifierEditorView(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$b;->f:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/ScalingResultEvent;->getArgs()Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->getMatrix()Landroid/graphics/Matrix;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$locateFocusEditorViewRectObservable(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/graphics/Matrix;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method

.method public final onSingleClickEvent(Lcom/onyx/android/sdk/universal/editor/events/app/SingleClickEvent;)V
    .locals 1
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/SingleClickEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/SingleClickEvent;->getTouchPoint()Lcom/onyx/android/sdk/base/data/TouchPoint;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$b;->a(Lcom/onyx/android/sdk/base/data/TouchPoint;)V

    return-void
.end method

.method public final onVirtualDocViewInfoEvent(Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;)V
    .locals 2
    .param p1    # Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$b;->f:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$isShowMagnifierEditorView(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$b;->f:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;->isScrolling()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$setFocusEditorScrolling$p(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Z)V

    invoke-virtual {p0}, Lcom/onyx/android/sdk/universal/editor/eventhandler/BaseEventHandler;->getEditorBundle()Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object v0

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/events/app/VirtualDocViewInfoEvent;->getVirtualDocViewInfo()Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->updateVirtualDocViewInfo(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Lcom/onyx/android/sdk/universal/editor/data/VirtualDocViewInfo;)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$b;->f:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    invoke-static {p1}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->access$getMagnifierViewportStateChangedListener$p(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;)Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    move-result-object p1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->isProcessing()Z

    move-result p1

    if-eqz p1, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler$b;->f:Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;

    const/4 p1, 0x1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;->O(Lcom/onyx/galaxy/note/editor/handler/MagnifierEventHandler;Landroid/graphics/Matrix;ILjava/lang/Object;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object p0

    invoke-virtual {p0}, Lio/reactivex/rxjava3/core/Observable;->subscribe()Lio/reactivex/rxjava3/disposables/Disposable;

    return-void
.end method
