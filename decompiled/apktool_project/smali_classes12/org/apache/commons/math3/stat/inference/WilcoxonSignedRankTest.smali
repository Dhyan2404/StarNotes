.class public Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    sget-object v1, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->FIXED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    sget-object v2, Lorg/apache/commons/math3/stat/ranking/TiesStrategy;->AVERAGE:Lorg/apache/commons/math3/stat/ranking/TiesStrategy;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;-><init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->a:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;-><init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->a:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    return-void
.end method


# virtual methods
.method public final a([D)[D
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    if-eqz p1, :cond_2

    array-length p0, p1

    if-eqz p0, :cond_1

    array-length p0, p1

    new-array p0, p0, [D

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-wide v1, p1, v0

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v1

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public final b(DI)D
    .locals 6

    add-int/lit8 p0, p3, 0x1

    mul-int/2addr p0, p3

    int-to-double v0, p0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    div-double/2addr v0, v2

    mul-int/lit8 p3, p3, 0x2

    add-int/lit8 p3, p3, 0x1

    int-to-double v2, p3

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    div-double/2addr v2, v4

    mul-double/2addr v2, v0

    sub-double/2addr p1, v0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double/2addr p1, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    div-double/2addr p1, v0

    new-instance p0, Lorg/apache/commons/math3/distribution/NormalDistribution;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/distribution/NormalDistribution;->cumulativeProbability(D)D

    move-result-wide p0

    mul-double/2addr p0, v0

    return-wide p0
.end method

.method public final c([D[D)[D
    .locals 5

    array-length p0, p1

    new-array p0, p0, [D

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    aget-wide v1, p2, v0

    aget-wide v3, p1, v0

    sub-double/2addr v1, v3

    aput-wide v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public final d(DI)D
    .locals 7

    const/4 p0, 0x1

    shl-int v0, p0, p3

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_3

    move v4, v1

    move v5, v4

    :goto_1
    if-ge v4, p3, :cond_1

    shr-int v6, v2, v4

    and-int/2addr v6, p0

    if-ne v6, p0, :cond_0

    add-int/lit8 v6, v4, 0x1

    add-int/2addr v5, v6

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    int-to-double v4, v5

    cmpl-double v4, v4, p1

    if-ltz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    int-to-double p2, v3

    mul-double/2addr p2, p0

    int-to-double p0, v0

    div-double/2addr p2, p0

    return-wide p2
.end method

.method public final e([D[D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    array-length p0, p1

    if-eqz p0, :cond_1

    array-length p0, p2

    if-eqz p0, :cond_1

    array-length p0, p2

    array-length v0, p1

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p2, p2

    array-length p1, p1

    invoke-direct {p0, p2, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public wilcoxonSignedRank([D[D)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->e([D[D)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->c([D[D)[D

    move-result-object p2

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->a([D)[D

    move-result-object v0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->a:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->rank([D)[D

    move-result-object p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    move-wide v3, v0

    :goto_0
    array-length v5, p2

    if-ge v2, v5, :cond_1

    aget-wide v5, p2, v2

    cmpl-double v5, v5, v0

    if-lez v5, :cond_0

    aget-wide v5, p0, v2

    add-double/2addr v3, v5

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    array-length p0, p1

    add-int/lit8 p1, p0, 0x1

    mul-int/2addr p0, p1

    int-to-double p0, p0

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    div-double/2addr p0, v0

    sub-double/2addr p0, v3

    invoke-static {v3, v4, p0, p1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public wilcoxonSignedRankTest([D[DZ)D
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->e([D[D)V

    array-length v0, p1

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->wilcoxonSignedRank([D[D)D

    move-result-wide p1

    if-eqz p3, :cond_1

    const/16 v1, 0x1e

    if-gt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    :cond_1
    :goto_0
    if-eqz p3, :cond_2

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->d(DI)D

    move-result-wide p0

    return-wide p0

    :cond_2
    add-int/lit8 p3, v0, 0x1

    mul-int/2addr p3, v0

    int-to-double v1, p3

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    div-double/2addr v1, v3

    sub-double/2addr v1, p1

    invoke-virtual {p0, v1, v2, v0}, Lorg/apache/commons/math3/stat/inference/WilcoxonSignedRankTest;->b(DI)D

    move-result-wide p0

    return-wide p0
.end method
