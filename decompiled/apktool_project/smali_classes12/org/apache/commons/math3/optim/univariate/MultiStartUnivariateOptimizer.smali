.class public Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;
.super Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;
.source "SourceFile"


# instance fields
.field public final g:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

.field public h:I

.field public i:I

.field public j:Lorg/apache/commons/math3/random/RandomGenerator;

.field public k:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

.field public l:[Lorg/apache/commons/math3/optim/OptimizationData;

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;ILorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 1

    invoke-virtual {p1}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    const/4 v0, -0x1

    iput v0, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->m:I

    iput v0, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->n:I

    const/4 v0, 0x1

    if-lt p2, v0, :cond_0

    iput-object p1, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->g:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

    iput p2, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->i:I

    iput-object p3, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->j:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0
.end method


# virtual methods
.method public final a(Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->k:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    new-instance v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer$a;

    invoke-direct {v1, p0, p1}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer$a;-><init>(Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;)V

    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-void
.end method

.method public bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public doOptimize()Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 22

    move-object/from16 v1, p0

    const/4 v2, 0x0

    move v0, v2

    .line 2
    :goto_0
    iget-object v3, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->l:[Lorg/apache/commons/math3/optim/OptimizationData;

    array-length v4, v3

    const/4 v5, 0x0

    if-ge v0, v4, :cond_2

    .line 3
    aget-object v4, v3, v0

    instance-of v6, v4, Lorg/apache/commons/math3/optim/MaxEval;

    if-eqz v6, :cond_0

    .line 4
    aput-object v5, v3, v0

    .line 5
    iput v0, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->m:I

    goto :goto_1

    .line 6
    :cond_0
    instance-of v4, v4, Lorg/apache/commons/math3/optim/univariate/SearchInterval;

    if-eqz v4, :cond_1

    .line 7
    aput-object v5, v3, v0

    .line 8
    iput v0, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->n:I

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_2
    iget v0, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->m:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_7

    .line 10
    iget v0, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->n:I

    if-eq v0, v3, :cond_6

    .line 11
    iget v0, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->i:I

    new-array v0, v0, [Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    iput-object v0, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->k:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    .line 12
    iput v2, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->h:I

    .line 13
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getMaxEvaluations()I

    move-result v3

    .line 14
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->getMin()D

    move-result-wide v13

    .line 15
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->getMax()D

    move-result-wide v15

    .line 16
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->getStartValue()D

    move-result-wide v17

    move v4, v2

    move-object v0, v5

    .line 17
    :goto_2
    iget v6, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->i:I

    if-ge v4, v6, :cond_4

    .line 18
    :try_start_0
    iget-object v6, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->l:[Lorg/apache/commons/math3/optim/OptimizationData;

    iget v7, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->m:I

    new-instance v8, Lorg/apache/commons/math3/optim/MaxEval;

    iget v9, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->h:I

    sub-int v9, v3, v9

    invoke-direct {v8, v9}, Lorg/apache/commons/math3/optim/MaxEval;-><init>(I)V

    aput-object v8, v6, v7

    if-nez v4, :cond_3

    move-wide/from16 v11, v17

    goto :goto_3

    .line 19
    :cond_3
    iget-object v6, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->j:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v6}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v6

    sub-double v8, v15, v13

    mul-double/2addr v6, v8

    add-double/2addr v6, v13

    move-wide v11, v6

    .line 20
    :goto_3
    iget-object v9, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->l:[Lorg/apache/commons/math3/optim/OptimizationData;

    iget v10, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->n:I

    new-instance v19, Lorg/apache/commons/math3/optim/univariate/SearchInterval;

    move-object/from16 v6, v19

    move-wide v7, v13

    move-object/from16 v20, v9

    move/from16 v21, v10

    move-wide v9, v15

    invoke-direct/range {v6 .. v12}, Lorg/apache/commons/math3/optim/univariate/SearchInterval;-><init>(DDD)V

    aput-object v19, v20, v21

    .line 21
    iget-object v6, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->k:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    iget-object v7, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->g:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

    iget-object v8, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->l:[Lorg/apache/commons/math3/optim/OptimizationData;

    invoke-virtual {v7, v8}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v7

    aput-object v7, v6, v4
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    .line 22
    iget-object v6, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->k:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    aput-object v5, v6, v4

    .line 23
    :goto_4
    iget v6, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->h:I

    iget-object v7, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->g:Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;

    invoke-virtual {v7}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getEvaluations()I

    move-result v7

    add-int/2addr v6, v7

    iput v6, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->h:I

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 24
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->a(Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;)V

    .line 25
    iget-object v1, v1, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->k:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    aget-object v1, v1, v2

    if-eqz v1, :cond_5

    return-object v1

    .line 26
    :cond_5
    throw v0

    .line 27
    :cond_6
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v0

    .line 28
    :cond_7
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>()V

    throw v0
.end method

.method public getEvaluations()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->h:I

    return p0
.end method

.method public getOptima()[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->k:[Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, [Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_OPTIMUM_COMPUTED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/TooManyIterationsException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 0

    .line 2
    iput-object p1, p0, Lorg/apache/commons/math3/optim/univariate/MultiStartUnivariateOptimizer;->l:[Lorg/apache/commons/math3/optim/OptimizationData;

    .line 3
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object p0

    return-object p0
.end method
