.class public Lorg/apache/commons/math3/distribution/GumbelDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "SourceFile"


# static fields
.field private static final EULER:D = 0.5778636748954609

.field private static final serialVersionUID:J = 0x13353cbL


# instance fields
.field private final beta:D

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

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/GumbelDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 2

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    const-wide/16 v0, 0x0

    cmpg-double p1, p4, v0

    if-lez p1, :cond_0

    .line 3
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

    .line 4
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->mu:D

    return-void

    .line 5
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

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->mu:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

    div-double/2addr p1, v0

    neg-double p0, p1

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p0

    neg-double p0, p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public density(D)D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->mu:D

    sub-double/2addr p1, v0

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

    div-double/2addr p1, v0

    neg-double p1, p1

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    sub-double/2addr p1, v0

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p1

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

    div-double/2addr p1, v0

    return-wide p1
.end method

.method public getLocation()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->mu:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 6

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->mu:D

    const-wide v2, 0x3fe27ddbf6271dbeL    # 0.5778636748954609

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

    mul-double/2addr v4, v2

    add-double/2addr v0, v4

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

    mul-double/2addr v0, v0

    const-wide v2, 0x3ffa51a6625307d3L    # 1.6449340668482264

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getScale()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    if-ltz v2, :cond_2

    cmpl-double v2, p1, v3

    if-gtz v2, :cond_2

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    const-wide/high16 p0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide p0

    :cond_0
    if-nez v2, :cond_1

    const-wide/high16 p0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide p0

    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->mu:D

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p1

    neg-double p1, p1

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p1

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GumbelDistribution;->beta:D

    mul-double/2addr p1, v2

    sub-double/2addr v0, p1

    return-wide v0

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

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
