.class public Lnet/sf/saxon/expr/IntersectionEnumeration;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;


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
    .locals 0
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

    iput-object p1, p0, Lnet/sf/saxon/expr/IntersectionEnumeration;->e:Lnet/sf/saxon/om/SequenceIterator;

    iput-object p2, p0, Lnet/sf/saxon/expr/IntersectionEnumeration;->f:Lnet/sf/saxon/om/SequenceIterator;

    iput-object p3, p0, Lnet/sf/saxon/expr/IntersectionEnumeration;->i:Ljava/util/Comparator;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/IntersectionEnumeration;->f(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/IntersectionEnumeration;->g:Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/IntersectionEnumeration;->f(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/IntersectionEnumeration;->h:Lnet/sf/saxon/om/NodeInfo;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/IntersectionEnumeration;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    iget-object p0, p0, Lnet/sf/saxon/expr/IntersectionEnumeration;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/IntersectionEnumeration;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    iget-object p0, p0, Lnet/sf/saxon/expr/IntersectionEnumeration;->f:Lnet/sf/saxon/om/SequenceIterator;

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

.method public bridge synthetic next()Lnet/sf/saxon/om/Item;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/IntersectionEnumeration;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/NodeInfo;
    .locals 4

    .line 2
    iget-object v0, p0, Lnet/sf/saxon/expr/IntersectionEnumeration;->g:Lnet/sf/saxon/om/NodeInfo;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-object p0, p0, Lnet/sf/saxon/expr/IntersectionEnumeration;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-object v1

    .line 4
    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/IntersectionEnumeration;->h:Lnet/sf/saxon/om/NodeInfo;

    if-nez v0, :cond_1

    .line 5
    iget-object p0, p0, Lnet/sf/saxon/expr/IntersectionEnumeration;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-object v1

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/expr/IntersectionEnumeration;->g:Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_4

    iget-object v2, p0, Lnet/sf/saxon/expr/IntersectionEnumeration;->h:Lnet/sf/saxon/om/NodeInfo;

    if-eqz v2, :cond_4

    .line 7
    iget-object v3, p0, Lnet/sf/saxon/expr/IntersectionEnumeration;->i:Ljava/util/Comparator;

    invoke-interface {v3, v0, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    .line 8
    iget-object v0, p0, Lnet/sf/saxon/expr/IntersectionEnumeration;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/IntersectionEnumeration;->f(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/IntersectionEnumeration;->g:Lnet/sf/saxon/om/NodeInfo;

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    .line 9
    iget-object v0, p0, Lnet/sf/saxon/expr/IntersectionEnumeration;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/IntersectionEnumeration;->f(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/expr/IntersectionEnumeration;->h:Lnet/sf/saxon/om/NodeInfo;

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/expr/IntersectionEnumeration;->h:Lnet/sf/saxon/om/NodeInfo;

    .line 11
    iget-object v1, p0, Lnet/sf/saxon/expr/IntersectionEnumeration;->f:Lnet/sf/saxon/om/SequenceIterator;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/IntersectionEnumeration;->f(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/expr/IntersectionEnumeration;->h:Lnet/sf/saxon/om/NodeInfo;

    .line 12
    iget-object v1, p0, Lnet/sf/saxon/expr/IntersectionEnumeration;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/IntersectionEnumeration;->f(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/expr/IntersectionEnumeration;->g:Lnet/sf/saxon/om/NodeInfo;

    return-object v0

    :cond_4
    return-object v1
.end method
