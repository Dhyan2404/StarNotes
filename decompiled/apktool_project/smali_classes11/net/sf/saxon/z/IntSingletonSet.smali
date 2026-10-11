.class public Lnet/sf/saxon/z/IntSingletonSet;
.super Lnet/sf/saxon/z/IntSet;
.source "SourceFile"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/z/IntSet;-><init>()V

    iput p1, p0, Lnet/sf/saxon/z/IntSingletonSet;->a:I

    return-void
.end method


# virtual methods
.method public add(I)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "IntSingletonSet is immutable"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public clear()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "IntSingletonSet is immutable"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public contains(I)Z
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntSingletonSet;->a:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public containsAll(Lnet/sf/saxon/z/IntSet;)Z
    .locals 4

    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->iterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lnet/sf/saxon/z/IntSingletonSet;->a:I

    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v3

    if-eq v0, v3, :cond_1

    return v1

    :cond_2
    return v2
.end method

.method public copy()Lnet/sf/saxon/z/IntSet;
    .locals 0

    return-object p0
.end method

.method public except(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;
    .locals 1

    iget v0, p0, Lnet/sf/saxon/z/IntSingletonSet;->a:I

    invoke-virtual {p1, v0}, Lnet/sf/saxon/z/IntSet;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lnet/sf/saxon/z/IntEmptySet;->getInstance()Lnet/sf/saxon/z/IntEmptySet;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getMember()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/z/IntSingletonSet;->a:I

    return p0
.end method

.method public intersect(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;
    .locals 1

    iget v0, p0, Lnet/sf/saxon/z/IntSingletonSet;->a:I

    invoke-virtual {p1, v0}, Lnet/sf/saxon/z/IntSet;->contains(I)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/z/IntEmptySet;->getInstance()Lnet/sf/saxon/z/IntEmptySet;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isMutable()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public iterator()Lnet/sf/saxon/z/IntIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/z/IntSingletonIterator;

    iget p0, p0, Lnet/sf/saxon/z/IntSingletonSet;->a:I

    invoke-direct {v0, p0}, Lnet/sf/saxon/z/IntSingletonIterator;-><init>(I)V

    return-object v0
.end method

.method public mutableCopy()Lnet/sf/saxon/z/IntSet;
    .locals 1

    new-instance v0, Lnet/sf/saxon/z/IntHashSet;

    invoke-direct {v0}, Lnet/sf/saxon/z/IntHashSet;-><init>()V

    iget p0, p0, Lnet/sf/saxon/z/IntSingletonSet;->a:I

    invoke-virtual {v0, p0}, Lnet/sf/saxon/z/IntHashSet;->add(I)Z

    return-object v0
.end method

.method public remove(I)Z
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "IntSingletonSet is immutable"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public size()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public union(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;
    .locals 0

    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->mutableCopy()Lnet/sf/saxon/z/IntSet;

    move-result-object p1

    iget p0, p0, Lnet/sf/saxon/z/IntSingletonSet;->a:I

    invoke-virtual {p1, p0}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    return-object p1
.end method
