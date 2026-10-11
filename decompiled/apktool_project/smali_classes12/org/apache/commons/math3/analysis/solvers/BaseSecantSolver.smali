.class public abstract Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;
.super Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;",
        "Lorg/apache/commons/math3/analysis/solvers/BracketedUnivariateSolver<",
        "Lorg/apache/commons/math3/analysis/UnivariateFunction;",
        ">;"
    }
.end annotation


# static fields
.field protected static final DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6


# instance fields
.field public k:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

.field public final l:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;


# direct methods
.method public constructor <init>(DDDLorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;)V
    .locals 0

    .line 7
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DDD)V

    .line 8
    sget-object p1, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->k:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 9
    iput-object p7, p0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->l:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    return-void
.end method

.method public constructor <init>(DDLorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(DD)V

    .line 5
    sget-object p1, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->k:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 6
    iput-object p5, p0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->l:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/analysis/solvers/AbstractUnivariateSolver;-><init>(D)V

    .line 2
    sget-object p1, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    iput-object p1, p0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->k:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 3
    iput-object p3, p0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->l:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    return-void
.end method


# virtual methods
.method public final doSolve()D
    .locals 29
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getMin()D

    move-result-wide v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getMax()D

    move-result-wide v3

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->computeObjectiveValue(D)D

    move-result-wide v5

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->computeObjectiveValue(D)D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v11, v5, v9

    if-nez v11, :cond_0

    return-wide v1

    :cond_0
    cmpl-double v11, v7, v9

    if-nez v11, :cond_1

    return-wide v3

    :cond_1
    invoke-virtual {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->verifyBracketing(DD)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getFunctionValueAccuracy()D

    move-result-wide v11

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v13

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v15

    const/16 v17, 0x0

    :goto_0
    sub-double v18, v3, v1

    mul-double v18, v18, v7

    sub-double v20, v7, v5

    div-double v18, v18, v20

    move-wide/from16 v20, v1

    sub-double v1, v3, v18

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->computeObjectiveValue(D)D

    move-result-wide v18

    cmpl-double v22, v18, v9

    if-nez v22, :cond_2

    return-wide v1

    :cond_2
    mul-double v23, v7, v18

    cmpg-double v23, v23, v9

    const/4 v9, 0x1

    if-gez v23, :cond_3

    xor-int/lit8 v5, v17, 0x1

    move-wide/from16 v20, v3

    move/from16 v17, v5

    move-wide v5, v7

    goto :goto_1

    :cond_3
    sget-object v23, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$a;->a:[I

    iget-object v10, v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->l:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v10, v23, v10

    if-eq v10, v9, :cond_7

    const/4 v9, 0x2

    if-eq v10, v9, :cond_6

    const/4 v9, 0x3

    if-ne v10, v9, :cond_5

    cmpl-double v3, v1, v3

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>()V

    throw v0

    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    :cond_6
    add-double v3, v7, v18

    div-double/2addr v7, v3

    mul-double/2addr v5, v7

    goto :goto_1

    :cond_7
    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v5, v3

    :goto_1
    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v3

    cmpg-double v3, v3, v11

    const/4 v4, 0x5

    const/4 v7, 0x4

    if-gtz v3, :cond_d

    sget-object v3, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$a;->b:[I

    iget-object v8, v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->k:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v3, v3, v8

    const/4 v8, 0x1

    if-eq v3, v8, :cond_c

    const/4 v8, 0x2

    if-eq v3, v8, :cond_b

    const/4 v8, 0x3

    if-eq v3, v8, :cond_a

    if-eq v3, v7, :cond_9

    if-ne v3, v4, :cond_8

    if-ltz v22, :cond_d

    return-wide v1

    :cond_8
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    :cond_9
    const-wide/16 v8, 0x0

    cmpg-double v3, v18, v8

    if-gtz v3, :cond_d

    return-wide v1

    :cond_a
    if-nez v17, :cond_d

    return-wide v1

    :cond_b
    if-eqz v17, :cond_d

    :cond_c
    return-wide v1

    :cond_d
    sub-double v8, v1, v20

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v8

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v25

    move-wide/from16 v27, v5

    mul-double v4, v15, v25

    invoke-static {v4, v5, v13, v14}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    cmpg-double v4, v8, v4

    if-gez v4, :cond_17

    sget-object v4, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$a;->b:[I

    iget-object v0, v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->k:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_16

    const/4 v4, 0x2

    if-eq v0, v4, :cond_14

    const/4 v4, 0x3

    if-eq v0, v4, :cond_12

    if-eq v0, v7, :cond_10

    const/4 v3, 0x5

    if-ne v0, v3, :cond_f

    if-ltz v22, :cond_e

    goto :goto_2

    :cond_e
    move-wide/from16 v1, v20

    :goto_2
    return-wide v1

    :cond_f
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    :cond_10
    const-wide/16 v3, 0x0

    cmpg-double v0, v18, v3

    if-gtz v0, :cond_11

    goto :goto_3

    :cond_11
    move-wide/from16 v1, v20

    :goto_3
    return-wide v1

    :cond_12
    if-eqz v17, :cond_13

    move-wide/from16 v1, v20

    :cond_13
    return-wide v1

    :cond_14
    if-eqz v17, :cond_15

    goto :goto_4

    :cond_15
    move-wide/from16 v1, v20

    :cond_16
    :goto_4
    return-wide v1

    :cond_17
    move-wide v3, v1

    move-wide/from16 v7, v18

    move-wide/from16 v1, v20

    move-wide/from16 v5, v27

    const-wide/16 v9, 0x0

    goto/16 :goto_0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D
    .locals 10

    .line 4
    sget-object v9, Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;->ANY_SIDE:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-virtual/range {v0 .. v9}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v0

    return-wide v0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D
    .locals 0

    .line 2
    iput-object p9, p0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->k:Lorg/apache/commons/math3/analysis/solvers/AllowedSolution;

    .line 3
    invoke-super/range {p0 .. p8}, Lorg/apache/commons/math3/analysis/solvers/BaseAbstractUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D
    .locals 10

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double v2, p5, p3

    mul-double/2addr v2, v0

    add-double v7, p3, v2

    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-object/from16 v9, p7

    .line 1
    invoke-virtual/range {v0 .. v9}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDDLorg/apache/commons/math3/analysis/solvers/AllowedSolution;)D

    move-result-wide v0

    return-wide v0
.end method
