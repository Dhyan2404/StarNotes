.class public Lorg/apache/commons/math3/linear/BlockFieldMatrix;
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
.field public static final BLOCK_SIZE:I = 0x24

.field private static final serialVersionUID:J = -0x3fdec8c7e872feefL


# instance fields
.field private final blockColumns:I

.field private final blockRows:I

.field private final blocks:[[Lorg/apache/commons/math3/FieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field

.field private final columns:I

.field private final rows:I


# direct methods
.method public constructor <init>(II[[Lorg/apache/commons/math3/FieldElement;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[[TT;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/NotStrictlyPositiveException;
        }
    .end annotation

    .line 8
    invoke-static {p3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->extractField([[Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 9
    iput p1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    .line 10
    iput p2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    add-int/lit8 p1, p1, 0x24

    add-int/lit8 p1, p1, -0x1

    .line 11
    div-int/lit8 p1, p1, 0x24

    iput p1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    add-int/lit8 p2, p2, 0x24

    add-int/lit8 p2, p2, -0x1

    .line 12
    div-int/lit8 p2, p2, 0x24

    iput p2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-eqz p4, :cond_0

    .line 13
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    mul-int/2addr p1, p2

    const/4 p2, -0x1

    invoke-static {v0, p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[Lorg/apache/commons/math3/FieldElement;

    iput-object p1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    goto :goto_0

    .line 14
    :cond_0
    iput-object p3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    :goto_0
    const/4 p1, 0x0

    move p2, p1

    move v0, p2

    .line 15
    :goto_1
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge p2, v1, :cond_4

    .line 16
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v1

    move v2, p1

    .line 17
    :goto_2
    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v2, v3, :cond_3

    .line 18
    aget-object v3, p3, v0

    array-length v3, v3

    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v4

    mul-int/2addr v4, v1

    if-ne v3, v4, :cond_2

    if-eqz p4, :cond_1

    .line 19
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, p3, v0

    invoke-virtual {v4}, [Lorg/apache/commons/math3/FieldElement;->clone()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/apache/commons/math3/FieldElement;

    aput-object v4, v3, v0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 20
    :cond_2
    new-instance p1, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    aget-object p2, p3, v0

    array-length p2, p2

    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result p0

    mul-int/2addr v1, p0

    invoke-direct {p1, p2, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw p1

    :cond_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;II)V
    .locals 1
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

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 2
    iput p2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    .line 3
    iput p3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    add-int/lit8 v0, p2, 0x24

    add-int/lit8 v0, v0, -0x1

    .line 4
    div-int/lit8 v0, v0, 0x24

    iput v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    add-int/lit8 v0, p3, 0x24

    add-int/lit8 v0, v0, -0x1

    .line 5
    div-int/lit8 v0, v0, 0x24

    iput v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    .line 6
    invoke-static {p1, p2, p3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->createBlocksLayout(Lorg/apache/commons/math3/Field;II)[[Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    return-void
.end method

.method public constructor <init>([[Lorg/apache/commons/math3/FieldElement;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 7
    array-length v0, p1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    array-length v2, v2

    invoke-static {p1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->toBlocksLayout([[Lorg/apache/commons/math3/FieldElement;)[[Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    invoke-direct {p0, v0, v2, p1, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(II[[Lorg/apache/commons/math3/FieldElement;Z)V

    return-void
.end method

.method private blockHeight(I)I
    .locals 2

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x24

    if-ne p1, v0, :cond_0

    iget p0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    mul-int/2addr p1, v1

    sub-int v1, p0, p1

    :cond_0
    return v1
.end method

.method private blockWidth(I)I
    .locals 2

    iget v0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    add-int/lit8 v0, v0, -0x1

    const/16 v1, 0x24

    if-ne p1, v0, :cond_0

    iget p0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    mul-int/2addr p1, v1

    sub-int v1, p0, p1

    :cond_0
    return v1
.end method

.method private copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TT;IIIII[TT;III)V"
        }
    .end annotation

    sub-int/2addr p6, p5

    mul-int p0, p3, p2

    add-int/2addr p0, p5

    mul-int/2addr p9, p8

    add-int/2addr p9, p10

    :goto_0
    if-ge p3, p4, :cond_0

    invoke-static {p1, p0, p7, p9, p6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p0, p2

    add-int/2addr p9, p8

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static createBlocksLayout(Lorg/apache/commons/math3/Field;II)[[Lorg/apache/commons/math3/FieldElement;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;II)[[TT;"
        }
    .end annotation

    add-int/lit8 v0, p1, 0x24

    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x24

    add-int/lit8 v1, p2, 0x24

    add-int/lit8 v1, v1, -0x1

    div-int/lit8 v1, v1, 0x24

    mul-int v2, v0, v1

    const/4 v3, -0x1

    invoke-static {p0, v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Lorg/apache/commons/math3/FieldElement;

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v4, v0, :cond_1

    mul-int/lit8 v6, v4, 0x24

    add-int/lit8 v7, v6, 0x24

    invoke-static {v7, p1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    sub-int/2addr v7, v6

    move v6, v3

    :goto_1
    if-ge v6, v1, :cond_0

    mul-int/lit8 v8, v6, 0x24

    add-int/lit8 v9, v8, 0x24

    invoke-static {v9, p2}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v9

    sub-int/2addr v9, v8

    mul-int/2addr v9, v7

    invoke-static {p0, v9}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Lorg/apache/commons/math3/FieldElement;

    aput-object v8, v2, v5

    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v2
.end method

.method public static toBlocksLayout([[Lorg/apache/commons/math3/FieldElement;)[[Lorg/apache/commons/math3/FieldElement;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/commons/math3/FieldElement<",
            "TT;>;>([[TT;)[[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    array-length v1, v0

    const/4 v2, 0x0

    aget-object v3, v0, v2

    array-length v3, v3

    add-int/lit8 v4, v1, 0x24

    add-int/lit8 v4, v4, -0x1

    div-int/lit8 v4, v4, 0x24

    add-int/lit8 v5, v3, 0x24

    add-int/lit8 v5, v5, -0x1

    div-int/lit8 v5, v5, 0x24

    move v6, v2

    :goto_0
    array-length v7, v0

    if-ge v6, v7, :cond_1

    aget-object v7, v0, v6

    array-length v7, v7

    if-ne v7, v3, :cond_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-direct {v0, v3, v7}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    :cond_1
    invoke-static/range {p0 .. p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->extractField([[Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/Field;

    move-result-object v6

    mul-int v7, v4, v5

    const/4 v8, -0x1

    invoke-static {v6, v7, v8}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [[Lorg/apache/commons/math3/FieldElement;

    move v8, v2

    move v9, v8

    :goto_1
    if-ge v8, v4, :cond_4

    mul-int/lit8 v10, v8, 0x24

    add-int/lit8 v11, v10, 0x24

    invoke-static {v11, v1}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    sub-int v12, v11, v10

    move v13, v2

    :goto_2
    if-ge v13, v5, :cond_3

    mul-int/lit8 v14, v13, 0x24

    add-int/lit8 v15, v14, 0x24

    invoke-static {v15, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v15

    sub-int/2addr v15, v14

    mul-int v2, v12, v15

    invoke-static {v6, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/FieldElement;

    aput-object v2, v7, v9

    move/from16 v16, v1

    move/from16 v17, v3

    move v1, v10

    const/4 v3, 0x0

    :goto_3
    if-ge v1, v11, :cond_2

    move/from16 v18, v4

    aget-object v4, v0, v1

    invoke-static {v4, v14, v2, v3, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v15

    add-int/lit8 v1, v1, 0x1

    move/from16 v4, v18

    goto :goto_3

    :cond_2
    move/from16 v18, v4

    add-int/lit8 v9, v9, 0x1

    add-int/lit8 v13, v13, 0x1

    move/from16 v1, v16

    move/from16 v3, v17

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    move/from16 v16, v1

    move/from16 v17, v3

    move/from16 v18, v4

    add-int/lit8 v8, v8, 0x1

    const/4 v2, 0x0

    goto :goto_1

    :cond_4
    return-object v7
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/BlockFieldMatrix;)Lorg/apache/commons/math3/linear/BlockFieldMatrix;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 12
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    const/4 v1, 0x0

    move v2, v1

    .line 13
    :goto_0
    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 14
    aget-object v3, v3, v2

    .line 15
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v2

    .line 16
    iget-object v5, p1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v5, v5, v2

    move v6, v1

    .line 17
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_0

    .line 18
    aget-object v7, v4, v6

    aget-object v8, v5, v6

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/FieldElement;

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public add(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :try_start_0
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->add(Lorg/apache/commons/math3/linear/BlockFieldMatrix;)Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkAdditionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 3
    new-instance v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v5, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4
    :goto_0
    iget v6, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v4, v6, :cond_3

    const/4 v6, 0x0

    .line 5
    :goto_1
    iget v7, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v6, v7, :cond_2

    .line 6
    iget-object v7, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v7, v5

    .line 7
    iget-object v8, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v8, v8, v5

    mul-int/lit8 v9, v4, 0x24

    add-int/lit8 v10, v9, 0x24

    .line 8
    iget v11, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    mul-int/lit8 v11, v6, 0x24

    add-int/lit8 v12, v11, 0x24

    .line 9
    iget v13, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v12

    const/4 v13, 0x0

    :goto_2
    if-ge v9, v10, :cond_1

    move v14, v11

    :goto_3
    if-ge v14, v12, :cond_0

    .line 10
    aget-object v15, v8, v13

    invoke-interface {v1, v9, v14}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-interface {v15, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v7, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public addToEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 3
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

    div-int/lit8 v0, p1, 0x24

    div-int/lit8 v1, p2, 0x24

    mul-int/lit8 v2, v0, 0x24

    sub-int/2addr p1, v2

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v2

    mul-int/2addr p1, v2

    mul-int/lit8 v2, v1, 0x24

    sub-int/2addr p2, v2

    add-int/2addr p1, p2

    iget-object p2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget p0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v0, p0

    add-int/2addr v0, v1

    aget-object p0, p2, v0

    aget-object p2, p0, p1

    invoke-interface {p2, p3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/FieldElement;

    aput-object p2, p0, p1

    return-void
.end method

.method public copy()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    aget-object v3, v3, v2

    iget-object v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v2

    array-length v5, v3

    invoke-static {v3, v1, v4, v1, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
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

    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    return-object v0
.end method

.method public getColumn(I)[Lorg/apache/commons/math3/FieldElement;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    div-int/lit8 v1, p1, 0x24

    mul-int/lit8 v2, v1, 0x24

    sub-int/2addr p1, v2

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v4, v6, :cond_1

    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v6

    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v8, v4

    add-int/2addr v8, v1

    aget-object v7, v7, v8

    move v8, v3

    :goto_1
    if-ge v8, v6, :cond_0

    add-int/lit8 v9, v5, 0x1

    mul-int v10, v8, v2

    add-int/2addr v10, p1

    aget-object v10, v7, v10

    aput-object v10, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getColumnDimension()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    return p0
.end method

.method public getColumnMatrix(I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    div-int/lit8 v1, p1, 0x24

    mul-int/lit8 v2, v1, 0x24

    sub-int/2addr p1, v2

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v2

    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    move v5, v4

    move v6, v5

    move v7, v6

    :goto_0
    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v5, v8, :cond_2

    invoke-direct {p0, v5}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v8

    iget-object v9, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v10, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v10, v5

    add-int/2addr v10, v1

    aget-object v9, v9, v10

    move v10, v4

    :goto_1
    if-ge v10, v8, :cond_1

    array-length v11, v3

    if-lt v6, v11, :cond_0

    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v7, v7, 0x1

    aget-object v3, v3, v7

    move v6, v4

    :cond_0
    add-int/lit8 v11, v6, 0x1

    mul-int v12, v10, v2

    add-int/2addr v12, p1

    aget-object v12, v9, v12

    aput-object v12, v3, v6

    add-int/lit8 v10, v10, 0x1

    move v6, v11

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getColumnVector(I)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    div-int/lit8 v1, p1, 0x24

    mul-int/lit8 v2, v1, 0x24

    sub-int/2addr p1, v2

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v4, v6, :cond_1

    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v6

    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v8, v4

    add-int/2addr v8, v1

    aget-object v7, v7, v8

    move v8, v3

    :goto_1
    if-ge v8, v6, :cond_0

    add-int/lit8 v9, v5, 0x1

    mul-int v10, v8, v2

    add-int/2addr v10, p1

    aget-object v10, v7, v10

    aput-object v10, v0, v5

    add-int/lit8 v8, v8, 0x1

    move v5, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p0

    invoke-direct {p1, p0, v0, v3}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object p1
.end method

.method public getData()[[Lorg/apache/commons/math3/FieldElement;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[[TT;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v2

    invoke-static {v0, v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;II)[[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lorg/apache/commons/math3/FieldElement;

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    add-int/lit8 v2, v2, -0x1

    const/16 v3, 0x24

    mul-int/2addr v2, v3

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    move v4, v2

    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v4, v5, :cond_2

    mul-int/lit8 v5, v4, 0x24

    add-int/lit8 v6, v5, 0x24

    iget v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v6

    move v7, v2

    move v8, v7

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v9, v0, v5

    iget v10, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v10, v4

    move v11, v2

    move v12, v11

    :goto_2
    iget v13, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    add-int/lit8 v13, v13, -0x1

    if-ge v11, v13, :cond_0

    iget-object v13, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v14, v10, 0x1

    aget-object v10, v13, v10

    invoke-static {v10, v7, v9, v12, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v12, v12, 0x24

    add-int/lit8 v11, v11, 0x1

    move v10, v14

    goto :goto_2

    :cond_0
    iget-object v11, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v10, v11, v10

    invoke-static {v10, v8, v9, v12, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v7, 0x24

    add-int/2addr v8, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getEntry(II)Lorg/apache/commons/math3/FieldElement;
    .locals 3
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

    div-int/lit8 v0, p1, 0x24

    div-int/lit8 v1, p2, 0x24

    mul-int/lit8 v2, v0, 0x24

    sub-int/2addr p1, v2

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v2

    mul-int/2addr p1, v2

    mul-int/lit8 v2, v1, 0x24

    sub-int/2addr p2, v2

    add-int/2addr p1, p2

    iget-object p2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget p0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v0, p0

    add-int/2addr v0, v1

    aget-object p0, p2, v0

    aget-object p0, p0, p1

    return-object p0
.end method

.method public getRow(I)[Lorg/apache/commons/math3/FieldElement;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    div-int/lit8 v1, p1, 0x24

    mul-int/lit8 v2, v1, 0x24

    sub-int/2addr p1, v2

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v2, v4, :cond_0

    invoke-direct {p0, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v4

    iget-object v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v6, v1

    add-int/2addr v6, v2

    aget-object v5, v5, v6

    mul-int v6, p1, v4

    invoke-static {v5, v6, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getRowDimension()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    return p0
.end method

.method public getRowMatrix(I)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    const/4 v2, 0x1

    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    div-int/lit8 v1, p1, 0x24

    mul-int/lit8 v2, v1, 0x24

    sub-int/2addr p1, v2

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    iget v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v4, v7, :cond_1

    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v7

    iget-object v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v9, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v9, v1

    add-int/2addr v9, v4

    aget-object v8, v8, v9

    array-length v9, v2

    sub-int/2addr v9, v5

    if-le v7, v9, :cond_0

    mul-int v10, p1, v7

    invoke-static {v8, v10, v2, v5, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v6, v6, 0x1

    aget-object v2, v2, v6

    sub-int/2addr v7, v9

    invoke-static {v8, v10, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v5, v7

    goto :goto_1

    :cond_0
    mul-int v9, p1, v7

    invoke-static {v8, v9, v2, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v7

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getRowVector(I)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    div-int/lit8 v1, p1, 0x24

    mul-int/lit8 v2, v1, 0x24

    sub-int/2addr p1, v2

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v3, v5, :cond_0

    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v5

    iget-object v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v7, v1

    add-int/2addr v7, v3

    aget-object v6, v6, v7

    mul-int v7, p1, v5

    invoke-static {v6, v7, v0, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p0

    invoke-direct {p1, p0, v0, v2}, Lorg/apache/commons/math3/linear/ArrayFieldVector;-><init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;Z)V

    return-object p1
.end method

.method public getSubMatrix(IIII)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;
        }
    .end annotation

    move-object/from16 v11, p0

    invoke-virtual/range {p0 .. p4}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex(IIII)V

    new-instance v12, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    sub-int v2, p4, p3

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v12, v0, v1, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    div-int/lit8 v0, p1, 0x24

    rem-int/lit8 v13, p1, 0x24

    div-int/lit8 v14, p3, 0x24

    rem-int/lit8 v15, p3, 0x24

    const/16 v16, 0x0

    move/from16 v17, v0

    move/from16 v10, v16

    :goto_0
    iget v0, v12, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v10, v0, :cond_4

    invoke-direct {v12, v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v18

    move v8, v14

    move/from16 v9, v16

    :goto_1
    iget v0, v12, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v9, v0, :cond_3

    invoke-direct {v12, v9}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v19

    iget v0, v12, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v0, v10

    add-int/2addr v0, v9

    iget-object v1, v12, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v20, v1, v0

    iget v0, v11, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int v0, v0, v17

    add-int v21, v0, v8

    invoke-direct {v11, v8}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v22

    add-int v23, v18, v13

    add-int/lit8 v24, v23, -0x24

    add-int v25, v19, v15

    add-int/lit8 v26, v25, -0x24

    if-lez v24, :cond_1

    if-lez v26, :cond_0

    add-int/lit8 v0, v8, 0x1

    invoke-direct {v11, v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v23

    iget-object v0, v11, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v1, v0, v21

    const/16 v4, 0x24

    const/16 v6, 0x24

    const/16 v25, 0x0

    const/16 v27, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v22

    move v3, v13

    move v5, v15

    move-object/from16 v7, v20

    move/from16 v28, v8

    move/from16 v8, v19

    move/from16 v29, v9

    move/from16 v9, v25

    move/from16 v30, v10

    move/from16 v10, v27

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    iget-object v0, v11, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v1, v21, 0x1

    aget-object v1, v0, v1

    const/4 v5, 0x0

    const/4 v9, 0x0

    sub-int v25, v19, v26

    move-object/from16 v0, p0

    move/from16 v2, v23

    move/from16 v6, v26

    move/from16 v10, v25

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    iget-object v0, v11, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v1, v11, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    add-int v1, v21, v1

    aget-object v1, v0, v1

    const/4 v3, 0x0

    const/16 v6, 0x24

    sub-int v27, v18, v24

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v22

    move/from16 v4, v24

    move v5, v15

    move/from16 v9, v27

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    iget-object v0, v11, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v1, v11, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    add-int v21, v21, v1

    add-int/lit8 v21, v21, 0x1

    aget-object v1, v0, v21

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v23

    move/from16 v6, v26

    move/from16 v10, v25

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    goto/16 :goto_2

    :cond_0
    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v10

    iget-object v0, v11, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v1, v0, v21

    const/16 v4, 0x24

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v22

    move v3, v13

    move v5, v15

    move/from16 v6, v25

    move-object/from16 v7, v20

    move/from16 v8, v19

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    iget-object v0, v11, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v1, v11, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    add-int v21, v21, v1

    aget-object v1, v0, v21

    const/4 v3, 0x0

    sub-int v9, v18, v24

    move-object/from16 v0, p0

    move/from16 v4, v24

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    goto :goto_2

    :cond_1
    move/from16 v28, v8

    move/from16 v29, v9

    move/from16 v30, v10

    if-lez v26, :cond_2

    add-int/lit8 v8, v28, 0x1

    invoke-direct {v11, v8}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v24

    iget-object v0, v11, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v1, v0, v21

    const/16 v6, 0x24

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v22

    move v3, v13

    move/from16 v4, v23

    move v5, v15

    move-object/from16 v7, v20

    move/from16 v8, v19

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    iget-object v0, v11, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v21, v21, 0x1

    aget-object v1, v0, v21

    const/4 v5, 0x0

    sub-int v10, v19, v26

    move-object/from16 v0, p0

    move/from16 v2, v24

    move/from16 v6, v26

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    goto :goto_2

    :cond_2
    iget-object v0, v11, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v1, v0, v21

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v0, p0

    move/from16 v2, v22

    move v3, v13

    move/from16 v4, v23

    move v5, v15

    move/from16 v6, v25

    move-object/from16 v7, v20

    move/from16 v8, v19

    invoke-direct/range {v0 .. v10}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->copyBlockPart([Lorg/apache/commons/math3/FieldElement;IIIII[Lorg/apache/commons/math3/FieldElement;III)V

    :goto_2
    add-int/lit8 v8, v28, 0x1

    add-int/lit8 v9, v29, 0x1

    move/from16 v10, v30

    goto/16 :goto_1

    :cond_3
    move/from16 v30, v10

    add-int/lit8 v17, v17, 0x1

    add-int/lit8 v10, v30, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v12
.end method

.method public multiply(Lorg/apache/commons/math3/linear/BlockFieldMatrix;)Lorg/apache/commons/math3/linear/BlockFieldMatrix;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 15
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 16
    new-instance v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v5, v1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 17
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 18
    :goto_0
    iget v7, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v5, v7, :cond_6

    mul-int/lit8 v7, v5, 0x24

    add-int/lit8 v8, v7, 0x24

    .line 19
    iget v9, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v8

    const/4 v9, 0x0

    .line 20
    :goto_1
    iget v10, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v9, v10, :cond_5

    .line 21
    invoke-direct {v2, v9}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v10

    add-int v11, v10, v10

    add-int v12, v11, v10

    add-int v13, v12, v10

    .line 22
    iget-object v14, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v14, v14, v6

    const/4 v15, 0x0

    .line 23
    :goto_2
    iget v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v15, v4, :cond_4

    .line 24
    invoke-direct {v0, v15}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v4

    move-object/from16 v16, v3

    .line 25
    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move-object/from16 v17, v2

    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v2, v5

    add-int/2addr v2, v15

    aget-object v2, v3, v2

    .line 26
    iget-object v3, v1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v0, v1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v0, v15

    add-int/2addr v0, v9

    aget-object v0, v3, v0

    move v3, v7

    const/16 v18, 0x0

    :goto_3
    if-ge v3, v8, :cond_3

    sub-int v19, v3, v7

    mul-int v19, v19, v4

    add-int v1, v19, v4

    move/from16 v20, v4

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v10, :cond_2

    move/from16 v23, v4

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v8, v16

    move/from16 v7, v19

    :goto_5
    move/from16 v24, v5

    add-int/lit8 v5, v1, -0x3

    if-ge v7, v5, :cond_0

    .line 27
    aget-object v5, v2, v7

    move/from16 v25, v9

    aget-object v9, v0, v23

    invoke-interface {v5, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v8, v5}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v8, v7, 0x1

    aget-object v8, v2, v8

    add-int v9, v23, v10

    aget-object v9, v0, v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v8, v7, 0x2

    aget-object v8, v2, v8

    add-int v9, v23, v11

    aget-object v9, v0, v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v8, v7, 0x3

    aget-object v8, v2, v8

    add-int v9, v23, v12

    aget-object v9, v0, v9

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v5, v8}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v7, v7, 0x4

    add-int v23, v23, v13

    move/from16 v5, v24

    move/from16 v9, v25

    goto :goto_5

    :cond_0
    move/from16 v25, v9

    :goto_6
    if-ge v7, v1, :cond_1

    add-int/lit8 v5, v7, 0x1

    .line 28
    aget-object v7, v2, v7

    aget-object v9, v0, v23

    invoke-interface {v7, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v8, v7}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lorg/apache/commons/math3/FieldElement;

    add-int v23, v23, v10

    move v7, v5

    goto :goto_6

    .line 29
    :cond_1
    aget-object v5, v14, v18

    invoke-interface {v5, v8}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    aput-object v5, v14, v18

    add-int/lit8 v18, v18, 0x1

    add-int/lit8 v4, v4, 0x1

    move/from16 v7, v21

    move/from16 v8, v22

    move/from16 v5, v24

    move/from16 v9, v25

    goto/16 :goto_4

    :cond_2
    move/from16 v24, v5

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v25, v9

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, p1

    move/from16 v4, v20

    goto/16 :goto_3

    :cond_3
    move/from16 v24, v5

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v25, v9

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    move-object/from16 v2, v17

    goto/16 :goto_2

    :cond_4
    move-object/from16 v17, v2

    move-object/from16 v16, v3

    move/from16 v24, v5

    move/from16 v21, v7

    move/from16 v22, v8

    move/from16 v25, v9

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_1

    :cond_5
    move-object/from16 v17, v2

    move-object/from16 v16, v3

    move/from16 v24, v5

    add-int/lit8 v5, v24, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    goto/16 :goto_0

    :cond_6
    move-object/from16 v17, v2

    return-object v17
.end method

.method public multiply(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :try_start_0
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->multiply(Lorg/apache/commons/math3/linear/BlockFieldMatrix;)Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkMultiplicationCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 3
    new-instance v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v5

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 4
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 5
    :goto_0
    iget v7, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v5, v7, :cond_5

    mul-int/lit8 v7, v5, 0x24

    add-int/lit8 v8, v7, 0x24

    .line 6
    iget v9, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v8

    const/4 v9, 0x0

    .line 7
    :goto_1
    iget v10, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v9, v10, :cond_4

    mul-int/lit8 v10, v9, 0x24

    add-int/lit8 v11, v10, 0x24

    .line 8
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v12

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    .line 9
    iget-object v12, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v12, v12, v6

    const/4 v13, 0x0

    .line 10
    :goto_2
    iget v14, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v13, v14, :cond_3

    .line 11
    invoke-direct {v0, v13}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v14

    .line 12
    iget-object v15, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v13

    aget-object v4, v15, v4

    mul-int/lit8 v15, v13, 0x24

    move v0, v7

    const/16 v16, 0x0

    :goto_3
    if-ge v0, v8, :cond_2

    sub-int v17, v0, v7

    mul-int v17, v17, v14

    move-object/from16 v18, v3

    add-int v3, v17, v14

    move/from16 v19, v7

    move v7, v10

    :goto_4
    if-ge v7, v11, :cond_1

    move/from16 v20, v8

    move/from16 v21, v10

    move/from16 v22, v11

    move v11, v15

    move/from16 v8, v17

    move-object/from16 v10, v18

    :goto_5
    if-ge v8, v3, :cond_0

    move/from16 v23, v3

    .line 13
    aget-object v3, v4, v8

    move-object/from16 v24, v4

    invoke-interface {v1, v11, v7}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v10, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v11, v11, 0x1

    add-int/lit8 v8, v8, 0x1

    move/from16 v3, v23

    move-object/from16 v4, v24

    goto :goto_5

    :cond_0
    move/from16 v23, v3

    move-object/from16 v24, v4

    .line 14
    aget-object v3, v12, v16

    invoke-interface {v3, v10}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v12, v16

    add-int/lit8 v16, v16, 0x1

    add-int/lit8 v7, v7, 0x1

    move/from16 v8, v20

    move/from16 v10, v21

    move/from16 v11, v22

    move/from16 v3, v23

    goto :goto_4

    :cond_1
    move-object/from16 v24, v4

    move/from16 v20, v8

    move/from16 v21, v10

    move/from16 v22, v11

    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v18

    move/from16 v7, v19

    goto :goto_3

    :cond_2
    move-object/from16 v18, v3

    move/from16 v19, v7

    move/from16 v20, v8

    move/from16 v21, v10

    move/from16 v22, v11

    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_2

    :cond_3
    move-object/from16 v18, v3

    move/from16 v19, v7

    move/from16 v20, v8

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_4
    move-object/from16 v18, v3

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    goto/16 :goto_0

    :cond_5
    return-object v2
.end method

.method public multiplyEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 3
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

    div-int/lit8 v0, p1, 0x24

    div-int/lit8 v1, p2, 0x24

    mul-int/lit8 v2, v0, 0x24

    sub-int/2addr p1, v2

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v2

    mul-int/2addr p1, v2

    mul-int/lit8 v2, v1, 0x24

    sub-int/2addr p2, v2

    add-int/2addr p1, p2

    iget-object p2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget p0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v0, p0

    add-int/2addr v0, v1

    aget-object p0, p2, v0

    aget-object p2, p0, p1

    invoke-interface {p2, p3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/FieldElement;

    aput-object p2, p0, p1

    return-void
.end method

.method public operate([Lorg/apache/commons/math3/FieldElement;)[Lorg/apache/commons/math3/FieldElement;
    .locals 17
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    if-ne v2, v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/FieldElement;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    const/4 v5, 0x0

    :goto_0
    iget v6, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v5, v6, :cond_4

    mul-int/lit8 v6, v5, 0x24

    add-int/lit8 v7, v6, 0x24

    iget v8, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    const/4 v8, 0x0

    :goto_1
    iget v9, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v8, v9, :cond_3

    iget-object v10, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    mul-int/2addr v9, v5

    add-int/2addr v9, v8

    aget-object v9, v10, v9

    mul-int/lit8 v10, v8, 0x24

    add-int/lit8 v11, v10, 0x24

    iget v12, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    move v12, v6

    const/4 v13, 0x0

    :goto_2
    if-ge v12, v7, :cond_2

    move-object v15, v3

    move v14, v10

    :goto_3
    add-int/lit8 v4, v11, -0x3

    if-ge v14, v4, :cond_0

    aget-object v4, v9, v13

    move-object/from16 v16, v3

    aget-object v3, v1, v14

    invoke-interface {v4, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v15, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v4, v13, 0x1

    aget-object v4, v9, v4

    add-int/lit8 v15, v14, 0x1

    aget-object v15, v1, v15

    invoke-interface {v4, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v4, v13, 0x2

    aget-object v4, v9, v4

    add-int/lit8 v15, v14, 0x2

    aget-object v15, v1, v15

    invoke-interface {v4, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v4, v13, 0x3

    aget-object v4, v9, v4

    add-int/lit8 v15, v14, 0x3

    aget-object v15, v1, v15

    invoke-interface {v4, v15}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v13, v13, 0x4

    add-int/lit8 v14, v14, 0x4

    move-object/from16 v3, v16

    goto :goto_3

    :cond_0
    move-object/from16 v16, v3

    :goto_4
    if-ge v14, v11, :cond_1

    add-int/lit8 v3, v13, 0x1

    aget-object v4, v9, v13

    add-int/lit8 v13, v14, 0x1

    aget-object v14, v1, v14

    invoke-interface {v4, v14}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v15, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v15, v4

    check-cast v15, Lorg/apache/commons/math3/FieldElement;

    move v14, v13

    move v13, v3

    goto :goto_4

    :cond_1
    aget-object v3, v2, v12

    invoke-interface {v3, v15}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v2, v12

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v3, v16

    goto :goto_2

    :cond_2
    move-object/from16 v16, v3

    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    :cond_3
    move-object/from16 v16, v3

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v2

    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v2, v1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public preMultiply([Lorg/apache/commons/math3/FieldElement;)[Lorg/apache/commons/math3/FieldElement;
    .locals 21
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

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    array-length v2, v1

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    if-ne v2, v3, :cond_5

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v2

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lorg/apache/commons/math3/FieldElement;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    const/4 v5, 0x0

    :goto_0
    iget v6, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v5, v6, :cond_4

    invoke-direct {v0, v5}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v6

    add-int v7, v6, v6

    add-int v8, v7, v6

    add-int v9, v8, v6

    mul-int/lit8 v10, v5, 0x24

    add-int/lit8 v11, v10, 0x24

    iget v12, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    const/4 v12, 0x0

    :goto_1
    iget v13, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v12, v13, :cond_3

    iget-object v13, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v14, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v14, v12

    add-int/2addr v14, v5

    aget-object v13, v13, v14

    mul-int/lit8 v14, v12, 0x24

    add-int/lit8 v15, v14, 0x24

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v15, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    move v15, v10

    :goto_2
    if-ge v15, v11, :cond_2

    sub-int v16, v15, v10

    move-object/from16 v17, v3

    move/from16 v18, v10

    move-object/from16 v10, v17

    move v3, v14

    :goto_3
    move/from16 v19, v11

    add-int/lit8 v11, v4, -0x3

    if-ge v3, v11, :cond_0

    aget-object v11, v13, v16

    move/from16 v20, v14

    aget-object v14, v1, v3

    invoke-interface {v11, v14}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/FieldElement;

    add-int v11, v16, v6

    aget-object v11, v13, v11

    add-int/lit8 v14, v3, 0x1

    aget-object v14, v1, v14

    invoke-interface {v11, v14}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/FieldElement;

    add-int v11, v16, v7

    aget-object v11, v13, v11

    add-int/lit8 v14, v3, 0x2

    aget-object v14, v1, v14

    invoke-interface {v11, v14}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/FieldElement;

    add-int v11, v16, v8

    aget-object v11, v13, v11

    add-int/lit8 v14, v3, 0x3

    aget-object v14, v1, v14

    invoke-interface {v11, v14}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/apache/commons/math3/FieldElement;

    add-int v16, v16, v9

    add-int/lit8 v3, v3, 0x4

    move/from16 v11, v19

    move/from16 v14, v20

    goto :goto_3

    :cond_0
    move/from16 v20, v14

    :goto_4
    if-ge v3, v4, :cond_1

    aget-object v11, v13, v16

    add-int/lit8 v14, v3, 0x1

    aget-object v3, v1, v3

    invoke-interface {v11, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v10, v3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v10, v3

    check-cast v10, Lorg/apache/commons/math3/FieldElement;

    add-int v16, v16, v6

    move v3, v14

    goto :goto_4

    :cond_1
    aget-object v3, v2, v15

    invoke-interface {v3, v10}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v2, v15

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v17

    move/from16 v10, v18

    move/from16 v11, v19

    move/from16 v14, v20

    goto/16 :goto_2

    :cond_2
    move-object/from16 v17, v3

    move/from16 v18, v10

    move/from16 v19, v11

    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_1

    :cond_3
    move-object/from16 v17, v3

    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_4
    return-object v2

    :cond_5
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v1

    iget v0, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-direct {v2, v1, v0}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2
.end method

.method public scalarAdd(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v2

    move v5, v1

    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_0

    aget-object v6, v4, v5

    invoke-interface {v6, p1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public scalarMultiply(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v3, v3, v2

    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v2

    move v5, v1

    :goto_1
    array-length v6, v3

    if-ge v5, v6, :cond_0

    aget-object v6, v4, v5

    invoke-interface {v6, p1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public setColumn(I[Lorg/apache/commons/math3/FieldElement;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v0

    array-length v1, p2

    if-ne v1, v0, :cond_2

    div-int/lit8 v0, p1, 0x24

    mul-int/lit8 v1, v0, 0x24

    sub-int/2addr p1, v1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v3, v5, :cond_1

    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v5

    iget-object v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v7, v3

    add-int/2addr v7, v0

    aget-object v6, v6, v7

    move v7, v2

    :goto_1
    if-ge v7, v5, :cond_0

    mul-int v8, v7, v1

    add-int/2addr v8, p1

    add-int/lit8 v9, v4, 0x1

    aget-object v4, p2, v4

    aput-object v4, v6, v8

    add-int/lit8 v7, v7, 0x1

    move v4, v9

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length p1, p2

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2, v0, p2}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p0
.end method

.method public setColumnMatrix(ILorg/apache/commons/math3/linear/BlockFieldMatrix;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v0

    .line 5
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v0, :cond_3

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 6
    div-int/lit8 v0, p1, 0x24

    mul-int/lit8 v1, v0, 0x24

    sub-int/2addr p1, v1

    .line 7
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v1

    .line 8
    iget-object v2, p2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    move v4, v3

    move v5, v4

    move v6, v5

    .line 9
    :goto_0
    iget v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v4, v7, :cond_2

    .line 10
    invoke-direct {p0, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v7

    .line 11
    iget-object v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v9, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v9, v4

    add-int/2addr v9, v0

    aget-object v8, v8, v9

    move v9, v3

    :goto_1
    if-ge v9, v7, :cond_1

    .line 12
    array-length v10, v2

    if-lt v5, v10, :cond_0

    .line 13
    iget-object v2, p2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v6, v6, 0x1

    aget-object v2, v2, v6

    move v5, v3

    :cond_0
    mul-int v10, v9, v1

    add-int/2addr v10, p1

    add-int/lit8 v11, v5, 0x1

    .line 14
    aget-object v5, v2, v5

    aput-object v5, v8, v10

    add-int/lit8 v9, v9, 0x1

    move v5, v11

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void

    .line 15
    :cond_3
    new-instance p0, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result p1

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result p2

    invoke-direct {p0, p1, p2, v0, v2}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p0
.end method

.method public setColumnMatrix(ILorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->setColumnMatrix(ILorg/apache/commons/math3/linear/BlockFieldMatrix;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setColumnMatrix(ILorg/apache/commons/math3/linear/FieldMatrix;)V

    :goto_0
    return-void
.end method

.method public setColumnVector(ILorg/apache/commons/math3/linear/FieldVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDataRef()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->setColumn(I[Lorg/apache/commons/math3/FieldElement;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setColumnVector(ILorg/apache/commons/math3/linear/FieldVector;)V

    :goto_0
    return-void
.end method

.method public setEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 3
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

    div-int/lit8 v0, p1, 0x24

    div-int/lit8 v1, p2, 0x24

    mul-int/lit8 v2, v0, 0x24

    sub-int/2addr p1, v2

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v2

    mul-int/2addr p1, v2

    mul-int/lit8 v2, v1, 0x24

    sub-int/2addr p2, v2

    add-int/2addr p1, p2

    iget-object p2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget p0, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v0, p0

    add-int/2addr v0, v1

    aget-object p0, p2, v0

    aput-object p3, p0, p1

    return-void
.end method

.method public setRow(I[Lorg/apache/commons/math3/FieldElement;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v0

    array-length v1, p2

    if-ne v1, v0, :cond_1

    div-int/lit8 v0, p1, 0x24

    mul-int/lit8 v1, v0, 0x24

    sub-int/2addr p1, v1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v1, v3, :cond_0

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v3

    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v5, v0

    add-int/2addr v5, v1

    aget-object v4, v4, v5

    mul-int v5, p1, v3

    invoke-static {p2, v2, v4, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p0, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    array-length p1, p2

    const/4 p2, 0x1

    invoke-direct {p0, p2, p1, p2, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p0
.end method

.method public setRowMatrix(ILorg/apache/commons/math3/linear/BlockFieldMatrix;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v0

    .line 5
    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v1

    if-ne v1, v0, :cond_2

    .line 6
    div-int/lit8 v0, p1, 0x24

    mul-int/lit8 v1, v0, 0x24

    sub-int/2addr p1, v1

    .line 7
    iget-object v1, p2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move v3, v2

    move v4, v3

    move v5, v4

    .line 8
    :goto_0
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v3, v6, :cond_1

    .line 9
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v6

    .line 10
    iget-object v7, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v8, v0

    add-int/2addr v8, v3

    aget-object v7, v7, v8

    .line 11
    array-length v8, v1

    sub-int/2addr v8, v4

    if-le v6, v8, :cond_0

    mul-int v9, p1, v6

    .line 12
    invoke-static {v1, v4, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 13
    iget-object v1, p2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v5, v5, 0x1

    aget-object v1, v1, v5

    sub-int/2addr v6, v8

    .line 14
    invoke-static {v1, v2, v7, v9, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v4, v6

    goto :goto_1

    :cond_0
    mul-int v8, p1, v6

    .line 15
    invoke-static {v1, v4, v7, v8, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 16
    :cond_2
    new-instance p0, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result p1

    invoke-virtual {p2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result p2

    invoke-direct {p0, p1, p2, v2, v0}, Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;-><init>(IIII)V

    throw p0
.end method

.method public setRowMatrix(ILorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 1
    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->setRowMatrix(ILorg/apache/commons/math3/linear/BlockFieldMatrix;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 2
    :catch_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setRowMatrix(ILorg/apache/commons/math3/linear/FieldMatrix;)V

    :goto_0
    return-void
.end method

.method public setRowVector(ILorg/apache/commons/math3/linear/FieldVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    :try_start_0
    move-object v0, p2

    check-cast v0, Lorg/apache/commons/math3/linear/ArrayFieldVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayFieldVector;->getDataRef()[Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->setRow(I[Lorg/apache/commons/math3/FieldElement;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-super {p0, p1, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->setRowVector(ILorg/apache/commons/math3/linear/FieldVector;)V

    :goto_0
    return-void
.end method

.method public setSubMatrix([[Lorg/apache/commons/math3/FieldElement;II)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[TT;II)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NoDataException;,
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {p1 .. p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x0

    aget-object v5, v1, v4

    array-length v5, v5

    if-eqz v5, :cond_5

    array-length v6, v1

    add-int/2addr v6, v2

    add-int/lit8 v6, v6, -0x1

    add-int v7, v3, v5

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0, v2, v6, v3, v7}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex(IIII)V

    array-length v8, v1

    :goto_0
    if-ge v4, v8, :cond_1

    aget-object v9, v1, v4

    array-length v10, v9

    if-ne v10, v5, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, v9

    invoke-direct {v0, v5, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    :cond_1
    div-int/lit8 v4, v2, 0x24

    add-int/lit8 v5, v6, 0x24

    div-int/lit8 v5, v5, 0x24

    div-int/lit8 v8, v3, 0x24

    add-int/lit8 v9, v7, 0x24

    div-int/lit8 v9, v9, 0x24

    :goto_1
    if-ge v4, v5, :cond_4

    invoke-direct {v0, v4}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockHeight(I)I

    move-result v10

    mul-int/lit8 v11, v4, 0x24

    invoke-static {v2, v11}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v12

    add-int/lit8 v13, v6, 0x1

    add-int/2addr v10, v11

    invoke-static {v13, v10}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    move v13, v8

    :goto_2
    if-ge v13, v9, :cond_3

    invoke-direct {v0, v13}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v14

    mul-int/lit8 v15, v13, 0x24

    invoke-static {v3, v15}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v16

    move/from16 v17, v5

    add-int/lit8 v5, v7, 0x1

    move/from16 v18, v6

    add-int v6, v15, v14

    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    sub-int v5, v5, v16

    iget-object v6, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move/from16 v19, v7

    iget v7, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v7, v4

    add-int/2addr v7, v13

    aget-object v6, v6, v7

    move v7, v12

    :goto_3
    if-ge v7, v10, :cond_2

    sub-int v20, v7, v2

    aget-object v0, v1, v20

    sub-int v1, v16, v3

    sub-int v20, v7, v11

    mul-int v20, v20, v14

    sub-int v21, v16, v15

    add-int v2, v20, v21

    invoke-static {v0, v1, v6, v2, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    goto :goto_3

    :cond_2
    add-int/lit8 v13, v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move/from16 v5, v17

    move/from16 v6, v18

    move/from16 v7, v19

    goto :goto_2

    :cond_3
    move/from16 v17, v5

    move/from16 v18, v6

    move/from16 v19, v7

    add-int/lit8 v4, v4, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    new-instance v0, Lorg/apache/commons/math3/exception/NoDataException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->AT_LEAST_ONE_COLUMN:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/exception/NoDataException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;)V

    throw v0
.end method

.method public subtract(Lorg/apache/commons/math3/linear/BlockFieldMatrix;)Lorg/apache/commons/math3/linear/BlockFieldMatrix;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/BlockFieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 12
    new-instance v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    const/4 v1, 0x0

    move v2, v1

    .line 13
    :goto_0
    iget-object v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 14
    aget-object v3, v3, v2

    .line 15
    iget-object v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v2

    .line 16
    iget-object v5, p1, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v5, v5, v2

    move v6, v1

    .line 17
    :goto_1
    array-length v7, v3

    if-ge v6, v7, :cond_0

    .line 18
    aget-object v7, v4, v6

    aget-object v8, v5, v6

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/FieldElement;

    aput-object v7, v3, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public subtract(Lorg/apache/commons/math3/linear/FieldMatrix;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/MatrixDimensionMismatchException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    :try_start_0
    move-object v2, v1

    check-cast v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual {v0, v2}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->subtract(Lorg/apache/commons/math3/linear/BlockFieldMatrix;)Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 2
    :catch_0
    invoke-virtual/range {p0 .. p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubtractionCompatible(Lorg/apache/commons/math3/linear/FieldMatrix;)V

    .line 3
    new-instance v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v3

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v5, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4
    :goto_0
    iget v6, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v4, v6, :cond_3

    const/4 v6, 0x0

    .line 5
    :goto_1
    iget v7, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v6, v7, :cond_2

    .line 6
    iget-object v7, v2, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v7, v7, v5

    .line 7
    iget-object v8, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v8, v8, v5

    mul-int/lit8 v9, v4, 0x24

    add-int/lit8 v10, v9, 0x24

    .line 8
    iget v11, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v10, v11}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v10

    mul-int/lit8 v11, v6, 0x24

    add-int/lit8 v12, v11, 0x24

    .line 9
    iget v13, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v12

    const/4 v13, 0x0

    :goto_2
    if-ge v9, v10, :cond_1

    move v14, v11

    :goto_3
    if-ge v14, v12, :cond_0

    .line 10
    aget-object v15, v8, v13

    invoke-interface {v1, v9, v14}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-interface {v15, v3}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    aput-object v3, v7, v13

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    return-object v2
.end method

.method public transpose()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->getColumnDimension()I

    move-result v2

    new-instance v3, Lorg/apache/commons/math3/linear/BlockFieldMatrix;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v4

    invoke-direct {v3, v4, v2, v1}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    const/4 v2, 0x0

    const/4 v4, 0x0

    :goto_0
    iget v5, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v2, v5, :cond_3

    const/4 v5, 0x0

    :goto_1
    iget v6, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v5, v6, :cond_2

    iget-object v6, v3, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v6, v6, v4

    iget-object v7, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v8, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v8, v5

    add-int/2addr v8, v2

    aget-object v7, v7, v8

    mul-int/lit8 v8, v2, 0x24

    add-int/lit8 v9, v8, 0x24

    iget v10, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v9, v10}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v9

    mul-int/lit8 v10, v5, 0x24

    add-int/lit8 v11, v10, 0x24

    iget v12, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v11, v12}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v11

    move v12, v8

    const/4 v13, 0x0

    :goto_2
    if-ge v12, v9, :cond_1

    sub-int v14, v9, v8

    sub-int v15, v12, v8

    move v1, v10

    :goto_3
    if-ge v1, v11, :cond_0

    aget-object v16, v7, v15

    aput-object v16, v6, v13

    add-int/lit8 v13, v13, 0x1

    add-int/2addr v15, v14

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return-object v3
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    const/4 v3, 0x0

    add-int/lit8 v4, v1, -0x1

    const/4 v5, 0x0

    add-int/lit8 v6, v2, -0x1

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 2
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v1, v3, :cond_3

    mul-int/lit8 v3, v1, 0x24

    add-int/lit8 v4, v3, 0x24

    .line 3
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    move v5, v0

    .line 4
    :goto_1
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v5, v6, :cond_2

    mul-int/lit8 v6, v5, 0x24

    add-int/lit8 v7, v6, 0x24

    .line 5
    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    .line 6
    iget-object v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v8, v8, v2

    move v10, v0

    move v9, v3

    :goto_2
    if-ge v9, v4, :cond_1

    move v11, v6

    :goto_3
    if-ge v11, v7, :cond_0

    .line 7
    aget-object v12, v8, v10

    invoke-interface {p1, v9, v11, v12}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v12

    aput-object v12, v8, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 8
    :cond_3
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    return-object p0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 20
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

    move-object/from16 v0, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 17
    invoke-virtual {v0, v8, v9, v10, v11}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 18
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move-object/from16 v1, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    .line 19
    div-int/lit8 v1, v8, 0x24

    :goto_0
    div-int/lit8 v2, v9, 0x24

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x24

    .line 20
    invoke-static {v8, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v5, v4, 0x24

    add-int/lit8 v6, v9, 0x1

    .line 21
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    .line 22
    div-int/lit8 v6, v10, 0x24

    :goto_1
    div-int/lit8 v7, v11, 0x24

    add-int/lit8 v7, v7, 0x1

    if-ge v6, v7, :cond_2

    .line 23
    invoke-direct {v0, v6}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v7

    mul-int/lit8 v12, v6, 0x24

    .line 24
    invoke-static {v10, v12}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v13

    add-int/lit8 v14, v6, 0x1

    mul-int/lit8 v15, v14, 0x24

    move/from16 v16, v3

    add-int/lit8 v3, v11, 0x1

    .line 25
    invoke-static {v15, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    .line 26
    iget-object v15, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move/from16 v17, v4

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v6

    aget-object v4, v15, v4

    move/from16 v6, v16

    :goto_2
    if-ge v6, v5, :cond_1

    sub-int v15, v6, v2

    mul-int/2addr v15, v7

    add-int/2addr v15, v13

    sub-int/2addr v15, v12

    move v0, v13

    :goto_3
    if-ge v0, v3, :cond_0

    move/from16 v18, v1

    .line 27
    aget-object v1, v4, v15

    move/from16 v19, v2

    move-object/from16 v2, p1

    invoke-interface {v2, v6, v0, v1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    aput-object v1, v4, v15

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v18

    move/from16 v2, v19

    goto :goto_3

    :cond_0
    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v2, p1

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v19

    goto :goto_2

    :cond_1
    move/from16 v19, v2

    move-object/from16 v2, p1

    move-object/from16 v0, p0

    move v6, v14

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v2, v19

    goto :goto_1

    :cond_2
    move-object/from16 v2, p1

    move/from16 v17, v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    goto/16 :goto_0

    :cond_3
    move-object/from16 v2, p1

    .line 28
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 9
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    const/4 v3, 0x0

    add-int/lit8 v4, v1, -0x1

    const/4 v5, 0x0

    add-int/lit8 v6, v2, -0x1

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 10
    :goto_0
    iget v3, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v1, v3, :cond_3

    mul-int/lit8 v3, v1, 0x24

    add-int/lit8 v4, v3, 0x24

    .line 11
    iget v5, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    move v5, v0

    .line 12
    :goto_1
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v5, v6, :cond_2

    mul-int/lit8 v6, v5, 0x24

    add-int/lit8 v7, v6, 0x24

    .line 13
    iget v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v7, v8}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v7

    .line 14
    iget-object v8, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v8, v8, v2

    move v10, v0

    move v9, v3

    :goto_2
    if-ge v9, v4, :cond_1

    move v11, v6

    :goto_3
    if-ge v11, v7, :cond_0

    .line 15
    aget-object v12, v8, v10

    invoke-interface {p1, v9, v11, v12}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 16
    :cond_3
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    return-object p0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 20
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

    move-object/from16 v0, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 29
    invoke-virtual {v0, v8, v9, v10, v11}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 30
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move-object/from16 v1, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    .line 31
    div-int/lit8 v1, v8, 0x24

    :goto_0
    div-int/lit8 v2, v9, 0x24

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x24

    .line 32
    invoke-static {v8, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v5, v4, 0x24

    add-int/lit8 v6, v9, 0x1

    .line 33
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    .line 34
    div-int/lit8 v6, v10, 0x24

    :goto_1
    div-int/lit8 v7, v11, 0x24

    add-int/lit8 v7, v7, 0x1

    if-ge v6, v7, :cond_2

    .line 35
    invoke-direct {v0, v6}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v7

    mul-int/lit8 v12, v6, 0x24

    .line 36
    invoke-static {v10, v12}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v13

    add-int/lit8 v14, v6, 0x1

    mul-int/lit8 v15, v14, 0x24

    move/from16 v16, v3

    add-int/lit8 v3, v11, 0x1

    .line 37
    invoke-static {v15, v3}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    .line 38
    iget-object v15, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move/from16 v17, v4

    iget v4, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v6

    aget-object v4, v15, v4

    move/from16 v6, v16

    :goto_2
    if-ge v6, v5, :cond_1

    sub-int v15, v6, v2

    mul-int/2addr v15, v7

    add-int/2addr v15, v13

    sub-int/2addr v15, v12

    move v0, v13

    :goto_3
    if-ge v0, v3, :cond_0

    move/from16 v18, v1

    .line 39
    aget-object v1, v4, v15

    move/from16 v19, v2

    move-object/from16 v2, p1

    invoke-interface {v2, v6, v0, v1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v15, v15, 0x1

    add-int/lit8 v0, v0, 0x1

    move/from16 v1, v18

    move/from16 v2, v19

    goto :goto_3

    :cond_0
    move/from16 v18, v1

    move/from16 v19, v2

    move-object/from16 v2, p1

    add-int/lit8 v6, v6, 0x1

    move-object/from16 v0, p0

    move/from16 v2, v19

    goto :goto_2

    :cond_1
    move/from16 v19, v2

    move-object/from16 v2, p1

    move-object/from16 v0, p0

    move v6, v14

    move/from16 v3, v16

    move/from16 v4, v17

    move/from16 v2, v19

    goto :goto_1

    :cond_2
    move-object/from16 v2, p1

    move/from16 v17, v4

    move-object/from16 v0, p0

    move/from16 v1, v17

    goto/16 :goto_0

    :cond_3
    move-object/from16 v2, p1

    .line 40
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    const/4 v3, 0x0

    add-int/lit8 v4, v1, -0x1

    const/4 v5, 0x0

    add-int/lit8 v6, v2, -0x1

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    const/4 v0, 0x0

    move v1, v0

    .line 2
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x24

    add-int/lit8 v3, v2, 0x24

    .line 3
    iget v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    move v5, v0

    .line 4
    :goto_2
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v5, v6, :cond_1

    .line 5
    invoke-direct {p0, v5}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v6

    mul-int/lit8 v7, v5, 0x24

    add-int/lit8 v8, v7, 0x24

    .line 6
    iget v9, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v8

    .line 7
    iget-object v9, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v10, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v10, v1

    add-int/2addr v10, v5

    aget-object v9, v9, v10

    sub-int v10, v4, v2

    mul-int/2addr v10, v6

    :goto_3
    if-ge v7, v8, :cond_0

    .line 8
    aget-object v6, v9, v10

    invoke-interface {p1, v4, v7, v6}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v6

    aput-object v6, v9, v10

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 9
    :cond_3
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    return-object p0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 18
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

    move-object/from16 v0, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 19
    invoke-virtual {v0, v8, v9, v10, v11}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 20
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move-object/from16 v1, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->start(IIIIII)V

    .line 21
    div-int/lit8 v1, v8, 0x24

    :goto_0
    div-int/lit8 v2, v9, 0x24

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x24

    .line 22
    invoke-static {v8, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v5, v4, 0x24

    add-int/lit8 v6, v9, 0x1

    .line 23
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    :goto_1
    if-ge v3, v5, :cond_2

    .line 24
    div-int/lit8 v6, v10, 0x24

    :goto_2
    div-int/lit8 v7, v11, 0x24

    add-int/lit8 v7, v7, 0x1

    if-ge v6, v7, :cond_1

    .line 25
    invoke-direct {v0, v6}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v7

    mul-int/lit8 v12, v6, 0x24

    .line 26
    invoke-static {v10, v12}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v13

    add-int/lit8 v14, v6, 0x1

    mul-int/lit8 v15, v14, 0x24

    move/from16 v16, v4

    add-int/lit8 v4, v11, 0x1

    .line 27
    invoke-static {v15, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    .line 28
    iget-object v15, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move/from16 v17, v5

    iget v5, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v6

    aget-object v5, v15, v5

    sub-int v6, v3, v2

    mul-int/2addr v6, v7

    add-int/2addr v6, v13

    sub-int/2addr v6, v12

    :goto_3
    if-ge v13, v4, :cond_0

    .line 29
    aget-object v7, v5, v6

    move-object/from16 v12, p1

    invoke-interface {v12, v3, v13, v7}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v7

    aput-object v7, v5, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_0
    move-object/from16 v12, p1

    move v6, v14

    move/from16 v4, v16

    move/from16 v5, v17

    goto :goto_2

    :cond_1
    move-object/from16 v12, p1

    move/from16 v16, v4

    move/from16 v17, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v12, p1

    move/from16 v16, v4

    move/from16 v1, v16

    goto :goto_0

    :cond_3
    move-object/from16 v12, p1

    .line 30
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 10
    iget v1, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    const/4 v3, 0x0

    add-int/lit8 v4, v1, -0x1

    const/4 v5, 0x0

    add-int/lit8 v6, v2, -0x1

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    const/4 v0, 0x0

    move v1, v0

    .line 11
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockRows:I

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x24

    add-int/lit8 v3, v2, 0x24

    .line 12
    iget v4, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    invoke-static {v3, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v3

    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    move v5, v0

    .line 13
    :goto_2
    iget v6, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    if-ge v5, v6, :cond_1

    .line 14
    invoke-direct {p0, v5}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v6

    mul-int/lit8 v7, v5, 0x24

    add-int/lit8 v8, v7, 0x24

    .line 15
    iget v9, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v8

    .line 16
    iget-object v9, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    iget v10, p0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v10, v1

    add-int/2addr v10, v5

    aget-object v9, v9, v10

    sub-int v10, v4, v2

    mul-int/2addr v10, v6

    :goto_3
    if-ge v7, v8, :cond_0

    .line 17
    aget-object v6, v9, v10

    invoke-interface {p1, v4, v7, v6}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v10, v10, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 18
    :cond_3
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    return-object p0
.end method

.method public walkInRowOrder(Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;IIII)Lorg/apache/commons/math3/FieldElement;
    .locals 18
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

    move-object/from16 v0, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    move/from16 v11, p5

    .line 31
    invoke-virtual {v0, v8, v9, v10, v11}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkSubMatrixIndex(IIII)V

    .line 32
    iget v2, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->rows:I

    iget v3, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->columns:I

    move-object/from16 v1, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    invoke-interface/range {v1 .. v7}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->start(IIIIII)V

    .line 33
    div-int/lit8 v1, v8, 0x24

    :goto_0
    div-int/lit8 v2, v9, 0x24

    add-int/lit8 v2, v2, 0x1

    if-ge v1, v2, :cond_3

    mul-int/lit8 v2, v1, 0x24

    .line 34
    invoke-static {v8, v2}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v3

    add-int/lit8 v4, v1, 0x1

    mul-int/lit8 v5, v4, 0x24

    add-int/lit8 v6, v9, 0x1

    .line 35
    invoke-static {v5, v6}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v5

    :goto_1
    if-ge v3, v5, :cond_2

    .line 36
    div-int/lit8 v6, v10, 0x24

    :goto_2
    div-int/lit8 v7, v11, 0x24

    add-int/lit8 v7, v7, 0x1

    if-ge v6, v7, :cond_1

    .line 37
    invoke-direct {v0, v6}, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockWidth(I)I

    move-result v7

    mul-int/lit8 v12, v6, 0x24

    .line 38
    invoke-static {v10, v12}, Lorg/apache/commons/math3/util/FastMath;->max(II)I

    move-result v13

    add-int/lit8 v14, v6, 0x1

    mul-int/lit8 v15, v14, 0x24

    move/from16 v16, v4

    add-int/lit8 v4, v11, 0x1

    .line 39
    invoke-static {v15, v4}, Lorg/apache/commons/math3/util/FastMath;->min(II)I

    move-result v4

    .line 40
    iget-object v15, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blocks:[[Lorg/apache/commons/math3/FieldElement;

    move/from16 v17, v5

    iget v5, v0, Lorg/apache/commons/math3/linear/BlockFieldMatrix;->blockColumns:I

    mul-int/2addr v5, v1

    add-int/2addr v5, v6

    aget-object v5, v15, v5

    sub-int v6, v3, v2

    mul-int/2addr v6, v7

    add-int/2addr v6, v13

    sub-int/2addr v6, v12

    :goto_3
    if-ge v13, v4, :cond_0

    .line 41
    aget-object v7, v5, v6

    move-object/from16 v12, p1

    invoke-interface {v12, v3, v13, v7}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->visit(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    :cond_0
    move-object/from16 v12, p1

    move v6, v14

    move/from16 v4, v16

    move/from16 v5, v17

    goto :goto_2

    :cond_1
    move-object/from16 v12, p1

    move/from16 v16, v4

    move/from16 v17, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    move-object/from16 v12, p1

    move/from16 v16, v4

    move/from16 v1, v16

    goto :goto_0

    :cond_3
    move-object/from16 v12, p1

    .line 42
    invoke-interface/range {p1 .. p1}, Lorg/apache/commons/math3/linear/FieldMatrixPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    return-object v0
.end method
