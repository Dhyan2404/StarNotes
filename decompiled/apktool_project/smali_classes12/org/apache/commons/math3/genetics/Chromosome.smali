.class public abstract Lorg/apache/commons/math3/genetics/Chromosome;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;
.implements Lorg/apache/commons/math3/genetics/Fitness;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lorg/apache/commons/math3/genetics/Chromosome;",
        ">;",
        "Lorg/apache/commons/math3/genetics/Fitness;"
    }
.end annotation


# static fields
.field public static final f:D = -Infinity


# instance fields
.field public e:D


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    iput-wide v0, p0, Lorg/apache/commons/math3/genetics/Chromosome;->e:D

    return-void
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lorg/apache/commons/math3/genetics/Chromosome;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/genetics/Chromosome;->compareTo(Lorg/apache/commons/math3/genetics/Chromosome;)I

    move-result p0

    return p0
.end method

.method public compareTo(Lorg/apache/commons/math3/genetics/Chromosome;)I
    .locals 2

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/genetics/Chromosome;->getFitness()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/genetics/Chromosome;->getFitness()D

    move-result-wide p0

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method public findSameChromosome(Lorg/apache/commons/math3/genetics/Population;)Lorg/apache/commons/math3/genetics/Chromosome;
    .locals 2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/genetics/Chromosome;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/genetics/Chromosome;->isSame(Lorg/apache/commons/math3/genetics/Chromosome;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFitness()D
    .locals 4

    iget-wide v0, p0, Lorg/apache/commons/math3/genetics/Chromosome;->e:D

    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    invoke-interface {p0}, Lorg/apache/commons/math3/genetics/Fitness;->fitness()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/genetics/Chromosome;->e:D

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/genetics/Chromosome;->e:D

    return-wide v0
.end method

.method public isSame(Lorg/apache/commons/math3/genetics/Chromosome;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public searchForFitnessUpdate(Lorg/apache/commons/math3/genetics/Population;)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/genetics/Chromosome;->findSameChromosome(Lorg/apache/commons/math3/genetics/Population;)Lorg/apache/commons/math3/genetics/Chromosome;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lorg/apache/commons/math3/genetics/Chromosome;->getFitness()D

    move-result-wide v0

    iput-wide v0, p0, Lorg/apache/commons/math3/genetics/Chromosome;->e:D

    :cond_0
    return-void
.end method
