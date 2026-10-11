.class public Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x71e58548e148e35aL


# instance fields
.field private final statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

.field private final statisticsPrototype:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;-><init>(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V

    :goto_0
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;-><init>(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {p1}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statisticsPrototype:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    if-nez p2, :cond_1

    .line 5
    new-instance p2, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {p2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    :cond_1
    iput-object p2, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    return-void
.end method

.method public static aggregate(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;
    .locals 29
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;",
            ">;)",
            "Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;"
        }
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v2

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMin()D

    move-result-wide v4

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getSum()D

    move-result-wide v6

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMax()D

    move-result-wide v8

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v10

    long-to-double v12, v2

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v12, v14

    mul-double/2addr v10, v12

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v12

    move-wide/from16 v25, v4

    move-wide/from16 v27, v6

    move-wide/from16 v23, v8

    move-wide/from16 v17, v12

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMin()D

    move-result-wide v4

    cmpg-double v4, v4, v25

    if-ltz v4, :cond_2

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMin()D

    move-result-wide v4

    move-wide/from16 v25, v4

    :cond_3
    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMax()D

    move-result-wide v4

    cmpl-double v4, v4, v23

    if-gtz v4, :cond_4

    invoke-static/range {v23 .. v24}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_5

    :cond_4
    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMax()D

    move-result-wide v4

    move-wide/from16 v23, v4

    :cond_5
    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getSum()D

    move-result-wide v4

    add-double v27, v27, v4

    long-to-double v2, v2

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getN()J

    move-result-wide v4

    long-to-double v4, v4

    add-double v6, v2, v4

    double-to-long v6, v6

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getMean()D

    move-result-wide v8

    sub-double v8, v8, v17

    long-to-double v12, v6

    div-double v17, v27, v12

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;->getVariance()D

    move-result-wide v19

    sub-double v21, v4, v14

    mul-double v19, v19, v21

    add-double v10, v10, v19

    mul-double/2addr v8, v8

    mul-double/2addr v8, v2

    mul-double/2addr v8, v4

    div-double/2addr v8, v12

    add-double/2addr v10, v8

    move-wide v2, v6

    goto :goto_0

    :cond_6
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_7

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :goto_1
    move-wide/from16 v19, v0

    goto :goto_2

    :cond_7
    const-wide/16 v0, 0x1

    cmp-long v4, v2, v0

    if-nez v4, :cond_8

    const-wide/16 v0, 0x0

    goto :goto_1

    :cond_8
    sub-long v0, v2, v0

    long-to-double v0, v0

    div-double/2addr v10, v0

    move-wide/from16 v19, v10

    :goto_2
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;

    move-object/from16 v16, v0

    move-wide/from16 v21, v2

    invoke-direct/range {v16 .. v28}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;-><init>(DDJDDD)V

    return-object v0
.end method


# virtual methods
.method public createContributingStatistics()Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;
    .locals 2

    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;

    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics$AggregatingSummaryStatistics;-><init>(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statisticsPrototype:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->copy(Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;)V

    return-object v0
.end method

.method public getGeometricMean()D
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getGeometricMean()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMax()D
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMax()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMean()D
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMean()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getMin()D
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getMin()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getN()J
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSecondMoment()D
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSecondMoment()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getStandardDeviation()D
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getStandardDeviation()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSum()D
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSum()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSumOfLogs()D
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSumOfLogs()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSummary()Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;
    .locals 15

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    :try_start_0
    new-instance v14, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->getMean()D

    move-result-wide v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->getVariance()D

    move-result-wide v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->getN()J

    move-result-wide v6

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->getMax()D

    move-result-wide v8

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->getMin()D

    move-result-wide v10

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->getSum()D

    move-result-wide v12

    move-object v1, v14

    invoke-direct/range {v1 .. v13}, Lorg/apache/commons/math3/stat/descriptive/StatisticalSummaryValues;-><init>(DDJDDD)V

    monitor-exit v0

    return-object v14

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getSumsq()D
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSumsq()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getVariance()D
    .locals 3

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/AggregateSummaryStatistics;->statistics:Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getVariance()D

    move-result-wide v1

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
