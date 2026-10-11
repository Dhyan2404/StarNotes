.class public abstract Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lorg/apache/commons/math3/analysis/MultivariateFunction;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optimization/BaseMultivariateOptimizer<",
        "TFUNC;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public a:Lorg/apache/commons/math3/optimization/ConvergenceChecker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;"
        }
    .end annotation
.end field

.field public b:Lorg/apache/commons/math3/optimization/GoalType;

.field public c:[D

.field public d:[D

.field public e:[D

.field protected final evaluations:Lorg/apache/commons/math3/util/Incrementor;

.field public f:Lorg/apache/commons/math3/analysis/MultivariateFunction;


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/optimization/SimpleValueChecker;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/SimpleValueChecker;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    .line 4
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->a:Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 9

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->c:[D

    if-eqz v0, :cond_7

    array-length v0, v0

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->d:[D

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    array-length v1, v1

    if-ne v1, v0, :cond_1

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->c:[D

    aget-wide v4, v4, v1

    iget-object v6, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->d:[D

    aget-wide v6, v6, v1

    cmpg-double v8, v4, v6

    if-ltz v8, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    :cond_1
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->d:[D

    array-length p0, p0

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_2
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->e:[D

    if-eqz v1, :cond_5

    array-length v1, v1

    if-ne v1, v0, :cond_4

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_5

    iget-object v4, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->c:[D

    aget-wide v4, v4, v1

    iget-object v6, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->e:[D

    aget-wide v6, v6, v1

    cmpl-double v8, v4, v6

    if-gtz v8, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {p0, v0, v1, v3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    :cond_4
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->e:[D

    array-length p0, p0

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_5
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->d:[D

    if-nez v1, :cond_6

    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->d:[D

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_6

    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->d:[D

    const-wide/high16 v4, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    aput-wide v4, v3, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->e:[D

    if-nez v1, :cond_7

    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->e:[D

    :goto_3
    if-ge v2, v0, :cond_7

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->e:[D

    const-wide/high16 v3, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    return-void
.end method

.method public final varargs b([Lorg/apache/commons/math3/optimization/OptimizationData;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/apache/commons/math3/optimization/InitialGuess;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/commons/math3/optimization/InitialGuess;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/InitialGuess;->getInitialGuess()[D

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->c:[D

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lorg/apache/commons/math3/optimization/SimpleBounds;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/apache/commons/math3/optimization/SimpleBounds;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/SimpleBounds;->getLower()[D

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->d:[D

    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/SimpleBounds;->getUpper()[D

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->e:[D

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public computeObjectiveValue([D)D
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->f:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/analysis/MultivariateFunction;->value([D)D

    move-result-wide p0

    return-wide p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;

    invoke-virtual {p0}, Lorg/apache/commons/math3/exception/MaxCountExceededException;->getMax()Ljava/lang/Number;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;-><init>(Ljava/lang/Number;)V

    throw p1
.end method

.method public abstract doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
.end method

.method public getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->a:Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    return-object p0
.end method

.method public getEvaluations()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result p0

    return p0
.end method

.method public getGoalType()Lorg/apache/commons/math3/optimization/GoalType;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->b:Lorg/apache/commons/math3/optimization/GoalType;

    return-object p0
.end method

.method public getLowerBound()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->d:[D

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    :goto_0
    return-object p0
.end method

.method public getMaxEvaluations()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result p0

    return p0
.end method

.method public getStartPoint()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->c:[D

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    :goto_0
    return-object p0
.end method

.method public getUpperBound()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->e:[D

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    :goto_0
    return-object p0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "[D)",
            "Lorg/apache/commons/math3/optimization/PointValuePair;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/OptimizationData;

    .line 1
    new-instance v1, Lorg/apache/commons/math3/optimization/InitialGuess;

    invoke-direct {v1, p4}, Lorg/apache/commons/math3/optimization/InitialGuess;-><init>([D)V

    const/4 p4, 0x0

    aput-object v1, v0, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public varargs optimize(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "[",
            "Lorg/apache/commons/math3/optimization/OptimizationData;",
            ")",
            "Lorg/apache/commons/math3/optimization/PointValuePair;"
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[D)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "[D)",
            "Lorg/apache/commons/math3/optimization/PointValuePair;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/OptimizationData;

    .line 1
    new-instance v1, Lorg/apache/commons/math3/optimization/InitialGuess;

    invoke-direct {v1, p4}, Lorg/apache/commons/math3/optimization/InitialGuess;-><init>([D)V

    const/4 p4, 0x0

    aput-object v1, v0, p4

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object p0

    return-object p0
.end method

.method public varargs optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateFunction;Lorg/apache/commons/math3/optimization/GoalType;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;",
            "Lorg/apache/commons/math3/optimization/GoalType;",
            "[",
            "Lorg/apache/commons/math3/optimization/OptimizationData;",
            ")",
            "Lorg/apache/commons/math3/optimization/PointValuePair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    .line 3
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 4
    iput-object p2, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->f:Lorg/apache/commons/math3/analysis/MultivariateFunction;

    .line 5
    iput-object p3, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->b:Lorg/apache/commons/math3/optimization/GoalType;

    .line 6
    invoke-virtual {p0, p4}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->b([Lorg/apache/commons/math3/optimization/OptimizationData;)V

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->a()V

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateOptimizer;->doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;

    move-result-object p0

    return-object p0
.end method
