.class public Lorg/apache/commons/math3/distribution/NakagamiDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "SourceFile"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final serialVersionUID:J = 0x13353cbL


# instance fields
.field private final inverseAbsoluteAccuracy:D

.field private final mu:D

.field private final omega:D


# direct methods
.method public constructor <init>(DD)V
    .locals 7

    const-wide v5, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/distribution/NakagamiDistribution;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 8

    .line 2
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/NakagamiDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 2

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double p1, p2, v0

    if-ltz p1, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double p1, p4, v0

    if-lez p1, :cond_0

    .line 4
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    .line 5
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->omega:D

    .line 6
    iput-wide p6, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->inverseAbsoluteAccuracy:D

    return-void

    .line 7
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_POSITIVE_SCALE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    mul-double v2, v0, p1

    mul-double/2addr v2, p1

    iget-wide p0, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->omega:D

    div-double/2addr v2, p0

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/special/Gamma;->regularizedGammaP(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public density(D)D
    .locals 10

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    invoke-static {v0, v1, v0, v1}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->omega:D

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    invoke-static {v6, v7, v8, v9}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v6

    mul-double/2addr v4, v6

    div-double/2addr v0, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    mul-double/2addr v4, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v2

    invoke-static {p1, p2, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    neg-double v2, v2

    mul-double/2addr v2, p1

    mul-double/2addr v2, p1

    iget-wide p0, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->omega:D

    div-double/2addr v2, p0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p0

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 6

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->omega:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 8

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->gamma(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->omega:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double v4, v6, v4

    mul-double/2addr v4, v0

    mul-double/2addr v4, v0

    sub-double/2addr v6, v4

    mul-double/2addr v2, v6

    return-wide v2
.end method

.method public getScale()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->omega:D

    return-wide v0
.end method

.method public getShape()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->mu:D

    return-wide v0
.end method

.method public getSolverAbsoluteAccuracy()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NakagamiDistribution;->inverseAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public isSupportConnected()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
