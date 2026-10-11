.class public Lcom/sunia/HTREnginev2/d1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/s1;Ljava/lang/String;Landroid/graphics/Matrix;FLcom/sunia/HTREnginev2/k1;Landroid/graphics/Canvas;)V
    .locals 6

    const v0, 0x3ca14285

    mul-float/2addr p4, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result p3

    div-float/2addr p4, p3

    invoke-virtual {p5, p4}, Lcom/sunia/HTREnginev2/k1;->a(F)Lcom/sunia/HTREnginev2/i1;

    move-result-object p3

    .line 2
    invoke-virtual {p3, p2}, Lcom/sunia/HTREnginev2/i1;->a(Ljava/lang/String;)Lcom/sunia/HTREnginev2/i1;

    move-result-object p2

    .line 3
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/p1;->getPath()Landroid/graphics/Path;

    move-result-object p3

    const-string p4, "stroke"

    invoke-virtual {p2, p4}, Lcom/sunia/HTREnginev2/i1;->a(Ljava/lang/String;)Lcom/sunia/HTREnginev2/i1;

    move-result-object p4

    invoke-virtual {p4}, Lcom/sunia/HTREnginev2/i1;->b()Landroid/graphics/Paint;

    move-result-object p4

    invoke-virtual {p6, p3, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/p1;->a()Lcom/sunia/HTREnginev2/s1;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v1

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v2

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v3

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v4

    const-string p0, "prediction"

    invoke-virtual {p2, p0}, Lcom/sunia/HTREnginev2/i1;->a(Ljava/lang/String;)Lcom/sunia/HTREnginev2/i1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/i1;->b()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public static a(Lcom/sunia/HTREnginev2/p1;Ljava/util/List;Lcom/sunia/calculatorv2/ink/model/e;Landroid/graphics/Matrix;FLcom/sunia/HTREnginev2/k1;Landroid/graphics/Canvas;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/HTREnginev2/p1;",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;",
            "Lcom/sunia/calculatorv2/ink/model/e;",
            "Landroid/graphics/Matrix;",
            "F",
            "Lcom/sunia/HTREnginev2/k1;",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    const v0, 0x3ca14285

    mul-float/2addr p4, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 68
    invoke-virtual {p3, v0}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result p3

    div-float/2addr p4, p3

    invoke-virtual {p5, p4}, Lcom/sunia/HTREnginev2/k1;->a(F)Lcom/sunia/HTREnginev2/i1;

    move-result-object p3

    const-string p4, "canvas"

    invoke-virtual {p3, p4}, Lcom/sunia/HTREnginev2/i1;->a(Ljava/lang/String;)Lcom/sunia/HTREnginev2/i1;

    move-result-object p3

    if-eqz p0, :cond_0

    .line 69
    new-instance p4, Lcom/sunia/HTREnginev2/p1;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/p1;->getPoints()Ljava/util/List;

    move-result-object p0

    invoke-direct {p4, p0}, Lcom/sunia/HTREnginev2/p1;-><init>(Ljava/util/List;)V

    invoke-virtual {p4}, Lcom/sunia/HTREnginev2/p1;->getBoundBox()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object p0, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->EMPTY:Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    .line 70
    :goto_0
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result p4

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result p0

    .line 71
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/sunia/HTREnginev2/p1;

    .line 72
    invoke-virtual {p5}, Lcom/sunia/HTREnginev2/p1;->getBoundBox()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p5

    .line 73
    invoke-virtual {p5}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v0

    cmpg-float v0, v0, p4

    if-gez v0, :cond_2

    .line 74
    invoke-virtual {p5}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result p4

    .line 75
    :cond_2
    invoke-virtual {p5}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v0

    cmpl-float v0, v0, p0

    if-lez v0, :cond_1

    .line 76
    invoke-virtual {p5}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result p0

    goto :goto_1

    .line 77
    :cond_3
    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/model/e;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sunia/calculatorv2/ink/model/f;

    .line 78
    invoke-virtual {p2}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p5

    if-eqz p5, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lcom/sunia/calculatorv2/ink/model/f;

    .line 79
    instance-of v0, p5, Lcom/sunia/calculatorv2/ink/model/MathElement;

    if-eqz v0, :cond_5

    .line 80
    invoke-virtual {p5}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v1

    cmpg-float v1, v1, p0

    if-gtz v1, :cond_5

    invoke-virtual {v0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v0

    cmpg-float v0, p4, v0

    if-gtz v0, :cond_5

    .line 82
    invoke-virtual {p5}, Lcom/sunia/calculatorv2/ink/model/f;->c()Ljava/util/List;

    move-result-object v0

    .line 83
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/m0;

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/m0;->d()F

    move-result v0

    const v1, 0x3d4ccccd    # 0.05f

    mul-float/2addr v0, v1

    goto :goto_3

    :cond_6
    const/4 v0, 0x0

    .line 84
    :goto_3
    invoke-virtual {p3}, Lcom/sunia/HTREnginev2/i1;->a()Landroid/graphics/Paint;

    move-result-object v1

    invoke-static {p5, v0, v1, p6}, Lcom/sunia/HTREnginev2/d1;->b(Lcom/sunia/calculatorv2/ink/model/f;FLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_7
    return-void
.end method

.method public static a(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/i1;Ljava/util/Set;ZLandroid/graphics/Canvas;F)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Lcom/sunia/HTREnginev2/i1;",
            "Ljava/util/Set<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;Z",
            "Landroid/graphics/Canvas;",
            "F)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v6, p2

    move-object/from16 v13, p4

    move-object/from16 v1, p1

    .line 16
    invoke-virtual {v1, v0}, Lcom/sunia/HTREnginev2/i1;->a(Lcom/sunia/calculatorv2/ink/model/f;)Lcom/sunia/HTREnginev2/i1;

    move-result-object v14

    const-string v1, "bounding-box"

    .line 17
    invoke-virtual {v14, v1}, Lcom/sunia/HTREnginev2/i1;->a(Ljava/lang/String;)Lcom/sunia/HTREnginev2/i1;

    move-result-object v1

    .line 18
    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/i1;->b()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {v1}, Lcom/sunia/HTREnginev2/i1;->a()Landroid/graphics/Paint;

    move-result-object v12

    .line 19
    instance-of v1, v0, Lcom/sunia/calculatorv2/ink/model/x;

    const-string v3, "glyph"

    if-eqz v1, :cond_0

    .line 20
    move-object v1, v0

    check-cast v1, Lcom/sunia/calculatorv2/ink/model/x;

    invoke-virtual {v14, v3}, Lcom/sunia/HTREnginev2/i1;->a(Ljava/lang/String;)Lcom/sunia/HTREnginev2/i1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/i1;->b()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/sunia/calculatorv2/ink/model/x;->a(Landroid/graphics/Paint;)V

    goto :goto_0

    .line 21
    :cond_0
    instance-of v1, v0, Lcom/sunia/calculatorv2/ink/model/MathElement;

    if-eqz v1, :cond_1

    .line 22
    move-object v1, v0

    check-cast v1, Lcom/sunia/calculatorv2/ink/model/MathElement;

    const-string v4, "generated"

    invoke-virtual {v14, v4}, Lcom/sunia/HTREnginev2/i1;->a(Ljava/lang/String;)Lcom/sunia/HTREnginev2/i1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/i1;->b()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/sunia/calculatorv2/ink/model/MathElement;->a(I)V

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/sunia/calculatorv2/ink/model/f;->h()Ljava/util/List;

    .line 24
    :cond_1
    :goto_0
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v12}, Landroid/graphics/Paint;->getColor()I

    move-result v1

    if-eqz v1, :cond_5

    :cond_2
    if-eqz p3, :cond_3

    .line 25
    invoke-virtual/range {p0 .. p0}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v1

    goto :goto_1

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v1

    .line 26
    :goto_1
    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v4

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v5

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v15

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v1

    cmpg-float v7, v4, v5

    if-gtz v7, :cond_5

    cmpg-float v7, v15, v1

    if-gtz v7, :cond_5

    .line 27
    invoke-virtual {v12}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    if-eqz v7, :cond_4

    move-object/from16 v7, p4

    move v8, v4

    move v9, v15

    move v10, v5

    move v11, v1

    .line 28
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 29
    :cond_4
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    if-eqz v7, :cond_5

    move-object/from16 v7, p4

    move v8, v4

    move v9, v15

    move v10, v5

    move v11, v1

    move-object v12, v2

    .line 30
    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 31
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/sunia/calculatorv2/ink/model/f;->d()Ljava/util/List;

    move-result-object v1

    .line 32
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    const-string v2, "stroke"

    .line 33
    invoke-virtual {v14, v2}, Lcom/sunia/HTREnginev2/i1;->a(Ljava/lang/String;)Lcom/sunia/HTREnginev2/i1;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/i1;->b()Landroid/graphics/Paint;

    move-result-object v2

    .line 34
    invoke-virtual {v2}, Landroid/graphics/Paint;->getColor()I

    move-result v4

    if-eqz v4, :cond_7

    .line 35
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/HTREnginev2/p1;

    .line 36
    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 37
    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/p1;->getPath()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v13, v5, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 38
    :cond_7
    invoke-interface {v6, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 39
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/sunia/calculatorv2/ink/model/f;->c()Ljava/util/List;

    move-result-object v1

    .line 40
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 41
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_9
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/k;

    .line 42
    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/k;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v14, v4}, Lcom/sunia/HTREnginev2/i1;->a(Ljava/lang/String;)Lcom/sunia/HTREnginev2/i1;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sunia/HTREnginev2/i1;->b()Landroid/graphics/Paint;

    move-result-object v4

    .line 43
    invoke-virtual {v4}, Landroid/graphics/Paint;->getColor()I

    move-result v5

    move/from16 v7, p5

    if-eqz v5, :cond_9

    .line 44
    invoke-virtual {v2, v4, v13, v7}, Lcom/sunia/HTREnginev2/k;->a(Landroid/graphics/Paint;Landroid/graphics/Canvas;F)V

    goto :goto_3

    :cond_a
    move/from16 v7, p5

    .line 45
    instance-of v1, v0, Lcom/sunia/calculatorv2/ink/model/a;

    if-eqz v1, :cond_c

    .line 46
    invoke-virtual/range {p0 .. p0}, Lcom/sunia/calculatorv2/ink/model/f;->e()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object v1

    .line 47
    move-object v2, v0

    check-cast v2, Lcom/sunia/calculatorv2/ink/model/a;

    invoke-virtual {v2}, Lcom/sunia/calculatorv2/ink/model/a;->a()Ljava/lang/String;

    move-result-object v2

    .line 48
    invoke-virtual {v14, v3}, Lcom/sunia/HTREnginev2/i1;->a(Ljava/lang/String;)Lcom/sunia/HTREnginev2/i1;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/i1;->b()Landroid/graphics/Paint;

    move-result-object v3

    .line 49
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    .line 50
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v8, 0x0

    invoke-virtual {v3, v2, v8, v5, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 51
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v8

    mul-float/2addr v5, v8

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v8

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    cmpl-float v5, v5, v8

    const/high16 v8, 0x3f000000    # 0.5f

    const v9, 0x33d6bf95    # 1.0E-7f

    if-ltz v5, :cond_b

    .line 52
    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v9

    div-float/2addr v5, v10

    .line 53
    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v9

    iget v10, v4, Landroid/graphics/Rect;->left:I

    int-to-float v10, v10

    mul-float/2addr v10, v5

    sub-float/2addr v9, v10

    .line 54
    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v10

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v1

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v5

    sub-float/2addr v1, v11

    mul-float/2addr v1, v8

    sub-float/2addr v10, v1

    iget v1, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    mul-float/2addr v1, v5

    sub-float/2addr v10, v1

    goto :goto_4

    .line 55
    :cond_b
    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getHeight()F

    move-result v5

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    add-float/2addr v10, v9

    div-float/2addr v5, v10

    .line 56
    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v9

    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getWidth()F

    move-result v10

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v11

    int-to-float v11, v11

    mul-float/2addr v11, v5

    sub-float/2addr v10, v11

    mul-float/2addr v10, v8

    add-float/2addr v9, v10

    iget v8, v4, Landroid/graphics/Rect;->left:I

    int-to-float v8, v8

    mul-float/2addr v8, v5

    sub-float/2addr v9, v8

    .line 57
    invoke-virtual {v1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v1

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    mul-float/2addr v4, v5

    sub-float v10, v1, v4

    .line 58
    :goto_4
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 59
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4, v3}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 60
    invoke-virtual {v4}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    div-float/2addr v3, v5

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 61
    invoke-virtual {v1, v5, v5, v9, v10}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 62
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->save()I

    .line 63
    invoke-virtual {v13, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 64
    invoke-virtual {v13, v2, v9, v10, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 65
    invoke-virtual/range {p4 .. p4}, Landroid/graphics/Canvas;->restore()V

    .line 66
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    move-object v1, v14

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    .line 67
    invoke-static/range {v0 .. v5}, Lcom/sunia/HTREnginev2/d1;->a(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/i1;Ljava/util/Set;ZLandroid/graphics/Canvas;F)V

    goto :goto_5

    :cond_d
    return-void
.end method

.method public static a(Lcom/sunia/calculatorv2/ink/model/f;Ljava/util/List;ZLandroid/graphics/Matrix;FLcom/sunia/HTREnginev2/k1;Landroid/graphics/Canvas;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/p1;",
            ">;Z",
            "Landroid/graphics/Matrix;",
            "F",
            "Lcom/sunia/HTREnginev2/k1;",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    .line 6
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 7
    invoke-virtual {p3, p1}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result p1

    div-float v5, p4, p1

    const p1, 0x3ca14285

    mul-float/2addr p1, v5

    .line 8
    invoke-virtual {p5, p1}, Lcom/sunia/HTREnginev2/k1;->a(F)Lcom/sunia/HTREnginev2/i1;

    move-result-object p1

    if-eqz p2, :cond_0

    const-string p3, "converted"

    goto :goto_0

    :cond_0
    const-string p3, "model"

    .line 9
    :goto_0
    invoke-virtual {p1, p3}, Lcom/sunia/HTREnginev2/i1;->a(Ljava/lang/String;)Lcom/sunia/HTREnginev2/i1;

    move-result-object v1

    move-object v0, p0

    move-object v2, v6

    move v3, p2

    move-object v4, p6

    invoke-static/range {v0 .. v5}, Lcom/sunia/HTREnginev2/d1;->a(Lcom/sunia/calculatorv2/ink/model/f;Lcom/sunia/HTREnginev2/i1;Ljava/util/Set;ZLandroid/graphics/Canvas;F)V

    const-string p0, "processing"

    .line 10
    invoke-virtual {p1, p0}, Lcom/sunia/HTREnginev2/i1;->a(Ljava/lang/String;)Lcom/sunia/HTREnginev2/i1;

    move-result-object p0

    .line 11
    invoke-interface {v6}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "stroke"

    .line 12
    invoke-virtual {p0, p1}, Lcom/sunia/HTREnginev2/i1;->a(Ljava/lang/String;)Lcom/sunia/HTREnginev2/i1;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/i1;->b()Landroid/graphics/Paint;

    move-result-object p0

    .line 13
    invoke-virtual {p0}, Landroid/graphics/Paint;->getColor()I

    move-result p1

    if-eqz p1, :cond_1

    .line 14
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sunia/HTREnginev2/p1;

    .line 15
    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/p1;->getPath()Landroid/graphics/Path;

    move-result-object p2

    invoke-virtual {p6, p2, p0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static a(Ljava/util/List;Landroid/graphics/Matrix;FLcom/sunia/HTREnginev2/k1;Landroid/graphics/Canvas;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/sunia/calculatorv2/ink/model/f;",
            ">;",
            "Landroid/graphics/Matrix;",
            "F",
            "Lcom/sunia/HTREnginev2/k1;",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    const v0, 0x3ca14285

    mul-float/2addr p2, v0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 85
    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result p1

    div-float/2addr p2, p1

    invoke-virtual {p3, p2}, Lcom/sunia/HTREnginev2/k1;->a(F)Lcom/sunia/HTREnginev2/i1;

    move-result-object p1

    const-string p2, "canvas"

    invoke-virtual {p1, p2}, Lcom/sunia/HTREnginev2/i1;->a(Ljava/lang/String;)Lcom/sunia/HTREnginev2/i1;

    move-result-object p1

    const-string p2, "highlighter"

    .line 86
    invoke-virtual {p1, p2}, Lcom/sunia/HTREnginev2/i1;->a(Ljava/lang/String;)Lcom/sunia/HTREnginev2/i1;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/i1;->b()Landroid/graphics/Paint;

    move-result-object p1

    .line 87
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    .line 88
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 89
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sunia/calculatorv2/ink/model/f;

    .line 90
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v1

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v2

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v3

    invoke-virtual {p1}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result v4

    move-object v0, p4

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static b(Lcom/sunia/calculatorv2/ink/model/f;FLandroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sunia/calculatorv2/ink/model/f<",
            "*>;F",
            "Landroid/graphics/Paint;",
            "Landroid/graphics/Canvas;",
            ")V"
        }
    .end annotation

    instance-of v0, p0, Lcom/sunia/calculatorv2/ink/model/i;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->g()Lcom/sunia/calculatorv2/ink/graphics/BoundBox;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getLeft()F

    move-result v0

    sub-float v2, v0, p1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getTop()F

    move-result v0

    sub-float v3, v0, p1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getRight()F

    move-result v0

    add-float v4, v0, p1

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/graphics/BoundBox;->getBottom()F

    move-result p0

    add-float v5, p0, p1

    move-object v1, p3

    move-object v6, p2

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/model/f;->f()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/calculatorv2/ink/model/f;

    invoke-static {v0, p1, p2, p3}, Lcom/sunia/HTREnginev2/d1;->b(Lcom/sunia/calculatorv2/ink/model/f;FLandroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
