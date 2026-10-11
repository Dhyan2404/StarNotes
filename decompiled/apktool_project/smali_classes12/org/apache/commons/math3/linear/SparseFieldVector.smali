.class public Lorg/apache/commons/math3/linear/SparseFieldVector;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/math3/linear/FieldVector;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/linear/FieldVector<",
        "TT;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x6cd1a82275f9f232L


# instance fields
.field private final entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final field:Lorg/apache/commons/math3/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final virtualSize:I


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

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/linear/SparseFieldVector;-><init>(Lorg/apache/commons/math3/Field;I)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;I)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 4
    iput p2, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    .line 5
    new-instance p2, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {p2, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/Field;)V

    iput-object p2, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

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

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 12
    iput p2, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    .line 13
    new-instance p2, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {p2, p1, p3}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/Field;I)V

    iput-object p2, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/Field;[Lorg/apache/commons/math3/FieldElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;[TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 16
    iput-object p1, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 17
    array-length v0, p2

    iput v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    .line 18
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/Field;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    const/4 p1, 0x0

    .line 19
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_0

    .line 20
    aget-object v0, p2, p1

    .line 21
    iget-object v1, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v1, p1, v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->put(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/SparseFieldVector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/SparseFieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iget-object v0, p1, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 24
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    .line 25
    new-instance v0, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/linear/SparseFieldVector;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/SparseFieldVector<",
            "TT;>;I)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-object v0, p1, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    iput-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    .line 8
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v0

    add-int/2addr v0, p2

    iput v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    .line 9
    new-instance p2, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    iget-object p1, p1, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-direct {p2, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;-><init>(Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;)V

    iput-object p2, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    return-void
.end method

.method private checkIndex(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v0

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0
.end method

.method private checkIndices(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    if-ltz p1, :cond_2

    if-ge p1, p0, :cond_2

    if-ltz p2, :cond_1

    if-ge p2, p0, :cond_1

    if-lt p2, p1, :cond_0

    return-void

    :cond_0
    new-instance p0, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INITIAL_ROW_AFTER_FINAL_ROW:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-direct {p0, v1, p2, p1, v0}, Lorg/apache/commons/math3/exception/NumberIsTooSmallException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Z)V

    throw p0

    :cond_1
    new-instance p1, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p1, v0, p2, v1, p0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p1

    :cond_2
    new-instance p2, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    add-int/lit8 p0, p0, -0x1

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-direct {p2, v0, p1, v1, p0}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw p2
.end method

.method private getEntries()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/util/OpenIntToFieldHashMap<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    return-object p0
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 11
    instance-of v0, p1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    if-eqz v0, :cond_0

    .line 12
    check-cast p1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->add(Lorg/apache/commons/math3/linear/SparseFieldVector;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object p0

    return-object p0

    .line 13
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v0

    .line 14
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkVectorDimensions(I)V

    .line 15
    new-instance v1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lorg/apache/commons/math3/linear/SparseFieldVector;-><init>(Lorg/apache/commons/math3/Field;I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 16
    invoke-interface {p1, v2}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public add(Lorg/apache/commons/math3/linear/SparseFieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/SparseFieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkVectorDimensions(I)V

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->copy()Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/linear/SparseFieldVector;

    .line 3
    invoke-direct {p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object p1

    .line 4
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    .line 6
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v1

    .line 7
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    .line 8
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v3, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->get(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public append(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    .line 11
    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    new-instance v0, Lorg/apache/commons/math3/linear/SparseFieldVector;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/SparseFieldVector;-><init>(Lorg/apache/commons/math3/linear/SparseFieldVector;I)V

    .line 13
    iget p0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    invoke-interface {v0, p0, p1}, Lorg/apache/commons/math3/linear/FieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    return-object v0
.end method

.method public append(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .line 6
    instance-of v0, p1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    if-eqz v0, :cond_0

    .line 7
    check-cast p1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->append(Lorg/apache/commons/math3/linear/SparseFieldVector;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object p0

    return-object p0

    .line 8
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v0

    .line 9
    new-instance v1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/math3/linear/SparseFieldVector;-><init>(Lorg/apache/commons/math3/linear/SparseFieldVector;I)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 10
    iget v3, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    add-int/2addr v3, v2

    invoke-interface {p1, v2}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v1, v3, v4}, Lorg/apache/commons/math3/linear/FieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public append(Lorg/apache/commons/math3/linear/SparseFieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/SparseFieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lorg/apache/commons/math3/linear/SparseFieldVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v1

    invoke-direct {v0, p0, v1}, Lorg/apache/commons/math3/linear/SparseFieldVector;-><init>(Lorg/apache/commons/math3/linear/SparseFieldVector;I)V

    .line 2
    iget-object p1, p1, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object p1

    .line 3
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v1

    iget v2, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    add-int/2addr v1, v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public checkVectorDimensions(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result p0

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0
.end method

.method public copy()Lorg/apache/commons/math3/linear/FieldVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lorg/apache/commons/math3/linear/SparseFieldVector;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;-><init>(Lorg/apache/commons/math3/linear/SparseFieldVector;)V

    return-object v0
.end method

.method public dotProduct(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/FieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkVectorDimensions(I)V

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v1

    invoke-interface {p1, v1}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public ebeDivide(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkVectorDimensions(I)V

    new-instance v0, Lorg/apache/commons/math3/linear/SparseFieldVector;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;-><init>(Lorg/apache/commons/math3/linear/SparseFieldVector;)V

    iget-object p0, v0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public ebeMultiply(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkVectorDimensions(I)V

    new-instance v0, Lorg/apache/commons/math3/linear/SparseFieldVector;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;-><init>(Lorg/apache/commons/math3/linear/SparseFieldVector;)V

    iget-object p0, v0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v3

    invoke-interface {p1, v3}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    if-nez v1, :cond_2

    iget-object v1, p1, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    if-eqz v1, :cond_3

    return v2

    :cond_2
    iget-object v3, p1, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    iget v3, p1, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object v1

    :cond_5
    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    return v2

    :cond_6
    invoke-direct {p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object p1

    :cond_7
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v3

    invoke-virtual {p0, v3}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    :cond_8
    return v0
.end method

.method public getData()[Lorg/apache/commons/math3/FieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->toArray()[Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    return-object p0
.end method

.method public getDimension()I
    .locals 0

    iget p0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    return p0
.end method

.method public getEntry(I)Lorg/apache/commons/math3/FieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkIndex(I)V

    iget-object p0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->get(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    return-object p0
.end method

.method public getField()Lorg/apache/commons/math3/Field;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/Field<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    return-object p0
.end method

.method public getSubVector(II)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;,
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    if-ltz p2, :cond_2

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkIndex(I)V

    add-int v0, p1, p2

    add-int/lit8 v1, v0, -0x1

    invoke-direct {p0, v1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkIndex(I)V

    new-instance v1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-direct {v1, v2, p2}, Lorg/apache/commons/math3/linear/SparseFieldVector;-><init>(Lorg/apache/commons/math3/Field;I)V

    iget-object p0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result p2

    if-lt p2, p1, :cond_0

    if-ge p2, v0, :cond_0

    sub-int/2addr p2, p1

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    new-instance p0, Lorg/apache/commons/math3/exception/NotPositiveException;

    sget-object p1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NUMBER_OF_ELEMENTS_SHOULD_BE_POSITIVE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;)V

    throw p0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const/16 v1, 0x1f

    add-int/2addr v0, v1

    mul-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    add-int/2addr v0, v1

    iget-object p0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object p0

    :goto_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    goto :goto_1

    :cond_1
    return v0
.end method

.method public mapAdd(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->copy()Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/linear/FieldVector;->mapAddToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object p0

    return-object p0
.end method

.method public mapAddToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/FieldElement;->add(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public mapDivide(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->copy()Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/linear/FieldVector;->mapDivideToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object p0

    return-object p0
.end method

.method public mapDivideToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    iget-object v1, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->put(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public mapInv()Lorg/apache/commons/math3/linear/FieldVector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->copy()Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object p0

    invoke-interface {p0}, Lorg/apache/commons/math3/linear/FieldVector;->mapInvToSelf()Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object p0

    return-object p0
.end method

.method public mapInvToSelf()Lorg/apache/commons/math3/linear/FieldVector;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v1}, Lorg/apache/commons/math3/Field;->getOne()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {p0, v0, v1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public mapMultiply(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->copy()Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/linear/FieldVector;->mapMultiplyToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object p0

    return-object p0
.end method

.method public mapMultiplyToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object v0

    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    iget-object v1, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-interface {v3, p1}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->put(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public mapSubtract(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->copy()Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/apache/commons/math3/linear/FieldVector;->mapSubtractToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object p0

    return-object p0
.end method

.method public mapSubtractToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v0}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v0, p1}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->mapAddToSelf(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object p0

    return-object p0
.end method

.method public outerProduct(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 10
    instance-of v0, p1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    if-eqz v0, :cond_0

    .line 11
    check-cast p1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->outerProduct(Lorg/apache/commons/math3/linear/SparseFieldVector;)Lorg/apache/commons/math3/linear/FieldMatrix;

    move-result-object p0

    return-object p0

    .line 12
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v0

    .line 13
    new-instance v1, Lorg/apache/commons/math3/linear/SparseFieldMatrix;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget v3, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 14
    iget-object p0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object p0

    .line 15
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    .line 17
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v2

    .line 18
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v0, :cond_1

    .line 19
    invoke-interface {p1, v4}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    invoke-interface {v3, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {v1, v2, v4, v5}, Lorg/apache/commons/math3/linear/FieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public outerProduct(Lorg/apache/commons/math3/linear/SparseFieldVector;)Lorg/apache/commons/math3/linear/FieldMatrix;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/SparseFieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldMatrix<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v0

    .line 2
    new-instance v1, Lorg/apache/commons/math3/linear/SparseFieldMatrix;

    iget-object v2, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget v3, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    invoke-direct {v1, v2, v3, v0}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;-><init>(Lorg/apache/commons/math3/Field;II)V

    .line 3
    iget-object p0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object p0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    .line 6
    iget-object v0, p1, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object v0

    .line 7
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v3

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/apache/commons/math3/FieldElement;->multiply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v1, v2, v3, v4}, Lorg/apache/commons/math3/linear/SparseFieldMatrix;->setEntry(IILorg/apache/commons/math3/FieldElement;)V

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public projection(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;,
            Lorg/apache/commons/math3/exception/MathArithmeticException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkVectorDimensions(I)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->dotProduct(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    invoke-interface {p1, p1}, Lorg/apache/commons/math3/linear/FieldVector;->dotProduct(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/commons/math3/FieldElement;->divide(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {p1, p0}, Lorg/apache/commons/math3/linear/FieldVector;->mapMultiply(Lorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object p0

    return-object p0
.end method

.method public set(Lorg/apache/commons/math3/FieldElement;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    invoke-static {p1}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setEntry(ILorg/apache/commons/math3/FieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    invoke-static {p2}, Lorg/apache/commons/math3/util/MathUtils;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkIndex(I)V

    iget-object p0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->put(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    return-void
.end method

.method public setSubVector(ILorg/apache/commons/math3/linear/FieldVector;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkIndex(I)V

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v0

    add-int/2addr v0, p1

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkIndex(I)V

    invoke-interface {p2}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    add-int v2, v1, p1

    invoke-interface {p2, v1}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public subtract(Lorg/apache/commons/math3/linear/FieldVector;)Lorg/apache/commons/math3/linear/FieldVector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/FieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 10
    instance-of v0, p1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    if-eqz v0, :cond_0

    .line 11
    check-cast p1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->subtract(Lorg/apache/commons/math3/linear/SparseFieldVector;)Lorg/apache/commons/math3/linear/SparseFieldVector;

    move-result-object p0

    return-object p0

    .line 12
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVector;->getDimension()I

    move-result v0

    .line 13
    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkVectorDimensions(I)V

    .line 14
    new-instance v1, Lorg/apache/commons/math3/linear/SparseFieldVector;

    invoke-direct {v1, p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;-><init>(Lorg/apache/commons/math3/linear/SparseFieldVector;)V

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 15
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 16
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v3, v2}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->get(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-interface {p1, v2}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    goto :goto_1

    .line 17
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v3}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    invoke-interface {p1, v2}, Lorg/apache/commons/math3/linear/FieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public subtract(Lorg/apache/commons/math3/linear/SparseFieldVector;)Lorg/apache/commons/math3/linear/SparseFieldVector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/SparseFieldVector<",
            "TT;>;)",
            "Lorg/apache/commons/math3/linear/SparseFieldVector<",
            "TT;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkVectorDimensions(I)V

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->copy()Lorg/apache/commons/math3/linear/FieldVector;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/linear/SparseFieldVector;

    .line 3
    invoke-direct {p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntries()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    move-result-object p1

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object p1

    .line 4
    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    .line 6
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v1

    .line 7
    iget-object v2, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->containsKey(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 8
    iget-object v2, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->get(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    goto :goto_0

    .line 9
    :cond_0
    iget-object v2, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    invoke-interface {v2}, Lorg/apache/commons/math3/Field;->getZero()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/apache/commons/math3/FieldElement;->subtract(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/FieldElement;

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public toArray()[Lorg/apache/commons/math3/FieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TT;"
        }
    .end annotation

    iget-object v0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->field:Lorg/apache/commons/math3/Field;

    iget v1, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->virtualSize:I

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/MathArrays;->buildArray(Lorg/apache/commons/math3/Field;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/FieldElement;

    iget-object p0, p0, Lorg/apache/commons/math3/linear/SparseFieldVector;->entries:Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap;->iterator()Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;

    move-result-object p0

    :goto_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->advance()V

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->key()I

    move-result v1

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/OpenIntToFieldHashMap$Iterator;->value()Lorg/apache/commons/math3/FieldElement;

    move-result-object v2

    aput-object v2, v0, v1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    .line 10
    invoke-interface {p1, v0, v2, v1}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->start(III)V

    :goto_0
    if-ge v2, v0, :cond_0

    .line 11
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->visit(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-virtual {p0, v2, v1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 12
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    return-object p0
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;II)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor<",
            "TT;>;II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 13
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkIndices(II)V

    .line 14
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v0

    invoke-interface {p1, v0, p2, p3}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->start(III)V

    :goto_0
    if-gt p2, p3, :cond_0

    .line 15
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->visit(ILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->setEntry(ILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 16
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    return-object p0
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    const/4 v2, 0x0

    .line 2
    invoke-interface {p1, v0, v2, v1}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->start(III)V

    :goto_0
    if-ge v2, v0, :cond_0

    .line 3
    invoke-virtual {p0, v2}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v1

    invoke-interface {p1, v2, v1}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->visit(ILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    return-object p0
.end method

.method public walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;II)Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor<",
            "TT;>;II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 5
    invoke-direct {p0, p2, p3}, Lorg/apache/commons/math3/linear/SparseFieldVector;->checkIndices(II)V

    .line 6
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getDimension()I

    move-result v0

    invoke-interface {p1, v0, p2, p3}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->start(III)V

    :goto_0
    if-gt p2, p3, :cond_0

    .line 7
    invoke-virtual {p0, p2}, Lorg/apache/commons/math3/linear/SparseFieldVector;->getEntry(I)Lorg/apache/commons/math3/FieldElement;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->visit(ILorg/apache/commons/math3/FieldElement;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 8
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;->end()Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    return-object p0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;)Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    return-object p0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;II)Lorg/apache/commons/math3/FieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor<",
            "TT;>;II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/SparseFieldVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorChangingVisitor;II)Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    return-object p0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/linear/SparseFieldVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;)Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    return-object p0
.end method

.method public walkInOptimizedOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;II)Lorg/apache/commons/math3/FieldElement;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor<",
            "TT;>;II)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NumberIsTooSmallException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/commons/math3/linear/SparseFieldVector;->walkInDefaultOrder(Lorg/apache/commons/math3/linear/FieldVectorPreservingVisitor;II)Lorg/apache/commons/math3/FieldElement;

    move-result-object p0

    return-object p0
.end method
