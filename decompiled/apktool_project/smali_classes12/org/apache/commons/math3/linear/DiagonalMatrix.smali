.class public Lorg/apache/commons/math3/linear/DiagonalMatrix;
.super Lorg/apache/commons/math3/linear/AbstractRealMatrix;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x133068dL


# instance fields
.field private final data:[D


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>(II)V

    .line 2
    new-array p1, p1, [D

    iput-object p1, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    return-void
.end method

.method public constructor <init>([D)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([DZ)V

    return-void
.end method

.method public constructor <init>([DZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>()V

    .line 5
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    if-eqz p2, :cond_0

    .line 6
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [D

    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    return-void
.end method

.method private ensureZero(D)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    const/4 p0, 0x1

    invoke-static {v0, v1, p1, p2, p0}, Lorg/apache/commons/math3/util/Precision;->equals(DDI)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;

    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/commons/math3/exception/NumberIsTooLargeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw v0
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/DiagonalMatrix;)Lorg/apache/commons/math3/linear/DiagonalMatrix;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->getRowDimension()I

    move-result v0

    new-array v1, v0, [D

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v4, v4, v3

    iget-object v6, p1, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v6, v6, v3

    add-double/2addr v4, v6

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([DZ)V

    return-object p0
.end method

.method public addToEntry(IID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    if-ne p1, p2, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    iget-object p0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v0, p0, p1

    add-double/2addr v0, p3

    aput-wide v0, p0, p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->ensureZero(D)V

    :goto_0
    return-void
.end method

.method public copy()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    new-instance v0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    iget-object p0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([D)V

    return-object v0
.end method

.method public createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    if-ne p1, p2, :cond_0

    new-instance p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>(I)V

    return-object p0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method

.method public getColumnDimension()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    array-length p0, p0

    return p0
.end method

.method public getData()[[D
    .locals 6

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->getRowDimension()I

    move-result v0

    filled-new-array {v0, v0}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, v1, v2

    iget-object v4, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v4, v4, v2

    aput-wide v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getDataRef()[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    return-object p0
.end method

.method public getEntry(II)D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    if-ne p1, p2, :cond_0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide p0, p0, p1

    goto :goto_0

    :cond_0
    const-wide/16 p0, 0x0

    :goto_0
    return-wide p0
.end method

.method public getRowDimension()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    array-length p0, p0

    return p0
.end method

.method public inverse()Lorg/apache/commons/math3/linear/DiagonalMatrix;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/SingularMatrixException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->inverse(D)Lorg/apache/commons/math3/linear/DiagonalMatrix;

    move-result-object p0

    return-object p0
.end method

.method public inverse(D)Lorg/apache/commons/math3/linear/DiagonalMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/SingularMatrixException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->isSingular(D)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    array-length p1, p1

    new-array p1, p1, [D

    const/4 p2, 0x0

    move v0, p2

    .line 4
    :goto_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    array-length v2, v1

    if-ge v0, v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 5
    aget-wide v4, v1, v0

    div-double/2addr v2, v4

    aput-wide v2, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([DZ)V

    return-object p0

    .line 7
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/SingularMatrixException;

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/SingularMatrixException;-><init>()V

    throw p0
.end method

.method public isSingular(D)Z
    .locals 10

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    array-length v3, v2

    if-ge v1, v3, :cond_1

    aget-wide v4, v2, v1

    const-wide/16 v6, 0x0

    move-wide v8, p1

    invoke-static/range {v4 .. v9}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public multiply(Lorg/apache/commons/math3/linear/DiagonalMatrix;)Lorg/apache/commons/math3/linear/DiagonalMatrix;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->getRowDimension()I

    move-result v0

    .line 3
    new-array v1, v0, [D

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    .line 4
    iget-object v4, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v4, v4, v3

    iget-object v6, p1, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v6, v6, v3

    mul-double/2addr v4, v6

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    new-instance p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([DZ)V

    return-object p0
.end method

.method public multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 6
    instance-of v0, p1, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    if-eqz v0, :cond_0

    .line 7
    check-cast p1, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->multiply(Lorg/apache/commons/math3/linear/DiagonalMatrix;)Lorg/apache/commons/math3/linear/DiagonalMatrix;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    .line 9
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    .line 10
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v1

    .line 11
    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_2

    move v5, v3

    :goto_1
    if-ge v5, v1, :cond_1

    .line 12
    aget-object v6, v2, v4

    iget-object v7, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v7, v7, v4

    invoke-interface {p1, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v9

    mul-double/2addr v7, v9

    aput-wide v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 13
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method public multiplyEntry(IID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    if-ne p1, p2, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    iget-object p0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v0, p0, p1

    mul-double/2addr v0, p3

    aput-wide v0, p0, p1

    :cond_0
    return-void
.end method

.method public operate([D)[D
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([DZ)V

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->multiply(Lorg/apache/commons/math3/linear/DiagonalMatrix;)Lorg/apache/commons/math3/linear/DiagonalMatrix;

    move-result-object p0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->getDataRef()[D

    move-result-object p0

    return-object p0
.end method

.method public preMultiply(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 2
    instance-of v0, p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDataRef()[D

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object p1

    .line 5
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->preMultiply([D)[D

    move-result-object p0

    invoke-static {p0}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealVector([D)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object p0

    return-object p0
.end method

.method public preMultiply([D)[D
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->operate([D)[D

    move-result-object p0

    return-object p0
.end method

.method public setEntry(IID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooLargeException;
        }
    .end annotation

    if-ne p1, p2, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkRowIndex(Lorg/apache/commons/math3/linear/AnyMatrix;I)V

    iget-object p0, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aput-wide p3, p0, p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p3, p4}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->ensureZero(D)V

    :goto_0
    return-void
.end method

.method public subtract(Lorg/apache/commons/math3/linear/DiagonalMatrix;)Lorg/apache/commons/math3/linear/DiagonalMatrix;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/DiagonalMatrix;->getRowDimension()I

    move-result v0

    new-array v1, v0, [D

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v4, v4, v3

    iget-object v6, p1, Lorg/apache/commons/math3/linear/DiagonalMatrix;->data:[D

    aget-wide v6, v6, v3

    sub-double/2addr v4, v6

    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-direct {p0, v1, v2}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([DZ)V

    return-object p0
.end method
