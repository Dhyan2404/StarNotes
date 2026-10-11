.class public Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;
.super Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$a;,
        Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public final h:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

.field public final i:Lorg/apache/commons/math3/optimization/general/Preconditioner;

.field public final j:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

.field public k:D

.field public l:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/optimization/SimpleValueChecker;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/SimpleValueChecker;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;-><init>()V

    new-instance v1, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;

    invoke-direct {v1}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;Lorg/apache/commons/math3/optimization/general/Preconditioner;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;",
            "Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;",
            ")V"
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;Lorg/apache/commons/math3/optimization/general/Preconditioner;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;Lorg/apache/commons/math3/optimization/general/Preconditioner;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;",
            "Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;",
            "Lorg/apache/commons/math3/optimization/general/Preconditioner;",
            ")V"
        }
    .end annotation

    .line 4
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 5
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->h:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    .line 6
    iput-object p3, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->j:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    .line 7
    iput-object p4, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->i:Lorg/apache/commons/math3/optimization/general/Preconditioner;

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    .line 8
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->k:D

    return-void
.end method

.method public static synthetic c(Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;)[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->l:[D

    return-object p0
.end method


# virtual methods
.method public final d(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)D
    .locals 10

    invoke-interface {p1, p2, p3}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v0

    :goto_0
    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double p0, p4, v2

    if-gez p0, :cond_1

    add-double v2, p2, p4

    invoke-interface {p1, v2, v3}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v4

    mul-double v6, v0, v4

    const-wide/16 v8, 0x0

    cmpg-double p0, v6, v8

    if-gtz p0, :cond_0

    return-wide v2

    :cond_0
    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double v4, v0, v4

    invoke-static {v2, v3, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v2

    mul-double/2addr p4, v2

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_BRACKET_OPTIMUM_IN_LINE_SEARCH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 26

    move-object/from16 v6, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v7

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->getStartPoint()[D

    move-result-object v0

    iput-object v0, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->l:[D

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v8

    iget-object v0, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->l:[D

    array-length v9, v0

    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;->computeObjectiveGradient([D)[D

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    if-ne v8, v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v9, :cond_0

    aget-wide v2, v0, v1

    neg-double v2, v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->i:Lorg/apache/commons/math3/optimization/general/Preconditioner;

    iget-object v2, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->l:[D

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/math3/optimization/general/Preconditioner;->precondition([D[D)[D

    move-result-object v1

    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    const-wide/16 v11, 0x0

    move-wide v4, v11

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v9, :cond_1

    aget-wide v13, v0, v3

    aget-wide v15, v2, v3

    mul-double/2addr v13, v15

    add-double/2addr v4, v13

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->getMaxEvaluations()I

    move-result v0

    const/4 v3, 0x0

    move/from16 v22, v0

    move-object/from16 v23, v1

    move-object v15, v2

    move-wide/from16 v24, v4

    const/4 v0, 0x0

    :goto_2
    add-int/lit8 v14, v0, 0x1

    iget-object v0, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->l:[D

    invoke-virtual {v6, v0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->computeObjectiveValue([D)D

    move-result-wide v0

    new-instance v13, Lorg/apache/commons/math3/optimization/PointValuePair;

    iget-object v2, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->l:[D

    invoke-direct {v13, v2, v0, v1}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    if-eqz v3, :cond_2

    invoke-interface {v7, v14, v3, v13}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-object v13

    :cond_2
    new-instance v4, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$a;

    invoke-direct {v4, v6, v15}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$a;-><init>(Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;[D)V

    const-wide/16 v2, 0x0

    iget-wide v0, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->k:D

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    move-object v1, v4

    move-object/from16 v18, v4

    move-wide/from16 v4, v16

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->d(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide v0

    iget-object v2, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->j:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    const-wide/16 v16, 0x0

    const-wide v20, 0x3cd203af9ee75616L    # 1.0E-15

    move-object v3, v13

    move-object v13, v2

    move v2, v14

    move/from16 v14, v22

    move-object v4, v15

    move-object/from16 v15, v18

    move-wide/from16 v18, v0

    invoke-interface/range {v13 .. v21}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D

    move-result-wide v0

    iget-object v5, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->j:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v5}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->getEvaluations()I

    move-result v5

    sub-int v22, v22, v5

    const/4 v5, 0x0

    :goto_3
    iget-object v13, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->l:[D

    array-length v14, v13

    if-ge v5, v14, :cond_3

    aget-wide v14, v13, v5

    aget-wide v16, v4, v5

    mul-double v16, v16, v0

    add-double v14, v14, v16

    aput-wide v14, v13, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    invoke-virtual {v6, v13}, Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;->computeObjectiveGradient([D)[D

    move-result-object v0

    sget-object v1, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    if-ne v8, v1, :cond_4

    const/4 v1, 0x0

    :goto_4
    if-ge v1, v9, :cond_4

    aget-wide v13, v0, v1

    neg-double v13, v13

    aput-wide v13, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_4
    iget-object v1, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->i:Lorg/apache/commons/math3/optimization/general/Preconditioner;

    iget-object v5, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->l:[D

    invoke-interface {v1, v5, v0}, Lorg/apache/commons/math3/optimization/general/Preconditioner;->precondition([D[D)[D

    move-result-object v1

    move-wide v13, v11

    const/4 v5, 0x0

    :goto_5
    if-ge v5, v9, :cond_5

    aget-wide v15, v0, v5

    aget-wide v17, v1, v5

    mul-double v15, v15, v17

    add-double/2addr v13, v15

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_5
    iget-object v5, v6, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->h:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    sget-object v15, Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;->FLETCHER_REEVES:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    if-ne v5, v15, :cond_6

    div-double v15, v13, v24

    goto :goto_7

    :cond_6
    move-wide v15, v11

    const/4 v5, 0x0

    :goto_6
    array-length v10, v0

    if-ge v5, v10, :cond_7

    aget-wide v18, v0, v5

    aget-wide v20, v23, v5

    mul-double v18, v18, v20

    add-double v15, v15, v18

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_7
    sub-double v15, v13, v15

    div-double v15, v15, v24

    :goto_7
    rem-int v0, v2, v9

    if-eqz v0, :cond_a

    cmpg-double v0, v15, v11

    if-gez v0, :cond_8

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_8
    if-ge v0, v9, :cond_9

    aget-wide v18, v1, v0

    aget-wide v20, v4, v0

    mul-double v20, v20, v15

    add-double v18, v18, v20

    aput-wide v18, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_8

    :cond_9
    move-object v15, v4

    goto :goto_a

    :cond_a
    :goto_9
    invoke-virtual {v1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    move-object v15, v0

    :goto_a
    move-object/from16 v23, v1

    move v0, v2

    move-wide/from16 v24, v13

    goto/16 :goto_2
.end method

.method public setInitialStep(D)V
    .locals 2

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->k:D

    goto :goto_0

    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->k:D

    :goto_0
    return-void
.end method
