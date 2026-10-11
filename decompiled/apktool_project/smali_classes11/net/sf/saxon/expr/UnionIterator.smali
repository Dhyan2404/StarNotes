.class public Lnet/sf/saxon/expr/UnionIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/UnionIterator$b;,
        Lnet/sf/saxon/expr/UnionIterator$a;
    }
.end annotation


# instance fields
.field public final e:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Lnet/sf/saxon/expr/UnionIterator$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/SequenceIterator;",
            ">;",
            "Ljava/util/Comparator<",
            "-",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/sf/saxon/expr/UnionIterator$b;

    invoke-direct {v0, p2}, Lnet/sf/saxon/expr/UnionIterator$b;-><init>(Ljava/util/Comparator;)V

    new-instance p2, Ljava/util/TreeSet;

    invoke-direct {p2, v0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object p2, p0, Lnet/sf/saxon/expr/UnionIterator;->e:Ljava/util/TreeSet;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    :goto_1
    if-eqz v0, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/expr/UnionIterator;->e:Ljava/util/TreeSet;

    new-instance v2, Lnet/sf/saxon/expr/UnionIterator$a;

    invoke-direct {v2, p2, v0}, Lnet/sf/saxon/expr/UnionIterator$a;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/NodeInfo;)V

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/expr/UnionIterator;->e:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/UnionIterator$a;

    iget-object v0, v0, Lnet/sf/saxon/expr/UnionIterator$a;->a:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public discharge()V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/expr/UnionIterator;->e:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/UnionIterator$a;

    iget-object v0, v0, Lnet/sf/saxon/expr/UnionIterator$a;->a:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/UnionIterator;->e:Ljava/util/TreeSet;

    invoke-virtual {p0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnionIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 4

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/expr/UnionIterator;->e:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/UnionIterator$a;

    if-eqz v0, :cond_3

    .line 3
    iget-object v1, v0, Lnet/sf/saxon/expr/UnionIterator$a;->a:Lnet/sf/saxon/om/SequenceIterator;

    .line 4
    invoke-interface {v1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/NodeInfo;

    :goto_0
    if-eqz v2, :cond_2

    .line 5
    iget-object v3, v0, Lnet/sf/saxon/expr/UnionIterator$a;->b:Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v2, v3}, Lnet/sf/saxon/om/NodeInfo;->isSameNodeInfo(Lnet/sf/saxon/om/NodeInfo;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 6
    new-instance v3, Lnet/sf/saxon/expr/UnionIterator$a;

    invoke-direct {v3, v1, v2}, Lnet/sf/saxon/expr/UnionIterator$a;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/NodeInfo;)V

    .line 7
    iget-object v2, p0, Lnet/sf/saxon/expr/UnionIterator;->e:Ljava/util/TreeSet;

    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    invoke-interface {v1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/NodeInfo;

    goto :goto_0

    .line 9
    :cond_2
    :goto_2
    iget-object p0, v0, Lnet/sf/saxon/expr/UnionIterator$a;->b:Lnet/sf/saxon/om/NodeInfo;

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public supportsHasNext()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
