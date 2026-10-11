.class public Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;
.super Lnet/sf/saxon/ma/arrays/AbstractArrayItem;
.source "SourceFile"


# instance fields
.field public final f:Lnet/sf/saxon/ma/zeno/ZenoChain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/ma/zeno/ZenoChain<",
            "Lnet/sf/saxon/om/GroundedValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/ma/arrays/SimpleArrayItem;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/ma/arrays/AbstractArrayItem;-><init>()V

    .line 2
    new-instance v0, Lnet/sf/saxon/ma/zeno/ZenoChain;

    invoke-direct {v0}, Lnet/sf/saxon/ma/zeno/ZenoChain;-><init>()V

    invoke-virtual {p1}, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;->getMembers()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/ma/zeno/ZenoChain;->addAll(Ljava/lang/Iterable;)Lnet/sf/saxon/ma/zeno/ZenoChain;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;->f:Lnet/sf/saxon/ma/zeno/ZenoChain;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/ma/zeno/ZenoChain;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/ma/zeno/ZenoChain<",
            "Lnet/sf/saxon/om/GroundedValue;",
            ">;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lnet/sf/saxon/ma/arrays/AbstractArrayItem;-><init>()V

    .line 4
    iput-object p1, p0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;->f:Lnet/sf/saxon/ma/zeno/ZenoChain;

    return-void
.end method


# virtual methods
.method public arrayLength()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;->f:Lnet/sf/saxon/ma/zeno/ZenoChain;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/zeno/ZenoChain;->size()I

    move-result p0

    return p0
.end method

.method public concat(Lnet/sf/saxon/ma/arrays/ArrayItem;)Lnet/sf/saxon/ma/arrays/ArrayItem;
    .locals 1

    invoke-virtual {p1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result v0

    if-nez v0, :cond_0

    return-object p0

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;

    if-eqz v0, :cond_1

    check-cast p1, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;

    iget-object p1, p1, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;->f:Lnet/sf/saxon/ma/zeno/ZenoChain;

    goto :goto_0

    :cond_1
    new-instance v0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;

    check-cast p1, Lnet/sf/saxon/ma/arrays/SimpleArrayItem;

    invoke-direct {v0, p1}, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;-><init>(Lnet/sf/saxon/ma/arrays/SimpleArrayItem;)V

    iget-object p1, v0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;->f:Lnet/sf/saxon/ma/zeno/ZenoChain;

    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;->f:Lnet/sf/saxon/ma/zeno/ZenoChain;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/zeno/ZenoChain;->addAll(Ljava/lang/Iterable;)Lnet/sf/saxon/ma/zeno/ZenoChain;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;

    invoke-direct {p1, p0}, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;-><init>(Lnet/sf/saxon/ma/zeno/ZenoChain;)V

    return-object p1
.end method

.method public get(I)Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;->f:Lnet/sf/saxon/ma/zeno/ZenoChain;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/ma/zeno/ZenoChain;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/GroundedValue;

    return-object p0
.end method

.method public insert(ILnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/arrays/ArrayItem;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;->f:Lnet/sf/saxon/ma/zeno/ZenoChain;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/ma/zeno/ZenoChain;->insert(ILjava/lang/Object;)Lnet/sf/saxon/ma/zeno/ZenoChain;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;

    invoke-direct {p1, p0}, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;-><init>(Lnet/sf/saxon/ma/zeno/ZenoChain;)V

    return-object p1
.end method

.method public isEmpty()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;->f:Lnet/sf/saxon/ma/zeno/ZenoChain;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/zeno/ZenoChain;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public members()Ljava/lang/Iterable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lnet/sf/saxon/om/GroundedValue;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;->f:Lnet/sf/saxon/ma/zeno/ZenoChain;

    return-object p0
.end method

.method public put(ILnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/arrays/ArrayItem;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;->f:Lnet/sf/saxon/ma/zeno/ZenoChain;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/ma/zeno/ZenoChain;->replace(ILjava/lang/Object;)Lnet/sf/saxon/ma/zeno/ZenoChain;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;->f:Lnet/sf/saxon/ma/zeno/ZenoChain;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;

    invoke-direct {p0, p1}, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;-><init>(Lnet/sf/saxon/ma/zeno/ZenoChain;)V

    :goto_0
    return-object p0
.end method

.method public remove(I)Lnet/sf/saxon/ma/arrays/ArrayItem;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;->f:Lnet/sf/saxon/ma/zeno/ZenoChain;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/ma/zeno/ZenoChain;->remove(I)Lnet/sf/saxon/ma/zeno/ZenoChain;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;->f:Lnet/sf/saxon/ma/zeno/ZenoChain;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;

    invoke-direct {p0, p1}, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;-><init>(Lnet/sf/saxon/ma/zeno/ZenoChain;)V

    :goto_0
    return-object p0
.end method

.method public removeSeveral(Lnet/sf/saxon/z/IntSet;)Lnet/sf/saxon/ma/arrays/ArrayItem;
    .locals 5

    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->size()I

    move-result v0

    new-array v1, v0, [I

    invoke-virtual {p1}, Lnet/sf/saxon/z/IntSet;->iterator()Lnet/sf/saxon/z/IntIterator;

    move-result-object p1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    invoke-interface {p1}, Lnet/sf/saxon/z/IntIterator;->next()I

    move-result v4

    aput v4, v1, v2

    move v2, v3

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/util/Arrays;->sort([I)V

    iget-object p1, p0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;->f:Lnet/sf/saxon/ma/zeno/ZenoChain;

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    aget v2, v1, v0

    invoke-virtual {p1, v2}, Lnet/sf/saxon/ma/zeno/ZenoChain;->remove(I)Lnet/sf/saxon/ma/zeno/ZenoChain;

    move-result-object p1

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;->f:Lnet/sf/saxon/ma/zeno/ZenoChain;

    if-ne p1, v0, :cond_2

    goto :goto_2

    :cond_2
    new-instance p0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;

    invoke-direct {p0, p1}, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;-><init>(Lnet/sf/saxon/ma/zeno/ZenoChain;)V

    :goto_2
    return-object p0
.end method

.method public subArray(II)Lnet/sf/saxon/ma/arrays/ArrayItem;
    .locals 1

    new-instance v0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;

    iget-object p0, p0, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;->f:Lnet/sf/saxon/ma/zeno/ZenoChain;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/ma/zeno/ZenoChain;->subList(II)Lnet/sf/saxon/ma/zeno/ZenoChain;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/ma/arrays/ImmutableArrayItem;-><init>(Lnet/sf/saxon/ma/zeno/ZenoChain;)V

    return-object v0
.end method
