.class public Lorg/apache/commons/math3/random/RandomDataGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomData;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x8b2985bcf4804f4L


# instance fields
.field private rand:Lorg/apache/commons/math3/random/RandomGenerator;

.field private secRand:Lorg/apache/commons/math3/random/RandomGenerator;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lorg/apache/commons/math3/random/RandomDataGenerator;->rand:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 3
    iput-object v0, p0, Lorg/apache/commons/math3/random/RandomDataGenerator;->secRand:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lorg/apache/commons/math3/random/RandomDataGenerator;->secRand:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 6
    iput-object p1, p0, Lorg/apache/commons/math3/random/RandomDataGenerator;->rand:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method

.method private getSecRan()Lorg/apache/commons/math3/random/RandomGenerator;
    .locals 5

    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataGenerator;->secRand:Lorg/apache/commons/math3/random/RandomGenerator;

    if-nez v0, :cond_0

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-static {v0}, Lorg/apache/commons/math3/random/RandomGeneratorFactory;->createRandomGenerator(Ljava/util/Random;)Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/random/RandomDataGenerator;->secRand:Lorg/apache/commons/math3/random/RandomGenerator;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(J)V

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/random/RandomDataGenerator;->secRand:Lorg/apache/commons/math3/random/RandomGenerator;

    return-object p0
.end method

.method private initRan()V
    .locals 5

    new-instance v0, Lorg/apache/commons/math3/random/Well19937c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/random/Well19937c;-><init>(J)V

    iput-object v0, p0, Lorg/apache/commons/math3/random/RandomDataGenerator;->rand:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method

.method private static nextLong(Lorg/apache/commons/math3/random/RandomGenerator;J)J
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    const/16 v2, 0x8

    new-array v3, v2, [B

    .line 6
    :cond_0
    invoke-interface {p0, v3}, Lorg/apache/commons/math3/random/RandomGenerator;->nextBytes([B)V

    const/4 v4, 0x0

    move-wide v5, v0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 7
    aget-byte v7, v3, v4

    shl-long/2addr v5, v2

    int-to-long v7, v7

    const-wide/16 v9, 0xff

    and-long/2addr v7, v9

    or-long/2addr v5, v7

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    const-wide v7, 0x7fffffffffffffffL

    and-long v4, v5, v7

    .line 8
    rem-long v6, v4, p1

    sub-long/2addr v4, v6

    const-wide/16 v8, 0x1

    sub-long v8, p1, v8

    add-long/2addr v4, v8

    cmp-long v4, v4, v0

    if-ltz v4, :cond_0

    return-wide v6

    .line 9
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0
.end method


# virtual methods
.method public getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/random/RandomDataGenerator;->rand:Lorg/apache/commons/math3/random/RandomGenerator;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->initRan()V

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/random/RandomDataGenerator;->rand:Lorg/apache/commons/math3/random/RandomGenerator;

    return-object p0
.end method

.method public nextBeta(DD)D
    .locals 9

    new-instance v8, Lorg/apache/commons/math3/distribution/BetaDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, v8

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/BetaDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    invoke-virtual {v8}, Lorg/apache/commons/math3/distribution/BetaDistribution;->sample()D

    move-result-wide p0

    return-wide p0
.end method

.method public nextBinomial(ID)I
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/distribution/BinomialDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/distribution/BinomialDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->sample()I

    move-result p0

    return p0
.end method

.method public nextCauchy(DD)D
    .locals 9

    new-instance v8, Lorg/apache/commons/math3/distribution/CauchyDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, v8

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/CauchyDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    invoke-virtual {v8}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->sample()D

    move-result-wide p0

    return-wide p0
.end method

.method public nextChiSquare(D)D
    .locals 7

    new-instance v6, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, v6

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/ChiSquaredDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    invoke-virtual {v6}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->sample()D

    move-result-wide p0

    return-wide p0
.end method

.method public nextExponential(D)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    new-instance v6, Lorg/apache/commons/math3/distribution/ExponentialDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, v6

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    invoke-virtual {v6}, Lorg/apache/commons/math3/distribution/ExponentialDistribution;->sample()D

    move-result-wide p0

    return-wide p0
.end method

.method public nextF(DD)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    new-instance v8, Lorg/apache/commons/math3/distribution/FDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, v8

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/FDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    invoke-virtual {v8}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->sample()D

    move-result-wide p0

    return-wide p0
.end method

.method public nextGamma(DD)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    new-instance v8, Lorg/apache/commons/math3/distribution/GammaDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, v8

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/GammaDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    invoke-virtual {v8}, Lorg/apache/commons/math3/distribution/GammaDistribution;->sample()D

    move-result-wide p0

    return-wide p0
.end method

.method public nextGaussian(DD)D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmpg-double v0, p3, v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextGaussian()D

    move-result-wide v0

    mul-double/2addr p3, v0

    add-double/2addr p3, p1

    return-wide p3

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->STANDARD_DEVIATION:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method

.method public nextHexString(I)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    if-lez p1, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v3, v1, [B

    invoke-interface {p0, v3}, Lorg/apache/commons/math3/random/RandomGenerator;->nextBytes([B)V

    const/4 p0, 0x0

    move v4, p0

    :goto_0
    if-ge v4, v1, :cond_1

    aget-byte v5, v3, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit16 v5, v5, 0x80

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v6, v2, :cond_0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_0
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LENGTH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method

.method public nextHypergeometric(III)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/distribution/HypergeometricDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;III)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->sample()I

    move-result p0

    return p0
.end method

.method public nextInt(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;II)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->sample()I

    move-result p0

    return p0
.end method

.method public nextLong(JJ)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    cmp-long v0, p1, p3

    if-gez v0, :cond_3

    sub-long v0, p3, p1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v2

    .line 2
    :cond_0
    invoke-interface {v2}, Lorg/apache/commons/math3/random/RandomGenerator;->nextLong()J

    move-result-wide v0

    cmp-long p0, v0, p1

    if-ltz p0, :cond_0

    cmp-long p0, v0, p3

    if-gtz p0, :cond_0

    return-wide v0

    :cond_1
    const-wide/32 p3, 0x7fffffff

    cmp-long p3, v0, p3

    if-gez p3, :cond_2

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object p0

    long-to-int p3, v0

    invoke-interface {p0, p3}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result p0

    int-to-long p3, p0

    :goto_0
    add-long/2addr p1, p3

    return-wide p1

    .line 4
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object p0

    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextLong(Lorg/apache/commons/math3/random/RandomGenerator;J)J

    move-result-wide p3

    goto :goto_0

    .line 5
    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_BOUND_NOT_BELOW_UPPER_BOUND:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0
.end method

.method public nextPascal(ID)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/distribution/PascalDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/distribution/PascalDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/AbstractIntegerDistribution;->sample()I

    move-result p0

    return p0
.end method

.method public nextPermutation(II)[I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    if-gt p2, p1, :cond_1

    if-lez p2, :cond_0

    invoke-static {p1}, Lorg/apache/commons/math3/util/MathArrays;->natural(I)[I

    move-result-object p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object p0

    invoke-static {p1, p0}, Lorg/apache/commons/math3/util/MathArrays;->shuffle([ILorg/apache/commons/math3/random/RandomGenerator;)V

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->copyOf([II)[I

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->PERMUTATION_SIZE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->PERMUTATION_EXCEEDS_N:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x1

    invoke-direct {p0, v0, p2, p1, v1}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0
.end method

.method public nextPoisson(D)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    new-instance v7, Lorg/apache/commons/math3/distribution/PoissonDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    const-wide v4, 0x3d719799812dea11L    # 1.0E-12

    const v6, 0x989680

    move-object v0, v7

    move-wide v2, p1

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/math3/distribution/PoissonDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDI)V

    invoke-virtual {v7}, Lorg/apache/commons/math3/distribution/PoissonDistribution;->sample()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public nextSample(Ljava/util/Collection;I)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;I)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    if-gt p2, v0, :cond_2

    if-lez p2, :cond_1

    invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, v0, p2}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextPermutation(II)[I

    move-result-object p0

    new-array v0, p2, [Ljava/lang/Object;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    aget v2, p0, v1

    aget-object v2, p1, v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_SAMPLES:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->SAMPLE_SIZE_EXCEEDS_COLLECTION_SIZE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0
.end method

.method public nextSecureHexString(I)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    if-lez p1, :cond_3

    invoke-direct {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getSecRan()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object p0

    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Ljava/security/MessageDigest;->reset()V

    div-int/lit8 v1, p1, 0x28

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move v4, v2

    :goto_0
    add-int/lit8 v5, v1, 0x1

    const/4 v6, 0x0

    if-ge v4, v5, :cond_2

    const/16 v5, 0x28

    new-array v5, v5, [B

    invoke-interface {p0, v5}, Lorg/apache/commons/math3/random/RandomGenerator;->nextBytes([B)V

    invoke-virtual {v0, v5}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v5

    :goto_1
    array-length v7, v5

    if-ge v6, v7, :cond_1

    aget-byte v7, v5, v6

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    add-int/lit16 v7, v7, 0x80

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v8

    if-ne v8, v2, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :cond_0
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v6, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {p1, p0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LENGTH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method

.method public nextSecureInt(II)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;

    invoke-direct {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getSecRan()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;II)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/UniformIntegerDistribution;->sample()I

    move-result p0

    return p0
.end method

.method public nextSecureLong(JJ)J
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    cmp-long v0, p1, p3

    if-gez v0, :cond_3

    invoke-direct {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getSecRan()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object p0

    sub-long v0, p3, p1

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    :cond_0
    invoke-interface {p0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextLong()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-ltz v2, :cond_0

    cmp-long v2, v0, p3

    if-gtz v2, :cond_0

    return-wide v0

    :cond_1
    const-wide/32 p3, 0x7fffffff

    cmp-long p3, v0, p3

    if-gez p3, :cond_2

    long-to-int p3, v0

    invoke-interface {p0, p3}, Lorg/apache/commons/math3/random/RandomGenerator;->nextInt(I)I

    move-result p0

    int-to-long p3, p0

    :goto_0
    add-long/2addr p1, p3

    return-wide p1

    :cond_2
    invoke-static {p0, v0, v1}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextLong(Lorg/apache/commons/math3/random/RandomGenerator;J)J

    move-result-wide p3

    goto :goto_0

    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_BOUND_NOT_BELOW_UPPER_BOUND:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const/4 p3, 0x0

    invoke-direct {p0, v0, p1, p2, p3}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0
.end method

.method public nextT(D)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    new-instance v6, Lorg/apache/commons/math3/distribution/TDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, v6

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/distribution/TDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V

    invoke-virtual {v6}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->sample()D

    move-result-wide p0

    return-wide p0
.end method

.method public nextUniform(DD)D
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NotANumberException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    .line 1
    invoke-virtual/range {v0 .. v5}, Lorg/apache/commons/math3/random/RandomDataGenerator;->nextUniform(DDZ)D

    move-result-wide p0

    return-wide p0
.end method

.method public nextUniform(DDZ)D
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;,
            Lorg/apache/commons/math3/exception/NotFiniteNumberException;,
            Lorg/apache/commons/math3/exception/NotANumberException;
        }
    .end annotation

    cmpl-double v0, p1, p3

    const/4 v1, 0x0

    if-gez v0, :cond_4

    .line 2
    invoke-static {p1, p2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_3

    .line 3
    invoke-static {p3, p4}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object p0

    .line 6
    invoke-interface {p0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v0

    :goto_0
    if-nez p5, :cond_0

    const-wide/16 v2, 0x0

    cmpg-double v2, v0, v2

    if-gtz v2, :cond_0

    .line 7
    invoke-interface {p0}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v0

    goto :goto_0

    :cond_0
    mul-double/2addr p3, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    mul-double/2addr v2, p1

    add-double/2addr p3, v2

    return-wide p3

    .line 8
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NotANumberException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NotANumberException;-><init>()V

    throw p0

    .line 9
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NotFiniteNumberException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INFINITE_BOUND:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    new-array p3, v1, [Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/exception/NotFiniteNumberException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    throw p0

    .line 10
    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/NotFiniteNumberException;

    sget-object p3, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INFINITE_BOUND:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Object;

    invoke-direct {p0, p3, p1, p2}, Lorg/apache/commons/math3/exception/NotFiniteNumberException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;[Ljava/lang/Object;)V

    throw p0

    .line 11
    :cond_4
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    sget-object p5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->LOWER_BOUND_NOT_BELOW_UPPER_BOUND:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    invoke-direct {p0, p5, p1, p2, v1}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0
.end method

.method public nextWeibull(DD)D
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    new-instance v8, Lorg/apache/commons/math3/distribution/WeibullDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v1

    const-wide v6, 0x3e112e0be826d695L    # 1.0E-9

    move-object v0, v8

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/distribution/WeibullDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;DDD)V

    invoke-virtual {v8}, Lorg/apache/commons/math3/distribution/AbstractRealDistribution;->sample()D

    move-result-wide p0

    return-wide p0
.end method

.method public nextZipf(ID)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/distribution/ZipfDistribution;

    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/apache/commons/math3/distribution/ZipfDistribution;-><init>(Lorg/apache/commons/math3/random/RandomGenerator;ID)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/distribution/ZipfDistribution;->sample()I

    move-result p0

    return p0
.end method

.method public reSeed()V
    .locals 5

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p0

    int-to-long v3, p0

    add-long/2addr v1, v3

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(J)V

    return-void
.end method

.method public reSeed(J)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getRandomGenerator()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(J)V

    return-void
.end method

.method public reSeedSecure()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getSecRan()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-interface {p0, v0, v1}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(J)V

    return-void
.end method

.method public reSeedSecure(J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/math3/random/RandomDataGenerator;->getSecRan()Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object p0

    invoke-interface {p0, p1, p2}, Lorg/apache/commons/math3/random/RandomGenerator;->setSeed(J)V

    return-void
.end method

.method public setSecureAlgorithm(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/NoSuchProviderException;
        }
    .end annotation

    invoke-static {p1, p2}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljava/security/SecureRandom;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/math3/random/RandomGeneratorFactory;->createRandomGenerator(Ljava/util/Random;)Lorg/apache/commons/math3/random/RandomGenerator;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/random/RandomDataGenerator;->secRand:Lorg/apache/commons/math3/random/RandomGenerator;

    return-void
.end method
