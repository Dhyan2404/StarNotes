.class public final Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;
.super Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->e()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000=\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0007*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\u0008\u001a\u00020\u0006H\u0016J\u0008\u0010\t\u001a\u00020\u0006H\u0016J\u0010\u0010\u000c\u001a\u00020\u00062\u0006\u0010\u000b\u001a\u00020\nH\u0016J0\u0010\u0013\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\r2\u0006\u0010\u000f\u001a\u00020\u00022\u0006\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0012\u001a\u00020\u0002H\u0016J \u0010\u0018\u001a\u00020\u00042\u0006\u0010\u0014\u001a\u00020\r2\u0006\u0010\u0016\u001a\u00020\u00152\u0006\u0010\u0017\u001a\u00020\u0015H\u0016J\u0010\u0010\u0019\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u001a\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016J\u0010\u0010\u001d\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\nH\u0016R\u0016\u0010!\u001a\u00020\u001e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u001f\u0010 R\u0016\u0010$\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\"\u0010#\u00a8\u0006%"
    }
    d2 = {
        "com/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1",
        "Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;",
        "",
        "state",
        "",
        "onViewDragStateChanged",
        "",
        "canQuickDrag",
        "canDrag",
        "canDragByPen",
        "Landroid/view/MotionEvent;",
        "event",
        "canDragByFinger",
        "Landroid/view/View;",
        "changedView",
        "left",
        "top",
        "dx",
        "dy",
        "onViewPositionChanged",
        "releasedChild",
        "",
        "xvel",
        "yvel",
        "onViewReleased",
        "onViewDownTouch",
        "onViewMovingTouch",
        "onViewUpTouch",
        "onInterceptTouchEvent",
        "onTouchEvent",
        "Landroid/graphics/PointF;",
        "a",
        "Landroid/graphics/PointF;",
        "downPoint",
        "b",
        "Z",
        "shouldShow",
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
.field public a:Landroid/graphics/PointF;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public b:Z

.field public final synthetic c:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;


# direct methods
.method public constructor <init>(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V
    .locals 0

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;->c:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-direct {p0}, Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;-><init>()V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;->a:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public canDrag()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;->c:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->access$getCallback$p(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;->canDrag()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;->c:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->access$getCallback$p(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;->canDragByFinger(Landroid/view/MotionEvent;)Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
    return p0
.end method

.method public canDragByPen()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;->c:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->access$getCallback$p(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;->canDragByPen()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public canQuickDrag()Z
    .locals 0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;->c:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->access$getCallback$p(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;->canQuickDrag()Z

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;->c:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->access$getCallback$p(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;->onInterceptTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
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

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;->c:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->access$getCallback$p(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;->onInterceptTouchEvent(Landroid/view/MotionEvent;)V

    :cond_0
    return-void
.end method

.method public onViewDownTouch(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;->c:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->access$getCallback$p(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;->onViewDownTouch(Landroid/view/MotionEvent;)V

    :cond_0
    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;->c:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-virtual {v0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->refreshPageScrollerLayout()V

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;->a:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v1, p1}, Landroid/graphics/PointF;->set(FF)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;->b:Z

    return-void
.end method

.method public onViewDragStateChanged(I)V
    .locals 1

    iget-object v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;->c:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-static {v0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->access$getCallback$p(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroidx/customview/widget/ViewDragHelper$Callback;->onViewDragStateChanged(I)V

    :cond_0
    if-nez p1, :cond_1

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;->c:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->access$resetStateView(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)V

    :cond_1
    return-void
.end method

.method public onViewMovingTouch(Landroid/view/MotionEvent;)V
    .locals 5
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/onyx/android/sdk/base/utils/MathUtils;->INSTANCE:Lcom/onyx/android/sdk/base/utils/MathUtils;

    iget-object v1, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;->a:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lcom/onyx/android/sdk/base/utils/MathUtils;->distance(FFFF)D

    move-result-wide v0

    sget-object v2, Lcom/onyx/android/sdk/base/utils/ResManager;->INSTANCE:Lcom/onyx/android/sdk/base/utils/ResManager;

    sget v3, Lcom/onyx/android/sdk/device/R$dimen;->dp_8:I

    invoke-virtual {v2, v3}, Lcom/onyx/android/sdk/base/utils/ResManager;->getDimens(I)I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;->b:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;->b:Z

    :cond_0
    iget-boolean v0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;->b:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/onyx/android/sdk/base/extension/MotionEventKt;->isPenTouchType(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;->canDragByFinger(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;->c:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->pageScroller:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    invoke-virtual {p0, v1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->show(Z)V

    :cond_2
    return-void
.end method

.method public onViewPositionChanged(Landroid/view/View;IIII)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "changedView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;->c:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-static {p0, p4, p5}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->access$updateStateView(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;II)V

    return-void
.end method

.method public onViewReleased(Landroid/view/View;FF)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string p2, "releasedChild"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;->c:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-static {p2}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->access$getPercentage$p(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)F

    move-result p2

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p2, p2, p3

    if-ltz p2, :cond_0

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;->c:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-static {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->access$getCallback$p(Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;)Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/drag/ViewDragCallback;->onViewMaxReleased(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public onViewUpTouch(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1    # Landroid/view/MotionEvent;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout$initView$1;->c:Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;

    invoke-virtual {p0}, Lcom/onyx/galaxy/note/editor/view/drag/EditorViewDragLayout;->getBinding()Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;

    move-result-object p0

    iget-object p0, p0, Lcom/onyx/galaxy/note/databinding/EditorViewDragLayoutBinding;->pageScroller:Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/onyx/galaxy/note/editor/view/custom/PageScroller;->show(Z)V

    return-void
.end method
