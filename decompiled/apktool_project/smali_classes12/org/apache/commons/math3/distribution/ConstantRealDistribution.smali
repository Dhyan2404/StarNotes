.class public Lorg/apache/commons/math3/distribution/ConstantRealDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x39b34733540b89c1L


# instance fields
.field private final value:D


# direct methods
.method public constructor <init>(D)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    iput-wide p1, p0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;->value:D

    return-void
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;->value:D

    cmpg-double p0, p1, v0

    if-gez p0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    :goto_0
    return-wide p0
.end method

.method public density(D)D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;->value:D

    cmpl-double p0, p1, v0

    if-nez p0, :cond_0

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method public getNumericalMean()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;->value:D

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;->value:D

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;->value:D

    return-wide v0
.end method

.method public inverseCumulativeProbability(D)D
    .locals 2
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

    iget-wide p0, p0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;->value:D

    return-wide p0

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

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public reseedRandomGenerator(J)V
    .locals 0

    return-void
.end method

.method public sample()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ConstantRealDistribution;->value:D

    return-wide v0
.end method
