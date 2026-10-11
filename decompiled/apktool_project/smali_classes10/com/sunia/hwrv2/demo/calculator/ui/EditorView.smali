.class public Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/c1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$BackgroundView;,
        Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$ModelView;,
        Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$CaptureView;
    }
.end annotation


# instance fields
.field private backgroundView:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$BackgroundView;

.field private canScale:Z

.field private captureView:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$CaptureView;

.field private editor:Lcom/sunia/HTREnginev2/q;

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private final mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

.field private modelView:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$ModelView;

.field private final timeOrigin:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->canScale:Z

    new-instance v0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$1;

    invoke-direct {v0, p0}, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$1;-><init>(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;)V

    iput-object v0, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->mScaleGestureListener:Landroid/view/ScaleGestureDetector$OnScaleGestureListener;

    new-instance v1, Landroid/view/ScaleGestureDetector;

    invoke-direct {v1, p1, v0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v1, p2}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    iget-object v0, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p2}, Landroid/view/ScaleGestureDetector;->setStylusScaleEnabled(Z)V

    new-instance p2, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$BackgroundView;

    invoke-direct {p2, p0, p1}, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$BackgroundView;-><init>(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->backgroundView:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$BackgroundView;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p2, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$ModelView;

    invoke-direct {p2, p0, p1}, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$ModelView;-><init>(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->modelView:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$ModelView;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance p2, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$CaptureView;

    invoke-direct {p2, p0, p1}, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$CaptureView;-><init>(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->captureView:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$CaptureView;

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->timeOrigin:J

    return-void
.end method

.method public static synthetic access$000(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;)Lcom/sunia/HTREnginev2/q;
    .locals 0

    iget-object p0, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->editor:Lcom/sunia/HTREnginev2/q;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->canScale:Z

    return p0
.end method

.method public static synthetic access$200(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;)Landroid/view/ScaleGestureDetector;
    .locals 0

    iget-object p0, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;)J
    .locals 2

    iget-wide v0, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->timeOrigin:J

    return-wide v0
.end method


# virtual methods
.method public getDpiX()F
    .locals 0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->xdpi:F

    return p0
.end method

.method public getDpiY()F
    .locals 0

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->ydpi:F

    return p0
.end method

.method public invalidate(Ljava/util/EnumSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/EnumSet<",
            "Lcom/sunia/HTREnginev2/c1$a;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/sunia/HTREnginev2/c1$a;->c:Lcom/sunia/HTREnginev2/c1$a;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->backgroundView:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$BackgroundView;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    sget-object v0, Lcom/sunia/HTREnginev2/c1$a;->b:Lcom/sunia/HTREnginev2/c1$a;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->modelView:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$ModelView;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    sget-object v0, Lcom/sunia/HTREnginev2/c1$a;->a:Lcom/sunia/HTREnginev2/c1$a;

    invoke-virtual {p1, v0}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->captureView:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$CaptureView;

    invoke-virtual {p0}, Landroid/view/View;->postInvalidateOnAnimation()V

    :cond_2
    return-void
.end method

.method public isCanScale()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->canScale:Z

    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    sget-object p1, Lcom/sunia/HTREnginev2/c1;->d:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->invalidate(Ljava/util/EnumSet;)V

    return-void
.end method

.method public onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-object p0, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->editor:Lcom/sunia/HTREnginev2/q;

    if-eqz p0, :cond_0

    new-instance p3, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 p4, 0x0

    invoke-direct {p3, p4, p1, p4, p2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;-><init>(FFFF)V

    invoke-virtual {p0, p3}, Lcom/sunia/HTREnginev2/q;->a(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)V

    :cond_0
    return-void
.end method

.method public setCanScale(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->canScale:Z

    return-void
.end method

.method public setEditor(Lcom/sunia/calculatorv2/ink/editor/IEditor;)V
    .locals 4

    check-cast p1, Lcom/sunia/HTREnginev2/q;

    iput-object p1, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->editor:Lcom/sunia/HTREnginev2/q;

    new-instance v0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v3, v2}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;-><init>(FFFF)V

    invoke-virtual {p1, v0}, Lcom/sunia/HTREnginev2/q;->a(Lcom/sunia/calculatorv2/ink/graphics/BoundBox;)V

    iget-object p1, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->editor:Lcom/sunia/HTREnginev2/q;

    invoke-virtual {p1, p0}, Lcom/sunia/HTREnginev2/q;->setRenderTarget(Lcom/sunia/HTREnginev2/c1;)V

    sget-object p1, Lcom/sunia/HTREnginev2/c1;->d:Ljava/util/EnumSet;

    invoke-virtual {p0, p1}, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->invalidate(Ljava/util/EnumSet;)V

    return-void
.end method
