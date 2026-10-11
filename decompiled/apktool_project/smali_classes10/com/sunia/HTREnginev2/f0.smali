.class public Lcom/sunia/HTREnginev2/f0;
.super Lcom/sunia/HTREnginev2/e1;
.source "SourceFile"


# instance fields
.field public final k:Lcom/sunia/HTREnginev2/s1;

.field public final l:Lcom/sunia/HTREnginev2/s1;


# virtual methods
.method public c()Ljava/lang/String;
    .locals 0

    const-string p0, "line"

    return-object p0
.end method

.method public d()Lcom/sunia/HTREnginev2/s1;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/f0;->l:Lcom/sunia/HTREnginev2/s1;

    return-object p0
.end method

.method public e()D
    .locals 4

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/f0;->g()D

    move-result-wide v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public f()Lcom/sunia/HTREnginev2/s1;
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/f0;->k:Lcom/sunia/HTREnginev2/s1;

    return-object p0
.end method

.method public g()D
    .locals 4

    iget-object v0, p0, Lcom/sunia/HTREnginev2/f0;->l:Lcom/sunia/HTREnginev2/s1;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/f0;->k:Lcom/sunia/HTREnginev2/s1;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    iget-object v2, p0, Lcom/sunia/HTREnginev2/f0;->l:Lcom/sunia/HTREnginev2/s1;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/f0;->k:Lcom/sunia/HTREnginev2/s1;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result p0

    sub-float/2addr v2, p0

    float-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    return-wide v0
.end method

.method public h()Landroid/graphics/Path;
    .locals 3

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/f0;->k:Lcom/sunia/HTREnginev2/s1;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v1

    iget-object v2, p0, Lcom/sunia/HTREnginev2/f0;->k:Lcom/sunia/HTREnginev2/s1;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/f0;->l:Lcom/sunia/HTREnginev2/s1;

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v1

    iget-object p0, p0, Lcom/sunia/HTREnginev2/f0;->l:Lcom/sunia/HTREnginev2/s1;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->lineTo(FF)V

    return-object v0
.end method
