.class public Lorg/apache/commons/math3/linear/LUDecomposition$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/linear/DecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/LUDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:[[D

.field public final b:[I

.field public final c:Z


# direct methods
.method public constructor <init>([[D[IZ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/commons/math3/linear/LUDecomposition$b;->a:[[D

    .line 4
    iput-object p2, p0, Lorg/apache/commons/math3/linear/LUDecomposition$b;->b:[I

    .line 5
    iput-boolean p3, p0, Lorg/apache/commons/math3/linear/LUDecomposition$b;->c:Z

    return-void
.end method

.method public synthetic constructor <init>([[D[IZLorg/apache/commons/math3/linear/LUDecomposition$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/LUDecomposition$b;-><init>([[D[IZ)V

    return-void
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition$b;->b:[I

    array-length v0, v0

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealIdentityMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/LUDecomposition$b;->solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public isNonSingular()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/commons/math3/linear/LUDecomposition$b;->c:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 17

    move-object/from16 v0, p0

    .line 13
    iget-object v1, v0, Lorg/apache/commons/math3/linear/LUDecomposition$b;->b:[I

    array-length v1, v1

    .line 14
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v2

    if-ne v2, v1, :cond_a

    .line 15
    iget-boolean v2, v0, Lorg/apache/commons/math3/linear/LUDecomposition$b;->c:Z

    if-nez v2, :cond_9

    .line 16
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v2

    .line 17
    filled-new-array {v1, v2}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v1, :cond_1

    .line 18
    aget-object v6, v3, v5

    .line 19
    iget-object v7, v0, Lorg/apache/commons/math3/linear/LUDecomposition$b;->b:[I

    aget v7, v7, v5

    move v8, v4

    :goto_1
    if-ge v8, v2, :cond_0

    move-object/from16 v9, p1

    .line 20
    invoke-interface {v9, v7, v8}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v10

    aput-wide v10, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    move-object/from16 v9, p1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_2
    if-ge v5, v1, :cond_4

    .line 21
    aget-object v6, v3, v5

    add-int/lit8 v7, v5, 0x1

    move v8, v7

    :goto_3
    if-ge v8, v1, :cond_3

    .line 22
    aget-object v9, v3, v8

    .line 23
    iget-object v10, v0, Lorg/apache/commons/math3/linear/LUDecomposition$b;->a:[[D

    aget-object v10, v10, v8

    aget-wide v10, v10, v5

    move v12, v4

    :goto_4
    if-ge v12, v2, :cond_2

    .line 24
    aget-wide v13, v9, v12

    aget-wide v15, v6, v12

    mul-double/2addr v15, v10

    sub-double/2addr v13, v15

    aput-wide v13, v9, v12

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_3
    move v5, v7

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, -0x1

    :goto_5
    if-ltz v1, :cond_8

    .line 25
    aget-object v5, v3, v1

    .line 26
    iget-object v6, v0, Lorg/apache/commons/math3/linear/LUDecomposition$b;->a:[[D

    aget-object v6, v6, v1

    aget-wide v6, v6, v1

    move v8, v4

    :goto_6
    if-ge v8, v2, :cond_5

    .line 27
    aget-wide v9, v5, v8

    div-double/2addr v9, v6

    aput-wide v9, v5, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_6

    :cond_5
    move v6, v4

    :goto_7
    if-ge v6, v1, :cond_7

    .line 28
    aget-object v7, v3, v6

    .line 29
    iget-object v8, v0, Lorg/apache/commons/math3/linear/LUDecomposition$b;->a:[[D

    aget-object v8, v8, v6

    aget-wide v8, v8, v1

    move v10, v4

    :goto_8
    if-ge v10, v2, :cond_6

    .line 30
    aget-wide v11, v7, v10

    aget-wide v13, v5, v10

    mul-double/2addr v13, v8

    sub-double/2addr v11, v13

    aput-wide v11, v7, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_8

    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :cond_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_5

    .line 31
    :cond_8
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v0

    .line 32
    :cond_9
    new-instance v0, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v0

    :cond_a
    move-object/from16 v9, p1

    .line 33
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v2

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 11

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition$b;->b:[I

    array-length v0, v0

    .line 2
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v1

    if-ne v1, v0, :cond_6

    .line 3
    iget-boolean v1, p0, Lorg/apache/commons/math3/linear/LUDecomposition$b;->c:Z

    if-nez v1, :cond_5

    .line 4
    new-array v1, v0, [D

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 5
    iget-object v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition$b;->b:[I

    aget v4, v4, v3

    invoke-virtual {p1, v4}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v4

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_1
    if-ge p1, v0, :cond_2

    .line 6
    aget-wide v3, v1, p1

    add-int/lit8 v5, p1, 0x1

    move v6, v5

    :goto_2
    if-ge v6, v0, :cond_1

    .line 7
    aget-wide v7, v1, v6

    iget-object v9, p0, Lorg/apache/commons/math3/linear/LUDecomposition$b;->a:[[D

    aget-object v9, v9, v6

    aget-wide v9, v9, p1

    mul-double/2addr v9, v3

    sub-double/2addr v7, v9

    aput-wide v7, v1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_1
    move p1, v5

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_4

    .line 8
    aget-wide v3, v1, v0

    iget-object p1, p0, Lorg/apache/commons/math3/linear/LUDecomposition$b;->a:[[D

    aget-object p1, p1, v0

    aget-wide v5, p1, v0

    div-double/2addr v3, v5

    aput-wide v3, v1, v0

    move p1, v2

    :goto_4
    if-ge p1, v0, :cond_3

    .line 9
    aget-wide v5, v1, p1

    iget-object v7, p0, Lorg/apache/commons/math3/linear/LUDecomposition$b;->a:[[D

    aget-object v7, v7, p1

    aget-wide v7, v7, v0

    mul-double/2addr v7, v3

    sub-double/2addr v5, v7

    aput-wide v5, v1, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 10
    :cond_4
    new-instance p0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p0

    .line 11
    :cond_5
    new-instance p0, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw p0

    .line 12
    :cond_6
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method
