.class public Lnet/sf/saxon/z/MonotonicIntSet;
.super Lnet/sf/saxon/z/IntSet;
.source "SourceFile"


# instance fields
.field public a:[I

.field public b:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/z/IntSet;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [I

    .line 2
    iput-object v0, p0, Lnet/sf/saxon/z/MonotonicIntSet;->a:[I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lnet/sf/saxon/z/MonotonicIntSet;->b:I

    return-void
.end method

.method public constructor <init>([II)V
    .locals 0

    .line 4
    invoke-direct {p0}, Lnet/sf/saxon/z/IntSet;-><init>()V

    .line 5
    iput-object p1, p0, Lnet/sf/saxon/z/MonotonicIntSet;->a:[I

    .line 6
    iput p2, p0, Lnet/sf/saxon/z/MonotonicIntSet;->b:I

    return-void
.end method

.method public static make([II)Lnet/sf/saxon/z/MonotonicIntSet;
    .locals 1

    new-instance v0, Lnet/sf/saxon/z/MonotonicIntSet;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/z/MonotonicIntSet;-><init>([II)V

    return-object v0
.end method


# virtual methods
.method public add(I)Z
    .locals 3

    iget v0, p0, Lnet/sf/saxon/z/MonotonicIntSet;->b:I

    if-lez v0, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/z/MonotonicIntSet;->a:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-ne p1, v1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-lt p1, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Values must be added in monotonic order"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object v1, p0, Lnet/sf/saxon/z/MonotonicIntSet;->a:[I

    array-length v2, v1

    if-ne v0, v2, :cond_4

    if-nez v0, :cond_3

    const/4 v0, 0x4

    goto :goto_1

    :cond_3
    mul-int/lit8 v0, v0, 0x2

    :goto_1
    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/z/MonotonicIntSet;->a:[I

    :cond_4
    iget-object v0, p0, Lnet/sf/saxon/z/MonotonicIntSet;->a:[I

    iget v1, p0, Lnet/sf/saxon/z/MonotonicIntSet;->b:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lnet/sf/saxon/z/MonotonicIntSet;->b:I

    aput p1, v0, v1

    const/4 p0, 0x1

    return p0
.end method

.method public clear()V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/z/MonotonicIntSet;->a:[I

    array-length v0, v0

    iget v1, p0, Lnet/sf/saxon/z/MonotonicIntSet;->b:I

    add-int/lit8 v1, v1, 0x14

    if-le v0, v1, :cond_0

    const/4 v0, 0x4

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/sf/saxon/z/MonotonicIntSet;->a:[I

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/z/MonotonicIntSet;->b:I

    return-void
.end method

.method public contains(I)Z
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/z/MonotonicIntSet;->a:[I

    iget p0, p0, Lnet/sf/saxon/z/MonotonicIntSet;->b:I

    const/4 v1, 0x0

    invoke-static {v0, v1, p0, p1}, Ljava/util/Arrays;->binarySearch([IIII)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public copy()Lnet/sf/saxon/z/IntSet;
    .locals 3

    new-instance v0, Lnet/sf/saxon/z/MonotonicIntSet;

    invoke-direct {v0}, Lnet/sf/saxon/z/MonotonicIntSet;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/z/MonotonicIntSet;->a:[I

    iget v2, p0, Lnet/sf/saxon/z/MonotonicIntSet;->b:I

    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    iput-object v1, v0, Lnet/sf/saxon/z/MonotonicIntSet;->a:[I

    iget p0, p0, Lnet/sf/saxon/z/MonotonicIntSet;->b:I

    iput p0, v0, Lnet/sf/saxon/z/MonotonicIntSet;->b:I

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lnet/sf/saxon/z/MonotonicIntSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    check-cast p1, Lnet/sf/saxon/z/MonotonicIntSet;

    iget v0, p0, Lnet/sf/saxon/z/MonotonicIntSet;->b:I

    iget v3, p1, Lnet/sf/saxon/z/MonotonicIntSet;->b:I

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    move v0, v2

    :goto_0
    iget v3, p0, Lnet/sf/saxon/z/MonotonicIntSet;->b:I

    if-ge v0, v3, :cond_2

    iget-object v3, p0, Lnet/sf/saxon/z/MonotonicIntSet;->a:[I

    aget v3, v3, v0

    iget-object v4, p1, Lnet/sf/saxon/z/MonotonicIntSet;->a:[I

    aget v4, v4, v0

    if-eq v3, v4, :cond_1

    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    instance-of v0, p1, Lnet/sf/saxon/z/IntSet;

    if-eqz v0, :cond_4

    iget v0, p0, Lnet/sf/saxon/z/MonotonicIntSet;->b:I

    check-cast p1, Lnet/sf/saxon/z/IntSet;

    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->size()I

    move-result v3

    if-ne v0, v3, :cond_4

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->containsAll(Lnet/sf/saxon/z/IntSet;)Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    :cond_4
    move v1, v2

    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/z/MonotonicIntSet;->iterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    const v0, 0x37ce0149

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public isEmpty()Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/MonotonicIntSet;->b:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMutable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public iterator()Lnet/sf/saxon/z/IntIterator;
    .locals 2

    new-instance v0, Lnet/sf/saxon/z/IntArraySet$IntArrayIterator;

    iget-object v1, p0, Lnet/sf/saxon/z/MonotonicIntSet;->a:[I

    iget p0, p0, Lnet/sf/saxon/z/MonotonicIntSet;->b:I

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/z/IntArraySet$IntArrayIterator;-><init>([II)V

    return-object v0
.end method

.method public mutableCopy()Lnet/sf/saxon/z/IntSet;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/z/MonotonicIntSet;->copy()Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    return-object p0
.end method

.method public remove(I)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/MonotonicIntSet;->b:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sf/saxon/z/MonotonicIntSet;->b:I

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lnet/sf/saxon/z/MonotonicIntSet;->b:I

    if-ge v1, v2, :cond_3

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/z/MonotonicIntSet;->a:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lnet/sf/saxon/z/MonotonicIntSet;->a:[I

    aget v3, v2, v1

    add-int/lit8 v4, v3, 0x1

    add-int/lit8 v5, v1, 0x1

    aget v2, v2, v5

    const-string v6, ","

    if-eq v4, v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lnet/sf/saxon/z/MonotonicIntSet;->a:[I

    aget v3, v2, v5

    add-int/lit8 v4, v5, -0x1

    aget v4, v2, v4

    add-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_2

    add-int/lit8 v5, v5, 0x1

    iget v3, p0, Lnet/sf/saxon/z/MonotonicIntSet;->b:I

    if-ne v5, v3, :cond_1

    :cond_2
    aget v1, v2, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/z/MonotonicIntSet;->a:[I

    add-int/lit8 v2, v5, -0x1

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v5

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public union(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;
    .locals 8

    invoke-virtual {p0}, Lnet/sf/saxon/z/MonotonicIntSet;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->copy()Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/z/MonotonicIntSet;->copy()Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-static {}, Lnet/sf/saxon/z/IntUniversalSet;->getInstance()Lnet/sf/saxon/z/IntUniversalSet;

    move-result-object v0

    if-ne p1, v0, :cond_2

    return-object p1

    :cond_2
    instance-of v0, p1, Lnet/sf/saxon/z/IntComplementSet;

    if-eqz v0, :cond_3

    invoke-virtual {p1, p0}, Lnet/sf/saxon/z/IntSet;->union(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/MonotonicIntSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/z/MonotonicIntSet;->copy()Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p1, Lnet/sf/saxon/z/MonotonicIntSet;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lnet/sf/saxon/z/MonotonicIntSet;->size()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iget-object v1, p0, Lnet/sf/saxon/z/MonotonicIntSet;->a:[I

    check-cast p1, Lnet/sf/saxon/z/MonotonicIntSet;

    iget-object v2, p1, Lnet/sf/saxon/z/MonotonicIntSet;->a:[I

    iget v3, p0, Lnet/sf/saxon/z/MonotonicIntSet;->b:I

    iget v4, p1, Lnet/sf/saxon/z/MonotonicIntSet;->b:I

    const/4 p0, 0x0

    move p1, p0

    move v5, p1

    :cond_5
    aget v6, v1, p0

    aget v7, v2, p1

    if-ge v6, v7, :cond_6

    add-int/lit8 v7, v5, 0x1

    add-int/lit8 p0, p0, 0x1

    aput v6, v0, v5

    :goto_0
    move v5, v7

    goto :goto_1

    :cond_6
    if-ge v7, v6, :cond_7

    add-int/lit8 v6, v5, 0x1

    add-int/lit8 p1, p1, 0x1

    aput v7, v0, v5

    move v5, v6

    goto :goto_1

    :cond_7
    add-int/lit8 v7, v5, 0x1

    add-int/lit8 p0, p0, 0x1

    aput v6, v0, v5

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :goto_1
    if-ne p0, v3, :cond_8

    sub-int/2addr v4, p1

    invoke-static {v2, p1, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v4

    invoke-static {v0, v5}, Lnet/sf/saxon/z/MonotonicIntSet;->make([II)Lnet/sf/saxon/z/MonotonicIntSet;

    move-result-object p0

    return-object p0

    :cond_8
    if-ne p1, v4, :cond_5

    sub-int/2addr v3, p0

    invoke-static {v1, p0, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v3

    invoke-static {v0, v5}, Lnet/sf/saxon/z/MonotonicIntSet;->make([II)Lnet/sf/saxon/z/MonotonicIntSet;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-super {p0, p1}, Lnet/sf/saxon/z/IntSet;->union(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    return-object p0
.end method
