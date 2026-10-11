.class public abstract Lnet/sf/saxon/z/IntSet;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(I)Z
.end method

.method public abstract clear()V
.end method

.method public abstract contains(I)Z
.end method

.method public containsAll(Lnet/sf/saxon/z/IntSet;)Z
    .locals 2

    invoke-static {}, Lnet/sf/saxon/z/IntUniversalSet;->getInstance()Lnet/sf/saxon/z/IntUniversalSet;

    move-result-object v0

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    instance-of v0, p1, Lnet/sf/saxon/z/IntComplementSet;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->iterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/z/IntSet;->contains(I)Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0

    :cond_3
    :goto_0
    return v1
.end method

.method public abstract copy()Lnet/sf/saxon/z/IntSet;
.end method

.method public except(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;
    .locals 3

    new-instance v0, Lnet/sf/saxon/z/IntHashSet;

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/z/IntHashSet;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntSet;->iterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/z/IntSet;->contains(I)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntHashSet;->add(I)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public intersect(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Lnet/sf/saxon/z/IntHashSet;

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntSet;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/z/IntHashSet;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntSet;->iterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/z/IntSet;->contains(I)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntHashSet;->add(I)Z

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    invoke-static {}, Lnet/sf/saxon/z/IntEmptySet;->getInstance()Lnet/sf/saxon/z/IntEmptySet;

    move-result-object p0

    return-object p0
.end method

.method public abstract isEmpty()Z
.end method

.method public isMutable()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public abstract iterator()Lnet/sf/saxon/z/IntIterator;
.end method

.method public abstract mutableCopy()Lnet/sf/saxon/z/IntSet;
.end method

.method public abstract remove(I)Z
.end method

.method public abstract size()I
.end method

.method public union(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;
    .locals 3

    invoke-static {}, Lnet/sf/saxon/z/IntUniversalSet;->getInstance()Lnet/sf/saxon/z/IntUniversalSet;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/z/IntSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->copy()Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntSet;->copy()Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    return-object p0

    :cond_2
    instance-of v0, p1, Lnet/sf/saxon/z/IntComplementSet;

    if-eqz v0, :cond_3

    invoke-virtual {p1, p0}, Lnet/sf/saxon/z/IntSet;->union(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/z/IntSet;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Lnet/sf/saxon/z/IntHashSet;

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntSet;->size()I

    move-result v1

    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Lnet/sf/saxon/z/IntHashSet;-><init>(I)V

    invoke-virtual {p0}, Lnet/sf/saxon/z/IntSet;->iterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/z/IntHashSet;->add(I)Z

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->iterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-interface {p0}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/z/IntHashSet;->add(I)Z

    goto :goto_1

    :cond_5
    return-object v0
.end method
