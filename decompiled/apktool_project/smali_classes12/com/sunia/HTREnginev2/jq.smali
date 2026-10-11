.class public Lcom/sunia/HTREnginev2/jq;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[[D

.field public final b:[D

.field public final c:[D

.field public d:Lorg/apache/commons/math3/linear/RealMatrix;

.field public e:Lorg/apache/commons/math3/linear/RealMatrix;

.field public f:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jq;->a:[[D

    new-array p1, v2, [D

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jq;->b:[D

    add-int/lit8 v2, v2, -0x1

    new-array p1, v2, [D

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jq;->c:[D

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jq;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jq;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/jq;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jq;->i()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/jq;->h()V

    :goto_0
    return-void
.end method


# virtual methods
.method public a()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jq;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/jq;->a:[[D

    array-length v1, v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    array-length v0, v0

    filled-new-array {v1, v0}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    :goto_0
    iget-object v4, p0, Lcom/sunia/HTREnginev2/jq;->b:[D

    array-length v5, v4

    if-ge v2, v5, :cond_2

    aget-object v5, v3, v2

    aget-wide v6, v4, v2

    aput-wide v6, v5, v2

    if-ge v1, v0, :cond_0

    if-lez v2, :cond_1

    add-int/lit8 v4, v2, -0x1

    iget-object v6, p0, Lcom/sunia/HTREnginev2/jq;->c:[D

    aget-wide v6, v6, v4

    aput-wide v6, v5, v4

    goto :goto_1

    :cond_0
    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    iget-object v6, p0, Lcom/sunia/HTREnginev2/jq;->c:[D

    aget-wide v6, v6, v2

    aput-wide v6, v5, v4

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v3}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/jq;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_3
    iget-object p0, p0, Lcom/sunia/HTREnginev2/jq;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public b()[[D
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jq;->a:[[D

    return-object p0
.end method

.method public c()[D
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jq;->b:[D

    return-object p0
.end method

.method public d()[D
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jq;->c:[D

    return-object p0
.end method

.method public e()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 21

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sunia/HTREnginev2/jq;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/sunia/HTREnginev2/jq;->a:[[D

    array-length v2, v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    array-length v1, v1

    iget-object v4, v0, Lcom/sunia/HTREnginev2/jq;->b:[D

    array-length v5, v4

    const/4 v6, 0x1

    if-lt v2, v1, :cond_0

    move v7, v3

    goto :goto_0

    :cond_0
    move v7, v6

    :goto_0
    if-lt v2, v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v4, v0, Lcom/sunia/HTREnginev2/jq;->c:[D

    :goto_1
    filled-new-array {v2, v2}, [I

    move-result-object v1

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    add-int/lit8 v8, v2, -0x1

    :goto_2
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-lt v8, v5, :cond_2

    aget-object v11, v1, v8

    aput-wide v9, v11, v8

    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_2
    sub-int/2addr v5, v6

    :goto_3
    if-lt v5, v7, :cond_6

    iget-object v6, v0, Lcom/sunia/HTREnginev2/jq;->a:[[D

    aget-object v6, v6, v5

    aget-object v8, v1, v5

    aput-wide v9, v8, v5

    sub-int v8, v5, v7

    aget-wide v11, v6, v8

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-eqz v11, :cond_5

    move v11, v5

    :goto_4
    if-ge v11, v2, :cond_5

    move v12, v5

    move-wide v15, v13

    :goto_5
    if-ge v12, v2, :cond_3

    aget-object v17, v1, v12

    aget-wide v17, v17, v11

    iget-object v13, v0, Lcom/sunia/HTREnginev2/jq;->a:[[D

    aget-object v13, v13, v12

    aget-wide v13, v13, v8

    mul-double v17, v17, v13

    sub-double v15, v15, v17

    add-int/lit8 v12, v12, 0x1

    const-wide/16 v13, 0x0

    goto :goto_5

    :cond_3
    aget-wide v12, v4, v8

    aget-wide v17, v6, v8

    mul-double v12, v12, v17

    div-double v12, v15, v12

    move v14, v5

    :goto_6
    if-ge v14, v2, :cond_4

    aget-object v15, v1, v14

    aget-wide v16, v15, v11

    neg-double v9, v12

    iget-object v3, v0, Lcom/sunia/HTREnginev2/jq;->a:[[D

    aget-object v3, v3, v14

    aget-wide v19, v3, v8

    mul-double v9, v9, v19

    add-double v16, v16, v9

    aput-wide v16, v15, v11

    add-int/lit8 v14, v14, 0x1

    const/4 v3, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    goto :goto_6

    :cond_4
    add-int/lit8 v11, v11, 0x1

    const/4 v3, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/16 v13, 0x0

    goto :goto_4

    :cond_5
    add-int/lit8 v5, v5, -0x1

    const/4 v3, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    goto :goto_3

    :cond_6
    if-lez v7, :cond_7

    const/4 v2, 0x0

    aget-object v3, v1, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v3, v2

    :cond_7
    invoke-static {v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lcom/sunia/HTREnginev2/jq;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_8
    iget-object v0, v0, Lcom/sunia/HTREnginev2/jq;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public f()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 23

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sunia/HTREnginev2/jq;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/sunia/HTREnginev2/jq;->a:[[D

    array-length v2, v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    array-length v1, v1

    iget-object v4, v0, Lcom/sunia/HTREnginev2/jq;->b:[D

    array-length v5, v4

    const/4 v6, 0x1

    if-lt v2, v1, :cond_0

    move v7, v6

    goto :goto_0

    :cond_0
    move v7, v3

    :goto_0
    if-lt v2, v1, :cond_1

    iget-object v4, v0, Lcom/sunia/HTREnginev2/jq;->c:[D

    :cond_1
    filled-new-array {v1, v1}, [I

    move-result-object v2

    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v8, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    add-int/lit8 v8, v1, -0x1

    :goto_1
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    if-lt v8, v5, :cond_2

    aget-object v11, v2, v8

    aput-wide v9, v11, v8

    add-int/lit8 v8, v8, -0x1

    goto :goto_1

    :cond_2
    sub-int/2addr v5, v6

    :goto_2
    if-lt v5, v7, :cond_6

    iget-object v6, v0, Lcom/sunia/HTREnginev2/jq;->a:[[D

    sub-int v8, v5, v7

    aget-object v6, v6, v8

    aget-object v11, v2, v5

    aput-wide v9, v11, v5

    aget-wide v11, v6, v5

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-eqz v11, :cond_5

    move v11, v5

    :goto_3
    if-ge v11, v1, :cond_5

    move v12, v5

    move-wide v15, v13

    :goto_4
    if-ge v12, v1, :cond_3

    aget-object v17, v2, v12

    aget-wide v17, v17, v11

    aget-wide v19, v6, v12

    mul-double v17, v17, v19

    sub-double v15, v15, v17

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_3
    aget-wide v17, v4, v8

    aget-wide v19, v6, v5

    mul-double v17, v17, v19

    div-double v13, v15, v17

    move v12, v5

    :goto_5
    if-ge v12, v1, :cond_4

    aget-object v15, v2, v12

    aget-wide v16, v15, v11

    neg-double v9, v13

    aget-wide v21, v6, v12

    mul-double v9, v9, v21

    add-double v16, v16, v9

    aput-wide v16, v15, v11

    add-int/lit8 v12, v12, 0x1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    goto :goto_5

    :cond_4
    add-int/lit8 v11, v11, 0x1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/16 v13, 0x0

    goto :goto_3

    :cond_5
    add-int/lit8 v5, v5, -0x1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_6
    if-lez v7, :cond_7

    aget-object v1, v2, v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    aput-wide v4, v1, v3

    :cond_7
    invoke-static {v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lcom/sunia/HTREnginev2/jq;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_8
    iget-object v0, v0, Lcom/sunia/HTREnginev2/jq;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public g()Z
    .locals 2

    iget-object p0, p0, Lcom/sunia/HTREnginev2/jq;->a:[[D

    array-length v0, p0

    const/4 v1, 0x0

    aget-object p0, p0, v1

    array-length p0, p0

    if-lt v0, p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final h()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sunia/HTREnginev2/jq;->a:[[D

    array-length v2, v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    array-length v1, v1

    :goto_0
    if-ge v3, v2, :cond_a

    iget-object v4, v0, Lcom/sunia/HTREnginev2/jq;->a:[[D

    aget-object v4, v4, v3

    const-wide/16 v5, 0x0

    move v7, v3

    move-wide v8, v5

    :goto_1
    if-ge v7, v1, :cond_0

    aget-wide v10, v4, v7

    mul-double/2addr v10, v10

    add-double/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    aget-wide v10, v4, v3

    cmpl-double v7, v10, v5

    if-lez v7, :cond_1

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    neg-double v7, v7

    goto :goto_2

    :cond_1
    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    :goto_2
    iget-object v9, v0, Lcom/sunia/HTREnginev2/jq;->b:[D

    aput-wide v7, v9, v3

    cmpl-double v9, v7, v5

    if-eqz v9, :cond_4

    aget-wide v9, v4, v3

    sub-double/2addr v9, v7

    aput-wide v9, v4, v3

    add-int/lit8 v9, v3, 0x1

    :goto_3
    if-ge v9, v2, :cond_4

    iget-object v10, v0, Lcom/sunia/HTREnginev2/jq;->a:[[D

    aget-object v10, v10, v9

    move v11, v3

    move-wide v12, v5

    :goto_4
    if-ge v11, v1, :cond_2

    aget-wide v14, v10, v11

    aget-wide v16, v4, v11

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_2
    iget-object v11, v0, Lcom/sunia/HTREnginev2/jq;->a:[[D

    aget-object v11, v11, v3

    aget-wide v14, v11, v3

    mul-double/2addr v14, v7

    div-double/2addr v12, v14

    move v11, v3

    :goto_5
    if-ge v11, v1, :cond_3

    aget-wide v14, v10, v11

    aget-wide v16, v4, v11

    mul-double v16, v16, v12

    sub-double v14, v14, v16

    aput-wide v14, v10, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_5

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v4, v2, -0x1

    if-ge v3, v4, :cond_9

    iget-object v4, v0, Lcom/sunia/HTREnginev2/jq;->a:[[D

    add-int/lit8 v7, v3, 0x1

    aget-object v4, v4, v7

    move-wide v9, v5

    move v8, v7

    :goto_6
    if-ge v8, v2, :cond_5

    iget-object v11, v0, Lcom/sunia/HTREnginev2/jq;->a:[[D

    aget-object v11, v11, v8

    aget-wide v11, v11, v3

    mul-double/2addr v11, v11

    add-double/2addr v9, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_5
    aget-wide v11, v4, v3

    cmpl-double v8, v11, v5

    if-lez v8, :cond_6

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    neg-double v8, v8

    goto :goto_7

    :cond_6
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    :goto_7
    iget-object v10, v0, Lcom/sunia/HTREnginev2/jq;->c:[D

    aput-wide v8, v10, v3

    cmpl-double v10, v8, v5

    if-eqz v10, :cond_9

    aget-wide v10, v4, v3

    sub-double/2addr v10, v8

    aput-wide v10, v4, v3

    move v10, v7

    :goto_8
    if-ge v10, v1, :cond_9

    move-wide v12, v5

    move v11, v7

    :goto_9
    if-ge v11, v2, :cond_7

    iget-object v14, v0, Lcom/sunia/HTREnginev2/jq;->a:[[D

    aget-object v14, v14, v11

    aget-wide v15, v14, v10

    aget-wide v17, v14, v3

    mul-double v15, v15, v17

    sub-double/2addr v12, v15

    add-int/lit8 v11, v11, 0x1

    goto :goto_9

    :cond_7
    aget-wide v14, v4, v3

    mul-double/2addr v14, v8

    div-double/2addr v12, v14

    move v11, v7

    :goto_a
    if-ge v11, v2, :cond_8

    iget-object v14, v0, Lcom/sunia/HTREnginev2/jq;->a:[[D

    aget-object v14, v14, v11

    aget-wide v15, v14, v10

    aget-wide v17, v14, v3

    mul-double v17, v17, v12

    sub-double v15, v15, v17

    aput-wide v15, v14, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_a

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method

.method public final i()V
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sunia/HTREnginev2/jq;->a:[[D

    array-length v2, v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    array-length v1, v1

    :goto_0
    if-ge v3, v1, :cond_a

    const-wide/16 v4, 0x0

    move v6, v3

    move-wide v7, v4

    :goto_1
    if-ge v6, v2, :cond_0

    iget-object v9, v0, Lcom/sunia/HTREnginev2/jq;->a:[[D

    aget-object v9, v9, v6

    aget-wide v9, v9, v3

    mul-double/2addr v9, v9

    add-double/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    iget-object v6, v0, Lcom/sunia/HTREnginev2/jq;->a:[[D

    aget-object v6, v6, v3

    aget-wide v9, v6, v3

    cmpl-double v9, v9, v4

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    if-lez v9, :cond_1

    neg-double v7, v7

    :cond_1
    iget-object v9, v0, Lcom/sunia/HTREnginev2/jq;->b:[D

    aput-wide v7, v9, v3

    cmpl-double v9, v7, v4

    if-eqz v9, :cond_4

    aget-wide v9, v6, v3

    sub-double/2addr v9, v7

    aput-wide v9, v6, v3

    add-int/lit8 v9, v3, 0x1

    :goto_2
    if-ge v9, v1, :cond_4

    move v10, v3

    move-wide v11, v4

    :goto_3
    if-ge v10, v2, :cond_2

    iget-object v13, v0, Lcom/sunia/HTREnginev2/jq;->a:[[D

    aget-object v13, v13, v10

    aget-wide v14, v13, v9

    aget-wide v16, v13, v3

    mul-double v14, v14, v16

    sub-double/2addr v11, v14

    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    :cond_2
    iget-object v10, v0, Lcom/sunia/HTREnginev2/jq;->a:[[D

    aget-object v10, v10, v3

    aget-wide v13, v10, v3

    mul-double/2addr v13, v7

    div-double/2addr v11, v13

    move v10, v3

    :goto_4
    if-ge v10, v2, :cond_3

    iget-object v13, v0, Lcom/sunia/HTREnginev2/jq;->a:[[D

    aget-object v13, v13, v10

    aget-wide v14, v13, v9

    aget-wide v16, v13, v3

    mul-double v16, v16, v11

    sub-double v14, v14, v16

    aput-wide v14, v13, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v7, v1, -0x1

    if-ge v3, v7, :cond_9

    add-int/lit8 v7, v3, 0x1

    move-wide v9, v4

    move v8, v7

    :goto_5
    if-ge v8, v1, :cond_5

    aget-wide v11, v6, v8

    mul-double/2addr v11, v11

    add-double/2addr v9, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_5

    :cond_5
    aget-wide v11, v6, v7

    cmpl-double v8, v11, v4

    if-lez v8, :cond_6

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    neg-double v8, v8

    goto :goto_6

    :cond_6
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    :goto_6
    iget-object v10, v0, Lcom/sunia/HTREnginev2/jq;->c:[D

    aput-wide v8, v10, v3

    cmpl-double v10, v8, v4

    if-eqz v10, :cond_9

    aget-wide v10, v6, v7

    sub-double/2addr v10, v8

    aput-wide v10, v6, v7

    move v10, v7

    :goto_7
    if-ge v10, v2, :cond_9

    iget-object v11, v0, Lcom/sunia/HTREnginev2/jq;->a:[[D

    aget-object v11, v11, v10

    move-wide v13, v4

    move v12, v7

    :goto_8
    if-ge v12, v1, :cond_7

    aget-wide v15, v11, v12

    aget-wide v17, v6, v12

    mul-double v15, v15, v17

    sub-double/2addr v13, v15

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_7
    aget-wide v15, v6, v7

    mul-double/2addr v15, v8

    div-double/2addr v13, v15

    move v12, v7

    :goto_9
    if-ge v12, v1, :cond_8

    aget-wide v15, v11, v12

    aget-wide v17, v6, v12

    mul-double v17, v17, v13

    sub-double v15, v15, v17

    aput-wide v15, v11, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_7

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    return-void
.end method
