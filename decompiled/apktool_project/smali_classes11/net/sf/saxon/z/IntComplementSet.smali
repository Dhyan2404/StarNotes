.class public Lnet/sf/saxon/z/IntComplementSet;
.super Lnet/sf/saxon/z/IntSet;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/z/IntSet;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/z/IntSet;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/z/IntSet;-><init>()V

    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->copy()Lnet/sf/saxon/z/IntSet;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/z/IntComplementSet;->a:Lnet/sf/saxon/z/IntSet;

    return-void
.end method


# virtual methods
.method public add(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntComplementSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/z/IntComplementSet;->a:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->remove(I)Z

    :cond_0
    return v0
.end method

.method public clear()V
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "IntComplementSet cannot be emptied"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public contains(I)Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/z/IntComplementSet;->a:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->contains(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public containsAll(Lnet/sf/saxon/z/IntSet;)Z
    .locals 3

    instance-of v0, p1, Lnet/sf/saxon/z/IntComplementSet;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/z/IntComplementSet;

    iget-object p1, p1, Lnet/sf/saxon/z/IntComplementSet;->a:Lnet/sf/saxon/z/IntSet;

    iget-object p0, p0, Lnet/sf/saxon/z/IntComplementSet;->a:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {p1, p0}, Lnet/sf/saxon/z/IntSet;->containsAll(Lnet/sf/saxon/z/IntSet;)Z

    move-result p0

    return p0

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/z/IntUniversalSet;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/z/IntComplementSet;->a:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntSet;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->iterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object p1

    :cond_2
    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/z/IntComplementSet;->a:Lnet/sf/saxon/z/IntSet;

    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/z/IntSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_3
    return v1
.end method

.method public copy()Lnet/sf/saxon/z/IntSet;
    .locals 1

    new-instance v0, Lnet/sf/saxon/z/IntComplementSet;

    iget-object p0, p0, Lnet/sf/saxon/z/IntComplementSet;->a:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntSet;->copy()Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/z/IntComplementSet;-><init>(Lnet/sf/saxon/z/IntSet;)V

    return-object v0
.end method

.method public except(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;
    .locals 1

    new-instance v0, Lnet/sf/saxon/z/IntComplementSet;

    iget-object p0, p0, Lnet/sf/saxon/z/IntComplementSet;->a:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->union(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/z/IntComplementSet;-><init>(Lnet/sf/saxon/z/IntSet;)V

    return-object v0
.end method

.method public getExclusions()Lnet/sf/saxon/z/IntSet;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/z/IntComplementSet;->a:Lnet/sf/saxon/z/IntSet;

    return-object p0
.end method

.method public intersect(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;
    .locals 1

    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/z/IntEmptySet;->getInstance()Lnet/sf/saxon/z/IntEmptySet;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/z/IntUniversalSet;->getInstance()Lnet/sf/saxon/z/IntUniversalSet;

    move-result-object v0

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntComplementSet;->copy()Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, p1, Lnet/sf/saxon/z/IntComplementSet;

    if-eqz v0, :cond_2

    new-instance v0, Lnet/sf/saxon/z/IntComplementSet;

    iget-object p0, p0, Lnet/sf/saxon/z/IntComplementSet;->a:Lnet/sf/saxon/z/IntSet;

    check-cast p1, Lnet/sf/saxon/z/IntComplementSet;

    iget-object p1, p1, Lnet/sf/saxon/z/IntComplementSet;->a:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->union(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/z/IntComplementSet;-><init>(Lnet/sf/saxon/z/IntSet;)V

    return-object v0

    :cond_2
    invoke-virtual {p1, p0}, Lnet/sf/saxon/z/IntSet;->intersect(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    return-object p0
.end method

.method public isEmpty()Z
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntComplementSet;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterator()Lnet/sf/saxon/z/IntIterator;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Cannot enumerate an infinite set"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public mutableCopy()Lnet/sf/saxon/z/IntSet;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntComplementSet;->copy()Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    return-object p0
.end method

.method public remove(I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntComplementSet;->contains(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/z/IntComplementSet;->a:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->add(I)Z

    :cond_0
    return v0
.end method

.method public size()I
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/z/IntComplementSet;->a:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntSet;->size()I

    move-result p0

    const v0, 0x7fffffff

    sub-int/2addr v0, p0

    return v0
.end method

.method public union(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;
    .locals 1

    new-instance v0, Lnet/sf/saxon/z/IntComplementSet;

    iget-object p0, p0, Lnet/sf/saxon/z/IntComplementSet;->a:Lnet/sf/saxon/z/IntSet;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/z/IntSet;->except(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/z/IntComplementSet;-><init>(Lnet/sf/saxon/z/IntSet;)V

    return-object v0
.end method
