.class public abstract Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;
.super Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer<",
        "Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;",
        ">;",
        "Lorg/apache/commons/math3/optimization/DifferentiableMultivariateVectorOptimizer;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final j:D = 1.0E-14
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field protected cols:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected cost:D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public g:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

.field public h:I

.field public i:Lorg/apache/commons/math3/linear/RealMatrix;

.field protected objective:[D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected point:[D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected rows:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected weightedResidualJacobian:[[D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected weightedResiduals:[D
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;-><init>()V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker<",
            "Lorg/apache/commons/math3/optimization/PointVectorValuePair;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    return-void
.end method


# virtual methods
.method public final c(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
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

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

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

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

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

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->getTarget()[D

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

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeCovariances([DD)[[D

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
    .locals 12

    iget v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->h:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->h:I

    array-length v0, p1

    new-array v0, v0, [Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    array-length v8, p1

    const/4 v9, 0x0

    move v10, v9

    :goto_0
    if-ge v10, v8, :cond_0

    new-instance v11, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    const/4 v4, 0x1

    aget-wide v6, p1, v10

    move-object v2, v11

    move v3, v8

    move v5, v10

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IIID)V

    aput-object v11, v0, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->g:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    invoke-interface {p1, v0}, Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;->value([Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)[Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->getTarget()[D

    move-result-object v0

    array-length v0, v0

    array-length v2, p1

    if-ne v2, v0, :cond_3

    filled-new-array {v0, v8}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    move v3, v9

    :goto_1
    if-ge v3, v0, :cond_2

    new-array v4, v8, [I

    move v5, v9

    :goto_2
    if-ge v5, v8, :cond_1

    aput v1, v4, v5

    aget-object v6, v2, v3

    aget-object v7, p1, v3

    invoke-virtual {v7, v4}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getPartialDerivative([I)D

    move-result-wide v10

    aput-wide v10, v6, v5

    aput v9, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-static {v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method

.method public getChiSquare()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cost:D

    mul-double/2addr v0, v0

    return-wide v0
.end method

.method public getCovariances()[[D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide v0, 0x3d06849b86a12b9bL    # 1.0E-14

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getCovariances(D)[[D

    move-result-object p0

    return-object p0
.end method

.method public getCovariances(D)[[D
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeCovariances([DD)[[D

    move-result-object p0

    return-object p0
.end method

.method public getJacobianEvaluations()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->h:I

    return p0
.end method

.method public getRMS()D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getChiSquare()D

    move-result-wide v0

    iget p0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->rows:I

    int-to-double v2, p0

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getWeightSquareRoot()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public guessParametersErrors()[D
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->rows:I

    iget v1, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cols:I

    const/4 v2, 0x0

    if-le v0, v1, :cond_1

    new-array v0, v1, [D

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->getChiSquare()D

    move-result-wide v3

    iget v5, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->rows:I

    iget v6, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cols:I

    sub-int/2addr v5, v6

    int-to-double v5, v5

    div-double/2addr v3, v5

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    iget-object v5, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    const-wide v6, 0x3d06849b86a12b9bL    # 1.0E-14

    invoke-virtual {p0, v5, v6, v7}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeCovariances([DD)[[D

    move-result-object p0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v5, p0, v2

    aget-wide v5, v5, v2

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    mul-double/2addr v5, v3

    aput-wide v5, v0, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NO_DEGREES_OF_FREEDOM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget v3, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->rows:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget p0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cols:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, v1, v3, p0, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p2}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toMultivariateDifferentiableVectorFunction(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;)Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    move-result-object p2

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/OptimizationData;

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

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic optimize(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    check-cast p2, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    invoke-virtual/range {p0 .. p5}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->optimize(ILorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object p0

    return-object p0
.end method

.method public optimize(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;[D[D[D)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/apache/commons/math3/optimization/OptimizationData;

    .line 3
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

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object p0

    return-object p0
.end method

.method public varargs optimizeInternal(ILorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableMultivariateVectorFunction(Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;)Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    move-result-object p2

    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->optimizeInternal(ILorg/apache/commons/math3/analysis/MultivariateVectorFunction;[Lorg/apache/commons/math3/optimization/OptimizationData;)Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    move-result-object p0

    return-object p0
.end method

.method public setCost(D)V
    .locals 0

    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cost:D

    return-void
.end method

.method public setUp()V
    .locals 1

    invoke-super {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->setUp()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->h:I

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->getWeight()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->c(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->getObjectiveFunction()Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;

    invoke-static {v0}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toMultivariateDifferentiableVectorFunction(Lorg/apache/commons/math3/analysis/DifferentiableMultivariateVectorFunction;)Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->g:Lorg/apache/commons/math3/analysis/differentiation/MultivariateDifferentiableVectorFunction;

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->getStartPoint()[D

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    invoke-virtual {p0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->getTarget()[D

    move-result-object v0

    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->rows:I

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cols:I

    return-void
.end method

.method public updateJacobian()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeWeightedJacobian([D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->scalarMultiply(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->weightedResidualJacobian:[[D

    return-void
.end method

.method public updateResidualsAndCost()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->point:[D

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optimization/direct/BaseAbstractMultivariateVectorOptimizer;->computeObjectiveValue([D)[D

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->objective:[D

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeResiduals([D)[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->computeCost([D)D

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->cost:D

    new-instance v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([D)V

    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/general/AbstractLeastSquaresOptimizer;->weightedResiduals:[D

    return-void
.end method
