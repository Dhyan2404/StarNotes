.class Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$1;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field private lastFocusX:F

.field private lastFocusY:F

.field final synthetic this$0:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;


# direct methods
.method public constructor <init>(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;)V
    .locals 0

    iput-object p1, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$1;->this$0:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$1;->lastFocusX:F

    iput p1, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$1;->lastFocusY:F

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v6

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v7

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v3

    float-to-double v0, v3

    const-wide v4, 0x3fc999999999999aL    # 0.2

    cmpl-double p1, v0, v4

    if-ltz p1, :cond_1

    const/high16 p1, 0x40a00000    # 5.0f

    cmpg-float p1, v3, p1

    if-gtz p1, :cond_1

    iget p1, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$1;->lastFocusX:F

    sub-float p1, v6, p1

    iget v0, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$1;->lastFocusY:F

    sub-float v0, v7, v0

    invoke-static {p1}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x0

    move v1, p1

    move v2, v1

    goto :goto_0

    :cond_0
    move v1, p1

    move v2, v0

    :goto_0
    iget-object p1, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$1;->this$0:Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;

    invoke-static {p1}, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;->access$000(Lcom/sunia/hwrv2/demo/calculator/ui/EditorView;)Lcom/sunia/HTREnginev2/q;

    move-result-object v0

    move v4, v6

    move v5, v7

    invoke-virtual/range {v0 .. v5}, Lcom/sunia/HTREnginev2/q;->a(FFFFF)V

    :cond_1
    iput v6, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$1;->lastFocusX:F

    iput v7, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$1;->lastFocusY:F

    const/4 p0, 0x1

    return p0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v0

    iput v0, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$1;->lastFocusX:F

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result p1

    iput p1, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$1;->lastFocusY:F

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    const/high16 p1, 0x7fc00000    # Float.NaN

    iput p1, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$1;->lastFocusY:F

    iput p1, p0, Lcom/sunia/hwrv2/demo/calculator/ui/EditorView$1;->lastFocusX:F

    return-void
.end method
