.class public Lnet/sf/saxon/expr/UnionEnumeration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;


# instance fields
.field public final e:Lnet/sf/saxon/om/SequenceIterator;

.field public final f:Lnet/sf/saxon/om/SequenceIterator;

.field public g:Lnet/sf/saxon/om/NodeInfo;

.field public h:Lnet/sf/saxon/om/NodeInfo;

.field public final i:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "-",
            "Lnet/sf/saxon/om/NodeInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/SequenceIterator;Ljava/util/Comparator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/om/SequenceIterator;",
            "Lnet/sf/saxon/om/SequenceIterator;",
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

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/UnionEnumeration;->g:Lnet/sf/saxon/om/NodeInfo;

    iput-object v0, p0, Lnet/sf/saxon/expr/UnionEnumeration;->h:Lnet/sf/saxon/om/NodeInfo;

    iput-object p1, p0, Lnet/sf/saxon/expr/UnionEnumeration;->e:Lnet/sf/saxon/om/SequenceIterator;

    iput-object p2, p0, Lnet/sf/saxon/expr/UnionEnumeration;->f:Lnet/sf/saxon/om/SequenceIterator;

    iput-object p3, p0, Lnet/sf/saxon/expr/UnionEnumeration;->i:Ljava/util/Comparator;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/UnionEnumeration;->f(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/UnionEnumeration;->g:Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/UnionEnumeration;->f(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/UnionEnumeration;->h:Lnet/sf/saxon/om/NodeInfo;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/UnionEnumeration;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    iget-object p0, p0, Lnet/sf/saxon/expr/UnionEnumeration;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/UnionEnumeration;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    iget-object p0, p0, Lnet/sf/saxon/expr/UnionEnumeration;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public final f(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/NodeInfo;
    .locals 0

    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    return-object p0
.end method

.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/UnionEnumeration;->g:Lnet/sf/saxon/om/NodeInfo;

    if-nez v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/expr/UnionEnumeration;->h:Lnet/sf/saxon/om/NodeInfo;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnionEnumeration;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 3

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/expr/UnionEnumeration;->g:Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/expr/UnionEnumeration;->h:Lnet/sf/saxon/om/NodeInfo;

    if-eqz v1, :cond_2

    .line 3
    iget-object v2, p0, Lnet/sf/saxon/expr/UnionEnumeration;->i:Ljava/util/Comparator;

    invoke-interface {v2, v0, v1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 4
    iget-object v0, p0, Lnet/sf/saxon/expr/UnionEnumeration;->g:Lnet/sf/saxon/om/NodeInfo;

    .line 5
    iget-object v1, p0, Lnet/sf/saxon/expr/UnionEnumeration;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/UnionEnumeration;->f(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/expr/UnionEnumeration;->g:Lnet/sf/saxon/om/NodeInfo;

    return-object v0

    :cond_0
    if-lez v0, :cond_1

    .line 6
    iget-object v0, p0, Lnet/sf/saxon/expr/UnionEnumeration;->h:Lnet/sf/saxon/om/NodeInfo;

    .line 7
    iget-object v1, p0, Lnet/sf/saxon/expr/UnionEnumeration;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/UnionEnumeration;->f(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/expr/UnionEnumeration;->h:Lnet/sf/saxon/om/NodeInfo;

    return-object v0

    .line 8
    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/expr/UnionEnumeration;->h:Lnet/sf/saxon/om/NodeInfo;

    .line 9
    iget-object v1, p0, Lnet/sf/saxon/expr/UnionEnumeration;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/UnionEnumeration;->f(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/expr/UnionEnumeration;->h:Lnet/sf/saxon/om/NodeInfo;

    .line 10
    iget-object v1, p0, Lnet/sf/saxon/expr/UnionEnumeration;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/UnionEnumeration;->f(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/expr/UnionEnumeration;->g:Lnet/sf/saxon/om/NodeInfo;

    return-object v0

    :cond_2
    if-eqz v0, :cond_3

    .line 11
    iget-object v1, p0, Lnet/sf/saxon/expr/UnionEnumeration;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/UnionEnumeration;->f(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/expr/UnionEnumeration;->g:Lnet/sf/saxon/om/NodeInfo;

    return-object v0

    .line 12
    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/expr/UnionEnumeration;->h:Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_4

    .line 13
    iget-object v1, p0, Lnet/sf/saxon/expr/UnionEnumeration;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/UnionEnumeration;->f(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/expr/UnionEnumeration;->h:Lnet/sf/saxon/om/NodeInfo;

    return-object v0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method

.method public supportsHasNext()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
