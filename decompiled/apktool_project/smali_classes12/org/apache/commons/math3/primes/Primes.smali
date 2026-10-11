.class public Lorg/apache/commons/math3/primes/Primes;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isPrime(I)Z
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ge p0, v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/sunia/HTREnginev2/sum;->a:[I

    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_3

    aget v4, v0, v3

    rem-int v5, p0, v4

    if-nez v5, :cond_2

    if-ne p0, v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-static {p0}, Lcom/sunia/HTREnginev2/sum;->b(I)Z

    move-result p0

    return p0
.end method

.method public static nextPrime(I)I
    .locals 3

    if-ltz p0, :cond_7

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x1

    or-int/2addr p0, v1

    if-ne p0, v1, :cond_1

    return v0

    :cond_1
    invoke-static {p0}, Lorg/apache/commons/math3/primes/Primes;->isPrime(I)Z

    move-result v0

    if-eqz v0, :cond_2

    return p0

    :cond_2
    rem-int/lit8 v0, p0, 0x3

    if-nez v0, :cond_3

    add-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_3
    if-ne v1, v0, :cond_5

    :cond_4
    add-int/lit8 p0, p0, 0x4

    :cond_5
    :goto_0
    invoke-static {p0}, Lorg/apache/commons/math3/primes/Primes;->isPrime(I)Z

    move-result v0

    if-eqz v0, :cond_6

    return p0

    :cond_6
    add-int/lit8 p0, p0, 0x2

    invoke-static {p0}, Lorg/apache/commons/math3/primes/Primes;->isPrime(I)Z

    move-result v0

    if-eqz v0, :cond_4

    return p0

    :cond_7
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_TOO_SMALL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {p0, v2}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method

.method public static primeFactors(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    if-lt p0, v0, :cond_0

    invoke-static {p0}, Lcom/sunia/HTREnginev2/sum;->d(I)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v1, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_TOO_SMALL:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {p0, v0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v1, v2, p0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v1
.end method
