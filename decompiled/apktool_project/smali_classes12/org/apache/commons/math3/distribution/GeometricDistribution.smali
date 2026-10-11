.class public Lorg/apache/commons/math3/distribution/GeometricDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1332acbL


# instance fields
.field private final log1mProbabilityOfSuccess:D

.field private final logProbabilityOfSuccess:D

.field private final probabilityOfSuccess:D


# direct methods
.method public constructor <init>(D)V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/distribution/GeometricDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    const-wide/16 v0, 0x0

    cmpg-double p1, p2, v0

    if-lez p1, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p1, p2, v0

    if-gtz p1, :cond_0

    .line 3
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->probabilityOfSuccess:D

    .line 4
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->logProbabilityOfSuccess:D

    neg-double p1, p2

    .line 5
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->log1mProbabilityOfSuccess:D

    return-void

    .line 6
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_RANGE_LEFT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0
.end method


# virtual methods
.method public cumulativeProbability(I)D
    .locals 2

    if-gez p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->log1mProbabilityOfSuccess:D

    add-int/lit8 p1, p1, 0x1

    int-to-double p0, p1

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->expm1(D)D

    move-result-wide p0

    neg-double p0, p0

    return-wide p0
.end method

.method public getNumericalMean()D
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->probabilityOfSuccess:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public getNumericalVariance()D
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->probabilityOfSuccess:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    mul-double/2addr v0, v0

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public getProbabilityOfSuccess()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->probabilityOfSuccess:D

    return-wide v0
.end method

.method public getSupportLowerBound()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSupportUpperBound()I
    .locals 0

    const p0, 0x7fffffff

    return p0
.end method

.method public inverseCumulativeProbability(D)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    const/4 v3, 0x0

    if-ltz v2, :cond_2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v4

    if-gtz v2, :cond_2

    if-nez v2, :cond_0

    const p0, 0x7fffffff

    return p0

    :cond_0
    cmpl-double v0, p1, v0

    if-nez v0, :cond_1

    return v3

    :cond_1
    neg-double p1, p1

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide p1

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->log1mProbabilityOfSuccess:D

    div-double/2addr p1, v0

    sub-double/2addr p1, v4

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0
.end method

.method public isSupportConnected()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public logProbability(I)D
    .locals 4

    if-gez p1, :cond_0

    const-wide/high16 p0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide p0

    :cond_0
    int-to-double v0, p1

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->log1mProbabilityOfSuccess:D

    mul-double/2addr v0, v2

    iget-wide p0, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->logProbabilityOfSuccess:D

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public probability(I)D
    .locals 4

    if-gez p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->log1mProbabilityOfSuccess:D

    int-to-double v2, p1

    mul-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    iget-wide p0, p0, Lorg/apache/commons/math3/distribution/GeometricDistribution;->probabilityOfSuccess:D

    mul-double/2addr v0, p0

    return-wide v0
.end method
