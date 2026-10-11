.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
.source "SourceFile"


# instance fields
.field public g:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;


# direct methods
.method public constructor <init>(DD)V
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/optim/SimpleValueChecker;

    invoke-direct {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optim/SimpleValueChecker;-><init>(DD)V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->g:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    if-eqz v0, :cond_1

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

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 9

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->a()V

    .line 3
    new-instance v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer$a;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer$a;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;)V

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v1

    sget-object v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v4

    .line 5
    :goto_0
    new-instance v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer$b;

    invoke-direct {v2, p0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer$b;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;Z)V

    .line 6
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->g:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->getStartPoint()[D

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->build([D)V

    .line 7
    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->g:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {v1, v0, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->evaluate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v1

    const/4 v5, 0x0

    .line 9
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->getIterations()I

    move-result v6

    if-lez v6, :cond_3

    move v7, v3

    move v6, v4

    .line 10
    :goto_2
    iget-object v8, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->g:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {v8}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->getSize()I

    move-result v8

    if-ge v6, v8, :cond_2

    .line 11
    aget-object v8, v5, v6

    if-eqz v7, :cond_1

    .line 12
    iget-object v7, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->g:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {v7, v6}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v7

    invoke-interface {v1, v4, v8, v7}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    move v7, v3

    goto :goto_3

    :cond_1
    move v7, v4

    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_2
    if-eqz v7, :cond_3

    .line 13
    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->g:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->getPoint(I)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p0

    return-object p0

    .line 14
    :cond_3
    iget-object v5, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->g:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {v5}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->getPoints()[Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v5

    .line 15
    iget-object v6, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->g:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    invoke-virtual {v6, v0, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;->iterate(Lorg/apache/commons/math3/analysis/MultivariateFunction;Ljava/util/Comparator;)V

    .line 16
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->incrementIterationCount()V

    goto :goto_1
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 0

    .line 2
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 4

    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/SimplexOptimizer;->g:Lorg/apache/commons/math3/optim/nonlinear/scalar/noderiv/AbstractSimplex;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
