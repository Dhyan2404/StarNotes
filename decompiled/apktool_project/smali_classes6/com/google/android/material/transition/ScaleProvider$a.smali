.class public Lcom/google/android/material/transition/ScaleProvider$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/transition/ScaleProvider;->a(Landroid/view/View;FF)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Landroid/view/View;

.field public final synthetic f:F

.field public final synthetic g:F


# direct methods
.method public constructor <init>(Landroid/view/View;FF)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/transition/ScaleProvider$a;->e:Landroid/view/View;

    iput p2, p0, Lcom/google/android/material/transition/ScaleProvider$a;->f:F

    iput p3, p0, Lcom/google/android/material/transition/ScaleProvider$a;->g:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lcom/google/android/material/transition/ScaleProvider$a;->e:Landroid/view/View;

    iget v0, p0, Lcom/google/android/material/transition/ScaleProvider$a;->f:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    iget-object p1, p0, Lcom/google/android/material/transition/ScaleProvider$a;->e:Landroid/view/View;

    iget p0, p0, Lcom/google/android/material/transition/ScaleProvider$a;->g:F

    invoke-virtual {p1, p0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
