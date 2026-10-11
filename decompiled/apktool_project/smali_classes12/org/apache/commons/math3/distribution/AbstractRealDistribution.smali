.class public abstract Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/distribution/RealDistribution;
.implements Ljava/io/Serializable;


# static fields
.field public static final SOLVER_DEFAULT_ABSOLUTE_ACCURACY:D = 1.0E-6

.field private static final serialVersionUID:J = -0x872367e4cbe0c2L


# instance fields
.field protected final random:Lorg/apache/commons/math3/random/RandomGenerator;

.field protected randomData:Lorg/apache/commons/math3/random/RandomDataImpl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private solverAbsoluteAccuracy:D


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataImpl;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/RandomDataImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataImpl;

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 3
    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->solverAbsoluteAccuracy:D

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataImpl;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/RandomDataImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataImpl;

    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 7
    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->solverAbsoluteAccuracy:D

    .line 8
    iput-object p1, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method


# virtual methods
.method public cumulativeProbability(DD)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->probability(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public getSolverAbsoluteAccuracy()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public inverseCumulativeProbability(D)D
    .locals 25
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ltz v5, :cond_a

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v1, v8

    if-gtz v5, :cond_a

    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/RealDistribution;->getSupportLowerBound()D

    move-result-wide v10

    cmpl-double v3, v1, v3

    if-nez v3, :cond_0

    return-wide v10

    :cond_0
    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/RealDistribution;->getSupportUpperBound()D

    move-result-wide v3

    if-nez v5, :cond_1

    return-wide v3

    :cond_1
    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/RealDistribution;->getNumericalMean()D

    move-result-wide v12

    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/RealDistribution;->getNumericalVariance()D

    move-result-wide v14

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    invoke-static {v12, v13}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v14, v15}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    move v6, v7

    :goto_0
    const-wide/high16 v16, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v5, v10, v16

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    if-nez v5, :cond_4

    if-eqz v6, :cond_3

    sub-double v10, v8, v1

    div-double/2addr v10, v1

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    mul-double/2addr v10, v14

    sub-double v10, v12, v10

    goto :goto_2

    :cond_3
    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    :goto_1
    invoke-interface {v0, v10, v11}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(D)D

    move-result-wide v18

    cmpl-double v5, v18, v1

    if-ltz v5, :cond_4

    mul-double v10, v10, v16

    goto :goto_1

    :cond_4
    :goto_2
    const-wide/high16 v18, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    cmpl-double v5, v3, v18

    if-nez v5, :cond_7

    if-eqz v6, :cond_5

    sub-double/2addr v8, v1

    div-double v3, v1, v8

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    mul-double/2addr v14, v3

    add-double v3, v12, v14

    goto :goto_4

    :cond_5
    :goto_3
    invoke-interface {v0, v8, v9}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(D)D

    move-result-wide v3

    cmpg-double v3, v3, v1

    if-gez v3, :cond_6

    mul-double v8, v8, v16

    goto :goto_3

    :cond_6
    move-wide/from16 v21, v8

    goto :goto_5

    :cond_7
    :goto_4
    move-wide/from16 v21, v3

    :goto_5
    new-instance v3, Lorg/apache/commons/math3/distribution/AbstractRealDistribution$a;

    invoke-direct {v3, v0, v1, v2}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution$a;-><init>(Lorg/apache/commons/math3/distribution/AbstractRealDistribution;D)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->getSolverAbsoluteAccuracy()D

    move-result-wide v23

    move-object/from16 v18, v3

    move-wide/from16 v19, v10

    invoke-static/range {v18 .. v24}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolverUtils;->solve(Lorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D

    move-result-wide v1

    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/RealDistribution;->isSupportConnected()Z

    move-result v3

    if-nez v3, :cond_9

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->getSolverAbsoluteAccuracy()D

    move-result-wide v3

    sub-double v5, v1, v3

    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/RealDistribution;->getSupportLowerBound()D

    move-result-wide v7

    cmpl-double v7, v5, v7

    if-ltz v7, :cond_9

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(D)D

    move-result-wide v7

    invoke-interface {v0, v5, v6}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(D)D

    move-result-wide v5

    cmpl-double v5, v5, v7

    if-nez v5, :cond_9

    :goto_6
    sub-double v5, v1, v10

    cmpl-double v5, v5, v3

    if-lez v5, :cond_9

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    add-double v12, v10, v1

    mul-double/2addr v12, v5

    invoke-interface {v0, v12, v13}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(D)D

    move-result-wide v5

    cmpg-double v5, v5, v7

    if-gez v5, :cond_8

    move-wide v10, v12

    goto :goto_6

    :cond_8
    move-wide v1, v12

    goto :goto_6

    :cond_9
    return-wide v1

    :cond_a
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public logDensity(D)D
    .locals 0

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/distribution/RealDistribution;->density(D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public probability(D)D
    .locals 0

    .line 1
    const-wide/16 p0, 0x0

    return-wide p0
.end method

.method public probability(DD)D
    .locals 1

    cmpl-double v0, p1, p3

    if-gtz v0, :cond_0

    .line 2
    invoke-interface {p0, p3, p4}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(D)D

    move-result-wide p3

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(D)D

    move-result-wide p0

    sub-double/2addr p3, p0

    return-wide p3

    .line 3
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

.method public reseedRandomGenerator(J)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(J)V

    iget-object p0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataImpl;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataImpl;->reSeed(J)V

    return-void
.end method

.method public sample()D
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->inverseCumulativeProbability(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public sample(I)[D
    .locals 4

    if-lez p1, :cond_1

    .line 2
    new-array v0, p1, [D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->sample()D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 4
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method
