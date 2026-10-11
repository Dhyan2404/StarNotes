.class public Lcom/sunia/HTREnginev2/cpe;
.super Lcom/google/android/material/shape/MaterialShapeDrawable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/cpe$b;,
        Lcom/sunia/HTREnginev2/cpe$c;,
        Lcom/sunia/HTREnginev2/cpe$d;
    }
.end annotation


# instance fields
.field public q0:Lcom/sunia/HTREnginev2/cpe$b;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/cpe$b;)V
    .locals 0
    .param p1    # Lcom/sunia/HTREnginev2/cpe$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0, p1}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>(Lcom/google/android/material/shape/MaterialShapeDrawable$MaterialShapeDrawableState;)V

    .line 3
    iput-object p1, p0, Lcom/sunia/HTREnginev2/cpe;->q0:Lcom/sunia/HTREnginev2/cpe$b;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/sunia/HTREnginev2/cpe$b;Lcom/sunia/HTREnginev2/cpe$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/cpe;-><init>(Lcom/sunia/HTREnginev2/cpe$b;)V

    return-void
.end method

.method public static A(Lcom/sunia/HTREnginev2/cpe$b;)Lcom/sunia/HTREnginev2/cpe;
    .locals 1
    .param p0    # Lcom/sunia/HTREnginev2/cpe$b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Lcom/sunia/HTREnginev2/cpe$d;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/cpe$d;-><init>(Lcom/sunia/HTREnginev2/cpe$b;)V

    return-object v0
.end method

.method public static synthetic y(Lcom/sunia/HTREnginev2/cpe$b;)Lcom/sunia/HTREnginev2/cpe;
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/cpe;->A(Lcom/sunia/HTREnginev2/cpe$b;)Lcom/sunia/HTREnginev2/cpe;

    move-result-object p0

    return-object p0
.end method

.method public static z(Lcom/google/android/material/shape/ShapeAppearanceModel;)Lcom/sunia/HTREnginev2/cpe;
    .locals 3
    .param p0    # Lcom/google/android/material/shape/ShapeAppearanceModel;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    new-instance v0, Lcom/sunia/HTREnginev2/cpe$b;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lcom/google/android/material/shape/ShapeAppearanceModel;

    invoke-direct {p0}, Lcom/google/android/material/shape/ShapeAppearanceModel;-><init>()V

    :goto_0
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/sunia/HTREnginev2/cpe$b;-><init>(Lcom/google/android/material/shape/ShapeAppearanceModel;Landroid/graphics/RectF;Lcom/sunia/HTREnginev2/cpe$a;)V

    invoke-static {v0}, Lcom/sunia/HTREnginev2/cpe;->A(Lcom/sunia/HTREnginev2/cpe$b;)Lcom/sunia/HTREnginev2/cpe;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public B()Z
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/cpe;->q0:Lcom/sunia/HTREnginev2/cpe$b;

    invoke-static {p0}, Lcom/sunia/HTREnginev2/cpe$b;->a(Lcom/sunia/HTREnginev2/cpe$b;)Landroid/graphics/RectF;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public C()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/sunia/HTREnginev2/cpe;->D(FFFF)V

    return-void
.end method

.method public D(FFFF)V
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cpe;->q0:Lcom/sunia/HTREnginev2/cpe$b;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/cpe$b;->a(Lcom/sunia/HTREnginev2/cpe$b;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->left:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cpe;->q0:Lcom/sunia/HTREnginev2/cpe$b;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/cpe$b;->a(Lcom/sunia/HTREnginev2/cpe$b;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->top:F

    cmpl-float v0, p2, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cpe;->q0:Lcom/sunia/HTREnginev2/cpe$b;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/cpe$b;->a(Lcom/sunia/HTREnginev2/cpe$b;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, p3, v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/cpe;->q0:Lcom/sunia/HTREnginev2/cpe$b;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/cpe$b;->a(Lcom/sunia/HTREnginev2/cpe$b;)Landroid/graphics/RectF;

    move-result-object v0

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p4, v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/cpe;->q0:Lcom/sunia/HTREnginev2/cpe$b;

    invoke-static {v0}, Lcom/sunia/HTREnginev2/cpe$b;->a(Lcom/sunia/HTREnginev2/cpe$b;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-virtual {p0}, Lcom/google/android/material/shape/MaterialShapeDrawable;->invalidateSelf()V

    :cond_1
    return-void
.end method

.method public E(Landroid/graphics/RectF;)V
    .locals 3
    .param p1    # Landroid/graphics/RectF;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget v0, p1, Landroid/graphics/RectF;->left:F

    iget v1, p1, Landroid/graphics/RectF;->top:F

    iget v2, p1, Landroid/graphics/RectF;->right:F

    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/sunia/HTREnginev2/cpe;->D(FFFF)V

    return-void
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    new-instance v0, Lcom/sunia/HTREnginev2/cpe$b;

    iget-object v1, p0, Lcom/sunia/HTREnginev2/cpe;->q0:Lcom/sunia/HTREnginev2/cpe$b;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/sunia/HTREnginev2/cpe$b;-><init>(Lcom/sunia/HTREnginev2/cpe$b;Lcom/sunia/HTREnginev2/cpe$a;)V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/cpe;->q0:Lcom/sunia/HTREnginev2/cpe$b;

    return-object p0
.end method
