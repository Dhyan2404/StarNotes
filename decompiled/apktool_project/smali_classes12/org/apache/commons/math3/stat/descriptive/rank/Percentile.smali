.class public Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
.super Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
    }
.end annotation


# static fields
.field private static final MAX_CACHED_LEVELS:I = 0xa

.field private static final PIVOTS_HEAP_LENGTH:I = 0x200

.field private static final serialVersionUID:J = -0x7049c6862ae14530L


# instance fields
.field private cachedPivots:[I

.field private final estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

.field private final kthSelector:Lorg/apache/commons/math3/util/KthSelector;

.field private final nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

.field private quantile:D


# direct methods
.method public constructor <init>()V
    .locals 2

    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    .line 1
    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(D)V

    return-void
.end method

.method public constructor <init>(D)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 2
    sget-object v3, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->LEGACY:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    sget-object v4, Lorg/apache/commons/math3/stat/ranking/NaNStrategy;->REMOVED:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    new-instance v5, Lorg/apache/commons/math3/util/KthSelector;

    new-instance v0, Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;-><init>()V

    invoke-direct {v5, v0}, Lorg/apache/commons/math3/util/KthSelector;-><init>(Lorg/apache/commons/math3/util/PivotingStrategyInterface;)V

    move-object v0, p0

    move-wide v1, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(DLorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V

    return-void
.end method

.method public constructor <init>(DLorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 12
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    .line 13
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->setQuantile(D)V

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    .line 15
    invoke-static {p3}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    invoke-static {p4}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 17
    invoke-static {p5}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 18
    iput-object p3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 19
    iput-object p4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 20
    iput-object p5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;-><init>()V

    .line 4
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getEstimationType()Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    .line 6
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getNaNStrategy()Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    .line 7
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getKthSelector()Lorg/apache/commons/math3/util/KthSelector;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    .line 8
    invoke-virtual {p1}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->setData([D)V

    .line 9
    iget-object v0, p1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    if-eqz v0, :cond_0

    .line 10
    iget-object v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    array-length v2, v0

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    :cond_0
    iget-wide v0, p1, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->setQuantile(D)V

    return-void
.end method

.method public static copy(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    new-instance p0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw p0
.end method

.method private static copyOf([DII)[D
    .locals 0

    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([DII)Z

    add-int/2addr p2, p1

    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->copyOfRange([DII)[D

    move-result-object p0

    return-object p0
.end method

.method private getPivots([D)[I
    .locals 1

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->getDataRef()[D

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    goto :goto_0

    :cond_0
    const/16 p0, 0x200

    new-array p0, p0, [I

    const/4 p1, -0x1

    invoke-static {p0, p1}, Ljava/util/Arrays;->fill([II)V

    :goto_0
    return-object p0
.end method

.method private static removeAndSlice([DIID)[D
    .locals 5

    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->verifyValues([DII)Z

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p2}, Ljava/util/BitSet;-><init>(I)V

    move v1, p1

    :goto_0
    add-int v2, p1, p2

    if-ge v1, v2, :cond_1

    aget-wide v2, p0, v1

    invoke-static {p3, p4, v2, v3}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    sub-int v2, v1, p1

    invoke-virtual {v0, v2}, Ljava/util/BitSet;->set(I)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->copyOf([DII)[D

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result p3

    const/4 p4, 0x0

    if-ne p3, p2, :cond_3

    new-array p0, p4, [D

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/util/BitSet;->cardinality()I

    move-result p3

    sub-int/2addr p2, p3

    new-array p2, p2, [D

    move v1, p1

    move p3, p4

    :goto_1
    invoke-virtual {v0, p4}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    sub-int p4, v3, p4

    invoke-static {p0, v1, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p3, p4

    invoke-virtual {v0, v3}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result p4

    add-int v1, p1, p4

    goto :goto_1

    :cond_4
    if-ge v1, v2, :cond_5

    sub-int/2addr v2, v1

    invoke-static {p0, v1, p2, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    move-object p0, p2

    :goto_2
    return-object p0
.end method

.method private static replaceAndSlice([DIIDD)[D
    .locals 2

    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->copyOf([DII)[D

    move-result-object p0

    const/4 p1, 0x0

    :goto_0
    if-ge p1, p2, :cond_1

    aget-wide v0, p0, p1

    invoke-static {p3, p4, v0, v1}, Lorg/apache/commons/math3/util/Precision;->equalsIncludingNaN(DD)Z

    move-result v0

    if-eqz v0, :cond_0

    move-wide v0, p5

    goto :goto_1

    :cond_0
    aget-wide v0, p0, p1

    :goto_1
    aput-wide v0, p0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public bridge synthetic copy()Lorg/apache/commons/math3/stat/descriptive/UnivariateStatistic;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->copy()Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    move-result-object p0

    return-object p0
.end method

.method public copy()Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;)V

    return-object v0
.end method

.method public evaluate(D)D
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->getDataRef()[D

    move-result-object v0

    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->evaluate([DD)D

    move-result-wide p0

    return-wide p0
.end method

.method public evaluate([DD)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, p1, v0, v0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->test([DII)Z

    const/4 v3, 0x0

    .line 3
    array-length v4, p1

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p2

    invoke-virtual/range {v1 .. v6}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->evaluate([DIID)D

    move-result-wide p0

    return-wide p0
.end method

.method public evaluate([DII)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 4
    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->evaluate([DIID)D

    move-result-wide p0

    return-wide p0
.end method

.method public evaluate([DIID)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->test([DII)Z

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpl-double v0, p4, v0

    if-gtz v0, :cond_3

    const-wide/16 v0, 0x0

    cmpg-double v0, p4, v0

    if-lez v0, :cond_3

    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    if-nez p3, :cond_0

    return-wide v0

    :cond_0
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    .line 6
    aget-wide p0, p1, p2

    return-wide p0

    .line 7
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getWorkArray([DII)[D

    move-result-object p2

    .line 8
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->getPivots([D)[I

    move-result-object v2

    .line 9
    array-length p1, p2

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    iget-object v5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    move-object v1, p2

    move-wide v3, p4

    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;->evaluate([D[IDLorg/apache/commons/math3/util/KthSelector;)D

    move-result-wide v0

    :goto_0
    return-wide v0

    .line 10
    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUNDS_QUANTILE_VALUE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/16 p4, 0x64

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0
.end method

.method public getEstimationType()Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    return-object p0
.end method

.method public getKthSelector()Lorg/apache/commons/math3/util/KthSelector;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    return-object p0
.end method

.method public getNaNStrategy()Lorg/apache/commons/math3/stat/ranking/NaNStrategy;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    return-object p0
.end method

.method public getPivotingStrategy()Lorg/apache/commons/math3/util/PivotingStrategyInterface;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/KthSelector;->getPivotingStrategy()Lorg/apache/commons/math3/util/PivotingStrategyInterface;

    move-result-object p0

    return-object p0
.end method

.method public getQuantile()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    return-wide v0
.end method

.method public getWorkArray([DII)[D
    .locals 7

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->getDataRef()[D

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->getDataRef()[D

    move-result-object p0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$a;->a:[I

    iget-object p0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->copyOf([DII)[D

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->copyOf([DII)[D

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/math3/util/MathArrays;->checkNotNaN([D)V

    goto :goto_0

    :cond_2
    const-wide/high16 v0, 0x7ff8000000000000L    # Double.NaN

    invoke-static {p1, p2, p3, v0, v1}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->removeAndSlice([DIID)[D

    move-result-object p0

    goto :goto_0

    :cond_3
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v5, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->replaceAndSlice([DIIDD)[D

    move-result-object p0

    goto :goto_0

    :cond_4
    const-wide/high16 v3, 0x7ff8000000000000L    # Double.NaN

    const-wide/high16 v5, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-object v0, p1

    move v1, p2

    move v2, p3

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->replaceAndSlice([DIIDD)[D

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public medianOf3([DII)I
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance p0, Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;

    invoke-direct {p0}, Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;-><init>()V

    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/util/MedianOf3PivotingStrategy;->pivotIndex([DII)I

    move-result p0

    return p0
.end method

.method public setData([D)V
    .locals 2

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    goto :goto_0

    :cond_0
    const/16 v0, 0x200

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    const/4 v1, -0x1

    .line 3
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 4
    :goto_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->setData([D)V

    return-void
.end method

.method public setData([DII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    goto :goto_0

    :cond_0
    const/16 v0, 0x200

    new-array v0, v0, [I

    .line 6
    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->cachedPivots:[I

    const/4 v1, -0x1

    .line 7
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([II)V

    .line 8
    :goto_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/math3/stat/descriptive/AbstractUnivariateStatistic;->setData([DII)V

    return-void
.end method

.method public setQuantile(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-lez v0, :cond_0

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    iput-wide p1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_BOUNDS_QUANTILE_VALUE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0
.end method

.method public withEstimationType(Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;)Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .locals 7

    new-instance v6, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    iget-object v5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    move-object v0, v6

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(DLorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V

    return-object v6
.end method

.method public withKthSelector(Lorg/apache/commons/math3/util/KthSelector;)Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .locals 7

    new-instance v6, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->nanStrategy:Lorg/apache/commons/math3/stat/ranking/NaNStrategy;

    move-object v0, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(DLorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V

    return-object v6
.end method

.method public withNaNStrategy(Lorg/apache/commons/math3/stat/ranking/NaNStrategy;)Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;
    .locals 7

    new-instance v6, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;

    iget-wide v1, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->quantile:D

    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->estimationType:Lorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;

    iget-object v5, p0, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;->kthSelector:Lorg/apache/commons/math3/util/KthSelector;

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/stat/descriptive/rank/Percentile;-><init>(DLorg/apache/commons/math3/stat/descriptive/rank/Percentile$EstimationType;Lorg/apache/commons/math3/stat/ranking/NaNStrategy;Lorg/apache/commons/math3/util/KthSelector;)V

    return-object v6
.end method
