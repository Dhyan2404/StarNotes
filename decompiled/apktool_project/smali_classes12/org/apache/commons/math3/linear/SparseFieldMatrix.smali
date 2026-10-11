.class public Lorg/apache/commons/math3/linear/SparseFieldMatrix;
.super Lorg/apache/commons/math3/linear/AbstractFieldMatrix;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement<",
        "TT;>;>",
        "Lorg/apache/commons/math3/linear/AbstractFieldMatrix<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final f:I

.field public final g:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/Field;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->f:I

    .line 3
    iput v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->g:I

    .line 4
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/Field;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->e:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

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

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 6
    iput p2, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->f:I

    .line 7
    iput p3, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->g:I

    .line 8
    new-instance p2, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {p2, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/Field;)V

    iput-object p2, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->e:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/FieldMatrix;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .line 13
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v1

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 14
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getRowDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->f:I

    .line 15
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/AnyMatrix;->getColumnDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->g:I

    .line 16
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/Field;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->e:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    const/4 v0, 0x0

    move v1, v0

    .line 17
    :goto_0
    iget v2, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->f:I

    if-ge v1, v2, :cond_1

    move v2, v0

    .line 18
    :goto_1
    iget v3, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->g:I

    if-ge v2, v3, :cond_0

    .line 19
    invoke-interface {p1, v1, v2}, Lorg/apache/commons/math3/linear/FieldMatrix;->getEntry(II)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/SparseFieldMatrix;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/SparseFieldMatrix<",
            "TT;>;)V"
        }
    .end annotation

    .line 9
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->getRowDimension()I

    move-result v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->getColumnDimension()I

    move-result v2

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 10
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->getRowDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->f:I

    .line 11
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->getColumnDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->g:I

    .line 12
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->e:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->e:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    return-void
.end method


# virtual methods
.method public final a(II)I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->g:I

    mul-int/2addr p1, p0

    add-int/2addr p1, p2

    return p1
.end method

.method public addToEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->a(II)I

    move-result p1

    iget-object p2, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->e:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->get(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object p2

    invoke-interface {p2, p3}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->e:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->remove(I)Lorg/apache/commons/math3/FieldElement;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->e:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->put(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    :goto_0
    return-void
.end method

.method public copy()Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;-><init>(Lorg/apache/commons/math3/linear/SparseFieldMatrix;)V

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

    new-instance v0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p0

    invoke-direct {v0, p0, p1, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    return-object v0
.end method

.method public getColumnDimension()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->g:I

    return p0
.end method

.method public getEntry(II)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)TT;"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->e:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->a(II)I

    move-result p0

    invoke-virtual {v0, p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->get(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    return-object p0
.end method

.method public getRowDimension()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->f:I

    return p0
.end method

.method public multiplyEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->a(II)I

    move-result p1

    iget-object p2, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->e:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p2, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->get(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object p2

    invoke-interface {p2, p3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object p3

    invoke-interface {p3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {p3, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->e:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->remove(I)Lorg/apache/commons/math3/FieldElement;

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->e:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->put(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    :goto_0
    return-void
.end method

.method public setEntry(IILorg/apache/commons/math3/FieldElement;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkRowIndex(I)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->checkColumnIndex(I)V

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->getField()Lorg/apache/commons/math3/Field;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p3, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->e:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->a(II)I

    move-result p0

    invoke-virtual {p3, p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->remove(I)Lorg/apache/commons/math3/FieldElement;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->e:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->a(II)I

    move-result p0

    invoke-virtual {v0, p0, p3}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->put(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    :goto_0
    return-void
.end method
