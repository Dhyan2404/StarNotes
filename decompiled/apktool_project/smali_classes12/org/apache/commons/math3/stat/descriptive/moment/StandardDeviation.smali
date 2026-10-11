.class public Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4f807d2658822864L


# instance fields
.field private variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 3
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 6
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Lorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 7
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 9
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 12
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    return-void
.end method

.method public constructor <init>(ZLorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    .line 15
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;-><init>(ZLorg/apache/commons/math3/stat/descriptive/moment/SecondMoment;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;)V
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
    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    move-result-object p0

    iput-object p0, p1, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->clear()V

    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->copy()Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;-><init>()V

    .line 4
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->copy(Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;)V

    return-object v0
.end method

.method public evaluate([D)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([D)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public evaluate([DD)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 4
    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DD)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public evaluate([DDII)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    move-object v1, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DDII)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public evaluate([DII)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->evaluate([DII)D

    move-result-wide p0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public getN()J
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getN()J

    move-result-wide v0

    return-wide v0
.end method

.method public getResult()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->getResult()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public increment(D)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->increment(D)V

    return-void
.end method

.method public isBiasCorrected()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->isBiasCorrected()Z

    move-result p0

    return p0
.end method

.method public setBiasCorrected(Z)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/StandardDeviation;->variance:Lorg/apache/commons/math3/stat/descriptive/moment/Variance;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/moment/Variance;->setBiasCorrected(Z)V

    return-void
.end method
