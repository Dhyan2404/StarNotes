.class public abstract Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;
.super Lorg/apache/commons/math3/optim/BaseOptimizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optim/BaseOptimizer<",
        "Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Lorg/apache/commons/math3/analysis/UnivariateFunction;

.field public c:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

.field public d:D

.field public e:D

.field public f:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/BaseOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method


# virtual methods
.method public computeObjectiveValue(D)D
    .locals 0

    invoke-super {p0}, Lorg/apache/commons/math3/optim/BaseOptimizer;->incrementEvaluationCount()V

    iget-object p0, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->b:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->c:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    return-object p0
.end method

.method public getMax()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->f:D

    return-wide v0
.end method

.method public getMin()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->e:D

    return-wide v0
.end method

.method public getStartValue()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->d:D

    return-wide v0
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
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/BaseOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    return-object p0
.end method

.method public varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 5

    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/BaseOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/apache/commons/math3/optim/univariate/SearchInterval;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/commons/math3/optim/univariate/SearchInterval;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/univariate/SearchInterval;->getMin()D

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->e:D

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/univariate/SearchInterval;->getMax()D

    move-result-wide v3

    iput-wide v3, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->f:D

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/univariate/SearchInterval;->getStartValue()D

    move-result-wide v2

    iput-wide v2, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->d:D

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/univariate/UnivariateObjectiveFunction;->getObjectiveFunction()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->b:Lorg/apache/commons/math3/analysis/UnivariateFunction;

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    iput-object v2, p0, Lorg/apache/commons/math3/optim/univariate/UnivariateOptimizer;->c:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
