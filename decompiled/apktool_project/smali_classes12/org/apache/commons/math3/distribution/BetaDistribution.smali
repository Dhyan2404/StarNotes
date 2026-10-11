.class public Lorg/apache/commons/math3/distribution/BetaDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/distribution/BetaDistribution$a;
    }
.end annotation


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final serialVersionUID:J = -0x10f54b9581f4e2a4L


# instance fields
.field private final alpha:D

.field private final beta:D

.field private final solverAbsoluteAccuracy:D

.field private z:D


# direct methods
.method public constructor <init>(DD)V
    .locals 7

    const-wide v5, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 1
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/distribution/BetaDistribution;-><init>(DDD)V

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

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/BetaDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 8

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide v4, p4

    .line 3
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/BetaDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    .line 5
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    .line 6
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    const-wide/high16 p1, 0x7ff8000000000000L    # Double.NaN

    .line 7
    iput-wide p1, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->z:D

    .line 8
    iput-wide p6, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->solverAbsoluteAccuracy:D

    return-void
.end method

.method private recomputeZ()V
    .locals 6

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->z:D

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    add-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/special/Gamma;->logGamma(D)D

    move-result-wide v2

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->z:D

    :cond_0
    return-void
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 9

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v0

    if-ltz v2, :cond_1

    return-wide v0

    :cond_1
    iget-wide v5, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    iget-wide v7, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    move-wide v3, p1

    invoke-static/range {v3 .. v8}, Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public density(D)D
    .locals 2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/distribution/BetaDistribution;->logDensity(D)D

    move-result-wide p0

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double p2, p0, v0

    if-nez p2, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public getAlpha()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    return-wide v0
.end method

.method public getBeta()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/BetaDistribution;->getAlpha()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/BetaDistribution;->getBeta()D

    move-result-wide v2

    add-double/2addr v2, v0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 8

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/BetaDistribution;->getAlpha()D

    move-result-wide v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/BetaDistribution;->getBeta()D

    move-result-wide v2

    add-double v4, v0, v2

    mul-double/2addr v0, v2

    mul-double v2, v4, v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getSolverAbsoluteAccuracy()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

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

    invoke-direct {p0}, Lorg/apache/commons/math3/distribution/BetaDistribution;->recomputeZ()V

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    const-wide/high16 v3, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    if-ltz v2, :cond_5

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, p1, v5

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    cmpl-double v0, p1, v0

    const/4 v1, 0x0

    const/4 v7, 0x1

    if-nez v0, :cond_2

    iget-wide p1, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    cmpg-double p1, p1, v5

    if-ltz p1, :cond_1

    return-wide v3

    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_COMPUTE_BETA_DENSITY_AT_0_FOR_SOME_ALPHA:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0, v1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1

    :cond_2
    if-nez v2, :cond_4

    iget-wide p1, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    cmpg-double p1, p1, v5

    if-ltz p1, :cond_3

    return-wide v3

    :cond_3
    new-instance p1, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_COMPUTE_BETA_DENSITY_AT_1_FOR_SOME_BETA:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0, v1}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p1

    :cond_4
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    neg-double p1, p1

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide p1

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    sub-double/2addr v2, v5

    mul-double/2addr v2, v0

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    sub-double/2addr v0, v5

    mul-double/2addr v0, p1

    add-double/2addr v2, v0

    iget-wide p0, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->z:D

    sub-double/2addr v2, p0

    return-wide v2

    :cond_5
    :goto_0
    return-wide v3
.end method

.method public sample()D
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    iget-wide v1, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->alpha:D

    iget-wide v3, p0, Lorg/apache/commons/math3/distribution/BetaDistribution;->beta:D

    invoke-static {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/distribution/BetaDistribution$a;->c(Lorg/apache/commons/math3/random/RandomGenerator;DD)D

    move-result-wide v0

    return-wide v0
.end method
