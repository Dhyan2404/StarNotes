.class public Lorg/apache/commons/math3/linear/CholeskyDecomposition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/CholeskyDecomposition$b;
    }
.end annotation


# static fields
.field public static final DEFAULT_ABSOLUTE_POSITIVITY_THRESHOLD:D = 1.0E-10

.field public static final DEFAULT_RELATIVE_SYMMETRY_THRESHOLD:D = 1.0E-15


# instance fields
.field public a:[[D

.field public b:Lorg/apache/commons/math3/linear/RealMatrix;

.field public c:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 6

    const-wide v2, 0x3cd203af9ee75616L    # 1.0E-15

    const-wide v4, 0x3ddb7cdfd9d7bdbbL    # 1.0E-10

    move-object v0, p0

    move-object v1, p1

    .line 1
    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/linear/CholeskyDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;DD)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;DD)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p2

    .line 2
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->isSquare()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 4
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v3

    .line 5
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object v4

    iput-object v4, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->a:[[D

    const/4 v4, 0x0

    .line 6
    iput-object v4, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->b:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 7
    iput-object v4, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    .line 8
    iget-object v6, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->a:[[D

    aget-object v6, v6, v5

    add-int/lit8 v7, v5, 0x1

    move v8, v7

    :goto_1
    if-ge v8, v3, :cond_1

    .line 9
    iget-object v9, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->a:[[D

    aget-object v9, v9, v8

    .line 10
    aget-wide v10, v6, v8

    .line 11
    aget-wide v12, v9, v5

    .line 12
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    move/from16 v16, v5

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    invoke-static {v14, v15, v4, v5}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v4

    mul-double/2addr v4, v1

    sub-double/2addr v10, v12

    .line 13
    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v10

    cmpl-double v4, v10, v4

    if-gtz v4, :cond_0

    const-wide/16 v4, 0x0

    .line 14
    aput-wide v4, v9, v16

    add-int/lit8 v8, v8, 0x1

    move/from16 v5, v16

    goto :goto_1

    .line 15
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/NonSymmetricMatrixException;

    move/from16 v4, v16

    invoke-direct {v0, v4, v8, v1, v2}, Lorg/apache/commons/math3/linear/NonSymmetricMatrixException;-><init>(IID)V

    throw v0

    :cond_1
    move v5, v7

    goto :goto_0

    :cond_2
    const/4 v12, 0x0

    :goto_2
    if-ge v12, v3, :cond_6

    .line 16
    iget-object v1, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->a:[[D

    aget-object v1, v1, v12

    .line 17
    aget-wide v4, v1, v12

    cmpg-double v2, v4, p4

    if-lez v2, :cond_5

    .line 18
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    aput-wide v4, v1, v12

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    div-double/2addr v6, v4

    add-int/lit8 v2, v3, -0x1

    :goto_3
    if-le v2, v12, :cond_4

    .line 19
    aget-wide v4, v1, v2

    mul-double/2addr v4, v6

    aput-wide v4, v1, v2

    .line 20
    iget-object v4, v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->a:[[D

    aget-object v4, v4, v2

    move v5, v2

    :goto_4
    if-ge v5, v3, :cond_3

    .line 21
    aget-wide v8, v4, v5

    aget-wide v10, v1, v2

    aget-wide v13, v1, v5

    mul-double/2addr v10, v13

    sub-double/2addr v8, v10

    aput-wide v8, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 22
    :cond_5
    new-instance v0, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;

    aget-wide v10, v1, v12

    move-object v9, v0

    move-wide/from16 v13, p4

    invoke-direct/range {v9 .. v14}, Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;-><init>(DID)V

    throw v0

    :cond_6
    return-void

    .line 23
    :cond_7
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
    .locals 5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->a:[[D

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v3, v3, v2

    aget-wide v3, v3, v2

    mul-double/2addr v3, v3

    mul-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method public getL()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->b:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->getLT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->b:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->b:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public getLT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->a:[[D

    invoke-static {v0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 2

    new-instance v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition$b;

    iget-object p0, p0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->a:[[D

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/CholeskyDecomposition$b;-><init>([[DLorg/apache/commons/math3/linear/CholeskyDecomposition$a;)V

    return-object v0
.end method
