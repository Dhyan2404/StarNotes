.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/GradientMultivariateOptimizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$BracketingStep;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;
    }
.end annotation


# instance fields
.field public final h:Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;

.field public final i:Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;

.field public final j:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    const-wide v3, 0x3e45798ee2308c3aL    # 1.0E-8

    const-wide v5, 0x3e45798ee2308c3aL    # 1.0E-8

    const-wide v7, 0x3e45798ee2308c3aL    # 1.0E-8

    .line 1
    new-instance v9, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;

    invoke-direct {v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;DDDLorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;DDD)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;DDD)V"
        }
    .end annotation

    .line 3
    new-instance v9, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;

    invoke-direct {v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p3

    move-wide v5, p5

    move-wide/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;DDDLorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;DDDLorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;DDD",
            "Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;",
            ")V"
        }
    .end annotation

    move-object v8, p0

    move-object v0, p2

    .line 5
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/GradientMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    move-object v0, p1

    .line 6
    iput-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->h:Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;

    move-object/from16 v0, p9

    .line 7
    iput-object v0, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->i:Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;

    .line 8
    new-instance v9, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p3

    move-wide v4, p5

    move-wide/from16 v6, p7

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;DDD)V

    iput-object v9, v8, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->j:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;",
            "Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;

    invoke-direct {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;",
            "Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;",
            "Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-interface {p3}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v3

    invoke-interface {p3}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v5

    invoke-interface {p3}, Lorg/apache/commons/math3/analysis/solvers/BaseUnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v7

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;DDDLorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;)V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getLowerBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getUpperBound()[D

    move-result-object p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONSTRAINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 25

    move-object/from16 v0, p0

    .line 2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v1

    .line 3
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getStartPoint()[D

    move-result-object v2

    .line 4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v3

    .line 5
    array-length v4, v2

    .line 6
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/GradientMultivariateOptimizer;->computeObjectiveGradient([D)[D

    move-result-object v5

    .line 7
    sget-object v6, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-ne v3, v6, :cond_0

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v4, :cond_0

    .line 8
    aget-wide v8, v5, v6

    neg-double v8, v8

    aput-wide v8, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 9
    :cond_0
    iget-object v6, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->i:Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;

    invoke-interface {v6, v2, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;->precondition([D[D)[D

    move-result-object v6

    .line 10
    invoke-virtual {v6}, [D->clone()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [D

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    :goto_1
    if-ge v11, v4, :cond_1

    .line 11
    aget-wide v14, v5, v11

    aget-wide v16, v8, v11

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    .line 12
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->incrementIterationCount()V

    .line 13
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->computeObjectiveValue([D)D

    move-result-wide v14

    .line 14
    new-instance v11, Lorg/apache/commons/math3/optim/PointValuePair;

    invoke-direct {v11, v2, v14, v15}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    if-eqz v5, :cond_2

    .line 15
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getIterations()I

    move-result v14

    invoke-interface {v1, v14, v5, v11}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    return-object v11

    .line 16
    :cond_2
    iget-object v5, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->j:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    invoke-virtual {v5, v2, v8}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->search([D[D)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v5

    invoke-virtual {v5}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getPoint()D

    move-result-wide v14

    const/4 v5, 0x0

    .line 17
    :goto_3
    array-length v7, v2

    if-ge v5, v7, :cond_3

    .line 18
    aget-wide v17, v2, v5

    aget-wide v19, v8, v5

    mul-double v19, v19, v14

    add-double v17, v17, v19

    aput-wide v17, v2, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 19
    :cond_3
    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/GradientMultivariateOptimizer;->computeObjectiveGradient([D)[D

    move-result-object v5

    .line 20
    sget-object v7, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-ne v3, v7, :cond_4

    const/4 v7, 0x0

    :goto_4
    if-ge v7, v4, :cond_4

    .line 21
    aget-wide v14, v5, v7

    neg-double v14, v14

    aput-wide v14, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 22
    :cond_4
    iget-object v7, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->i:Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;

    invoke-interface {v7, v2, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;->precondition([D[D)[D

    move-result-object v7

    const/4 v9, 0x0

    const-wide/16 v14, 0x0

    :goto_5
    if-ge v9, v4, :cond_5

    .line 23
    aget-wide v19, v5, v9

    aget-wide v21, v7, v9

    mul-double v19, v19, v21

    add-double v14, v14, v19

    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 24
    :cond_5
    sget-object v9, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$a;->a:[I

    iget-object v10, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->h:Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const/4 v10, 0x1

    if-eq v9, v10, :cond_8

    const/4 v10, 0x2

    if-ne v9, v10, :cond_7

    const/4 v9, 0x0

    const-wide/16 v19, 0x0

    .line 25
    :goto_6
    array-length v10, v5

    if-ge v9, v10, :cond_6

    .line 26
    aget-wide v21, v5, v9

    aget-wide v23, v6, v9

    mul-double v21, v21, v23

    add-double v19, v19, v21

    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    :cond_6
    sub-double v5, v14, v19

    div-double/2addr v5, v12

    goto :goto_7

    .line 27
    :cond_7
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    :cond_8
    div-double v5, v14, v12

    .line 28
    :goto_7
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getIterations()I

    move-result v9

    rem-int/2addr v9, v4

    if-eqz v9, :cond_a

    const-wide/16 v9, 0x0

    cmpg-double v12, v5, v9

    if-gez v12, :cond_9

    goto :goto_9

    :cond_9
    const/4 v12, 0x0

    :goto_8
    if-ge v12, v4, :cond_b

    .line 29
    aget-wide v17, v7, v12

    aget-wide v19, v8, v12

    mul-double v19, v19, v5

    add-double v17, v17, v19

    aput-wide v17, v8, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    :cond_a
    const-wide/16 v9, 0x0

    .line 30
    :goto_9
    invoke-virtual {v7}, [D->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [D

    move-object v8, v5

    :cond_b
    move-object v6, v7

    move-object v5, v11

    move-wide v12, v14

    goto/16 :goto_2
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/GradientMultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/GradientMultivariateOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    invoke-direct {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->a()V

    return-void
.end method
