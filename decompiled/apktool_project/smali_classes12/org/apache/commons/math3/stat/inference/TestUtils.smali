.class public Lorg/apache/commons/math3/stat/inference/TestUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lorg/apache/commons/math3/stat/inference/TTest;

.field public static final b:Lorg/apache/commons/math3/stat/inference/ChiSquareTest;

.field public static final c:Lorg/apache/commons/math3/stat/inference/OneWayAnova;

.field public static final d:Lorg/apache/commons/math3/stat/inference/GTest;

.field public static final e:Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/stat/inference/TTest;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/inference/TTest;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->a:Lorg/apache/commons/math3/stat/inference/TTest;

    new-instance v0, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->b:Lorg/apache/commons/math3/stat/inference/ChiSquareTest;

    new-instance v0, Lorg/apache/commons/math3/stat/inference/OneWayAnova;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/inference/OneWayAnova;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->c:Lorg/apache/commons/math3/stat/inference/OneWayAnova;

    new-instance v0, Lorg/apache/commons/math3/stat/inference/GTest;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/inference/GTest;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->d:Lorg/apache/commons/math3/stat/inference/GTest;

    new-instance v0, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;

    invoke-direct {v0}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->e:Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static approximateP(DII)D
    .locals 1

    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->e:Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->approximateP(DII)D

    move-result-wide p0

    return-wide p0
.end method

.method public static chiSquare([D[J)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->b:Lorg/apache/commons/math3/stat/inference/ChiSquareTest;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquare([D[J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static chiSquare([[J)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->b:Lorg/apache/commons/math3/stat/inference/ChiSquareTest;

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquare([[J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static chiSquareDataSetsComparison([J[J)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->b:Lorg/apache/commons/math3/stat/inference/ChiSquareTest;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquareDataSetsComparison([J[J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static chiSquareTest([D[J)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->b:Lorg/apache/commons/math3/stat/inference/ChiSquareTest;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquareTest([D[J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static chiSquareTest([[J)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 4
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->b:Lorg/apache/commons/math3/stat/inference/ChiSquareTest;

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquareTest([[J)D

    move-result-wide v0

    return-wide v0
.end method

.method public static chiSquareTest([D[JD)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->b:Lorg/apache/commons/math3/stat/inference/ChiSquareTest;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquareTest([D[JD)Z

    move-result p0

    return p0
.end method

.method public static chiSquareTest([[JD)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 3
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->b:Lorg/apache/commons/math3/stat/inference/ChiSquareTest;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquareTest([[JD)Z

    move-result p0

    return p0
.end method

.method public static chiSquareTestDataSetsComparison([J[J)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->b:Lorg/apache/commons/math3/stat/inference/ChiSquareTest;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquareTestDataSetsComparison([J[J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static chiSquareTestDataSetsComparison([J[JD)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->b:Lorg/apache/commons/math3/stat/inference/ChiSquareTest;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/ChiSquareTest;->chiSquareTestDataSetsComparison([J[JD)Z

    move-result p0

    return p0
.end method

.method public static exactP(DIIZ)D
    .locals 6

    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->e:Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;

    move-wide v1, p0

    move v3, p3

    move v4, p2

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->exactP(DIIZ)D

    move-result-wide p0

    return-wide p0
.end method

.method public static g([D[J)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->d:Lorg/apache/commons/math3/stat/inference/GTest;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/stat/inference/GTest;->g([D[J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static gDataSetsComparison([J[J)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->d:Lorg/apache/commons/math3/stat/inference/GTest;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/stat/inference/GTest;->gDataSetsComparison([J[J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static gTest([D[J)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->d:Lorg/apache/commons/math3/stat/inference/GTest;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/stat/inference/GTest;->gTest([D[J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static gTest([D[JD)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->d:Lorg/apache/commons/math3/stat/inference/GTest;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/GTest;->gTest([D[JD)Z

    move-result p0

    return p0
.end method

.method public static gTestDataSetsComparison([J[J)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->d:Lorg/apache/commons/math3/stat/inference/GTest;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/stat/inference/GTest;->gTestDataSetsComparison([J[J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static gTestDataSetsComparison([J[JD)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->d:Lorg/apache/commons/math3/stat/inference/GTest;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/GTest;->gTestDataSetsComparison([J[JD)Z

    move-result p0

    return p0
.end method

.method public static gTestIntrinsic([D[J)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->d:Lorg/apache/commons/math3/stat/inference/GTest;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/stat/inference/GTest;->gTestIntrinsic([D[J)D

    move-result-wide p0

    return-wide p0
.end method

.method public static homoscedasticT(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->a:Lorg/apache/commons/math3/stat/inference/TTest;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticT(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static homoscedasticT([D[D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->a:Lorg/apache/commons/math3/stat/inference/TTest;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticT([D[D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static homoscedasticTTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 3
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->a:Lorg/apache/commons/math3/stat/inference/TTest;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticTTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static homoscedasticTTest([D[D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->a:Lorg/apache/commons/math3/stat/inference/TTest;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticTTest([D[D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static homoscedasticTTest([D[DD)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->a:Lorg/apache/commons/math3/stat/inference/TTest;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->homoscedasticTTest([D[DD)Z

    move-result p0

    return p0
.end method

.method public static kolmogorovSmirnovStatistic(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/InsufficientDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->e:Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static kolmogorovSmirnovStatistic([D[D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/InsufficientDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->e:Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovStatistic([D[D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/InsufficientDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->e:Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[DZ)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/InsufficientDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->e:Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[DZ)D

    move-result-wide p0

    return-wide p0
.end method

.method public static kolmogorovSmirnovTest([D[D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/InsufficientDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 4
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->e:Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovTest([D[D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static kolmogorovSmirnovTest([D[DZ)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/InsufficientDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 5
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->e:Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovTest([D[DZ)D

    move-result-wide p0

    return-wide p0
.end method

.method public static kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[DD)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/InsufficientDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 3
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->e:Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->kolmogorovSmirnovTest(Lorg/apache/commons/math3/distribution/RealDistribution;[DD)Z

    move-result p0

    return p0
.end method

.method public static monteCarloP(DIIZI)D
    .locals 7

    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->e:Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;

    move-wide v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lorg/apache/commons/math3/stat/inference/KolmogorovSmirnovTest;->monteCarloP(DIIZI)D

    move-result-wide p0

    return-wide p0
.end method

.method public static oneWayAnovaFValue(Ljava/util/Collection;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[D>;)D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->c:Lorg/apache/commons/math3/stat/inference/OneWayAnova;

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/stat/inference/OneWayAnova;->anovaFValue(Ljava/util/Collection;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static oneWayAnovaPValue(Ljava/util/Collection;)D
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[D>;)D"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->c:Lorg/apache/commons/math3/stat/inference/OneWayAnova;

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/stat/inference/OneWayAnova;->anovaPValue(Ljava/util/Collection;)D

    move-result-wide v0

    return-wide v0
.end method

.method public static oneWayAnovaTest(Ljava/util/Collection;D)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[D>;D)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->c:Lorg/apache/commons/math3/stat/inference/OneWayAnova;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/OneWayAnova;->anovaTest(Ljava/util/Collection;D)Z

    move-result p0

    return p0
.end method

.method public static pairedT([D[D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->a:Lorg/apache/commons/math3/stat/inference/TTest;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->pairedT([D[D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static pairedTTest([D[D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->a:Lorg/apache/commons/math3/stat/inference/TTest;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->pairedTTest([D[D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static pairedTTest([D[DD)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->a:Lorg/apache/commons/math3/stat/inference/TTest;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->pairedTTest([D[DD)Z

    move-result p0

    return p0
.end method

.method public static rootLogLikelihoodRatio(JJJJ)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->d:Lorg/apache/commons/math3/stat/inference/GTest;

    move-wide v1, p0

    move-wide v3, p2

    move-wide v5, p4

    move-wide v7, p6

    invoke-virtual/range {v0 .. v8}, Lorg/apache/commons/math3/stat/inference/GTest;->rootLogLikelihoodRatio(JJJJ)D

    move-result-wide v0

    return-wide v0
.end method

.method public static t(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->a:Lorg/apache/commons/math3/stat/inference/TTest;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->t(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static t(D[D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->a:Lorg/apache/commons/math3/stat/inference/TTest;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->t(D[D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static t(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 4
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->a:Lorg/apache/commons/math3/stat/inference/TTest;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->t(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static t([D[D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 3
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->a:Lorg/apache/commons/math3/stat/inference/TTest;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->t([D[D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static tTest(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 4
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->a:Lorg/apache/commons/math3/stat/inference/TTest;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static tTest(D[D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 2
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->a:Lorg/apache/commons/math3/stat/inference/TTest;

    invoke-virtual {v0, p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(D[D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static tTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 8
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->a:Lorg/apache/commons/math3/stat/inference/TTest;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;)D

    move-result-wide p0

    return-wide p0
.end method

.method public static tTest([D[D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 6
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->a:Lorg/apache/commons/math3/stat/inference/TTest;

    invoke-virtual {v0, p0, p1}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest([D[D)D

    move-result-wide p0

    return-wide p0
.end method

.method public static tTest(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;D)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 3
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->a:Lorg/apache/commons/math3/stat/inference/TTest;

    move-wide v1, p0

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(DLorg/apache/commons/math3/stat/descriptive/StatisticalSummary;D)Z

    move-result p0

    return p0
.end method

.method public static tTest(D[DD)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 1
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->a:Lorg/apache/commons/math3/stat/inference/TTest;

    move-wide v1, p0

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(D[DD)Z

    move-result p0

    return p0
.end method

.method public static tTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;D)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 7
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->a:Lorg/apache/commons/math3/stat/inference/TTest;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest(Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;Lorg/apache/commons/math3/stat/descriptive/StatisticalSummary;D)Z

    move-result p0

    return p0
.end method

.method public static tTest([D[DD)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    .line 5
    sget-object v0, Lorg/apache/commons/math3/stat/inference/TestUtils;->a:Lorg/apache/commons/math3/stat/inference/TTest;

    invoke-virtual {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/inference/TTest;->tTest([D[DD)Z

    move-result p0

    return p0
.end method
