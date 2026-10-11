.class public Lcom/google/android/material/transition/platform/FadeThroughProvider$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/platform/FadeThroughProvider;->a(Landroid/view/View;FFFFF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:F


# direct methods
.method public constructor <init>(Landroid/view/View;FFFF)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$a;->e:Landroid/view/View;

    iput p2, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$a;->f:F

    iput p3, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$a;->g:F

    iput p4, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$a;->h:F

    iput p5, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$a;->i:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iget-object v0, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$a;->e:Landroid/view/View;

    iget v1, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$a;->f:F

    iget v2, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$a;->g:F

    iget v3, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$a;->h:F

    iget p0, p0, Lcom/google/android/material/transition/platform/FadeThroughProvider$a;->i:F

    invoke-static {v1, v2, v3, p0, p1}, Lcom/sunia/HTREnginev2/jnn;->n(FFFFF)F

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
