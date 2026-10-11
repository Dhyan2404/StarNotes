.class public Lorg/apache/commons/math3/distribution/TDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "SourceFile"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final serialVersionUID:J = -0x5138aaaf891a440eL


# instance fields
.field private final degreesOfFreedom:D

.field private final factor:D

.field private final solverAbsoluteAccuracy:D


# direct methods
.method public constructor <init>(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    const-wide v0, 0x3e112e0be826d695L    # 1.0E-9

    .line 1
    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 2
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 3
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    const-wide/16 v0, 0x0

    cmpg-double p1, p2, v0

    if-lez p1, :cond_0

    .line 5
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/TDistribution;->degreesOfFreedom:D

    .line 6
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/TDistribution;->solverAbsoluteAccuracy:D

    const-wide/high16 p4, 0x3ff0000000000000L    # 1.0

    add-double/2addr p4, p2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p4, v0

    .line 7
    invoke-static {p4, p5}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide p4

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v4

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    sub-double/2addr p4, v2

    div-double/2addr p2, v0

    invoke-static {p2, p3}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide p1

    sub-double/2addr p4, p1

    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/TDistribution;->factor:D

    return-void

    .line 8
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DEGREES_OF_FREEDOM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 15

    const-wide/16 v0, 0x0

    cmpl-double v2, p1, v0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v2, p0

    iget-wide v5, v2, Lorg/apache/commons/math3/distribution/TDistribution;->degreesOfFreedom:D

    mul-double v7, p1, p1

    add-double/2addr v7, v5

    div-double v9, v5, v7

    mul-double v11, v5, v3

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    invoke-static/range {v9 .. v14}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDD)D

    move-result-wide v5

    cmpg-double v0, p1, v0

    if-gez v0, :cond_1

    mul-double/2addr v3, v5

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v5, v3

    sub-double v3, v0, v5

    :goto_0
    return-wide v3
.end method

.method public density(D)D
    .locals 0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/distribution/TDistribution;->logDensity(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public getDegreesOfFreedom()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TDistribution;->degreesOfFreedom:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/TDistribution;->getDegreesOfFreedom()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 6

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/TDistribution;->getDegreesOfFreedom()D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpl-double p0, v0, v2

    if-lez p0, :cond_0

    sub-double v2, v0, v2

    div-double/2addr v0, v2

    return-wide v0

    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, v0, v4

    if-lez p0, :cond_1

    cmpg-double p0, v0, v2

    if-gtz p0, :cond_1

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    :cond_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public getSolverAbsoluteAccuracy()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TDistribution;->solverAbsoluteAccuracy:D

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
    .locals 8

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TDistribution;->degreesOfFreedom:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double v4, v0, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TDistribution;->factor:D

    mul-double/2addr p1, p1

    div-double/2addr p1, v0

    add-double/2addr p1, v2

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    mul-double/2addr v4, p0

    sub-double/2addr v6, v4

    return-wide v6
.end method
