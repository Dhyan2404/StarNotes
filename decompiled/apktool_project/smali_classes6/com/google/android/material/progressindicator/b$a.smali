.class public Lcom/google/android/material/progressindicator/b$a;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/progressindicator/b;->s()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic e:Lcom/google/android/material/progressindicator/b;


# direct methods
.method public constructor <init>(Lcom/google/android/material/progressindicator/b;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/material/progressindicator/b$a;->e:Lcom/google/android/material/progressindicator/b;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationRepeat(Landroid/animation/Animator;)V

    iget-object p1, p0, Lcom/google/android/material/progressindicator/b$a;->e:Lcom/google/android/material/progressindicator/b;

    invoke-static {p1}, Lcom/google/android/material/progressindicator/b;->k(Lcom/google/android/material/progressindicator/b;)I

    move-result v0

    add-int/lit8 v0, v0, 0x4

    iget-object p0, p0, Lcom/google/android/material/progressindicator/b$a;->e:Lcom/google/android/material/progressindicator/b;

    invoke-static {p0}, Lcom/google/android/material/progressindicator/b;->m(Lcom/google/android/material/progressindicator/b;)Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;

    move-result-object p0

    iget-object p0, p0, Lcom/google/android/material/progressindicator/BaseProgressIndicatorSpec;->indicatorColors:[I

    array-length p0, p0

    rem-int/2addr v0, p0

    invoke-static {p1, v0}, Lcom/google/android/material/progressindicator/b;->l(Lcom/google/android/material/progressindicator/b;I)I

    return-void
.end method
