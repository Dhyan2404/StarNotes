.class public abstract Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;
.super Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer<",
        "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public e:[D

.field public f:Lorg/apache/commons/math3/linear/RealMatrix;

.field public g:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->e:[D

    array-length v0, v0

    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->e:[D

    array-length v1, v1

    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method


# virtual methods
.method public computeObjectiveValue([D)[D
    .locals 0

    invoke-super {p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->incrementEvaluationCount()V

    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->g:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;->value([D)[D

    move-result-object p0

    return-object p0
.end method

.method public getTarget()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->e:[D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public getTargetSize()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->e:[D

    array-length p0, p0

    return p0
.end method

.method public getWeight()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-result-object p0

    return-object p0
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/optim/PointVectorValuePair;

    return-object p0
.end method

.method public varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 4

    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunction;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunction;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/nonlinear/vector/ModelFunction;->getModelFunction()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->g:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lorg/apache/commons/math3/optim/nonlinear/vector/Target;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/apache/commons/math3/optim/nonlinear/vector/Target;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/nonlinear/vector/Target;->getTarget()[D

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->e:[D

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lorg/apache/commons/math3/optim/nonlinear/vector/Weight;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/apache/commons/math3/optim/nonlinear/vector/Weight;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/nonlinear/vector/Weight;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->a()V

    return-void
.end method
