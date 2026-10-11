.class public final synthetic Lcom/sunia/HTREnginev2/ppm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic e:Lcom/google/android/material/sidesheet/SideSheetBehavior;

.field public final synthetic f:Landroid/view/ViewGroup$MarginLayoutParams;

.field public final synthetic g:I

.field public final synthetic h:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/sidesheet/SideSheetBehavior;Landroid/view/ViewGroup$MarginLayoutParams;ILandroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/ppm;->e:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/ppm;->f:Landroid/view/ViewGroup$MarginLayoutParams;

    iput p3, p0, Lcom/sunia/HTREnginev2/ppm;->g:I

    iput-object p4, p0, Lcom/sunia/HTREnginev2/ppm;->h:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/ppm;->e:Lcom/google/android/material/sidesheet/SideSheetBehavior;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/ppm;->f:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, p0, Lcom/sunia/HTREnginev2/ppm;->g:I

    iget-object p0, p0, Lcom/sunia/HTREnginev2/ppm;->h:Landroid/view/View;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/google/android/material/sidesheet/SideSheetBehavior;->c(Lcom/google/android/material/sidesheet/SideSheetBehavior;Landroid/view/ViewGroup$MarginLayoutParams;ILandroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
