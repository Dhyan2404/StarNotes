.class public final Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final InitialSize:I = 0x20


# instance fields
.field private _array:[I

.field private _free:I

.field private _size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x20

    .line 1
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    .line 4
    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_size:I

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_array:[I

    return-void
.end method

.method public constructor <init>([I)V
    .locals 2

    .line 5
    array-length v0, p1

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;-><init>(I)V

    .line 6
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_array:[I

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_size:I

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    const/4 p0, 0x0

    invoke-static {p1, p0, v0, p0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method private growArray(I)V
    .locals 3

    iput p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_size:I

    new-array p1, p1, [I

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_array:[I

    const/4 v1, 0x0

    iget v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    invoke-static {v0, v1, p1, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_array:[I

    return-void
.end method

.method private static partition([III)I
    .locals 3

    add-int v0, p1, p2

    ushr-int/lit8 v0, v0, 0x1

    aget v0, p0, v0

    add-int/lit8 p1, p1, -0x1

    add-int/lit8 p2, p2, 0x1

    :goto_0
    add-int/lit8 p2, p2, -0x1

    aget v1, p0, p2

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    aget v1, p0, p1

    if-le v0, v1, :cond_1

    goto :goto_1

    :cond_1
    if-ge p1, p2, :cond_2

    aget v2, p0, p2

    aput v2, p0, p1

    aput v1, p0, p2

    goto :goto_0

    :cond_2
    return p2
.end method

.method private static quicksort([III)V
    .locals 1

    if-ge p1, p2, :cond_0

    invoke-static {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->partition([III)I

    move-result v0

    invoke-static {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->quicksort([III)V

    add-int/lit8 v0, v0, 0x1

    invoke-static {p0, v0, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->quicksort([III)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final add(I)V
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_size:I

    if-ne v0, v1, :cond_0

    mul-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->growArray(I)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_array:[I

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    aput p1, v0, v1

    return-void
.end method

.method public addNew(I)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_array:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->add(I)V

    return-void
.end method

.method public final at(I)I
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_array:[I

    aget p0, p0, p1

    return p0
.end method

.method public final cardinality()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    return p0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    if-lez v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-direct {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;-><init>(I)V

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_array:[I

    iget-object v2, v0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_array:[I

    iget v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    const/4 v4, 0x0

    invoke-static {v1, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    iput p0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    return-object v0
.end method

.method public indexOf(I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_array:[I

    aget v1, v1, v0

    if-ne p1, v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public last()I
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_array:[I

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    add-int/lit8 p0, p0, -0x1

    aget p0, v0, p0

    return p0
.end method

.method public merge(Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;)V
    .locals 7

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    iget v1, p1, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    add-int/2addr v0, v1

    new-array v1, v0, [I

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_0
    iget v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    if-ge v2, v5, :cond_2

    iget v6, p1, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    if-ge v3, v6, :cond_2

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_array:[I

    aget v5, v5, v2

    iget-object v6, p1, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_array:[I

    aget v6, v6, v3

    if-ge v5, v6, :cond_0

    aput v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_0
    if-le v5, v6, :cond_1

    aput v6, v1, v4

    goto :goto_1

    :cond_1
    aput v5, v1, v4

    add-int/lit8 v2, v2, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    if-lt v2, v5, :cond_3

    :goto_3
    iget v2, p1, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    if-ge v3, v2, :cond_4

    add-int/lit8 v2, v4, 0x1

    iget-object v5, p1, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_array:[I

    add-int/lit8 v6, v3, 0x1

    aget v3, v5, v3

    aput v3, v1, v4

    move v4, v2

    move v3, v6

    goto :goto_3

    :cond_3
    :goto_4
    iget p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    if-ge v2, p1, :cond_4

    add-int/lit8 p1, v4, 0x1

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_array:[I

    add-int/lit8 v5, v2, 0x1

    aget v2, v3, v2

    aput v2, v1, v4

    move v4, p1

    move v2, v5

    goto :goto_4

    :cond_4
    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_array:[I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_size:I

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    return-void
.end method

.method public pop()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    return-void
.end method

.method public pop(I)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    return-void
.end method

.method public popLast()I
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_array:[I

    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    aget p0, v0, v1

    return p0
.end method

.method public print(Ljava/io/PrintStream;)V
    .locals 3

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    add-int/lit8 v2, v1, -0x1

    if-ge v0, v2, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_array:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(I)V

    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/PrintStream;->print(C)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_array:[I

    add-int/lit8 v1, v1, -0x1

    aget p0, p0, v1

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(I)V

    goto :goto_1

    :cond_1
    const-string p0, "IntegerArray: empty"

    invoke-virtual {p1, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public reverse()V
    .locals 6

    iget v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_array:[I

    aget v3, v2, v1

    add-int/lit8 v4, v1, 0x1

    aget v5, v2, v0

    aput v5, v2, v1

    add-int/lit8 v1, v0, -0x1

    aput v3, v2, v0

    move v0, v1

    move v1, v4

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final set(II)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_array:[I

    aput p2, p0, p1

    return-void
.end method

.method public setLast(I)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_array:[I

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    add-int/lit8 p0, p0, -0x1

    aput p1, v0, p0

    return-void
.end method

.method public sort()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_array:[I

    iget p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_free:I

    add-int/lit8 p0, p0, -0x1

    const/4 v1, 0x0

    invoke-static {v0, v1, p0}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->quicksort([III)V

    return-void
.end method

.method public toIntArray()[I
    .locals 3

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->cardinality()I

    move-result v0

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->_array:[I

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/util/IntegerArray;->cardinality()I

    move-result p0

    invoke-static {v1, v2, v0, v2, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method
