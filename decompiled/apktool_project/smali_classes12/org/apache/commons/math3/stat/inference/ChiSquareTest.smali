.class public Lorg/apache/commons/math3/stat/inference/ChiSquareTest;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([[J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    array-length p0, p1

    const/4 v0, 0x2

    if-lt p0, v0, :cond_1

    const/4 p0, 0x0

    aget-object v1, p1, p0

    array-length v1, v1

    if-lt v1, v0, :cond_0

    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkRectangular([[J)V

    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([[J)V

    return-void

    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object p0, p1, p0

    array-length p0, p0

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method

.method public chiSquare([D[J)D
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    array-length p0, p1

    const/4 v0, 0x2

    if-lt p0, v0, :cond_5

    .line 2
    array-length p0, p1

    array-length v0, p2

    if-ne p0, v0, :cond_4

    .line 3
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkPositive([D)V

    .line 4
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    const/4 p0, 0x0

    const-wide/16 v0, 0x0

    move v2, p0

    move-wide v3, v0

    move-wide v5, v3

    .line 5
    :goto_0
    array-length v7, p2

    if-ge v2, v7, :cond_0

    .line 6
    aget-wide v7, p1, v2

    add-double/2addr v3, v7

    .line 7
    aget-wide v7, p2, v2

    long-to-double v7, v7

    add-double/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sub-double v7, v3, v5

    .line 8
    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v7

    const-wide v9, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpl-double v2, v7, v9

    if-lez v2, :cond_1

    div-double/2addr v5, v3

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move v2, p0

    .line 9
    :goto_1
    array-length v3, p2

    if-ge p0, v3, :cond_3

    if-eqz v2, :cond_2

    .line 10
    aget-wide v3, p2, p0

    long-to-double v3, v3

    aget-wide v7, p1, p0

    mul-double v9, v5, v7

    sub-double/2addr v3, v9

    mul-double/2addr v3, v3

    mul-double/2addr v7, v5

    goto :goto_2

    .line 11
    :cond_2
    aget-wide v3, p2, p0

    long-to-double v3, v3

    aget-wide v7, p1, p0

    sub-double/2addr v3, v7

    mul-double/2addr v3, v3

    :goto_2
    div-double/2addr v3, v7

    add-double/2addr v0, v3

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    return-wide v0

    .line 12
    :cond_4
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0

    .line 13
    :cond_5
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method

.method public chiSquare([[J)D
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p1

    .line 14
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->a([[J)V

    .line 15
    array-length v1, v0

    const/4 v2, 0x0

    .line 16
    aget-object v3, v0, v2

    array-length v3, v3

    .line 17
    new-array v4, v1, [D

    .line 18
    new-array v5, v3, [D

    move v8, v2

    const-wide/16 v9, 0x0

    :goto_0
    if-ge v8, v1, :cond_1

    move v11, v2

    :goto_1
    if-ge v11, v3, :cond_0

    .line 19
    aget-wide v12, v4, v8

    aget-object v14, v0, v8

    aget-wide v14, v14, v11

    long-to-double v6, v14

    add-double/2addr v12, v6

    aput-wide v12, v4, v8

    .line 20
    aget-wide v6, v5, v11

    long-to-double v12, v14

    add-double/2addr v6, v12

    aput-wide v6, v5, v11

    long-to-double v6, v14

    add-double/2addr v9, v6

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_1
    move v8, v2

    const-wide/16 v6, 0x0

    :goto_2
    if-ge v8, v1, :cond_3

    move v11, v2

    :goto_3
    if-ge v11, v3, :cond_2

    .line 21
    aget-wide v12, v4, v8

    aget-wide v14, v5, v11

    mul-double/2addr v12, v14

    div-double/2addr v12, v9

    .line 22
    aget-object v14, v0, v8

    aget-wide v14, v14, v11

    move/from16 v16, v3

    long-to-double v2, v14

    sub-double/2addr v2, v12

    long-to-double v14, v14

    sub-double/2addr v14, v12

    mul-double/2addr v2, v14

    div-double/2addr v2, v12

    add-double/2addr v6, v2

    add-int/lit8 v11, v11, 0x1

    move/from16 v3, v16

    const/4 v2, 0x0

    goto :goto_3

    :cond_2
    move/from16 v16, v3

    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    return-wide v6
.end method

.method public chiSquareDataSetsComparison([J[J)D
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    array-length v2, v0

    const/4 v3, 0x2

    if-lt v2, v3, :cond_9

    array-length v2, v0

    array-length v3, v1

    if-ne v2, v3, :cond_8

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move v5, v2

    move-wide v6, v3

    move-wide v8, v6

    :goto_0
    array-length v10, v0

    if-ge v5, v10, :cond_0

    aget-wide v10, v0, v5

    add-long/2addr v6, v10

    aget-wide v10, v1, v5

    add-long/2addr v8, v10

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    cmp-long v5, v6, v3

    if-eqz v5, :cond_7

    cmp-long v5, v8, v3

    if-eqz v5, :cond_7

    cmp-long v5, v6, v8

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    const-wide/16 v10, 0x0

    if-eqz v5, :cond_2

    long-to-double v6, v6

    long-to-double v8, v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    goto :goto_2

    :cond_2
    move-wide v6, v10

    :goto_2
    array-length v8, v0

    if-ge v2, v8, :cond_6

    aget-wide v8, v0, v2

    cmp-long v12, v8, v3

    if-nez v12, :cond_4

    aget-wide v12, v1, v2

    cmp-long v12, v12, v3

    if-eqz v12, :cond_3

    goto :goto_3

    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OBSERVED_COUNTS_BOTTH_ZERO_FOR_ENTRY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_4
    :goto_3
    long-to-double v8, v8

    aget-wide v12, v1, v2

    long-to-double v12, v12

    if-eqz v5, :cond_5

    div-double v14, v8, v6

    mul-double v16, v12, v6

    sub-double v14, v14, v16

    goto :goto_4

    :cond_5
    sub-double v14, v8, v12

    :goto_4
    mul-double/2addr v14, v14

    add-double/2addr v8, v12

    div-double/2addr v14, v8

    add-double/2addr v10, v14

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_6
    return-wide v10

    :cond_7
    new-instance v0, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw v0

    :cond_8
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v0, v0

    array-length v1, v1

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    :cond_9
    new-instance v1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v0, v0

    invoke-direct {v1, v0, v3}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v1
.end method

.method public chiSquareTest([D[J)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    array-length v1, p1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    const/4 v5, 0x0

    invoke-direct {v0, v5, v1, v2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquare([D[J)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide p0

    sub-double/2addr v3, p0

    return-wide v3
.end method

.method public chiSquareTest([[J)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->a([[J)V

    .line 6
    array-length v0, p1

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, v2

    const/4 v4, 0x0

    aget-object v4, p1, v4

    array-length v4, v4

    int-to-double v4, v4

    sub-double/2addr v4, v2

    mul-double/2addr v0, v4

    .line 7
    new-instance v4, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    invoke-direct {v4, v0, v1}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(D)V

    .line 8
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquare([[J)D

    move-result-wide p0

    invoke-virtual {v4, p0, p1}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide p0

    sub-double/2addr v2, p0

    return-wide v2
.end method

.method public chiSquareTest([D[JD)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const/4 v3, 0x0

    if-lez v0, :cond_1

    cmpl-double v0, p3, v1

    if-gtz v0, :cond_1

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquareTest([D[J)D

    move-result-wide p0

    cmpg-double p0, p0, p3

    if-gez p0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 4
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUND_SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0
.end method

.method public chiSquareTest([[JD)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const/4 v3, 0x0

    if-lez v0, :cond_1

    cmpl-double v0, p2, v1

    if-gtz v0, :cond_1

    .line 9
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquareTest([[J)D

    move-result-wide p0

    cmpg-double p0, p0, p2

    if-gez p0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 10
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUND_SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0
.end method

.method public chiSquareTestDataSetsComparison([J[J)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    array-length v1, p1

    int-to-double v1, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v1, v3

    const/4 v5, 0x0

    invoke-direct {v0, v5, v1, v2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquareDataSetsComparison([J[J)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide p0

    sub-double/2addr v3, p0

    return-wide v3
.end method

.method public chiSquareTestDataSetsComparison([J[JD)Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const/4 v3, 0x0

    if-lez v0, :cond_1

    cmpl-double v0, p3, v1

    if-gtz v0, :cond_1

    .line 3
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquareTestDataSetsComparison([J[J)D

    move-result-wide p0

    cmpg-double p0, p0, p3

    if-gez p0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 4
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUND_SIGNIFICANCE_LEVEL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0
.end method
