.class public final Lcom/sunia/HTREnginev2/vrl;
.super Lcom/sunia/HTREnginev2/unm;
.source "SourceFile"


# instance fields
.field public final a:Lcom/google/android/material/sidesheet/SideSheetBehavior;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/sidesheet/SideSheetBehavior<",
            "+",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;)V
    .locals 0
    .param p1    # Lcom/google/android/material/sidesheet/SideSheetBehavior;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/material/sidesheet/SideSheetBehavior<",
            "+",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/sunia/HTREnginev2/unm;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vrl;->a:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    return-void
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 0
    .param p1    # Landroid/view/ViewGroup$MarginLayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return p0
.end method

.method public b(I)F
    .locals 1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/vrl;->e()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/vrl;->d()I

    move-result p0

    int-to-float p0, p0

    sub-float p0, v0, p0

    int-to-float p1, p1

    sub-float/2addr v0, p1

    div-float/2addr v0, p0

    return v0
.end method

.method public c(Landroid/view/ViewGroup$MarginLayoutParams;)I
    .locals 0
    .param p1    # Landroid/view/ViewGroup$MarginLayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return p0
.end method

.method public d()I
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/vrl;->e()I

    move-result v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/vrl;->a:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->w()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vrl;->a:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->A()I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public e()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vrl;->a:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->D()I

    move-result p0

    return p0
.end method

.method public f()I
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vrl;->a:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->D()I

    move-result p0

    return p0
.end method

.method public g()I
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/vrl;->d()I

    move-result p0

    return p0
.end method

.method public h(Landroid/view/View;)I
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Landroid/view/View;",
            ">(TV;)I"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vrl;->a:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->A()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public i(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)I
    .locals 0
    .param p1    # Landroidx/coordinatorlayout/widget/CoordinatorLayout;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p0

    return p0
.end method

.method public j()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public k(F)Z
    .locals 0

    const/4 p0, 0x0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public l(Landroid/view/View;)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result p1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/vrl;->e()I

    move-result v0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/vrl;->d()I

    move-result p0

    add-int/2addr v0, p0

    div-int/lit8 v0, v0, 0x2

    if-le p1, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public m(FF)Z
    .locals 0

    invoke-static {p1, p2}, Lcom/sunia/HTREnginev2/oom;->a(FF)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vrl;->a:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getSignificantVelocityThreshold()I

    move-result p0

    int-to-float p0, p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public n(Landroid/view/View;F)Z
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/view/View;->getRight()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vrl;->a:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {v0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->getHideFriction()F

    move-result v0

    mul-float/2addr p2, v0

    add-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vrl;->a:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->z()F

    move-result p0

    cmpl-float p0, p1, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public o(Landroid/view/ViewGroup$MarginLayoutParams;I)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup$MarginLayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    return-void
.end method

.method public p(Landroid/view/ViewGroup$MarginLayoutParams;II)V
    .locals 0
    .param p1    # Landroid/view/ViewGroup$MarginLayoutParams;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/sunia/HTREnginev2/vrl;->a:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    invoke-virtual {p0}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->D()I

    move-result p0

    if-gt p2, p0, :cond_0

    sub-int/2addr p0, p2

    iput p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    :cond_0
    return-void
.end method
