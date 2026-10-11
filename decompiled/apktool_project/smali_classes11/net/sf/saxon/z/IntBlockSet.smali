.class public Lnet/sf/saxon/z/IntBlockSet;
.super Lnet/sf/saxon/z/IntSet;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:I

.field public c:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/z/IntSet;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/z/IntBlockSet;->c:I

    iput p1, p0, Lnet/sf/saxon/z/IntBlockSet;->a:I

    iput p2, p0, Lnet/sf/saxon/z/IntBlockSet;->b:I

    return-void
.end method


# virtual methods
.method public add(I)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "add"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clear()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "clear"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public contains(I)Z
    .locals 1

    iget v0, p0, Lnet/sf/saxon/z/IntBlockSet;->a:I

    if-lt p1, v0, :cond_0

    iget p0, p0, Lnet/sf/saxon/z/IntBlockSet;->b:I

    if-gt p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public copy()Lnet/sf/saxon/z/IntSet;
    .locals 0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntBlockSet;->mutableCopy()Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getEndPoint()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntBlockSet;->b:I

    return p0
.end method

.method public getStartPoint()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntBlockSet;->a:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lnet/sf/saxon/z/IntBlockSet;->c:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lnet/sf/saxon/z/IntBlockSet;->a:I

    iget v1, p0, Lnet/sf/saxon/z/IntBlockSet;->b:I

    shl-int/lit8 v1, v1, 0x3

    add-int/2addr v0, v1

    const v1, 0x236a89f1

    xor-int/2addr v0, v1

    iput v0, p0, Lnet/sf/saxon/z/IntBlockSet;->c:I

    :cond_0
    iget p0, p0, Lnet/sf/saxon/z/IntBlockSet;->c:I

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntBlockSet;->size()I

    move-result p0

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
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntBlockSet;->mutableCopy()Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntSet;->iterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    return-object p0
.end method

.method public mutableCopy()Lnet/sf/saxon/z/IntSet;
    .locals 2

    new-instance v0, Lnet/sf/saxon/z/IntRangeSet;

    iget v1, p0, Lnet/sf/saxon/z/IntBlockSet;->a:I

    filled-new-array {v1}, [I

    move-result-object v1

    iget p0, p0, Lnet/sf/saxon/z/IntBlockSet;->b:I

    filled-new-array {p0}, [I

    move-result-object p0

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/z/IntRangeSet;-><init>([I[I)V

    return-object v0
.end method

.method public remove(I)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "remove"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public size()I
    .locals 1

    iget v0, p0, Lnet/sf/saxon/z/IntBlockSet;->b:I

    iget p0, p0, Lnet/sf/saxon/z/IntBlockSet;->a:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Lnet/sf/saxon/z/IntBlockSet;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lnet/sf/saxon/z/IntBlockSet;->b:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
