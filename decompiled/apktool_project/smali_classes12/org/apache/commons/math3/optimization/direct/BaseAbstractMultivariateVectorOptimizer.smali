.class public abstract Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<FUNC::",
        "Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optimization/BaseMultivariateVectorOptimizer<",
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
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;"
        }
    .end annotation
.end field

.field public b:[D

.field public c:Lorg/apache/commons/math3/linear/RealMatrix;

.field public d:[D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public e:[D

.field protected final evaluations:Lorg/apache/commons/math3/util/Incrementor;

.field public f:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TFUNC;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/optimization/SimpleVectorValueChecker;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/SimpleVectorValueChecker;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lorg/apache/commons/math3/util/Incrementor;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/Incrementor;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    .line 4
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->a:Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    return-void
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->b:[D

    array-length v0, v0

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->b:[D

    array-length v1, v1

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method private varargs b([Lorg/apache/commons/math3/optimization/OptimizationData;)V
    .locals 4

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/apache/commons/math3/optimization/Target;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/commons/math3/optimization/Target;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/Target;->getTarget()[D

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->b:[D

    goto :goto_1

    :cond_0
    instance-of v3, v2, Lorg/apache/commons/math3/optimization/Weight;

    if-eqz v3, :cond_1

    check-cast v2, Lorg/apache/commons/math3/optimization/Weight;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/Weight;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    goto :goto_1

    :cond_1
    instance-of v3, v2, Lorg/apache/commons/math3/optimization/InitialGuess;

    if-eqz v3, :cond_2

    check-cast v2, Lorg/apache/commons/math3/optimization/InitialGuess;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optimization/InitialGuess;->getInitialGuess()[D

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->e:[D

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method


# virtual methods
.method public computeObjectiveValue([D)[D
    .locals 1

    :try_start_0
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/MaxCountExceededException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->f:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;->value([D)[D

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;

    invoke-virtual {p0}, Lorg/apache/commons/math3/exception/MaxCountExceededException;->getMax()Ljava/lang/Number;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/apache/commons/math3/exception/TooManyEvaluationsException;-><init>(Ljava/lang/Number;)V

    throw p1
.end method

.method public abstract doOptimize()Lorg/apache/commons/math3/optimization/PointVectorValuePair;
.end method

.method public getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->a:Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    return-object p0
.end method

.method public getEvaluations()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result p0

    return p0
.end method

.method public getMaxEvaluations()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Incrementor;->getMaximalCount()I

    move-result p0

    return p0
.end method

.method public getObjectiveFunction()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TFUNC;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->f:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    return-object p0
.end method

.method public getStartPoint()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->e:[D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public getTarget()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->b:[D

    invoke-virtual {p0}, [D->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [D

    return-object p0
.end method

.method public getTargetRef()[D
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->b:[D

    return-object p0
.end method

.method public getWeight()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public getWeightRef()[D
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->d:[D

    return-object p0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;[D[D[D)",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object p0

    return-object p0
.end method

.method public varargs optimize(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;[",
            "Lorg/apache/commons/math3/optimization/OptimizationData;",
            ")",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object p0

    return-object p0
.end method

.method public optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;[D[D[D)",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p2, :cond_4

    if-eqz p3, :cond_3

    if-eqz p4, :cond_2

    if-eqz p5, :cond_1

    .line 1
    array-length v0, p3

    array-length v1, p4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/OptimizationData;

    .line 2
    new-instance v1, Lorg/apache/commons/math3/optimization/Target;

    invoke-direct {v1, p3}, Lorg/apache/commons/math3/optimization/Target;-><init>([D)V

    const/4 p3, 0x0

    aput-object v1, v0, p3

    new-instance p3, Lorg/apache/commons/math3/optimization/Weight;

    invoke-direct {p3, p4}, Lorg/apache/commons/math3/optimization/Weight;-><init>([D)V

    const/4 p4, 0x1

    aput-object p3, v0, p4

    new-instance p3, Lorg/apache/commons/math3/optimization/InitialGuess;

    invoke-direct {p3, p5}, Lorg/apache/commons/math3/optimization/InitialGuess;-><init>([D)V

    const/4 p4, 0x2

    aput-object p3, v0, p4

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object p0

    return-object p0

    .line 3
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p3

    array-length p2, p4

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0

    .line 4
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0

    .line 5
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0

    .line 6
    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0

    .line 7
    :cond_4
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public varargs optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITFUNC;[",
            "Lorg/apache/commons/math3/optimization/OptimizationData;",
            ")",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {v0, p1}, Lorg/apache/commons/math3/util/Incrementor;->setMaximalCount(I)V

    .line 9
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->evaluations:Lorg/apache/commons/math3/util/Incrementor;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Incrementor;->resetCount()V

    .line 10
    iput-object p2, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->f:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    .line 11
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->b([Lorg/apache/commons/math3/optimization/OptimizationData;)V

    .line 12
    invoke-direct {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->a()V

    .line 13
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->setUp()V

    .line 14
    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->doOptimize()Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object p0

    return-object p0
.end method

.method public setUp()V
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->b:[D

    array-length v0, v0

    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->d:[D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->d:[D

    iget-object v3, p0, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3, v1, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
