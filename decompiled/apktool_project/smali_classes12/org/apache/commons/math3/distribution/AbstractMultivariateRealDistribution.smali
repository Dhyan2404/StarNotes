.class public abstract Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/distribution/MultivariateRealDistribution;


# instance fields
.field public final a:I

.field protected final random:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    iput p2, p0, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->a:I

    return-void
.end method


# virtual methods
.method public getDimension()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->a:I

    return p0
.end method

.method public reseedRandomGenerator(J)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->random:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(J)V

    return-void
.end method

.method public abstract sample()[D
.end method

.method public sample(I)[[D
    .locals 3

    if-lez p1, :cond_1

    .line 1
    iget v0, p0, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->a:I

    filled-new-array {p1, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/distribution/AbstractMultivariateRealDistribution;->sample()[D

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    .line 3
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method
