.class public Lcom/sunia/HTREnginev2/q1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;)D
    .locals 8

    .line 30
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result p0

    .line 31
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result p1

    .line 32
    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v2

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result p2

    sub-float v3, v0, v1

    sub-float v4, p0, p1

    sub-float/2addr v2, v1

    sub-float/2addr p2, p1

    mul-float v5, v2, v2

    mul-float v6, p2, p2

    add-float/2addr v5, v6

    const/4 v6, 0x0

    cmpl-float v7, v5, v6

    if-lez v7, :cond_2

    mul-float/2addr v3, v2

    mul-float/2addr v4, p2

    add-float/2addr v3, v4

    div-float/2addr v3, v5

    cmpg-float v4, v3, v6

    if-gez v4, :cond_0

    goto :goto_0

    :cond_0
    const/high16 v6, 0x3f800000    # 1.0f

    cmpl-float v4, v3, v6

    if-lez v4, :cond_1

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    mul-float/2addr v2, v6

    add-float/2addr v1, v2

    mul-float/2addr v6, p2

    add-float/2addr p1, v6

    sub-float/2addr v0, v1

    float-to-double v0, v0

    sub-float/2addr p0, p1

    float-to-double p0, p0

    .line 33
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    return-wide p0

    :cond_2
    float-to-double p0, v3

    float-to-double v0, v4

    .line 34
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static a(Ljava/util/Iterator;)D
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/sunia/HTREnginev2/s1;",
            ">;)D"
        }
    .end annotation

    .line 2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/s1;

    .line 4
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/s1;

    .line 6
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

.method public static a(Ljava/util/List;Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;)D
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/s1;",
            ">;",
            "Lcom/sunia/HTREnginev2/s1;",
            "Lcom/sunia/HTREnginev2/s1;",
            ")D"
        }
    .end annotation

    .line 28
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, 0x0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/s1;

    .line 29
    invoke-static {v2, p1, p2}, Lcom/sunia/HTREnginev2/q1;->a(Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;)D

    move-result-wide v2

    cmpl-double v4, v2, v0

    if-lez v4, :cond_0

    move-wide v0, v2

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public static synthetic a(Lcom/sunia/calculatorv2/ink/util/Pair;)Lcom/sunia/HTREnginev2/s1;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sunia/HTREnginev2/q1;->m(Lcom/sunia/calculatorv2/ink/util/Pair;)Lcom/sunia/HTREnginev2/s1;

    move-result-object p0

    return-object p0
.end method

.method public static a(Ljava/util/List;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/s1;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/s1;",
            ">;"
        }
    .end annotation

    .line 7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    return-object p0

    .line 8
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/high16 v3, 0x7f800000    # Float.POSITIVE_INFINITY

    move v4, v3

    move v5, v4

    move v6, v5

    move-object v3, v2

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/HTREnginev2/s1;

    .line 9
    invoke-virtual {v7}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v8

    invoke-virtual {v7}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v9

    cmpg-float v10, v8, v4

    if-gez v10, :cond_2

    move-object v2, v7

    move-object v3, v2

    move v4, v8

    move v5, v9

    move v6, v5

    goto :goto_0

    :cond_2
    cmpl-float v8, v8, v4

    if-nez v8, :cond_1

    cmpg-float v8, v9, v5

    if-gez v8, :cond_3

    move-object v2, v7

    move v5, v9

    goto :goto_0

    :cond_3
    cmpl-float v8, v9, v6

    if-lez v8, :cond_1

    move-object v3, v7

    move v6, v9

    goto :goto_0

    .line 10
    :cond_4
    invoke-interface {p0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/z4p;

    invoke-direct {v0, v4}, Lcom/sunia/HTREnginev2/z4p;-><init>(F)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/a5p;

    invoke-direct {v0, v5, v4}, Lcom/sunia/HTREnginev2/a5p;-><init>(FF)V

    .line 11
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/b5p;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/b5p;-><init>()V

    .line 12
    invoke-static {v0}, Ljava/util/Comparator;->comparingDouble(Ljava/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v0

    new-instance v4, Lcom/sunia/HTREnginev2/c5p;

    invoke-direct {v4}, Lcom/sunia/HTREnginev2/c5p;-><init>()V

    invoke-interface {v0, v4}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/d5p;

    invoke-direct {v0}, Lcom/sunia/HTREnginev2/d5p;-><init>()V

    .line 13
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/BaseStream;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 17
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/s1;

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/s1;

    .line 20
    :goto_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-lt v4, v1, :cond_6

    .line 21
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sunia/HTREnginev2/s1;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v0, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/sunia/HTREnginev2/s1;

    invoke-static {v4, v7, v2}, Lcom/sunia/HTREnginev2/q1;->o(Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;)Z

    move-result v4

    if-eqz v4, :cond_5

    goto :goto_3

    .line 22
    :cond_5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v0, v4}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 23
    :cond_6
    :goto_3
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_7
    cmpl-float p0, v6, v5

    if-eqz p0, :cond_a

    .line 24
    :goto_4
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    if-lt p0, v1, :cond_9

    .line 25
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    sub-int/2addr p0, v1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/s1;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/s1;

    invoke-static {p0, v2, v3}, Lcom/sunia/HTREnginev2/q1;->o(Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;)Z

    move-result p0

    if-eqz p0, :cond_8

    goto :goto_5

    .line 26
    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_4

    .line 27
    :cond_9
    :goto_5
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    return-object v0
.end method

.method public static a(Lcom/sunia/HTREnginev2/p1;Lcom/sunia/HTREnginev2/p1;)Z
    .locals 7

    .line 43
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/p1;->getPoints()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/p1;->getPoints()Ljava/util/List;

    move-result-object p1

    .line 44
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-gt v0, v2, :cond_0

    goto :goto_2

    .line 45
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    .line 46
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/s1;

    .line 47
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 48
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sunia/HTREnginev2/s1;

    .line 49
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 50
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sunia/HTREnginev2/s1;

    .line 51
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 52
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sunia/HTREnginev2/s1;

    .line 53
    invoke-static {v0, v3, v5, v6}, Lcom/sunia/HTREnginev2/q1;->j(Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;)Z

    move-result v5

    if-eqz v5, :cond_1

    return v2

    :cond_1
    move-object v5, v6

    goto :goto_1

    :cond_2
    move-object v0, v3

    goto :goto_0

    :cond_3
    :goto_2
    return v1
.end method

.method public static a(Ljava/util/Iterator;Lcom/sunia/HTREnginev2/s1;)Z
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "Lcom/sunia/HTREnginev2/s1;",
            ">;",
            "Lcom/sunia/HTREnginev2/s1;",
            ")Z"
        }
    .end annotation

    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 36
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sunia/HTREnginev2/s1;

    .line 37
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 38
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v2

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result p1

    move-object v3, v0

    move v9, v1

    .line 39
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/sunia/HTREnginev2/s1;

    .line 41
    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v5

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v6

    invoke-virtual {v10}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v7

    invoke-virtual {v10}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v8

    move v3, v2

    move v4, p1

    invoke-static/range {v3 .. v8}, Lcom/sunia/HTREnginev2/q1;->g(FFFFFF)I

    move-result v3

    add-int/2addr v9, v3

    move-object v3, v10

    goto :goto_0

    .line 42
    :cond_0
    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v5

    invoke-virtual {v3}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v6

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v7

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v8

    move v3, v2

    move v4, p1

    invoke-static/range {v3 .. v8}, Lcom/sunia/HTREnginev2/q1;->g(FFFFFF)I

    move-result p0

    add-int/2addr v9, p0

    if-eqz v9, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static synthetic b(Lcom/sunia/calculatorv2/ink/util/Pair;)Ljava/lang/Float;
    .locals 0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/q1;->l(Lcom/sunia/calculatorv2/ink/util/Pair;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic c(Lcom/sunia/calculatorv2/ink/util/Pair;)D
    .locals 2

    invoke-static {p0}, Lcom/sunia/HTREnginev2/q1;->f(Lcom/sunia/calculatorv2/ink/util/Pair;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic d(FLcom/sunia/HTREnginev2/s1;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/sunia/HTREnginev2/q1;->i(FLcom/sunia/HTREnginev2/s1;)Z

    move-result p0

    return p0
.end method

.method public static synthetic e(FFLcom/sunia/HTREnginev2/s1;)Lcom/sunia/calculatorv2/ink/util/Pair;
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sunia/HTREnginev2/q1;->h(FFLcom/sunia/HTREnginev2/s1;)Lcom/sunia/calculatorv2/ink/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic f(Lcom/sunia/calculatorv2/ink/util/Pair;)D
    .locals 2

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Double;

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public static g(FFFFFF)I
    .locals 4

    cmpl-float v0, p3, p5

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    cmpg-float v0, p1, p3

    if-gez v0, :cond_1

    cmpg-float v0, p1, p5

    if-gez v0, :cond_1

    return v1

    :cond_1
    cmpl-float v0, p1, p3

    if-ltz v0, :cond_2

    cmpl-float v0, p1, p5

    if-ltz v0, :cond_2

    return v1

    :cond_2
    cmpl-float v0, p0, p2

    if-ltz v0, :cond_3

    cmpl-float v0, p0, p4

    if-ltz v0, :cond_3

    return v1

    :cond_3
    cmpg-float v0, p0, p2

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-gez v0, :cond_5

    cmpg-float v0, p0, p4

    if-gez v0, :cond_5

    cmpg-float p0, p3, p5

    if-gez p0, :cond_4

    goto :goto_0

    :cond_4
    move v2, v3

    :goto_0
    return v2

    :cond_5
    sub-float/2addr p1, p3

    sub-float/2addr p4, p2

    mul-float/2addr p1, p4

    sub-float p4, p5, p3

    div-float/2addr p1, p4

    add-float/2addr p2, p1

    cmpl-float p0, p0, p2

    if-ltz p0, :cond_6

    return v1

    :cond_6
    cmpg-float p0, p3, p5

    if-gez p0, :cond_7

    goto :goto_1

    :cond_7
    move v2, v3

    :goto_1
    return v2
.end method

.method public static synthetic h(FFLcom/sunia/HTREnginev2/s1;)Lcom/sunia/calculatorv2/ink/util/Pair;
    .locals 2

    new-instance v0, Lcom/sunia/calculatorv2/ink/util/Pair;

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v1

    sub-float/2addr v1, p0

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result p0

    sub-float/2addr p0, p1

    div-float/2addr v1, p0

    float-to-double p0, v1

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, p2, p0}, Lcom/sunia/calculatorv2/ink/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static synthetic i(FLcom/sunia/HTREnginev2/s1;)Z
    .locals 0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result p1

    cmpl-float p0, p1, p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static j(Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;)Z
    .locals 8

    invoke-static {p2, p3, p0}, Lcom/sunia/HTREnginev2/q1;->k(Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;)F

    move-result v0

    invoke-static {p2, p3, p1}, Lcom/sunia/HTREnginev2/q1;->k(Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;)F

    move-result v1

    invoke-static {p0, p1, p2}, Lcom/sunia/HTREnginev2/q1;->k(Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;)F

    move-result v2

    invoke-static {p0, p1, p3}, Lcom/sunia/HTREnginev2/q1;->k(Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;)F

    move-result v3

    const/4 v4, 0x0

    cmpl-float v5, v0, v4

    const/4 v6, 0x1

    if-lez v5, :cond_0

    cmpg-float v7, v1, v4

    if-ltz v7, :cond_1

    :cond_0
    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    cmpl-float v0, v1, v4

    if-lez v0, :cond_4

    :cond_1
    cmpl-float v0, v2, v4

    if-lez v0, :cond_2

    cmpg-float v0, v3, v4

    if-ltz v0, :cond_3

    :cond_2
    cmpg-float v0, v2, v4

    if-gez v0, :cond_4

    cmpl-float v0, v3, v4

    if-lez v0, :cond_4

    :cond_3
    return v6

    :cond_4
    if-nez v5, :cond_5

    invoke-static {p2, p3, p0}, Lcom/sunia/HTREnginev2/q1;->n(Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v6

    :cond_5
    cmpl-float v0, v1, v4

    if-nez v0, :cond_6

    invoke-static {p2, p3, p1}, Lcom/sunia/HTREnginev2/q1;->n(Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v6

    :cond_6
    cmpl-float v0, v2, v4

    if-nez v0, :cond_7

    invoke-static {p0, p1, p2}, Lcom/sunia/HTREnginev2/q1;->n(Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;)Z

    move-result p2

    if-eqz p2, :cond_7

    return v6

    :cond_7
    cmpl-float p2, v3, v4

    if-nez p2, :cond_8

    invoke-static {p0, p1, p3}, Lcom/sunia/HTREnginev2/q1;->n(Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;)Z

    move-result p0

    if-eqz p0, :cond_8

    return v6

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static k(Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;)F
    .locals 3

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result p0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v1

    sub-float/2addr v1, v0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result p1

    sub-float/2addr p1, p0

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v2

    sub-float/2addr v2, v0

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result p2

    sub-float/2addr p2, p0

    mul-float/2addr v2, p1

    mul-float/2addr p2, v1

    sub-float/2addr v2, p2

    return v2
.end method

.method public static synthetic l(Lcom/sunia/calculatorv2/ink/util/Pair;)Ljava/lang/Float;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/s1;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/sunia/calculatorv2/ink/util/Pair;)Lcom/sunia/HTREnginev2/s1;
    .locals 0

    invoke-virtual {p0}, Lcom/sunia/calculatorv2/ink/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/s1;

    return-object p0
.end method

.method public static n(Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;)Z
    .locals 5

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result p0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v1

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result p1

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v2

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result p2

    cmpg-float v3, v0, v1

    if-gtz v3, :cond_0

    goto :goto_0

    :cond_0
    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    cmpg-float v3, p0, p1

    if-gtz v3, :cond_1

    goto :goto_1

    :cond_1
    move v4, p1

    move p1, p0

    move p0, v4

    :goto_1
    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    cmpg-float v0, v2, v1

    if-gtz v0, :cond_2

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_2

    cmpg-float p0, p2, p1

    if-gtz p0, :cond_2

    const/4 p0, 0x1

    goto :goto_2

    :cond_2
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public static o(Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;Lcom/sunia/HTREnginev2/s1;)Z
    .locals 6

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result v2

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result p0

    sub-float/2addr v2, p0

    float-to-double v2, v2

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result p0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/s1;->b()F

    move-result v4

    sub-float/2addr p0, v4

    float-to-double v4, p0

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result p0

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/s1;->c()F

    move-result p1

    sub-float/2addr p0, p1

    float-to-double p0, p0

    mul-double/2addr v0, p0

    mul-double/2addr v4, v2

    sub-double/2addr v0, v4

    const-wide/16 p0, 0x0

    cmpl-double p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
