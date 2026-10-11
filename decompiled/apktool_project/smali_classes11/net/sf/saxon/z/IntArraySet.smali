.class public Lnet/sf/saxon/z/IntArraySet;
.super Lnet/sf/saxon/z/IntSet;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/z/IntArraySet$IntArrayIterator;
    }
.end annotation


# static fields
.field public static final EMPTY_INT_ARRAY:[I


# instance fields
.field public a:[I

.field public b:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lnet/sf/saxon/z/IntArraySet;->EMPTY_INT_ARRAY:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/z/IntSet;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lnet/sf/saxon/z/IntArraySet;->b:I

    .line 3
    sget-object v0, Lnet/sf/saxon/z/IntArraySet;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/z/IntArraySet;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Lnet/sf/saxon/z/IntSet;-><init>()V

    const/4 v0, -0x1

    .line 9
    iput v0, p0, Lnet/sf/saxon/z/IntArraySet;->b:I

    .line 10
    iget-object v0, p1, Lnet/sf/saxon/z/IntArraySet;->a:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    .line 11
    iget-object p0, p1, Lnet/sf/saxon/z/IntArraySet;->a:[I

    const/4 p1, 0x0

    array-length v1, v0

    invoke-static {p0, p1, v0, p1, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/z/IntHashSet;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Lnet/sf/saxon/z/IntSet;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lnet/sf/saxon/z/IntArraySet;->b:I

    .line 6
    invoke-virtual {p1}, Lnet/sf/saxon/z/IntHashSet;->getValues()[I

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    .line 7
    invoke-static {p1}, Ljava/util/Arrays;->sort([I)V

    return-void
.end method

.method public constructor <init>([I)V
    .locals 1

    .line 12
    invoke-direct {p0}, Lnet/sf/saxon/z/IntSet;-><init>()V

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Lnet/sf/saxon/z/IntArraySet;->b:I

    .line 14
    iput-object p1, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    return-void
.end method

.method public static make([II)Lnet/sf/saxon/z/IntArraySet;
    .locals 2

    array-length v0, p0

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    new-array v0, p1, [I

    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p0, v0

    :goto_0
    new-instance p1, Lnet/sf/saxon/z/IntArraySet;

    invoke-direct {p1, p0}, Lnet/sf/saxon/z/IntArraySet;-><init>([I)V

    return-object p1
.end method


# virtual methods
.method public add(I)Z
    .locals 6

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/z/IntArraySet;->b:I

    iget-object v0, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    array-length v1, v0

    const/4 v2, 0x1

    if-nez v1, :cond_0

    filled-new-array {p1}, [I

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    return v2

    :cond_0
    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_1

    return v1

    :cond_1
    neg-int v0, v0

    sub-int/2addr v0, v2

    iget-object v3, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    array-length v4, v3

    add-int/2addr v4, v2

    new-array v5, v4, [I

    if-lez v0, :cond_2

    invoke-static {v3, v1, v5, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    aput p1, v5, v0

    iget-object p1, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    array-length v1, p1

    if-ge v0, v1, :cond_3

    add-int/lit8 v1, v0, 0x1

    sub-int/2addr v4, v0

    invoke-static {p1, v0, v5, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_3
    iput-object v5, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    return v2
.end method

.method public clear()V
    .locals 1

    sget-object v0, Lnet/sf/saxon/z/IntArraySet;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/z/IntArraySet;->b:I

    return-void
.end method

.method public contains(I)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public copy()Lnet/sf/saxon/z/IntSet;
    .locals 4

    new-instance v0, Lnet/sf/saxon/z/IntArraySet;

    invoke-direct {v0}, Lnet/sf/saxon/z/IntArraySet;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    array-length v1, v1

    new-array v1, v1, [I

    iput-object v1, v0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    iget-object p0, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    const/4 v2, 0x0

    array-length v3, p0

    invoke-static {p0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    instance-of v0, p1, Lnet/sf/saxon/z/IntArraySet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lnet/sf/saxon/z/IntArraySet;

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntArraySet;->hashCode()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    if-ne v3, p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    iget-object p1, v0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    instance-of v0, p1, Lnet/sf/saxon/z/IntSet;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    array-length v0, v0

    check-cast p1, Lnet/sf/saxon/z/IntSet;

    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->size()I

    move-result v3

    if-ne v0, v3, :cond_2

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->containsAll(Lnet/sf/saxon/z/IntSet;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public getFirst()I
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    const/4 v0, 0x0

    aget p0, p0, v0

    return p0
.end method

.method public getValues()[I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    return-object p0
.end method

.method public hashCode()I
    .locals 3

    iget v0, p0, Lnet/sf/saxon/z/IntArraySet;->b:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntArraySet;->iterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object v0

    const v1, 0x37ce0149

    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    iput v1, p0, Lnet/sf/saxon/z/IntArraySet;->b:I

    :cond_1
    iget p0, p0, Lnet/sf/saxon/z/IntArraySet;->b:I

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    array-length p0, p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Lnet/sf/saxon/z/IntIterator;
    .locals 2

    new-instance v0, Lnet/sf/saxon/z/IntArraySet$IntArrayIterator;

    iget-object p0, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    array-length v1, p0

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/z/IntArraySet$IntArrayIterator;-><init>([II)V

    return-object v0
.end method

.method public mutableCopy()Lnet/sf/saxon/z/IntSet;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntArraySet;->copy()Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    return-object p0
.end method

.method public remove(I)Z
    .locals 5

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/z/IntArraySet;->b:I

    iget-object v0, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    const/4 v0, 0x0

    if-gez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    new-array v4, v2, [I

    if-lez p1, :cond_1

    invoke-static {v1, v0, v4, v0, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    if-ge p1, v2, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    add-int/lit8 v1, p1, 0x1

    array-length v2, v0

    sub-int/2addr v2, p1

    invoke-static {v0, v1, v4, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    iput-object v4, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    return v3
.end method

.method public size()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    array-length p0, p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    array-length v1, v1

    mul-int/lit8 v1, v1, 0x4

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    array-length v3, v2

    if-ge v1, v3, :cond_3

    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_0
    aget v3, v2, v1

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v1, 0x1

    aget v2, v2, v4

    const-string v5, ","

    if-eq v3, v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    aget v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    aget v3, v2, v4

    add-int/lit8 v6, v4, -0x1

    aget v6, v2, v6

    add-int/lit8 v6, v6, 0x1

    if-ne v3, v6, :cond_2

    add-int/lit8 v4, v4, 0x1

    array-length v2, v2

    if-ne v4, v2, :cond_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    aget v1, v3, v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    add-int/lit8 v3, v4, -0x1

    aget v1, v1, v3

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

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

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntArraySet;->size()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->copy()Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntArraySet;->copy()Lnet/sf/saxon/z/IntSet;

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
    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntArraySet;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntArraySet;->copy()Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p1, Lnet/sf/saxon/z/IntArraySet;

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntArraySet;->size()I

    move-result v0

    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->size()I

    move-result v1

    add-int/2addr v0, v1

    new-array v0, v0, [I

    iget-object v1, p0, Lnet/sf/saxon/z/IntArraySet;->a:[I

    check-cast p1, Lnet/sf/saxon/z/IntArraySet;

    iget-object v2, p1, Lnet/sf/saxon/z/IntArraySet;->a:[I

    array-length v3, v1

    array-length v4, v2

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

    invoke-static {v0, v5}, Lnet/sf/saxon/z/IntArraySet;->make([II)Lnet/sf/saxon/z/IntArraySet;

    move-result-object p0

    return-object p0

    :cond_8
    if-ne p1, v4, :cond_5

    sub-int/2addr v3, p0

    invoke-static {v1, p0, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v5, v3

    invoke-static {v0, v5}, Lnet/sf/saxon/z/IntArraySet;->make([II)Lnet/sf/saxon/z/IntArraySet;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-super {p0, p1}, Lnet/sf/saxon/z/IntSet;->union(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    return-object p0
.end method
