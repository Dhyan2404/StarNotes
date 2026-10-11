.class public Lorg/apache/commons/math3/distribution/CauchyDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "SourceFile"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final serialVersionUID:J = 0x77342d30e8d1c6e4L


# instance fields
.field private final median:D

.field private final scale:D

.field private final solverAbsoluteAccuracy:D


# direct methods
.method public constructor <init>()V
    .locals 4

    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 1
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/apache/commons/math3/distribution/CauchyDistribution;-><init>(DD)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 7

    const-wide v5, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 2
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/distribution/CauchyDistribution;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 8

    .line 3
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/CauchyDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 8

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 4
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/CauchyDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 2

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    const-wide/16 v0, 0x0

    cmpg-double p1, p4, v0

    if-lez p1, :cond_0

    .line 6
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->scale:D

    .line 7
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->median:D

    .line 8
    iput-wide p6, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->solverAbsoluteAccuracy:D

    return-void

    .line 9
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SCALE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->median:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->scale:D

    div-double/2addr p1, v0

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->atan(D)D

    move-result-wide p0

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p0, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p0, v0

    return-wide p0
.end method

.method public density(D)D
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->median:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->scale:D

    mul-double/2addr p1, p1

    mul-double v2, v0, v0

    add-double/2addr p1, v2

    div-double/2addr v0, p1

    const-wide p0, 0x3fd45f306dc9c883L    # 0.3183098861837907

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public getMedian()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->median:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public getScale()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->scale:D

    return-wide v0
.end method

.method public getSolverAbsoluteAccuracy()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->solverAbsoluteAccuracy:D

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
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v2

    if-gtz v2, :cond_2

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    const-wide/high16 p0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->median:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/CauchyDistribution;->scale:D

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    sub-double/2addr p1, v4

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr p1, v4

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide p0

    mul-double/2addr v2, p0

    add-double p0, v0, v2

    :goto_0
    return-wide p0

    :cond_2
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
