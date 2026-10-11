.class public abstract Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/distribution/IntegerDistribution;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xfe88ba81dead5b5L


# instance fields
.field protected final random:Lorg/apache/commons/math3/random/RandomGenerator;

.field protected final randomData:Lorg/apache/commons/math3/random/RandomDataImpl;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataImpl;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/RandomDataImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataImpl;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v0, Lorg/apache/commons/math3/random/RandomDataImpl;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/RandomDataImpl;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataImpl;

    .line 6
    iput-object p1, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method

.method private checkedCumulativeProbability(I)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathInternalError;
        }
    .end annotation

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/distribution/IntegerDistribution;->cumulativeProbability(I)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result p0

    if-nez p0, :cond_0

    return-wide v0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/MathInternalError;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DISCRETE_CUMULATIVE_PROBABILITY_RETURNED_NAN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public cumulativeProbability(II)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    if-lt p2, p1, :cond_0

    invoke-interface {p0, p2}, Lorg/apache/commons/math3/distribution/IntegerDistribution;->cumulativeProbability(I)D

    move-result-wide v0

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/distribution/IntegerDistribution;->cumulativeProbability(I)D

    move-result-wide p0

    sub-double/2addr v0, p0

    return-wide v0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_ENDPOINT_ABOVE_UPPER_ENDPOINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0
.end method

.method public inverseCumulativeProbability(D)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    const-wide/16 v3, 0x0

    cmpg-double v5, v1, v3

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-ltz v5, :cond_7

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v5, v1, v8

    if-gtz v5, :cond_7

    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/IntegerDistribution;->getSupportLowerBound()I

    move-result v10

    cmpl-double v11, v1, v3

    if-nez v11, :cond_0

    return v10

    :cond_0
    const/high16 v11, -0x80000000

    if-ne v10, v11, :cond_1

    invoke-direct {v0, v10}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->checkedCumulativeProbability(I)D

    move-result-wide v11

    cmpl-double v11, v11, v1

    if-ltz v11, :cond_2

    return v10

    :cond_1
    add-int/lit8 v10, v10, -0x1

    :cond_2
    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/IntegerDistribution;->getSupportUpperBound()I

    move-result v11

    if-nez v5, :cond_3

    return v11

    :cond_3
    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/IntegerDistribution;->getNumericalMean()D

    move-result-wide v12

    invoke-interface/range {p0 .. p0}, Lorg/apache/commons/math3/distribution/IntegerDistribution;->getNumericalVariance()D

    move-result-wide v14

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    invoke-static {v12, v13}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v14, v15}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v5

    if-nez v5, :cond_4

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    move-result v5

    if-nez v5, :cond_4

    cmpl-double v3, v14, v3

    if-eqz v3, :cond_4

    move v6, v7

    :cond_4
    if-eqz v6, :cond_6

    sub-double v3, v8, v1

    div-double/2addr v3, v1

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    mul-double v5, v3, v14

    sub-double v5, v12, v5

    int-to-double v8, v10

    cmpl-double v8, v5, v8

    if-lez v8, :cond_5

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v5

    double-to-int v5, v5

    add-int/lit8 v10, v5, -0x1

    :cond_5
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    div-double v8, v5, v3

    mul-double/2addr v8, v14

    add-double/2addr v12, v8

    int-to-double v3, v11

    cmpg-double v3, v12, v3

    if-gez v3, :cond_6

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v3

    double-to-int v3, v3

    add-int/lit8 v11, v3, -0x1

    :cond_6
    invoke-virtual {v0, v1, v2, v10, v11}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->solveInverseCumulativeProbability(DII)I

    move-result v0

    return v0

    :cond_7
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static/range {p1 .. p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method public logProbability(I)D
    .locals 0

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/distribution/IntegerDistribution;->probability(I)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public reseedRandomGenerator(J)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(J)V

    iget-object p0, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->randomData:Lorg/apache/commons/math3/random/RandomDataImpl;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/random/RandomDataImpl;->reSeed(J)V

    return-void
.end method

.method public sample()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->inverseCumulativeProbability(D)I

    move-result p0

    return p0
.end method

.method public sample(I)[I
    .locals 3

    if-lez p1, :cond_1

    .line 2
    new-array v0, p1, [I

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->sample()I

    move-result v2

    aput v2, v0, v1

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

.method public solveInverseCumulativeProbability(DII)I
    .locals 3

    :goto_0
    add-int/lit8 v0, p3, 0x1

    if-ge v0, p4, :cond_3

    add-int v0, p3, p4

    div-int/lit8 v0, v0, 0x2

    if-lt v0, p3, :cond_0

    if-le v0, p4, :cond_1

    :cond_0
    sub-int v0, p4, p3

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, p3

    :cond_1
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->checkedCumulativeProbability(I)D

    move-result-wide v1

    cmpl-double v1, v1, p1

    if-ltz v1, :cond_2

    move p4, v0

    goto :goto_0

    :cond_2
    move p3, v0

    goto :goto_0

    :cond_3
    return p4
.end method
