.class public Lorg/apache/commons/compress/harmony/pack200/IntList;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:[I

.field public b:I

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0xa

    .line 1
    invoke-direct {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-ltz p1, :cond_0

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    .line 4
    new-array p1, p1, [I

    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public final a(I)V
    .locals 6

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    sub-int v2, v0, v1

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    array-length v4, v3

    sub-int/2addr v4, v0

    sub-int v4, p1, v4

    const/4 v5, 0x0

    if-lt v1, v4, :cond_1

    sub-int/2addr v0, v1

    if-lez v2, :cond_0

    invoke-static {v3, v1, v3, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iput v5, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    goto :goto_1

    :cond_1
    div-int/lit8 v0, v2, 0x2

    if-le p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    const/16 v0, 0xc

    if-ge p1, v0, :cond_3

    move p1, v0

    :cond_3
    add-int/2addr p1, v2

    new-array p1, p1, [I

    if-lez v2, :cond_4

    invoke-static {v3, v1, p1, v5, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v5, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    iput v2, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    :cond_4
    iput-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    :goto_1
    return-void
.end method

.method public add(II)V
    .locals 6

    .line 5
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    sub-int v2, v0, v1

    const/4 v3, 0x1

    if-lez p1, :cond_4

    if-ge p1, v2, :cond_4

    if-nez v1, :cond_0

    .line 6
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    array-length v4, v4

    if-ne v0, v4, :cond_0

    .line 7
    invoke-virtual {p0, p1, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->c(II)V

    goto :goto_0

    .line 8
    :cond_0
    div-int/lit8 v4, v2, 0x2

    if-ge p1, v4, :cond_1

    if-gtz v1, :cond_2

    :cond_1
    iget-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    array-length v5, v4

    if-ne v0, v5, :cond_3

    .line 9
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    invoke-static {v0, v1, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_3
    add-int/2addr v1, p1

    add-int/lit8 v0, v1, 0x1

    sub-int/2addr v2, p1

    .line 10
    invoke-static {v4, v1, v4, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 11
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    add-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    .line 12
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    add-int/2addr p1, v1

    aput p2, v0, p1

    goto :goto_1

    :cond_4
    if-nez p1, :cond_6

    if-nez v1, :cond_5

    .line 13
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->b(I)V

    .line 14
    :cond_5
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    sub-int/2addr v0, v3

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    aput p2, p1, v0

    goto :goto_1

    :cond_6
    if-ne p1, v2, :cond_8

    .line 15
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    array-length p1, p1

    if-ne v0, p1, :cond_7

    .line 16
    invoke-virtual {p0, v3}, Lorg/apache/commons/compress/harmony/pack200/IntList;->a(I)V

    .line 17
    :cond_7
    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    aput p2, p1, v0

    .line 18
    :goto_1
    iget p1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->d:I

    add-int/2addr p1, v3

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->d:I

    return-void

    .line 19
    :cond_8
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public add(I)Z
    .locals 4

    .line 1
    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    iget-object v1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    array-length v1, v1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v2}, Lorg/apache/commons/compress/harmony/pack200/IntList;->a(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    aput p1, v0, v1

    .line 4
    iget p1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->d:I

    add-int/2addr p1, v2

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->d:I

    return v2
.end method

.method public addAll(Lorg/apache/commons/compress/harmony/pack200/IntList;)V
    .locals 2

    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->a(I)V

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p1, v0}, Lorg/apache/commons/compress/harmony/pack200/IntList;->get(I)I

    move-result v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/compress/harmony/pack200/IntList;->add(I)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final b(I)V
    .locals 5

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    sub-int v2, v0, v1

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    array-length v4, v3

    sub-int/2addr v4, v0

    add-int/2addr v4, v1

    if-lt v4, p1, :cond_1

    array-length p1, v3

    sub-int/2addr p1, v2

    if-lez v2, :cond_0

    invoke-static {v3, v1, v3, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    array-length p1, p1

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    goto :goto_1

    :cond_1
    div-int/lit8 v0, v2, 0x2

    if-le p1, v0, :cond_2

    goto :goto_0

    :cond_2
    move p1, v0

    :goto_0
    const/16 v0, 0xc

    if-ge p1, v0, :cond_3

    move p1, v0

    :cond_3
    add-int/2addr p1, v2

    new-array v0, p1, [I

    if-lez v2, :cond_4

    sub-int v4, p1, v2

    invoke-static {v3, v1, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_4
    sub-int v1, p1, v2

    iput v1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    iput-object v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    :goto_1
    return-void
.end method

.method public final c(II)V
    .locals 7

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    sub-int/2addr v0, v1

    div-int/lit8 v2, v0, 0x2

    if-le p2, v2, :cond_0

    move v2, p2

    :cond_0
    const/16 v3, 0xc

    if-ge v2, v3, :cond_1

    move v2, v3

    :cond_1
    add-int v3, v0, v2

    new-array v4, v3, [I

    sub-int/2addr v2, p2

    iget-object v5, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    add-int/2addr v1, p1

    add-int v6, v2, p1

    add-int/2addr v6, p2

    sub-int/2addr v0, p1

    invoke-static {v5, v1, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p2, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    invoke-static {p2, v0, v4, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput v2, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    iput v3, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    iput-object v4, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    return-void
.end method

.method public clear()V
    .locals 4

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    if-eq v0, v1, :cond_0

    iget-object v2, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    const/4 v3, -0x1

    invoke-static {v2, v0, v1, v3}, Ljava/util/Arrays;->fill([IIII)V

    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->d:I

    :cond_0
    return-void
.end method

.method public get(I)I
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    add-int/2addr v1, p1

    aget p0, p0, v1

    return p0

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public increment(I)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    sub-int/2addr v0, v1

    if-ge p1, v0, :cond_0

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    add-int/2addr v1, p1

    aget p1, p0, v1

    add-int/lit8 p1, p1, 0x1

    aput p1, p0, v1

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isEmpty()Z
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public remove(I)I
    .locals 7

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    sub-int v2, v0, v1

    if-ltz p1, :cond_4

    if-ge p1, v2, :cond_4

    add-int/lit8 v3, v2, -0x1

    const/4 v4, 0x0

    if-ne p1, v3, :cond_0

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    aget v1, p1, v0

    aput v4, p1, v0

    goto :goto_1

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    aget v0, p1, v1

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    aput v4, p1, v1

    move v1, v0

    goto :goto_1

    :cond_1
    add-int v0, v1, p1

    iget-object v3, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    aget v5, v3, v0

    div-int/lit8 v6, v2, 0x2

    if-ge p1, v6, :cond_2

    add-int/lit8 v0, v1, 0x1

    invoke-static {v3, v1, v3, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    aput v4, p1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v1, v0, 0x1

    sub-int/2addr v2, p1

    add-int/lit8 v2, v2, -0x1

    invoke-static {v3, v1, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object p1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    aput v4, p1, v0

    :goto_0
    move v1, v5

    :goto_1
    iget p1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    if-ne p1, v0, :cond_3

    iput v4, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    iput v4, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    :cond_3
    iget p1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->d:I

    return v1

    :cond_4
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    iget p0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public toArray()[I
    .locals 4

    iget v0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->c:I

    iget v1, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->b:I

    sub-int/2addr v0, v1

    new-array v2, v0, [I

    iget-object p0, p0, Lorg/apache/commons/compress/harmony/pack200/IntList;->a:[I

    const/4 v3, 0x0

    invoke-static {p0, v1, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
