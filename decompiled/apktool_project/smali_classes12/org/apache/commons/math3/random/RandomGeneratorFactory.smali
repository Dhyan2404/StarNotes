.class public Lorg/apache/commons/math3/random/RandomGeneratorFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static convertToLong([I)J
    .locals 7

    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_0

    aget v4, p0, v3

    const-wide v5, 0xfffffffbL

    mul-long/2addr v1, v5

    int-to-long v4, v4

    add-long/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-wide v1
.end method

.method public static createRandomGenerator(Ljava/util/Random;)Lorg/apache/commons/math3/random/RandomGenerator;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$a;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/random/RandomGeneratorFactory$a;-><init>(Ljava/util/Random;)V

    return-object v0
.end method
