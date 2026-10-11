.class public Lcom/miui/penengine/f/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(DDDD)D
    .locals 0

    sub-double/2addr p0, p4

    mul-double/2addr p0, p0

    sub-double/2addr p2, p6

    mul-double/2addr p2, p2

    add-double/2addr p2, p0

    .line 3
    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static a(Lcom/miui/penengine/d/c;Lcom/miui/penengine/d/c;)D
    .locals 3

    .line 4
    invoke-virtual {p0}, Lcom/miui/penengine/d/c;->f()F

    move-result v0

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->f()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/penengine/d/c;->f()F

    move-result v1

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->f()F

    move-result v2

    sub-float/2addr v1, v2

    mul-float/2addr v1, v0

    invoke-virtual {p0}, Lcom/miui/penengine/d/c;->g()F

    move-result v0

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->g()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/miui/penengine/d/c;->g()F

    move-result p0

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->g()F

    move-result p1

    sub-float/2addr p0, p1

    mul-float/2addr p0, v0

    add-float/2addr p0, v1

    float-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static a(FFFFFF)F
    .locals 2

    sub-float v0, p0, p2

    sub-float v1, p1, p3

    sub-float p2, p4, p2

    sub-float p3, p5, p3

    sub-float/2addr p4, p0

    sub-float/2addr p5, p1

    mul-float p0, v0, p3

    mul-float p1, p2, v1

    sub-float/2addr p0, p1

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    mul-float/2addr p2, p2

    mul-float/2addr p3, p3

    add-float/2addr p3, p2

    float-to-double p2, p3

    invoke-static {p2, p3}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p2

    double-to-float p2, p2

    mul-float/2addr p4, p4

    mul-float/2addr p5, p5

    add-float/2addr p5, p4

    float-to-double p3, p5

    invoke-static {p3, p4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p3

    double-to-float p3, p3

    const/high16 p4, 0x40000000    # 2.0f

    mul-float/2addr p0, p4

    float-to-double p4, p0

    mul-float/2addr p1, p2

    mul-float/2addr p1, p3

    float-to-double p0, p1

    const-wide p2, 0x3e112e0be826d695L    # 1.0E-9

    add-double/2addr p0, p2

    div-double/2addr p4, p0

    double-to-float p0, p4

    return p0
.end method

.method public static a(Lcom/miui/penengine/d/c;Lcom/miui/penengine/d/c;Lcom/miui/penengine/d/c;)F
    .locals 5

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/miui/penengine/d/c;->f()F

    move-result v0

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->f()F

    move-result v1

    sub-float/2addr v0, v1

    invoke-virtual {p0}, Lcom/miui/penengine/d/c;->g()F

    move-result v1

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->g()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p2}, Lcom/miui/penengine/d/c;->f()F

    move-result v2

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->f()F

    move-result v3

    sub-float/2addr v2, v3

    invoke-virtual {p2}, Lcom/miui/penengine/d/c;->g()F

    move-result v3

    invoke-virtual {p1}, Lcom/miui/penengine/d/c;->g()F

    move-result p1

    sub-float/2addr v3, p1

    invoke-virtual {p2}, Lcom/miui/penengine/d/c;->f()F

    move-result p1

    invoke-virtual {p0}, Lcom/miui/penengine/d/c;->f()F

    move-result v4

    sub-float/2addr p1, v4

    invoke-virtual {p2}, Lcom/miui/penengine/d/c;->g()F

    move-result p2

    invoke-virtual {p0}, Lcom/miui/penengine/d/c;->g()F

    move-result p0

    sub-float/2addr p2, p0

    mul-float p0, v0, v3

    mul-float v4, v2, v1

    sub-float/2addr p0, v4

    mul-float/2addr v0, v0

    mul-float/2addr v1, v1

    add-float/2addr v1, v0

    float-to-double v0, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    mul-float/2addr v2, v2

    mul-float/2addr v3, v3

    add-float/2addr v3, v2

    float-to-double v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float/2addr p1, p1

    mul-float/2addr p2, p2

    add-float/2addr p2, p1

    float-to-double p1, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    mul-float/2addr p0, p2

    float-to-double v2, p0

    mul-float/2addr v0, v1

    mul-float/2addr v0, p1

    float-to-double p0, v0

    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    add-double/2addr p0, v0

    div-double/2addr v2, p0

    double-to-float p0, v2

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public static a(Lcom/miui/penengine/d/c;[Lcom/miui/penengine/f/f;)Landroid/graphics/Path;
    .locals 4

    if-eqz p1, :cond_1

    .line 7
    array-length v0, p1

    if-lez v0, :cond_1

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {p0}, Lcom/miui/penengine/d/c;->f()F

    move-result v1

    invoke-virtual {p0}, Lcom/miui/penengine/d/c;->g()F

    move-result p0

    invoke-virtual {v0, v1, p0}, Landroid/graphics/Path;->moveTo(FF)V

    array-length p0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lcom/miui/penengine/f/f;->b()F

    move-result v3

    invoke-virtual {v2}, Lcom/miui/penengine/f/f;->c()F

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static a(Ljava/util/List;Ljava/util/List;FIZ)Z
    .locals 35
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/penengine/d/c;",
            ">;",
            "Ljava/util/List<",
            "Lcom/miui/penengine/d/c;",
            ">;FIZ)Z"
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 8
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    if-lez v1, :cond_4

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/penengine/d/c;

    invoke-virtual {v4}, Lcom/miui/penengine/d/c;->e()J

    move-result-wide v4

    long-to-float v4, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/penengine/d/c;

    invoke-virtual {v5}, Lcom/miui/penengine/d/c;->e()J

    move-result-wide v5

    long-to-float v5, v5

    add-int/lit8 v6, v2, -0x1

    int-to-float v7, v6

    mul-float v7, v7, p2

    sub-float/2addr v5, v7

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    if-nez p4, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/penengine/d/c;

    invoke-virtual {v4}, Lcom/miui/penengine/d/c;->e()J

    move-result-wide v4

    long-to-float v4, v4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/miui/penengine/d/c;

    invoke-virtual {v5}, Lcom/miui/penengine/d/c;->e()J

    move-result-wide v8

    long-to-float v5, v8

    sub-float/2addr v5, v7

    cmpl-float v4, v4, v5

    const/4 v5, 0x1

    if-lez v4, :cond_1

    if-eqz p4, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/penengine/d/c;

    invoke-virtual {v4}, Lcom/miui/penengine/d/c;->e()J

    move-result-wide v7

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/miui/penengine/d/c;

    invoke-virtual {v4}, Lcom/miui/penengine/d/c;->e()J

    move-result-wide v9

    sub-long/2addr v7, v9

    long-to-float v4, v7

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v4, v7

    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v5

    int-to-float v7, v7

    div-float/2addr v4, v7

    const v7, 0x3dcccccd    # 0.1f

    sub-float/2addr v4, v7

    goto :goto_0

    :cond_1
    move/from16 v4, p2

    :goto_0
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/miui/penengine/d/c;

    invoke-virtual {v7}, Lcom/miui/penengine/d/c;->e()J

    move-result-wide v7

    long-to-double v7, v7

    sub-int/2addr v1, v5

    move v9, v3

    :goto_1
    if-ge v9, v2, :cond_3

    int-to-float v10, v9

    mul-float/2addr v10, v4

    float-to-double v10, v10

    sub-double v10, v7, v10

    :goto_2
    if-ltz v1, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/penengine/d/c;

    invoke-virtual {v12}, Lcom/miui/penengine/d/c;->e()J

    move-result-wide v12

    long-to-double v12, v12

    cmpl-double v12, v12, v10

    if-lez v12, :cond_2

    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    :cond_2
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/miui/penengine/d/c;

    add-int/lit8 v13, v1, 0x1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/miui/penengine/d/c;

    invoke-virtual {v12}, Lcom/miui/penengine/d/c;->e()J

    move-result-wide v14

    long-to-double v14, v14

    sub-double v14, v10, v14

    invoke-virtual {v13}, Lcom/miui/penengine/d/c;->e()J

    move-result-wide v16

    invoke-virtual {v12}, Lcom/miui/penengine/d/c;->e()J

    move-result-wide v18

    move/from16 p2, v4

    sub-long v3, v16, v18

    long-to-double v3, v3

    div-double/2addr v14, v3

    const-wide/16 v3, 0x0

    invoke-static {v3, v4, v14, v15}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    invoke-virtual {v12}, Lcom/miui/penengine/d/c;->f()F

    move-result v14

    float-to-double v14, v14

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v3

    mul-double v14, v14, v16

    invoke-virtual {v13}, Lcom/miui/penengine/d/c;->f()F

    move-result v5

    move/from16 p3, v1

    float-to-double v0, v5

    mul-double/2addr v0, v3

    add-double/2addr v0, v14

    double-to-float v0, v0

    invoke-virtual {v12}, Lcom/miui/penengine/d/c;->g()F

    move-result v1

    float-to-double v14, v1

    mul-double v14, v14, v16

    invoke-virtual {v13}, Lcom/miui/penengine/d/c;->g()F

    move-result v1

    move v5, v2

    float-to-double v1, v1

    mul-double/2addr v1, v3

    add-double/2addr v1, v14

    double-to-float v1, v1

    invoke-virtual {v12}, Lcom/miui/penengine/d/c;->c()D

    move-result-wide v14

    mul-double v14, v14, v16

    invoke-virtual {v13}, Lcom/miui/penengine/d/c;->c()D

    move-result-wide v20

    mul-double v20, v20, v3

    add-double v14, v20, v14

    double-to-float v2, v14

    invoke-virtual {v12}, Lcom/miui/penengine/d/c;->b()D

    move-result-wide v14

    mul-double v14, v14, v16

    invoke-virtual {v13}, Lcom/miui/penengine/d/c;->b()D

    move-result-wide v20

    mul-double v20, v20, v3

    add-double v14, v20, v14

    double-to-float v14, v14

    invoke-virtual {v12}, Lcom/miui/penengine/d/c;->d()D

    move-result-wide v20

    mul-double v20, v20, v16

    invoke-virtual {v13}, Lcom/miui/penengine/d/c;->d()D

    move-result-wide v15

    mul-double/2addr v15, v3

    add-double v3, v15, v20

    double-to-float v3, v3

    sub-int v4, v6, v9

    move-object/from16 v13, p1

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v20, v4

    check-cast v20, Lcom/miui/penengine/d/c;

    move/from16 p4, v5

    float-to-double v4, v0

    float-to-double v0, v1

    double-to-long v10, v10

    move v15, v6

    move-wide/from16 v16, v7

    float-to-double v6, v2

    float-to-double v13, v14

    float-to-double v2, v3

    invoke-virtual {v12}, Lcom/miui/penengine/d/c;->a()I

    move-result v34

    const/16 v33, 0x1

    move-wide/from16 v21, v4

    move-wide/from16 v23, v0

    move-wide/from16 v25, v10

    move-wide/from16 v27, v6

    move-wide/from16 v29, v13

    move-wide/from16 v31, v2

    invoke-virtual/range {v20 .. v34}, Lcom/miui/penengine/d/c;->a(DDJDDDZI)V

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move/from16 v4, p2

    move/from16 v1, p3

    move/from16 v2, p4

    move v6, v15

    move-wide/from16 v7, v16

    const/4 v3, 0x0

    const/4 v5, 0x1

    goto/16 :goto_1

    :cond_3
    move v0, v5

    return v0

    :cond_4
    :goto_3
    move v0, v3

    return v0
.end method

.method public static a([Lcom/miui/penengine/d/c;I)[Lcom/miui/penengine/d/c;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    .line 5
    array-length v1, p0

    if-lt v1, p1, :cond_4

    new-array v1, p1, [Lcom/miui/penengine/d/c;

    add-int/lit8 p1, p1, -0x1

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/miui/penengine/d/c;->h()Z

    move-result v3

    if-eqz v3, :cond_0

    aget-object v3, p0, v2

    aput-object v3, v1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_0
    if-gez p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz p1, :cond_3

    return-object v0

    :cond_3
    return-object v1

    :cond_4
    return-object v0
.end method

.method public static a([Lcom/miui/penengine/d/c;JJ)[Lcom/miui/penengine/d/c;
    .locals 7

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 6
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Lcom/miui/penengine/d/c;->e()J

    move-result-wide v1

    sub-long/2addr v1, p1

    array-length p1, p0

    add-int/lit8 p1, p1, -0x1

    const-wide/16 v3, 0x0

    :goto_0
    if-ltz p1, :cond_1

    aget-object p2, p0, p1

    invoke-virtual {p2}, Lcom/miui/penengine/d/c;->e()J

    move-result-wide v5

    cmp-long p2, v5, v1

    if-lez p2, :cond_1

    array-length p2, p0

    add-int/lit8 p2, p2, -0x1

    if-ge p1, p2, :cond_0

    aget-object p2, p0, p1

    add-int/lit8 v5, p1, 0x1

    aget-object v5, p0, v5

    invoke-static {p2, v5}, Lcom/miui/penengine/f/g;->a(Lcom/miui/penengine/d/c;Lcom/miui/penengine/d/c;)D

    move-result-wide v5

    add-double/2addr v5, v3

    move-wide v3, v5

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_1
    const/4 p2, -0x1

    if-eq p1, p2, :cond_3

    long-to-double p2, p3

    cmpg-double p2, v3, p2

    if-gtz p2, :cond_2

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    array-length p2, p0

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, -0x1

    new-array p1, p2, [Lcom/miui/penengine/d/c;

    array-length p3, p0

    sub-int/2addr p3, p2

    const/4 p4, 0x0

    invoke-static {p0, p3, p1, p4, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p1

    :cond_3
    :goto_1
    return-object v0
.end method

.method public static b([Lcom/miui/penengine/d/c;I)[Lcom/miui/penengine/d/c;
    .locals 4

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    array-length v1, p0

    if-lt v1, p1, :cond_4

    new-array v1, p1, [Lcom/miui/penengine/d/c;

    add-int/lit8 p1, p1, -0x1

    array-length v2, p0

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    aget-object v3, p0, v2

    invoke-virtual {v3}, Lcom/miui/penengine/d/c;->h()Z

    move-result v3

    if-nez v3, :cond_0

    aget-object v3, p0, v2

    aput-object v3, v1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_0
    if-gez p1, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    if-ltz p1, :cond_3

    return-object v0

    :cond_3
    return-object v1

    :cond_4
    return-object v0
.end method

.method public static c([Lcom/miui/penengine/d/c;I)[Lcom/miui/penengine/d/c;
    .locals 3

    if-eqz p0, :cond_1

    array-length v0, p0

    if-lt v0, p1, :cond_1

    array-length v0, p0

    if-ne v0, p1, :cond_0

    return-object p0

    :cond_0
    new-array v0, p1, [Lcom/miui/penengine/d/c;

    array-length v1, p0

    sub-int/2addr v1, p1

    const/4 v2, 0x0

    invoke-static {p0, v1, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
