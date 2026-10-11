.class public abstract Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/vector/JacobianMultivariateVectorOptimizer;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public i:Lorg/apache/commons/math3/linear/RealMatrix;

.field public j:D


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

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/JacobianMultivariateVectorOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    return-void
.end method


# virtual methods
.method public final b(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 4

    instance-of p0, p1, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    if-eqz p0, :cond_1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result p0

    new-instance v0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    invoke-interface {p1, v1, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    invoke-interface {v0, v1, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/EigenDecomposition;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public computeCost([D)D
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    invoke-interface {p0, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public computeCovariances([DD)[[D
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    new-instance p1, Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-direct {p1, p0, p2, p3}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p0

    return-object p0
.end method

.method public computeResiduals([D)[D
    .locals 6

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->getTarget()[D

    move-result-object p0

    array-length v0, p1

    array-length v1, p0

    if-ne v0, v1, :cond_1

    array-length v0, p0

    new-array v0, v0, [D

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_0

    aget-wide v2, p0, v1

    aget-wide v4, p1, v1

    sub-double/2addr v2, v4

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p0, p0

    array-length p1, p1

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public computeSigma([DD)[D
    .locals 2

    array-length v0, p1

    new-array v1, v0, [D

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->computeCovariances([DD)[[D

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, v0, :cond_0

    aget-object p2, p0, p1

    aget-wide p2, p2, p1

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p2

    aput-wide p2, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/JacobianMultivariateVectorOptimizer;->computeJacobian([D)[[D

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public getChiSquare()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->j:D

    mul-double/2addr v0, v0

    return-wide v0
.end method

.method public getRMS()D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->getChiSquare()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/vector/MultivariateVectorOptimizer;->getTargetSize()I

    move-result p0

    int-to-double v2, p0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getWeightSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-result-object p0

    return-object p0
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointVectorValuePair;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .line 2
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/JacobianMultivariateVectorOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointVectorValuePair;

    move-result-object p0

    return-object p0
.end method

.method public varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 4

    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/JacobianMultivariateVectorOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    instance-of v3, v2, Lorg/apache/commons/math3/optim/nonlinear/vector/Weight;

    if-eqz v3, :cond_0

    check-cast v2, Lorg/apache/commons/math3/optim/nonlinear/vector/Weight;

    invoke-virtual {v2}, Lorg/apache/commons/math3/optim/nonlinear/vector/Weight;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->b(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setCost(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/math3/optim/nonlinear/vector/jacobian/AbstractLeastSquaresOptimizer;->j:D

    return-void
.end method
