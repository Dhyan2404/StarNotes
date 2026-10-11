.class public Lcom/sunia/HTREnginev2/pnd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/rnd;


# instance fields
.field public final a:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/pnd;->a:Landroid/graphics/RectF;

    return-void
.end method


# virtual methods
.method public a(Lcom/sunia/HTREnginev2/qnd;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pnd;->q(Lcom/sunia/HTREnginev2/qnd;)Lcom/sunia/HTREnginev2/fsl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/fsl;->g()F

    move-result p0

    return p0
.end method

.method public b(Lcom/sunia/HTREnginev2/qnd;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pnd;->q(Lcom/sunia/HTREnginev2/qnd;)Lcom/sunia/HTREnginev2/fsl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/fsl;->i()F

    move-result p0

    return p0
.end method

.method public c(Lcom/sunia/HTREnginev2/qnd;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pnd;->q(Lcom/sunia/HTREnginev2/qnd;)Lcom/sunia/HTREnginev2/fsl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/fsl;->k()F

    move-result p0

    return p0
.end method

.method public d(Lcom/sunia/HTREnginev2/qnd;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pnd;->q(Lcom/sunia/HTREnginev2/qnd;)Lcom/sunia/HTREnginev2/fsl;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/fsl;->r(F)V

    return-void
.end method

.method public e(Lcom/sunia/HTREnginev2/qnd;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pnd;->q(Lcom/sunia/HTREnginev2/qnd;)Lcom/sunia/HTREnginev2/fsl;

    move-result-object v0

    invoke-interface {p1}, Lcom/sunia/HTREnginev2/qnd;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sunia/HTREnginev2/fsl;->m(Z)V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pnd;->h(Lcom/sunia/HTREnginev2/qnd;)V

    return-void
.end method

.method public f(Lcom/sunia/HTREnginev2/qnd;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pnd;->q(Lcom/sunia/HTREnginev2/qnd;)Lcom/sunia/HTREnginev2/fsl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/fsl;->j()F

    move-result p0

    return p0
.end method

.method public g(Lcom/sunia/HTREnginev2/qnd;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pnd;->q(Lcom/sunia/HTREnginev2/qnd;)Lcom/sunia/HTREnginev2/fsl;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/fsl;->o(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public h(Lcom/sunia/HTREnginev2/qnd;)V
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pnd;->q(Lcom/sunia/HTREnginev2/qnd;)Lcom/sunia/HTREnginev2/fsl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sunia/HTREnginev2/fsl;->h(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pnd;->c(Lcom/sunia/HTREnginev2/qnd;)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pnd;->f(Lcom/sunia/HTREnginev2/qnd;)F

    move-result p0

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    invoke-interface {p1, v1, p0}, Lcom/sunia/HTREnginev2/qnd;->a(II)V

    iget p0, v0, Landroid/graphics/Rect;->left:I

    iget v1, v0, Landroid/graphics/Rect;->top:I

    iget v2, v0, Landroid/graphics/Rect;->right:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-interface {p1, p0, v1, v2, v0}, Lcom/sunia/HTREnginev2/qnd;->setShadowPadding(IIII)V

    return-void
.end method

.method public i(Lcom/sunia/HTREnginev2/qnd;)V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/pnd$a;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/pnd$a;-><init>(Lcom/sunia/HTREnginev2/pnd;)V

    sput-object v0, Lcom/sunia/HTREnginev2/fsl;->s:Lcom/sunia/HTREnginev2/fsl$a;

    return-void
.end method

.method public k(Lcom/sunia/HTREnginev2/qnd;F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pnd;->q(Lcom/sunia/HTREnginev2/qnd;)Lcom/sunia/HTREnginev2/fsl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sunia/HTREnginev2/fsl;->p(F)V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pnd;->h(Lcom/sunia/HTREnginev2/qnd;)V

    return-void
.end method

.method public l(Lcom/sunia/HTREnginev2/qnd;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 6

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/sunia/HTREnginev2/pnd;->p(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Lcom/sunia/HTREnginev2/fsl;

    move-result-object p2

    invoke-interface {p1}, Lcom/sunia/HTREnginev2/qnd;->d()Z

    move-result p3

    invoke-virtual {p2, p3}, Lcom/sunia/HTREnginev2/fsl;->m(Z)V

    invoke-interface {p1, p2}, Lcom/sunia/HTREnginev2/qnd;->b(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pnd;->h(Lcom/sunia/HTREnginev2/qnd;)V

    return-void
.end method

.method public m(Lcom/sunia/HTREnginev2/qnd;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pnd;->q(Lcom/sunia/HTREnginev2/qnd;)Lcom/sunia/HTREnginev2/fsl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/fsl;->l()F

    move-result p0

    return p0
.end method

.method public n(Lcom/sunia/HTREnginev2/qnd;)Landroid/content/res/ColorStateList;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pnd;->q(Lcom/sunia/HTREnginev2/qnd;)Lcom/sunia/HTREnginev2/fsl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/fsl;->f()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public o(Lcom/sunia/HTREnginev2/qnd;F)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pnd;->q(Lcom/sunia/HTREnginev2/qnd;)Lcom/sunia/HTREnginev2/fsl;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/sunia/HTREnginev2/fsl;->q(F)V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/pnd;->h(Lcom/sunia/HTREnginev2/qnd;)V

    return-void
.end method

.method public final p(Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)Lcom/sunia/HTREnginev2/fsl;
    .locals 6

    new-instance p0, Lcom/sunia/HTREnginev2/fsl;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, p0

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/sunia/HTREnginev2/fsl;-><init>(Landroid/content/res/Resources;Landroid/content/res/ColorStateList;FFF)V

    return-object p0
.end method

.method public final q(Lcom/sunia/HTREnginev2/qnd;)Lcom/sunia/HTREnginev2/fsl;
    .locals 0

    invoke-interface {p1}, Lcom/sunia/HTREnginev2/qnd;->c()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/fsl;

    return-object p0
.end method
