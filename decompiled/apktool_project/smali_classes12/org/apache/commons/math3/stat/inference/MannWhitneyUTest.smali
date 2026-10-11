.class public Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;
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

    iput-object v0, p0, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->a:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;-><init>(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/stat/ranking/TiesStrategy;)V

    iput-object v0, p0, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->a:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    return-void
.end method


# virtual methods
.method public final a(DII)D
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    move/from16 v0, p3

    move/from16 v1, p4

    int-to-long v2, v0

    int-to-long v4, v1

    mul-long/2addr v2, v4

    long-to-double v4, v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    int-to-long v0, v0

    mul-long/2addr v2, v0

    long-to-double v0, v2

    const-wide/high16 v2, 0x4028000000000000L    # 12.0

    div-double/2addr v0, v2

    sub-double v2, p1, v4

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    div-double/2addr v2, v0

    new-instance v0, Lorg/apache/commons/math3/distribution/NormalDistribution;

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    move-object v8, v0

    invoke-direct/range {v8 .. v13}, Lorg/apache/commons/math3/distribution/NormalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/math3/distribution/NormalDistribution;->cumulativeProbability(D)D

    move-result-wide v0

    mul-double/2addr v0, v6

    return-wide v0
.end method

.method public final b([D[D)[D
    .locals 2

    array-length p0, p1

    array-length v0, p2

    add-int/2addr p0, v0

    new-array p0, p0, [D

    array-length v0, p1

    const/4 v1, 0x0

    invoke-static {p1, v1, p0, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length p1, p1

    array-length v0, p2

    invoke-static {p2, v1, p0, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p0
.end method

.method public final c([D[D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    array-length p0, p1

    if-eqz p0, :cond_0

    array-length p0, p2

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NoDataException;-><init>()V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method public mannWhitneyU([D[D)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->c([D[D)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->b([D[D)[D

    move-result-object v0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->a:Lorg/apache/commons/math3/stat/ranking/NaturalRanking;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/ranking/NaturalRanking;->rank([D)[D

    move-result-object p0

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_0

    aget-wide v3, p0, v2

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    array-length p0, p1

    int-to-long v2, p0

    array-length p0, p1

    add-int/lit8 p0, p0, 0x1

    int-to-long v4, p0

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    long-to-double v2, v2

    sub-double/2addr v0, v2

    array-length p0, p1

    int-to-long p0, p0

    array-length p2, p2

    int-to-long v2, p2

    mul-long/2addr p0, v2

    long-to-double p0, p0

    sub-double/2addr p0, v0

    invoke-static {v0, v1, p0, p1}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public mannWhitneyUTest([D[D)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/ConvergenceException;,
            Lorg/apache/commons/math3/exception/MaxCountExceededException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->c([D[D)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->mannWhitneyU([D[D)D

    move-result-wide v0

    array-length v2, p1

    int-to-long v2, v2

    array-length v4, p2

    int-to-long v4, v4

    mul-long/2addr v2, v4

    long-to-double v2, v2

    sub-double/2addr v2, v0

    array-length p1, p1

    array-length p2, p2

    invoke-virtual {p0, v2, v3, p1, p2}, Lorg/apache/commons/math3/stat/inference/MannWhitneyUTest;->a(DII)D

    move-result-wide p0

    return-wide p0
.end method
