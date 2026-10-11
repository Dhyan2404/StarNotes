.class public Lorg/apache/commons/math3/distribution/TriangularDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractRealDistribution;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x1330230L


# instance fields
.field private final a:D

.field private final b:D

.field private final c:D

.field private final solverAbsoluteAccuracy:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 1
    new-instance v1, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v1}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/TriangularDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;)V

    cmpl-double p1, p2, p6

    if-gez p1, :cond_2

    cmpg-double p1, p4, p2

    const/4 v0, 0x1

    if-ltz p1, :cond_1

    cmpl-double p1, p4, p6

    if-gtz p1, :cond_0

    .line 3
    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    .line 4
    iput-wide p4, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    .line 5
    iput-wide p6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    .line 6
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide p1

    invoke-static {p6, p7}, Lorg/apache/commons/math3/util/FastMath;->ulp(D)D

    move-result-wide p3

    invoke-static {p1, p2, p3, p4}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->solverAbsoluteAccuracy:D

    return-void

    .line 7
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_TOO_LARGE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    .line 8
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_TOO_SMALL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p4, p2, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    .line 9
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_BOUND_NOT_BELOW_UPPER_BOUND:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {p6, p7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0
.end method


# virtual methods
.method public cumulativeProbability(D)D
    .locals 11

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    cmpg-double v2, v0, p1

    if-gtz v2, :cond_1

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    cmpg-double v4, p1, v2

    if-gez v4, :cond_1

    sub-double v4, p1, v0

    sub-double/2addr p1, v0

    mul-double/2addr v4, p1

    iget-wide p0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    sub-double/2addr p0, v0

    sub-double/2addr v2, v0

    mul-double/2addr p0, v2

    div-double/2addr v4, p0

    return-wide v4

    :cond_1
    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    cmpl-double v4, p1, v2

    if-nez v4, :cond_2

    sub-double/2addr v2, v0

    iget-wide p0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    sub-double/2addr p0, v0

    div-double/2addr v2, p0

    return-wide v2

    :cond_2
    cmpg-double v4, v2, p1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    if-gez v4, :cond_3

    iget-wide v7, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    cmpg-double p0, p1, v7

    if-gtz p0, :cond_3

    sub-double v9, v7, p1

    sub-double p0, v7, p1

    mul-double/2addr v9, p0

    sub-double p0, v7, v0

    sub-double/2addr v7, v2

    mul-double/2addr p0, v7

    div-double/2addr v9, p0

    sub-double/2addr v5, v9

    :cond_3
    return-wide v5
.end method

.method public density(D)D
    .locals 11

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    cmpg-double v2, p1, v0

    const-wide/16 v3, 0x0

    if-gez v2, :cond_0

    return-wide v3

    :cond_0
    cmpg-double v2, v0, p1

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    if-gtz v2, :cond_1

    iget-wide v7, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    cmpg-double v2, p1, v7

    if-gez v2, :cond_1

    sub-double/2addr p1, v0

    mul-double/2addr p1, v5

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    sub-double/2addr v2, v0

    sub-double/2addr v7, v0

    mul-double/2addr v2, v7

    div-double/2addr p1, v2

    return-wide p1

    :cond_1
    iget-wide v7, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    cmpl-double v2, p1, v7

    if-nez v2, :cond_2

    iget-wide p0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    sub-double/2addr p0, v0

    div-double/2addr v5, p0

    return-wide v5

    :cond_2
    cmpg-double v2, v7, p1

    if-gez v2, :cond_3

    iget-wide v9, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    cmpg-double p0, p1, v9

    if-gtz p0, :cond_3

    sub-double p0, v9, p1

    mul-double/2addr p0, v5

    sub-double v0, v9, v0

    sub-double/2addr v9, v7

    mul-double/2addr v0, v9

    div-double/2addr p0, v0

    return-wide p0

    :cond_3
    return-wide v3
.end method

.method public getMode()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    return-wide v0
.end method

.method public getNumericalMean()D
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    add-double/2addr v0, v2

    const-wide/high16 v2, 0x4008000000000000L    # 3.0

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getNumericalVariance()D
    .locals 10

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    mul-double v2, v0, v0

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    mul-double v6, v4, v4

    add-double/2addr v2, v6

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    mul-double v8, v6, v6

    add-double/2addr v2, v8

    mul-double v8, v0, v4

    sub-double/2addr v2, v8

    mul-double/2addr v0, v6

    sub-double/2addr v2, v0

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-wide/high16 v0, 0x4032000000000000L    # 18.0

    div-double/2addr v2, v0

    return-wide v2
.end method

.method public getSolverAbsoluteAccuracy()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->solverAbsoluteAccuracy:D

    return-wide v0
.end method

.method public getSupportLowerBound()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    return-wide v0
.end method

.method public getSupportUpperBound()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    return-wide v0
.end method

.method public inverseCumulativeProbability(D)D
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v2, p1, v0

    if-ltz v2, :cond_3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, p1, v2

    if-gtz v4, :cond_3

    cmpl-double v0, p1, v0

    if-nez v0, :cond_0

    iget-wide p0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    return-wide p0

    :cond_0
    if-nez v4, :cond_1

    iget-wide p0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    return-wide p0

    :cond_1
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->c:D

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->a:D

    sub-double v6, v0, v4

    iget-wide v8, p0, Lorg/apache/commons/math3/distribution/TriangularDistribution;->b:D

    sub-double v10, v8, v4

    div-double/2addr v6, v10

    cmpg-double p0, p1, v6

    if-gez p0, :cond_2

    sub-double/2addr v8, v4

    mul-double/2addr p1, v8

    sub-double/2addr v0, v4

    mul-double/2addr p1, v0

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    add-double/2addr v4, p0

    return-wide v4

    :cond_2
    sub-double/2addr v2, p1

    sub-double p0, v8, v4

    mul-double/2addr v2, p0

    sub-double p0, v8, v0

    mul-double/2addr v2, p0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p0

    sub-double/2addr v8, p0

    return-wide v8

    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0
.end method

.method public isSupportConnected()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportLowerBoundInclusive()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isSupportUpperBoundInclusive()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
