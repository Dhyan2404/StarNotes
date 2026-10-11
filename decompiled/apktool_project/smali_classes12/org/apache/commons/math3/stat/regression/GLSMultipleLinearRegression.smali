.class public Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;
.super Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;
.source "SourceFile"


# instance fields
.field public d:Lorg/apache/commons/math3/linear/RealMatrix;

.field public e:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;-><init>()V

    return-void
.end method


# virtual methods
.method public calculateBeta()Lorg/apache/commons/math3/linear/RealVector;
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->getOmegaInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    new-instance v3, Lorg/apache/commons/math3/linear/LUDecomposition;

    invoke-direct {v3, v2}, Lorg/apache/commons/math3/linear/LUDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/LUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->getY()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public calculateBetaVariance()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->getOmegaInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    new-instance v0, Lorg/apache/commons/math3/linear/LUDecomposition;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/LUDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/LUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public calculateErrorVariance()D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->calculateResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->getOmegaInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/RealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    invoke-interface {v2}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->getX()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p0

    sub-int/2addr v2, p0

    int-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getOmegaInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/commons/math3/linear/LUDecomposition;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/LUDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/LUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public newCovarianceData([[D)V
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void
.end method

.method public newSampleData([D[[D[[D)V
    .locals 0

    invoke-virtual {p0, p2, p1}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->validateSampleData([[D[D)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->newYSampleData([D)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->newXSampleData([[D)V

    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/math3/stat/regression/AbstractMultipleLinearRegression;->validateCovarianceData([[D[[D)V

    invoke-virtual {p0, p3}, Lorg/apache/commons/math3/stat/regression/GLSMultipleLinearRegression;->newCovarianceData([[D)V

    return-void
.end method
