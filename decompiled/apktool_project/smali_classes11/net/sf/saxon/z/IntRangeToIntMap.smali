.class public Lnet/sf/saxon/z/IntRangeToIntMap;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/z/IntToIntMap;


# instance fields
.field public a:[I

.field public b:[I

.field public c:[I

.field public d:I

.field public e:I

.field public f:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->e:I

    const/high16 v1, -0x80000000

    .line 3
    iput v1, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->f:I

    .line 4
    new-array v1, p1, [I

    iput-object v1, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->a:[I

    .line 5
    new-array v1, p1, [I

    iput-object v1, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->b:[I

    .line 6
    new-array p1, p1, [I

    iput-object p1, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->c:[I

    .line 7
    iput v0, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->d:I

    .line 8
    iput v0, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->e:I

    return-void
.end method

.method public constructor <init>([I[I)V
    .locals 4

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->e:I

    const/high16 v1, -0x80000000

    .line 11
    iput v1, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->f:I

    .line 12
    array-length v1, p1

    array-length v2, p2

    if-ne v1, v2, :cond_1

    .line 13
    iput-object p1, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->a:[I

    .line 14
    iput-object p2, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->b:[I

    .line 15
    array-length v1, p1

    iput v1, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->d:I

    .line 16
    :goto_0
    iget v1, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->d:I

    if-ge v0, v1, :cond_0

    .line 17
    iget v1, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->e:I

    aget v2, p2, v0

    aget v3, p1, v0

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iput v1, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->e:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void

    .line 18
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Array lengths differ"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->a:[I

    array-length v1, v0

    if-ge v1, p1, :cond_0

    array-length p1, v0

    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    new-array v1, v1, [I

    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [I

    iget v3, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->d:I

    const/4 v4, 0x0

    invoke-static {v0, v4, p1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->b:[I

    iget v3, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->d:I

    invoke-static {v0, v4, v1, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->c:[I

    iget v3, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->d:I

    invoke-static {v0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object p1, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->a:[I

    iput-object v1, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->b:[I

    iput-object v2, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->c:[I

    :cond_0
    return-void
.end method

.method public addEntry(III)V
    .locals 2

    iget v0, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->d:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/z/IntRangeToIntMap;->a(I)V

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->a:[I

    iget v1, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->d:I

    aput p1, v0, v1

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->b:[I

    aput p2, v0, v1

    iget-object v0, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->c:[I

    aput p3, v0, v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->d:I

    iget p3, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->e:I

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    add-int/2addr p3, p2

    iput p3, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->e:I

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [I

    iput-object v1, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->a:[I

    new-array v1, v0, [I

    iput-object v1, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->b:[I

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->c:[I

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->d:I

    return-void
.end method

.method public contains(I)Z
    .locals 5

    iget v0, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->d:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->b:[I

    add-int/lit8 v3, v0, -0x1

    aget v2, v2, v3

    if-le p1, v2, :cond_1

    return v1

    :cond_1
    iget-object v2, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->a:[I

    aget v2, v2, v1

    if-ge p1, v2, :cond_2

    return v1

    :cond_2
    move v2, v1

    :cond_3
    sub-int v3, v0, v2

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v2

    iget-object v4, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->b:[I

    aget v4, v4, v3

    if-ge v4, p1, :cond_4

    add-int/lit8 v2, v2, 0x1

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_4
    iget-object v4, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->a:[I

    aget v4, v4, v3

    if-le v4, p1, :cond_5

    add-int/lit8 v0, v0, -0x1

    invoke-static {v3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-ne v2, v0, :cond_3

    return v1

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public get(I)I
    .locals 4

    iget v0, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->d:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntRangeToIntMap;->getDefaultValue()I

    move-result p0

    return p0

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->b:[I

    add-int/lit8 v2, v0, -0x1

    aget v1, v1, v2

    if-le p1, v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntRangeToIntMap;->getDefaultValue()I

    move-result p0

    return p0

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->a:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-ge p1, v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntRangeToIntMap;->getDefaultValue()I

    move-result p0

    return p0

    :cond_2
    sub-int v1, v0, v2

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    iget-object v3, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->b:[I

    aget v3, v3, v1

    if-ge v3, p1, :cond_3

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    move v2, v1

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->a:[I

    aget v3, v3, v1

    if-le v3, p1, :cond_4

    add-int/lit8 v0, v0, -0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    :goto_0
    if-ne v2, v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntRangeToIntMap;->getDefaultValue()I

    move-result p0

    return p0

    :cond_4
    iget-object p0, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->c:[I

    aget p0, p0, v1

    return p0
.end method

.method public getDefaultValue()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->f:I

    return p0
.end method

.method public getEndPoints()[I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->b:[I

    return-object p0
.end method

.method public getNumberOfRanges()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->d:I

    return p0
.end method

.method public getStartPoints()[I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->a:[I

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->e:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public keyIterator()Lnet/sf/saxon/z/IntIterator;
    .locals 2

    new-instance v0, Lnet/sf/saxon/z/IntRangeSet;

    iget-object v1, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->a:[I

    iget-object p0, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->b:[I

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/z/IntRangeSet;-><init>([I[I)V

    invoke-virtual {v0}, Lnet/sf/saxon/z/IntRangeSet;->iterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    return-object p0
.end method

.method public put(II)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public remove(I)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "remove"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setDefaultValue(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->f:I

    return-void
.end method

.method public size()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->e:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    iget v1, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->d:I

    mul-int/lit8 v1, v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->d:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->a:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->b:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lnet/sf/saxon/z/IntRangeToIntMap;->c:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
