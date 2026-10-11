.class public Lorg/apache/commons/math3/distribution/ParetoDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "SourceFile"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final serialVersionUID:J = 0x1332a78L


# instance fields
.field private final scale:D

.field private final shape:D

.field private final solverAbsoluteAccuracy:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 1
    invoke-direct {p0, v0, v1, v0, v1}, Lorg/apache/commons/math3/distribution/ParetoDistribution;-><init>(DD)V

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
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/distribution/ParetoDistribution;-><init>(DDD)V

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

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/ParetoDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

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
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/ParetoDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

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

    cmpg-double p1, p2, v0

    if-lez p1, :cond_1

    cmpg-double p1, p4, v0

    if-lez p1, :cond_0

    .line 6
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    .line 7
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    .line 8
    iput-wide p6, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->solverAbsoluteAccuracy:D

    return-void

    .line 9
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SHAPE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SCALE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 3

    .line 1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    div-double/2addr v0, p1

    .line 2
    iget-wide p0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    invoke-static {v0, v1, p0, p1}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p0

    return-wide v0
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

    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->probability(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public density(D)D
    .locals 6

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    invoke-static {p1, p2, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide p1

    div-double/2addr v0, p1

    iget-wide p0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    mul-double/2addr v0, p0

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 6

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    :cond_0
    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    mul-double/2addr v4, v0

    sub-double/2addr v0, v2

    div-double/2addr v4, v0

    return-wide v4
.end method

.method public getNumericalVariance()D
    .locals 8

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    return-wide v0

    :cond_0
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double v4, v0, v4

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    mul-double/2addr v6, v6

    mul-double/2addr v6, v0

    mul-double/2addr v4, v4

    div-double/2addr v6, v4

    sub-double/2addr v0, v2

    div-double/2addr v6, v0

    return-wide v6
.end method

.method public getScale()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    return-wide v0
.end method

.method public getShape()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    return-wide v0
.end method

.method public getSolverAbsoluteAccuracy()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

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

.method public logDensity(D)D
    .locals 6

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const-wide/high16 p0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide p0

    :cond_0
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    mul-double/2addr v0, v2

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p1

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v2

    mul-double/2addr p1, v4

    sub-double/2addr v0, p1

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    add-double/2addr v0, p0

    return-wide v0
.end method

.method public sample()D
    .locals 8

    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->scale:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/ParetoDistribution;->shape:D

    div-double/2addr v4, v6

    invoke-static {v0, v1, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    div-double/2addr v2, v0

    return-wide v2
.end method
