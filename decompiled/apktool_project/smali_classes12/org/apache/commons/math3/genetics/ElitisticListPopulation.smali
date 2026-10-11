.class public Lorg/apache/commons/math3/genetics/ElitisticListPopulation;
.super Lorg/apache/commons/math3/genetics/ListPopulation;
.source "SourceFile"


# instance fields
.field public g:D


# direct methods
.method public constructor <init>(ID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/genetics/ListPopulation;-><init>(I)V

    const-wide v0, 0x3feccccccccccccdL    # 0.9

    .line 5
    iput-wide v0, p0, Lorg/apache/commons/math3/genetics/ElitisticListPopulation;->g:D

    .line 6
    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/math3/genetics/ElitisticListPopulation;->setElitismRate(D)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;ID)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/apache/commons/math3/genetics/Chromosome;",
            ">;ID)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/genetics/ListPopulation;-><init>(Ljava/util/List;I)V

    const-wide p1, 0x3feccccccccccccdL    # 0.9

    .line 2
    iput-wide p1, p0, Lorg/apache/commons/math3/genetics/ElitisticListPopulation;->g:D

    .line 3
    invoke-virtual {p0, p3, p4}, Lorg/apache/commons/math3/genetics/ElitisticListPopulation;->setElitismRate(D)V

    return-void
.end method


# virtual methods
.method public getElitismRate()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/genetics/ElitisticListPopulation;->g:D

    return-wide v0
.end method

.method public nextGeneration()Lorg/apache/commons/math3/genetics/Population;
    .locals 6

    new-instance v0, Lorg/apache/commons/math3/genetics/ElitisticListPopulation;

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/ListPopulation;->getPopulationLimit()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/ElitisticListPopulation;->getElitismRate()D

    move-result-wide v2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/genetics/ElitisticListPopulation;-><init>(ID)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/ListPopulation;->getChromosomeList()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/ElitisticListPopulation;->getElitismRate()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p0

    int-to-double v4, p0

    mul-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->ceil(D)D

    move-result-wide v2

    double-to-int p0, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge p0, v2, :cond_0

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/genetics/Chromosome;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/genetics/ListPopulation;->addChromosome(Lorg/apache/commons/math3/genetics/Chromosome;)V

    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public setElitismRate(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_0

    iput-wide p1, p0, Lorg/apache/commons/math3/genetics/ElitisticListPopulation;->g:D

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ELITISM_RATE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, p1, p2, v1}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0
.end method
