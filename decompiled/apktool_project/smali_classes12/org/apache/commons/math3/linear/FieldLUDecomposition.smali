.class public Lorg/apache/commons/math3/linear/FieldLUDecomposition;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/linear/FieldLUDecomposition$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation
.end field

.field public b:[[Lorg/apache/commons/math3/FieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[TT;"
        }
    .end annotation
.end field

.field public c:[I

.field public d:Z

.field public e:Z

.field public f:Lorg/apache/commons/math3/linear/FieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation
.end field

.field public g:Lorg/apache/commons/math3/linear/FieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation
.end field

.field public h:Lorg/apache/commons/math3/linear/FieldMatrix;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->isSquare()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->a:Lorg/apache/commons/math3/Field;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getData()[[Lorg/apache/commons/math3/FieldElement;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->b:[[Lorg/apache/commons/math3/FieldElement;

    new-array p1, v0, [I

    iput-object p1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->c:[I

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->f:Lorg/apache/commons/math3/linear/FieldMatrix;

    iput-object p1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->g:Lorg/apache/commons/math3/linear/FieldMatrix;

    iput-object p1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->h:Lorg/apache/commons/math3/linear/FieldMatrix;

    const/4 p1, 0x0

    move v1, p1

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->c:[I

    aput v1, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->d:Z

    iput-boolean p1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->e:Z

    move v2, p1

    :goto_1
    if-ge v2, v0, :cond_a

    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->a:Lorg/apache/commons/math3/Field;

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    move v3, p1

    :goto_2
    if-ge v3, v2, :cond_2

    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->b:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v4, v4, v3

    aget-object v5, v4, v2

    move v6, p1

    :goto_3
    if-ge v6, v3, :cond_1

    aget-object v7, v4, v6

    iget-object v8, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->b:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v8, v8, v6

    aget-object v8, v8, v2

    invoke-interface {v7, v8}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v5, v7}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_1
    aput-object v5, v4, v2

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move v3, v2

    move v4, v3

    :goto_4
    if-ge v3, v0, :cond_5

    iget-object v5, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->b:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v5, v5, v3

    aget-object v6, v5, v2

    move v7, p1

    :goto_5
    if-ge v7, v2, :cond_3

    aget-object v8, v5, v7

    iget-object v9, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->b:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v9, v9, v7

    aget-object v9, v9, v2

    invoke-interface {v8, v9}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v6, v8}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_3
    aput-object v6, v5, v2

    iget-object v5, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->b:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v5, v5, v4

    aget-object v5, v5, v2

    iget-object v6, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->a:Lorg/apache/commons/math3/Field;

    invoke-interface {v6}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    add-int/lit8 v4, v4, 0x1

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    if-lt v4, v0, :cond_6

    iput-boolean v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->e:Z

    return-void

    :cond_6
    if-eq v4, v2, :cond_8

    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->a:Lorg/apache/commons/math3/Field;

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    move v3, p1

    :goto_6
    if-ge v3, v0, :cond_7

    iget-object v5, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->b:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v6, v5, v4

    aget-object v7, v6, v3

    aget-object v8, v5, v2

    aget-object v8, v8, v3

    aput-object v8, v6, v3

    aget-object v5, v5, v2

    aput-object v7, v5, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->c:[I

    aget v5, v3, v4

    aget v6, v3, v2

    aput v6, v3, v4

    aput v5, v3, v2

    iget-boolean v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->d:Z

    xor-int/2addr v3, v1

    iput-boolean v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->d:Z

    :cond_8
    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->b:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v2

    aget-object v3, v3, v2

    add-int/lit8 v4, v2, 0x1

    move v5, v4

    :goto_7
    if-ge v5, v0, :cond_9

    iget-object v6, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->b:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v6, v6, v5

    aget-object v7, v6, v2

    invoke-interface {v7, v3}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/FieldElement;

    aput-object v7, v6, v2

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_9
    move v2, v4

    goto/16 :goto_1

    :cond_a
    return-void

    :cond_b
    new-instance p0, Lorg/apache/commons/math3/linear/NonSquareMatrixException;

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result p1

    invoke-direct {p0, v0, p1}, Lorg/apache/commons/math3/linear/NonSquareMatrixException;-><init>(II)V

    throw p0
.end method


# virtual methods
.method public getDeterminant()Lorg/apache/commons/math3/FieldElement;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->e:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->a:Lorg/apache/commons/math3/Field;

    invoke-interface {p0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/FieldElement;

    return-object p0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->c:[I

    array-length v0, v0

    iget-boolean v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->a:Lorg/apache/commons/math3/Field;

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->a:Lorg/apache/commons/math3/Field;

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->a:Lorg/apache/commons/math3/Field;

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_2

    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->b:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v2

    aget-object v3, v3, v2

    invoke-interface {v1, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return-object v1
.end method

.method public getL()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->f:Lorg/apache/commons/math3/linear/FieldMatrix;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->c:[I

    array-length v0, v0

    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->a:Lorg/apache/commons/math3/Field;

    invoke-direct {v1, v2, v0, v0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    iput-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->f:Lorg/apache/commons/math3/linear/FieldMatrix;

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->b:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v3, v3, v2

    move v4, v1

    :goto_1
    if-ge v4, v2, :cond_0

    iget-object v5, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->f:Lorg/apache/commons/math3/linear/FieldMatrix;

    aget-object v6, v3, v4

    invoke-interface {v5, v2, v4, v6}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->f:Lorg/apache/commons/math3/linear/FieldMatrix;

    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->a:Lorg/apache/commons/math3/Field;

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v3, v2, v2, v4}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->f:Lorg/apache/commons/math3/linear/FieldMatrix;

    return-object p0
.end method

.method public getP()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->h:Lorg/apache/commons/math3/linear/FieldMatrix;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->e:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->c:[I

    array-length v0, v0

    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->a:Lorg/apache/commons/math3/Field;

    invoke-direct {v1, v2, v0, v0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    iput-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->h:Lorg/apache/commons/math3/linear/FieldMatrix;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->h:Lorg/apache/commons/math3/linear/FieldMatrix;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->c:[I

    aget v3, v3, v1

    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->a:Lorg/apache/commons/math3/Field;

    invoke-interface {v4}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v2, v1, v3, v4}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->h:Lorg/apache/commons/math3/linear/FieldMatrix;

    return-object p0
.end method

.method public getPivot()[I
    .locals 0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->c:[I

    invoke-virtual {p0}, [I->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    return-object p0
.end method

.method public getSolver()Lorg/apache/commons/math3/linear/FieldDecompositionSolver;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldDecompositionSolver<",
            "TT;>;"
        }
    .end annotation

    new-instance v6, Lorg/apache/commons/math3/linear/FieldLUDecomposition$b;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->a:Lorg/apache/commons/math3/Field;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->b:[[Lorg/apache/commons/math3/FieldElement;

    iget-object v3, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->c:[I

    iget-boolean v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->e:Z

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/linear/FieldLUDecomposition$b;-><init>(Lorg/apache/commons/math3/Field;[[Lorg/apache/commons/math3/FieldElement;[IZLorg/apache/commons/math3/linear/FieldLUDecomposition$a;)V

    return-object v6
.end method

.method public getU()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->g:Lorg/apache/commons/math3/linear/FieldMatrix;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->c:[I

    array-length v0, v0

    new-instance v1, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->a:Lorg/apache/commons/math3/Field;

    invoke-direct {v1, v2, v0, v0}, Lorg/apache/commons/math3/linear/Array2DRowFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    iput-object v1, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->g:Lorg/apache/commons/math3/linear/FieldMatrix;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->b:[[Lorg/apache/commons/math3/FieldElement;

    aget-object v2, v2, v1

    move v3, v1

    :goto_1
    if-ge v3, v0, :cond_0

    iget-object v4, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->g:Lorg/apache/commons/math3/linear/FieldMatrix;

    aget-object v5, v2, v3

    invoke-interface {v4, v1, v3, v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lorg/apache/commons/math3/linear/FieldLUDecomposition;->g:Lorg/apache/commons/math3/linear/FieldMatrix;

    return-object p0
.end method
