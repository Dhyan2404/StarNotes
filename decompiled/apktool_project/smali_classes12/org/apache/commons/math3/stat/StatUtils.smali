.class public final Lorg/apache/commons/math3/stat/StatUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field public static final b:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field public static final c:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field public static final d:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field public static final e:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field public static final f:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field public static final g:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

.field public static final h:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

.field public static final i:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

.field public static final j:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->a:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->b:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Product;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Product;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->c:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->d:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->e:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->f:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->g:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->h:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->i:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/StatUtils;->j:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a([DII)[D
    .locals 5

    new-instance v0, Lorg/apache/commons/math3/stat/Frequency;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/Frequency;-><init>()V

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    aget-wide v2, p0, v1

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/stat/Frequency;->addValue(Ljava/lang/Comparable;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/Frequency;->getMode()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [D

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p2, 0x0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    add-int/lit8 v1, p2, 0x1

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    aput-wide v2, p1, p2

    move p2, v1

    goto :goto_1

    :cond_2
    return-object p1
.end method

.method public static geometricMean([D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->j:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static geometricMean([DII)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->j:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->evaluate([DII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static max([D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->f:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static max([DII)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->f:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static mean([D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->g:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static mean([DII)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->g:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static meanDifference([D[D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/commons/math3/stat/StatUtils;->sumDifference([D[D)D

    move-result-wide v0

    array-length p0, p0

    int-to-double p0, p0

    div-double/2addr v0, p0

    return-wide v0
.end method

.method public static min([D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->e:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static min([DII)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->e:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static mode([D)[D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/stat/StatUtils;->a([DII)[D

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, v1, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static mode([DII)[D
    .locals 0

    if-eqz p0, :cond_2

    if-ltz p1, :cond_1

    if-ltz p2, :cond_0

    .line 3
    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/stat/StatUtils;->a([DII)[D

    move-result-object p0

    return-object p0

    .line 4
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LENGTH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0

    .line 5
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object p2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->START_POSITION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0

    .line 6
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INPUT_ARRAY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public static normalize([D)[D
    .locals 8

    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_0

    aget-wide v3, p0, v2

    invoke-virtual {v0, v3, v4}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->addValue(D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getMean()D

    move-result-wide v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/DescriptiveStatistics;->getStandardDeviation()D

    move-result-wide v4

    array-length v0, p0

    new-array v0, v0, [D

    :goto_1
    array-length v6, p0

    if-ge v1, v6, :cond_1

    aget-wide v6, p0, v1

    sub-double/2addr v6, v2

    div-double/2addr v6, v4

    aput-wide v6, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public static percentile([DD)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->i:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->evaluate([DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static percentile([DIID)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->i:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->evaluate([DIID)D

    move-result-wide p0

    return-wide p0
.end method

.method public static populationVariance([D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Z)V

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static populationVariance([DD)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 4
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Z)V

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static populationVariance([DDII)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 3
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Z)V

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DDII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static populationVariance([DII)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 2
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Z)V

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static product([D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->c:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static product([DII)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->c:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static sum([D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->a:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static sum([DII)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->a:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static sumDifference([D[D)D
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    if-lez v0, :cond_1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget-wide v4, p0, v3

    aget-wide v6, p1, v3

    sub-double/2addr v4, v6

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_DIMENSION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method

.method public static sumLog([D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->d:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static sumLog([DII)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->d:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static sumSq([D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->b:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static sumSq([DII)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->b:Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;

    invoke-interface {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static variance([D)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->h:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D)D

    move-result-wide v0

    return-wide v0
.end method

.method public static variance([DD)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 4
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->h:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public static variance([DDII)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 3
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->h:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DDII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static variance([DII)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/math3/stat/StatUtils;->h:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static varianceDifference([D[DD)D
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    array-length v0, p0

    array-length v1, p1

    if-ne v0, v1, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-lt v0, v1, :cond_1

    const-wide/16 v3, 0x0

    const/4 v1, 0x0

    move-wide v5, v3

    :goto_0
    if-ge v1, v0, :cond_0

    aget-wide v7, p0, v1

    aget-wide v9, p1, v1

    sub-double/2addr v7, v9

    sub-double/2addr v7, p2

    mul-double v9, v7, v7

    add-double/2addr v3, v9

    add-double/2addr v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    mul-double/2addr v5, v5

    int-to-double p0, v0

    div-double/2addr v5, p0

    sub-double/2addr v3, v5

    sub-int/2addr v0, v2

    int-to-double p0, v0

    div-double/2addr v3, p0

    return-wide v3

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2, v2}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method
