.class public Lorg/apache/commons/math3/genetics/GeneticAlgorithm;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static g:Lorg/apache/commons/math3/random/RandomGenerator;


# instance fields
.field public final a:Lorg/apache/commons/math3/genetics/CrossoverPolicy;

.field public final b:D

.field public final c:Lorg/apache/commons/math3/genetics/MutationPolicy;

.field public final d:D

.field public final e:Lorg/apache/commons/math3/genetics/SelectionPolicy;

.field public f:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/random/JDKRandomGenerator;

    invoke-direct {v0}, Lorg/apache/commons/math3/random/JDKRandomGenerator;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->g:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/genetics/CrossoverPolicy;DLorg/apache/commons/math3/genetics/MutationPolicy;DLorg/apache/commons/math3/genetics/SelectionPolicy;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput v0, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->f:I

    const-wide/16 v2, 0x0

    cmpg-double v0, p2, v2

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    if-ltz v0, :cond_1

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, p2, v5

    if-gtz v0, :cond_1

    cmpg-double v0, p5, v2

    if-ltz v0, :cond_0

    cmpl-double v0, p5, v5

    if-gtz v0, :cond_0

    iput-object p1, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->a:Lorg/apache/commons/math3/genetics/CrossoverPolicy;

    iput-wide p2, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->b:D

    iput-object p4, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->c:Lorg/apache/commons/math3/genetics/MutationPolicy;

    iput-wide p5, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->d:D

    iput-object p7, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->e:Lorg/apache/commons/math3/genetics/SelectionPolicy;

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->MUTATION_RATE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p5, p6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2, v1, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CROSSOVER_RATE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2, v1, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p0
.end method

.method public static declared-synchronized getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;
    .locals 2

    const-class v0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->g:Lorg/apache/commons/math3/random/RandomGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setRandomGenerator(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 1

    const-class v0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;

    monitor-enter v0

    :try_start_0
    sput-object p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->g:Lorg/apache/commons/math3/random/RandomGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public evolve(Lorg/apache/commons/math3/genetics/Population;Lorg/apache/commons/math3/genetics/StoppingCondition;)Lorg/apache/commons/math3/genetics/Population;
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->f:I

    :goto_0
    invoke-interface {p2, p1}, Lorg/apache/commons/math3/genetics/StoppingCondition;->isSatisfied(Lorg/apache/commons/math3/genetics/Population;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->nextGeneration(Lorg/apache/commons/math3/genetics/Population;)Lorg/apache/commons/math3/genetics/Population;

    move-result-object p1

    iget v0, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->f:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->f:I

    goto :goto_0

    :cond_0
    return-object p1
.end method

.method public getCrossoverPolicy()Lorg/apache/commons/math3/genetics/CrossoverPolicy;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->a:Lorg/apache/commons/math3/genetics/CrossoverPolicy;

    return-object p0
.end method

.method public getCrossoverRate()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->b:D

    return-wide v0
.end method

.method public getGenerationsEvolved()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->f:I

    return p0
.end method

.method public getMutationPolicy()Lorg/apache/commons/math3/genetics/MutationPolicy;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->c:Lorg/apache/commons/math3/genetics/MutationPolicy;

    return-object p0
.end method

.method public getMutationRate()D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->d:D

    return-wide v0
.end method

.method public getSelectionPolicy()Lorg/apache/commons/math3/genetics/SelectionPolicy;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->e:Lorg/apache/commons/math3/genetics/SelectionPolicy;

    return-object p0
.end method

.method public nextGeneration(Lorg/apache/commons/math3/genetics/Population;)Lorg/apache/commons/math3/genetics/Population;
    .locals 7

    invoke-interface {p1}, Lorg/apache/commons/math3/genetics/Population;->nextGeneration()Lorg/apache/commons/math3/genetics/Population;

    move-result-object v0

    invoke-static {}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Lorg/apache/commons/math3/genetics/Population;->getPopulationSize()I

    move-result v2

    invoke-interface {v0}, Lorg/apache/commons/math3/genetics/Population;->getPopulationLimit()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getSelectionPolicy()Lorg/apache/commons/math3/genetics/SelectionPolicy;

    move-result-object v2

    invoke-interface {v2, p1}, Lorg/apache/commons/math3/genetics/SelectionPolicy;->select(Lorg/apache/commons/math3/genetics/Population;)Lorg/apache/commons/math3/genetics/ChromosomePair;

    move-result-object v2

    invoke-interface {v1}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getCrossoverRate()D

    move-result-wide v5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getCrossoverPolicy()Lorg/apache/commons/math3/genetics/CrossoverPolicy;

    move-result-object v3

    invoke-virtual {v2}, Lorg/apache/commons/math3/genetics/ChromosomePair;->getFirst()Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/commons/math3/genetics/ChromosomePair;->getSecond()Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Lorg/apache/commons/math3/genetics/CrossoverPolicy;->crossover(Lorg/apache/commons/math3/genetics/Chromosome;Lorg/apache/commons/math3/genetics/Chromosome;)Lorg/apache/commons/math3/genetics/ChromosomePair;

    move-result-object v2

    :cond_1
    invoke-interface {v1}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getMutationRate()D

    move-result-wide v5

    cmpg-double v3, v3, v5

    if-gez v3, :cond_2

    new-instance v3, Lorg/apache/commons/math3/genetics/ChromosomePair;

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getMutationPolicy()Lorg/apache/commons/math3/genetics/MutationPolicy;

    move-result-object v4

    invoke-virtual {v2}, Lorg/apache/commons/math3/genetics/ChromosomePair;->getFirst()Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/genetics/MutationPolicy;->mutate(Lorg/apache/commons/math3/genetics/Chromosome;)Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/GeneticAlgorithm;->getMutationPolicy()Lorg/apache/commons/math3/genetics/MutationPolicy;

    move-result-object v5

    invoke-virtual {v2}, Lorg/apache/commons/math3/genetics/ChromosomePair;->getSecond()Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v2

    invoke-interface {v5, v2}, Lorg/apache/commons/math3/genetics/MutationPolicy;->mutate(Lorg/apache/commons/math3/genetics/Chromosome;)Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/apache/commons/math3/genetics/ChromosomePair;-><init>(Lorg/apache/commons/math3/genetics/Chromosome;Lorg/apache/commons/math3/genetics/Chromosome;)V

    move-object v2, v3

    :cond_2
    invoke-virtual {v2}, Lorg/apache/commons/math3/genetics/ChromosomePair;->getFirst()Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v3

    invoke-interface {v0, v3}, Lorg/apache/commons/math3/genetics/Population;->addChromosome(Lorg/apache/commons/math3/genetics/Chromosome;)V

    invoke-interface {v0}, Lorg/apache/commons/math3/genetics/Population;->getPopulationSize()I

    move-result v3

    invoke-interface {v0}, Lorg/apache/commons/math3/genetics/Population;->getPopulationLimit()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-virtual {v2}, Lorg/apache/commons/math3/genetics/ChromosomePair;->getSecond()Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object v2

    invoke-interface {v0, v2}, Lorg/apache/commons/math3/genetics/Population;->addChromosome(Lorg/apache/commons/math3/genetics/Chromosome;)V

    goto :goto_0

    :cond_3
    return-object v0
.end method
