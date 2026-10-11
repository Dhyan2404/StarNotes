.class public Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x1c0d2d74a39b871fL


# instance fields
.field private geoMean:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

.field private geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private max:Lorg/apache/commons/math3/stat/descriptive/rank/Max;

.field private maxImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private mean:Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

.field private meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private min:Lorg/apache/commons/math3/stat/descriptive/rank/Min;

.field private minImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private n:J

.field private secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

.field private sum:Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

.field private sumImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private sumLog:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

.field private sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private sumsq:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

.field private sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

.field private variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

.field private varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->n:J

    .line 3
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 4
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sum:Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    .line 5
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsq:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    .line 6
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->min:Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    .line 7
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->max:Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    .line 8
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLog:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    .line 9
    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>(Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;)V

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMean:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    .line 10
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>(Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->mean:Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    .line 11
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 12
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sum:Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 13
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsq:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 14
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->min:Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 15
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->max:Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 16
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLog:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 17
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMean:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 18
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->mean:Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 19
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 21
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->n:J

    .line 22
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 23
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sum:Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    .line 24
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsq:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    .line 25
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->min:Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    .line 26
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->max:Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    .line 27
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLog:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    .line 28
    new-instance v1, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>(Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;)V

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMean:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    .line 29
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>(Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->mean:Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    .line 30
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 31
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sum:Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 32
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsq:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 33
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->min:Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 34
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->max:Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 35
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLog:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 36
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMean:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 37
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->mean:Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    iput-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 38
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 39
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->copy(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V

    return-void
.end method

.method private checkEmpty()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->VALUES_ADDED_BEFORE_CONFIGURING_STATISTIC:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->n:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 3
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 4
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 6
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 7
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 8
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 9
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 10
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    .line 11
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->n:J

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->n:J

    .line 12
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getVarianceImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    if-eqz v0, :cond_0

    .line 13
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    iget-object v1, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 15
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    instance-of v1, v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    if-eqz v1, :cond_1

    .line 16
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    iget-object v1, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;-><init>(Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;)V

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    goto :goto_1

    .line 17
    :cond_1
    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 18
    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getGeoMeanImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0

    instance-of v0, v0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    if-eqz v0, :cond_2

    .line 19
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    iget-object v1, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    check-cast v1, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>(Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;)V

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    goto :goto_2

    .line 20
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object v0

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    .line 21
    :goto_2
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMean:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    if-ne v0, v1, :cond_3

    .line 22
    iget-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMean:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    goto :goto_3

    .line 23
    :cond_3
    iget-object v1, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMean:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;)V

    .line 24
    :goto_3
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->max:Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    if-ne v0, v1, :cond_4

    .line 25
    iget-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->max:Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    goto :goto_4

    .line 26
    :cond_4
    iget-object v1, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->max:Lorg/apache/commons/math3/stat/descriptive/rank/Max;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/Max;->copy(Lorg/apache/commons/math3/stat/descriptive/rank/Max;Lorg/apache/commons/math3/stat/descriptive/rank/Max;)V

    .line 27
    :goto_4
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->mean:Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    if-ne v0, v1, :cond_5

    .line 28
    iget-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->mean:Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    goto :goto_5

    .line 29
    :cond_5
    iget-object v1, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->mean:Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Mean;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Mean;Lorg/apache/commons/math3/stat/descriptive/moment/Mean;)V

    .line 30
    :goto_5
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->min:Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    if-ne v0, v1, :cond_6

    .line 31
    iget-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->min:Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    goto :goto_6

    .line 32
    :cond_6
    iget-object v1, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->min:Lorg/apache/commons/math3/stat/descriptive/rank/Min;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/Min;->copy(Lorg/apache/commons/math3/stat/descriptive/rank/Min;Lorg/apache/commons/math3/stat/descriptive/rank/Min;)V

    .line 33
    :goto_6
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sum:Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    if-ne v0, v1, :cond_7

    .line 34
    iget-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sum:Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    goto :goto_7

    .line 35
    :cond_7
    iget-object v1, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sum:Lorg/apache/commons/math3/stat/descriptive/summary/Sum;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/summary/Sum;->copy(Lorg/apache/commons/math3/stat/descriptive/summary/Sum;Lorg/apache/commons/math3/stat/descriptive/summary/Sum;)V

    .line 36
    :goto_7
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    if-ne v0, v1, :cond_8

    .line 37
    iget-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    goto :goto_8

    .line 38
    :cond_8
    iget-object v1, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/Variance;Lorg/apache/commons/math3/stat/descriptive/moment/Variance;)V

    .line 39
    :goto_8
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLog:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    if-ne v0, v1, :cond_9

    .line 40
    iget-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    iput-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLog:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    goto :goto_9

    .line 41
    :cond_9
    iget-object v1, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLog:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    invoke-static {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;->copy(Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;)V

    .line 42
    :goto_9
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsq:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    if-ne v0, p0, :cond_a

    .line 43
    iget-object p0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    check-cast p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    iput-object p0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsq:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    goto :goto_a

    .line 44
    :cond_a
    iget-object p0, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsq:Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-static {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->copy(Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;)V

    :goto_a
    return-void
.end method


# virtual methods
.method public addValue(D)V
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-virtual {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->increment(D)V

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->mean:Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    if-eq v0, v1, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    if-eq v0, v1, :cond_1

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    :cond_1
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMean:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    if-eq v0, v1, :cond_2

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    :cond_2
    iget-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->n:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->n:J

    return-void
.end method

.method public clear()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->n:J

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->clear()V

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->mean:Lorg/apache/commons/math3/stat/descriptive/moment/Mean;

    if-eq v0, v1, :cond_0

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    if-eq v0, p0, :cond_1

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    :cond_1
    return-void
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    .line 2
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->copy(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getGeometricMean()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getGeometricMean()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMax()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMax()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMean()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMean()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMin()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMin()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v3

    long-to-float v1, v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v3

    long-to-float v3, v3

    invoke-static {v1, v3}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(FF)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSum()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSum()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSumsq()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSumsq()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getVariance()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getVariance()D

    move-result-wide p0

    invoke-static {v3, v4, p0, p1}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public getGeoMeanImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object p0
.end method

.method public getGeometricMean()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {p0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getResult()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMax()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {p0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getResult()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMaxImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object p0
.end method

.method public getMean()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {p0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getResult()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMeanImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object p0
.end method

.method public getMin()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {p0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getResult()D

    move-result-wide v0

    return-wide v0
.end method

.method public getMinImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object p0
.end method

.method public getN()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->n:J

    return-wide v0
.end method

.method public getPopulationVariance()D
    .locals 2

    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->setBiasCorrected(Z)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getResult()D

    move-result-wide v0

    return-wide v0
.end method

.method public getQuadraticMean()D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSumsq()D

    move-result-wide v2

    long-to-double v0, v0

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    return-wide v0
.end method

.method public getSecondMoment()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->secondMoment:Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->getResult()D

    move-result-wide v0

    return-wide v0
.end method

.method public getStandardDeviation()D
    .locals 4

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getVariance()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_1
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_0
    return-wide v0
.end method

.method public getSum()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {p0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getResult()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSumImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object p0
.end method

.method public getSumLogImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object p0
.end method

.method public getSumOfLogs()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {p0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getResult()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSummary()Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .locals 14

    new-instance v13, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMean()D

    move-result-wide v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getVariance()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v5

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMax()D

    move-result-wide v7

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMin()D

    move-result-wide v9

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSum()D

    move-result-wide v11

    move-object v0, v13

    invoke-direct/range {v0 .. v12}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;-><init>(DDJDDD)V

    return-object v13
.end method

.method public getSumsq()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {p0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getResult()D

    move-result-wide v0

    return-wide v0
.end method

.method public getSumsqImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object p0
.end method

.method public getVariance()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {p0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getResult()D

    move-result-wide v0

    return-wide v0
.end method

.method public getVarianceImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getGeometricMean()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v0

    add-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getGeometricMean()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMax()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMean()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMin()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v1

    long-to-double v1, v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSum()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSumsq()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getVariance()D

    move-result-wide v1

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public setGeoMeanImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->checkEmpty()V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMeanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-void
.end method

.method public setMaxImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->checkEmpty()V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->maxImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-void
.end method

.method public setMeanImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->checkEmpty()V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->meanImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-void
.end method

.method public setMinImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->checkEmpty()V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->minImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-void
.end method

.method public setSumImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->checkEmpty()V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-void
.end method

.method public setSumLogImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->checkEmpty()V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumLogImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->geoMean:Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->setSumLogImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V

    return-void
.end method

.method public setSumsqImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->checkEmpty()V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->sumsqImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-void
.end method

.method public setVarianceImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->checkEmpty()V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->varianceImpl:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SummaryStatistics:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "n: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "min: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMin()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "max: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMax()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sum: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSum()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "mean: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMean()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "geometric mean: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getGeometricMean()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "variance: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getVariance()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "population variance: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getPopulationVariance()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "second moment: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSecondMoment()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sum of squares: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSumsq()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "standard deviation: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getStandardDeviation()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sum of logs: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSumOfLogs()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
