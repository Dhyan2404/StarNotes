.class public Lcom/sunia/HTREnginev2/bzh;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:[[D

.field public final b:[D

.field public c:Lorg/apache/commons/math3/linear/RealMatrix;

.field public d:Lorg/apache/commons/math3/linear/RealMatrix;

.field public e:Lorg/apache/commons/math3/linear/RealMatrix;


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

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bzh;->a:[[D

    new-array p1, v0, [D

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bzh;->b:[D

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bzh;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bzh;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/bzh;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/bzh;->e()V

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
.method public a()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    iget-object v0, p0, Lcom/sunia/HTREnginev2/bzh;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/sunia/HTREnginev2/bzh;->a:[[D

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

    if-lez v2, :cond_0

    aget-object v3, v1, v2

    add-int/lit8 v4, v2, -0x1

    iget-object v5, p0, Lcom/sunia/HTREnginev2/bzh;->a:[[D

    aget-object v5, v5, v2

    aget-wide v5, v5, v4

    aput-wide v5, v3, v4

    :cond_0
    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_1

    aget-object v4, v1, v2

    iget-object v5, p0, Lcom/sunia/HTREnginev2/bzh;->a:[[D

    aget-object v5, v5, v2

    aget-wide v5, v5, v3

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/bzh;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_3
    iget-object p0, p0, Lcom/sunia/HTREnginev2/bzh;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public b()[[D
    .locals 0

    iget-object p0, p0, Lcom/sunia/HTREnginev2/bzh;->a:[[D

    return-object p0
.end method

.method public c()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 15

    iget-object v0, p0, Lcom/sunia/HTREnginev2/bzh;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/sunia/HTREnginev2/bzh;->a:[[D

    array-length v0, v0

    add-int/lit8 v1, v0, -0x1

    filled-new-array {v0, v0}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const-wide/16 v5, 0x0

    if-ge v4, v0, :cond_2

    move v7, v3

    :goto_1
    if-ge v7, v0, :cond_1

    aget-object v8, v2, v4

    if-ne v4, v7, :cond_0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_0
    move-wide v9, v5

    :goto_2
    aput-wide v9, v8, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, -0x1

    :goto_3
    const/4 v3, 0x1

    if-lt v0, v3, :cond_7

    iget-object v3, p0, Lcom/sunia/HTREnginev2/bzh;->a:[[D

    aget-object v3, v3, v0

    add-int/lit8 v4, v0, -0x1

    aget-wide v7, v3, v4

    cmpl-double v3, v7, v5

    if-eqz v3, :cond_6

    add-int/lit8 v3, v0, 0x1

    :goto_4
    if-gt v3, v1, :cond_3

    iget-object v7, p0, Lcom/sunia/HTREnginev2/bzh;->b:[D

    iget-object v8, p0, Lcom/sunia/HTREnginev2/bzh;->a:[[D

    aget-object v8, v8, v3

    aget-wide v8, v8, v4

    aput-wide v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_3
    move v3, v0

    :goto_5
    if-gt v3, v1, :cond_6

    move v7, v0

    move-wide v8, v5

    :goto_6
    if-gt v7, v1, :cond_4

    iget-object v10, p0, Lcom/sunia/HTREnginev2/bzh;->b:[D

    aget-wide v10, v10, v7

    aget-object v12, v2, v7

    aget-wide v12, v12, v3

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_4
    iget-object v7, p0, Lcom/sunia/HTREnginev2/bzh;->b:[D

    aget-wide v10, v7, v0

    div-double/2addr v8, v10

    iget-object v7, p0, Lcom/sunia/HTREnginev2/bzh;->a:[[D

    aget-object v7, v7, v0

    aget-wide v10, v7, v4

    div-double/2addr v8, v10

    move v7, v0

    :goto_7
    if-gt v7, v1, :cond_5

    aget-object v10, v2, v7

    aget-wide v11, v10, v3

    iget-object v13, p0, Lcom/sunia/HTREnginev2/bzh;->b:[D

    aget-wide v13, v13, v7

    mul-double/2addr v13, v8

    add-double/2addr v11, v13

    aput-wide v11, v10, v3

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    :cond_7
    invoke-static {v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/bzh;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_8
    iget-object p0, p0, Lcom/sunia/HTREnginev2/bzh;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public d()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/bzh;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/bzh;->c()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/bzh;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/bzh;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public final e()V
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/sunia/HTREnginev2/bzh;->a:[[D

    array-length v1, v1

    add-int/lit8 v2, v1, -0x1

    const/4 v3, 0x1

    :goto_0
    add-int/lit8 v4, v2, -0x1

    if-gt v3, v4, :cond_a

    const-wide/16 v4, 0x0

    move v6, v3

    move-wide v7, v4

    :goto_1
    if-gt v6, v2, :cond_0

    iget-object v9, v0, Lcom/sunia/HTREnginev2/bzh;->a:[[D

    aget-object v9, v9, v6

    add-int/lit8 v10, v3, -0x1

    aget-wide v9, v9, v10

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    add-double/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    invoke-static {v7, v8, v4, v5}, Lorg/apache/commons/math3/util/Precision;->equals(DD)Z

    move-result v6

    if-nez v6, :cond_9

    move v6, v2

    move-wide v9, v4

    :goto_2
    if-lt v6, v3, :cond_1

    iget-object v11, v0, Lcom/sunia/HTREnginev2/bzh;->b:[D

    iget-object v12, v0, Lcom/sunia/HTREnginev2/bzh;->a:[[D

    aget-object v12, v12, v6

    add-int/lit8 v13, v3, -0x1

    aget-wide v12, v12, v13

    div-double/2addr v12, v7

    aput-wide v12, v11, v6

    mul-double/2addr v12, v12

    add-double/2addr v9, v12

    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    :cond_1
    iget-object v6, v0, Lcom/sunia/HTREnginev2/bzh;->b:[D

    aget-wide v11, v6, v3

    cmpl-double v6, v11, v4

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    if-lez v6, :cond_2

    neg-double v11, v11

    :cond_2
    iget-object v6, v0, Lcom/sunia/HTREnginev2/bzh;->b:[D

    aget-wide v13, v6, v3

    mul-double v15, v13, v11

    sub-double/2addr v9, v15

    sub-double/2addr v13, v11

    aput-wide v13, v6, v3

    move v6, v3

    :goto_3
    if-ge v6, v1, :cond_5

    move v13, v2

    move-wide v14, v4

    :goto_4
    if-lt v13, v3, :cond_3

    iget-object v4, v0, Lcom/sunia/HTREnginev2/bzh;->b:[D

    aget-wide v4, v4, v13

    move/from16 v17, v1

    iget-object v1, v0, Lcom/sunia/HTREnginev2/bzh;->a:[[D

    aget-object v1, v1, v13

    aget-wide v18, v1, v6

    mul-double v4, v4, v18

    add-double/2addr v14, v4

    add-int/lit8 v13, v13, -0x1

    move/from16 v1, v17

    const-wide/16 v4, 0x0

    goto :goto_4

    :cond_3
    move/from16 v17, v1

    div-double/2addr v14, v9

    move v1, v3

    :goto_5
    if-gt v1, v2, :cond_4

    iget-object v4, v0, Lcom/sunia/HTREnginev2/bzh;->a:[[D

    aget-object v4, v4, v1

    aget-wide v18, v4, v6

    iget-object v5, v0, Lcom/sunia/HTREnginev2/bzh;->b:[D

    aget-wide v20, v5, v1

    mul-double v20, v20, v14

    sub-double v18, v18, v20

    aput-wide v18, v4, v6

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v6, v6, 0x1

    move/from16 v1, v17

    const-wide/16 v4, 0x0

    goto :goto_3

    :cond_5
    move/from16 v17, v1

    const/4 v1, 0x0

    :goto_6
    if-gt v1, v2, :cond_8

    move v4, v2

    const-wide/16 v5, 0x0

    :goto_7
    if-lt v4, v3, :cond_6

    iget-object v13, v0, Lcom/sunia/HTREnginev2/bzh;->b:[D

    aget-wide v13, v13, v4

    iget-object v15, v0, Lcom/sunia/HTREnginev2/bzh;->a:[[D

    aget-object v15, v15, v1

    aget-wide v18, v15, v4

    mul-double v13, v13, v18

    add-double/2addr v5, v13

    add-int/lit8 v4, v4, -0x1

    goto :goto_7

    :cond_6
    div-double/2addr v5, v9

    move v4, v3

    :goto_8
    if-gt v4, v2, :cond_7

    iget-object v13, v0, Lcom/sunia/HTREnginev2/bzh;->a:[[D

    aget-object v13, v13, v1

    aget-wide v14, v13, v4

    move/from16 v18, v2

    iget-object v2, v0, Lcom/sunia/HTREnginev2/bzh;->b:[D

    aget-wide v19, v2, v4

    mul-double v19, v19, v5

    sub-double v14, v14, v19

    aput-wide v14, v13, v4

    add-int/lit8 v4, v4, 0x1

    move/from16 v2, v18

    goto :goto_8

    :cond_7
    move/from16 v18, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_8
    move/from16 v18, v2

    iget-object v1, v0, Lcom/sunia/HTREnginev2/bzh;->b:[D

    aget-wide v4, v1, v3

    mul-double/2addr v4, v7

    aput-wide v4, v1, v3

    iget-object v1, v0, Lcom/sunia/HTREnginev2/bzh;->a:[[D

    aget-object v1, v1, v3

    add-int/lit8 v2, v3, -0x1

    mul-double/2addr v7, v11

    aput-wide v7, v1, v2

    goto :goto_9

    :cond_9
    move/from16 v17, v1

    move/from16 v18, v2

    :goto_9
    add-int/lit8 v3, v3, 0x1

    move/from16 v1, v17

    move/from16 v2, v18

    goto/16 :goto_0

    :cond_a
    return-void
.end method
