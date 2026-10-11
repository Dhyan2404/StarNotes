.class public Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/GroupIterator;
.implements Lnet/sf/saxon/expr/LastPositionFinder;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;


# instance fields
.field public final e:Lnet/sf/saxon/expr/Expression;

.field public final f:Lnet/sf/saxon/om/FocusIterator;

.field public final g:Lnet/sf/saxon/expr/Expression;

.field public final h:Lnet/sf/saxon/lib/StringCollator;

.field public final i:Lnet/sf/saxon/expr/XPathContext;

.field public final j:Lnet/sf/saxon/expr/XPathContext;

.field public k:Lnet/sf/saxon/expr/sort/CompositeAtomicKey;

.field public l:Lnet/sf/saxon/om/AtomicSequence;

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/Item;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lnet/sf/saxon/expr/sort/CompositeAtomicKey;

.field public o:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/value/AtomicValue;",
            ">;"
        }
    .end annotation
.end field

.field public p:Lnet/sf/saxon/om/Item;

.field public q:Lnet/sf/saxon/om/Item;

.field public r:I

.field public s:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/lib/StringCollator;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->o:Ljava/util/List;

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->q:Lnet/sf/saxon/om/Item;

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->r:I

    iput-boolean v0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->s:Z

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->e:Lnet/sf/saxon/expr/Expression;

    iput-object p2, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->g:Lnet/sf/saxon/expr/Expression;

    iput-object p3, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->i:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->j:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {p1, p3}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    invoke-interface {p2, p1}, Lnet/sf/saxon/expr/XPathContext;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->f:Lnet/sf/saxon/om/FocusIterator;

    iput-object p4, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->h:Lnet/sf/saxon/lib/StringCollator;

    iput-boolean p5, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->s:Z

    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->p:Lnet/sf/saxon/om/Item;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->w(Lnet/sf/saxon/expr/XPathContext;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->o:Ljava/util/List;

    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->j(Ljava/util/List;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/CompositeAtomicKey;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->n:Lnet/sf/saxon/expr/sort/CompositeAtomicKey;

    :cond_0
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->f:Lnet/sf/saxon/om/FocusIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    return-void
.end method

.method public discharge()V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->f:Lnet/sf/saxon/om/FocusIterator;

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->discharge()V

    return-void
.end method

.method public final f()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->m:Ljava/util/List;

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->q:Lnet/sf/saxon/om/Item;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->f:Lnet/sf/saxon/om/FocusIterator;

    invoke-interface {v0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->p:Lnet/sf/saxon/om/Item;

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->o:Ljava/util/List;

    return-void

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->j:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {p0, v1}, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->w(Lnet/sf/saxon/expr/XPathContext;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->i:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->j(Ljava/util/List;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/CompositeAtomicKey;

    move-result-object v2

    :try_start_0
    iget-object v3, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->k:Lnet/sf/saxon/expr/sort/CompositeAtomicKey;

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/sort/CompositeAtomicKey;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->p:Lnet/sf/saxon/om/Item;

    iput-object v2, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->n:Lnet/sf/saxon/expr/sort/CompositeAtomicKey;

    iput-object v1, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->o:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Grouping key values are of non-comparable types"

    invoke-direct {v0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->j:Lnet/sf/saxon/expr/XPathContext;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw v0
.end method

.method public getCurrentGroupingKey()Lnet/sf/saxon/om/AtomicSequence;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->l:Lnet/sf/saxon/om/AtomicSequence;

    return-object p0
.end method

.method public getLength()I
    .locals 7

    :try_start_0
    new-instance v6, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->e:Lnet/sf/saxon/expr/Expression;

    iget-object v2, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->g:Lnet/sf/saxon/expr/Expression;

    iget-object v3, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->i:Lnet/sf/saxon/expr/XPathContext;

    iget-object v4, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->h:Lnet/sf/saxon/lib/StringCollator;

    iget-boolean v5, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->s:Z

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/lib/StringCollator;Z)V

    invoke-static {v6}, Lnet/sf/saxon/functions/Count;->steppingCount(Lnet/sf/saxon/om/SequenceIterator;)I

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0
.end method

.method public hasNext()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->p:Lnet/sf/saxon/om/Item;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterateCurrentGroup()Lnet/sf/saxon/om/SequenceIterator;
    .locals 1

    new-instance v0, Lnet/sf/saxon/tree/iter/ListIterator$Of;

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->m:Ljava/util/List;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/iter/ListIterator$Of;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final j(Ljava/util/List;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/CompositeAtomicKey;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/sf/saxon/value/AtomicValue;",
            ">;",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")",
            "Lnet/sf/saxon/expr/sort/CompositeAtomicKey;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v1}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v1, Lnet/sf/saxon/functions/DistinctValues;->NaN_MATCH_KEY:Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->h:Lnet/sf/saxon/lib/StringCollator;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getImplicitTimezone()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/value/AtomicValue;->getXPathMatchKey(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object v1

    :goto_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/expr/sort/CompositeAtomicKey;

    invoke-direct {p0, v0}, Lnet/sf/saxon/expr/sort/CompositeAtomicKey;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->p:Lnet/sf/saxon/om/Item;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->q:Lnet/sf/saxon/om/Item;

    const/4 v1, -0x1

    iput v1, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->r:I

    return-object v0

    :cond_0
    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->q:Lnet/sf/saxon/om/Item;

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->o:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/AtomicSequence;

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->l:Lnet/sf/saxon/om/AtomicSequence;

    goto :goto_0

    :cond_1
    new-instance v0, Lnet/sf/saxon/om/AtomicArray;

    iget-object v2, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->o:Ljava/util/List;

    invoke-direct {v0, v2}, Lnet/sf/saxon/om/AtomicArray;-><init>(Ljava/util/List;)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->l:Lnet/sf/saxon/om/AtomicSequence;

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->n:Lnet/sf/saxon/expr/sort/CompositeAtomicKey;

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->k:Lnet/sf/saxon/expr/sort/CompositeAtomicKey;

    iget v0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->r:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->r:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->f()V

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->q:Lnet/sf/saxon/om/Item;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0
.end method

.method public supportsGetLength()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public supportsHasNext()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public final w(Lnet/sf/saxon/expr/XPathContext;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")",
            "Ljava/util/List<",
            "Lnet/sf/saxon/value/AtomicValue;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GroupAdjacentIterator;->g:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
