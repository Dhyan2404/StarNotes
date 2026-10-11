.class public Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
.super Lorg/apache/commons/math3/linear/AbstractRealMatrix;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0xecfca64605e8958L


# instance fields
.field private data:[[D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>(II)V

    .line 3
    filled-new-array {p1, p2}, [I

    move-result-object p1

    sget-object p2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[D

    iput-object p1, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    return-void
.end method

.method public constructor <init>([D)V
    .locals 6

    .line 16
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>()V

    .line 17
    array-length v0, p1

    const/4 v1, 0x1

    .line 18
    filled-new-array {v0, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    iput-object v1, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    .line 19
    iget-object v3, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v3, v3, v2

    aget-wide v4, p1, v2

    aput-wide v4, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>([[D)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>()V

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->copyIn([[D)V

    return-void
.end method

.method public constructor <init>([[DZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;-><init>()V

    if-eqz p2, :cond_0

    .line 7
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->copyIn([[D)V

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_5

    .line 8
    array-length p2, p1

    if-eqz p2, :cond_4

    const/4 v0, 0x0

    .line 9
    aget-object v0, p1, v0

    array-length v0, v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :goto_0
    if-ge v1, p2, :cond_2

    .line 10
    aget-object v2, p1, v1

    array-length v2, v2

    if-ne v2, v0, :cond_1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object p1, p1, v1

    array-length p1, p1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0

    .line 12
    :cond_2
    iput-object p1, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    :goto_1
    return-void

    .line 13
    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p0

    .line 14
    :cond_4
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p0

    .line 15
    :cond_5
    new-instance p0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {p0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw p0
.end method

.method private copyIn([[D)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->setSubMatrix([[DII)V

    return-void
.end method

.method private copyOut()[[D
    .locals 7

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v1

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[D

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v4, v4, v3

    aget-object v5, v1, v3

    array-length v6, v4

    invoke-static {v4, v2, v5, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v5, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v5, v5, v4

    iget-object v6, p1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v6, v6, v4

    aget-object v7, v2, v4

    move v8, v3

    :goto_1
    if-ge v8, v1, :cond_0

    aget-wide v9, v5, v8

    aget-wide v11, v6, v8

    add-double/2addr v9, v11

    aput-wide v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method public addToEntry(IID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    iget-object p0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object p0, p0, p1

    aget-wide v0, p0, p2

    add-double/2addr v0, p3

    aput-wide v0, p0, p2

    return-void
.end method

.method public copy()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 2

    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->copyOut()[[D

    move-result-object p0

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v0
.end method

.method public createMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>(II)V

    return-object p0
.end method

.method public getColumnDimension()I
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    aget-object p0, p0, v0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p0

    :cond_1
    :goto_0
    return v0
.end method

.method public getData()[[D
    .locals 0

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->copyOut()[[D

    move-result-object p0

    return-object p0
.end method

.method public getDataRef()[[D
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

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

    iget-object p0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object p0, p0, p1

    aget-wide p0, p0, p2

    return-wide p0
.end method

.method public getRowDimension()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    array-length p0, p0

    :goto_0
    return p0
.end method

.method public multiply(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    invoke-static/range {p0 .. p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v2

    filled-new-array {v0, v1}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[D

    new-array v4, v2, [D

    move-object/from16 v5, p1

    iget-object v5, v5, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v1, :cond_3

    move v8, v6

    :goto_1
    if-ge v8, v2, :cond_0

    aget-object v9, v5, v8

    aget-wide v9, v9, v7

    aput-wide v9, v4, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    move v8, v6

    :goto_2
    if-ge v8, v0, :cond_2

    move-object/from16 v9, p0

    iget-object v10, v9, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v10, v10, v8

    const-wide/16 v11, 0x0

    move v13, v6

    :goto_3
    if-ge v13, v2, :cond_1

    aget-wide v14, v10, v13

    aget-wide v16, v4, v13

    mul-double v14, v14, v16

    add-double/2addr v11, v14

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_1
    aget-object v10, v3, v8

    aput-wide v11, v10, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v9, p0

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {v0, v3, v6}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object v0
.end method

.method public multiplyEntry(IID)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    iget-object p0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object p0, p0, p1

    aget-wide v0, p0, p2

    mul-double/2addr v0, p3

    aput-wide v0, p0, p2

    return-void
.end method

.method public operate([D)[D
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v1

    array-length v2, p1

    if-ne v2, v1, :cond_2

    new-array v2, v0, [D

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v5, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v5, v5, v4

    const-wide/16 v6, 0x0

    move v8, v3

    :goto_1
    if-ge v8, v1, :cond_0

    aget-wide v9, v5, v8

    aget-wide v11, p1, v8

    mul-double/2addr v9, v11

    add-double/2addr v6, v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    aput-wide v6, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method

.method public preMultiply([D)[D
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v1

    array-length v2, p1

    if-ne v2, v0, :cond_2

    new-array v2, v1, [D

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    const-wide/16 v5, 0x0

    move v7, v3

    :goto_1
    if-ge v7, v0, :cond_0

    iget-object v8, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v8, v8, v7

    aget-wide v8, v8, v4

    aget-wide v10, p1, v7

    mul-double/2addr v8, v10

    add-double/2addr v5, v8

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    aput-wide v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length p1, p1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0
.end method

.method public setEntry(IID)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;II)V

    iget-object p0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object p0, p0, p1

    aput-wide p3, p0, p2

    return-void
.end method

.method public setSubMatrix([[DII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    if-nez v0, :cond_5

    if-gtz p2, :cond_4

    if-gtz p3, :cond_3

    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    array-length v0, p1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    if-eqz v1, :cond_1

    array-length v2, p1

    filled-new-array {v2, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    iput-object v2, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    move v2, v0

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    array-length v4, v3

    if-ge v2, v4, :cond_6

    aget-object v4, p1, v2

    array-length v5, v4

    if-ne v5, v1, :cond_0

    add-int v5, v2, p2

    aget-object v3, v3, v5

    invoke-static {v4, v0, v3, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object p1, p1, v2

    array-length p1, p1

    invoke-direct {p0, p1, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p0

    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FIRST_COLUMNS_NOT_INITIALIZED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    :cond_4
    new-instance p0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->FIRST_ROWS_NOT_INITIALIZED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw p0

    :cond_5
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->setSubMatrix([[DII)V

    :cond_6
    return-void
.end method

.method public subtract(Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;)Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    invoke-static {p0, p1}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/AnyMatrix;Lorg/apache/commons/math3/linear/AnyMatrix;)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v1

    filled-new-array {v0, v1}, [I

    move-result-object v2

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v5, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v5, v5, v4

    iget-object v6, p1, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v6, v6, v4

    aget-object v7, v2, v4

    move v8, v3

    :goto_1
    if-ge v8, v1, :cond_0

    aget-wide v9, v5, v8

    aget-wide v11, v6, v8

    sub-double/2addr v9, v11

    aput-wide v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;

    invoke-direct {p0, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;-><init>([[DZ)V

    return-object p0
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;)D
    .locals 9

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v7

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v8

    const/4 v3, 0x0

    add-int/lit8 v4, v7, -0x1

    const/4 v5, 0x0

    add-int/lit8 v6, v8, -0x1

    move-object v0, p1

    move v1, v7

    move v2, v8

    .line 3
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v8, :cond_1

    move v2, v0

    :goto_1
    if-ge v2, v7, :cond_0

    .line 4
    iget-object v3, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v3, v3, v2

    .line 5
    aget-wide v4, v3, v1

    invoke-interface {p1, v2, v1, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v4

    aput-wide v4, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide p0

    return-wide p0
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;IIII)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 12
    invoke-static {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 13
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    :goto_0
    if-gt p4, p5, :cond_1

    move v0, p2

    :goto_1
    if-gt v0, p3, :cond_0

    .line 14
    iget-object v1, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v1, v1, v0

    .line 15
    aget-wide v2, v1, p4

    invoke-interface {p1, v0, p4, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v2

    aput-wide v2, v1, p4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 16
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide p0

    return-wide p0
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D
    .locals 9

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v7

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v8

    const/4 v3, 0x0

    add-int/lit8 v4, v7, -0x1

    const/4 v5, 0x0

    add-int/lit8 v6, v8, -0x1

    move-object v0, p1

    move v1, v7

    move v2, v8

    .line 9
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v8, :cond_1

    move v2, v0

    :goto_1
    if-ge v2, v7, :cond_0

    .line 10
    iget-object v3, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v3, v3, v2

    aget-wide v3, v3, v1

    invoke-interface {p1, v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide p0

    return-wide p0
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 17
    invoke-static {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 18
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    :goto_0
    if-gt p4, p5, :cond_1

    move v0, p2

    :goto_1
    if-gt v0, p3, :cond_0

    .line 19
    iget-object v1, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v1, v1, v0

    aget-wide v1, v1, p4

    invoke-interface {p1, v0, p4, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 20
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide p0

    return-wide p0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;)D
    .locals 9

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v7

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v8

    const/4 v3, 0x0

    add-int/lit8 v4, v7, -0x1

    const/4 v5, 0x0

    add-int/lit8 v6, v8, -0x1

    move-object v0, p1

    move v1, v7

    move v2, v8

    .line 3
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_1

    .line 4
    iget-object v2, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v2, v2, v1

    move v3, v0

    :goto_1
    if-ge v3, v8, :cond_0

    .line 5
    aget-wide v4, v2, v3

    invoke-interface {p1, v1, v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v4

    aput-wide v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide p0

    return-wide p0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;IIII)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 13
    invoke-static {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 14
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->start(IIIIII)V

    :goto_0
    if-gt p2, p3, :cond_1

    .line 15
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v0, v0, p2

    move v1, p4

    :goto_1
    if-gt v1, p5, :cond_0

    .line 16
    aget-wide v2, v0, v1

    invoke-interface {p1, p2, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->visit(IID)D

    move-result-wide v2

    aput-wide v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 17
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixChangingVisitor;->end()D

    move-result-wide p0

    return-wide p0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;)D
    .locals 9

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v7

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v8

    const/4 v3, 0x0

    add-int/lit8 v4, v7, -0x1

    const/4 v5, 0x0

    add-int/lit8 v6, v8, -0x1

    move-object v0, p1

    move v1, v7

    move v2, v8

    .line 9
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_1

    .line 10
    iget-object v2, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v2, v2, v1

    move v3, v0

    :goto_1
    if-ge v3, v8, :cond_0

    .line 11
    aget-wide v4, v2, v3

    invoke-interface {p1, v1, v3, v4, v5}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide p0

    return-wide p0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;IIII)D
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 18
    invoke-static {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/MatrixUtils;->checkSubMatrixIndex(Lorg/apache/commons/math3/linear/AnyMatrix;IIII)V

    .line 19
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->start(IIIIII)V

    :goto_0
    if-gt p2, p3, :cond_1

    .line 20
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowRealMatrix;->data:[[D

    aget-object v0, v0, p2

    move v1, p4

    :goto_1
    if-gt v1, p5, :cond_0

    .line 21
    aget-wide v2, v0, v1

    invoke-interface {p1, p2, v1, v2, v3}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->visit(IID)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 22
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;->end()D

    move-result-wide p0

    return-wide p0
.end method
