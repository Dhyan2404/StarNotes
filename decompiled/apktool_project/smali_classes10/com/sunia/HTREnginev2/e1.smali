.class public abstract Lcom/sunia/HTREnginev2/e1;
.super Lcom/sunia/HTREnginev2/k;
.source "SourceFile"


# instance fields
.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:F

.field public final h:F

.field public i:F

.field public j:Landroid/graphics/Path;


# virtual methods
.method public a(F)Landroid/graphics/Path;
    .locals 21

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/sunia/HTREnginev2/e1;->j:Landroid/graphics/Path;

    const/high16 v2, 0x3f000000    # 0.5f

    if-eqz v1, :cond_0

    iget v1, v0, Lcom/sunia/HTREnginev2/e1;->i:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v2

    if-ltz v1, :cond_3

    .line 2
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/sunia/HTREnginev2/e1;->h()Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, v0, Lcom/sunia/HTREnginev2/e1;->j:Landroid/graphics/Path;

    .line 3
    iget-object v1, v0, Lcom/sunia/HTREnginev2/e1;->e:Ljava/lang/String;

    const-string v3, "arrow-head"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 4
    iget-object v4, v0, Lcom/sunia/HTREnginev2/e1;->f:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v1, :cond_1

    if-eqz v3, :cond_3

    .line 5
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/sunia/HTREnginev2/e1;->f()Lcom/sunia/HTREnginev2/s1;

    move-result-object v4

    .line 6
    invoke-virtual/range {p0 .. p0}, Lcom/sunia/HTREnginev2/e1;->d()Lcom/sunia/HTREnginev2/s1;

    move-result-object v5

    const v6, 0x3e499326

    const-wide v7, 0x3fe921fb54442d18L    # 0.7853981633974483

    if-eqz v1, :cond_2

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcom/sunia/HTREnginev2/e1;->g()D

    move-result-wide v9

    .line 8
    invoke-static {v9, v10}, Lcom/sunia/HTREnginev2/x;->a(D)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 9
    iget v1, v0, Lcom/sunia/HTREnginev2/e1;->g:F

    mul-float v11, p1, v6

    invoke-static {v4, v5}, Lcom/sunia/HTREnginev2/s1;->a(Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;)D

    move-result-wide v12

    double-to-float v12, v12

    mul-float/2addr v12, v2

    invoke-static {v11, v12}, Ljava/lang/Math;->min(FF)F

    move-result v11

    invoke-static {v1, v11}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 10
    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v11

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v12

    .line 11
    iget-object v13, v0, Lcom/sunia/HTREnginev2/e1;->j:Landroid/graphics/Path;

    float-to-double v14, v11

    move/from16 v16, v3

    float-to-double v2, v1

    add-double v17, v9, v7

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->cos(D)D

    move-result-wide v19

    mul-double v19, v19, v2

    add-double v6, v14, v19

    double-to-float v6, v6

    float-to-double v7, v12

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->sin(D)D

    move-result-wide v17

    mul-double v17, v17, v2

    move-wide/from16 v19, v2

    add-double v1, v7, v17

    double-to-float v1, v1

    invoke-virtual {v13, v6, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 12
    iget-object v1, v0, Lcom/sunia/HTREnginev2/e1;->j:Landroid/graphics/Path;

    invoke-virtual {v1, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 13
    iget-object v1, v0, Lcom/sunia/HTREnginev2/e1;->j:Landroid/graphics/Path;

    const-wide v11, 0x3fe921fb54442d18L    # 0.7853981633974483

    sub-double/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v11, v11, v19

    add-double/2addr v14, v11

    double-to-float v2, v14

    invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v9, v9, v19

    add-double/2addr v7, v9

    double-to-float v6, v7

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0

    :cond_2
    move/from16 v16, v3

    :goto_0
    if-eqz v16, :cond_3

    .line 14
    invoke-virtual/range {p0 .. p0}, Lcom/sunia/HTREnginev2/e1;->e()D

    move-result-wide v1

    .line 15
    invoke-static {v1, v2}, Lcom/sunia/HTREnginev2/x;->a(D)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 16
    iget v6, v0, Lcom/sunia/HTREnginev2/e1;->h:F

    const v3, 0x3e499326

    mul-float v3, v3, p1

    invoke-static {v4, v5}, Lcom/sunia/HTREnginev2/s1;->a(Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;)D

    move-result-wide v7

    double-to-float v4, v7

    const/high16 v7, 0x3f000000    # 0.5f

    mul-float/2addr v4, v7

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    invoke-static {v6, v3}, Ljava/lang/Math;->min(FF)F

    move-result v3

    .line 17
    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v4

    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v5

    .line 18
    iget-object v6, v0, Lcom/sunia/HTREnginev2/e1;->j:Landroid/graphics/Path;

    float-to-double v7, v4

    float-to-double v9, v3

    const-wide v11, 0x3fe921fb54442d18L    # 0.7853981633974483

    add-double v13, v1, v11

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double/2addr v11, v9

    add-double/2addr v11, v7

    double-to-float v3, v11

    float-to-double v11, v5

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double/2addr v13, v9

    add-double/2addr v13, v11

    double-to-float v13, v13

    invoke-virtual {v6, v3, v13}, Landroid/graphics/Path;->moveTo(FF)V

    .line 19
    iget-object v3, v0, Lcom/sunia/HTREnginev2/e1;->j:Landroid/graphics/Path;

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 20
    iget-object v3, v0, Lcom/sunia/HTREnginev2/e1;->j:Landroid/graphics/Path;

    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    sub-double/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double/2addr v4, v9

    add-double/2addr v7, v4

    double-to-float v4, v7

    invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v1

    mul-double/2addr v9, v1

    add-double/2addr v11, v9

    double-to-float v1, v11

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 21
    :cond_3
    iget-object v0, v0, Lcom/sunia/HTREnginev2/e1;->j:Landroid/graphics/Path;

    return-object v0
.end method

.method public a()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;
    .locals 4

    .line 23
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 24
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/e1;->h()Landroid/graphics/Path;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 25
    new-instance p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v3, v0, Landroid/graphics/RectF;->top:F

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, v1, v2, v3, v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;-><init>(FFFF)V

    return-object p0
.end method

.method public a(Landroid/graphics/Paint;Landroid/graphics/Canvas;F)V
    .locals 0

    .line 22
    invoke-virtual {p0, p3}, Lcom/sunia/HTREnginev2/e1;->a(F)Landroid/graphics/Path;

    move-result-object p0

    invoke-virtual {p2, p0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method public abstract d()Lcom/sunia/HTREnginev2/s1;
.end method

.method public abstract e()D
.end method

.method public abstract f()Lcom/sunia/HTREnginev2/s1;
.end method

.method public abstract g()D
.end method

.method public abstract h()Landroid/graphics/Path;
.end method
