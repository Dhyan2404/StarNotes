.class public Lcom/sunia/HTREnginev2/wnd$a;
.super Lcom/sunia/HTREnginev2/wnd;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sunia/HTREnginev2/wnd;->d(Lcom/google/android/material/carousel/CarouselLayoutManager;)Lcom/sunia/HTREnginev2/wnd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Lcom/google/android/material/carousel/CarouselLayoutManager;


# direct methods
.method public constructor <init>(ILcom/google/android/material/carousel/CarouselLayoutManager;)V
    .locals 0

    iput-object p2, p0, Lcom/sunia/HTREnginev2/wnd$a;->b:Lcom/google/android/material/carousel/CarouselLayoutManager;

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/sunia/HTREnginev2/wnd;-><init>(ILcom/sunia/HTREnginev2/wnd$a;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 2

    iget p0, p2, Landroid/graphics/RectF;->top:F

    iget v0, p3, Landroid/graphics/RectF;->top:F

    cmpg-float v1, p0, v0

    if-gez v1, :cond_0

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v1, v1, v0

    if-lez v1, :cond_0

    sub-float/2addr v0, p0

    iget p0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr p0, v0

    iput p0, p1, Landroid/graphics/RectF;->top:F

    iget p0, p3, Landroid/graphics/RectF;->top:F

    add-float/2addr p0, v0

    iput p0, p3, Landroid/graphics/RectF;->top:F

    :cond_0
    iget p0, p2, Landroid/graphics/RectF;->bottom:F

    iget p3, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p0, p3

    if-lez v0, :cond_1

    iget v0, p2, Landroid/graphics/RectF;->top:F

    cmpg-float v0, v0, p3

    if-gez v0, :cond_1

    sub-float/2addr p0, p3

    iget p3, p1, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p3, p0

    iget v0, p1, Landroid/graphics/RectF;->top:F

    invoke-static {p3, v0}, Ljava/lang/Math;->max(FF)F

    move-result p3

    iput p3, p1, Landroid/graphics/RectF;->bottom:F

    iget p1, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr p1, p0

    iget p0, p2, Landroid/graphics/RectF;->top:F

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iput p0, p2, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method public e(Landroid/view/View;)I
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wnd$a;->b:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result p0

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr p0, p1

    iget p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr p0, p1

    return p0
.end method

.method public f(Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)F
    .locals 0

    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p0, p1

    int-to-float p0, p0

    return p0
.end method

.method public g(FFFF)Landroid/graphics/RectF;
    .locals 0

    new-instance p0, Landroid/graphics/RectF;

    const/4 p4, 0x0

    sub-float/2addr p1, p3

    invoke-direct {p0, p4, p3, p2, p1}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object p0
.end method

.method public h()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wnd$a;->b:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result p0

    return p0
.end method

.method public i()I
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/wnd$a;->h()I

    move-result p0

    return p0
.end method

.method public j()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wnd$a;->b:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    move-result p0

    return p0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/wnd$a;->b:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/wnd$a;->b:Lcom/google/android/material/carousel/CarouselLayoutManager;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    move-result p0

    sub-int/2addr v0, p0

    return v0
.end method

.method public l()I
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/wnd$a;->m()I

    move-result p0

    return p0
.end method

.method public m()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public n(Landroid/view/View;II)V
    .locals 6

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/wnd$a;->j()I

    move-result v2

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/wnd$a;->e(Landroid/view/View;)I

    move-result v0

    add-int v4, v2, v0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/wnd$a;->b:Lcom/google/android/material/carousel/CarouselLayoutManager;

    move-object v1, p1

    move v3, p2

    move v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecoratedWithMargins(Landroid/view/View;IIII)V

    return-void
.end method

.method public o(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 3

    iget p0, p2, Landroid/graphics/RectF;->bottom:F

    iget v0, p3, Landroid/graphics/RectF;->top:F

    cmpg-float p0, p0, v0

    const/high16 v0, 0x3f800000    # 1.0f

    if-gtz p0, :cond_0

    iget p0, p1, Landroid/graphics/RectF;->bottom:F

    float-to-double v1, p0

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-float p0, v1

    sub-float/2addr p0, v0

    iput p0, p1, Landroid/graphics/RectF;->bottom:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    invoke-static {v1, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    iput p0, p1, Landroid/graphics/RectF;->top:F

    :cond_0
    iget p0, p2, Landroid/graphics/RectF;->top:F

    iget p2, p3, Landroid/graphics/RectF;->bottom:F

    cmpl-float p0, p0, p2

    if-ltz p0, :cond_1

    iget p0, p1, Landroid/graphics/RectF;->top:F

    float-to-double p2, p0

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-float p0, p2

    add-float/2addr p0, v0

    iput p0, p1, Landroid/graphics/RectF;->top:F

    iget p2, p1, Landroid/graphics/RectF;->bottom:F

    invoke-static {p0, p2}, Ljava/lang/Math;->max(FF)F

    move-result p0

    iput p0, p1, Landroid/graphics/RectF;->bottom:F

    :cond_1
    return-void
.end method

.method public p(Landroid/view/View;Landroid/graphics/Rect;FF)V
    .locals 0

    iget p0, p2, Landroid/graphics/Rect;->top:I

    int-to-float p0, p0

    add-float/2addr p0, p3

    sub-float/2addr p4, p0

    float-to-int p0, p4

    invoke-virtual {p1, p0}, Landroid/view/View;->offsetTopAndBottom(I)V

    return-void
.end method
