.class public Lcom/sunia/HTREnginev2/r1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/sunia/HTREnginev2/p1;)D
    .locals 8

    .line 13
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/p1;->getPoints()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/s1;

    const-wide/16 v1, 0x0

    .line 15
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/s1;

    .line 17
    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v4

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v6

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v0

    sub-float/2addr v6, v0

    float-to-double v6, v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v4

    add-double/2addr v1, v4

    move-object v0, v3

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static a(Lcom/sunia/HTREnginev2/p1;ID)Lcom/sunia/HTREnginev2/p1;
    .locals 19

    move/from16 v0, p1

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Lcom/sunia/HTREnginev2/p1;->getPoints()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/s1;

    .line 4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/HTREnginev2/s1;

    goto :goto_0

    :cond_0
    move-object v4, v3

    .line 5
    :goto_0
    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v5

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v7

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    add-int/lit8 v0, v0, -0x1

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    :goto_1
    if-gt v9, v0, :cond_3

    :goto_2
    add-double v12, v10, v5

    int-to-double v14, v0

    mul-double v16, v12, v14

    int-to-double v7, v9

    mul-double v7, v7, p2

    cmpg-double v16, v16, v7

    if-gtz v16, :cond_1

    .line 6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_1

    .line 7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/s1;

    .line 8
    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v5

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v6

    sub-float/2addr v5, v6

    float-to-double v5, v5

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v7

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v8

    sub-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v5

    move-wide v10, v12

    move-object/from16 v18, v4

    move-object v4, v3

    move-object/from16 v3, v18

    goto :goto_2

    :cond_1
    const-wide/16 v12, 0x0

    cmpl-double v16, v5, v12

    const/high16 v17, 0x3f800000    # 1.0f

    if-lez v16, :cond_2

    div-double/2addr v7, v14

    sub-double/2addr v7, v10

    div-double/2addr v7, v5

    double-to-float v7, v7

    goto :goto_3

    :cond_2
    move/from16 v7, v17

    :goto_3
    sub-float v17, v17, v7

    .line 9
    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v8

    mul-float v8, v8, v17

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v14

    mul-float/2addr v14, v7

    add-float/2addr v8, v14

    .line 10
    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v14

    mul-float v17, v17, v14

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v14

    mul-float/2addr v7, v14

    add-float v7, v17, v7

    .line 11
    new-instance v14, Lcom/sunia/HTREnginev2/s1;

    invoke-direct {v14, v8, v7}, Lcom/sunia/HTREnginev2/s1;-><init>(FF)V

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 12
    :cond_3
    new-instance v0, Lcom/sunia/HTREnginev2/p1;

    invoke-direct {v0, v1}, Lcom/sunia/HTREnginev2/p1;-><init>(Ljava/util/List;)V

    return-object v0
.end method
