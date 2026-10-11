.class public Lorg/apache/commons/math3/distribution/PoissonDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.source "SourceFile"


# static fields
.field public static final DEFAULT_EPSILON:D = 1.0E-12

.field public static final DEFAULT_MAX_ITERATIONS:I = 0x989680

.field private static final serialVersionUID:J = -0x2e7d5c3e7619058dL


# instance fields
.field private final epsilon:D

.field private final exponential:Lorg/apache/commons/math3/distribution/ExponentialDistribution;

.field private final maxIterations:I

.field private final mean:D

.field private final normal:Lorg/apache/commons/math3/distribution/NormalDistribution;


# direct methods
.method public constructor <init>(D)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    const-wide v3, 0x3d719799812dea11L    # 1.0E-12

    const v5, 0x989680

    move-object v0, p0

    move-wide v1, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/PoissonDistribution;-><init>(DDI)V

    return-void
.end method

.method public constructor <init>(DD)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    const v5, 0x989680

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 10
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/PoissonDistribution;-><init>(DDI)V

    return-void
.end method

.method public constructor <init>(DDI)V
    .locals 7
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

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/distribution/PoissonDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDI)V

    return-void
.end method

.method public constructor <init>(DI)V
    .locals 6

    const-wide v3, 0x3d719799812dea11L    # 1.0E-12

    move-object v0, p0

    move-wide v1, p1

    move v5, p3

    .line 11
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/PoissonDistribution;-><init>(DDI)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDI)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v3, p2

    .line 3
    invoke-direct/range {p0 .. p1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    const-wide/16 v1, 0x0

    cmpg-double v1, v3, v1

    if-lez v1, :cond_0

    .line 4
    iput-wide v3, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->mean:D

    move-wide/from16 v1, p4

    .line 5
    iput-wide v1, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->epsilon:D

    move/from16 v1, p6

    .line 6
    iput v1, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->maxIterations:I

    .line 7
    new-instance v9, Lorg/apache/commons/math3/distribution/NormalDistribution;

    invoke-static/range {p2 .. p3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v5

    const-wide v7, 0x3e112e0be826d695L    # 1.0E-9

    move-object v1, v9

    move-object/from16 v2, p1

    move-wide/from16 v3, p2

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    iput-object v9, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->normal:Lorg/apache/commons/math3/distribution/NormalDistribution;

    .line 8
    new-instance v1, Lorg/apache/commons/math3/distribution/ExponentialDistribution;

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    const-wide v14, 0x3e112e0be826d695L    # 1.0E-9

    move-object v10, v1

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v15}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    iput-object v1, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->exponential:Lorg/apache/commons/math3/distribution/ExponentialDistribution;

    return-void

    .line 9
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->MEAN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static/range {p2 .. p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw v0
.end method

.method private nextPoisson(D)J
    .locals 40

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-wide/high16 v3, 0x4044000000000000L    # 40.0

    cmpg-double v3, v1, v3

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-gez v3, :cond_1

    neg-double v8, v1

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v8

    :goto_0
    long-to-double v10, v4

    const-wide v12, 0x408f400000000000L    # 1000.0

    mul-double/2addr v12, v1

    cmpg-double v3, v10, v12

    if-gez v3, :cond_0

    iget-object v3, v0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v3}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v10

    mul-double/2addr v6, v10

    cmpl-double v3, v6, v8

    if-ltz v3, :cond_0

    const-wide/16 v10, 0x1

    add-long/2addr v4, v10

    goto :goto_0

    :cond_0
    return-wide v4

    :cond_1
    invoke-static/range {p1 .. p2}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v8

    sub-double/2addr v1, v8

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v10

    double-to-int v3, v8

    invoke-static {v3}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorialLog(I)D

    move-result-wide v12

    const-wide/16 v14, 0x1

    cmpg-double v3, v1, v14

    if-gez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/distribution/PoissonDistribution;->nextPoisson(D)J

    move-result-wide v4

    :goto_1
    const-wide/high16 v1, 0x4040000000000000L    # 32.0

    mul-double/2addr v1, v8

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v1, v14

    add-double/2addr v1, v6

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v1

    mul-double/2addr v1, v8

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v1

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v18, v1, v16

    mul-double v20, v8, v16

    add-double v22, v20, v1

    mul-double v14, v14, v22

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    const-wide/high16 v24, 0x4020000000000000L    # 8.0

    mul-double v24, v24, v8

    div-double v24, v6, v24

    invoke-static/range {v24 .. v25}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v26

    mul-double v14, v14, v26

    div-double v26, v22, v1

    move-wide/from16 p1, v4

    neg-double v3, v1

    add-double v28, v1, v6

    mul-double v3, v3, v28

    div-double v3, v3, v22

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v3

    mul-double v3, v3, v26

    add-double v28, v14, v3

    add-double v28, v28, v6

    div-double v14, v14, v28

    div-double v3, v3, v28

    :cond_3
    :goto_2
    iget-object v5, v0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v5}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v28

    cmpg-double v5, v28, v14

    const-wide/16 v30, 0x0

    if-gtz v5, :cond_6

    iget-object v5, v0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v5}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v28

    add-double v32, v8, v18

    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v32

    mul-double v32, v32, v28

    const-wide/high16 v34, 0x3fe0000000000000L    # 0.5

    sub-double v32, v32, v34

    cmpl-double v5, v32, v1

    if-gtz v5, :cond_3

    neg-double v6, v8

    cmpg-double v5, v32, v6

    if-gez v5, :cond_4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_4
    cmpg-double v5, v32, v30

    if-gez v5, :cond_5

    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide v5

    goto :goto_3

    :cond_5
    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v5

    :goto_3
    iget-object v7, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->exponential:Lorg/apache/commons/math3/distribution/ExponentialDistribution;

    move-wide/from16 v36, v5

    invoke-virtual {v7}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->sample()D

    move-result-wide v5

    neg-double v5, v5

    mul-double v28, v28, v28

    div-double v28, v28, v16

    sub-double v5, v5, v28

    add-double v5, v5, v24

    move-wide/from16 v28, v3

    move-wide v3, v5

    move-wide/from16 v5, v36

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    goto :goto_4

    :cond_6
    add-double v5, v14, v3

    cmpl-double v5, v28, v5

    if-lez v5, :cond_7

    goto/16 :goto_7

    :cond_7
    iget-object v5, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->exponential:Lorg/apache/commons/math3/distribution/ExponentialDistribution;

    invoke-virtual {v5}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->sample()D

    move-result-wide v5

    mul-double v5, v5, v26

    add-double v32, v1, v5

    invoke-static/range {v32 .. v33}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v5

    iget-object v7, v0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->exponential:Lorg/apache/commons/math3/distribution/ExponentialDistribution;

    move-wide/from16 v28, v3

    invoke-virtual {v7}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->sample()D

    move-result-wide v3

    neg-double v3, v3

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    add-double v36, v32, v34

    mul-double v36, v36, v1

    div-double v36, v36, v22

    sub-double v3, v3, v36

    :goto_4
    cmpg-double v7, v32, v30

    if-gez v7, :cond_8

    const/4 v7, 0x1

    goto :goto_5

    :cond_8
    const/4 v7, 0x0

    :goto_5
    add-double v30, v5, v34

    mul-double v32, v5, v30

    move-wide/from16 v36, v1

    div-double v0, v32, v20

    move-wide/from16 v32, v14

    neg-double v14, v0

    cmpg-double v2, v3, v14

    if-gez v2, :cond_9

    if-nez v7, :cond_9

    goto :goto_6

    :cond_9
    mul-double v14, v5, v16

    const-wide/high16 v34, 0x3ff0000000000000L    # 1.0

    add-double v14, v14, v34

    const-wide/high16 v38, 0x4018000000000000L    # 6.0

    mul-double v38, v38, v8

    div-double v14, v14, v38

    sub-double v14, v14, v34

    mul-double/2addr v14, v0

    mul-double/2addr v0, v0

    move-wide/from16 v38, v12

    int-to-double v12, v7

    mul-double v12, v12, v30

    add-double/2addr v12, v8

    const-wide/high16 v30, 0x4008000000000000L    # 3.0

    mul-double v12, v12, v30

    div-double/2addr v0, v12

    sub-double v0, v14, v0

    cmpg-double v0, v3, v0

    if-gez v0, :cond_a

    :goto_6
    add-double/2addr v8, v5

    goto :goto_7

    :cond_a
    cmpl-double v0, v3, v14

    if-lez v0, :cond_c

    :cond_b
    move-object/from16 v0, p0

    move-wide/from16 v3, v28

    move-wide/from16 v14, v32

    move-wide/from16 v6, v34

    move-wide/from16 v1, v36

    move-wide/from16 v12, v38

    goto/16 :goto_2

    :cond_c
    mul-double v0, v5, v10

    add-double/2addr v5, v8

    double-to-int v2, v5

    invoke-static {v2}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->factorialLog(I)D

    move-result-wide v12

    sub-double/2addr v0, v12

    add-double v0, v0, v38

    cmpg-double v0, v3, v0

    if-gez v0, :cond_b

    move-wide v8, v5

    :goto_7
    double-to-long v0, v8

    move-wide/from16 v4, p1

    add-long/2addr v4, v0

    return-wide v4
.end method


# virtual methods
.method public cumulativeProbability(I)D
    .locals 12

    if-gez p1, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    const v0, 0x7fffffff

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-ne p1, v0, :cond_1

    return-wide v1

    :cond_1
    int-to-double v3, p1

    add-double v5, v3, v1

    iget-wide v7, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->mean:D

    iget-wide v9, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->epsilon:D

    iget v11, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->maxIterations:I

    invoke-static/range {v5 .. v11}, Lorg/apache/commons/math3/special/Gamma;->regularizedGammaQ(DDDI)D

    move-result-wide p0

    return-wide p0
.end method

.method public getMean()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->mean:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/PoissonDistribution;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 2

    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/PoissonDistribution;->getMean()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSupportLowerBound()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getSupportUpperBound()I
    .locals 0

    const p0, 0x7fffffff

    return p0
.end method

.method public isSupportConnected()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public logProbability(I)D
    .locals 6

    if-ltz p1, :cond_2

    const v0, 0x7fffffff

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-wide p0, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->mean:D

    neg-double p0, p0

    goto :goto_1

    :cond_1
    int-to-double v0, p1

    invoke-static {v0, v1}, Lcom/sunia/HTREnginev2/k0m;->b(D)D

    move-result-wide v2

    neg-double v2, v2

    iget-wide p0, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->mean:D

    invoke-static {v0, v1, p0, p1}, Lcom/sunia/HTREnginev2/k0m;->a(DD)D

    move-result-wide p0

    sub-double/2addr v2, p0

    const-wide p0, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double/2addr p0, v4

    sub-double/2addr v2, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    mul-double/2addr p0, v4

    sub-double p0, v2, p0

    goto :goto_1

    :cond_2
    :goto_0
    const-wide/high16 p0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_1
    return-wide p0
.end method

.method public normalApproximateProbability(I)D
    .locals 4

    iget-object p0, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->normal:Lorg/apache/commons/math3/distribution/NormalDistribution;

    int-to-double v0, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/distribution/NormalDistribution;->cumulativeProbability(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public probability(I)D
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/distribution/PoissonDistribution;->logProbability(I)D

    move-result-wide p0

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, p0, v0

    if-nez v0, :cond_0

    const-wide/16 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p0

    :goto_0
    return-wide p0
.end method

.method public sample()I
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/PoissonDistribution;->mean:D

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/distribution/PoissonDistribution;->nextPoisson(D)J

    move-result-wide v0

    const-wide/32 v2, 0x7fffffff

    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(JJ)J

    move-result-wide v0

    long-to-int p0, v0

    return p0
.end method
