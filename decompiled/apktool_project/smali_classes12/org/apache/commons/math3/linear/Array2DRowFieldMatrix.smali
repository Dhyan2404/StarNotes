.class public Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
.super Lorg/apache/commons/math3/linear/AbstractFieldMatrix;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement<",
        "TT;>;>",
        "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x64c363b95c05d22aL


# instance fields
.field private data:[[Lorg/apache/commons/math3/FieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 3
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Lorg/apache/commons/math3/FieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;[TT;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;)V

    .line 20
    array-length p1, p2

    .line 21
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/FieldElement;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 22
    iget-object v2, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v1

    aget-object v3, p2, v1

    aput-object v3, v2, v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;[[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;)V

    .line 6
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->copyIn([[Lorg/apache/commons/math3/FieldElement;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;[[TT;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 8
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;)V

    if-eqz p3, :cond_0

    .line 9
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->copyIn([[Lorg/apache/commons/math3/FieldElement;)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    array-length p1, p2

    if-eqz p1, :cond_4

    const/4 p3, 0x0

    .line 12
    aget-object p3, p2, p3

    array-length p3, p3

    if-eqz p3, :cond_3

    const/4 v0, 0x1

    :goto_0
    if-ge v0, p1, :cond_2

    .line 13
    aget-object v1, p2, v0

    array-length v1, v1

    if-ne v1, p3, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 14
    :cond_1
    new-instance p0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object p1, p2, v0

    array-length p1, p1

    invoke-direct {p0, p3, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p0

    .line 15
    :cond_2
    iput-object p2, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    :goto_1
    return-void

    .line 16
    :cond_3
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p0

    .line 17
    :cond_4
    new-instance p0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw p0
.end method

.method public constructor <init>([Lorg/apache/commons/math3/FieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 18
    invoke-static {p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->extractField([Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;)V

    return-void
.end method

.method public constructor <init>([[Lorg/apache/commons/math3/FieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;
        }
    .end annotation

    .line 4
    invoke-static {p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->extractField([[Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;)V

    return-void
.end method

.method public constructor <init>([[Lorg/apache/commons/math3/FieldElement;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 7
    invoke-static {p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->extractField([[Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;Z)V

    return-void
.end method

.method private copyIn([[Lorg/apache/commons/math3/FieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->setSubMatrix([[Lorg/apache/commons/math3/FieldElement;II)V

    return-void
.end method

.method private copyOut()[[Lorg/apache/commons/math3/FieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v2

    invoke-static {v1, v0, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Lorg/apache/commons/math3/FieldElement;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

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
.method public add(Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/apache/commons/math3/FieldElement;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v5, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v5, v5, v4

    iget-object v6, p1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v6, v6, v4

    aget-object v7, v2, v4

    move v8, v3

    :goto_1
    if-ge v8, v1, :cond_0

    aget-object v9, v5, v8

    aget-object v10, v6, v8

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/FieldElement;

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p0

    invoke-direct {p1, p0, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object p1
.end method

.method public addToEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    iget-object p0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object p0, p0, p1

    aget-object p1, p0, p2

    invoke-interface {p1, p3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/FieldElement;

    aput-object p1, p0, p2

    return-void
.end method

.method public copy()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->copyOut()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    const/4 v2, 0x0

    invoke-direct {v0, v1, p0, v2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object v0
.end method

.method public createMatrix(II)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    return-object v0
.end method

.method public getColumnDimension()I
    .locals 1

    iget-object p0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

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

.method public getData()[[Lorg/apache/commons/math3/FieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->copyOut()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    return-object p0
.end method

.method public getDataRef()[[Lorg/apache/commons/math3/FieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    return-object p0
.end method

.method public getEntry(II)Lorg/apache/commons/math3/FieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    iget-object p0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object p0, p0, p1

    aget-object p0, p0, p2

    return-object p0
.end method

.method public getRowDimension()I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    array-length p0, p0

    :goto_0
    return p0
.end method

.method public multiply(Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-static {v3, v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Lorg/apache/commons/math3/FieldElement;

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_2

    iget-object v6, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v6, v6, v5

    aget-object v7, v3, v5

    move v8, v4

    :goto_1
    if-ge v8, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v9

    invoke-interface {v9}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/FieldElement;

    move v10, v4

    :goto_2
    if-ge v10, v2, :cond_0

    aget-object v11, v6, v10

    iget-object v12, p1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v12, v12, v10

    aget-object v12, v12, v8

    invoke-interface {v11, v12}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v9, v11}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    :cond_0
    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    new-instance p1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p0

    invoke-direct {p1, p0, v3, v4}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object p1
.end method

.method public multiplyEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    iget-object p0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object p0, p0, p1

    aget-object p1, p0, p2

    invoke-interface {p1, p3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/FieldElement;

    aput-object p1, p0, p2

    return-void
.end method

.method public operate([Lorg/apache/commons/math3/FieldElement;)[Lorg/apache/commons/math3/FieldElement;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v1

    array-length v2, p1

    if-ne v2, v1, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/FieldElement;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v5, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v5, v5, v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    move v7, v3

    :goto_1
    if-ge v7, v1, :cond_0

    aget-object v8, v5, v7

    aget-object v9, p1, v7

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_0
    aput-object v6, v2, v4

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

.method public preMultiply([Lorg/apache/commons/math3/FieldElement;)[Lorg/apache/commons/math3/FieldElement;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v1

    array-length v2, p1

    if-ne v2, v0, :cond_2

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-static {v2, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/FieldElement;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v5

    invoke-interface {v5}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    move v6, v3

    :goto_1
    if-ge v6, v0, :cond_0

    iget-object v7, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v7, v6

    aget-object v7, v7, v4

    aget-object v8, p1, v6

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    aput-object v5, v2, v4

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

.method public setEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    iget-object p0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object p0, p0, p1

    aput-object p3, p0, p2

    return-void
.end method

.method public setSubMatrix([[Lorg/apache/commons/math3/FieldElement;II)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    if-nez v0, :cond_5

    if-gtz p2, :cond_4

    if-gtz p3, :cond_3

    array-length v0, p1

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    aget-object v1, p1, v0

    array-length v1, v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    array-length v3, p1

    invoke-static {v2, v3, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/apache/commons/math3/FieldElement;

    iput-object v2, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    move v2, v0

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

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

    invoke-direct {p0, v1, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

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
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setSubMatrix([[Lorg/apache/commons/math3/FieldElement;II)V

    :cond_6
    return-void
.end method

.method public subtract(Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;)Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/apache/commons/math3/FieldElement;

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v0, :cond_1

    iget-object v5, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v5, v5, v4

    iget-object v6, p1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v6, v6, v4

    aget-object v7, v2, v4

    move v8, v3

    :goto_1
    if-ge v8, v1, :cond_0

    aget-object v9, v5, v8

    aget-object v10, v6, v8

    invoke-interface {v9, v10}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/apache/commons/math3/FieldElement;

    aput-object v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p0

    invoke-direct {p1, p0, v2, v3}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object p1
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v7

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v8

    const/4 v3, 0x0

    add-int/lit8 v4, v7, -0x1

    const/4 v5, 0x0

    add-int/lit8 v6, v8, -0x1

    move-object v0, p1

    move v1, v7

    move v2, v8

    .line 3
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v8, :cond_1

    move v2, v0

    :goto_1
    if-ge v2, v7, :cond_0

    .line 4
    iget-object v3, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v2

    .line 5
    aget-object v4, v3, v1

    invoke-interface {p1, v2, v1, v4}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    aput-object v4, v3, v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    return-object p0
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;IIII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 12
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 13
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    :goto_0
    if-gt p4, p5, :cond_1

    move v0, p2

    :goto_1
    if-gt v0, p3, :cond_0

    .line 14
    iget-object v1, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v1, v1, v0

    .line 15
    aget-object v2, v1, p4

    invoke-interface {p1, v0, p4, v2}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    aput-object v2, v1, p4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 16
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    return-object p0
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v7

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v8

    const/4 v3, 0x0

    add-int/lit8 v4, v7, -0x1

    const/4 v5, 0x0

    add-int/lit8 v6, v8, -0x1

    move-object v0, p1

    move v1, v7

    move v2, v8

    .line 9
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v8, :cond_1

    move v2, v0

    :goto_1
    if-ge v2, v7, :cond_0

    .line 10
    iget-object v3, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v2

    aget-object v3, v3, v1

    invoke-interface {p1, v2, v1, v3}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    return-object p0
.end method

.method public walkInColumnOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;IIII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 17
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 18
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    :goto_0
    if-gt p4, p5, :cond_1

    move v0, p2

    :goto_1
    if-gt v0, p3, :cond_0

    .line 19
    iget-object v1, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v1, v1, v0

    aget-object v1, v1, p4

    invoke-interface {p1, v0, p4, v1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 20
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    return-object p0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v7

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v8

    const/4 v3, 0x0

    add-int/lit8 v4, v7, -0x1

    const/4 v5, 0x0

    add-int/lit8 v6, v8, -0x1

    move-object v0, p1

    move v1, v7

    move v2, v8

    .line 3
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_1

    .line 4
    iget-object v2, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v1

    move v3, v0

    :goto_1
    if-ge v3, v8, :cond_0

    .line 5
    aget-object v4, v2, v3

    invoke-interface {p1, v1, v3, v4}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    return-object p0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;IIII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 13
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 14
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    :goto_0
    if-gt p2, p3, :cond_1

    .line 15
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v0, v0, p2

    move v1, p4

    :goto_1
    if-gt v1, p5, :cond_0

    .line 16
    aget-object v2, v0, v1

    invoke-interface {p1, p2, v1, v2}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 17
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    return-object p0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v7

    .line 8
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v8

    const/4 v3, 0x0

    add-int/lit8 v4, v7, -0x1

    const/4 v5, 0x0

    add-int/lit8 v6, v8, -0x1

    move-object v0, p1

    move v1, v7

    move v2, v8

    .line 9
    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v7, :cond_1

    .line 10
    iget-object v2, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v1

    move v3, v0

    :goto_1
    if-ge v3, v8, :cond_0

    .line 11
    aget-object v4, v2, v3

    invoke-interface {p1, v1, v3, v4}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    return-object p0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;IIII)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    .line 18
    invoke-virtual {p0, p2, p3, p4, p5}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 19
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->getColumnDimension()I

    move-result v2

    move-object v0, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    :goto_0
    if-gt p2, p3, :cond_1

    .line 20
    iget-object v0, p0, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;->data:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v0, v0, p2

    move v1, p4

    :goto_1
    if-gt v1, p5, :cond_0

    .line 21
    aget-object v2, v0, v1

    invoke-interface {p1, p2, v1, v2}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 22
    :cond_1
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    return-object p0
.end method
