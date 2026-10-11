.class public Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;
.super Lorg/apache/commons/math3/stat/correlation/Covariance;
.source "SourceFile"


# instance fields
.field public c:[Lcom/sunia/HTREnginev2/zzm;

.field public d:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 2
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/correlation/Covariance;-><init>()V

    .line 3
    iput p1, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->d:I

    add-int/lit8 v0, p1, 0x1

    mul-int/2addr p1, v0

    .line 4
    div-int/lit8 p1, p1, 0x2

    new-array p1, p1, [Lcom/sunia/HTREnginev2/zzm;

    iput-object p1, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->c:[Lcom/sunia/HTREnginev2/zzm;

    .line 5
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->d(Z)V

    return-void
.end method


# virtual methods
.method public append(Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    iget v0, p1, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->d:I

    iget v1, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->d:I

    if-ne v0, v1, :cond_2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->d:I

    if-ge v0, v1, :cond_1

    move v1, v0

    :goto_1
    iget v2, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->d:I

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->b(II)Lcom/sunia/HTREnginev2/zzm;

    move-result-object v2

    invoke-virtual {p1, v0, v1}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->b(II)Lcom/sunia/HTREnginev2/zzm;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sunia/HTREnginev2/zzm;->a(Lcom/sunia/HTREnginev2/zzm;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget p1, p1, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->d:I

    iget p0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->d:I

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public final b(II)Lcom/sunia/HTREnginev2/zzm;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->c:[Lcom/sunia/HTREnginev2/zzm;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->c(II)I

    move-result p0

    aget-object p0, v0, p0

    return-object p0
.end method

.method public final c(II)I
    .locals 0

    if-ge p2, p1, :cond_0

    add-int/lit8 p0, p1, 0x1

    mul-int/2addr p1, p0

    div-int/lit8 p1, p1, 0x2

    add-int/2addr p1, p2

    goto :goto_0

    :cond_0
    add-int/lit8 p0, p2, 0x1

    mul-int/2addr p2, p0

    div-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    :goto_0
    return p1
.end method

.method public final d(Z)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->d:I

    if-ge v1, v2, :cond_1

    move v2, v0

    :goto_1
    iget v3, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->d:I

    if-ge v2, v3, :cond_0

    new-instance v3, Lcom/sunia/HTREnginev2/zzm;

    invoke-direct {v3, p1}, Lcom/sunia/HTREnginev2/zzm;-><init>(Z)V

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->e(IILcom/sunia/HTREnginev2/zzm;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e(IILcom/sunia/HTREnginev2/zzm;)V
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->c:[Lcom/sunia/HTREnginev2/zzm;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->c(II)I

    move-result p0

    aput-object p3, v0, p0

    return-void
.end method

.method public getCovariance(II)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->b(II)Lcom/sunia/HTREnginev2/zzm;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/zzm;->c()D

    move-result-wide p0

    return-wide p0
.end method

.method public getCovarianceMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->getData()[[D

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public getData()[[D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    iget v0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->d:I

    filled-new-array {v0, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->d:I

    if-ge v2, v3, :cond_1

    move v3, v1

    :goto_1
    iget v4, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->d:I

    if-ge v3, v4, :cond_0

    aget-object v4, v0, v2

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->b(II)Lcom/sunia/HTREnginev2/zzm;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sunia/HTREnginev2/zzm;->c()D

    move-result-wide v5

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getN()I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    new-instance p0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public increment([D)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    array-length v0, p1

    iget v1, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->d:I

    if-ne v0, v1, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    move v2, v1

    :goto_1
    if-ge v2, v0, :cond_0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->b(II)Lcom/sunia/HTREnginev2/zzm;

    move-result-object v3

    aget-wide v4, p1, v1

    aget-wide v6, p1, v2

    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/sunia/HTREnginev2/zzm;->d(DD)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    iget p0, p0, Lorg/apache/commons/math3/stat/correlation/StorelessCovariance;->d:I

    invoke-direct {p1, v0, p0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1
.end method
