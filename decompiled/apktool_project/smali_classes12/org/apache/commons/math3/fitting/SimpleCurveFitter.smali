.class public Lorg/apache/commons/math3/fitting/SimpleCurveFitter;
.super Lorg/apache/commons/math3/fitting/AbstractCurveFitter;
.source "SourceFile"


# instance fields
.field public final a:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

.field public final b:[D

.field public final c:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[DI)V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->a:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    iput-object p2, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->b:[D

    iput p3, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->c:I

    return-void
.end method

.method public static create(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[D)Lorg/apache/commons/math3/fitting/SimpleCurveFitter;
    .locals 2

    new-instance v0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;

    const v1, 0x7fffffff

    invoke-direct {v0, p0, p1, v1}, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;-><init>(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[DI)V

    return-object v0
.end method


# virtual methods
.method public getProblem(Ljava/util/Collection;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/fitting/WeightedObservedPoint;",
            ">;)",
            "Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    new-array v1, v0, [D

    new-array v0, v0, [D

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;

    invoke-virtual {v4}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getY()D

    move-result-wide v5

    aput-wide v5, v1, v3

    invoke-virtual {v4}, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->getWeight()D

    move-result-wide v4

    aput-wide v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;

    iget-object v3, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->a:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    invoke-direct {v2, v3, p1}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;-><init>(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;Ljava/util/Collection;)V

    new-instance p1, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    invoke-direct {p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;-><init>()V

    const v3, 0x7fffffff

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxEvaluations(I)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object p1

    iget v3, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->c:I

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->maxIterations(I)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object p1

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->b:[D

    invoke-virtual {p1, p0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->start([D)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->target([D)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object p0

    new-instance p1, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-direct {p1, v0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([D)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->weight(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object p0

    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->getModelFunction()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    move-result-object p1

    invoke-virtual {v2}, Lorg/apache/commons/math3/fitting/AbstractCurveFitter$TheoreticalValuesFunction;->getModelFunctionJacobian()Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->model(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;Lorg/apache/commons/math3/analysis/MultivariateMatrixFunction;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresBuilder;->build()Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    move-result-object p0

    return-object p0
.end method

.method public withMaxIterations(I)Lorg/apache/commons/math3/fitting/SimpleCurveFitter;
    .locals 2

    new-instance v0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->a:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    iget-object p0, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->b:[D

    invoke-direct {v0, v1, p0, p1}, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;-><init>(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[DI)V

    return-object v0
.end method

.method public withStartPoint([D)Lorg/apache/commons/math3/fitting/SimpleCurveFitter;
    .locals 2

    new-instance v0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->a:Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;

    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iget p0, p0, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;->c:I

    invoke-direct {v0, v1, p1, p0}, Lorg/apache/commons/math3/fitting/SimpleCurveFitter;-><init>(Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;[DI)V

    return-object v0
.end method
