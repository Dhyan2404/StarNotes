.class public Lorg/apache/commons/math3/linear/LUDecomposition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/LUDecomposition$b;
    }
.end annotation


# static fields
.field public static final h:D = 1.0E-11


# instance fields
.field public final a:[[D

.field public final b:[I

.field public c:Z

.field public d:Z

.field public e:Lorg/apache/commons/math3/linear/RealMatrix;

.field public f:Lorg/apache/commons/math3/linear/RealMatrix;

.field public g:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2

    const-wide v0, 0x3da5fd7fe1796495L    # 1.0E-11

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/LUDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 17

    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->isSquare()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    .line 5
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v2

    iput-object v2, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->a:[[D

    .line 6
    new-array v2, v1, [I

    iput-object v2, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->b:[I

    const/4 v2, 0x0

    .line 7
    iput-object v2, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 8
    iput-object v2, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 9
    iput-object v2, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->g:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    .line 10
    iget-object v4, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->b:[I

    aput v3, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 11
    iput-boolean v3, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->c:Z

    .line 12
    iput-boolean v2, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->d:Z

    move v4, v2

    :goto_1
    if-ge v4, v1, :cond_a

    move v5, v2

    :goto_2
    if-ge v5, v4, :cond_2

    .line 13
    iget-object v6, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->a:[[D

    aget-object v6, v6, v5

    .line 14
    aget-wide v7, v6, v4

    move v9, v2

    :goto_3
    if-ge v9, v5, :cond_1

    .line 15
    aget-wide v10, v6, v9

    iget-object v12, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->a:[[D

    aget-object v12, v12, v9

    aget-wide v12, v12, v4

    mul-double/2addr v10, v12

    sub-double/2addr v7, v10

    add-int/lit8 v9, v9, 0x1

    goto :goto_3

    .line 16
    :cond_1
    aput-wide v7, v6, v4

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    const-wide/high16 v5, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move v7, v4

    move v8, v7

    :goto_4
    if-ge v7, v1, :cond_5

    .line 17
    iget-object v9, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->a:[[D

    aget-object v9, v9, v7

    .line 18
    aget-wide v10, v9, v4

    move v12, v2

    :goto_5
    if-ge v12, v4, :cond_3

    .line 19
    aget-wide v13, v9, v12

    iget-object v15, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->a:[[D

    aget-object v15, v15, v12

    aget-wide v15, v15, v4

    mul-double/2addr v13, v15

    sub-double/2addr v10, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 20
    :cond_3
    aput-wide v10, v9, v4

    .line 21
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v12

    cmpl-double v9, v12, v5

    if-lez v9, :cond_4

    .line 22
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    move v8, v7

    :cond_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 23
    :cond_5
    iget-object v5, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->a:[[D

    aget-object v5, v5, v8

    aget-wide v5, v5, v4

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v5

    cmpg-double v5, v5, p2

    if-gez v5, :cond_6

    .line 24
    iput-boolean v3, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->d:Z

    return-void

    :cond_6
    if-eq v8, v4, :cond_8

    .line 25
    iget-object v5, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->a:[[D

    aget-object v6, v5, v8

    .line 26
    aget-object v5, v5, v4

    move v7, v2

    :goto_6
    if-ge v7, v1, :cond_7

    .line 27
    aget-wide v9, v6, v7

    .line 28
    aget-wide v11, v5, v7

    aput-wide v11, v6, v7

    .line 29
    aput-wide v9, v5, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 30
    :cond_7
    iget-object v5, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->b:[I

    aget v6, v5, v8

    .line 31
    aget v7, v5, v4

    aput v7, v5, v8

    .line 32
    aput v6, v5, v4

    .line 33
    iget-boolean v5, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->c:Z

    xor-int/2addr v5, v3

    iput-boolean v5, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->c:Z

    .line 34
    :cond_8
    iget-object v5, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->a:[[D

    aget-object v5, v5, v4

    aget-wide v5, v5, v4

    add-int/lit8 v7, v4, 0x1

    move v8, v7

    :goto_7
    if-ge v8, v1, :cond_9

    .line 35
    iget-object v9, v0, Lorg/apache/commons/math3/linear/LUDecomposition;->a:[[D

    aget-object v9, v9, v8

    aget-wide v10, v9, v4

    div-double/2addr v10, v5

    aput-wide v10, v9, v4

    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_9
    move v4, v7

    goto/16 :goto_1

    :cond_a
    return-void

    .line 36
    :cond_b
    new-instance v0, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw v0
.end method


# virtual methods
.method public getDeterminant()D
    .locals 6

    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->d:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->b:[I

    array-length v0, v0

    iget-boolean v1, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->c:Z

    if-eqz v1, :cond_1

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_1
    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    :goto_0
    const/4 v3, 0x0

    :goto_1
    if-ge v3, v0, :cond_2

    iget-object v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->a:[[D

    aget-object v4, v4, v3

    aget-wide v4, v4, v3

    mul-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return-wide v1
.end method

.method public getL()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 8

    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->b:[I

    array-length v0, v0

    invoke-static {v0, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->a:[[D

    aget-object v3, v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_0

    iget-object v5, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    aget-wide v6, v3, v4

    invoke-interface {v5, v2, v4, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v3, v2, v2, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public getP()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 6

    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->g:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->d:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->b:[I

    array-length v0, v0

    invoke-static {v0, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->g:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->g:Lorg/apache/commons/math3/linear/RealMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->b:[I

    aget v3, v3, v1

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-interface {v2, v1, v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->g:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public getPivot()[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->b:[I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 4

    new-instance v0, Lorg/apache/commons/math3/linear/LUDecomposition$b;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->a:[[D

    iget-object v2, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->b:[I

    iget-boolean p0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->d:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, p0, v3}, Lorg/apache/commons/math3/linear/LUDecomposition$b;-><init>([[D[IZLorg/apache/commons/math3/linear/LUDecomposition$a;)V

    return-object v0
.end method

.method public getU()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->b:[I

    array-length v0, v0

    invoke-static {v0, v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->a:[[D

    aget-object v2, v2, v1

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    aget-wide v5, v2, v3

    invoke-interface {v4, v1, v3, v5, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/commons/math3/linear/LUDecomposition;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method
