.class public abstract Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
.super Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer<",
        "Lorg/apache/commons/math3/optim/PointValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field public e:Lorg/apache/commons/math3/analysis/MultivariateFunction;

.field public f:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;


# direct methods
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

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method


# virtual methods
.method public computeObjectiveValue([D)D
    .locals 0

    invoke-super {p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->incrementEvaluationCount()V

    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->e:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide p0

    return-wide p0
.end method

.method public getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->f:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    return-object p0
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

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
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/optim/PointValuePair;

    return-object p0
.end method

.method public varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 4

    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/BaseMultivariateOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->f:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/ObjectiveFunction;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/ObjectiveFunction;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/ObjectiveFunction;->getObjectiveFunction()Lorg/apache/commons/math3/analysis/MultivariateFunction;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;->e:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
