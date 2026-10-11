.class public Lcom/hjq/window/draggable/MovingDraggable;
.super Lcom/hjq/window/draggable/BaseDraggable;
.source "SourceFile"


# instance fields
.field public p:F

.field public q:F

.field public r:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/hjq/window/draggable/BaseDraggable;-><init>()V

    return-void
.end method


# virtual methods
.method public isTouchMoving()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hjq/window/draggable/MovingDraggable;->r:Z

    return p0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_2

    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getWindowInvisibleWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr p1, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getWindowInvisibleHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/hjq/window/draggable/MovingDraggable;->p:F

    sub-float/2addr p1, v3

    const/4 v3, 0x0

    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v4, p0, Lcom/hjq/window/draggable/MovingDraggable;->q:F

    sub-float/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/hjq/window/draggable/BaseDraggable;->updateLocation(FF)V

    iget-boolean p1, p0, Lcom/hjq/window/draggable/MovingDraggable;->r:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->dispatchExecuteDraggingCallback()V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/hjq/window/draggable/MovingDraggable;->p:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/hjq/window/draggable/MovingDraggable;->q:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p0, p1, v2, v3, p2}, Lcom/hjq/window/draggable/BaseDraggable;->isFingerMove(FFFF)Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean v1, p0, Lcom/hjq/window/draggable/MovingDraggable;->r:Z

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->dispatchStartDraggingCallback()V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/hjq/window/draggable/MovingDraggable;->r:Z

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->dispatchStopDraggingCallback()V

    :cond_3
    :try_start_0
    iget-boolean p1, p0, Lcom/hjq/window/draggable/MovingDraggable;->r:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lcom/hjq/window/draggable/MovingDraggable;->r:Z

    return p1

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/hjq/window/draggable/MovingDraggable;->r:Z

    throw p1

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/hjq/window/draggable/MovingDraggable;->p:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/hjq/window/draggable/MovingDraggable;->q:F

    iput-boolean v0, p0, Lcom/hjq/window/draggable/MovingDraggable;->r:Z

    :cond_5
    :goto_0
    return v0
.end method
