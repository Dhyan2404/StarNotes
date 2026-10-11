.class public Lorg/apache/commons/math3/stat/inference/TTest;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_DATA_FOR_T_STATISTIC:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, p1, v1, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public final b([D)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    if-eqz p1, :cond_1

    array-length p0, p1

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_DATA_FOR_T_STATISTIC:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v2, 0x1

    invoke-direct {p0, v1, p1, v0, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public final c(D)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double p0, p1, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    if-lez p0, :cond_0

    cmpl-double p0, p1, v2

    if-gtz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v4, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, v4, p1, p2, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0
.end method

.method public df(DDDD)D
    .locals 6

    div-double v0, p1, p5

    div-double v2, p3, p7

    add-double/2addr v0, v2

    mul-double/2addr v0, v0

    mul-double/2addr p1, p1

    mul-double v2, p5, p5

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p5, v4

    mul-double/2addr v2, p5

    div-double/2addr p1, v2

    mul-double/2addr p3, p3

    mul-double p5, p7, p7

    sub-double/2addr p7, v4

    mul-double/2addr p5, p7

    div-double/2addr p3, p5

    add-double/2addr p1, p3

    div-double/2addr v0, p1

    return-wide v0
.end method

.method public homoscedasticT(DDDDDD)D
    .locals 8

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double v2, p9, v0

    mul-double/2addr v2, p5

    sub-double v4, p11, v0

    mul-double/2addr v4, p7

    add-double/2addr v2, v4

    add-double v4, p9, p11

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    sub-double/2addr v4, v6

    div-double/2addr v2, v4

    sub-double v4, p1, p3

    div-double v6, v0, p9

    div-double v0, v0, p11

    add-double/2addr v6, v0

    mul-double/2addr v2, v6

    .line 7
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v4, v0

    return-wide v4
.end method

.method public homoscedasticT(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->a(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 5
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->a(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 6
    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v1

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v3

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v5

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v7

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v9

    long-to-double v9, v9

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide p1

    long-to-double v11, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticT(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public homoscedasticT([D[D)D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->b([D)V

    .line 2
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->b([D)V

    .line 3
    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v1

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v3

    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v5

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v7

    array-length p1, p1

    int-to-double v9, p1

    array-length p1, p2

    int-to-double v11, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticT(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public homoscedasticTTest(DDDDDD)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 9
    invoke-virtual/range {p0 .. p12}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticT(DDDDDD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p0

    add-double/2addr p9, p11

    const-wide/high16 p2, 0x4000000000000000L    # 2.0

    sub-double/2addr p9, p2

    .line 10
    new-instance p4, Lorg/apache/commons/math3/distribution/TDistribution;

    const/4 p5, 0x0

    invoke-direct {p4, p5, p9, p10}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    neg-double p0, p0

    .line 11
    invoke-virtual {p4, p0, p1}, Lorg/apache/commons/math3/distribution/TDistribution;->cumulativeProbability(D)D

    move-result-wide p0

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method public homoscedasticTTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->a(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 7
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->a(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 8
    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v1

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v3

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v5

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v7

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v9

    long-to-double v9, v9

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide p1

    long-to-double v11, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticTTest(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public homoscedasticTTest([D[D)D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->b([D)V

    .line 2
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->b([D)V

    .line 3
    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v1

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v3

    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v5

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v7

    array-length p1, p1

    int-to-double v9, p1

    array-length p1, p2

    int-to-double v11, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticTTest(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public homoscedasticTTest([D[DD)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p3, p4}, Lorg/apache/commons/math3/stat/inference/TTest;->c(D)V

    .line 5
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticTTest([D[D)D

    move-result-wide p0

    cmpg-double p0, p0, p3

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public pairedT([D[D)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->b([D)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->b([D)V

    invoke-static {p1, p2}, Lorg/apache/commons/math3/stat/StatUtils;->meanDifference([D[D)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    invoke-static {p1, p2, v1, v2}, Lorg/apache/commons/math3/stat/StatUtils;->varianceDifference([D[DD)D

    move-result-wide v5

    array-length p1, p1

    int-to-double v7, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public pairedTTest([D[D)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2}, Lorg/apache/commons/math3/stat/StatUtils;->meanDifference([D[D)D

    move-result-wide v1

    const-wide/16 v3, 0x0

    .line 2
    invoke-static {p1, p2, v1, v2}, Lorg/apache/commons/math3/stat/StatUtils;->varianceDifference([D[DD)D

    move-result-wide v5

    array-length p1, p1

    int-to-double v7, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public pairedTTest([D[DD)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p3, p4}, Lorg/apache/commons/math3/stat/inference/TTest;->c(D)V

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->pairedTTest([D[D)D

    move-result-wide p0

    cmpg-double p0, p0, p3

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public t(DDDD)D
    .locals 0

    sub-double/2addr p1, p3

    div-double/2addr p5, p7

    .line 11
    invoke-static {p5, p6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p3

    div-double/2addr p1, p3

    return-wide p1
.end method

.method public t(DDDDDD)D
    .locals 0

    sub-double/2addr p1, p3

    div-double/2addr p5, p9

    div-double/2addr p7, p11

    add-double/2addr p5, p7

    .line 12
    invoke-static {p5, p6}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p3

    div-double/2addr p1, p3

    return-wide p1
.end method

.method public t(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->a(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 4
    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v1

    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v5

    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v3

    long-to-double v7, v3

    move-object v0, p0

    move-wide v3, p1

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public t(D[D)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->b([D)V

    .line 2
    invoke-static {p3}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v1

    invoke-static {p3}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v5

    array-length p3, p3

    int-to-double v7, p3

    move-object v0, p0

    move-wide v3, p1

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public t(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->a(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 9
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->a(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 10
    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v1

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v3

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v5

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v7

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v9

    long-to-double v9, v9

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide p1

    long-to-double v11, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public t([D[D)D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->b([D)V

    .line 6
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->b([D)V

    .line 7
    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v1

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v3

    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v5

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v7

    array-length p1, p1

    int-to-double v9, p1

    array-length p1, p2

    int-to-double v11, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public tTest(DDDD)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 19
    invoke-virtual/range {p0 .. p8}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p0

    .line 20
    new-instance p2, Lorg/apache/commons/math3/distribution/TDistribution;

    const-wide/high16 p3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p7, p3

    const/4 p3, 0x0

    invoke-direct {p2, p3, p7, p8}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    neg-double p0, p0

    .line 21
    invoke-virtual {p2, p0, p1}, Lorg/apache/commons/math3/distribution/TDistribution;->cumulativeProbability(D)D

    move-result-wide p0

    const-wide/high16 p2, 0x4000000000000000L    # 2.0

    mul-double/2addr p0, p2

    return-wide p0
.end method

.method public tTest(DDDDDD)D
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 22
    invoke-virtual/range {p0 .. p12}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DDDDDD)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    move-object v2, p0

    move-wide/from16 v3, p5

    move-wide/from16 v5, p7

    move-wide/from16 v7, p9

    move-wide/from16 v9, p11

    .line 23
    invoke-virtual/range {v2 .. v10}, Lorg/apache/commons/math3/stat/inference/TTest;->df(DDDD)D

    move-result-wide v2

    .line 24
    new-instance v4, Lorg/apache/commons/math3/distribution/TDistribution;

    const/4 v5, 0x0

    invoke-direct {v4, v5, v2, v3}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    neg-double v0, v0

    .line 25
    invoke-virtual {v4, v0, v1}, Lorg/apache/commons/math3/distribution/TDistribution;->cumulativeProbability(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, v2

    return-wide v0
.end method

.method public tTest(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->a(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 6
    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v1

    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v5

    invoke-interface {p3}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v3

    long-to-double v7, v3

    move-object v0, p0

    move-wide v3, p1

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public tTest(D[D)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->b([D)V

    .line 2
    invoke-static {p3}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v1

    invoke-static {p3}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v5

    array-length p3, p3

    int-to-double v7, p3

    move-object v0, p0

    move-wide v3, p1

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public tTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 14
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->a(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 15
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->a(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)V

    .line 16
    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v1

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v3

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v5

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v7

    invoke-interface {p1}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v9

    long-to-double v9, v9

    invoke-interface {p2}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide p1

    long-to-double v11, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public tTest([D[D)D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->b([D)V

    .line 10
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->b([D)V

    .line 11
    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v1

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->mean([D)D

    move-result-wide v3

    invoke-static {p1}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v5

    invoke-static {p2}, Lorg/apache/commons/math3/stat/StatUtils;->variance([D)D

    move-result-wide v7

    array-length p1, p1

    int-to-double v9, p1

    array-length p1, p2

    int-to-double v11, p1

    move-object v0, p0

    invoke-virtual/range {v0 .. v12}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method public tTest(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;D)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p4, p5}, Lorg/apache/commons/math3/stat/inference/TTest;->c(D)V

    .line 8
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D

    move-result-wide p0

    cmpg-double p0, p0, p4

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tTest(D[DD)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p4, p5}, Lorg/apache/commons/math3/stat/inference/TTest;->c(D)V

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(D[D)D

    move-result-wide p0

    cmpg-double p0, p0, p4

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;D)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p3, p4}, Lorg/apache/commons/math3/stat/inference/TTest;->c(D)V

    .line 18
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D

    move-result-wide p0

    cmpg-double p0, p0, p3

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public tTest([D[DD)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p3, p4}, Lorg/apache/commons/math3/stat/inference/TTest;->c(D)V

    .line 13
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest([D[D)D

    move-result-wide p0

    cmpg-double p0, p0, p3

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
