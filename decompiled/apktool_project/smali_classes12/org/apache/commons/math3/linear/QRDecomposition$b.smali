.class public Lorg/apache/commons/math3/linear/QRDecomposition$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/linear/DecompositionSolver;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/QRDecomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:[[D

.field public final b:[D

.field public final c:D


# direct methods
.method public constructor <init>([[D[DD)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition$b;->a:[[D

    .line 4
    iput-object p2, p0, Lorg/apache/commons/math3/linear/QRDecomposition$b;->b:[D

    .line 5
    iput-wide p3, p0, Lorg/apache/commons/math3/linear/QRDecomposition$b;->c:D

    return-void
.end method

.method public synthetic constructor <init>([[D[DDLorg/apache/commons/math3/linear/QRDecomposition$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/commons/math3/linear/QRDecomposition$b;-><init>([[D[DD)V

    return-void
.end method


# virtual methods
.method public getInverse()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition$b;->a:[[D

    const/4 v1, 0x0

    aget-object v0, v0, v1

    array-length v0, v0

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealIdentityMatrix(I)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/QRDecomposition$b;->solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p0

    return-object p0
.end method

.method public isNonSingular()Z
    .locals 8

    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition$b;->b:[D

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-wide v4, v0, v3

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    iget-wide v6, p0, Lorg/apache/commons/math3/linear/QRDecomposition$b;->c:D

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 25

    move-object/from16 v0, p0

    .line 20
    iget-object v1, v0, Lorg/apache/commons/math3/linear/QRDecomposition$b;->a:[[D

    array-length v2, v1

    const/4 v3, 0x0

    .line 21
    aget-object v1, v1, v3

    array-length v1, v1

    .line 22
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v4

    if-ne v4, v1, :cond_c

    .line 23
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/QRDecomposition$b;->isNonSingular()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 24
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v4

    add-int/lit8 v5, v4, 0x34

    add-int/lit8 v5, v5, -0x1

    const/16 v6, 0x34

    .line 25
    div-int/2addr v5, v6

    .line 26
    invoke-static {v2, v4}, Lorg/apache/commons/math3/linear/BlockRealMatrix;->createBlocksLayout(II)[[D

    move-result-object v7

    .line 27
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v8

    filled-new-array {v8, v6}, [I

    move-result-object v8

    sget-object v9, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [[D

    new-array v6, v6, [D

    move v15, v3

    :goto_0
    if-ge v15, v5, :cond_a

    mul-int/lit8 v12, v15, 0x34

    add-int/lit8 v9, v12, 0x34

    .line 28
    invoke-static {v9, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v9

    sub-int v14, v9, v12

    const/4 v10, 0x0

    add-int/lit8 v11, v1, -0x1

    add-int/lit8 v13, v9, -0x1

    move-object/from16 v9, p1

    move/from16 v16, v4

    move v4, v14

    move-object v14, v8

    .line 29
    invoke-interface/range {v9 .. v14}, Lorg/apache/commons/math3/linear/RealMatrix;->copySubMatrix(IIII[[D)V

    move v9, v3

    .line 30
    :goto_1
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    if-ge v9, v10, :cond_5

    .line 31
    iget-object v10, v0, Lorg/apache/commons/math3/linear/QRDecomposition$b;->a:[[D

    aget-object v10, v10, v9

    .line 32
    iget-object v13, v0, Lorg/apache/commons/math3/linear/QRDecomposition$b;->b:[D

    aget-wide v13, v13, v9

    aget-wide v17, v10, v9

    mul-double v13, v13, v17

    div-double/2addr v11, v13

    const-wide/16 v13, 0x0

    .line 33
    invoke-static {v6, v3, v4, v13, v14}, Ljava/util/Arrays;->fill([DIID)V

    move v13, v9

    :goto_2
    if-ge v13, v1, :cond_1

    .line 34
    aget-wide v17, v10, v13

    .line 35
    aget-object v14, v8, v13

    :goto_3
    if-ge v3, v4, :cond_0

    .line 36
    aget-wide v19, v6, v3

    aget-wide v21, v14, v3

    mul-double v21, v21, v17

    add-double v19, v19, v21

    aput-wide v19, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v13, v13, 0x1

    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v4, :cond_2

    .line 37
    aget-wide v13, v6, v3

    mul-double/2addr v13, v11

    aput-wide v13, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_2
    move v3, v9

    :goto_5
    if-ge v3, v1, :cond_4

    .line 38
    aget-wide v11, v10, v3

    .line 39
    aget-object v13, v8, v3

    const/4 v14, 0x0

    :goto_6
    if-ge v14, v4, :cond_3

    .line 40
    aget-wide v17, v13, v14

    aget-wide v19, v6, v14

    mul-double v19, v19, v11

    add-double v17, v17, v19

    aput-wide v17, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_6

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x0

    goto :goto_1

    .line 41
    :cond_5
    iget-object v3, v0, Lorg/apache/commons/math3/linear/QRDecomposition$b;->b:[D

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    :goto_7
    if-ltz v3, :cond_9

    .line 42
    div-int/lit8 v9, v3, 0x34

    mul-int/lit8 v10, v9, 0x34

    .line 43
    iget-object v13, v0, Lorg/apache/commons/math3/linear/QRDecomposition$b;->b:[D

    aget-wide v13, v13, v3

    div-double v13, v11, v13

    .line 44
    aget-object v17, v8, v3

    mul-int/2addr v9, v5

    add-int/2addr v9, v15

    .line 45
    aget-object v9, v7, v9

    sub-int v10, v3, v10

    mul-int/2addr v10, v4

    const/4 v11, 0x0

    :goto_8
    if-ge v11, v4, :cond_6

    .line 46
    aget-wide v21, v17, v11

    mul-double v21, v21, v13

    aput-wide v21, v17, v11

    add-int/lit8 v12, v10, 0x1

    .line 47
    aput-wide v21, v9, v10

    add-int/lit8 v11, v11, 0x1

    move v10, v12

    goto :goto_8

    .line 48
    :cond_6
    iget-object v9, v0, Lorg/apache/commons/math3/linear/QRDecomposition$b;->a:[[D

    aget-object v9, v9, v3

    const/4 v10, 0x0

    :goto_9
    if-ge v10, v3, :cond_8

    .line 49
    aget-wide v11, v9, v10

    .line 50
    aget-object v13, v8, v10

    const/4 v14, 0x0

    :goto_a
    if-ge v14, v4, :cond_7

    .line 51
    aget-wide v21, v13, v14

    aget-wide v23, v17, v14

    mul-double v23, v23, v11

    sub-double v21, v21, v23

    aput-wide v21, v13, v14

    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    :cond_7
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    :cond_8
    add-int/lit8 v3, v3, -0x1

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    goto :goto_7

    :cond_9
    add-int/lit8 v15, v15, 0x1

    move/from16 v4, v16

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_a
    move/from16 v16, v4

    .line 52
    new-instance v0, Lorg/apache/commons/math3/linear/BlockRealMatrix;

    move/from16 v1, v16

    const/4 v3, 0x0

    invoke-direct {v0, v2, v1, v7, v3}, Lorg/apache/commons/math3/linear/BlockRealMatrix;-><init>(II[[DZ)V

    return-object v0

    .line 53
    :cond_b
    new-instance v0, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {v0}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw v0

    .line 54
    :cond_c
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v2

    invoke-direct {v0, v2, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 13

    .line 1
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition$b;->a:[[D

    array-length v1, v0

    const/4 v2, 0x0

    .line 2
    aget-object v0, v0, v2

    array-length v0, v0

    .line 3
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v3

    if-ne v3, v0, :cond_6

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/QRDecomposition$b;->isNonSingular()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 5
    new-array v3, v1, [D

    .line 6
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p1

    move v4, v2

    .line 7
    :goto_0
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 8
    iget-object v5, p0, Lorg/apache/commons/math3/linear/QRDecomposition$b;->a:[[D

    aget-object v5, v5, v4

    const-wide/16 v6, 0x0

    move v8, v4

    :goto_1
    if-ge v8, v0, :cond_0

    .line 9
    aget-wide v9, p1, v8

    aget-wide v11, v5, v8

    mul-double/2addr v9, v11

    add-double/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 10
    :cond_0
    iget-object v8, p0, Lorg/apache/commons/math3/linear/QRDecomposition$b;->b:[D

    aget-wide v8, v8, v4

    aget-wide v10, v5, v4

    mul-double/2addr v8, v10

    div-double/2addr v6, v8

    move v8, v4

    :goto_2
    if-ge v8, v0, :cond_1

    .line 11
    aget-wide v9, p1, v8

    aget-wide v11, v5, v8

    mul-double/2addr v11, v6

    add-double/2addr v9, v11

    aput-wide v9, p1, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition$b;->b:[D

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    :goto_3
    if-ltz v0, :cond_4

    .line 13
    aget-wide v4, p1, v0

    iget-object v1, p0, Lorg/apache/commons/math3/linear/QRDecomposition$b;->b:[D

    aget-wide v6, v1, v0

    div-double/2addr v4, v6

    aput-wide v4, p1, v0

    .line 14
    iget-object v1, p0, Lorg/apache/commons/math3/linear/QRDecomposition$b;->a:[[D

    aget-object v1, v1, v0

    .line 15
    aput-wide v4, v3, v0

    move v6, v2

    :goto_4
    if-ge v6, v0, :cond_3

    .line 16
    aget-wide v7, p1, v6

    aget-wide v9, v1, v6

    mul-double/2addr v9, v4

    sub-double/2addr v7, v9

    aput-wide v7, p1, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 17
    :cond_4
    new-instance p0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {p0, v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object p0

    .line 18
    :cond_5
    new-instance p0, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw p0

    .line 19
    :cond_6
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result p1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method
