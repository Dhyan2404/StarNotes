.class public Lcom/google/android/material/progressindicator/e$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/progressindicator/e;->q()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/android/material/progressindicator/e;


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/e;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/progressindicator/e$a;->e:Lcom/google/android/material/progressindicator/e;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/google/android/material/progressindicator/e$a;->e:Lcom/google/android/material/progressindicator/e;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/e;->k(Lcom/google/android/material/progressindicator/e;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iget-object v2, p0, Lcom/google/android/material/progressindicator/e$a;->e:Lcom/google/android/material/progressindicator/e;

    invoke-static {v2}, Lcom/google/android/material/progressindicator/e;->m(Lcom/google/android/material/progressindicator/e;)Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    move-result-object v2

    iget-object v2, v2, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length v2, v2

    rem-int/2addr v0, v2

    invoke-static {p1, v0}, Lcom/google/android/material/progressindicator/e;->l(Lcom/google/android/material/progressindicator/e;I)I

    iget-object p0, p0, Lcom/google/android/material/progressindicator/e$a;->e:Lcom/google/android/material/progressindicator/e;

    invoke-static {p0, v1}, Lcom/google/android/material/progressindicator/e;->n(Lcom/google/android/material/progressindicator/e;Z)Z

    return-void
.end method
