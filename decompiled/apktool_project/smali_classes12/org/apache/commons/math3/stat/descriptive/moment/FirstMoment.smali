.class Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x54d4de90ab41fa69L


# instance fields
.field protected dev:D

.field protected m1:D

.field protected n:J

.field protected nDev:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->n:J

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 3
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->m1:D

    .line 4
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->dev:D

    .line 5
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->nDev:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 7
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;)V

    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;)V
    .locals 2
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
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->n:J

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->n:J

    .line 9
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->m1:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->m1:D

    .line 10
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->dev:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->dev:D

    .line 11
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->nDev:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->nDev:D

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->m1:D

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->n:J

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->dev:D

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->nDev:D

    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;-><init>()V

    .line 4
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;)V

    return-object v0
.end method

.method public getN()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->n:J

    return-wide v0
.end method

.method public getResult()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->m1:D

    return-wide v0
.end method

.method public increment(D)V
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->n:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->m1:D

    :cond_0
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->n:J

    long-to-double v0, v0

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->m1:D

    sub-double/2addr p1, v2

    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->dev:D

    div-double/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->nDev:D

    add-double/2addr v2, p1

    iput-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->m1:D

    return-void
.end method
