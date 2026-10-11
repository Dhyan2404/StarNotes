.class public Lorg/apache/commons/math3/stat/inference/GTest;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a([J)D
    .locals 9

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    move v2, p0

    move-wide v3, v0

    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_0

    aget-wide v5, p1, v2

    long-to-double v5, v5

    add-double/2addr v3, v5

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    array-length v2, p1

    if-ge p0, v2, :cond_2

    aget-wide v5, p1, p0

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_1

    long-to-double v5, v5

    div-double/2addr v5, v3

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v0, v5

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_2
    neg-double p0, v0

    return-wide p0
.end method

.method public final b([[J)D
    .locals 10

    const-wide/16 v0, 0x0

    const/4 p0, 0x0

    move v2, p0

    move-wide v3, v0

    :goto_0
    array-length v5, p1

    if-ge v2, v5, :cond_1

    move v5, p0

    :goto_1
    aget-object v6, p1, v2

    array-length v7, v6

    if-ge v5, v7, :cond_0

    aget-wide v6, v6, v5

    long-to-double v6, v6

    add-double/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v2, p0

    :goto_2
    array-length v5, p1

    if-ge v2, v5, :cond_4

    move v5, p0

    :goto_3
    aget-object v6, p1, v2

    array-length v7, v6

    if-ge v5, v7, :cond_3

    aget-wide v6, v6, v5

    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-eqz v8, :cond_2

    long-to-double v6, v6

    div-double/2addr v6, v3

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v0, v6

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    neg-double p0, v0

    return-wide p0
.end method

.method public g([D[J)D
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    array-length p0, p1

    const/4 v0, 0x2

    if-lt p0, v0, :cond_5

    array-length p0, p1

    array-length v0, p2

    if-ne p0, v0, :cond_4

    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->checkPositive([D)V

    invoke-static {p2}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    const/4 p0, 0x0

    const-wide/16 v0, 0x0

    move v2, p0

    move-wide v3, v0

    move-wide v5, v3

    :goto_0
    array-length v7, p2

    if-ge v2, v7, :cond_0

    aget-wide v7, p1, v2

    add-double/2addr v3, v7

    aget-wide v7, p2, v2

    long-to-double v7, v7

    add-double/2addr v5, v7

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    sub-double v7, v3, v5

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

    :goto_1
    array-length v3, p2

    if-ge p0, v3, :cond_3

    if-eqz v2, :cond_2

    aget-wide v3, p2, p0

    long-to-double v3, v3

    aget-wide v7, p1, p0

    mul-double/2addr v7, v5

    goto :goto_2

    :cond_2
    aget-wide v3, p2, p0

    long-to-double v3, v3

    aget-wide v7, p1, p0

    :goto_2
    div-double/2addr v3, v7

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v3

    aget-wide v7, p2, p0

    long-to-double v7, v7

    mul-double/2addr v7, v3

    add-double/2addr v0, v7

    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    mul-double/2addr v0, p0

    return-wide v0

    :cond_4
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0

    :cond_5
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method

.method public gDataSetsComparison([J[J)D
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    array-length v3, v1

    const/4 v4, 0x2

    if-lt v3, v4, :cond_5

    array-length v3, v1

    array-length v5, v2

    if-ne v3, v5, :cond_4

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    invoke-static/range {p2 .. p2}, Lorg/apache/commons/math3/util/MathArrays;->checkNonNegative([J)V

    array-length v3, v1

    new-array v3, v3, [J

    array-length v5, v1

    filled-new-array {v4, v5}, [I

    move-result-object v5

    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [[J

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move v9, v6

    move-wide v10, v7

    move-wide v12, v10

    :goto_0
    array-length v14, v1

    const/4 v15, 0x1

    if-ge v9, v14, :cond_2

    aget-wide v16, v1, v9

    cmp-long v14, v16, v7

    if-nez v14, :cond_1

    aget-wide v18, v2, v9

    cmp-long v14, v18, v7

    if-eqz v14, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OBSERVED_COUNTS_BOTTH_ZERO_FOR_ENTRY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    :cond_1
    :goto_1
    add-long v10, v10, v16

    aget-wide v18, v2, v9

    add-long v12, v12, v18

    add-long v16, v16, v18

    aput-wide v16, v3, v9

    aget-object v14, v5, v6

    aget-wide v16, v1, v9

    aput-wide v16, v14, v9

    aget-object v14, v5, v15

    aget-wide v15, v2, v9

    aput-wide v15, v14, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_2
    cmp-long v1, v10, v7

    if-eqz v1, :cond_3

    cmp-long v1, v12, v7

    if-eqz v1, :cond_3

    new-array v1, v4, [J

    aput-wide v10, v1, v6

    aput-wide v12, v1, v15

    long-to-double v6, v10

    long-to-double v8, v12

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v8

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/stat/inference/GTest;->a([J)D

    move-result-wide v1

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/stat/inference/GTest;->a([J)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-virtual {v0, v5}, Lorg/apache/commons/math3/stat/inference/GTest;->b([[J)D

    move-result-wide v3

    sub-double/2addr v1, v3

    mul-double/2addr v6, v1

    return-wide v6

    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/ZeroException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/ZeroException;-><init>()V

    throw v0

    :cond_4
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    array-length v2, v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public gTest([D[J)D
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
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/GTest;->g([D[J)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide p0

    sub-double/2addr v3, p0

    return-wide v3
.end method

.method public gTest([D[JD)Z
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
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/GTest;->gTest([D[J)D

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

.method public gTestDataSetsComparison([J[J)D
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
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/GTest;->gDataSetsComparison([J[J)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide p0

    sub-double/2addr v3, p0

    return-wide v3
.end method

.method public gTestDataSetsComparison([J[JD)Z
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
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/GTest;->gTestDataSetsComparison([J[J)D

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

.method public gTestIntrinsic([D[J)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    array-length v1, p1

    int-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    sub-double/2addr v1, v3

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;D)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/GTest;->g([D[J)D

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;->cumulativeProbability(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method public rootLogLikelihoodRatio(JJJJ)D
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [J

    const/4 v2, 0x0

    aput-wide p1, v1, v2

    const/4 v3, 0x1

    aput-wide p3, v1, v3

    new-array v0, v0, [J

    aput-wide p5, v0, v2

    aput-wide p7, v0, v3

    invoke-virtual {p0, v1, v0}, Lorg/apache/commons/math3/stat/inference/GTest;->gDataSetsComparison([J[J)D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    long-to-double v2, p1

    add-long/2addr p1, p3

    long-to-double p0, p1

    div-double/2addr v2, p0

    long-to-double p0, p5

    add-long/2addr p5, p7

    long-to-double p2, p5

    div-double/2addr p0, p2

    cmpg-double p0, v2, p0

    if-gez p0, :cond_0

    neg-double v0, v0

    :cond_0
    return-wide v0
.end method
