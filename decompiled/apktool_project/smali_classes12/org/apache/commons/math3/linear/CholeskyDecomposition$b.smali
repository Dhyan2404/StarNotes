.class public Lorg/apache/commons/math3/linear/CholeskyDecomposition$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/linear/DecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/CholeskyDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:[[D


# direct methods
.method public constructor <init>([[D)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$b;->a:[[D

    return-void
.end method

.method public synthetic constructor <init>([[DLorg/apache/commons/math3/linear/CholeskyDecomposition$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/CholeskyDecomposition$b;-><init>([[D)V

    return-void
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$b;->a:[[D

    array-length v0, v0

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealIdentityMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/CholeskyDecomposition$b;->solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public isNonSingular()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 17

    move-object/from16 v0, p0

    .line 11
    iget-object v1, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$b;->a:[[D

    array-length v1, v1

    .line 12
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v2

    if-ne v2, v1, :cond_8

    .line 13
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v2

    .line 14
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :cond_0
    if-ge v5, v1, :cond_3

    .line 15
    iget-object v6, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$b;->a:[[D

    aget-object v6, v6, v5

    .line 16
    aget-wide v7, v6, v5

    .line 17
    aget-object v9, v3, v5

    move v10, v4

    :goto_0
    if-ge v10, v2, :cond_1

    .line 18
    aget-wide v11, v9, v10

    div-double/2addr v11, v7

    aput-wide v11, v9, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v5, v5, 0x1

    move v7, v5

    :goto_1
    if-ge v7, v1, :cond_0

    .line 19
    aget-object v8, v3, v7

    .line 20
    aget-wide v10, v6, v7

    move v12, v4

    :goto_2
    if-ge v12, v2, :cond_2

    .line 21
    aget-wide v13, v8, v12

    aget-wide v15, v9, v12

    mul-double/2addr v15, v10

    sub-double/2addr v13, v15

    aput-wide v13, v8, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, -0x1

    :goto_3
    if-ltz v1, :cond_7

    .line 22
    iget-object v5, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$b;->a:[[D

    aget-object v5, v5, v1

    aget-wide v5, v5, v1

    .line 23
    aget-object v7, v3, v1

    move v8, v4

    :goto_4
    if-ge v8, v2, :cond_4

    .line 24
    aget-wide v9, v7, v8

    div-double/2addr v9, v5

    aput-wide v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    :cond_4
    move v5, v4

    :goto_5
    if-ge v5, v1, :cond_6

    .line 25
    aget-object v6, v3, v5

    .line 26
    iget-object v8, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$b;->a:[[D

    aget-object v8, v8, v5

    aget-wide v8, v8, v1

    move v10, v4

    :goto_6
    if-ge v10, v2, :cond_5

    .line 27
    aget-wide v11, v6, v10

    aget-wide v13, v7, v10

    mul-double/2addr v13, v8

    sub-double/2addr v11, v13

    aput-wide v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    add-int/lit8 v1, v1, -0x1

    goto :goto_3

    .line 28
    :cond_7
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[D)V

    return-object v0

    .line 29
    :cond_8
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v2

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$b;->a:[[D

    array-length v0, v0

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    if-ne v1, v0, :cond_4

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p1

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    if-ge v2, v0, :cond_1

    .line 4
    iget-object v3, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$b;->a:[[D

    aget-object v3, v3, v2

    .line 5
    aget-wide v4, p1, v2

    aget-wide v6, v3, v2

    div-double/2addr v4, v6

    aput-wide v4, p1, v2

    add-int/lit8 v2, v2, 0x1

    move v6, v2

    :goto_0
    if-ge v6, v0, :cond_0

    .line 6
    aget-wide v7, p1, v6

    aget-wide v9, v3, v6

    mul-double/2addr v9, v4

    sub-double/2addr v7, v9

    aput-wide v7, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    .line 7
    aget-wide v2, p1, v0

    iget-object v4, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$b;->a:[[D

    aget-object v4, v4, v0

    aget-wide v4, v4, v0

    div-double/2addr v2, v4

    aput-wide v2, p1, v0

    move v4, v1

    :goto_2
    if-ge v4, v0, :cond_2

    .line 8
    aget-wide v5, p1, v4

    iget-object v7, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$b;->a:[[D

    aget-object v7, v7, v4

    aget-wide v7, v7, v0

    mul-double/2addr v7, v2

    sub-double/2addr v5, v7

    aput-wide v5, p1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 9
    :cond_3
    new-instance p0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p0

    .line 10
    :cond_4
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method
