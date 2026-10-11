.class public final Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$a;
.super Lcom/onyx/galaxy/note/editor/view/magnifier/BaseMagnifierViewStateChangedHandler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public b:Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public final synthetic c:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$a;->c:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/BaseMagnifierViewStateChangedHandler;-><init>()V

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;

    invoke-direct {p1}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$a;->b:Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$a;->c:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->access$getMagnifierEditorView$p(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/onyx/android/sdk/base/extension/ViewKt;->localVisibleRectF(Landroid/view/View;)Landroid/graphics/RectF;

    move-result-object v0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;

    invoke-direct {v1}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->setAction(I)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->setScaleFactor(F)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    invoke-virtual {v1, v2}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->setFocusX(F)V

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v0

    invoke-virtual {v1, v0}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->setFocusY(F)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$a;->b:Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->getScaleFactor()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->setLastScaleFactor(F)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$a;->b:Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->getFocusX()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->setInitialFocusX(F)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$a;->b:Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;

    invoke-virtual {v1}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->getFocusY()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->setInitialFocusY(F)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$a;->c:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->access$getMagnifierViewEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/events/app/ScalingArgsEvent;

    invoke-direct {v0, v1}, Lcom/onyx/android/sdk/universal/editor/events/app/ScalingArgsEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)V

    invoke-static {p0, v0}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public accept(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;)Z
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "currentType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/BaseMagnifierViewStateChangedHandler;->getPreviousMode()Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    move-result-object p0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->isResizing()Z

    move-result p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->isResizing()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public final b()V
    .locals 2

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->setAction(I)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$a;->c:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->access$getMagnifierViewEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance v1, Lcom/onyx/android/sdk/universal/editor/events/app/ScalingArgsEvent;

    invoke-direct {v1, v0}, Lcom/onyx/android/sdk/universal/editor/events/app/ScalingArgsEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)V

    invoke-static {p0, v1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/BaseMagnifierViewStateChangedHandler;->getPreviousMode()Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->isEnterResize(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$a;->a()V

    :cond_0
    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/BaseMagnifierViewStateChangedHandler;->getPreviousMode()Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->isQuitResize(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$a;->b()V

    :cond_1
    invoke-virtual {p1}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;->isResizing()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, p2, p3}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$a;->d(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    :cond_2
    return-void
.end method

.method public final d(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 3

    new-instance v0, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;

    invoke-direct {v0}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->setAction(I)V

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p2

    div-float/2addr p1, p2

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->setScaleFactor(F)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$a;->b:Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->getLastScaleFactor()F

    move-result p2

    invoke-virtual {v0}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->getScaleFactor()F

    move-result v2

    mul-float/2addr p2, v2

    invoke-virtual {p1, p2}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->setLastScaleFactor(F)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$a;->b:Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->getInitialFocusX()F

    move-result p1

    const/4 p2, 0x2

    int-to-float p2, p2

    mul-float/2addr p1, p2

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$a;->b:Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->getLastScaleFactor()F

    move-result v2

    int-to-float v1, v1

    sub-float/2addr v2, v1

    mul-float/2addr p1, v2

    iget-object v2, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$a;->b:Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;

    invoke-virtual {v2}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->getInitialFocusX()F

    move-result v2

    add-float/2addr p1, v2

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->setFocusX(F)V

    iget-object p1, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$a;->b:Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;

    invoke-virtual {p1}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->getInitialFocusY()F

    move-result p1

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$a;->b:Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->getLastScaleFactor()F

    move-result p2

    sub-float/2addr p2, v1

    mul-float/2addr p1, p2

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$a;->b:Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;

    invoke-virtual {p2}, Lcom/onyx/android/sdk/universal/editor/data/PinchZoomDataInfo;->getInitialFocusY()F

    move-result p2

    add-float/2addr p1, p2

    invoke-virtual {v0, p1}, Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;->setFocusY(F)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$a;->c:Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;->access$getMagnifierViewEditorBundle$p(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener;)Lcom/onyx/android/sdk/universal/editor/EditorBundle;

    move-result-object p0

    new-instance p1, Lcom/onyx/android/sdk/universal/editor/events/app/ScalingArgsEvent;

    invoke-direct {p1, v0}, Lcom/onyx/android/sdk/universal/editor/events/app/ScalingArgsEvent;-><init>(Lcom/onyx/android/sdk/universal/editor/data/ScalingArgs;)V

    invoke-static {p0, p1}, Lcom/onyx/android/sdk/universal/editor/extension/EditorBundleKt;->postEvent(Lcom/onyx/android/sdk/universal/editor/EditorBundle;Ljava/lang/Object;)V

    return-void
.end method

.method public onViewStateChanged(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/PointF;Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;)V
    .locals 1
    .param p1    # Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/RectF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/graphics/PointF;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p5    # Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "oldRectF"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "newRectF"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "offset"

    invoke-static {p4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "currentType"

    invoke-static {p5, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p5, p2, p3}, Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportStateChangedListener$a;->c(Lcom/onyx/galaxy/note/editor/view/magnifier/MagnifierViewportView$Mode;Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    return-void
.end method
