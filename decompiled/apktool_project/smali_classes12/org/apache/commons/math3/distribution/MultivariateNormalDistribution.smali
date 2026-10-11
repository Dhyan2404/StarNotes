.class public Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;
.source "SourceFile"


# instance fields
.field public final b:[D

.field public final c:Lorg/apache/commons/math3/linear/RealMatrix;

.field public final d:Lorg/apache/commons/math3/linear/RealMatrix;

.field public final e:D

.field public final f:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;[D[[D)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/SingularMatrixException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;
        }
    .end annotation

    .line 2
    array-length v0, p2

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;I)V

    .line 3
    array-length p1, p2

    .line 4
    array-length v0, p3

    if-ne v0, p1, :cond_7

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    .line 5
    aget-object v2, p3, v1

    array-length v2, v2

    if-ne p1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object p2, p3, v1

    array-length p2, p2

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0

    .line 7
    :cond_1
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->b:[D

    .line 8
    new-instance p2, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p2, p3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    iput-object p2, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 9
    new-instance p3, Lorg/apache/commons/math3/linear/EigenDecomposition;

    invoke-direct {p3, p2}, Lorg/apache/commons/math3/linear/EigenDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;)V

    .line 10
    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object p2

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 11
    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getDeterminant()D

    move-result-wide v1

    iput-wide v1, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->e:D

    .line 12
    invoke-virtual {p3}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getRealEigenvalues()[D

    move-result-object p2

    move v4, v0

    .line 13
    :goto_1
    array-length v1, p2

    if-ge v4, v1, :cond_3

    .line 14
    aget-wide v1, p2, v4

    const-wide/16 v5, 0x0

    cmpg-double v1, v1, v5

    if-ltz v1, :cond_2

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 15
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;

    aget-wide v2, p2, v4

    const-wide/16 v5, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;-><init>(DID)V

    throw p0

    .line 16
    :cond_3
    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v1, p1, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    move v2, v0

    :goto_2
    if-ge v2, p1, :cond_4

    .line 17
    invoke-virtual {p3, v2}, Lorg/apache/commons/math3/linear/EigenDecomposition;->getEigenvector(I)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v3

    .line 18
    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setColumn(I[D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 19
    :cond_4
    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p3

    move v2, v0

    :goto_3
    if-ge v2, p1, :cond_6

    .line 20
    aget-wide v3, p2, v2

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    move v5, v0

    :goto_4
    if-ge v5, p1, :cond_5

    .line 21
    invoke-interface {p3, v2, v5, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->multiplyEntry(IID)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 22
    :cond_6
    invoke-virtual {v1, p3}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    return-void

    .line 23
    :cond_7
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p3

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method

.method public constructor <init>([D[[D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/SingularMatrixException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;[D[[D)V

    return-void
.end method


# virtual methods
.method public final a([D)D
    .locals 9

    array-length v0, p1

    new-array v1, v0, [D

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    aget-wide v4, p1, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->getMeans()[D

    move-result-object v6

    aget-wide v6, v6, v3

    sub-double/2addr v4, v6

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->preMultiply([D)[D

    move-result-object p0

    const-wide/16 v3, 0x0

    :goto_1
    array-length p1, p0

    if-ge v2, p1, :cond_1

    aget-wide v5, p0, v2

    aget-wide v7, v1, v2

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    const-wide/high16 p0, -0x4020000000000000L    # -0.5

    mul-double/2addr v3, p0

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public density([D)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->getDimension()I

    move-result v0

    array-length v1, p1

    if-ne v1, v0, :cond_0

    int-to-double v0, v0

    const-wide/high16 v2, -0x4020000000000000L    # -0.5

    mul-double/2addr v0, v2

    const-wide v4, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v4, v5, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->e:D

    invoke-static {v4, v5, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->a([D)D

    move-result-wide p0

    mul-double/2addr v0, p0

    return-wide v0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method

.method public getCovariances()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public getMeans()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->b:[D

    invoke-static {p0}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object p0

    return-object p0
.end method

.method public getStandardDeviations()[D
    .locals 5

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->getDimension()I

    move-result v0

    new-array v1, v0, [D

    iget-object p0, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p0, v2

    aget-wide v3, v3, v2

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public sample()[D
    .locals 7

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->getDimension()I

    move-result v0

    new-array v1, v0, [D

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v4}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->operate([D)[D

    move-result-object v1

    :goto_1
    if-ge v2, v0, :cond_1

    aget-wide v3, v1, v2

    iget-object v5, p0, Lorg/apache/commons/math3/distribution/MultivariateNormalDistribution;->b:[D

    aget-wide v5, v5, v2

    add-double/2addr v3, v5

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-object v1
.end method
