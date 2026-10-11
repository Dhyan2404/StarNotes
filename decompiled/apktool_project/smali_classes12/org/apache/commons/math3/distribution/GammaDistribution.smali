.class public Lorg/apache/commons/math3/distribution/GammaDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "SourceFile"


# static fields
.field public static final DEFAULT_INVERSE_ABSOLUTE_ACCURACY:D = 1.0E-9

.field private static final serialVersionUID:J = 0x13303ccL


# instance fields
.field private final densityPrefactor1:D

.field private final densityPrefactor2:D

.field private final logDensityPrefactor1:D

.field private final logDensityPrefactor2:D

.field private final maxLogY:D

.field private final minY:D

.field private final scale:D

.field private final shape:D

.field private final shiftedShape:D

.field private final solverAbsoluteAccuracy:D


# direct methods
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

    .line 1
    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/distribution/GammaDistribution;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 8
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

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/GammaDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

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

    .line 3
    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/GammaDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    move-wide/from16 v3, p4

    .line 4
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    const-wide/16 v5, 0x0

    cmpg-double v7, v1, v5

    if-lez v7, :cond_1

    cmpg-double v5, v3, v5

    if-lez v5, :cond_0

    .line 5
    iput-wide v1, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    .line 6
    iput-wide v3, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    move-wide/from16 v5, p6

    .line 7
    iput-wide v5, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->solverAbsoluteAccuracy:D

    const-wide v5, 0x4012f80000000000L    # 4.7421875

    add-double v7, v1, v5

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    add-double v11, v7, v9

    .line 8
    iput-wide v11, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shiftedShape:D

    const-wide v13, 0x401921fb54442d18L    # 6.283185307179586

    mul-double/2addr v13, v11

    const-wide v15, 0x4005bf0a8b145769L    # Math.E

    div-double/2addr v15, v13

    .line 9
    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v13

    mul-double/2addr v13, v1

    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/special/Gamma;->lanczos(D)D

    move-result-wide v17

    div-double v13, v13, v17

    iput-wide v13, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->densityPrefactor2:D

    .line 10
    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v17

    invoke-static/range {v15 .. v16}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v15

    mul-double/2addr v15, v9

    add-double v17, v17, v15

    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/special/Gamma;->lanczos(D)D

    move-result-wide v9

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v9

    sub-double v9, v17, v9

    iput-wide v9, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->logDensityPrefactor2:D

    div-double/2addr v13, v3

    neg-double v5, v1

    .line 11
    invoke-static {v11, v12, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v5

    mul-double/2addr v13, v5

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v5

    mul-double/2addr v13, v5

    iput-wide v13, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->densityPrefactor1:D

    .line 12
    invoke-static/range {p4 .. p5}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v3

    sub-double/2addr v9, v3

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v3

    mul-double/2addr v3, v1

    sub-double/2addr v9, v3

    add-double/2addr v9, v1

    const-wide v3, 0x4012f80000000000L    # 4.7421875

    add-double/2addr v9, v3

    iput-wide v9, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->logDensityPrefactor1:D

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 13
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v5

    sub-double/2addr v7, v5

    iput-wide v7, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->minY:D

    .line 14
    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v5

    div-double/2addr v3, v1

    iput-wide v3, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->maxLogY:D

    return-void

    .line 15
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SCALE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p4 .. p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0

    .line 16
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SHAPE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v3, v1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 4

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    div-double/2addr p1, v2

    invoke-static {v0, v1, p1, p2}, Lorg/apache/commons/math3/special/Gamma;->regularizedGammaP(DD)D

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public density(D)D
    .locals 8

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    div-double v0, p1, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->minY:D

    cmpg-double v2, v0, v2

    if-lez v2, :cond_2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->maxLogY:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-wide p1, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->densityPrefactor1:D

    neg-double v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v2

    mul-double/2addr p1, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v0

    mul-double/2addr p1, v0

    return-wide p1

    :cond_2
    :goto_0
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shiftedShape:D

    sub-double v4, v0, v2

    div-double/2addr v4, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v6

    sub-double/2addr v6, v4

    mul-double/2addr v2, v6

    neg-double v0, v0

    const-wide v4, 0x4014f80000000000L    # 5.2421875

    mul-double/2addr v0, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shiftedShape:D

    div-double/2addr v0, v4

    const-wide v4, 0x4012f80000000000L    # 4.7421875

    add-double/2addr v0, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->densityPrefactor2:D

    div-double/2addr v2, p1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p0

    mul-double/2addr v2, p0

    return-wide v2
.end method

.method public getAlpha()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    return-wide v0
.end method

.method public getBeta()D
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    mul-double/2addr v0, v2

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public getScale()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    return-wide v0
.end method

.method public getShape()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    return-wide v0
.end method

.method public getSolverAbsoluteAccuracy()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->solverAbsoluteAccuracy:D

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

.method public logDensity(D)D
    .locals 8

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    const-wide/high16 p0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    return-wide p0

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    div-double v0, p1, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->minY:D

    cmpg-double v2, v0, v2

    if-lez v2, :cond_2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->maxLogY:D

    cmpl-double v2, v2, v4

    if-ltz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-wide p1, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->logDensityPrefactor1:D

    sub-double/2addr p1, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    add-double/2addr p1, v0

    return-wide p1

    :cond_2
    :goto_0
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shiftedShape:D

    sub-double v4, v0, v2

    div-double/2addr v4, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v6

    sub-double/2addr v6, v4

    mul-double/2addr v2, v6

    neg-double v0, v0

    const-wide v4, 0x4014f80000000000L    # 5.2421875

    mul-double/2addr v0, v4

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shiftedShape:D

    div-double/2addr v0, v4

    const-wide v4, 0x4012f80000000000L    # 4.7421875

    add-double/2addr v0, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/GammaDistribution;->logDensityPrefactor2:D

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    sub-double/2addr v2, p0

    add-double/2addr v2, v0

    return-wide v2
.end method

.method public sample()D
    .locals 17

    move-object/from16 v0, p0

    iget-wide v1, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    cmpg-double v5, v1, v3

    if-gez v5, :cond_3

    :goto_0
    iget-object v1, v0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v1}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v1

    iget-wide v5, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    const-wide v7, 0x4005bf0a8b145769L    # Math.E

    div-double v7, v5, v7

    add-double/2addr v7, v3

    mul-double/2addr v1, v7

    cmpg-double v9, v1, v3

    if-gtz v9, :cond_1

    div-double v5, v3, v5

    invoke-static {v1, v2, v5, v6}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v1

    iget-object v5, v0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v5}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v5

    neg-double v7, v1

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    iget-wide v3, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    mul-double/2addr v3, v1

    return-wide v3

    :cond_1
    sub-double/2addr v7, v1

    div-double/2addr v7, v5

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v1

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    mul-double/2addr v1, v5

    iget-object v5, v0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v5}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v5

    iget-wide v7, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->shape:D

    sub-double/2addr v7, v3

    invoke-static {v1, v2, v7, v8}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v7

    cmpl-double v5, v5, v7

    if-lez v5, :cond_2

    goto :goto_0

    :cond_2
    iget-wide v3, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    mul-double/2addr v3, v1

    return-wide v3

    :cond_3
    const-wide v5, 0x3fd5555555555555L    # 0.3333333333333333

    sub-double/2addr v1, v5

    const-wide/high16 v5, 0x4008000000000000L    # 3.0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v7

    mul-double/2addr v7, v5

    div-double v5, v3, v7

    :cond_4
    :goto_1
    iget-object v7, v0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v7}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v7

    mul-double v9, v5, v7

    add-double/2addr v9, v3

    mul-double v11, v9, v9

    mul-double/2addr v11, v9

    const-wide/16 v9, 0x0

    cmpg-double v9, v11, v9

    if-gtz v9, :cond_5

    goto :goto_1

    :cond_5
    mul-double/2addr v7, v7

    iget-object v9, v0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v9}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v9

    const-wide v13, 0x3fa0f27bb2fec56dL    # 0.0331

    mul-double/2addr v13, v7

    mul-double/2addr v13, v7

    sub-double v13, v3, v13

    cmpg-double v13, v9, v13

    if-gez v13, :cond_6

    iget-wide v3, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    mul-double/2addr v3, v1

    mul-double/2addr v3, v11

    return-wide v3

    :cond_6
    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v9

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v7, v13

    sub-double v13, v3, v11

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v15

    add-double/2addr v13, v15

    mul-double/2addr v13, v1

    add-double/2addr v7, v13

    cmpg-double v7, v9, v7

    if-gez v7, :cond_4

    iget-wide v3, v0, Lorg/apache/commons/math3/distribution/GammaDistribution;->scale:D

    mul-double/2addr v3, v1

    mul-double/2addr v3, v11

    return-wide v3
.end method
