.class public Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x144677da4b12b638L


# instance fields
.field private n:J

.field private value:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->n:J

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->value:D

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractStorelessUnivariateStatistic;-><init>()V

    .line 5
    invoke-static {p1, p0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->copy(Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;)V

    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;)V
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
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->n:J

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->n:J

    .line 9
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->value:D

    iput-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->value:D

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->value:D

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->n:J

    return-void
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/StorelessUnivariateStatistic;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->copy()Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->copy()Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;-><init>()V

    .line 4
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->copy(Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;)V

    return-object v0
.end method

.method public evaluate([DII)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->test([DIIZ)Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x0

    move p0, p2

    :goto_0
    add-int v2, p2, p3

    if-ge p0, v2, :cond_1

    aget-wide v2, p1, p0

    mul-double/2addr v2, v2

    add-double/2addr v0, v2

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    :cond_1
    return-wide v0
.end method

.method public getN()J
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->n:J

    return-wide v0
.end method

.method public getResult()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->value:D

    return-wide v0
.end method

.method public increment(D)V
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->value:D

    mul-double/2addr p1, p1

    add-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->value:D

    iget-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->n:J

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/summary/SumOfSquares;->n:J

    return-void
.end method
