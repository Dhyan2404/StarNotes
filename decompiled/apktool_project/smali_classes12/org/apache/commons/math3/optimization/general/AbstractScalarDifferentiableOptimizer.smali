.class public abstract Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;
.super Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optimization/DifferentiableMultivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer<",
        "Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;",
        ">;",
        "Lorg/apache/commons/math3/optimization/DifferentiableMultivariateOptimizer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public g:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;-><init>()V

    return-void
.end method

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

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method


# virtual methods
.method public computeObjectiveGradient([D)[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;->g:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;->value([D)[D

    move-result-object p0

    return-object p0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 0

    invoke-static {p2}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableMultivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public optimizeInternal(ILorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 1

    .line 2
    invoke-interface {p2}, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;->gradient()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;->g:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    .line 3
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 0

    .line 1
    check-cast p2, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/DifferentiableMultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object p0

    return-object p0
.end method
