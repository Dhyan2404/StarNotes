.class public Lorg/apache/commons/math3/stat/inference/OneWayAnova;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "[D>;)",
            "Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    new-instance v3, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-direct {v3}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;-><init>()V

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    array-length v4, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-wide v5, v1, v2

    invoke-virtual {v3, v5, v6}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->addValue(D)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0, v2}, Lorg/apache/commons/math3/stat/inference/OneWayAnova;->b(Ljava/util/Collection;Z)Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;

    move-result-object p0

    return-object p0
.end method

.method public anovaFValue(Ljava/util/Collection;)D
    .locals 0
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

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/inference/OneWayAnova;->a(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;->a(Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;)D

    move-result-wide p0

    return-wide p0
.end method

.method public anovaPValue(Ljava/util/Collection;)D
    .locals 6
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

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/inference/OneWayAnova;->a(Ljava/util/Collection;)Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;

    move-result-object p0

    .line 2
    new-instance p1, Lorg/apache/commons/math3/distribution/FDistribution;

    const/4 v1, 0x0

    invoke-static {p0}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;->b(Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;)I

    move-result v0

    int-to-double v2, v0

    invoke-static {p0}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;->c(Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;)I

    move-result v0

    int-to-double v4, v0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/FDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    .line 3
    invoke-static {p0}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;->a(Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/distribution/FDistribution;->cumulativeProbability(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method public anovaPValue(Ljava/util/Collection;Z)D
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;",
            ">;Z)D"
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

    .line 4
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/inference/OneWayAnova;->b(Ljava/util/Collection;Z)Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;

    move-result-object p0

    .line 5
    new-instance p1, Lorg/apache/commons/math3/distribution/FDistribution;

    const/4 v1, 0x0

    invoke-static {p0}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;->b(Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;)I

    move-result p2

    int-to-double v2, p2

    invoke-static {p0}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;->c(Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;)I

    move-result p2

    int-to-double v4, p2

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/FDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    .line 6
    invoke-static {p0}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;->a(Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/distribution/FDistribution;->cumulativeProbability(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method public anovaTest(Ljava/util/Collection;D)Z
    .locals 4
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

    const-wide/16 v0, 0x0

    cmpg-double v0, p2, v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    const/4 v3, 0x0

    if-lez v0, :cond_1

    cmpl-double v0, p2, v1

    if-gtz v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/stat/inference/OneWayAnova;->anovaPValue(Ljava/util/Collection;)D

    move-result-wide p0

    cmpg-double p0, p0, p2

    if-gez p0, :cond_0

    const/4 v3, 0x1

    :cond_0
    return v3

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

.method public final b(Ljava/util/Collection;Z)Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;",
            ">;Z)",
            "Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    if-nez p2, :cond_2

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v3

    const-wide/16 v5, 0x1

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    sget-object v3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TWO_OR_MORE_VALUES_IN_CATEGORY_REQUIRED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-virtual {v2}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v4

    long-to-int v2, v4

    invoke-direct {v0, v3, v2, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;II)V

    throw v0

    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TWO_OR_MORE_CATEGORIES_REQUIRED:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v0, v2, v3, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;II)V

    throw v0

    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    move v4, v1

    move-wide v5, v2

    move-wide v7, v5

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;

    invoke-virtual {v9}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSum()D

    move-result-wide v10

    invoke-virtual {v9}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getSumsq()D

    move-result-wide v12

    invoke-virtual {v9}, Lorg/apache/commons/math3/stat/descriptive/SummaryStatistics;->getN()J

    move-result-wide v14

    long-to-int v9, v14

    add-int/2addr v1, v9

    add-double/2addr v5, v10

    add-double/2addr v2, v12

    add-int/lit8 v14, v9, -0x1

    add-int/2addr v4, v14

    mul-double/2addr v10, v10

    int-to-double v14, v9

    div-double/2addr v10, v14

    sub-double/2addr v12, v10

    add-double/2addr v7, v12

    goto :goto_1

    :cond_3
    mul-double/2addr v5, v5

    int-to-double v0, v1

    div-double/2addr v5, v0

    sub-double/2addr v2, v5

    sub-double/2addr v2, v7

    invoke-interface/range {p1 .. p1}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    int-to-double v5, v0

    div-double/2addr v2, v5

    int-to-double v5, v4

    div-double/2addr v7, v5

    div-double v5, v2, v7

    new-instance v1, Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;

    const/4 v7, 0x0

    move-object v2, v1

    move v3, v0

    invoke-direct/range {v2 .. v7}, Lorg/apache/commons/math3/stat/inference/OneWayAnova$b;-><init>(IIDLorg/apache/commons/math3/stat/inference/OneWayAnova$a;)V

    return-object v1
.end method
