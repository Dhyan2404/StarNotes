.class public Lorg/apache/commons/math3/distribution/LevyDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1332a0aL


# instance fields
.field private final c:D

.field private final halfC:D

.field private final mu:D


# direct methods
.method public constructor <init>(DD)V
    .locals 6

    .line 1
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/LevyDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 3
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->mu:D

    .line 4
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->c:D

    const-wide/high16 p1, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p4, p1

    .line 5
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->halfC:D

    return-void
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->mu:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->halfC:D

    sub-double/2addr p1, v0

    div-double/2addr v2, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/special/Erf;->erfc(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public density(D)D
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->mu:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    :cond_0
    sub-double/2addr p1, v0

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->halfC:D

    div-double/2addr v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double v2, v0, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    neg-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    mul-double/2addr v2, v0

    div-double/2addr v2, p1

    return-wide v2
.end method

.method public getLocation()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->mu:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public getScale()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->c:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->mu:D

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0
.end method

.method public inverseCumulativeProbability(D)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    invoke-static {p1, p2}, Lorg/apache/commons/math3/special/Erf;->erfcInv(D)D

    move-result-wide p1

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->mu:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->halfC:D

    mul-double/2addr p1, p1

    div-double/2addr v2, p1

    add-double/2addr v0, v2

    return-wide v0

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
    .locals 6

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->mu:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const-wide/high16 p0, 0x7ff8000000000000L    # Double.NaN

    return-wide p0

    :cond_0
    sub-double/2addr p1, v0

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/LevyDistribution;->halfC:D

    div-double/2addr v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    div-double v2, v0, v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v2, v4

    sub-double/2addr v2, v0

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    sub-double/2addr v2, p0

    return-wide v2
.end method
