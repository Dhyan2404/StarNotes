.class public final Lorg/apache/commons/math3/distribution/ZipfDistribution$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/distribution/ZipfDistribution;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:D

.field public final b:I

.field public final c:D

.field public final d:D

.field public final e:D


# direct methods
.method public constructor <init>(ID)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;->a:D

    iput p1, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;->b:I

    const-wide/high16 p2, 0x3ff8000000000000L    # 1.5

    invoke-virtual {p0, p2, p3}, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;->b(D)D

    move-result-wide p2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p2, v0

    iput-wide p2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;->c:D

    int-to-double p1, p1

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    add-double/2addr p1, v0

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;->b(D)D

    move-result-wide p1

    iput-wide p1, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;->d:D

    const-wide/high16 p1, 0x4004000000000000L    # 2.5

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;->b(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;->a(D)D

    move-result-wide v2

    sub-double/2addr p1, v2

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;->c(D)D

    move-result-wide p1

    sub-double/2addr v0, p1

    iput-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;->e:D

    return-void
.end method

.method public static d(D)D
    .locals 4

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->log1p(D)D

    move-result-wide v0

    div-double/2addr v0, p0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    mul-double/2addr v0, p0

    const-wide v2, 0x3fd5555555555555L    # 0.3333333333333333

    sub-double/2addr v2, v0

    mul-double/2addr v2, p0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    sub-double/2addr v0, v2

    mul-double/2addr p0, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p0

    return-wide v0
.end method

.method public static e(D)D
    .locals 6

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/util/FastMath;->expm1(D)D

    move-result-wide v0

    div-double/2addr v0, p0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v0, p0

    const-wide v2, 0x3fd5555555555555L    # 0.3333333333333333

    mul-double/2addr v2, p0

    const-wide/high16 v4, 0x3fd0000000000000L    # 0.25

    mul-double/2addr p0, v4

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr p0, v4

    mul-double/2addr v2, p0

    add-double/2addr v2, v4

    mul-double/2addr v0, v2

    add-double/2addr v0, v4

    return-wide v0
.end method


# virtual methods
.method public final a(D)D
    .locals 2

    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;->a:D

    neg-double v0, v0

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p0

    mul-double/2addr v0, p0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public final b(D)D
    .locals 4

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;->a:D

    sub-double/2addr v0, v2

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;->e(D)D

    move-result-wide v0

    mul-double/2addr v0, p1

    return-wide v0
.end method

.method public final c(D)D
    .locals 4

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iget-wide v2, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;->a:D

    sub-double/2addr v0, v2

    mul-double/2addr v0, p1

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    move-wide v0, v2

    :cond_0
    invoke-static {v0, v1}, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;->d(D)D

    move-result-wide v0

    mul-double/2addr v0, p1

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->exp(D)D

    move-result-wide p0

    return-wide p0
.end method

.method public f(Lorg/apache/commons/math3/random/RandomGenerator;)I
    .locals 11

    :cond_0
    iget-wide v0, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;->d:D

    invoke-interface {p1}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v2

    iget-wide v4, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;->c:D

    iget-wide v6, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;->d:D

    sub-double/2addr v4, v6

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;->c(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double v6, v2, v4

    double-to-int v6, v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_1

    :goto_0
    move v6, v7

    goto :goto_1

    :cond_1
    iget v7, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;->b:I

    if-le v6, v7, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    int-to-double v7, v6

    sub-double v2, v7, v2

    iget-wide v9, p0, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;->e:D

    cmpg-double v2, v2, v9

    if-lez v2, :cond_3

    add-double/2addr v4, v7

    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;->b(D)D

    move-result-wide v2

    invoke-virtual {p0, v7, v8}, Lorg/apache/commons/math3/distribution/ZipfDistribution$a;->a(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    :cond_3
    return v6
.end method
