.class public Lcom/hjq/window/draggable/SpringBackDraggable;
.super Lcom/hjq/window/draggable/BaseDraggable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hjq/window/draggable/SpringBackDraggable$SpringBackAnimCallback;
    }
.end annotation


# static fields
.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1


# instance fields
.field public p:F

.field public q:F

.field public final r:I

.field public s:Z

.field public t:Lcom/hjq/window/draggable/SpringBackDraggable$SpringBackAnimCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/hjq/window/draggable/SpringBackDraggable;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/hjq/window/draggable/BaseDraggable;-><init>()V

    .line 3
    iput p1, p0, Lcom/hjq/window/draggable/SpringBackDraggable;->r:I

    if-eqz p1, :cond_1

    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "You cannot pass in directions other than horizontal or vertical"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic g(Lcom/hjq/window/draggable/SpringBackDraggable;FLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hjq/window/draggable/SpringBackDraggable;->j(FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic h(Lcom/hjq/window/draggable/SpringBackDraggable;FLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/hjq/window/draggable/SpringBackDraggable;->i(FLandroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic i(FLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/hjq/window/draggable/BaseDraggable;->updateLocation(FF)V

    return-void
.end method

.method private synthetic j(FLandroid/animation/ValueAnimator;)V
    .locals 0

    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/hjq/window/draggable/BaseDraggable;->updateLocation(FF)V

    return-void
.end method


# virtual methods
.method public calculateAnimationDuration(FF)J
    .locals 2

    sub-float/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p0, p1

    float-to-long p0, p0

    const-wide/16 v0, 0xc8

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/16 v0, 0x320

    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public dispatchSpringBackAnimationEndCallback(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/hjq/window/draggable/SpringBackDraggable;->t:Lcom/hjq/window/draggable/SpringBackDraggable$SpringBackAnimCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getEasyWindow()Lcom/hjq/window/EasyWindow;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/hjq/window/draggable/SpringBackDraggable$SpringBackAnimCallback;->onSpringBackAnimationEnd(Lcom/hjq/window/EasyWindow;Landroid/animation/Animator;)V

    return-void
.end method

.method public dispatchSpringBackAnimationStartCallback(Landroid/animation/Animator;)V
    .locals 1

    iget-object v0, p0, Lcom/hjq/window/draggable/SpringBackDraggable;->t:Lcom/hjq/window/draggable/SpringBackDraggable$SpringBackAnimCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getEasyWindow()Lcom/hjq/window/EasyWindow;

    move-result-object p0

    invoke-interface {v0, p0, p1}, Lcom/hjq/window/draggable/SpringBackDraggable$SpringBackAnimCallback;->onSpringBackAnimationStart(Lcom/hjq/window/EasyWindow;Landroid/animation/Animator;)V

    return-void
.end method

.method public dispatchSpringBackViewToScreenEdge()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getViewOnScreenX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getViewOnScreenY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/hjq/window/draggable/SpringBackDraggable;->dispatchSpringBackViewToScreenEdge(FF)V

    return-void
.end method

.method public dispatchSpringBackViewToScreenEdge(FF)V
    .locals 4

    .line 2
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getWindowInvisibleWidth()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p1, v0

    .line 3
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getWindowInvisibleHeight()I

    move-result v0

    int-to-float v0, v0

    sub-float/2addr p2, v0

    .line 4
    iget v0, p0, Lcom/hjq/window/draggable/SpringBackDraggable;->r:I

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    iget v0, p0, Lcom/hjq/window/draggable/SpringBackDraggable;->p:F

    sub-float/2addr p1, v0

    .line 6
    iget v0, p0, Lcom/hjq/window/draggable/SpringBackDraggable;->q:F

    sub-float v0, p2, v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 7
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getWindowHeight()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v1

    cmpg-float p2, p2, v1

    if-gez p2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getViewHeight()I

    move-result p2

    int-to-float p2, p2

    sub-float/2addr v3, p2

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 9
    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/hjq/window/draggable/SpringBackDraggable;->equalsWithRelativeTolerance(FF)Z

    move-result p2

    if-nez p2, :cond_4

    .line 10
    invoke-virtual {p0, p1, v0, v2}, Lcom/hjq/window/draggable/SpringBackDraggable;->startVerticalAnimation(FFF)V

    goto :goto_2

    .line 11
    :cond_2
    iget v0, p0, Lcom/hjq/window/draggable/SpringBackDraggable;->p:F

    sub-float v0, p1, v0

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 12
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getWindowWidth()I

    move-result v3

    int-to-float v3, v3

    div-float v1, v3, v1

    cmpg-float p1, p1, v1

    if-gez p1, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getViewWidth()I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v3, p1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 14
    :goto_1
    iget p1, p0, Lcom/hjq/window/draggable/SpringBackDraggable;->q:F

    sub-float/2addr p2, p1

    .line 15
    invoke-virtual {p0, v0, v2}, Lcom/hjq/window/draggable/SpringBackDraggable;->equalsWithRelativeTolerance(FF)Z

    move-result p1

    if-nez p1, :cond_4

    .line 16
    invoke-virtual {p0, v0, v2, p2}, Lcom/hjq/window/draggable/SpringBackDraggable;->startHorizontalAnimation(FFF)V

    :cond_4
    :goto_2
    return-void
.end method

.method public equalsWithRelativeTolerance(FF)Z
    .locals 0

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    const p1, 0x3727c5ac    # 1.0E-5f

    cmpg-float p0, p0, p1

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTouchMoving()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hjq/window/draggable/SpringBackDraggable;->s:Z

    return p0
.end method

.method public onScreenRotateInfluenceCoordinateChangeFinish()V
    .locals 0

    invoke-super {p0}, Lcom/hjq/window/draggable/BaseDraggable;->onScreenRotateInfluenceCoordinateChangeFinish()V

    invoke-virtual {p0}, Lcom/hjq/window/draggable/SpringBackDraggable;->dispatchSpringBackViewToScreenEdge()V

    return-void
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

    const/4 v1, 0x3

    if-eq p1, v1, :cond_2

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

    iget v3, p0, Lcom/hjq/window/draggable/SpringBackDraggable;->p:F

    sub-float/2addr p1, v3

    const/4 v3, 0x0

    invoke-static {p1, v3}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget v4, p0, Lcom/hjq/window/draggable/SpringBackDraggable;->q:F

    sub-float/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/hjq/window/draggable/BaseDraggable;->updateLocation(FF)V

    iget-boolean p1, p0, Lcom/hjq/window/draggable/SpringBackDraggable;->s:Z

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->dispatchExecuteDraggingCallback()V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/hjq/window/draggable/SpringBackDraggable;->p:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iget v3, p0, Lcom/hjq/window/draggable/SpringBackDraggable;->q:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p0, p1, v2, v3, p2}, Lcom/hjq/window/draggable/BaseDraggable;->isFingerMove(FFFF)Z

    move-result p1

    if-eqz p1, :cond_5

    iput-boolean v1, p0, Lcom/hjq/window/draggable/SpringBackDraggable;->s:Z

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->dispatchStartDraggingCallback()V

    goto :goto_0

    :cond_2
    iget-boolean p1, p0, Lcom/hjq/window/draggable/SpringBackDraggable;->s:Z

    if-eqz p1, :cond_3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/hjq/window/draggable/SpringBackDraggable;->dispatchSpringBackViewToScreenEdge(FF)V

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->dispatchStopDraggingCallback()V

    :cond_3
    :try_start_0
    iget-boolean p1, p0, Lcom/hjq/window/draggable/SpringBackDraggable;->s:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lcom/hjq/window/draggable/SpringBackDraggable;->s:Z

    return p1

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lcom/hjq/window/draggable/SpringBackDraggable;->s:Z

    throw p1

    :cond_4
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/hjq/window/draggable/SpringBackDraggable;->p:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcom/hjq/window/draggable/SpringBackDraggable;->q:F

    iput-boolean v0, p0, Lcom/hjq/window/draggable/SpringBackDraggable;->s:Z

    :cond_5
    :goto_0
    return v0
.end method

.method public setSpringBackAnimCallback(Lcom/hjq/window/draggable/SpringBackDraggable$SpringBackAnimCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/hjq/window/draggable/SpringBackDraggable;->t:Lcom/hjq/window/draggable/SpringBackDraggable$SpringBackAnimCallback;

    return-void
.end method

.method public startAnimation(FFJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, p3, p4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p5, :cond_0

    invoke-virtual {p1, p5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    :cond_0
    new-instance p2, Lcom/hjq/window/draggable/SpringBackDraggable$a;

    invoke-direct {p2, p0}, Lcom/hjq/window/draggable/SpringBackDraggable$a;-><init>(Lcom/hjq/window/draggable/SpringBackDraggable;)V

    invoke-virtual {p1, p2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public startHorizontalAnimation(FFF)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/hjq/window/draggable/SpringBackDraggable;->calculateAnimationDuration(FF)J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/hjq/window/draggable/SpringBackDraggable;->startHorizontalAnimation(FFFJ)V

    return-void
.end method

.method public startHorizontalAnimation(FFFJ)V
    .locals 6

    .line 2
    new-instance v5, Lcom/sunia/HTREnginev2/wwm;

    invoke-direct {v5, p0, p3}, Lcom/sunia/HTREnginev2/wwm;-><init>(Lcom/hjq/window/draggable/SpringBackDraggable;F)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-wide v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/hjq/window/draggable/SpringBackDraggable;->startAnimation(FFJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method public startVerticalAnimation(FFF)V
    .locals 6

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/hjq/window/draggable/SpringBackDraggable;->calculateAnimationDuration(FF)J

    move-result-wide v4

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/hjq/window/draggable/SpringBackDraggable;->startVerticalAnimation(FFFJ)V

    return-void
.end method

.method public startVerticalAnimation(FFFJ)V
    .locals 6

    .line 2
    new-instance v5, Lcom/sunia/HTREnginev2/vwm;

    invoke-direct {v5, p0, p1}, Lcom/sunia/HTREnginev2/vwm;-><init>(Lcom/hjq/window/draggable/SpringBackDraggable;F)V

    move-object v0, p0

    move v1, p2

    move v2, p3

    move-wide v3, p4

    invoke-virtual/range {v0 .. v5}, Lcom/hjq/window/draggable/SpringBackDraggable;->startAnimation(FFJLandroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method
