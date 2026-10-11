.class public Lorg/apache/commons/math3/linear/SingularValueDecomposition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/SingularValueDecomposition$b;
    }
.end annotation


# static fields
.field public static final k:D = 2.220446049250313E-16

.field public static final l:D = 1.6033346880071782E-291


# instance fields
.field public final a:[D

.field public final b:I

.field public final c:I

.field public final d:Z

.field public final e:Lorg/apache/commons/math3/linear/RealMatrix;

.field public f:Lorg/apache/commons/math3/linear/RealMatrix;

.field public g:Lorg/apache/commons/math3/linear/RealMatrix;

.field public final h:Lorg/apache/commons/math3/linear/RealMatrix;

.field public i:Lorg/apache/commons/math3/linear/RealMatrix;

.field public final j:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 32

    move-object/from16 v0, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ge v1, v2, :cond_0

    iput-boolean v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->d:Z

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v2

    iput v2, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v2

    iput v2, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    goto :goto_0

    :cond_0
    iput-boolean v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->d:Z

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v2

    iput v2, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v2

    iput v2, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    :goto_0
    iget v2, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    new-array v5, v2, [D

    iput-object v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    filled-new-array {v5, v2}, [I

    move-result-object v2

    sget-object v5, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v5, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    filled-new-array {v5, v5}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[D

    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    new-array v7, v6, [D

    iget v8, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    new-array v9, v8, [D

    sub-int/2addr v8, v4

    invoke-static {v8, v6}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v6

    iget v8, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    const/4 v10, 0x2

    sub-int/2addr v8, v10

    invoke-static {v3, v8}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v8

    move v11, v3

    :goto_1
    invoke-static {v6, v8}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v12

    const-wide/16 v15, 0x0

    if-ge v11, v12, :cond_15

    if-ge v11, v6, :cond_5

    iget-object v12, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    aput-wide v15, v12, v11

    move v12, v11

    :goto_2
    iget v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    if-ge v12, v3, :cond_1

    iget-object v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    move-object/from16 p1, v5

    aget-wide v4, v3, v11

    aget-object v17, v1, v12

    aget-wide v13, v17, v11

    invoke-static {v4, v5, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v4

    aput-wide v4, v3, v11

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v5, p1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    move-object/from16 p1, v5

    iget-object v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    aget-wide v4, v3, v11

    cmpl-double v12, v4, v15

    if-eqz v12, :cond_4

    aget-object v12, v1, v11

    aget-wide v12, v12, v11

    cmpg-double v12, v12, v15

    if-gez v12, :cond_2

    neg-double v4, v4

    aput-wide v4, v3, v11

    :cond_2
    move v3, v11

    :goto_3
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    if-ge v3, v4, :cond_3

    aget-object v4, v1, v3

    aget-wide v12, v4, v11

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    aget-wide v20, v5, v11

    div-double v12, v12, v20

    aput-wide v12, v4, v11

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_3
    aget-object v3, v1, v11

    aget-wide v4, v3, v11

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v12

    aput-wide v4, v3, v11

    :cond_4
    iget-object v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    aget-wide v4, v3, v11

    neg-double v4, v4

    aput-wide v4, v3, v11

    goto :goto_4

    :cond_5
    move-object/from16 p1, v5

    :goto_4
    add-int/lit8 v3, v11, 0x1

    move v4, v3

    :goto_5
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    if-ge v4, v5, :cond_8

    if-ge v11, v6, :cond_7

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    aget-wide v12, v5, v11

    cmpl-double v5, v12, v15

    if-eqz v5, :cond_7

    move v5, v11

    move-wide v12, v15

    :goto_6
    iget v14, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    if-ge v5, v14, :cond_6

    aget-object v14, v1, v5

    aget-wide v20, v14, v11

    aget-wide v22, v14, v4

    mul-double v20, v20, v22

    add-double v12, v12, v20

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_6
    neg-double v12, v12

    aget-object v5, v1, v11

    aget-wide v20, v5, v11

    div-double v12, v12, v20

    move v5, v11

    :goto_7
    iget v14, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    if-ge v5, v14, :cond_7

    aget-object v14, v1, v5

    aget-wide v20, v14, v4

    aget-wide v22, v14, v11

    mul-double v22, v22, v12

    add-double v20, v20, v22

    aput-wide v20, v14, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_7
    aget-object v5, v1, v11

    aget-wide v12, v5, v4

    aput-wide v12, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    if-ge v11, v6, :cond_9

    move v4, v11

    :goto_8
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    if-ge v4, v5, :cond_9

    aget-object v5, v2, v4

    aget-object v12, v1, v4

    aget-wide v12, v12, v11

    aput-wide v12, v5, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_9
    if-ge v11, v8, :cond_13

    aput-wide v15, v7, v11

    move v4, v3

    :goto_9
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    if-ge v4, v5, :cond_a

    aget-wide v12, v7, v11

    move v14, v6

    aget-wide v5, v7, v4

    invoke-static {v12, v13, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v5

    aput-wide v5, v7, v11

    add-int/lit8 v4, v4, 0x1

    move v6, v14

    goto :goto_9

    :cond_a
    move v14, v6

    aget-wide v4, v7, v11

    cmpl-double v6, v4, v15

    if-eqz v6, :cond_d

    aget-wide v12, v7, v3

    cmpg-double v6, v12, v15

    if-gez v6, :cond_b

    neg-double v4, v4

    aput-wide v4, v7, v11

    :cond_b
    move v4, v3

    :goto_a
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    if-ge v4, v5, :cond_c

    aget-wide v5, v7, v4

    aget-wide v12, v7, v11

    div-double/2addr v5, v12

    aput-wide v5, v7, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_c
    aget-wide v4, v7, v3

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v12

    aput-wide v4, v7, v3

    :cond_d
    aget-wide v4, v7, v11

    neg-double v4, v4

    aput-wide v4, v7, v11

    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    if-ge v3, v6, :cond_12

    cmpl-double v4, v4, v15

    if-eqz v4, :cond_12

    move v4, v3

    :goto_b
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    if-ge v4, v5, :cond_e

    aput-wide v15, v9, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_b

    :cond_e
    move v4, v3

    :goto_c
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    if-ge v4, v5, :cond_10

    move v5, v3

    :goto_d
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    if-ge v5, v6, :cond_f

    aget-wide v12, v9, v5

    aget-wide v15, v7, v4

    aget-object v6, v1, v5

    aget-wide v17, v6, v4

    mul-double v15, v15, v17

    add-double/2addr v12, v15

    aput-wide v12, v9, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_10
    move v4, v3

    :goto_e
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    if-ge v4, v5, :cond_12

    aget-wide v5, v7, v4

    neg-double v5, v5

    aget-wide v12, v7, v3

    div-double/2addr v5, v12

    move v12, v3

    :goto_f
    iget v13, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    if-ge v12, v13, :cond_11

    aget-object v13, v1, v12

    aget-wide v15, v13, v4

    aget-wide v17, v9, v12

    mul-double v17, v17, v5

    add-double v15, v15, v17

    aput-wide v15, v13, v4

    add-int/lit8 v12, v12, 0x1

    goto :goto_f

    :cond_11
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    :cond_12
    move v4, v3

    :goto_10
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    if-ge v4, v5, :cond_14

    aget-object v5, p1, v4

    aget-wide v12, v7, v4

    aput-wide v12, v5, v11

    add-int/lit8 v4, v4, 0x1

    goto :goto_10

    :cond_13
    move v14, v6

    :cond_14
    move-object/from16 v5, p1

    move v11, v3

    move v6, v14

    const/4 v3, 0x0

    const/4 v4, 0x1

    goto/16 :goto_1

    :cond_15
    move-object/from16 p1, v5

    move v14, v6

    iget v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    move v4, v14

    if-ge v4, v3, :cond_16

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    aget-object v6, v1, v4

    aget-wide v11, v6, v4

    aput-wide v11, v5, v4

    :cond_16
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    if-ge v5, v3, :cond_17

    iget-object v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    add-int/lit8 v6, v3, -0x1

    aput-wide v15, v5, v6

    :cond_17
    add-int/lit8 v5, v8, 0x1

    if-ge v5, v3, :cond_18

    aget-object v1, v1, v8

    add-int/lit8 v5, v3, -0x1

    aget-wide v5, v1, v5

    aput-wide v5, v7, v8

    :cond_18
    add-int/lit8 v1, v3, -0x1

    aput-wide v15, v7, v1

    move v5, v4

    :goto_11
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    if-ge v5, v6, :cond_1a

    const/4 v6, 0x0

    :goto_12
    iget v9, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    if-ge v6, v9, :cond_19

    aget-object v9, v2, v6

    aput-wide v15, v9, v5

    add-int/lit8 v6, v6, 0x1

    goto :goto_12

    :cond_19
    aget-object v6, v2, v5

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    aput-wide v11, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_1a
    const/4 v5, 0x1

    add-int/lit8 v6, v4, -0x1

    :goto_13
    if-ltz v6, :cond_22

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    aget-wide v4, v4, v6

    cmpl-double v4, v4, v15

    if-eqz v4, :cond_1f

    add-int/lit8 v4, v6, 0x1

    :goto_14
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    if-ge v4, v5, :cond_1d

    move v5, v6

    move-wide v11, v15

    :goto_15
    iget v9, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    if-ge v5, v9, :cond_1b

    aget-object v9, v2, v5

    aget-wide v13, v9, v6

    aget-wide v20, v9, v4

    mul-double v13, v13, v20

    add-double/2addr v11, v13

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_1b
    neg-double v11, v11

    aget-object v5, v2, v6

    aget-wide v13, v5, v6

    div-double/2addr v11, v13

    move v5, v6

    :goto_16
    iget v9, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    if-ge v5, v9, :cond_1c

    aget-object v9, v2, v5

    aget-wide v13, v9, v4

    aget-wide v20, v9, v6

    mul-double v20, v20, v11

    add-double v13, v13, v20

    aput-wide v13, v9, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    :cond_1c
    add-int/lit8 v4, v4, 0x1

    goto :goto_14

    :cond_1d
    move v4, v6

    :goto_17
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    if-ge v4, v5, :cond_1e

    aget-object v5, v2, v4

    aget-wide v11, v5, v6

    neg-double v11, v11

    aput-wide v11, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_17

    :cond_1e
    aget-object v4, v2, v6

    aget-wide v11, v4, v6

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    add-double/2addr v11, v13

    aput-wide v11, v4, v6

    const/4 v4, 0x0

    :goto_18
    add-int/lit8 v5, v6, -0x1

    if-ge v4, v5, :cond_21

    aget-object v5, v2, v4

    aput-wide v15, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_18

    :cond_1f
    const/4 v4, 0x0

    :goto_19
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    if-ge v4, v5, :cond_20

    aget-object v5, v2, v4

    aput-wide v15, v5, v6

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_20
    aget-object v4, v2, v6

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    aput-wide v11, v4, v6

    :cond_21
    add-int/lit8 v6, v6, -0x1

    goto :goto_13

    :cond_22
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    :goto_1a
    if-ltz v4, :cond_27

    if-ge v4, v8, :cond_25

    aget-wide v5, v7, v4

    cmpl-double v5, v5, v15

    if-eqz v5, :cond_25

    add-int/lit8 v5, v4, 0x1

    move v6, v5

    :goto_1b
    iget v9, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    if-ge v6, v9, :cond_25

    move v9, v5

    move-wide v11, v15

    :goto_1c
    iget v13, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    if-ge v9, v13, :cond_23

    aget-object v13, p1, v9

    aget-wide v20, v13, v4

    aget-wide v13, v13, v6

    mul-double v20, v20, v13

    add-double v11, v11, v20

    add-int/lit8 v9, v9, 0x1

    goto :goto_1c

    :cond_23
    neg-double v11, v11

    aget-object v9, p1, v5

    aget-wide v13, v9, v4

    div-double/2addr v11, v13

    move v9, v5

    :goto_1d
    iget v13, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    if-ge v9, v13, :cond_24

    aget-object v13, p1, v9

    aget-wide v20, v13, v6

    aget-wide v22, v13, v4

    mul-double v22, v22, v11

    add-double v20, v20, v22

    aput-wide v20, v13, v6

    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    :cond_24
    add-int/lit8 v6, v6, 0x1

    goto :goto_1b

    :cond_25
    const/4 v5, 0x0

    :goto_1e
    iget v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    if-ge v5, v6, :cond_26

    aget-object v6, p1, v5

    aput-wide v15, v6, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_1e

    :cond_26
    aget-object v5, p1, v4

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    aput-wide v11, v5, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_1a

    :cond_27
    :goto_1f
    const-wide/high16 v4, 0x3cb0000000000000L    # 2.220446049250313E-16

    if-lez v3, :cond_46

    add-int/lit8 v6, v3, -0x2

    move v8, v6

    :goto_20
    const-wide/high16 v11, 0x390000000000000L

    if-ltz v8, :cond_29

    iget-object v9, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    aget-wide v13, v9, v8

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    iget-object v9, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    add-int/lit8 v17, v8, 0x1

    aget-wide v17, v9, v17

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v17

    add-double v13, v13, v17

    mul-double/2addr v13, v4

    add-double/2addr v13, v11

    aget-wide v17, v7, v8

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v17

    cmpl-double v9, v17, v13

    if-gtz v9, :cond_28

    aput-wide v15, v7, v8

    goto :goto_21

    :cond_28
    add-int/lit8 v8, v8, -0x1

    goto :goto_20

    :cond_29
    :goto_21
    if-ne v8, v6, :cond_2a

    const/4 v4, 0x4

    :goto_22
    const/4 v5, 0x1

    goto :goto_27

    :cond_2a
    add-int/lit8 v13, v3, -0x1

    move v14, v13

    :goto_23
    if-lt v14, v8, :cond_2f

    if-ne v14, v8, :cond_2b

    goto :goto_26

    :cond_2b
    if-eq v14, v3, :cond_2c

    aget-wide v17, v7, v14

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v17

    goto :goto_24

    :cond_2c
    move-wide/from16 v17, v15

    :goto_24
    add-int/lit8 v9, v8, 0x1

    if-eq v14, v9, :cond_2d

    add-int/lit8 v9, v14, -0x1

    aget-wide v20, v7, v9

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    goto :goto_25

    :cond_2d
    move-wide/from16 v20, v15

    :goto_25
    add-double v17, v17, v20

    iget-object v9, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    aget-wide v20, v9, v14

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v20

    mul-double v17, v17, v4

    add-double v17, v17, v11

    cmpg-double v9, v20, v17

    if-gtz v9, :cond_2e

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    aput-wide v15, v4, v14

    goto :goto_26

    :cond_2e
    add-int/lit8 v14, v14, -0x1

    goto :goto_23

    :cond_2f
    :goto_26
    if-ne v14, v8, :cond_30

    const/4 v4, 0x3

    goto :goto_22

    :cond_30
    if-ne v14, v13, :cond_31

    const/4 v4, 0x1

    goto :goto_22

    :cond_31
    move v4, v10

    move v8, v14

    goto :goto_22

    :goto_27
    add-int/2addr v8, v5

    if-eq v4, v5, :cond_42

    if-eq v4, v10, :cond_40

    const/4 v5, 0x3

    if-eq v4, v5, :cond_38

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    aget-wide v5, v4, v8

    cmpg-double v9, v5, v15

    if-gtz v9, :cond_33

    cmpg-double v9, v5, v15

    if-gez v9, :cond_32

    neg-double v5, v5

    goto :goto_28

    :cond_32
    move-wide v5, v15

    :goto_28
    aput-wide v5, v4, v8

    const/4 v4, 0x0

    :goto_29
    if-gt v4, v1, :cond_33

    aget-object v5, p1, v4

    aget-wide v11, v5, v8

    neg-double v11, v11

    aput-wide v11, v5, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    :cond_33
    :goto_2a
    if-ge v8, v1, :cond_37

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    aget-wide v5, v4, v8

    add-int/lit8 v9, v8, 0x1

    aget-wide v11, v4, v9

    cmpl-double v13, v5, v11

    if-ltz v13, :cond_34

    goto :goto_2d

    :cond_34
    aput-wide v11, v4, v8

    aput-wide v5, v4, v9

    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v8, v4, :cond_35

    const/4 v4, 0x0

    :goto_2b
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    if-ge v4, v5, :cond_35

    aget-object v5, p1, v4

    aget-wide v11, v5, v9

    aget-wide v13, v5, v8

    aput-wide v13, v5, v9

    aput-wide v11, v5, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_2b

    :cond_35
    iget v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    if-ge v8, v4, :cond_36

    const/4 v4, 0x0

    :goto_2c
    iget v5, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    if-ge v4, v5, :cond_36

    aget-object v5, v2, v4

    aget-wide v11, v5, v9

    aget-wide v13, v5, v8

    aput-wide v13, v5, v9

    aput-wide v11, v5, v8

    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    :cond_36
    move v8, v9

    goto :goto_2a

    :cond_37
    :goto_2d
    add-int/lit8 v3, v3, -0x1

    move/from16 v17, v1

    move-object/from16 v18, v2

    goto/16 :goto_38

    :cond_38
    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    add-int/lit8 v5, v3, -0x1

    aget-wide v11, v4, v5

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    aget-wide v13, v4, v6

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v11

    aget-wide v13, v7, v6

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v11

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    aget-wide v13, v4, v8

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v11

    aget-wide v13, v7, v8

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    invoke-static {v11, v12, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v11

    iget-object v4, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    aget-wide v13, v4, v5

    div-double/2addr v13, v11

    aget-wide v17, v4, v6

    div-double v17, v17, v11

    aget-wide v19, v7, v6

    div-double v19, v19, v11

    aget-wide v21, v4, v8

    div-double v21, v21, v11

    aget-wide v23, v7, v8

    div-double v23, v23, v11

    add-double v11, v17, v13

    sub-double v17, v17, v13

    mul-double v11, v11, v17

    mul-double v17, v19, v19

    add-double v11, v11, v17

    const-wide/high16 v17, 0x4000000000000000L    # 2.0

    div-double v11, v11, v17

    mul-double v19, v19, v13

    mul-double v19, v19, v19

    cmpl-double v4, v11, v15

    if-nez v4, :cond_3a

    cmpl-double v4, v19, v15

    if-eqz v4, :cond_39

    goto :goto_2e

    :cond_39
    move-wide/from16 v19, v15

    goto :goto_2f

    :cond_3a
    :goto_2e
    mul-double v17, v11, v11

    add-double v17, v17, v19

    invoke-static/range {v17 .. v18}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v9

    cmpg-double v4, v11, v15

    if-gez v4, :cond_3b

    neg-double v9, v9

    :cond_3b
    add-double/2addr v11, v9

    div-double v19, v19, v11

    :goto_2f
    add-double v9, v21, v13

    sub-double v11, v21, v13

    mul-double/2addr v9, v11

    add-double v9, v9, v19

    mul-double v21, v21, v23

    move v4, v8

    move-wide/from16 v11, v21

    :goto_30
    if-ge v4, v5, :cond_3f

    invoke-static {v9, v10, v11, v12}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v13

    div-double/2addr v9, v13

    div-double/2addr v11, v13

    if-eq v4, v8, :cond_3c

    add-int/lit8 v17, v4, -0x1

    aput-wide v13, v7, v17

    :cond_3c
    iget-object v13, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    aget-wide v17, v13, v4

    mul-double v19, v9, v17

    aget-wide v21, v7, v4

    mul-double v23, v11, v21

    add-double v14, v19, v23

    mul-double v21, v21, v9

    mul-double v17, v17, v11

    sub-double v21, v21, v17

    aput-wide v21, v7, v4

    add-int/lit8 v16, v4, 0x1

    aget-wide v17, v13, v16

    move/from16 v20, v5

    move/from16 v19, v6

    mul-double v5, v11, v17

    mul-double v17, v17, v9

    aput-wide v17, v13, v16

    move/from16 v17, v1

    const/4 v13, 0x0

    :goto_31
    iget v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    if-ge v13, v1, :cond_3d

    aget-object v1, p1, v13

    aget-wide v21, v1, v4

    mul-double v23, v9, v21

    aget-wide v25, v1, v16

    mul-double v27, v11, v25

    add-double v23, v23, v27

    move-object/from16 v18, v2

    move/from16 v27, v3

    neg-double v2, v11

    mul-double v2, v2, v21

    mul-double v25, v25, v9

    add-double v2, v2, v25

    aput-wide v2, v1, v16

    aput-wide v23, v1, v4

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v2, v18

    move/from16 v3, v27

    goto :goto_31

    :cond_3d
    move-object/from16 v18, v2

    move/from16 v27, v3

    invoke-static {v14, v15, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v1

    div-double/2addr v14, v1

    div-double/2addr v5, v1

    iget-object v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    aput-wide v1, v3, v4

    aget-wide v1, v7, v4

    mul-double v9, v14, v1

    aget-wide v11, v3, v16

    mul-double v21, v5, v11

    add-double v9, v9, v21

    move-wide/from16 v21, v9

    neg-double v9, v5

    mul-double/2addr v1, v9

    mul-double/2addr v11, v14

    add-double/2addr v1, v11

    aput-wide v1, v3, v16

    aget-wide v1, v7, v16

    mul-double v11, v5, v1

    mul-double/2addr v1, v14

    aput-wide v1, v7, v16

    iget v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v4, v1, :cond_3e

    const/4 v1, 0x0

    :goto_32
    iget v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    if-ge v1, v3, :cond_3e

    aget-object v3, v18, v1

    aget-wide v23, v3, v4

    mul-double v25, v14, v23

    aget-wide v28, v3, v16

    mul-double v30, v5, v28

    add-double v25, v25, v30

    mul-double v23, v23, v9

    mul-double v28, v28, v14

    add-double v23, v23, v28

    aput-wide v23, v3, v16

    aput-wide v25, v3, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_32

    :cond_3e
    move/from16 v4, v16

    move/from16 v1, v17

    move-object/from16 v2, v18

    move/from16 v6, v19

    move/from16 v5, v20

    move-wide/from16 v9, v21

    move/from16 v3, v27

    const-wide/16 v15, 0x0

    goto/16 :goto_30

    :cond_3f
    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v27, v3

    move/from16 v19, v6

    const/4 v2, 0x1

    aput-wide v9, v7, v19

    move/from16 v5, v27

    goto/16 :goto_37

    :cond_40
    move/from16 v17, v1

    move-object/from16 v18, v2

    move/from16 v27, v3

    const/4 v2, 0x1

    add-int/lit8 v1, v8, -0x1

    aget-wide v3, v7, v1

    const-wide/16 v5, 0x0

    aput-wide v5, v7, v1

    move/from16 v5, v27

    :goto_33
    if-ge v8, v5, :cond_45

    iget-object v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    aget-wide v9, v6, v8

    invoke-static {v9, v10, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v9

    iget-object v6, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    aget-wide v11, v6, v8

    div-double/2addr v11, v9

    div-double/2addr v3, v9

    aput-wide v9, v6, v8

    neg-double v9, v3

    aget-wide v13, v7, v8

    mul-double v15, v9, v13

    mul-double/2addr v13, v11

    aput-wide v13, v7, v8

    const/4 v6, 0x0

    :goto_34
    iget v13, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    if-ge v6, v13, :cond_41

    aget-object v13, v18, v6

    aget-wide v19, v13, v8

    mul-double v21, v11, v19

    aget-wide v23, v13, v1

    mul-double v25, v3, v23

    add-double v21, v21, v25

    mul-double v19, v19, v9

    mul-double v23, v23, v11

    add-double v19, v19, v23

    aput-wide v19, v13, v1

    aput-wide v21, v13, v8

    add-int/lit8 v6, v6, 0x1

    goto :goto_34

    :cond_41
    add-int/lit8 v8, v8, 0x1

    move-wide v3, v15

    goto :goto_33

    :cond_42
    move/from16 v17, v1

    move-object/from16 v18, v2

    move v2, v5

    move/from16 v19, v6

    move v5, v3

    aget-wide v3, v7, v19

    const-wide/16 v9, 0x0

    aput-wide v9, v7, v19

    :goto_35
    if-lt v6, v8, :cond_45

    iget-object v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    aget-wide v11, v1, v6

    invoke-static {v11, v12, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->hypot(DD)D

    move-result-wide v11

    iget-object v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    aget-wide v13, v1, v6

    div-double/2addr v13, v11

    div-double v9, v3, v11

    aput-wide v11, v1, v6

    if-eq v6, v8, :cond_43

    neg-double v3, v9

    add-int/lit8 v1, v6, -0x1

    aget-wide v11, v7, v1

    mul-double/2addr v3, v11

    mul-double/2addr v11, v13

    aput-wide v11, v7, v1

    :cond_43
    const/4 v1, 0x0

    :goto_36
    iget v11, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    if-ge v1, v11, :cond_44

    aget-object v11, p1, v1

    aget-wide v15, v11, v6

    mul-double v19, v13, v15

    add-int/lit8 v12, v5, -0x1

    aget-wide v21, v11, v12

    mul-double v23, v9, v21

    add-double v19, v19, v23

    move-wide/from16 v23, v3

    neg-double v2, v9

    mul-double/2addr v2, v15

    mul-double v21, v21, v13

    add-double v2, v2, v21

    aput-wide v2, v11, v12

    aput-wide v19, v11, v6

    add-int/lit8 v1, v1, 0x1

    move-wide/from16 v3, v23

    const/4 v2, 0x1

    goto :goto_36

    :cond_44
    move-wide/from16 v23, v3

    add-int/lit8 v6, v6, -0x1

    const/4 v2, 0x1

    const-wide/16 v9, 0x0

    goto :goto_35

    :cond_45
    :goto_37
    move v3, v5

    :goto_38
    move/from16 v1, v17

    move-object/from16 v2, v18

    const/4 v10, 0x2

    const-wide/16 v15, 0x0

    goto/16 :goto_1f

    :cond_46
    move-object/from16 v18, v2

    iget v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    int-to-double v1, v1

    iget-object v3, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    const/4 v6, 0x0

    aget-wide v6, v3, v6

    mul-double/2addr v1, v6

    mul-double/2addr v1, v4

    sget-wide v3, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v1

    iput-wide v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->j:D

    iget-boolean v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->d:Z

    if-nez v1, :cond_47

    invoke-static/range {v18 .. v18}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->h:Lorg/apache/commons/math3/linear/RealMatrix;

    goto :goto_39

    :cond_47
    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static/range {v18 .. v18}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->h:Lorg/apache/commons/math3/linear/RealMatrix;

    :goto_39
    return-void
.end method

.method public static synthetic a(Lorg/apache/commons/math3/linear/SingularValueDecomposition;)[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    return-object p0
.end method


# virtual methods
.method public getConditionNumber()D
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    const/4 v1, 0x0

    aget-wide v1, v0, v1

    iget p0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    add-int/lit8 p0, p0, -0x1

    aget-wide v3, v0, p0

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public getCovariance(D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 10

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    aget-wide v3, v3, v2

    cmpl-double v3, v3, p1

    if-ltz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    if-eqz v2, :cond_1

    filled-new-array {v2, v0}, [I

    move-result-object p1

    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getVT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v4

    new-instance v5, Lorg/apache/commons/math3/linear/SingularValueDecomposition$a;

    invoke-direct {v5, p0, p1}, Lorg/apache/commons/math3/linear/SingularValueDecomposition$a;-><init>(Lorg/apache/commons/math3/linear/SingularValueDecomposition;[[D)V

    const/4 v6, 0x0

    add-int/lit8 v7, v2, -0x1

    const/4 v8, 0x0

    add-int/lit8 v9, v0, -0x1

    invoke-interface/range {v4 .. v9}, Lorg/apache/commons/math3/linear/RealMatrix;->walkInOptimizedOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D

    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_LARGE_CUTOFF_SINGULAR_VALUE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    aget-wide v4, p0, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-direct {v0, v2, p1, p0, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method public getInverseConditionNumber()D
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    iget p0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->c:I

    add-int/lit8 p0, p0, -0x1

    aget-wide v1, v0, p0

    const/4 p0, 0x0

    aget-wide v3, v0, p0

    div-double/2addr v1, v3

    return-wide v1
.end method

.method public getNorm()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public getRank()I
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    array-length v3, v2

    if-ge v0, v3, :cond_1

    aget-wide v2, v2, v0

    iget-wide v4, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->j:D

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getS()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->g:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealDiagonalMatrix([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->g:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->g:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public getSingularValues()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 9

    new-instance v8, Lorg/apache/commons/math3/linear/SingularValueDecomposition$b;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->a:[D

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getUT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getV()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getRank()I

    move-result v0

    iget v4, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->b:I

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v4, v0

    iget-wide v5, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->j:D

    const/4 v7, 0x0

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/linear/SingularValueDecomposition$b;-><init>([DLorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealMatrix;ZDLorg/apache/commons/math3/linear/SingularValueDecomposition$a;)V

    return-object v8
.end method

.method public getU()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public getUT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getU()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public getV()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->h:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public getVT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getV()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method
