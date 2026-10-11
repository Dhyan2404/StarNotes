.class public Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;
.super Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x36b63ac1b1c5c95dL


# instance fields
.field protected m2:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;-><init>()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    .line 2
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;-><init>(Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;)V

    .line 4
    iget-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 6
    invoke-static {p0}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 7
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 8
    invoke-static {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;)V

    .line 9
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->clear()V

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;
    .locals 0

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;
    .locals 1

    .line 4
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;-><init>()V

    .line 5
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V

    return-object v0
.end method

.method public bridge synthetic getN()J
    .locals 2

    invoke-super {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->getN()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResult()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    return-wide v0
.end method

.method public increment(D)V
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->n:J

    const-wide/16 v2, 0x1

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->m1:D

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->increment(D)V

    iget-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->n:J

    long-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->dev:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/FirstMoment;->nDev:D

    mul-double/2addr v0, v2

    add-double/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;->m2:D

    return-void
.end method
