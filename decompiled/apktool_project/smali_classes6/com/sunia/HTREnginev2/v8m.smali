.class public final synthetic Lcom/sunia/HTREnginev2/v8m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic e:Lcom/google/android/material/search/b;

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:Landroid/graphics/Rect;


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/material/search/b;FFLandroid/graphics/Rect;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sunia/HTREnginev2/v8m;->e:Lcom/google/android/material/search/b;

    iput p2, p0, Lcom/sunia/HTREnginev2/v8m;->f:F

    iput p3, p0, Lcom/sunia/HTREnginev2/v8m;->g:F

    iput-object p4, p0, Lcom/sunia/HTREnginev2/v8m;->h:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/v8m;->e:Lcom/google/android/material/search/b;

    iget v1, p0, Lcom/sunia/HTREnginev2/v8m;->f:F

    iget v2, p0, Lcom/sunia/HTREnginev2/v8m;->g:F

    iget-object p0, p0, Lcom/sunia/HTREnginev2/v8m;->h:Landroid/graphics/Rect;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/google/android/material/search/b;->d(Lcom/google/android/material/search/b;FFLandroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void
.end method
