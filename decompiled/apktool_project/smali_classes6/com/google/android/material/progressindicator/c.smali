.class public abstract Lcom/google/android/material/progressindicator/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/animation/Animator;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

.field public final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/material/progressindicator/c;->b:Ljava/util/List;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/google/android/material/progressindicator/c;->b:Ljava/util/List;

    new-instance v2, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;

    invoke-direct {v2}, Lcom/google/android/material/progressindicator/DrawingDelegate$ActiveIndicator;-><init>()V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public b(III)F
    .locals 0

    sub-int/2addr p1, p2

    int-to-float p0, p1

    int-to-float p1, p3

    div-float/2addr p0, p1

    return p0
.end method

.method public abstract c()V
.end method

.method public abstract d(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .param p1    # Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
.end method

.method public e(Lcom/google/android/material/progressindicator/IndeterminateDrawable;)V
    .locals 0
    .param p1    # Lcom/google/android/material/progressindicator/IndeterminateDrawable;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/material/progressindicator/c;->a:Lcom/google/android/material/progressindicator/IndeterminateDrawable;

    return-void
.end method

.method public abstract f()V
.end method

.method public abstract g()V
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end method

.method public abstract h(F)V
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end method

.method public abstract i()V
.end method

.method public abstract j()V
.end method
