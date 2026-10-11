.class public Lorg/apache/commons/math3/genetics/TournamentSelection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/genetics/SelectionPolicy;


# instance fields
.field public a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lorg/apache/commons/math3/genetics/TournamentSelection;->a:I

    return-void
.end method


# virtual methods
.method public final a(Lorg/apache/commons/math3/genetics/ListPopulation;)Lorg/apache/commons/math3/genetics/Chromosome;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/apache/commons/math3/genetics/ListPopulation;->getPopulationSize()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/genetics/TournamentSelection;->a:I

    if-lt v0, v1, :cond_1

    new-instance v0, Lorg/apache/commons/math3/genetics/TournamentSelection$a;

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/genetics/TournamentSelection$a;-><init>(Lorg/apache/commons/math3/genetics/TournamentSelection;I)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/apache/commons/math3/genetics/ListPopulation;->getChromosomes()Ljava/util/List;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/genetics/TournamentSelection;->a:I

    if-ge p1, v2, :cond_0

    invoke-static {}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result v2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/genetics/Chromosome;

    invoke-virtual {v0, v3}, Lorg/apache/commons/math3/genetics/ListPopulation;->addChromosome(Lorg/apache/commons/math3/genetics/Chromosome;)V

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/genetics/ListPopulation;->getFittestChromosome()Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->TOO_LARGE_TOURNAMENT_ARITY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    iget p0, p0, Lorg/apache/commons/math3/genetics/TournamentSelection;->a:I

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p1}, Lorg/apache/commons/math3/genetics/ListPopulation;->getPopulationSize()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public getArity()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/genetics/TournamentSelection;->a:I

    return p0
.end method

.method public select(Lorg/apache/commons/math3/genetics/Population;)Lorg/apache/commons/math3/genetics/ChromosomePair;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/genetics/ChromosomePair;

    check-cast p1, Lorg/apache/commons/math3/genetics/ListPopulation;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/genetics/TournamentSelection;->a(Lorg/apache/commons/math3/genetics/ListPopulation;)Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v1

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/genetics/TournamentSelection;->a(Lorg/apache/commons/math3/genetics/ListPopulation;)Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/genetics/ChromosomePair;-><init>(Lorg/apache/commons/math3/genetics/Chromosome;Lorg/apache/commons/math3/genetics/Chromosome;)V

    return-object v0
.end method

.method public setArity(I)V
    .locals 0

    iput p1, p0, Lorg/apache/commons/math3/genetics/TournamentSelection;->a:I

    return-void
.end method
