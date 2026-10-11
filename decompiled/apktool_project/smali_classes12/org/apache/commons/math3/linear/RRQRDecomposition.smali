.class public Lorg/apache/commons/math3/linear/RRQRDecomposition;
.super Lorg/apache/commons/math3/linear/QRDecomposition;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/RRQRDecomposition$b;
    }
.end annotation


# instance fields
.field public h:[I

.field public i:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/RRQRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    return-void
.end method


# virtual methods
.method public decompose([[D)V
    .locals 3

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->h:[I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->h:[I

    array-length v2, v1

    if-ge v0, v2, :cond_0

    aput v0, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lorg/apache/commons/math3/linear/QRDecomposition;->decompose([[D)V

    return-void
.end method

.method public getP()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->h:[I

    array-length v0, v0

    invoke-static {v0, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->h:[I

    aget v3, v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v2, v3, v1, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->i:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public getRank(D)I
    .locals 11

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getR()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getFrobeniusNorm()D

    move-result-wide v2

    const/4 v4, 0x1

    move-wide v5, v2

    :goto_0
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    if-ge v4, v7, :cond_1

    add-int/lit8 v7, v0, -0x1

    add-int/lit8 v8, v1, -0x1

    invoke-interface {p0, v4, v7, v4, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->getSubMatrix(IIII)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v7

    invoke-interface {v7}, Lorg/apache/commons/math3/linear/RealMatrix;->getFrobeniusNorm()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v9, v7, v9

    if-eqz v9, :cond_1

    div-double v5, v7, v5

    mul-double/2addr v5, v2

    cmpg-double v5, v5, p1

    if-gez v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    move-wide v5, v7

    goto :goto_0

    :cond_1
    :goto_1
    return v4
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 3

    new-instance v0, Lorg/apache/commons/math3/linear/RRQRDecomposition$b;

    invoke-super {p0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RRQRDecomposition;->getP()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/commons/math3/linear/RRQRDecomposition$b;-><init>(Lorg/apache/commons/math3/linear/DecompositionSolver;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RRQRDecomposition$a;)V

    return-object v0
.end method

.method public performHouseholderReflection(I[[D)V
    .locals 11

    const-wide/16 v0, 0x0

    move v2, p1

    move v3, v2

    move-wide v4, v0

    :goto_0
    array-length v6, p2

    if-ge v2, v6, :cond_2

    const/4 v6, 0x0

    move-wide v7, v0

    :goto_1
    aget-object v9, p2, v2

    array-length v10, v9

    if-ge v6, v10, :cond_0

    aget-wide v9, v9, v6

    mul-double/2addr v9, v9

    add-double/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    cmpl-double v6, v7, v4

    if-lez v6, :cond_1

    move v3, v2

    move-wide v4, v7

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eq v3, p1, :cond_3

    aget-object v0, p2, p1

    aget-object v1, p2, v3

    aput-object v1, p2, p1

    aput-object v0, p2, v3

    iget-object v0, p0, Lorg/apache/commons/math3/linear/RRQRDecomposition;->h:[I

    aget v1, v0, p1

    aget v2, v0, v3

    aput v2, v0, p1

    aput v1, v0, v3

    :cond_3
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/QRDecomposition;->performHouseholderReflection(I[[D)V

    return-void
.end method
