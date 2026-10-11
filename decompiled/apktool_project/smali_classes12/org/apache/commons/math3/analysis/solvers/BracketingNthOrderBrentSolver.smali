.class public Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;",
        "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<",
        "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
        ">;"
    }
.end annotation


# static fields
.field public static final m:D = 1.0E-6

.field public static final n:I = 0x5

.field public static final o:I = 0x2

.field public static final p:D = 0.0625


# instance fields
.field public final k:I

.field public l:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    const/4 v2, 0x5

    .line 1
    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;-><init>(DI)V

    return-void
.end method

.method public constructor <init>(DDDI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 10
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DDD)V

    const/4 p1, 0x2

    if-lt p7, p1, :cond_0

    .line 11
    iput p7, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->k:I

    .line 12
    sget-object p1, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->l:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    return-void

    .line 13
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x1

    invoke-direct {p0, p2, p1, p3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0
.end method

.method public constructor <init>(DDI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 6
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    const/4 p1, 0x2

    if-lt p5, p1, :cond_0

    .line 7
    iput p5, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->k:I

    .line 8
    sget-object p1, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->l:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    return-void

    .line 9
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x1

    invoke-direct {p0, p2, p1, p3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0
.end method

.method public constructor <init>(DI)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    const/4 p1, 0x2

    if-lt p3, p1, :cond_0

    .line 3
    iput p3, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->k:I

    .line 4
    sget-object p1, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->l:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    return-void

    .line 5
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 p3, 0x1

    invoke-direct {p0, p2, p1, p3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0
.end method


# virtual methods
.method public final a(D[D[DII)D
    .locals 9

    move p0, p5

    :goto_0
    add-int/lit8 v0, p6, -0x1

    if-ge p0, v0, :cond_1

    add-int/lit8 v1, p0, 0x1

    sub-int v2, v1, p5

    :goto_1
    if-le v0, p0, :cond_0

    aget-wide v3, p3, v0

    add-int/lit8 v5, v0, -0x1

    aget-wide v5, p3, v5

    sub-double/2addr v3, v5

    aget-wide v5, p4, v0

    sub-int v7, v0, v2

    aget-wide v7, p4, v7

    sub-double/2addr v5, v7

    div-double/2addr v3, v5

    aput-wide v3, p3, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_0
    move p0, v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    :goto_2
    if-lt v0, p5, :cond_2

    aget-wide v3, p3, v0

    aget-wide v5, p4, v0

    sub-double v5, p1, v5

    mul-double/2addr v1, v5

    add-double/2addr v1, v3

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_2
    return-wide v1
.end method

.method public doSolve()D
    .locals 38
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    move-object/from16 v7, p0

    iget v0, v7, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->k:I

    add-int/lit8 v8, v0, 0x1

    new-array v9, v8, [D

    const/4 v10, 0x1

    add-int/2addr v0, v10

    new-array v11, v0, [D

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getMin()D

    move-result-wide v0

    const/4 v12, 0x0

    aput-wide v0, v9, v12

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getStartValue()D

    move-result-wide v0

    aput-wide v0, v9, v10

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getMax()D

    move-result-wide v5

    const/4 v13, 0x2

    aput-wide v5, v9, v13

    aget-wide v1, v9, v12

    aget-wide v3, v9, v10

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->verifySequence(DDD)V

    aget-wide v0, v9, v10

    invoke-virtual {v7, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->computeObjectiveValue(D)D

    move-result-wide v0

    aput-wide v0, v11, v10

    const-wide/16 v14, 0x0

    invoke-static {v0, v1, v14, v15, v10}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-wide v0, v9, v10

    return-wide v0

    :cond_0
    aget-wide v0, v9, v12

    invoke-virtual {v7, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->computeObjectiveValue(D)D

    move-result-wide v0

    aput-wide v0, v11, v12

    invoke-static {v0, v1, v14, v15, v10}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    if-eqz v0, :cond_1

    aget-wide v0, v9, v12

    return-wide v0

    :cond_1
    aget-wide v0, v11, v12

    aget-wide v2, v11, v10

    mul-double/2addr v0, v2

    cmpg-double v0, v0, v14

    if-gez v0, :cond_2

    move v0, v10

    move v1, v13

    goto :goto_0

    :cond_2
    aget-wide v0, v9, v13

    invoke-virtual {v7, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->computeObjectiveValue(D)D

    move-result-wide v0

    aput-wide v0, v11, v13

    invoke-static {v0, v1, v14, v15, v10}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    if-eqz v0, :cond_3

    aget-wide v0, v9, v13

    return-wide v0

    :cond_3
    aget-wide v0, v11, v10

    aget-wide v2, v11, v13

    mul-double/2addr v0, v2

    cmpg-double v0, v0, v14

    if-gez v0, :cond_1b

    move v0, v13

    const/4 v1, 0x3

    :goto_0
    new-array v5, v8, [D

    add-int/lit8 v2, v0, -0x1

    aget-wide v3, v9, v2

    aget-wide v16, v11, v2

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v18

    aget-wide v20, v9, v0

    aget-wide v22, v11, v0

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v24

    move-wide/from16 v14, v24

    move-wide/from16 v36, v3

    move v4, v0

    move v3, v1

    move v0, v12

    move-wide/from16 v1, v18

    move-wide/from16 v18, v16

    move-wide/from16 v16, v36

    :goto_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v26

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v28

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v6

    move-object/from16 v30, v11

    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    invoke-static {v6, v7, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    mul-double v28, v28, v6

    add-double v26, v26, v28

    sub-double v10, v20, v16

    cmpg-double v6, v10, v26

    if-lez v6, :cond_12

    invoke-static {v1, v2, v14, v15}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v6

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getFunctionValueAccuracy()D

    move-result-wide v26

    cmpg-double v6, v6, v26

    if-gez v6, :cond_4

    goto/16 :goto_a

    :cond_4
    if-lt v0, v13, :cond_5

    add-int/lit8 v26, v0, -0x2

    const/16 v27, 0x1

    shl-int v28, v27, v26

    add-int/lit8 v13, v28, -0x1

    int-to-double v6, v13

    add-int/lit8 v13, v26, 0x1

    move-wide/from16 v26, v1

    move v2, v0

    int-to-double v0, v13

    mul-double v33, v6, v18

    const-wide/high16 v31, 0x3fb0000000000000L    # 0.0625

    mul-double v31, v31, v0

    mul-double v31, v31, v22

    :goto_2
    sub-double v33, v33, v31

    add-double/2addr v6, v0

    div-double v0, v33, v6

    move-wide/from16 v31, v0

    goto :goto_3

    :cond_5
    move-wide/from16 v26, v1

    move v2, v0

    move v0, v13

    if-lt v12, v0, :cond_6

    add-int/lit8 v0, v12, -0x2

    add-int/lit8 v1, v0, 0x1

    int-to-double v6, v1

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sub-int/2addr v0, v1

    int-to-double v0, v0

    mul-double v33, v0, v22

    const-wide/high16 v31, 0x3fb0000000000000L    # 0.0625

    mul-double v31, v31, v6

    mul-double v31, v31, v18

    goto :goto_2

    :cond_6
    const-wide/16 v31, 0x0

    :goto_3
    move v13, v3

    const/4 v7, 0x0

    :goto_4
    sub-int v0, v13, v7

    invoke-static {v9, v7, v5, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v28, v2

    move-object/from16 v0, p0

    move-wide/from16 v1, v31

    move v6, v3

    move-object v3, v5

    move-wide/from16 v33, v14

    move v14, v4

    move-object/from16 v4, v30

    move-object v15, v5

    move v5, v7

    move-object/from16 v35, v15

    move v15, v6

    move v6, v13

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->a(D[D[DII)D

    move-result-wide v0

    cmpl-double v2, v0, v16

    if-lez v2, :cond_7

    cmpg-double v2, v0, v20

    if-ltz v2, :cond_9

    :cond_7
    sub-int v4, v14, v7

    sub-int v0, v13, v14

    if-lt v4, v0, :cond_8

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_8
    add-int/lit8 v13, v13, -0x1

    :goto_5
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :cond_9
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_b

    sub-int v2, v13, v7

    const/4 v3, 0x1

    if-gt v2, v3, :cond_a

    goto :goto_6

    :cond_a
    move v4, v14

    move v3, v15

    move/from16 v2, v28

    move-wide/from16 v14, v33

    move-object/from16 v5, v35

    goto :goto_4

    :cond_b
    :goto_6
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v2

    if-eqz v2, :cond_c

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v0

    add-double v0, v16, v10

    add-int/lit8 v7, v14, -0x1

    move-object/from16 v2, p0

    move v4, v14

    goto :goto_7

    :cond_c
    move-object/from16 v2, p0

    move v4, v13

    :goto_7
    invoke-virtual {v2, v0, v1}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->computeObjectiveValue(D)D

    move-result-wide v5

    const/4 v3, 0x1

    const-wide/16 v10, 0x0

    invoke-static {v5, v6, v10, v11, v3}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v13

    if-eqz v13, :cond_d

    return-wide v0

    :cond_d
    const/4 v3, 0x2

    if-le v15, v3, :cond_e

    sub-int v3, v4, v7

    if-eq v3, v15, :cond_e

    const/4 v4, 0x0

    invoke-static {v9, v7, v9, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v10, v30

    invoke-static {v10, v7, v10, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v4, v14, v7

    goto :goto_8

    :cond_e
    move-object/from16 v10, v30

    if-ne v15, v8, :cond_10

    add-int/lit8 v3, v15, -0x1

    add-int/lit8 v4, v8, 0x1

    const/4 v7, 0x2

    div-int/2addr v4, v7

    if-lt v14, v4, :cond_f

    const/4 v4, 0x1

    const/4 v7, 0x0

    invoke-static {v9, v4, v9, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v10, v4, v10, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v4, v14, -0x1

    goto :goto_8

    :cond_f
    move v4, v14

    goto :goto_8

    :cond_10
    move v4, v14

    move v3, v15

    :goto_8
    add-int/lit8 v7, v4, 0x1

    sub-int v11, v3, v4

    invoke-static {v9, v4, v9, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-wide v0, v9, v4

    invoke-static {v10, v4, v10, v7, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aput-wide v5, v10, v4

    const/4 v11, 0x1

    add-int/2addr v3, v11

    mul-double v13, v5, v18

    const-wide/16 v24, 0x0

    cmpg-double v11, v13, v24

    if-gtz v11, :cond_11

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v11

    add-int/lit8 v7, v28, 0x1

    move-wide/from16 v20, v0

    move-wide/from16 v22, v5

    move v0, v7

    move-wide v14, v11

    const/4 v12, 0x0

    goto :goto_9

    :cond_11
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v13

    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v16, v0

    move-wide/from16 v18, v5

    move v4, v7

    move-wide/from16 v26, v13

    move-wide/from16 v14, v33

    const/4 v0, 0x0

    :goto_9
    move-object v7, v2

    move-object v11, v10

    move-wide/from16 v1, v26

    move-object/from16 v5, v35

    const/4 v10, 0x1

    const/4 v13, 0x2

    goto/16 :goto_1

    :cond_12
    :goto_a
    move-wide/from16 v26, v1

    move-wide/from16 v33, v14

    move-object/from16 v2, p0

    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver$a;->a:[I

    iget-object v1, v2, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->l:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_19

    const/4 v1, 0x2

    if-eq v0, v1, :cond_18

    const/4 v1, 0x3

    if-eq v0, v1, :cond_17

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    const/4 v1, 0x5

    if-ne v0, v1, :cond_14

    const-wide/16 v0, 0x0

    cmpg-double v0, v18, v0

    if-gez v0, :cond_13

    move-wide/from16 v16, v20

    :cond_13
    return-wide v16

    :cond_14
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    :cond_15
    const-wide/16 v0, 0x0

    cmpg-double v0, v18, v0

    if-gtz v0, :cond_16

    goto :goto_b

    :cond_16
    move-wide/from16 v16, v20

    :goto_b
    return-wide v16

    :cond_17
    return-wide v20

    :cond_18
    return-wide v16

    :cond_19
    cmpg-double v0, v26, v33

    if-gez v0, :cond_1a

    goto :goto_c

    :cond_1a
    move-wide/from16 v16, v20

    :goto_c
    return-wide v16

    :cond_1b
    move-object v10, v11

    new-instance v11, Lorg/apache/commons/math3/exception/NoBracketingException;

    const/4 v0, 0x0

    aget-wide v1, v9, v0

    const/4 v3, 0x2

    aget-wide v4, v9, v3

    aget-wide v6, v10, v0

    aget-wide v8, v10, v3

    move-object v0, v11

    move-wide v3, v4

    move-wide v5, v6

    move-wide v7, v8

    invoke-direct/range {v0 .. v8}, Lorg/apache/commons/math3/exception/NoBracketingException;-><init>(DDDD)V

    throw v11
.end method

.method public getMaximalOrder()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->k:I

    return p0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 3
    iput-object p9, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->l:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 4
    invoke-super/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NoBracketingException;
        }
    .end annotation

    .line 1
    iput-object p7, p0, Lorg/apache/commons/math3/analysis/solvers/BracketingNthOrderBrentSolver;->l:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 2
    invoke-super/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide p0

    return-wide p0
.end method
