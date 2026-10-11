.class public Lorg/apache/commons/math3/distribution/NormalDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "SourceFile"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final SQRT2:D

.field private static final serialVersionUID:J = 0x77342d30e8d1c6e4L


# instance fields
.field private final logStandardDeviationPlusHalfLog2Pi:D

.field private final mean:D

.field private final solverAbsoluteAccuracy:D

.field private final standardDeviation:D


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/distribution/NormalDistribution;->SQRT2:D

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    const-wide v5, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 2
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 3
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 4
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    const-wide/16 v0, 0x0

    cmpg-double p1, p4, v0

    if-lez p1, :cond_0

    .line 6
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->mean:D

    .line 7
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->standardDeviation:D

    .line 8
    invoke-static {p4, p5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p1

    const-wide p3, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p3

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p3, v0

    add-double/2addr p1, p3

    iput-wide p1, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->logStandardDeviationPlusHalfLog2Pi:D

    .line 9
    iput-wide p6, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->solverAbsoluteAccuracy:D

    return-void

    .line 10
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->STANDARD_DEVIATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 6

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->mean:D

    sub-double/2addr p1, v0

    .line 2
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->standardDeviation:D

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    mul-double/2addr v4, v2

    cmpl-double p0, v0, v4

    if-lez p0, :cond_1

    const-wide/16 v0, 0x0

    cmpg-double p0, p1, v0

    if-gez p0, :cond_0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide v0

    :cond_1
    neg-double p0, p1

    .line 3
    sget-wide v0, Lorg/apache/commons/math3/distribution/NormalDistribution;->SQRT2:D

    mul-double/2addr v2, v0

    div-double/2addr p0, v2

    invoke-static {p0, p1}, Lorg/apache/commons/math3/special/Erf;->erfc(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public cumulativeProbability(DD)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/distribution/NormalDistribution;->probability(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public density(D)D
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/distribution/NormalDistribution;->logDensity(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public getMean()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->mean:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/NormalDistribution;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/NormalDistribution;->getStandardDeviation()D

    move-result-wide v0

    mul-double/2addr v0, v0

    return-wide v0
.end method

.method public getSolverAbsoluteAccuracy()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getStandardDeviation()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->standardDeviation:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public inverseCumulativeProbability(D)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-gtz v2, :cond_0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->mean:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->standardDeviation:D

    sget-wide v6, Lorg/apache/commons/math3/distribution/NormalDistribution;->SQRT2:D

    mul-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr p1, v6

    sub-double/2addr p1, v0

    invoke-static {p1, p2}, Lorg/apache/commons/math3/special/Erf;->erfInv(D)D

    move-result-wide p0

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    return-wide v2

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

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

.method public isSupportLowerBoundInclusive()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public logDensity(D)D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->mean:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->standardDeviation:D

    div-double/2addr p1, v0

    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    mul-double/2addr v0, p1

    mul-double/2addr v0, p1

    iget-wide p0, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->logStandardDeviationPlusHalfLog2Pi:D

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method public probability(DD)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    cmpl-double v0, p1, p3

    if-gtz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->standardDeviation:D

    sget-wide v2, Lorg/apache/commons/math3/distribution/NormalDistribution;->SQRT2:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->mean:D

    sub-double/2addr p1, v2

    div-double/2addr p1, v0

    sub-double/2addr p3, v2

    div-double/2addr p3, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/special/Erf;->erf(DD)D

    move-result-wide p0

    mul-double/2addr p0, v0

    return-wide p0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_ENDPOINT_ABOVE_UPPER_ENDPOINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0
.end method

.method public sample()D
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->standardDeviation:D

    iget-object v2, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v2}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v2

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/NormalDistribution;->mean:D

    add-double/2addr v0, v2

    return-wide v0
.end method
