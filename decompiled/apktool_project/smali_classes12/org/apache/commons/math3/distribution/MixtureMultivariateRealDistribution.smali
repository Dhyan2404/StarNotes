.class public Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;
.super Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;",
        ">",
        "Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;"
    }
.end annotation


# instance fields
.field public final b:[D

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/util/Pair<",
            "Ljava/lang/Double;",
            "TT;>;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/Well19937c;-><init>()V

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/random/RandomGenerator;",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/util/Pair<",
            "Ljava/lang/Double;",
            "TT;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/util/Pair;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;

    invoke-interface {v1}, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;->getDimension()I

    move-result v1

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;I)V

    .line 3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->getDimension()I

    move-result v1

    const-wide/16 v2, 0x0

    move v4, v0

    move-wide v5, v2

    :goto_0
    if-ge v4, p1, :cond_2

    .line 5
    invoke-interface {p2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/util/Pair;

    .line 6
    invoke-virtual {v7}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;

    invoke-interface {v8}, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;->getDimension()I

    move-result v8

    if-ne v8, v1, :cond_1

    .line 7
    invoke-virtual {v7}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Double;

    invoke-virtual {v8}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    cmpg-double v8, v8, v2

    if-ltz v8, :cond_0

    .line 8
    invoke-virtual {v7}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    add-double/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    invoke-virtual {v7}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0

    .line 10
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {v7}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;

    invoke-interface {p1}, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;->getDimension()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0

    .line 11
    :cond_2
    invoke-static {v5, v6}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_4

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->c:Ljava/util/List;

    .line 13
    new-array v1, p1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->b:[D

    :goto_1
    if-ge v0, p1, :cond_3

    .line 14
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/util/Pair;

    .line 15
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->b:[D

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    div-double/2addr v3, v5

    aput-wide v3, v2, v0

    .line 16
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->c:Ljava/util/List;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    return-void

    .line 17
    :cond_4
    new-instance p0, Lorg/apache/commons/math3/exception/MathArithmeticException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OVERFLOW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array p2, v0, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/MathArithmeticException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0
.end method


# virtual methods
.method public density([D)D
    .locals 7

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->b:[D

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-wide v3, v3, v2

    iget-object v5, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->c:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;

    invoke-interface {v5, p1}, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;->density([D)D

    move-result-wide v5

    mul-double/2addr v3, v5

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getComponents()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/util/Pair<",
            "Ljava/lang/Double;",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->b:[D

    array-length v1, v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->b:[D

    array-length v3, v2

    if-ge v1, v3, :cond_0

    new-instance v3, Lorg/apache/commons/math3/util/Pair;

    aget-wide v4, v2, v1

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    iget-object v4, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->c:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public reseedRandomGenerator(J)V
    .locals 4

    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->reseedRandomGenerator(J)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->c:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;

    add-int/lit8 v0, v0, 0x1

    int-to-long v2, v0

    add-long/2addr v2, p1

    invoke-interface {v1, v2, v3}, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;->reseedRandomGenerator(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public sample()[D
    .locals 7

    iget-object v0, p0, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {v0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->b:[D

    array-length v6, v5

    if-ge v4, v6, :cond_1

    aget-wide v5, v5, v4

    add-double/2addr v2, v5

    cmpg-double v5, v0, v2

    if-gtz v5, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->c:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;

    invoke-interface {v0}, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;->sample()[D

    move-result-object v0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->c:Ljava/util/List;

    iget-object p0, p0, Lorg/apache/commons/math3/distribution/MixtureMultivariateRealDistribution;->b:[D

    array-length p0, p0

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;

    invoke-interface {p0}, Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;->sample()[D

    move-result-object v0

    :cond_2
    return-object v0
.end method
