.class public abstract Lorg/apache/commons/math3/optimization/general/AbstractDifferentiableOptimizer;
.super Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer<",
        "Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public g:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method


# virtual methods
.method public computeObjectiveGradient([D)[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/general/AbstractDifferentiableOptimizer;->g:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;->value([D)[D

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/general/AbstractDifferentiableOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 2
    check-cast p2, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/general/AbstractDifferentiableOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public optimizeInternal(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/OptimizationData;

    .line 3
    new-instance v1, Lorg/apache/commons/math3/optimization/InitialGuess;

    invoke-direct {v1, p4}, Lorg/apache/commons/math3/optimization/InitialGuess;-><init>([D)V

    const/4 p4, 0x0

    aput-object v1, v0, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/optimization/general/AbstractDifferentiableOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public varargs optimizeInternal(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/GradientFunction;

    invoke-direct {v0, p2}, Lorg/apache/commons/math3/analysis/differentiation/GradientFunction;-><init>(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;)V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractDifferentiableOptimizer;->g:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    .line 5
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object p0

    return-object p0
.end method
