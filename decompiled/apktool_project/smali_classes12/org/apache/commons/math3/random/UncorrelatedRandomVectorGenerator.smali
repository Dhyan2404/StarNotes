.class public Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomVectorGenerator;


# instance fields
.field public final a:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

.field public final b:[D

.field public final c:[D


# direct methods
.method public constructor <init>(ILorg/apache/commons/math3/random/NormalizedRandomGenerator;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->b:[D

    .line 9
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->c:[D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 10
    invoke-static {p1, v0, v1}, Ljava/util/Arrays;->fill([DD)V

    .line 11
    iput-object p2, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->a:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

    return-void
.end method

.method public constructor <init>([D[DLorg/apache/commons/math3/random/NormalizedRandomGenerator;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    .line 3
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->b:[D

    .line 4
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->c:[D

    .line 5
    iput-object p3, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->a:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

    return-void

    .line 6
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    array-length p2, p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method


# virtual methods
.method public nextVector()[D
    .locals 9

    iget-object v0, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->b:[D

    array-length v0, v0

    new-array v1, v0, [D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    iget-object v3, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->b:[D

    aget-wide v3, v3, v2

    iget-object v5, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->c:[D

    aget-wide v5, v5, v2

    iget-object v7, p0, Lorg/apache/commons/math3/random/UncorrelatedRandomVectorGenerator;->a:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

    invoke-interface {v7}, Lorg/apache/commons/math3/random/NormalizedRandomGenerator;->nextNormalizedDouble()D

    move-result-wide v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method
