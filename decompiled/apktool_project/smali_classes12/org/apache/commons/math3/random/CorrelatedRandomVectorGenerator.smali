.class public Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomVectorGenerator;


# instance fields
.field public final a:[D

.field public final b:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

.field public final c:[D

.field public final d:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;DLorg/apache/commons/math3/random/NormalizedRandomGenerator;)V
    .locals 5

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    .line 12
    new-array v1, v0, [D

    iput-object v1, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->a:[D

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 13
    iget-object v2, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->a:[D

    const-wide/16 v3, 0x0

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    .line 15
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->getRootMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 16
    iput-object p4, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->b:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

    .line 17
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->getRank()I

    move-result p1

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->c:[D

    return-void
.end method

.method public constructor <init>([DLorg/apache/commons/math3/linear/RealMatrix;DLorg/apache/commons/math3/random/NormalizedRandomGenerator;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    .line 3
    array-length v1, p1

    if-ne v1, v0, :cond_0

    .line 4
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->a:[D

    .line 5
    new-instance p1, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;

    invoke-direct {p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    .line 6
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->getRootMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p2

    iput-object p2, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 7
    iput-object p5, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->b:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

    .line 8
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->getRank()I

    move-result p1

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->c:[D

    return-void

    .line 9
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method


# virtual methods
.method public getGenerator()Lorg/apache/commons/math3/random/NormalizedRandomGenerator;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->b:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

    return-object p0
.end method

.method public getRank()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->c:[D

    array-length p0, p0

    return p0
.end method

.method public getRootMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public nextVector()[D
    .locals 11

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->c:[D

    array-length v3, v2

    if-ge v1, v3, :cond_0

    iget-object v3, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->b:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

    invoke-interface {v3}, Lorg/apache/commons/math3/random/NormalizedRandomGenerator;->nextNormalizedDouble()D

    move-result-wide v3

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->a:[D

    array-length v1, v1

    new-array v2, v1, [D

    move v3, v0

    :goto_1
    if-ge v3, v1, :cond_2

    iget-object v4, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->a:[D

    aget-wide v4, v4, v3

    aput-wide v4, v2, v3

    move v4, v0

    :goto_2
    iget-object v5, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v5}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v5

    if-ge v4, v5, :cond_1

    aget-wide v5, v2, v3

    iget-object v7, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v7, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v7

    iget-object v9, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->c:[D

    aget-wide v9, v9, v4

    mul-double/2addr v7, v9

    add-double/2addr v5, v7

    aput-wide v5, v2, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-object v2
.end method
