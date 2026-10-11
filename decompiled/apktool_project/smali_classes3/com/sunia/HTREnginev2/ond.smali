.class public Lcom/sunia/HTREnginev2/ond;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/rnd;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/sunia/HTREnginev2/qnd;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/ond;->p(Lcom/sunia/HTREnginev2/qnd;)Lcom/sunia/HTREnginev2/esl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/esl;->d()F

    move-result p0

    return p0
.end method

.method public b(Lcom/sunia/HTREnginev2/qnd;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/ond;->p(Lcom/sunia/HTREnginev2/qnd;)Lcom/sunia/HTREnginev2/esl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/esl;->c()F

    move-result p0

    return p0
.end method

.method public c(Lcom/sunia/HTREnginev2/qnd;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/ond;->a(Lcom/sunia/HTREnginev2/qnd;)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public d(Lcom/sunia/HTREnginev2/qnd;F)V
    .locals 0

    invoke-interface {p1}, Lcom/sunia/HTREnginev2/qnd;->e()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public e(Lcom/sunia/HTREnginev2/qnd;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/ond;->b(Lcom/sunia/HTREnginev2/qnd;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/ond;->o(Lcom/sunia/HTREnginev2/qnd;F)V

    return-void
.end method

.method public f(Lcom/sunia/HTREnginev2/qnd;)F
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/ond;->a(Lcom/sunia/HTREnginev2/qnd;)F

    move-result p0

    const/high16 p1, 0x40000000    # 2.0f

    mul-float/2addr p0, p1

    return p0
.end method

.method public g(Lcom/sunia/HTREnginev2/qnd;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/ond;->p(Lcom/sunia/HTREnginev2/qnd;)Lcom/sunia/HTREnginev2/esl;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/esl;->f(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public h(Lcom/sunia/HTREnginev2/qnd;)V
    .locals 4

    invoke-interface {p1}, Lcom/sunia/HTREnginev2/qnd;->f()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    invoke-interface {p1, p0, p0, p0, p0}, Lcom/sunia/HTREnginev2/qnd;->setShadowPadding(IIII)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/ond;->b(Lcom/sunia/HTREnginev2/qnd;)F

    move-result v0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/ond;->a(Lcom/sunia/HTREnginev2/qnd;)F

    move-result p0

    invoke-interface {p1}, Lcom/sunia/HTREnginev2/qnd;->d()Z

    move-result v1

    invoke-static {v0, p0, v1}, Lcom/sunia/HTREnginev2/fsl;->c(FFZ)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-interface {p1}, Lcom/sunia/HTREnginev2/qnd;->d()Z

    move-result v2

    invoke-static {v0, p0, v2}, Lcom/sunia/HTREnginev2/fsl;->d(FFZ)F

    move-result p0

    float-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    invoke-interface {p1, v1, p0, v1, p0}, Lcom/sunia/HTREnginev2/qnd;->setShadowPadding(IIII)V

    return-void
.end method

.method public i(Lcom/sunia/HTREnginev2/qnd;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/ond;->b(Lcom/sunia/HTREnginev2/qnd;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/sunia/HTREnginev2/ond;->o(Lcom/sunia/HTREnginev2/qnd;F)V

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k(Lcom/sunia/HTREnginev2/qnd;F)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/ond;->p(Lcom/sunia/HTREnginev2/qnd;)Lcom/sunia/HTREnginev2/esl;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/esl;->h(F)V

    return-void
.end method

.method public l(Lcom/sunia/HTREnginev2/qnd;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 0

    new-instance p2, Lcom/sunia/HTREnginev2/esl;

    invoke-direct {p2, p3, p4}, Lcom/sunia/HTREnginev2/esl;-><init>(Landroid/content/res/ColorStateList;F)V

    invoke-interface {p1, p2}, Lcom/sunia/HTREnginev2/qnd;->b(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p1}, Lcom/sunia/HTREnginev2/qnd;->e()Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p2, p5}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0, p1, p6}, Lcom/sunia/HTREnginev2/ond;->o(Lcom/sunia/HTREnginev2/qnd;F)V

    return-void
.end method

.method public m(Lcom/sunia/HTREnginev2/qnd;)F
    .locals 0

    invoke-interface {p1}, Lcom/sunia/HTREnginev2/qnd;->e()Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result p0

    return p0
.end method

.method public n(Lcom/sunia/HTREnginev2/qnd;)Landroid/content/res/ColorStateList;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/ond;->p(Lcom/sunia/HTREnginev2/qnd;)Lcom/sunia/HTREnginev2/esl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/esl;->b()Landroid/content/res/ColorStateList;

    move-result-object p0

    return-object p0
.end method

.method public o(Lcom/sunia/HTREnginev2/qnd;F)V
    .locals 3

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/ond;->p(Lcom/sunia/HTREnginev2/qnd;)Lcom/sunia/HTREnginev2/esl;

    move-result-object v0

    invoke-interface {p1}, Lcom/sunia/HTREnginev2/qnd;->f()Z

    move-result v1

    invoke-interface {p1}, Lcom/sunia/HTREnginev2/qnd;->d()Z

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Lcom/sunia/HTREnginev2/esl;->g(FZZ)V

    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/ond;->h(Lcom/sunia/HTREnginev2/qnd;)V

    return-void
.end method

.method public final p(Lcom/sunia/HTREnginev2/qnd;)Lcom/sunia/HTREnginev2/esl;
    .locals 0

    invoke-interface {p1}, Lcom/sunia/HTREnginev2/qnd;->c()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/esl;

    return-object p0
.end method
