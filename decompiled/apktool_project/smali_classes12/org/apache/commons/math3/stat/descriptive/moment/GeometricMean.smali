.class public Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7180b41046b3667dL


# instance fields
.field private sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 4
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/summary/SumOfLogs;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 6
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-void
.end method

.method private checkEmpty()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->getN()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->VALUES_ADDED_BEFORE_CONFIGURING_STATISTIC:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->getN()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 5
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 6
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->setData([D)V

    .line 8
    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {p0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    move-result-object p0

    iput-object p0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {p0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->clear()V

    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;-><init>()V

    .line 4
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;)V

    return-object v0
.end method

.method public evaluate([DII)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;->evaluate([DII)D

    move-result-wide p0

    int-to-double p2, p3

    div-double/2addr p0, p2

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public getN()J
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {p0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getN()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResult()D
    .locals 4

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getN()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {v0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getResult()D

    move-result-wide v0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {p0}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->getN()J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    return-wide v0
.end method

.method public getSumLogImpl()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-object p0
.end method

.method public increment(D)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;->increment(D)V

    return-void
.end method

.method public setSumLogImpl(Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->checkEmpty()V

    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/GeometricMean;->sumOfLogs:Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;

    return-void
.end method
