.class public Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final KS_SUM_CAUCHY_CRITERION:D = 1.0E-20

.field protected static final LARGE_SAMPLE_PRODUCT:I = 0x2710

.field protected static final MAXIMUM_PARTIAL_SUM_COUNT:I = 0x186a0

.field protected static final MONTE_CARLO_ITERATIONS:I = 0xf4240
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field protected static final PG_SUM_RELATIVE_ERROR:D = 1.0E-10

.field protected static final SMALL_SAMPLE_PRODUCT:I = 0xc8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# instance fields
.field public final a:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->a:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->a:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method

.method public static a(IIIIJZ)I
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p6, :cond_1

    int-to-long v2, p0

    int-to-long v4, p3

    mul-long/2addr v2, v4

    int-to-long p0, p1

    int-to-long p2, p2

    mul-long/2addr p0, p2

    sub-long/2addr v2, p0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide p0

    cmp-long p0, p0, p4

    if-gtz p0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    int-to-long v2, p0

    int-to-long v4, p3

    mul-long/2addr v2, v4

    int-to-long p0, p1

    int-to-long p2, p2

    mul-long/2addr p0, p2

    sub-long/2addr v2, p0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(J)J

    move-result-wide p0

    cmp-long p0, p0, p4

    if-gez p0, :cond_2

    goto :goto_1

    :cond_2
    move v0, v1

    :goto_1
    return v0
.end method

.method public static b(DIIZ)J
    .locals 4

    int-to-long v0, p2

    int-to-long p2, p3

    mul-long/2addr v0, p2

    const-wide p2, 0x3d719799812dea11L    # 1.0E-12

    sub-double v2, p0, p2

    long-to-double v0, v0

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v2

    double-to-long v2, v2

    add-double/2addr p0, p2

    mul-double/2addr p0, v0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->floor(D)D

    move-result-wide p0

    double-to-long p0, p0

    if-eqz p4, :cond_0

    cmp-long p0, p0, v2

    if-nez p0, :cond_0

    const-wide/16 p0, 0x1

    add-long/2addr v2, p0

    :cond_0
    return-wide v2
.end method

.method public static g([ZILorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 3

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([ZZ)V

    :goto_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    add-int/lit8 v0, p1, 0x1

    invoke-interface {p2, v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v1

    aget-boolean v2, p0, v1

    if-eqz v2, :cond_0

    move p1, v1

    :cond_0
    const/4 v1, 0x0

    aput-boolean v1, p0, p1

    move p1, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static h([D[D)V
    .locals 13

    const/4 v0, 0x2

    new-array v0, v0, [[D

    const/4 v1, 0x0

    aput-object p0, v0, v1

    const/4 v2, 0x1

    aput-object p1, v0, v2

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->concatenate([[D)[D

    move-result-object v0

    invoke-static {v0}, Lorg/apache/commons/math3/util/MathArrays;->unique([D)[D

    move-result-object v0

    array-length v3, v0

    array-length v4, p0

    array-length v5, p1

    add-int/2addr v4, v5

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    aget-wide v3, v0, v1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    move v7, v2

    :goto_0
    array-length v8, v0

    if-ge v7, v8, :cond_2

    aget-wide v8, v0, v7

    sub-double/2addr v3, v8

    cmpg-double v10, v3, v5

    if-gez v10, :cond_1

    move-wide v5, v3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    move-wide v3, v8

    goto :goto_0

    :cond_2
    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double v11, v5, v3

    new-instance v0, Lorg/apache/commons/math3/distribution/UniformRealDistribution;

    new-instance v8, Lorg/apache/commons/math3/random/JDKRandomGenerator;

    const/16 v3, 0x64

    invoke-direct {v8, v3}, Lorg/apache/commons/math3/random/JDKRandomGenerator;-><init>(I)V

    neg-double v9, v11

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/apache/commons/math3/distribution/UniformRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    :cond_3
    invoke-static {p0, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->l([DLorg/apache/commons/math3/distribution/RealDistribution;)V

    invoke-static {p1, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->l([DLorg/apache/commons/math3/distribution/RealDistribution;)V

    invoke-static {p0, p1}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->i([D[D)Z

    move-result v3

    add-int/2addr v1, v2

    if-eqz v3, :cond_4

    const/16 v4, 0x3e8

    if-lt v1, v4, :cond_3

    :cond_4
    if-nez v3, :cond_5

    return-void

    :cond_5
    new-instance p0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw p0
.end method

.method public static i([D[D)Z
    .locals 7

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, p0

    const/4 v4, 0x1

    if-ge v2, v3, :cond_1

    aget-wide v5, p0, v2

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move p0, v1

    :goto_1
    array-length v2, p1

    if-ge p0, v2, :cond_3

    aget-wide v2, p1, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    return v4

    :cond_2
    add-int/lit8 p0, p0, 0x1

    goto :goto_1

    :cond_3
    return v1
.end method

.method public static l([DLorg/apache/commons/math3/distribution/RealDistribution;)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_0

    aget-wide v1, p0, v0

    invoke-interface {p1}, Lorg/apache/commons/math3/distribution/RealDistribution;->sample()D

    move-result-wide v3

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static m(IIIIJZ)D
    .locals 17

    move/from16 v7, p3

    new-array v8, v7, [D

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v7, :cond_0

    const/4 v0, 0x0

    add-int/lit8 v10, v9, 0x1

    move v1, v10

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->a(IIIIJZ)I

    move-result v0

    int-to-double v0, v0

    aput-wide v0, v8, v9

    move v9, v10

    goto :goto_0

    :cond_0
    const/4 v9, 0x1

    const-wide/16 v0, 0x0

    move/from16 v10, p0

    move v11, v9

    :goto_1
    if-gt v11, v10, :cond_2

    const/4 v1, 0x0

    move v0, v11

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->a(IIIIJZ)I

    move-result v0

    int-to-double v0, v0

    move/from16 v14, p1

    move-wide v12, v0

    move v15, v9

    :goto_2
    if-gt v15, v14, :cond_1

    add-int/lit8 v16, v15, -0x1

    move v0, v11

    move v1, v15

    move/from16 v2, p2

    move/from16 v3, p3

    move-wide/from16 v4, p4

    move/from16 v6, p6

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->a(IIIIJZ)I

    move-result v0

    int-to-double v0, v0

    aget-wide v2, v8, v16

    add-double/2addr v12, v2

    mul-double/2addr v12, v0

    aput-wide v12, v8, v16

    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v11, v11, 0x1

    move-wide v0, v12

    goto :goto_1

    :cond_2
    return-wide v0
.end method


# virtual methods
.method public approximateP(DII)D
    .locals 6

    int-to-double v0, p4

    int-to-double p3, p3

    mul-double v2, v0, p3

    add-double/2addr v0, p3

    div-double/2addr v2, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide p3

    mul-double v1, p1, p3

    const-wide v3, 0x3bc79ca10c924223L    # 1.0E-20

    const v5, 0x186a0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->ksSum(DDI)D

    move-result-wide p0

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p2, p0

    return-wide p2
.end method

.method public bootstrap([D[DI)D
    .locals 1

    const/4 v0, 0x1

    .line 11
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->bootstrap([D[DIZ)D

    move-result-wide p0

    return-wide p0
.end method

.method public bootstrap([D[DIZ)D
    .locals 8

    .line 1
    array-length v0, p1

    .line 2
    array-length v1, p2

    add-int v2, v0, v1

    .line 3
    new-array v2, v2, [D

    const/4 v3, 0x0

    .line 4
    invoke-static {p1, v3, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    invoke-static {p2, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    new-instance v4, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;

    iget-object v5, p0, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->a:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-direct {v4, v5, v2}, Lorg/apache/commons/math3/distribution/EnumeratedRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;[D)V

    .line 7
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->j([D[D)J

    move-result-wide p1

    move v2, v3

    move v5, v2

    :goto_0
    if-ge v3, p3, :cond_2

    .line 8
    invoke-virtual {v4, v0}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->sample(I)[D

    move-result-object v6

    .line 9
    invoke-virtual {v4, v1}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->sample(I)[D

    move-result-object v7

    .line 10
    invoke-virtual {p0, v6, v7}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->j([D[D)J

    move-result-wide v6

    cmp-long v6, v6, p1

    if-lez v6, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    if-nez v6, :cond_1

    add-int/lit8 v5, v5, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz p4, :cond_3

    goto :goto_2

    :cond_3
    add-int/2addr v2, v5

    :goto_2
    int-to-double p0, v2

    int-to-double p2, p3

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public final c([D)V
    .locals 2

    if-eqz p1, :cond_1

    array-length p0, p1

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/InsufficientDataException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INSUFFICIENT_OBSERVED_POINTS_IN_SAMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    array-length p1, p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p1, v0}, [Ljava/lang/Object;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lorg/apache/commons/math3/exception/InsufficientDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NULL_NOT_ALLOWED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method

.method public cdf(DI)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->cdf(DIZ)D

    move-result-wide p0

    return-wide p0
.end method

.method public cdf(DIZ)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    int-to-double v0, p3

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    div-double v4, v2, v0

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v6, v4

    cmpg-double v8, p1, v6

    if-gtz v8, :cond_0

    const-wide/16 p0, 0x0

    return-wide p0

    :cond_0
    cmpg-double v6, v6, p1

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    if-gez v6, :cond_2

    cmpg-double v6, p1, v4

    if-gtz v6, :cond_2

    mul-double/2addr p1, v7

    sub-double/2addr p1, v4

    const/4 p0, 0x1

    :goto_0
    if-gt p0, p3, :cond_1

    int-to-double v0, p0

    mul-double/2addr v0, p1

    mul-double/2addr v2, v0

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-wide v2

    :cond_2
    sub-double v4, v2, v4

    cmpg-double v4, v4, p1

    if-gtz v4, :cond_3

    cmpg-double v4, p1, v2

    if-gez v4, :cond_3

    sub-double p0, v2, p1

    .line 2
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    mul-double/2addr p0, v7

    sub-double/2addr v2, p0

    return-wide v2

    :cond_3
    cmpg-double v0, v2, p1

    if-gtz v0, :cond_4

    return-wide v2

    :cond_4
    if-eqz p4, :cond_5

    .line 3
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->f(DI)D

    move-result-wide p0

    return-wide p0

    :cond_5
    const/16 p4, 0x8c

    if-gt p3, p4, :cond_6

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->n(DI)D

    move-result-wide p0

    return-wide p0

    .line 5
    :cond_6
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->pelzGood(DI)D

    move-result-wide p0

    return-wide p0
.end method

.method public cdfExact(DI)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->cdf(DIZ)D

    move-result-wide p0

    return-wide p0
.end method

.method public final d(DI)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DI)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/fraction/FractionConversionException;
        }
    .end annotation

    int-to-double v0, p3

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    mul-int/lit8 p1, p0, 0x2

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    int-to-double v2, p0

    sub-double v0, v2, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, v0, v2

    const/4 p3, 0x0

    if-gez p0, :cond_9

    :try_start_0
    new-instance p0, Lorg/apache/commons/math3/fraction/BigFraction;

    const-wide v7, 0x3bc79ca10c924223L    # 1.0E-20

    const/16 v9, 0x2710

    move-object v4, p0

    move-wide v5, v0

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V
    :try_end_0
    .catch Lorg/apache/commons/math3/fraction/FractionConversionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :try_start_1
    new-instance p0, Lorg/apache/commons/math3/fraction/BigFraction;

    const-wide v7, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const/16 v9, 0x2710

    move-object v4, p0

    move-wide v5, v0

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V
    :try_end_1
    .catch Lorg/apache/commons/math3/fraction/FractionConversionException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    new-instance p0, Lorg/apache/commons/math3/fraction/BigFraction;

    const-wide v7, 0x3ee4f8b588e368f1L    # 1.0E-5

    const/16 v9, 0x2710

    move-object v4, p0

    move-wide v5, v0

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/math3/fraction/BigFraction;-><init>(DDI)V

    :goto_0
    filled-new-array {p1, p1}, [I

    move-result-object v0

    const-class v1, Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/fraction/BigFraction;

    move v1, p3

    :goto_1
    if-ge v1, p1, :cond_2

    move v2, p3

    :goto_2
    if-ge v2, p1, :cond_1

    sub-int v3, v1, v2

    add-int/2addr v3, p2

    if-gez v3, :cond_0

    aget-object v3, v0, v1

    sget-object v4, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v4, v3, v2

    goto :goto_3

    :cond_0
    aget-object v3, v0, v1

    sget-object v4, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object v4, v3, v2

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    new-array v1, p1, [Lorg/apache/commons/math3/fraction/BigFraction;

    aput-object p0, v1, p3

    move v2, p2

    :goto_4
    if-ge v2, p1, :cond_3

    add-int/lit8 v3, v2, -0x1

    aget-object v3, v1, v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_3
    move v2, p3

    :goto_5
    if-ge v2, p1, :cond_4

    aget-object v3, v0, v2

    aget-object v4, v3, p3

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aput-object v4, v3, p3

    add-int/lit8 v3, p1, -0x1

    aget-object v3, v0, v3

    aget-object v4, v3, v2

    sub-int v5, p1, v2

    sub-int/2addr v5, p2

    aget-object v5, v1, v5

    invoke-virtual {v4, v5}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_4
    sget-object v1, Lorg/apache/commons/math3/fraction/BigFraction;->ONE_HALF:Lorg/apache/commons/math3/fraction/BigFraction;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/fraction/BigFraction;->compareTo(Lorg/apache/commons/math3/fraction/BigFraction;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, p2, :cond_5

    add-int/lit8 v1, p1, -0x1

    aget-object v1, v0, v1

    aget-object v3, v1, p3

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p0

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/fraction/BigFraction;->subtract(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->pow(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p0

    invoke-virtual {v3, p0}, Lorg/apache/commons/math3/fraction/BigFraction;->add(Lorg/apache/commons/math3/fraction/BigFraction;)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p0

    aput-object p0, v1, p3

    :cond_5
    move p0, p3

    :goto_6
    if-ge p0, p1, :cond_8

    move v1, p3

    :goto_7
    add-int/lit8 v3, p0, 0x1

    if-ge v1, v3, :cond_7

    sub-int v3, p0, v1

    add-int/2addr v3, p2

    if-lez v3, :cond_6

    move v4, v2

    :goto_8
    if-gt v4, v3, :cond_6

    aget-object v5, v0, p0

    aget-object v6, v5, v1

    invoke-virtual {v6, v4}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v6

    aput-object v6, v5, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    :cond_7
    move p0, v3

    goto :goto_6

    :cond_8
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-static {}, Lorg/apache/commons/math3/fraction/BigFractionField;->getInstance()Lorg/apache/commons/math3/fraction/BigFractionField;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;)V

    return-object p0

    :cond_9
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0
.end method

.method public final e(DI)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    int-to-double v0, p3

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p0

    double-to-int p0, p0

    mul-int/lit8 p1, p0, 0x2

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    int-to-double v2, p0

    sub-double/2addr v2, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double p0, v2, v0

    const/4 p3, 0x0

    if-gez p0, :cond_9

    filled-new-array {p1, p1}, [I

    move-result-object p0

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, p0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[D

    move v4, p3

    :goto_0
    if-ge v4, p1, :cond_2

    move v5, p3

    :goto_1
    if-ge v5, p1, :cond_1

    sub-int v6, v4, v5

    add-int/2addr v6, p2

    if-gez v6, :cond_0

    aget-object v6, p0, v4

    const-wide/16 v7, 0x0

    aput-wide v7, v6, v5

    goto :goto_2

    :cond_0
    aget-object v6, p0, v4

    aput-wide v0, v6, v5

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    new-array v4, p1, [D

    aput-wide v2, v4, p3

    move v5, p2

    :goto_3
    if-ge v5, p1, :cond_3

    add-int/lit8 v6, v5, -0x1

    aget-wide v6, v4, v6

    mul-double/2addr v6, v2

    aput-wide v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    move v5, p3

    :goto_4
    if-ge v5, p1, :cond_4

    aget-object v6, p0, v5

    aget-wide v7, v6, p3

    aget-wide v9, v4, v5

    sub-double/2addr v7, v9

    aput-wide v7, v6, p3

    add-int/lit8 v6, p1, -0x1

    aget-object v6, p0, v6

    aget-wide v7, v6, v5

    sub-int v9, p1, v5

    sub-int/2addr v9, p2

    aget-wide v9, v4, v9

    sub-double/2addr v7, v9

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_4
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Double;->compare(DD)I

    move-result v4

    if-lez v4, :cond_5

    add-int/lit8 v4, p1, -0x1

    aget-object v4, p0, v4

    aget-wide v5, v4, p3

    const-wide/high16 v7, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v7

    sub-double/2addr v2, v0

    invoke-static {v2, v3, p1}, Lorg/apache/commons/math3/util/FastMath;->pow(DI)D

    move-result-wide v0

    add-double/2addr v5, v0

    aput-wide v5, v4, p3

    :cond_5
    move v0, p3

    :goto_5
    if-ge v0, p1, :cond_8

    move v1, p3

    :goto_6
    add-int/lit8 v2, v0, 0x1

    if-ge v1, v2, :cond_7

    sub-int v2, v0, v1

    add-int/2addr v2, p2

    if-lez v2, :cond_6

    const/4 v3, 0x2

    :goto_7
    if-gt v3, v2, :cond_6

    aget-object v4, p0, v0

    aget-wide v5, v4, v1

    int-to-double v7, v3

    div-double/2addr v5, v7

    aput-wide v5, v4, v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_7
    move v0, v2

    goto :goto_5

    :cond_8
    invoke-static {p0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0

    :cond_9
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0
.end method

.method public exactP(DIIZ)D
    .locals 7

    invoke-static {p1, p2, p4, p3, p5}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->b(DIIZ)J

    move-result-wide v4

    move v0, p4

    move v1, p3

    move v2, p4

    move v3, p3

    move v6, p5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->m(IIIIJZ)D

    move-result-wide p0

    add-int/2addr p3, p4

    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/CombinatoricsUtils;->binomialCoefficientDouble(II)D

    move-result-wide p2

    div-double/2addr p0, p2

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p2, p0

    return-wide p2
.end method

.method public final f(DI)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    int-to-double v0, p3

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->d(DI)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/apache/commons/math3/linear/FieldMatrix;->power(I)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object p0

    const/4 p1, 0x1

    sub-int/2addr v0, p1

    invoke-interface {p0, v0, v0}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/fraction/BigFraction;

    :goto_0
    if-gt p1, p3, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/fraction/BigFraction;->multiply(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p0

    invoke-virtual {p0, p3}, Lorg/apache/commons/math3/fraction/BigFraction;->divide(I)Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object p0

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    const/16 p1, 0x14

    const/4 p2, 0x4

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/fraction/BigFraction;->bigDecimalValue(II)Ljava/math/BigDecimal;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide p0

    return-wide p0
.end method

.method public final j([D[D)J
    .locals 11

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->c([D)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->c([D)V

    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object p0

    invoke-static {p2}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object p1

    invoke-static {p0}, Ljava/util/Arrays;->sort([D)V

    invoke-static {p1}, Ljava/util/Arrays;->sort([D)V

    array-length p2, p0

    array-length v0, p1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move-wide v5, v2

    move v2, v1

    move-wide v3, v5

    :cond_0
    aget-wide v7, p0, v1

    aget-wide v9, p1, v2

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Double;->compare(DD)I

    move-result v7

    if-gtz v7, :cond_1

    aget-wide v7, p0, v1

    goto :goto_0

    :cond_1
    aget-wide v7, p1, v2

    :goto_0
    if-ge v1, p2, :cond_2

    aget-wide v9, p0, v1

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Double;->compare(DD)I

    move-result v9

    if-nez v9, :cond_2

    add-int/lit8 v1, v1, 0x1

    int-to-long v9, v0

    add-long/2addr v3, v9

    goto :goto_0

    :cond_2
    :goto_1
    if-ge v2, v0, :cond_3

    aget-wide v9, p1, v2

    invoke-static {v9, v10, v7, v8}, Ljava/lang/Double;->compare(DD)I

    move-result v9

    if-nez v9, :cond_3

    add-int/lit8 v2, v2, 0x1

    int-to-long v9, p2

    sub-long/2addr v3, v9

    goto :goto_1

    :cond_3
    cmp-long v7, v3, v5

    if-lez v7, :cond_4

    move-wide v5, v3

    goto :goto_2

    :cond_4
    neg-long v7, v3

    cmp-long v9, v7, v5

    if-lez v9, :cond_5

    move-wide v5, v7

    :cond_5
    :goto_2
    if-ge v1, p2, :cond_6

    if-lt v2, v0, :cond_0

    :cond_6
    return-wide v5
.end method

.method public final k(JIII)D
    .locals 10

    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v0

    invoke-static {p3, p4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result p3

    add-int p4, v0, p3

    new-array v1, p4, [Z

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v3, p5, :cond_3

    iget-object v5, p0, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->a:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-static {v1, v0, v5}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->g([ZILorg/apache/commons/math3/random/RandomGenerator;)V

    const-wide/16 v5, 0x0

    move v7, v2

    :goto_1
    if-ge v7, p4, :cond_2

    aget-boolean v8, v1, v7

    if-eqz v8, :cond_0

    int-to-long v8, p3

    add-long/2addr v5, v8

    cmp-long v8, v5, p1

    if-ltz v8, :cond_1

    goto :goto_2

    :cond_0
    int-to-long v8, v0

    sub-long/2addr v5, v8

    neg-long v8, p1

    cmp-long v8, v5, v8

    if-gtz v8, :cond_1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    int-to-double p0, v4

    int-to-double p2, p5

    div-double/2addr p0, p2

    return-wide p0
.end method

.method public kolmogorovSmirnovStatistic(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D
    .locals 12

    .line 1
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->c([D)V

    .line 2
    array-length p0, p2

    int-to-double v0, p0

    .line 3
    new-array v2, p0, [D

    const/4 v3, 0x0

    .line 4
    invoke-static {p2, v3, v2, v3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    invoke-static {v2}, Ljava/util/Arrays;->sort([D)V

    const-wide/16 v3, 0x0

    const/4 p2, 0x1

    :goto_0
    if-gt p2, p0, :cond_1

    add-int/lit8 v5, p2, -0x1

    .line 6
    aget-wide v6, v2, v5

    invoke-interface {p1, v6, v7}, Lorg/apache/commons/math3/distribution/RealDistribution;->cumulativeProbability(D)D

    move-result-wide v6

    int-to-double v8, v5

    div-double/2addr v8, v0

    sub-double v8, v6, v8

    int-to-double v10, p2

    div-double/2addr v10, v0

    sub-double/2addr v10, v6

    .line 7
    invoke-static {v8, v9, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v5

    cmpl-double v7, v5, v3

    if-lez v7, :cond_0

    move-wide v3, v5

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-wide v3
.end method

.method public kolmogorovSmirnovStatistic([D[D)D
    .locals 4

    .line 8
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->j([D[D)J

    move-result-wide v0

    long-to-double v0, v0

    array-length p0, p1

    int-to-long p0, p0

    array-length p2, p2

    int-to-long v2, p2

    mul-long/2addr p0, v2

    long-to-double p0, p0

    div-double/2addr v0, p0

    return-wide v0
.end method

.method public kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D
    .locals 1

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[DZ)D

    move-result-wide p0

    return-wide p0
.end method

.method public kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[DZ)D
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D

    move-result-wide v0

    array-length p1, p2

    invoke-virtual {p0, v0, v1, p1, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->cdf(DIZ)D

    move-result-wide p0

    const-wide/high16 p2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p2, p0

    return-wide p2
.end method

.method public kolmogorovSmirnovTest([D[D)D
    .locals 1

    const/4 v0, 0x1

    .line 9
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovTest([D[DZ)D

    move-result-wide p0

    return-wide p0
.end method

.method public kolmogorovSmirnovTest([D[DZ)D
    .locals 9

    .line 2
    array-length v0, p1

    int-to-long v0, v0

    array-length v2, p2

    int-to-long v2, v2

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x2710

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    .line 3
    invoke-static {p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->i([D[D)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v1

    .line 5
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([D)[D

    move-result-object v2

    .line 6
    invoke-static {v1, v2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->h([D[D)V

    goto :goto_0

    :cond_0
    move-object v1, p1

    move-object v2, p2

    :goto_0
    if-gez v0, :cond_1

    .line 7
    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic([D[D)D

    move-result-wide v4

    array-length v6, p1

    array-length v7, p2

    move-object v3, p0

    move v8, p3

    invoke-virtual/range {v3 .. v8}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->exactP(DIIZ)D

    move-result-wide p0

    return-wide p0

    .line 8
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic([D[D)D

    move-result-wide v0

    array-length p1, p1

    array-length p2, p2

    invoke-virtual {p0, v0, v1, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->approximateP(DII)D

    move-result-wide p0

    return-wide p0
.end method

.method public kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[DD)Z
    .locals 4

    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const/4 v3, 0x0

    if-lez v0, :cond_1

    cmpl-double v0, p3, v1

    if-gtz v0, :cond_1

    .line 11
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D

    move-result-wide p0

    cmpg-double p0, p0, p3

    if-gez p0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

    .line 12
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

.method public ksSum(DDI)D
    .locals 15

    move/from16 v0, p5

    const-wide/16 v1, 0x0

    cmpl-double v3, p1, v1

    if-nez v3, :cond_0

    return-wide v1

    :cond_0
    const-wide/high16 v1, -0x4000000000000000L    # -2.0

    mul-double v1, v1, p1

    mul-double v1, v1, p1

    const-wide/16 v3, 0x1

    const/4 v5, -0x1

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    move-wide v10, v3

    move v12, v5

    :goto_0
    cmpl-double v8, v8, p3

    if-lez v8, :cond_1

    int-to-long v8, v0

    cmp-long v8, v10, v8

    if-gez v8, :cond_1

    long-to-double v8, v10

    mul-double v13, v1, v8

    mul-double/2addr v13, v8

    invoke-static {v13, v14}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v8

    int-to-double v13, v12

    mul-double/2addr v13, v8

    add-double/2addr v6, v13

    mul-int/2addr v12, v5

    add-long/2addr v10, v3

    goto :goto_0

    :cond_1
    int-to-long v1, v0

    cmp-long v1, v10, v1

    if-eqz v1, :cond_2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, v0

    return-wide v6

    :cond_2
    new-instance v1, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v1
.end method

.method public monteCarloP(DIIZI)D
    .locals 6

    invoke-static {p1, p2, p3, p4, p5}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->b(DIIZ)J

    move-result-wide v1

    move-object v0, p0

    move v3, p3

    move v4, p4

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->k(JIII)D

    move-result-wide p0

    return-wide p0
.end method

.method public final n(DI)D
    .locals 6

    int-to-double v0, p3

    mul-double v2, v0, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->e(DI)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    invoke-interface {p0, p3}, Lorg/apache/commons/math3/linear/RealMatrix;->power(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    const/4 p1, 0x1

    sub-int/2addr v2, p1

    invoke-interface {p0, v2, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v2

    :goto_0
    if-gt p1, p3, :cond_0

    int-to-double v4, p1

    div-double/2addr v4, v0

    mul-double/2addr v2, v4

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-wide v2
.end method

.method public pelzGood(DI)D
    .locals 50

    move/from16 v0, p3

    int-to-double v0, v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    mul-double v4, p1, v2

    mul-double v6, p1, p1

    mul-double/2addr v6, v0

    mul-double v8, v6, v6

    mul-double v10, v8, v6

    mul-double v12, v8, v8

    const-wide/high16 v14, 0x4020000000000000L    # 8.0

    mul-double/2addr v14, v6

    const-wide v16, 0x4023bd3cc9be45deL    # 9.869604401089358

    div-double v14, v16, v14

    const-wide/16 v18, 0x0

    const/16 v20, 0x1

    move-wide/from16 p0, v12

    move-wide/from16 v21, v18

    move/from16 v12, v20

    :goto_0
    const-wide v23, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    const v13, 0x186a0

    if-ge v12, v13, :cond_1

    mul-int/lit8 v25, v12, 0x2

    add-int/lit8 v13, v25, -0x1

    move-wide/from16 v26, v0

    int-to-double v0, v13

    move-wide/from16 v28, v10

    neg-double v10, v14

    mul-double/2addr v10, v0

    mul-double/2addr v10, v0

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v0

    add-double v21, v21, v0

    mul-double v10, v21, v23

    cmpg-double v0, v0, v10

    if-gtz v0, :cond_0

    const v0, 0x186a0

    goto :goto_1

    :cond_0
    add-int/lit8 v12, v12, 0x1

    move-wide/from16 v0, v26

    move-wide/from16 v10, v28

    goto :goto_0

    :cond_1
    move-wide/from16 v26, v0

    move-wide/from16 v28, v10

    move v0, v13

    :goto_1
    if-eq v12, v0, :cond_11

    const-wide v10, 0x401921fb54442d18L    # 6.283185307179586

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    mul-double v21, v21, v10

    div-double v21, v21, v4

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v12, v6, v10

    move-wide/from16 v30, v18

    const/4 v14, 0x0

    :goto_2
    const-wide/high16 v32, 0x3fe0000000000000L    # 0.5

    const-wide v34, -0x3fdc42c33641ba22L    # -9.869604401089358

    if-ge v14, v0, :cond_3

    int-to-double v10, v14

    add-double v10, v10, v32

    mul-double/2addr v10, v10

    mul-double v38, v10, v16

    sub-double v38, v38, v6

    mul-double v10, v10, v34

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v10

    mul-double v38, v38, v10

    add-double v30, v30, v38

    invoke-static/range {v38 .. v39}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v38

    mul-double v38, v38, v23

    cmpg-double v0, v10, v38

    if-gez v0, :cond_2

    const v0, 0x186a0

    goto :goto_3

    :cond_2
    add-int/lit8 v14, v14, 0x1

    const v0, 0x186a0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    goto :goto_2

    :cond_3
    :goto_3
    if-eq v14, v0, :cond_10

    const-wide v10, 0x3ff921fb54442d18L    # 1.5707963267948966

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v10

    mul-double v30, v30, v10

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    mul-double/2addr v14, v8

    mul-double/2addr v14, v2

    div-double v30, v30, v14

    add-double v21, v21, v30

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v14, v8

    const-wide/high16 v30, 0x4018000000000000L    # 6.0

    mul-double v30, v30, v28

    const-wide/high16 v36, 0x4014000000000000L    # 5.0

    mul-double v38, v6, v36

    move-wide/from16 v40, v18

    const/4 v0, 0x0

    :goto_4
    const-wide v42, 0x40585a2e8c290825L    # 97.40909103400243

    const v1, 0x186a0

    move-wide/from16 v44, v2

    if-ge v0, v1, :cond_5

    int-to-double v1, v0

    add-double v1, v1, v32

    mul-double/2addr v1, v1

    add-double v46, v30, v14

    sub-double v48, v14, v38

    mul-double v48, v48, v16

    mul-double v48, v48, v1

    add-double v46, v46, v48

    const-wide/high16 v48, 0x3ff0000000000000L    # 1.0

    sub-double v48, v48, v12

    mul-double v48, v48, v42

    mul-double v48, v48, v1

    mul-double v48, v48, v1

    add-double v46, v46, v48

    mul-double v1, v1, v34

    div-double/2addr v1, v12

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v1

    mul-double v46, v46, v1

    add-double v40, v40, v46

    invoke-static/range {v46 .. v47}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    invoke-static/range {v40 .. v41}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v46

    mul-double v46, v46, v23

    cmpg-double v1, v1, v46

    if-gez v1, :cond_4

    const v1, 0x186a0

    goto :goto_5

    :cond_4
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v2, v44

    goto :goto_4

    :cond_5
    :goto_5
    if-eq v0, v1, :cond_f

    move-wide/from16 v2, v18

    move/from16 v0, v20

    :goto_6
    if-ge v0, v1, :cond_7

    mul-int v1, v0, v0

    int-to-double v14, v1

    mul-double v30, v14, v16

    mul-double v14, v14, v34

    div-double/2addr v14, v12

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v14

    mul-double v30, v30, v14

    add-double v2, v2, v30

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v30

    mul-double v30, v30, v23

    cmpg-double v1, v14, v30

    if-gez v1, :cond_6

    const v1, 0x186a0

    goto :goto_7

    :cond_6
    add-int/lit8 v0, v0, 0x1

    const v1, 0x186a0

    goto :goto_6

    :cond_7
    :goto_7
    if-eq v0, v1, :cond_e

    div-double v0, v10, v26

    const-wide/high16 v14, 0x4042000000000000L    # 36.0

    mul-double/2addr v14, v6

    mul-double/2addr v14, v6

    mul-double/2addr v14, v6

    mul-double/2addr v14, v4

    div-double v40, v40, v14

    const-wide/high16 v14, 0x4032000000000000L    # 18.0

    mul-double/2addr v14, v6

    mul-double/2addr v14, v4

    div-double/2addr v2, v14

    sub-double v40, v40, v2

    mul-double v0, v0, v40

    add-double v21, v21, v0

    move-wide/from16 v2, v18

    const v0, 0x186a0

    const/4 v1, 0x0

    :goto_8
    if-ge v1, v0, :cond_9

    int-to-double v4, v1

    add-double v4, v4, v32

    mul-double/2addr v4, v4

    mul-double v14, v4, v4

    mul-double v30, v14, v4

    const-wide v38, 0x408e0b1d11856df6L    # 961.3891935753043

    mul-double v30, v30, v38

    const-wide/high16 v38, 0x403e000000000000L    # 30.0

    mul-double v40, v6, v38

    sub-double v40, v36, v40

    mul-double v30, v30, v40

    mul-double v14, v14, v42

    const-wide/high16 v40, -0x3fb2000000000000L    # -60.0

    mul-double v40, v40, v6

    const-wide v46, 0x406a800000000000L    # 212.0

    mul-double v46, v46, v8

    add-double v40, v40, v46

    mul-double v14, v14, v40

    add-double v30, v30, v14

    mul-double v14, v4, v16

    const-wide v40, 0x4060e00000000000L    # 135.0

    mul-double v40, v40, v8

    const-wide/high16 v46, 0x4058000000000000L    # 96.0

    mul-double v46, v46, v28

    sub-double v40, v40, v46

    mul-double v14, v14, v40

    add-double v30, v30, v14

    mul-double v14, v28, v38

    sub-double v30, v30, v14

    const-wide v14, 0x4056800000000000L    # 90.0

    move-wide/from16 v38, p0

    mul-double v14, v14, v38

    sub-double v30, v30, v14

    mul-double v4, v4, v34

    div-double/2addr v4, v12

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v4

    mul-double v30, v30, v4

    add-double v2, v2, v30

    invoke-static/range {v30 .. v31}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    mul-double v14, v14, v23

    cmpg-double v0, v4, v14

    if-gez v0, :cond_8

    const v0, 0x186a0

    goto :goto_9

    :cond_8
    add-int/lit8 v1, v1, 0x1

    move-wide/from16 p0, v38

    const v0, 0x186a0

    goto :goto_8

    :cond_9
    :goto_9
    if-eq v1, v0, :cond_d

    move/from16 v1, v20

    :goto_a
    if-ge v1, v0, :cond_b

    mul-int v0, v1, v1

    int-to-double v4, v0

    mul-double v14, v4, v4

    const-wide v16, -0x3fa7a5d173d6f7dbL    # -97.40909103400243

    mul-double v14, v14, v16

    const-wide v16, 0x403d9bdb2e9d68cdL    # 29.608813203268074

    mul-double v16, v16, v4

    mul-double v16, v16, v6

    add-double v14, v14, v16

    mul-double v4, v4, v34

    div-double/2addr v4, v12

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide v4

    mul-double/2addr v14, v4

    add-double v18, v18, v14

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    mul-double v14, v14, v23

    cmpg-double v0, v4, v14

    if-gez v0, :cond_a

    const v0, 0x186a0

    goto :goto_b

    :cond_a
    add-int/lit8 v1, v1, 0x1

    const v0, 0x186a0

    goto :goto_a

    :cond_b
    :goto_b
    if-eq v1, v0, :cond_c

    mul-double v0, v44, v26

    div-double/2addr v10, v0

    const-wide v0, 0x40a9500000000000L    # 3240.0

    mul-double v0, v0, v28

    mul-double/2addr v0, v8

    div-double/2addr v2, v0

    const-wide/high16 v0, 0x405b000000000000L    # 108.0

    mul-double v0, v0, v28

    div-double v18, v18, v0

    add-double v2, v2, v18

    mul-double/2addr v10, v2

    add-double v21, v21, v10

    return-wide v21

    :cond_c
    new-instance v0, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    const v1, 0x186a0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v0

    :cond_d
    move v1, v0

    new-instance v0, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v0

    :cond_e
    new-instance v0, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v0

    :cond_f
    new-instance v0, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v0

    :cond_10
    move v1, v0

    new-instance v0, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v0

    :cond_11
    move v1, v0

    new-instance v0, Lorg/apache/commons/math3/exception/TooManyIterationsException;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/TooManyIterationsException;-><init>(Ljava/lang/Number;)V

    throw v0
.end method
