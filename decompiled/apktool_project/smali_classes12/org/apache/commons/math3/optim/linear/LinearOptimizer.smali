.class public abstract Lorg/apache/commons/math3/optim/linear/LinearOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;
.source "SourceFile"


# instance fields
.field public g:Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

.field public h:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/optim/linear/LinearConstraint;",
            ">;"
        }
    .end annotation
.end field

.field public i:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method


# virtual methods
.method public getConstraints()Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/optim/linear/LinearConstraint;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->h:Ljava/util/Collection;

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getFunction()Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->g:Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    return-object p0
.end method

.method public isRestrictedToNonNegative()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->i:Z

    return p0
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyIterationsException;
        }
    .end annotation

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
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    iput-object v2, p0, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->g:Lorg/apache/commons/math3/optim/linear/LinearObjectiveFunction;

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lorg/apache/commons/math3/optim/linear/LinearConstraintSet;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/apache/commons/math3/optim/linear/LinearConstraintSet;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/linear/LinearConstraintSet;->getConstraints()Ljava/util/Collection;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->h:Ljava/util/Collection;

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lorg/apache/commons/math3/optim/linear/NonNegativeConstraint;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/apache/commons/math3/optim/linear/NonNegativeConstraint;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/linear/NonNegativeConstraint;->isRestrictedToNonNegative()Z

    move-result v2

    iput-boolean v2, p0, Lorg/apache/commons/math3/optim/linear/LinearOptimizer;->i:Z

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method
