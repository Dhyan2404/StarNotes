.class public Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;
.super Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;
.source "SourceFile"


# instance fields
.field public d:Lorg/apache/commons/math3/linear/QRDecomposition;

.field public final e:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->d:Lorg/apache/commons/math3/linear/QRDecomposition;

    .line 4
    iput-wide p1, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->e:D

    return-void
.end method


# virtual methods
.method public calculateAdjustedRSquared()D
    .locals 11

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->isNoIntercept()Z

    move-result v2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->calculateRSquared()D

    move-result-wide v5

    sub-double v5, v3, v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p0

    int-to-double v7, p0

    sub-double v7, v0, v7

    div-double/2addr v0, v7

    mul-double/2addr v5, v0

    :goto_0
    sub-double/2addr v3, v5

    return-wide v3

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->calculateResidualSumOfSquares()D

    move-result-wide v5

    sub-double v7, v0, v3

    mul-double/2addr v5, v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->calculateTotalSumOfSquares()D

    move-result-wide v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p0

    int-to-double v9, p0

    sub-double/2addr v0, v9

    mul-double/2addr v7, v0

    div-double/2addr v5, v7

    goto :goto_0
.end method

.method public calculateBeta()Lorg/apache/commons/math3/linear/RealVector;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->d:Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->getY()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public calculateBetaVariance()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->d:Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getR()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0, v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    new-instance v0, Lorg/apache/commons/math3/linear/LUDecomposition;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/LUDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/LUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public calculateHat()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 10

    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->d:Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getQ()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->d:Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getR()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    new-instance v2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v2, v1, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getDataRef()[[D

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_2

    move v6, v4

    :goto_1
    if-ge v6, v1, :cond_1

    if-ne v5, v6, :cond_0

    if-ge v5, p0, :cond_0

    aget-object v7, v3, v5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v7, v6

    goto :goto_2

    :cond_0
    aget-object v7, v3, v5

    const-wide/16 v8, 0x0

    aput-wide v8, v7, v6

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    invoke-interface {v0, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public calculateRSquared()D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->calculateResidualSumOfSquares()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->calculateTotalSumOfSquares()D

    move-result-wide v2

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    return-wide v2
.end method

.method public calculateResidualSumOfSquares()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    invoke-virtual {p0, p0}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    return-wide v0
.end method

.method public calculateTotalSumOfSquares()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->isNoIntercept()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->getY()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/math3/stat/StatUtils;->sumSq([D)D

    move-result-wide v0

    return-wide v0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;-><init>()V

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->getY()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public newSampleData([DII)V
    .locals 2

    .line 4
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->newSampleData([DII)V

    .line 5
    new-instance p1, Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->e:D

    invoke-direct {p1, p2, v0, v1}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->d:Lorg/apache/commons/math3/linear/QRDecomposition;

    return-void
.end method

.method public newSampleData([D[[D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->validateSampleData([[D[D)V

    .line 2
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->newYSampleData([D)V

    .line 3
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->newXSampleData([[D)V

    return-void
.end method

.method public newXSampleData([[D)V
    .locals 3

    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->newXSampleData([[D)V

    new-instance p1, Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->e:D

    invoke-direct {p1, v0, v1, v2}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/regression/OLSMultipleLinearRegression;->d:Lorg/apache/commons/math3/linear/QRDecomposition;

    return-void
.end method
