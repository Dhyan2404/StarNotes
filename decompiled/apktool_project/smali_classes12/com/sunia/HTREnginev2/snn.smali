.class public Lcom/sunia/HTREnginev2/snn;
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
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->isSquare()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/snn;->a:[[D

    new-array p1, v0, [D

    iput-object p1, p0, Lcom/sunia/HTREnginev2/snn;->b:[D

    add-int/lit8 v0, v0, -0x1

    new-array p1, v0, [D

    iput-object p1, p0, Lcom/sunia/HTREnginev2/snn;->c:[D

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/snn;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/snn;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/snn;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/snn;->g()V

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw p0
.end method


# virtual methods
.method public a()[[D
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/snn;->a:[[D

    return-object p0
.end method

.method public b()[D
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/snn;->b:[D

    return-object p0
.end method

.method public c()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/snn;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/snn;->d()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/snn;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/snn;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public d()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sunia/HTREnginev2/snn;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/sunia/HTREnginev2/snn;->a:[[D

    array-length v1, v1

    filled-new-array {v1, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    add-int/lit8 v3, v1, -0x1

    :goto_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x1

    if-lt v3, v6, :cond_4

    iget-object v6, v0, Lcom/sunia/HTREnginev2/snn;->a:[[D

    add-int/lit8 v7, v3, -0x1

    aget-object v6, v6, v7

    aget-object v8, v2, v3

    aput-wide v4, v8, v3

    aget-wide v9, v6, v3

    const-wide/16 v11, 0x0

    cmpl-double v13, v9, v11

    if-eqz v13, :cond_3

    iget-object v13, v0, Lcom/sunia/HTREnginev2/snn;->c:[D

    aget-wide v13, v13, v7

    mul-double v15, v13, v9

    div-double v15, v4, v15

    div-double v13, v4, v13

    mul-double/2addr v9, v13

    add-double/2addr v9, v4

    aput-wide v9, v8, v3

    add-int/lit8 v4, v3, 0x1

    move v5, v4

    :goto_1
    if-ge v5, v1, :cond_0

    aget-object v7, v2, v3

    aget-wide v8, v6, v5

    mul-double/2addr v8, v13

    aput-wide v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move v5, v4

    :goto_2
    if-ge v5, v1, :cond_3

    move v7, v4

    move-wide v8, v11

    :goto_3
    if-ge v7, v1, :cond_1

    aget-object v10, v2, v5

    aget-wide v13, v10, v7

    aget-wide v17, v6, v7

    mul-double v13, v13, v17

    add-double/2addr v8, v13

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_1
    mul-double/2addr v8, v15

    aget-object v7, v2, v5

    aget-wide v13, v6, v3

    mul-double/2addr v13, v8

    aput-wide v13, v7, v3

    move v7, v4

    :goto_4
    if-ge v7, v1, :cond_2

    aget-object v10, v2, v5

    aget-wide v13, v10, v7

    aget-wide v17, v6, v7

    mul-double v17, v17, v8

    add-double v13, v13, v17

    aput-wide v13, v10, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    aget-object v3, v2, v1

    aput-wide v4, v3, v1

    invoke-static {v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lcom/sunia/HTREnginev2/snn;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_5
    iget-object v0, v0, Lcom/sunia/HTREnginev2/snn;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public e()[D
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/snn;->c:[D

    return-object p0
.end method

.method public f()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8

    iget-object v0, p0, Lcom/sunia/HTREnginev2/snn;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/snn;->b:[D

    array-length v0, v0

    filled-new-array {v0, v0}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, v1, v2

    iget-object v4, p0, Lcom/sunia/HTREnginev2/snn;->b:[D

    aget-wide v5, v4, v2

    aput-wide v5, v3, v2

    if-lez v2, :cond_0

    add-int/lit8 v5, v2, -0x1

    iget-object v6, p0, Lcom/sunia/HTREnginev2/snn;->c:[D

    aget-wide v6, v6, v5

    aput-wide v6, v3, v5

    :cond_0
    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ge v2, v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    iget-object v5, p0, Lcom/sunia/HTREnginev2/snn;->c:[D

    aget-wide v5, v5, v2

    aput-wide v5, v3, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/snn;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_3
    iget-object p0, p0, Lcom/sunia/HTREnginev2/snn;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public final g()V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sunia/HTREnginev2/snn;->a:[[D

    array-length v1, v1

    new-array v2, v1, [D

    const/4 v3, 0x0

    :goto_0
    add-int/lit8 v4, v1, -0x1

    if-ge v3, v4, :cond_8

    iget-object v4, v0, Lcom/sunia/HTREnginev2/snn;->a:[[D

    aget-object v4, v4, v3

    iget-object v5, v0, Lcom/sunia/HTREnginev2/snn;->b:[D

    aget-wide v6, v4, v3

    aput-wide v6, v5, v3

    add-int/lit8 v5, v3, 0x1

    const-wide/16 v6, 0x0

    move v8, v5

    move-wide v9, v6

    :goto_1
    if-ge v8, v1, :cond_0

    aget-wide v11, v4, v8

    mul-double/2addr v11, v11

    add-double/2addr v9, v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    aget-wide v11, v4, v5

    cmpl-double v8, v11, v6

    if-lez v8, :cond_1

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    neg-double v8, v8

    goto :goto_2

    :cond_1
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    :goto_2
    iget-object v10, v0, Lcom/sunia/HTREnginev2/snn;->c:[D

    aput-wide v8, v10, v3

    cmpl-double v3, v8, v6

    if-eqz v3, :cond_7

    aget-wide v10, v4, v5

    sub-double/2addr v10, v8

    aput-wide v10, v4, v5

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    mul-double/2addr v8, v10

    div-double/2addr v12, v8

    invoke-static {v2, v5, v1, v6, v7}, Ljava/util/Arrays;->fill([DIID)V

    move v3, v5

    :goto_3
    if-ge v3, v1, :cond_3

    iget-object v8, v0, Lcom/sunia/HTREnginev2/snn;->a:[[D

    aget-object v8, v8, v3

    aget-wide v9, v4, v3

    aget-wide v14, v8, v3

    mul-double/2addr v14, v9

    add-int/lit8 v11, v3, 0x1

    move v6, v11

    :goto_4
    if-ge v6, v1, :cond_2

    aget-wide v16, v8, v6

    aget-wide v18, v4, v6

    mul-double v18, v18, v16

    add-double v14, v14, v18

    aget-wide v18, v2, v6

    mul-double v16, v16, v9

    add-double v18, v18, v16

    aput-wide v18, v2, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_2
    aget-wide v6, v2, v3

    add-double/2addr v6, v14

    mul-double/2addr v6, v12

    aput-wide v6, v2, v3

    move v3, v11

    const-wide/16 v6, 0x0

    goto :goto_3

    :cond_3
    move v3, v5

    const-wide/16 v6, 0x0

    :goto_5
    if-ge v3, v1, :cond_4

    aget-wide v8, v2, v3

    aget-wide v10, v4, v3

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v8

    mul-double/2addr v6, v12

    move v3, v5

    :goto_6
    if-ge v3, v1, :cond_5

    aget-wide v8, v2, v3

    aget-wide v10, v4, v3

    mul-double/2addr v10, v6

    sub-double/2addr v8, v10

    aput-wide v8, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_5
    move v3, v5

    :goto_7
    if-ge v3, v1, :cond_7

    iget-object v6, v0, Lcom/sunia/HTREnginev2/snn;->a:[[D

    aget-object v6, v6, v3

    move v7, v3

    :goto_8
    if-ge v7, v1, :cond_6

    aget-wide v8, v6, v7

    aget-wide v10, v4, v3

    aget-wide v12, v2, v7

    mul-double/2addr v10, v12

    aget-wide v12, v2, v3

    aget-wide v14, v4, v7

    mul-double/2addr v12, v14

    add-double/2addr v10, v12

    sub-double/2addr v8, v10

    aput-wide v8, v6, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_8

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_7
    move v3, v5

    goto/16 :goto_0

    :cond_8
    iget-object v1, v0, Lcom/sunia/HTREnginev2/snn;->b:[D

    iget-object v0, v0, Lcom/sunia/HTREnginev2/snn;->a:[[D

    aget-object v0, v0, v4

    aget-wide v2, v0, v4

    aput-wide v2, v1, v4

    return-void
.end method
