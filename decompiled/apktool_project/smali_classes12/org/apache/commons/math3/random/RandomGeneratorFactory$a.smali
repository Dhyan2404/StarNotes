.class public final Lorg/apache/commons/math3/random/RandomGeneratorFactory$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/random/RandomGeneratorFactory;->createRandomGenerator(Ljava/util/Random;)Lorg/apache/commons/math3/random/RandomGenerator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field public final synthetic e:Ljava/util/Random;


# direct methods
.method public constructor <init>(Ljava/util/Random;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$a;->e:Ljava/util/Random;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public nextBoolean()Z
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$a;->e:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextBoolean()Z

    move-result p0

    return p0
.end method

.method public nextBytes([B)V
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$a;->e:Ljava/util/Random;

    invoke-virtual {p0, p1}, Ljava/util/Random;->nextBytes([B)V

    return-void
.end method

.method public nextDouble()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$a;->e:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextFloat()F
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$a;->e:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextFloat()F

    move-result p0

    return p0
.end method

.method public nextGaussian()D
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$a;->e:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextGaussian()D

    move-result-wide v0

    return-wide v0
.end method

.method public nextInt()I
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$a;->e:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextInt()I

    move-result p0

    return p0
.end method

.method public nextInt(I)I
    .locals 0

    if-lez p1, :cond_0

    .line 2
    iget-object p0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$a;->e:Ljava/util/Random;

    invoke-virtual {p0, p1}, Ljava/util/Random;->nextInt(I)I

    move-result p0

    return p0

    .line 3
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;-><init>(Ljava/lang/Number;)V

    throw p0
.end method

.method public nextLong()J
    .locals 2

    iget-object p0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$a;->e:Ljava/util/Random;

    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public setSeed(I)V
    .locals 2

    .line 1
    iget-object p0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$a;->e:Ljava/util/Random;

    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/util/Random;->setSeed(J)V

    return-void
.end method

.method public setSeed(J)V
    .locals 0

    .line 3
    iget-object p0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$a;->e:Ljava/util/Random;

    invoke-virtual {p0, p1, p2}, Ljava/util/Random;->setSeed(J)V

    return-void
.end method

.method public setSeed([I)V
    .locals 2

    .line 2
    iget-object p0, p0, Lorg/apache/commons/math3/random/RandomGeneratorFactory$a;->e:Ljava/util/Random;

    invoke-static {p1}, Lorg/apache/commons/math3/random/RandomGeneratorFactory;->convertToLong([I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Random;->setSeed(J)V

    return-void
.end method
