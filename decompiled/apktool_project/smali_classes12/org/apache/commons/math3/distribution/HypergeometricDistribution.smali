.class public Lorg/apache/commons/math3/distribution/HypergeometricDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x61048728c601293L


# instance fields
.field private final numberOfSuccesses:I

.field private numericalVariance:D

.field private numericalVarianceIsCalculated:Z

.field private final populationSize:I

.field private final sampleSize:I


# direct methods
.method public constructor <init>(III)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;III)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;III)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 3
    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numericalVariance:D

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numericalVarianceIsCalculated:Z

    if-lez p2, :cond_4

    if-ltz p3, :cond_3

    if-ltz p4, :cond_2

    const/4 p1, 0x1

    if-gt p3, p2, :cond_1

    if-gt p4, p2, :cond_0

    .line 5
    iput p3, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numberOfSuccesses:I

    .line 6
    iput p2, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    .line 7
    iput p4, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    return-void

    .line 8
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object p3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SAMPLE_SIZE_LARGER_THAN_POPULATION_SIZE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p3, p4, p2, p1}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    .line 9
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object p4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SUCCESS_LARGER_THAN_POPULATION_SIZE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p4, p3, p2, p1}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    .line 10
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0

    .line 11
    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SUCCESSES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0

    .line 12
    :cond_4
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->POPULATION_SIZE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method

.method private getDomain(III)[I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getLowerDomain(III)I

    move-result p1

    invoke-direct {p0, p2, p3}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getUpperDomain(II)I

    move-result p0

    filled-new-array {p1, p0}, [I

    move-result-object p0

    return-object p0
.end method

.method private getLowerDomain(III)I
    .locals 0

    sub-int/2addr p1, p3

    sub-int/2addr p2, p1

    const/4 p0, 0x0

    invoke-static {p0, p2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result p0

    return p0
.end method

.method private getUpperDomain(II)I
    .locals 0

    invoke-static {p2, p1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result p0

    return p0
.end method

.method private innerCumulativeProbability(III)D
    .locals 4

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->probability(I)D

    move-result-wide v0

    :goto_0
    if-eq p1, p2, :cond_0

    add-int/2addr p1, p3

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->probability(I)D

    move-result-wide v2

    add-double/2addr v0, v2

    goto :goto_0

    :cond_0
    return-wide v0
.end method


# virtual methods
.method public calculateNumericalVariance()D
    .locals 8

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getPopulationSize()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getNumberOfSuccesses()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getSampleSize()I

    move-result p0

    int-to-double v4, p0

    mul-double v6, v4, v2

    sub-double v4, v0, v4

    mul-double/2addr v6, v4

    sub-double v2, v0, v2

    mul-double/2addr v6, v2

    mul-double v2, v0, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v4

    mul-double/2addr v2, v0

    div-double/2addr v6, v2

    return-wide v6
.end method

.method public cumulativeProbability(I)D
    .locals 3

    iget v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    iget v1, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numberOfSuccesses:I

    iget v2, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getDomain(III)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    if-ge p1, v1, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    aget v0, v0, v2

    if-lt p1, v0, :cond_1

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1, p1, v2}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->innerCumulativeProbability(III)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public getNumberOfSuccesses()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numberOfSuccesses:I

    return p0
.end method

.method public getNumericalMean()D
    .locals 6

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getSampleSize()I

    move-result v0

    int-to-double v0, v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getNumberOfSuccesses()I

    move-result v2

    int-to-double v2, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getPopulationSize()I

    move-result p0

    int-to-double v4, p0

    div-double/2addr v2, v4

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    iget-boolean v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numericalVarianceIsCalculated:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->calculateNumericalVariance()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numericalVariance:D

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numericalVarianceIsCalculated:Z

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numericalVariance:D

    return-wide v0
.end method

.method public getPopulationSize()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    return p0
.end method

.method public getSampleSize()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    return p0
.end method

.method public getSupportLowerBound()I
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getSampleSize()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getNumberOfSuccesses()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getPopulationSize()I

    move-result p0

    sub-int/2addr v0, p0

    const/4 p0, 0x0

    invoke-static {p0, v0}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result p0

    return p0
.end method

.method public getSupportUpperBound()I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getNumberOfSuccesses()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getSampleSize()I

    move-result p0

    invoke-static {v0, p0}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result p0

    return p0
.end method

.method public isSupportConnected()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public logProbability(I)D
    .locals 17

    move-object/from16 v0, p0

    move/from16 v7, p1

    iget v1, v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    iget v2, v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numberOfSuccesses:I

    iget v3, v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getDomain(III)[I

    move-result-object v1

    const/4 v2, 0x0

    aget v2, v1, v2

    if-lt v7, v2, :cond_1

    const/4 v2, 0x1

    aget v1, v1, v2

    if-le v7, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v1, v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    int-to-double v2, v1

    iget v4, v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    int-to-double v5, v4

    div-double v13, v2, v5

    sub-int v1, v4, v1

    int-to-double v1, v1

    int-to-double v3, v4

    div-double v15, v1, v3

    iget v2, v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numberOfSuccesses:I

    move/from16 v1, p1

    move-wide v3, v13

    move-wide v5, v15

    invoke-static/range {v1 .. v6}, Lcom/sunia/HTREnginev2/k0m;->c(IIDD)D

    move-result-wide v1

    iget v3, v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    sub-int v7, v3, v7

    iget v3, v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    iget v4, v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numberOfSuccesses:I

    sub-int v8, v3, v4

    move-wide v9, v13

    move-wide v11, v15

    invoke-static/range {v7 .. v12}, Lcom/sunia/HTREnginev2/k0m;->c(IIDD)D

    move-result-wide v3

    iget v7, v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    iget v8, v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    invoke-static/range {v7 .. v12}, Lcom/sunia/HTREnginev2/k0m;->c(IIDD)D

    move-result-wide v5

    add-double/2addr v1, v3

    sub-double/2addr v1, v5

    goto :goto_1

    :cond_1
    :goto_0
    const-wide/high16 v1, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_1
    return-wide v1
.end method

.method public probability(I)D
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->logProbability(I)D

    move-result-wide p0

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public upperCumulativeProbability(I)D
    .locals 3

    iget v0, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->populationSize:I

    iget v1, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->numberOfSuccesses:I

    iget v2, p0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->sampleSize:I

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->getDomain(III)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    if-gt p1, v1, :cond_0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    aget v0, v0, v1

    if-le p1, v0, :cond_1

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;->innerCumulativeProbability(III)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method
