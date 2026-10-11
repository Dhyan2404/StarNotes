.class public Lorg/apache/commons/math3/distribution/BinomialDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x5db17834c1f59437L


# instance fields
.field private final numberOfTrials:I

.field private final probabilityOfSuccess:D


# direct methods
.method public constructor <init>(ID)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/math3/distribution/BinomialDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    if-ltz p2, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double p1, p3, v0

    if-ltz p1, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, p3, v0

    if-gtz p1, :cond_0

    .line 3
    iput-wide p3, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probabilityOfSuccess:D

    .line 4
    iput p2, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    return-void

    .line 5
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_TRIALS:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method


# virtual methods
.method public cumulativeProbability(I)D
    .locals 9

    if-gez p1, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    iget v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-lt p1, v0, :cond_1

    move-wide p0, v1

    goto :goto_0

    :cond_1
    iget-wide v3, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probabilityOfSuccess:D

    int-to-double v5, p1

    add-double/2addr v5, v1

    sub-int/2addr v0, p1

    int-to-double v7, v0

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDD)D

    move-result-wide p0

    sub-double p0, v1, p0

    :goto_0
    return-wide p0
.end method

.method public getNumberOfTrials()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    return p0
.end method

.method public getNumericalMean()D
    .locals 4

    iget v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    int-to-double v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probabilityOfSuccess:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 6

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probabilityOfSuccess:D

    iget p0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    int-to-double v2, p0

    mul-double/2addr v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v0

    mul-double/2addr v2, v4

    return-wide v2
.end method

.method public getProbabilityOfSuccess()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probabilityOfSuccess:D

    return-wide v0
.end method

.method public getSupportLowerBound()I
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probabilityOfSuccess:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget p0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    :goto_0
    return p0
.end method

.method public getSupportUpperBound()I
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probabilityOfSuccess:D

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    iget p0, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportConnected()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public logProbability(I)D
    .locals 6

    iget v1, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->numberOfTrials:I

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    if-nez v1, :cond_1

    if-nez p1, :cond_0

    const-wide/16 v2, 0x0

    :cond_0
    return-wide v2

    :cond_1
    if-ltz p1, :cond_3

    if-le p1, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/BinomialDistribution;->probabilityOfSuccess:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v2

    move v0, p1

    invoke-static/range {v0 .. v5}, Lcom/sunia/HTREnginev2/k0m;->c(IIDD)D

    move-result-wide v2

    :cond_3
    :goto_0
    return-wide v2
.end method

.method public probability(I)D
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/BinomialDistribution;->logProbability(I)D

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
