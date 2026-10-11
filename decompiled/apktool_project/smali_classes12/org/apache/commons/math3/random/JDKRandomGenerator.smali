.class public Lorg/apache/commons/math3/random/JDKRandomGenerator;
.super Ljava/util/Random;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomGenerator;


# static fields
.field private static final serialVersionUID:J = -0x6b7cc0d4328bbc7eL


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/util/Random;-><init>()V

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/random/JDKRandomGenerator;->setSeed(I)V

    return-void
.end method


# virtual methods
.method public setSeed(I)V
    .locals 2

    int-to-long v0, p1

    .line 1
    invoke-virtual {p0, v0, v1}, Ljava/util/Random;->setSeed(J)V

    return-void
.end method

.method public setSeed([I)V
    .locals 2

    .line 2
    invoke-static {p1}, Lorg/apache/commons/math3/random/RandomGeneratorFactory;->convertToLong([I)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Ljava/util/Random;->setSeed(J)V

    return-void
.end method
