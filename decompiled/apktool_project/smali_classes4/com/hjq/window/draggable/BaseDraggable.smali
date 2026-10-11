.class public abstract Lcom/hjq/window/draggable/BaseDraggable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hjq/window/draggable/BaseDraggable$DraggingCallback;
    }
.end annotation


# instance fields
.field public e:Lcom/hjq/window/EasyWindow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/hjq/window/EasyWindow<",
            "*>;"
        }
    .end annotation
.end field

.field public f:Landroid/view/View;

.field public g:Z

.field public h:Lcom/hjq/window/draggable/BaseDraggable$DraggingCallback;

.field public final i:Landroid/graphics/Rect;

.field public j:I

.field public k:I

.field public l:I

.field public m:I

.field public n:I

.field public o:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/hjq/window/draggable/BaseDraggable;->g:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/hjq/window/draggable/BaseDraggable;->i:Landroid/graphics/Rect;

    return-void
.end method

.method public static synthetic a(Lcom/hjq/window/draggable/BaseDraggable;)V
    .locals 0

    invoke-direct {p0}, Lcom/hjq/window/draggable/BaseDraggable;->e()V

    return-void
.end method

.method public static synthetic b(Lcom/hjq/window/draggable/BaseDraggable;)V
    .locals 0

    invoke-direct {p0}, Lcom/hjq/window/draggable/BaseDraggable;->f()V

    return-void
.end method

.method public static synthetic c(Lcom/hjq/window/draggable/BaseDraggable;)I
    .locals 0

    iget p0, p0, Lcom/hjq/window/draggable/BaseDraggable;->j:I

    return p0
.end method

.method public static synthetic d(Lcom/hjq/window/draggable/BaseDraggable;)I
    .locals 0

    iget p0, p0, Lcom/hjq/window/draggable/BaseDraggable;->k:I

    return p0
.end method

.method private synthetic e()V
    .locals 0

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->refreshWindowInfo()V

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->refreshLocationCoordinate()V

    return-void
.end method

.method private synthetic f()V
    .locals 0

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->refreshWindowInfo()V

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->refreshLocationCoordinate()V

    return-void
.end method

.method public static getSafeInsetRect(Landroid/view/Window;)Landroid/graphics/Rect;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object p0, v0

    :goto_0
    if-eqz p0, :cond_1

    .line 6
    invoke-virtual {p0}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object p0

    goto :goto_1

    :cond_1
    move-object p0, v0

    :goto_1
    if-eqz p0, :cond_2

    .line 7
    invoke-virtual {p0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    move-result-object p0

    goto :goto_2

    :cond_2
    move-object p0, v0

    :goto_2
    if-eqz p0, :cond_3

    .line 8
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetLeft()I

    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetTop()I

    move-result v1

    .line 10
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetRight()I

    move-result v2

    .line 11
    invoke-virtual {p0}, Landroid/view/DisplayCutout;->getSafeInsetBottom()I

    move-result p0

    .line 12
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v1, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3

    :cond_3
    return-object v0
.end method


# virtual methods
.method public dispatchExecuteDraggingCallback()V
    .locals 1

    iget-object v0, p0, Lcom/hjq/window/draggable/BaseDraggable;->h:Lcom/hjq/window/draggable/BaseDraggable$DraggingCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/hjq/window/draggable/BaseDraggable;->e:Lcom/hjq/window/EasyWindow;

    invoke-interface {v0, p0}, Lcom/hjq/window/draggable/BaseDraggable$DraggingCallback;->onExecuteDragging(Lcom/hjq/window/EasyWindow;)V

    return-void
.end method

.method public dispatchStartDraggingCallback()V
    .locals 1

    iget-object v0, p0, Lcom/hjq/window/draggable/BaseDraggable;->h:Lcom/hjq/window/draggable/BaseDraggable$DraggingCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/hjq/window/draggable/BaseDraggable;->e:Lcom/hjq/window/EasyWindow;

    invoke-interface {v0, p0}, Lcom/hjq/window/draggable/BaseDraggable$DraggingCallback;->onStartDragging(Lcom/hjq/window/EasyWindow;)V

    return-void
.end method

.method public dispatchStopDraggingCallback()V
    .locals 1

    iget-object v0, p0, Lcom/hjq/window/draggable/BaseDraggable;->h:Lcom/hjq/window/draggable/BaseDraggable$DraggingCallback;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object p0, p0, Lcom/hjq/window/draggable/BaseDraggable;->e:Lcom/hjq/window/EasyWindow;

    invoke-interface {v0, p0}, Lcom/hjq/window/draggable/BaseDraggable$DraggingCallback;->onStopDragging(Lcom/hjq/window/EasyWindow;)V

    return-void
.end method

.method public getDecorView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/hjq/window/draggable/BaseDraggable;->f:Landroid/view/View;

    return-object p0
.end method

.method public getEasyWindow()Lcom/hjq/window/EasyWindow;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hjq/window/EasyWindow<",
            "*>;"
        }
    .end annotation

    iget-object p0, p0, Lcom/hjq/window/draggable/BaseDraggable;->e:Lcom/hjq/window/EasyWindow;

    return-object p0
.end method

.method public getMinTouchDistance()F
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public getSafeInsetRect()Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/hjq/window/draggable/BaseDraggable;->e:Lcom/hjq/window/EasyWindow;

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 2
    instance-of v0, p0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 3
    :cond_0
    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v1

    .line 4
    :cond_1
    invoke-static {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getSafeInsetRect(Landroid/view/Window;)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getViewHeight()I
    .locals 0

    iget-object p0, p0, Lcom/hjq/window/draggable/BaseDraggable;->e:Lcom/hjq/window/EasyWindow;

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->getViewHeight()I

    move-result p0

    return p0
.end method

.method public getViewOnScreenX()I
    .locals 0

    iget p0, p0, Lcom/hjq/window/draggable/BaseDraggable;->l:I

    return p0
.end method

.method public getViewOnScreenY()I
    .locals 0

    iget p0, p0, Lcom/hjq/window/draggable/BaseDraggable;->m:I

    return p0
.end method

.method public getViewWidth()I
    .locals 0

    iget-object p0, p0, Lcom/hjq/window/draggable/BaseDraggable;->e:Lcom/hjq/window/EasyWindow;

    invoke-virtual {p0}, Lcom/hjq/window/EasyWindow;->getViewWidth()I

    move-result p0

    return p0
.end method

.method public getWindowHeight()I
    .locals 0

    iget p0, p0, Lcom/hjq/window/draggable/BaseDraggable;->k:I

    return p0
.end method

.method public getWindowInvisibleHeight()I
    .locals 0

    iget p0, p0, Lcom/hjq/window/draggable/BaseDraggable;->o:I

    return p0
.end method

.method public getWindowInvisibleWidth()I
    .locals 0

    iget p0, p0, Lcom/hjq/window/draggable/BaseDraggable;->n:I

    return p0
.end method

.method public getWindowWidth()I
    .locals 0

    iget p0, p0, Lcom/hjq/window/draggable/BaseDraggable;->j:I

    return p0
.end method

.method public isAllowMoveToScreenNotch()Z
    .locals 0

    iget-boolean p0, p0, Lcom/hjq/window/draggable/BaseDraggable;->g:Z

    return p0
.end method

.method public isFingerMove(FFFF)Z
    .locals 0

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getMinTouchDistance()F

    move-result p0

    sub-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, p0

    if-gez p1, :cond_1

    sub-float/2addr p3, p4

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p0, p1, p0

    if-ltz p0, :cond_0

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

.method public isFollowScreenRotationChanges()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public onScreenOrientationChange()V
    .locals 11

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->isFollowScreenRotationChanges()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getEasyWindow()Lcom/hjq/window/EasyWindow;

    move-result-object v0

    new-instance v1, Lcom/sunia/HTREnginev2/bn;

    invoke-direct {v1, p0}, Lcom/sunia/HTREnginev2/bn;-><init>(Lcom/hjq/window/draggable/BaseDraggable;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/hjq/window/EasyWindow;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/hjq/window/draggable/BaseDraggable;->l:I

    iget v2, p0, Lcom/hjq/window/draggable/BaseDraggable;->n:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/hjq/window/draggable/BaseDraggable;->m:I

    iget v3, p0, Lcom/hjq/window/draggable/BaseDraggable;->o:I

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getMinTouchDistance()F

    move-result v3

    int-to-float v5, v1

    cmpg-float v6, v5, v3

    const/high16 v7, 0x3f800000    # 1.0f

    const/high16 v8, 0x40000000    # 2.0f

    const/4 v9, 0x0

    if-gtz v6, :cond_1

    move v5, v9

    goto :goto_0

    :cond_1
    iget v6, p0, Lcom/hjq/window/draggable/BaseDraggable;->j:I

    add-int/2addr v1, v4

    sub-int/2addr v6, v1

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v1

    int-to-float v1, v1

    cmpg-float v1, v1, v3

    if-gez v1, :cond_2

    move v5, v7

    goto :goto_0

    :cond_2
    int-to-float v1, v4

    div-float/2addr v1, v8

    add-float/2addr v5, v1

    iget v1, p0, Lcom/hjq/window/draggable/BaseDraggable;->j:I

    int-to-float v1, v1

    div-float/2addr v5, v1

    :goto_0
    int-to-float v1, v2

    cmpg-float v6, v1, v3

    if-gtz v6, :cond_3

    move v7, v9

    goto :goto_1

    :cond_3
    iget v6, p0, Lcom/hjq/window/draggable/BaseDraggable;->k:I

    add-int/2addr v2, v0

    sub-int/2addr v6, v2

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    goto :goto_1

    :cond_4
    int-to-float v0, v0

    div-float/2addr v0, v8

    add-float/2addr v1, v0

    iget v0, p0, Lcom/hjq/window/draggable/BaseDraggable;->k:I

    int-to-float v0, v0

    div-float/2addr v1, v0

    move v7, v1

    :goto_1
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_5

    return-void

    :cond_5
    new-instance v8, Lcom/hjq/window/draggable/BaseDraggable$a;

    const-wide/16 v9, 0x64

    move-object v1, v8

    move-object v2, p0

    move v3, v5

    move v5, v7

    move-wide v6, v9

    invoke-direct/range {v1 .. v7}, Lcom/hjq/window/draggable/BaseDraggable$a;-><init>(Lcom/hjq/window/draggable/BaseDraggable;FIFJ)V

    invoke-virtual {v0, v8}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public onScreenRotateInfluenceCoordinateChangeFinish()V
    .locals 0

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->refreshWindowInfo()V

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->refreshLocationCoordinate()V

    return-void
.end method

.method public refreshLocationCoordinate()V
    .locals 2

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v0, 0x0

    aget v0, v1, v0

    iput v0, p0, Lcom/hjq/window/draggable/BaseDraggable;->l:I

    const/4 v0, 0x1

    aget v0, v1, v0

    iput v0, p0, Lcom/hjq/window/draggable/BaseDraggable;->m:I

    return-void
.end method

.method public refreshWindowInfo()V
    .locals 3

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/hjq/window/draggable/BaseDraggable;->i:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/hjq/window/draggable/BaseDraggable;->i:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/hjq/window/draggable/BaseDraggable;->j:I

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v0

    iput v1, p0, Lcom/hjq/window/draggable/BaseDraggable;->k:I

    iput v2, p0, Lcom/hjq/window/draggable/BaseDraggable;->n:I

    iput v0, p0, Lcom/hjq/window/draggable/BaseDraggable;->o:I

    return-void
.end method

.method public setAllowMoveToScreenNotch(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/hjq/window/draggable/BaseDraggable;->g:Z

    return-void
.end method

.method public setDraggingCallback(Lcom/hjq/window/draggable/BaseDraggable$DraggingCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/hjq/window/draggable/BaseDraggable;->h:Lcom/hjq/window/draggable/BaseDraggable$DraggingCallback;

    return-void
.end method

.method public start(Lcom/hjq/window/EasyWindow;)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hjq/window/EasyWindow<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/hjq/window/draggable/BaseDraggable;->e:Lcom/hjq/window/EasyWindow;

    invoke-virtual {p1}, Lcom/hjq/window/EasyWindow;->getDecorView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/hjq/window/draggable/BaseDraggable;->f:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lcom/hjq/window/draggable/BaseDraggable;->f:Landroid/view/View;

    new-instance v0, Lcom/sunia/HTREnginev2/an;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/an;-><init>(Lcom/hjq/window/draggable/BaseDraggable;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateLocation(FF)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->isAllowMoveToScreenNotch()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/hjq/window/draggable/BaseDraggable;->updateLocation(FFZ)V

    return-void
.end method

.method public updateLocation(FFZ)V
    .locals 0

    float-to-int p1, p1

    float-to-int p2, p2

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/hjq/window/draggable/BaseDraggable;->updateLocation(IIZ)V

    return-void
.end method

.method public updateLocation(IIZ)V
    .locals 6

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/hjq/window/draggable/BaseDraggable;->updateWindowCoordinate(II)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getSafeInsetRect()Landroid/graphics/Rect;

    move-result-object p3

    if-nez p3, :cond_1

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/hjq/window/draggable/BaseDraggable;->updateWindowCoordinate(II)V

    return-void

    .line 6
    :cond_1
    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-lez v0, :cond_2

    iget v0, p3, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_2

    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-lez v0, :cond_2

    iget v0, p3, Landroid/graphics/Rect;->bottom:I

    if-lez v0, :cond_2

    .line 7
    invoke-virtual {p0, p1, p2}, Lcom/hjq/window/draggable/BaseDraggable;->updateWindowCoordinate(II)V

    return-void

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/hjq/window/draggable/BaseDraggable;->e:Lcom/hjq/window/EasyWindow;

    invoke-virtual {v0}, Lcom/hjq/window/EasyWindow;->getViewWidth()I

    move-result v0

    .line 9
    iget-object v1, p0, Lcom/hjq/window/draggable/BaseDraggable;->e:Lcom/hjq/window/EasyWindow;

    invoke-virtual {v1}, Lcom/hjq/window/EasyWindow;->getViewHeight()I

    move-result v1

    .line 10
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getWindowWidth()I

    move-result v2

    .line 11
    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getWindowHeight()I

    move-result v3

    .line 12
    iget v4, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getWindowInvisibleWidth()I

    move-result v5

    sub-int/2addr v4, v5

    if-ge p1, v4, :cond_3

    .line 13
    iget p1, p3, Landroid/graphics/Rect;->left:I

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getWindowInvisibleWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    .line 14
    :cond_3
    iget v4, p3, Landroid/graphics/Rect;->right:I

    sub-int v5, v2, v4

    sub-int/2addr v5, v0

    if-le p1, v5, :cond_4

    sub-int/2addr v2, v4

    sub-int p1, v2, v0

    .line 15
    :cond_4
    :goto_0
    iget v0, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getWindowInvisibleHeight()I

    move-result v2

    sub-int/2addr v0, v2

    if-ge p2, v0, :cond_5

    .line 16
    iget p2, p3, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->getWindowInvisibleHeight()I

    move-result p3

    sub-int/2addr p2, p3

    goto :goto_1

    .line 17
    :cond_5
    iget p3, p3, Landroid/graphics/Rect;->bottom:I

    sub-int v0, v3, p3

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_6

    sub-int/2addr v3, p3

    sub-int p2, v3, v1

    .line 18
    :cond_6
    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/hjq/window/draggable/BaseDraggable;->updateWindowCoordinate(II)V

    return-void
.end method

.method public updateWindowCoordinate(II)V
    .locals 3

    iget-object v0, p0, Lcom/hjq/window/draggable/BaseDraggable;->e:Lcom/hjq/window/EasyWindow;

    invoke-virtual {v0}, Lcom/hjq/window/EasyWindow;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const v2, 0x800033

    if-ne v1, v2, :cond_1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ne v1, p1, :cond_1

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    if-ne v1, p2, :cond_1

    return-void

    :cond_1
    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iput p2, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object p1, p0, Lcom/hjq/window/draggable/BaseDraggable;->e:Lcom/hjq/window/EasyWindow;

    invoke-virtual {p1}, Lcom/hjq/window/EasyWindow;->update()V

    invoke-virtual {p0}, Lcom/hjq/window/draggable/BaseDraggable;->refreshLocationCoordinate()V

    return-void
.end method
