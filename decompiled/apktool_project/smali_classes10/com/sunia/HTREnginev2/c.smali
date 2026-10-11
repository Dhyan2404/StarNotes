.class public Lcom/sunia/HTREnginev2/c;
.super Lcom/sunia/HTREnginev2/e1;
.source "SourceFile"


# instance fields
.field public final k:F

.field public final l:F

.field public final m:F

.field public final n:F

.field public final o:F

.field public final p:F

.field public final q:F


# virtual methods
.method public a(D)Lcom/sunia/HTREnginev2/s1;
    .locals 12

    iget v0, p0, Lcom/sunia/HTREnginev2/c;->o:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    iget v2, p0, Lcom/sunia/HTREnginev2/c;->o:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    iget v4, p0, Lcom/sunia/HTREnginev2/c;->m:F

    float-to-double v4, v4

    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    iget v6, p0, Lcom/sunia/HTREnginev2/c;->n:F

    float-to-double v6, v6

    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide p1

    mul-double/2addr v6, p1

    new-instance p1, Lcom/sunia/HTREnginev2/s1;

    iget p2, p0, Lcom/sunia/HTREnginev2/c;->k:F

    float-to-double v8, p2

    mul-double v10, v4, v0

    add-double/2addr v8, v10

    mul-double v10, v6, v2

    sub-double/2addr v8, v10

    double-to-float p2, v8

    iget p0, p0, Lcom/sunia/HTREnginev2/c;->l:F

    float-to-double v8, p0

    mul-double/2addr v4, v2

    add-double/2addr v8, v4

    mul-double/2addr v6, v0

    add-double/2addr v8, v6

    double-to-float p0, v8

    invoke-direct {p1, p2, p0}, Lcom/sunia/HTREnginev2/s1;-><init>(FF)V

    return-object p1
.end method

.method public c()Ljava/lang/String;
    .locals 0

    const-string p0, "arc"

    return-object p0
.end method

.method public d()Lcom/sunia/HTREnginev2/s1;
    .locals 2

    iget v0, p0, Lcom/sunia/HTREnginev2/c;->p:F

    iget v1, p0, Lcom/sunia/HTREnginev2/c;->q:F

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/c;->a(D)Lcom/sunia/HTREnginev2/s1;

    move-result-object p0

    return-object p0
.end method

.method public e()D
    .locals 6

    iget v0, p0, Lcom/sunia/HTREnginev2/c;->n:F

    float-to-double v0, v0

    iget v2, p0, Lcom/sunia/HTREnginev2/c;->p:F

    iget v3, p0, Lcom/sunia/HTREnginev2/c;->q:F

    add-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/sunia/HTREnginev2/c;->m:F

    neg-float v2, v2

    float-to-double v2, v2

    iget v4, p0, Lcom/sunia/HTREnginev2/c;->p:F

    iget v5, p0, Lcom/sunia/HTREnginev2/c;->q:F

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/sunia/HTREnginev2/c;->q:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x0

    :goto_0
    add-double/2addr v0, v2

    iget p0, p0, Lcom/sunia/HTREnginev2/c;->o:F

    float-to-double v2, p0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public f()Lcom/sunia/HTREnginev2/s1;
    .locals 2

    iget v0, p0, Lcom/sunia/HTREnginev2/c;->p:F

    float-to-double v0, v0

    invoke-virtual {p0, v0, v1}, Lcom/sunia/HTREnginev2/c;->a(D)Lcom/sunia/HTREnginev2/s1;

    move-result-object p0

    return-object p0
.end method

.method public g()D
    .locals 6

    iget v0, p0, Lcom/sunia/HTREnginev2/c;->n:F

    float-to-double v0, v0

    iget v2, p0, Lcom/sunia/HTREnginev2/c;->p:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget v2, p0, Lcom/sunia/HTREnginev2/c;->m:F

    neg-float v2, v2

    float-to-double v2, v2

    iget v4, p0, Lcom/sunia/HTREnginev2/c;->p:F

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    iget v2, p0, Lcom/sunia/HTREnginev2/c;->q:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-lez v2, :cond_0

    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_0
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    :goto_0
    add-double/2addr v0, v2

    iget p0, p0, Lcom/sunia/HTREnginev2/c;->o:F

    float-to-double v2, p0

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public h()Landroid/graphics/Path;
    .locals 15

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iget v1, p0, Lcom/sunia/HTREnginev2/c;->o:F

    const/high16 v2, 0x43340000    # 180.0f

    mul-float/2addr v1, v2

    float-to-double v3, v1

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v3, v5

    double-to-float v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->postRotate(F)Z

    iget v1, p0, Lcom/sunia/HTREnginev2/c;->k:F

    iget v3, p0, Lcom/sunia/HTREnginev2/c;->l:F

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iget v3, p0, Lcom/sunia/HTREnginev2/c;->p:F

    mul-float/2addr v3, v2

    float-to-double v3, v3

    div-double/2addr v3, v5

    double-to-float v12, v3

    iget v3, p0, Lcom/sunia/HTREnginev2/c;->q:F

    mul-float/2addr v3, v2

    float-to-double v2, v3

    div-double/2addr v2, v5

    double-to-float v13, v2

    const v2, 0x43b38000    # 359.0f

    cmpl-float v2, v13, v2

    if-gtz v2, :cond_1

    const v2, -0x3c4c8000    # -359.0f

    cmpg-float v2, v13, v2

    if-gez v2, :cond_0

    goto :goto_0

    :cond_0
    iget v10, p0, Lcom/sunia/HTREnginev2/c;->m:F

    neg-float v8, v10

    iget v11, p0, Lcom/sunia/HTREnginev2/c;->n:F

    neg-float v9, v11

    const/4 v14, 0x1

    move-object v7, v1

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Path;->arcTo(FFFFFFZ)V

    goto :goto_1

    :cond_1
    :goto_0
    iget v10, p0, Lcom/sunia/HTREnginev2/c;->m:F

    neg-float v8, v10

    iget v11, p0, Lcom/sunia/HTREnginev2/c;->n:F

    neg-float v9, v11

    sget-object v12, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    move-object v7, v1

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Path;->addOval(FFFFLandroid/graphics/Path$Direction;)V

    :goto_1
    new-instance p0, Landroid/graphics/Path;

    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0, v1, v0}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    return-object p0
.end method

.method public i()F
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/c;->p:F

    return p0
.end method

.method public j()F
    .locals 0

    iget p0, p0, Lcom/sunia/HTREnginev2/c;->q:F

    return p0
.end method
