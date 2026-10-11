.class public Lorg/apache/commons/math3/optim/univariate/SearchInterval;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# instance fields
.field public final e:D

.field public final f:D

.field public final g:D


# direct methods
.method public constructor <init>(DD)V
    .locals 11

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double v2, p1, p3

    mul-double v9, v2, v0

    move-object v4, p0

    move-wide v5, p1

    move-wide v7, p3

    .line 7
    invoke-direct/range {v4 .. v10}, Lorg/apache/commons/math3/optim/univariate/SearchInterval;-><init>(DDD)V

    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    cmpl-double v0, p1, p3

    if-gez v0, :cond_1

    cmpg-double v0, p5, p1

    if-ltz v0, :cond_0

    cmpl-double v0, p5, p3

    if-gtz v0, :cond_0

    .line 2
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/univariate/SearchInterval;->e:D

    .line 3
    iput-wide p3, p0, Lorg/apache/commons/math3/optim/univariate/SearchInterval;->f:D

    .line 4
    iput-wide p5, p0, Lorg/apache/commons/math3/optim/univariate/SearchInterval;->g:D

    return-void

    .line 5
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p5

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p5, p1, p2}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0

    .line 6
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0
.end method


# virtual methods
.method public getMax()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/SearchInterval;->f:D

    return-wide v0
.end method

.method public getMin()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/SearchInterval;->e:D

    return-wide v0
.end method

.method public getStartValue()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/optim/univariate/SearchInterval;->g:D

    return-wide v0
.end method
