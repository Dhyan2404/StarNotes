.class public Lorg/apache/commons/math3/linear/QRDecomposition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/QRDecomposition$b;
    }
.end annotation


# instance fields
.field public a:[[D

.field public b:[D

.field public c:Lorg/apache/commons/math3/linear/RealMatrix;

.field public d:Lorg/apache/commons/math3/linear/RealMatrix;

.field public e:Lorg/apache/commons/math3/linear/RealMatrix;

.field public f:Lorg/apache/commons/math3/linear/RealMatrix;

.field public final g:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p2, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->g:D

    .line 4
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result p2

    .line 5
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p3

    .line 6
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object p1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getData()[[D

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->a:[[D

    .line 7
    invoke-static {p2, p3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result p1

    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->b:[D

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 9
    iput-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 10
    iput-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 11
    iput-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 12
    iget-object p1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->a:[[D

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/QRDecomposition;->decompose([[D)V

    return-void
.end method


# virtual methods
.method public decompose([[D)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    aget-object v3, p1, v0

    array-length v3, v3

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-virtual {p0, v1, p1}, Lorg/apache/commons/math3/linear/QRDecomposition;->performHouseholderReflection(I[[D)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getH()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 11

    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->a:[[D

    array-length v1, v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    array-length v0, v0

    filled-new-array {v0, v1}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_1

    move v5, v2

    :goto_1
    add-int/lit8 v6, v4, 0x1

    invoke-static {v6, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    if-ge v5, v7, :cond_0

    aget-object v6, v3, v4

    iget-object v7, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->a:[[D

    aget-object v7, v7, v5

    aget-wide v7, v7, v4

    iget-object v9, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->b:[D

    aget-wide v9, v9, v5

    neg-double v9, v9

    div-double/2addr v7, v9

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    move v4, v6

    goto :goto_0

    :cond_1
    invoke-static {v3}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_2
    iget-object p0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->f:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public getQ()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/QRDecomposition;->getQT()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->c:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public getQT()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v1, :cond_5

    iget-object v1, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->a:[[D

    array-length v2, v1

    const/4 v3, 0x0

    aget-object v1, v1, v3

    array-length v1, v1

    filled-new-array {v1, v1}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    add-int/lit8 v4, v1, -0x1

    :goto_0
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    if-lt v4, v5, :cond_0

    aget-object v5, v3, v4

    aput-wide v6, v5, v4

    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_0
    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_4

    iget-object v4, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->a:[[D

    aget-object v4, v4, v2

    aget-object v5, v3, v2

    aput-wide v6, v5, v2

    aget-wide v8, v4, v2

    const-wide/16 v10, 0x0

    cmpl-double v5, v8, v10

    if-eqz v5, :cond_3

    move v5, v2

    :goto_2
    if-ge v5, v1, :cond_3

    move v8, v2

    move-wide v12, v10

    :goto_3
    if-ge v8, v1, :cond_1

    aget-object v9, v3, v5

    aget-wide v14, v9, v8

    aget-wide v16, v4, v8

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_1
    iget-object v8, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->b:[D

    aget-wide v8, v8, v2

    aget-wide v14, v4, v2

    mul-double/2addr v8, v14

    div-double/2addr v12, v8

    move v8, v2

    :goto_4
    if-ge v8, v1, :cond_2

    aget-object v9, v3, v5

    aget-wide v14, v9, v8

    neg-double v6, v12

    aget-wide v18, v4, v8

    mul-double v6, v6, v18

    add-double/2addr v14, v6

    aput-wide v14, v9, v8

    add-int/lit8 v8, v8, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_4

    :cond_2
    add-int/lit8 v5, v5, 0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_2

    :cond_3
    add-int/lit8 v2, v2, -0x1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_4
    invoke-static {v3}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    iput-object v1, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_5
    iget-object v0, v0, Lorg/apache/commons/math3/linear/QRDecomposition;->d:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public getR()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 7

    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->a:[[D

    array-length v1, v0

    const/4 v2, 0x0

    aget-object v0, v0, v2

    array-length v0, v0

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    aget-object v3, v2, v0

    iget-object v4, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->b:[D

    aget-wide v4, v4, v0

    aput-wide v4, v3, v0

    add-int/lit8 v3, v0, 0x1

    :goto_1
    if-ge v3, v1, :cond_0

    aget-object v4, v2, v0

    iget-object v5, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->a:[[D

    aget-object v5, v5, v3

    aget-wide v5, v5, v0

    aput-wide v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    invoke-static {v2}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix([[D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    :cond_2
    iget-object p0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->e:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object p0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;
    .locals 7

    new-instance v6, Lorg/apache/commons/math3/linear/QRDecomposition$b;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->a:[[D

    iget-object v2, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->b:[D

    iget-wide v3, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->g:D

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/linear/QRDecomposition$b;-><init>([[D[DDLorg/apache/commons/math3/linear/QRDecomposition$a;)V

    return-object v6
.end method

.method public performHouseholderReflection(I[[D)V
    .locals 13

    aget-object v0, p2, p1

    const-wide/16 v1, 0x0

    move v3, p1

    move-wide v4, v1

    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_0

    aget-wide v6, v0, v3

    mul-double/2addr v6, v6

    add-double/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    aget-wide v6, v0, p1

    cmpl-double v3, v6, v1

    if-lez v3, :cond_1

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    neg-double v3, v3

    goto :goto_1

    :cond_1
    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v3

    :goto_1
    iget-object p0, p0, Lorg/apache/commons/math3/linear/QRDecomposition;->b:[D

    aput-wide v3, p0, p1

    cmpl-double p0, v3, v1

    if-eqz p0, :cond_4

    aget-wide v5, v0, p1

    sub-double/2addr v5, v3

    aput-wide v5, v0, p1

    add-int/lit8 p0, p1, 0x1

    :goto_2
    array-length v5, p2

    if-ge p0, v5, :cond_4

    aget-object v5, p2, p0

    move v6, p1

    move-wide v7, v1

    :goto_3
    array-length v9, v5

    if-ge v6, v9, :cond_2

    aget-wide v9, v5, v6

    aget-wide v11, v0, v6

    mul-double/2addr v9, v11

    sub-double/2addr v7, v9

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_2
    aget-wide v9, v0, p1

    mul-double/2addr v9, v3

    div-double/2addr v7, v9

    move v6, p1

    :goto_4
    array-length v9, v5

    if-ge v6, v9, :cond_3

    aget-wide v9, v5, v6

    aget-wide v11, v0, v6

    mul-double/2addr v11, v7

    sub-double/2addr v9, v11

    aput-wide v9, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method
