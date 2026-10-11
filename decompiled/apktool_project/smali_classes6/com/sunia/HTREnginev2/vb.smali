.class public final synthetic Lcom/sunia/HTREnginev2/vb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic e:Lcom/google/android/material/appbar/AppBarLayout;

.field public final synthetic f:Landroid/content/res/ColorStateList;

.field public final synthetic g:Landroid/content/res/ColorStateList;

.field public final synthetic h:Lcom/google/android/material/shape/MaterialShapeDrawable;

.field public final synthetic i:Ljava/lang/Integer;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/appbar/AppBarLayout;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Lcom/google/android/material/shape/MaterialShapeDrawable;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/vb;->e:Lcom/google/android/material/appbar/AppBarLayout;

    iput-object p2, p0, Lcom/sunia/HTREnginev2/vb;->f:Landroid/content/res/ColorStateList;

    iput-object p3, p0, Lcom/sunia/HTREnginev2/vb;->g:Landroid/content/res/ColorStateList;

    iput-object p4, p0, Lcom/sunia/HTREnginev2/vb;->h:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iput-object p5, p0, Lcom/sunia/HTREnginev2/vb;->i:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    iget-object v0, p0, Lcom/sunia/HTREnginev2/vb;->e:Lcom/google/android/material/appbar/AppBarLayout;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/vb;->f:Landroid/content/res/ColorStateList;

    iget-object v2, p0, Lcom/sunia/HTREnginev2/vb;->g:Landroid/content/res/ColorStateList;

    iget-object v3, p0, Lcom/sunia/HTREnginev2/vb;->h:Lcom/google/android/material/shape/MaterialShapeDrawable;

    iget-object v4, p0, Lcom/sunia/HTREnginev2/vb;->i:Ljava/lang/Integer;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/google/android/material/appbar/AppBarLayout;->a(Lcom/google/android/material/appbar/AppBarLayout;Landroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;Lcom/google/android/material/shape/MaterialShapeDrawable;Ljava/lang/Integer;Landroid/animation/ValueAnimator;)V

    return-void
.end method
