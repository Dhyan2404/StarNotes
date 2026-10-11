.class public Lcom/sunia/HTREnginev2/z5m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sunia/HTREnginev2/z5m$b;
    }
.end annotation


# static fields
.field public static final g:I = 0x64


# instance fields
.field public final a:[[D

.field public final b:[[D

.field public c:Lorg/apache/commons/math3/linear/RealMatrix;

.field public d:Lorg/apache/commons/math3/linear/RealMatrix;

.field public e:Lorg/apache/commons/math3/linear/RealMatrix;

.field public final f:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-wide v0, Lorg/apache/commons/math3/util/Precision;->EPSILON:D

    iput-wide v0, p0, Lcom/sunia/HTREnginev2/z5m;->f:D

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->isSquare()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sunia/HTREnginev2/bzh;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/bzh;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/bzh;->a()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    invoke-virtual {v0}, Lcom/sunia/HTREnginev2/bzh;->c()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p1

    iput-object p1, p0, Lcom/sunia/HTREnginev2/z5m;->a:[[D

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sunia/HTREnginev2/z5m;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/z5m;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/z5m;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z5m;->i()V

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
.method public final a(IIILcom/sunia/HTREnginev2/z5m$b;)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    iget-object v4, v0, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    aget-object v5, v4, v1

    aget-wide v6, v5, v1

    iput-wide v6, v3, Lcom/sunia/HTREnginev2/z5m$b;->a:D

    const-wide/16 v8, 0x0

    iput-wide v8, v3, Lcom/sunia/HTREnginev2/z5m$b;->c:D

    iput-wide v8, v3, Lcom/sunia/HTREnginev2/z5m$b;->b:D

    move/from16 v10, p1

    if-ge v10, v1, :cond_0

    add-int/lit8 v10, v1, -0x1

    aget-object v4, v4, v10

    aget-wide v11, v4, v10

    iput-wide v11, v3, Lcom/sunia/HTREnginev2/z5m$b;->b:D

    aget-wide v10, v5, v10

    aget-wide v4, v4, v1

    mul-double/2addr v10, v4

    iput-wide v10, v3, Lcom/sunia/HTREnginev2/z5m$b;->c:D

    :cond_0
    const/16 v4, 0xa

    const/4 v5, 0x0

    if-ne v2, v4, :cond_2

    iget-wide v10, v3, Lcom/sunia/HTREnginev2/z5m$b;->d:D

    add-double/2addr v10, v6

    iput-wide v10, v3, Lcom/sunia/HTREnginev2/z5m$b;->d:D

    move v4, v5

    :goto_0
    if-gt v4, v1, :cond_1

    iget-object v6, v0, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    aget-object v6, v6, v4

    aget-wide v10, v6, v4

    iget-wide v12, v3, Lcom/sunia/HTREnginev2/z5m$b;->a:D

    sub-double/2addr v10, v12

    aput-wide v10, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, v0, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    aget-object v4, v4, v1

    add-int/lit8 v6, v1, -0x1

    aget-wide v10, v4, v6

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    iget-object v4, v0, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    aget-object v4, v4, v6

    add-int/lit8 v6, v1, -0x2

    aget-wide v6, v4, v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    add-double/2addr v10, v6

    const-wide/high16 v6, 0x3fe8000000000000L    # 0.75

    mul-double/2addr v6, v10

    iput-wide v6, v3, Lcom/sunia/HTREnginev2/z5m$b;->a:D

    iput-wide v6, v3, Lcom/sunia/HTREnginev2/z5m$b;->b:D

    const-wide/high16 v6, -0x4024000000000000L    # -0.4375

    mul-double/2addr v6, v10

    mul-double/2addr v6, v10

    iput-wide v6, v3, Lcom/sunia/HTREnginev2/z5m$b;->c:D

    :cond_2
    const/16 v4, 0x1e

    if-ne v2, v4, :cond_5

    iget-wide v6, v3, Lcom/sunia/HTREnginev2/z5m$b;->b:D

    iget-wide v10, v3, Lcom/sunia/HTREnginev2/z5m$b;->a:D

    sub-double/2addr v6, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    div-double/2addr v6, v10

    mul-double/2addr v6, v6

    iget-wide v12, v3, Lcom/sunia/HTREnginev2/z5m$b;->c:D

    add-double/2addr v6, v12

    cmpl-double v2, v6, v8

    if-lez v2, :cond_5

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    iget-wide v8, v3, Lcom/sunia/HTREnginev2/z5m$b;->b:D

    iget-wide v12, v3, Lcom/sunia/HTREnginev2/z5m$b;->a:D

    cmpg-double v2, v8, v12

    if-gez v2, :cond_3

    neg-double v6, v6

    :cond_3
    iget-wide v14, v3, Lcom/sunia/HTREnginev2/z5m$b;->c:D

    sub-double/2addr v8, v12

    div-double/2addr v8, v10

    add-double/2addr v8, v6

    div-double/2addr v14, v8

    sub-double/2addr v12, v14

    :goto_1
    if-gt v5, v1, :cond_4

    iget-object v2, v0, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    aget-object v2, v2, v5

    aget-wide v6, v2, v5

    sub-double/2addr v6, v12

    aput-wide v6, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    iget-wide v0, v3, Lcom/sunia/HTREnginev2/z5m$b;->d:D

    add-double/2addr v0, v12

    iput-wide v0, v3, Lcom/sunia/HTREnginev2/z5m$b;->d:D

    const-wide v0, 0x3feed916872b020cL    # 0.964

    iput-wide v0, v3, Lcom/sunia/HTREnginev2/z5m$b;->c:D

    iput-wide v0, v3, Lcom/sunia/HTREnginev2/z5m$b;->b:D

    iput-wide v0, v3, Lcom/sunia/HTREnginev2/z5m$b;->a:D

    :cond_5
    return-void
.end method

.method public final b(ID)I
    .locals 6

    :goto_0
    if-lez p1, :cond_2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    add-int/lit8 v1, p1, -0x1

    aget-object v0, v0, v1

    aget-wide v2, v0, v1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    aget-object v0, v0, p1

    aget-wide v4, v0, p1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide/16 v4, 0x0

    cmpl-double v0, v2, v4

    if-nez v0, :cond_0

    move-wide v2, p2

    :cond_0
    iget-object v0, p0, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    aget-object v0, v0, p1

    aget-wide v0, v0, v1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v4, p0, Lcom/sunia/HTREnginev2/z5m;->f:D

    mul-double/2addr v4, v2

    cmpg-double v0, v0, v4

    if-gez v0, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return p1
.end method

.method public final c()D
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    array-length v4, v4

    if-ge v3, v4, :cond_1

    add-int/lit8 v4, v3, -0x1

    invoke-static {v4, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v4

    :goto_1
    iget-object v5, p0, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    array-length v6, v5

    if-ge v4, v6, :cond_0

    aget-object v5, v5, v3

    aget-wide v5, v5, v4

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    add-double/2addr v0, v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public d()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/z5m;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/z5m;->a:[[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/z5m;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/z5m;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public e()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/z5m;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/z5m;->d()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/z5m;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/z5m;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public f()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    iget-object v0, p0, Lcom/sunia/HTREnginev2/z5m;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lcom/sunia/HTREnginev2/z5m;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_0
    iget-object p0, p0, Lcom/sunia/HTREnginev2/z5m;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public final g(IILcom/sunia/HTREnginev2/z5m$b;[D)I
    .locals 19

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    const/4 v3, 0x2

    add-int/lit8 v4, p2, -0x2

    :goto_0
    if-lt v4, v1, :cond_2

    iget-object v5, v0, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    aget-object v6, v5, v4

    aget-wide v7, v6, v4

    iget-wide v9, v2, Lcom/sunia/HTREnginev2/z5m$b;->a:D

    sub-double/2addr v9, v7

    iget-wide v11, v2, Lcom/sunia/HTREnginev2/z5m$b;->b:D

    sub-double/2addr v11, v7

    mul-double v13, v9, v11

    move/from16 p2, v4

    iget-wide v3, v2, Lcom/sunia/HTREnginev2/z5m$b;->c:D

    sub-double/2addr v13, v3

    add-int/lit8 v4, p2, 0x1

    aget-object v3, v5, v4

    aget-wide v16, v3, p2

    div-double v13, v13, v16

    aget-wide v16, v6, v4

    add-double v13, v13, v16

    const/16 v16, 0x0

    aput-wide v13, p4, v16

    aget-wide v13, v3, v4

    sub-double/2addr v13, v7

    sub-double/2addr v13, v9

    sub-double/2addr v13, v11

    const/4 v3, 0x1

    aput-wide v13, p4, v3

    add-int/lit8 v9, p2, 0x2

    aget-object v5, v5, v9

    aget-wide v9, v5, v4

    const/4 v5, 0x2

    aput-wide v9, p4, v5

    move/from16 v9, p2

    if-ne v9, v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v10, v9, -0x1

    aget-wide v11, v6, v10

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    aget-wide v13, p4, v3

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    aget-wide v17, p4, v5

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v17

    add-double v13, v13, v17

    mul-double/2addr v11, v13

    aget-wide v13, p4, v16

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    iget-object v3, v0, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    aget-object v3, v3, v10

    aget-wide v15, v3, v10

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v15

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    add-double/2addr v15, v6

    iget-object v3, v0, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    aget-object v3, v3, v4

    aget-wide v3, v3, v4

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    add-double/2addr v15, v3

    mul-double/2addr v13, v15

    iget-wide v3, v0, Lcom/sunia/HTREnginev2/z5m;->f:D

    mul-double/2addr v3, v13

    cmpg-double v3, v11, v3

    if-gez v3, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v9, -0x1

    move v3, v5

    goto :goto_0

    :cond_2
    move v9, v4

    :goto_1
    return v9
.end method

.method public final h(IIILcom/sunia/HTREnginev2/z5m$b;[D)V
    .locals 32

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p4

    iget-object v4, v0, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    array-length v4, v4

    const/4 v5, 0x0

    aget-wide v6, p5, v5

    const/4 v8, 0x1

    aget-wide v9, p5, v8

    const/4 v11, 0x2

    aget-wide v12, p5, v11

    move v14, v1

    :goto_0
    add-int/lit8 v15, v2, -0x1

    const-wide/16 v16, 0x0

    if-gt v14, v15, :cond_e

    if-eq v14, v15, :cond_0

    move v15, v8

    goto :goto_1

    :cond_0
    move v15, v5

    :goto_1
    if-eq v14, v1, :cond_3

    iget-object v6, v0, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    aget-object v7, v6, v14

    add-int/lit8 v9, v14, -0x1

    aget-wide v12, v7, v9

    add-int/lit8 v7, v14, 0x1

    aget-object v7, v6, v7

    aget-wide v18, v7, v9

    if-eqz v15, :cond_1

    add-int/lit8 v7, v14, 0x2

    aget-object v6, v6, v7

    aget-wide v6, v6, v9

    goto :goto_2

    :cond_1
    move-wide/from16 v6, v16

    :goto_2
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v9

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    add-double v9, v9, v20

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    add-double v9, v9, v20

    iput-wide v9, v3, Lcom/sunia/HTREnginev2/z5m$b;->a:D

    const-wide/16 v24, 0x0

    move-wide/from16 v28, v6

    iget-wide v5, v0, Lcom/sunia/HTREnginev2/z5m;->f:D

    move-wide/from16 v22, v9

    move-wide/from16 v26, v5

    invoke-static/range {v22 .. v27}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v5

    if-eqz v5, :cond_2

    move-wide v6, v12

    move-wide/from16 v9, v18

    move-wide/from16 v12, v28

    move/from16 v19, v4

    goto/16 :goto_7

    :cond_2
    iget-wide v5, v3, Lcom/sunia/HTREnginev2/z5m$b;->a:D

    div-double v9, v12, v5

    div-double v12, v18, v5

    div-double v5, v28, v5

    move-wide/from16 v30, v9

    move-wide v9, v12

    move-wide v12, v5

    move-wide/from16 v6, v30

    :cond_3
    mul-double v18, v6, v6

    mul-double v21, v9, v9

    add-double v18, v18, v21

    mul-double v21, v12, v12

    add-double v18, v18, v21

    move-wide/from16 v21, v12

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v11

    cmpg-double v13, v6, v16

    if-gez v13, :cond_4

    neg-double v11, v11

    :cond_4
    cmpl-double v13, v11, v16

    if-eqz v13, :cond_d

    if-eq v14, v1, :cond_5

    iget-object v13, v0, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    aget-object v13, v13, v14

    add-int/lit8 v16, v14, -0x1

    move-wide/from16 v23, v9

    neg-double v8, v11

    move-wide/from16 v25, v6

    iget-wide v5, v3, Lcom/sunia/HTREnginev2/z5m$b;->a:D

    mul-double/2addr v8, v5

    aput-wide v8, v13, v16

    move/from16 v5, p1

    goto :goto_3

    :cond_5
    move/from16 v5, p1

    move-wide/from16 v25, v6

    move-wide/from16 v23, v9

    if-eq v5, v1, :cond_6

    iget-object v6, v0, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    aget-object v6, v6, v14

    add-int/lit8 v7, v14, -0x1

    aget-wide v8, v6, v7

    neg-double v8, v8

    aput-wide v8, v6, v7

    :cond_6
    :goto_3
    add-double v6, v25, v11

    div-double v8, v6, v11

    iput-wide v8, v3, Lcom/sunia/HTREnginev2/z5m$b;->a:D

    div-double v9, v23, v11

    iput-wide v9, v3, Lcom/sunia/HTREnginev2/z5m$b;->b:D

    div-double v12, v21, v11

    div-double v9, v23, v6

    div-double v16, v21, v6

    move v8, v14

    :goto_4
    if-ge v8, v4, :cond_8

    iget-object v6, v0, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    aget-object v7, v6, v14

    aget-wide v21, v7, v8

    add-int/lit8 v11, v14, 0x1

    aget-object v11, v6, v11

    aget-wide v23, v11, v8

    mul-double v23, v23, v9

    add-double v21, v21, v23

    if-eqz v15, :cond_7

    add-int/lit8 v19, v14, 0x2

    aget-object v6, v6, v19

    aget-wide v23, v6, v8

    mul-double v25, v16, v23

    add-double v21, v21, v25

    mul-double v25, v21, v12

    sub-double v23, v23, v25

    aput-wide v23, v6, v8

    :cond_7
    aget-wide v23, v7, v8

    move/from16 v19, v4

    iget-wide v4, v3, Lcom/sunia/HTREnginev2/z5m$b;->a:D

    mul-double v4, v4, v21

    sub-double v23, v23, v4

    aput-wide v23, v7, v8

    aget-wide v4, v11, v8

    iget-wide v6, v3, Lcom/sunia/HTREnginev2/z5m$b;->b:D

    mul-double v6, v6, v21

    sub-double/2addr v4, v6

    aput-wide v4, v11, v8

    add-int/lit8 v8, v8, 0x1

    move/from16 v5, p1

    move/from16 v4, v19

    move-wide/from16 v6, v21

    goto :goto_4

    :cond_8
    move/from16 v19, v4

    const/4 v4, 0x0

    :goto_5
    add-int/lit8 v5, v14, 0x3

    invoke-static {v2, v5}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    if-gt v4, v5, :cond_a

    iget-wide v5, v3, Lcom/sunia/HTREnginev2/z5m$b;->a:D

    iget-object v7, v0, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    aget-object v7, v7, v4

    aget-wide v21, v7, v14

    mul-double v5, v5, v21

    iget-wide v1, v3, Lcom/sunia/HTREnginev2/z5m$b;->b:D

    add-int/lit8 v8, v14, 0x1

    aget-wide v21, v7, v8

    mul-double v1, v1, v21

    add-double/2addr v5, v1

    if-eqz v15, :cond_9

    add-int/lit8 v1, v14, 0x2

    aget-wide v21, v7, v1

    mul-double v23, v12, v21

    add-double v5, v5, v23

    mul-double v23, v5, v16

    sub-double v21, v21, v23

    aput-wide v21, v7, v1

    :cond_9
    aget-wide v1, v7, v14

    sub-double/2addr v1, v5

    aput-wide v1, v7, v14

    aget-wide v1, v7, v8

    mul-double v21, v5, v9

    sub-double v1, v1, v21

    aput-wide v1, v7, v8

    add-int/lit8 v4, v4, 0x1

    move/from16 v1, p2

    move/from16 v2, p3

    move-wide v6, v5

    goto :goto_5

    :cond_a
    iget-object v1, v0, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    array-length v1, v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v4, 0x0

    :goto_6
    if-gt v4, v1, :cond_c

    iget-wide v5, v3, Lcom/sunia/HTREnginev2/z5m$b;->a:D

    iget-object v7, v0, Lcom/sunia/HTREnginev2/z5m;->a:[[D

    aget-object v7, v7, v4

    aget-wide v21, v7, v14

    mul-double v5, v5, v21

    move v8, v1

    iget-wide v1, v3, Lcom/sunia/HTREnginev2/z5m$b;->b:D

    add-int/lit8 v11, v14, 0x1

    aget-wide v21, v7, v11

    mul-double v1, v1, v21

    add-double/2addr v5, v1

    if-eqz v15, :cond_b

    add-int/lit8 v1, v14, 0x2

    aget-wide v21, v7, v1

    mul-double v23, v12, v21

    add-double v5, v5, v23

    mul-double v23, v5, v16

    sub-double v21, v21, v23

    aput-wide v21, v7, v1

    :cond_b
    aget-wide v1, v7, v14

    sub-double/2addr v1, v5

    aput-wide v1, v7, v14

    aget-wide v1, v7, v11

    mul-double v21, v5, v9

    sub-double v1, v1, v21

    aput-wide v1, v7, v11

    add-int/lit8 v4, v4, 0x1

    move-wide v6, v5

    move v1, v8

    const/4 v2, 0x1

    goto :goto_6

    :cond_c
    move-wide/from16 v12, v16

    goto :goto_7

    :cond_d
    move/from16 v19, v4

    move-wide/from16 v25, v6

    move-wide/from16 v23, v9

    move-wide/from16 v12, v21

    :goto_7
    add-int/lit8 v14, v14, 0x1

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v4, v19

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v11, 0x2

    goto/16 :goto_0

    :cond_e
    move v1, v11

    add-int/lit8 v1, p2, 0x2

    move/from16 v2, p3

    move v3, v1

    :goto_8
    if-gt v3, v2, :cond_10

    iget-object v4, v0, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    aget-object v4, v4, v3

    add-int/lit8 v5, v3, -0x2

    aput-wide v16, v4, v5

    if-le v3, v1, :cond_f

    add-int/lit8 v5, v3, -0x3

    aput-wide v16, v4, v5

    :cond_f
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_10
    return-void
.end method

.method public final i()V
    .locals 22

    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    array-length v7, v0

    invoke-virtual/range {p0 .. p0}, Lcom/sunia/HTREnginev2/z5m;->c()D

    move-result-wide v8

    new-instance v10, Lcom/sunia/HTREnginev2/z5m$b;

    const/4 v0, 0x0

    invoke-direct {v10, v0}, Lcom/sunia/HTREnginev2/z5m$b;-><init>(Lcom/sunia/HTREnginev2/z5m$a;)V

    add-int/lit8 v11, v7, -0x1

    const/4 v12, 0x0

    move v13, v11

    move v0, v12

    :goto_0
    if-ltz v13, :cond_7

    invoke-virtual {v6, v13, v8, v9}, Lcom/sunia/HTREnginev2/z5m;->b(ID)I

    move-result v1

    if-ne v1, v13, :cond_0

    iget-object v0, v6, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    aget-object v0, v0, v13

    aget-wide v1, v0, v13

    iget-wide v3, v10, Lcom/sunia/HTREnginev2/z5m$b;->d:D

    add-double/2addr v1, v3

    aput-wide v1, v0, v13

    add-int/lit8 v13, v13, -0x1

    move-wide/from16 v18, v8

    :goto_1
    move v0, v12

    goto/16 :goto_6

    :cond_0
    add-int/lit8 v2, v13, -0x1

    if-ne v1, v2, :cond_5

    iget-object v0, v6, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    aget-object v1, v0, v2

    aget-wide v3, v1, v2

    aget-object v0, v0, v13

    aget-wide v14, v0, v13

    sub-double/2addr v3, v14

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v3, v3, v16

    mul-double v16, v3, v3

    aget-wide v18, v0, v2

    aget-wide v20, v1, v13

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v18, v8

    iget-wide v8, v10, Lcom/sunia/HTREnginev2/z5m$b;->d:D

    add-double/2addr v14, v8

    aput-wide v14, v0, v13

    aget-wide v14, v1, v2

    add-double/2addr v14, v8

    aput-wide v14, v1, v2

    const-wide/16 v0, 0x0

    cmpl-double v5, v16, v0

    if-ltz v5, :cond_4

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    cmpl-double v0, v3, v0

    if-ltz v0, :cond_1

    add-double/2addr v3, v8

    goto :goto_2

    :cond_1
    sub-double/2addr v3, v8

    :goto_2
    iget-object v0, v6, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    aget-object v0, v0, v13

    aget-wide v0, v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    add-double/2addr v8, v14

    div-double/2addr v0, v8

    div-double/2addr v3, v8

    mul-double v8, v0, v0

    mul-double v14, v3, v3

    add-double/2addr v8, v14

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    div-double/2addr v0, v8

    div-double/2addr v3, v8

    move v5, v2

    :goto_3
    if-ge v5, v7, :cond_2

    iget-object v8, v6, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    aget-object v9, v8, v2

    aget-wide v14, v9, v5

    mul-double v16, v3, v14

    aget-object v8, v8, v13

    aget-wide v20, v8, v5

    mul-double v20, v20, v0

    add-double v16, v16, v20

    aput-wide v16, v9, v5

    aget-wide v16, v8, v5

    mul-double v16, v16, v3

    mul-double/2addr v14, v0

    sub-double v16, v16, v14

    aput-wide v16, v8, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    move v5, v12

    :goto_4
    if-gt v5, v13, :cond_3

    iget-object v8, v6, Lcom/sunia/HTREnginev2/z5m;->b:[[D

    aget-object v8, v8, v5

    aget-wide v14, v8, v2

    mul-double v16, v3, v14

    aget-wide v20, v8, v13

    mul-double v20, v20, v0

    add-double v16, v16, v20

    aput-wide v16, v8, v2

    aget-wide v16, v8, v13

    mul-double v16, v16, v3

    mul-double/2addr v14, v0

    sub-double v16, v16, v14

    aput-wide v16, v8, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    move v5, v12

    :goto_5
    if-gt v5, v11, :cond_4

    iget-object v8, v6, Lcom/sunia/HTREnginev2/z5m;->a:[[D

    aget-object v8, v8, v5

    aget-wide v14, v8, v2

    mul-double v16, v3, v14

    aget-wide v20, v8, v13

    mul-double v20, v20, v0

    add-double v16, v16, v20

    aput-wide v16, v8, v2

    aget-wide v16, v8, v13

    mul-double v16, v16, v3

    mul-double/2addr v14, v0

    sub-double v16, v16, v14

    aput-wide v16, v8, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v13, v13, -0x2

    goto/16 :goto_1

    :cond_5
    move-wide/from16 v18, v8

    invoke-virtual {v6, v1, v13, v0, v10}, Lcom/sunia/HTREnginev2/z5m;->a(IIILcom/sunia/HTREnginev2/z5m$b;)V

    add-int/lit8 v8, v0, 0x1

    const/16 v0, 0x64

    if-gt v8, v0, :cond_6

    const/4 v0, 0x3

    new-array v5, v0, [D

    invoke-virtual {v6, v1, v13, v10, v5}, Lcom/sunia/HTREnginev2/z5m;->g(IILcom/sunia/HTREnginev2/z5m$b;[D)I

    move-result v2

    move-object/from16 v0, p0

    move v3, v13

    move-object v4, v10

    invoke-virtual/range {v0 .. v5}, Lcom/sunia/HTREnginev2/z5m;->h(IIILcom/sunia/HTREnginev2/z5m$b;[D)V

    move v0, v8

    :goto_6
    move-wide/from16 v8, v18

    goto/16 :goto_0

    :cond_6
    new-instance v1, Lorg/apache/commons/math3/exception/MaxCountExceededException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONVERGENCE_FAILED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    new-array v3, v12, [Ljava/lang/Object;

    invoke-direct {v1, v2, v0, v3}, Lorg/apache/commons/math3/exception/MaxCountExceededException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    throw v1

    :cond_7
    return-void
.end method
