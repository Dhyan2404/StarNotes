.class public Lnet/sf/saxon/expr/sort/GroupByIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/GroupIterator;
.implements Lnet/sf/saxon/expr/LastPositionFinder;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;


# instance fields
.field protected composite:Z

.field public e:Lnet/sf/saxon/om/SequenceIterator;

.field public f:Lnet/sf/saxon/lib/StringCollator;

.field public g:Lnet/sf/saxon/expr/XPathContext;

.field protected groupKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/AtomicSequence;",
            ">;"
        }
    .end annotation
.end field

.field protected groups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/Item;",
            ">;>;"
        }
    .end annotation
.end field

.field public h:I

.field protected keyExpression:Lnet/sf/saxon/expr/Expression;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->h:I

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->groups:Ljava/util/List;

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->groupKeys:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/lib/StringCollator;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->h:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->groups:Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->groupKeys:Ljava/util/List;

    .line 5
    iput-object p1, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    .line 6
    iput-object p2, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->keyExpression:Lnet/sf/saxon/expr/Expression;

    .line 7
    iput-object p3, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->g:Lnet/sf/saxon/expr/XPathContext;

    .line 8
    iput-object p4, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->f:Lnet/sf/saxon/lib/StringCollator;

    .line 9
    iput-boolean p5, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->composite:Z

    if-eqz p5, :cond_0

    .line 10
    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/GroupByIterator;->j()V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/GroupByIterator;->f()V

    :goto_0
    return-void
.end method


# virtual methods
.method public final current()Lnet/sf/saxon/om/Item;
    .locals 2

    iget v0, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->h:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->groups:Ljava/util/List;

    sub-int/2addr v0, v1

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/Item;

    return-object p0
.end method

.method public final f()V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->g:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/XPathContext;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v1, v2}, Lnet/sf/saxon/expr/XPathContext;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    move-result-object v2

    invoke-interface {v1}, Lnet/sf/saxon/expr/XPathContext;->getImplicitTimezone()I

    move-result v3

    :goto_0
    invoke-interface {v2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v4

    if-eqz v4, :cond_5

    iget-object v5, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->keyExpression:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v5, v1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v5

    const/4 v6, 0x1

    move v7, v6

    :goto_1
    invoke-interface {v5}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v8

    check-cast v8, Lnet/sf/saxon/value/AtomicValue;

    if-nez v8, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v8}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v9

    if-eqz v9, :cond_1

    sget-object v9, Lnet/sf/saxon/functions/DistinctValues;->NaN_MATCH_KEY:Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    goto :goto_2

    :cond_1
    iget-object v9, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->f:Lnet/sf/saxon/lib/StringCollator;

    invoke-virtual {v8, v9, v3}, Lnet/sf/saxon/value/AtomicValue;->getXPathMatchKey(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object v9

    :goto_2
    invoke-virtual {v0, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    if-nez v10, :cond_2

    new-instance v7, Ljava/util/ArrayList;

    const/16 v10, 0x14

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->groups:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->groupKeys:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_2
    if-eqz v7, :cond_3

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eq v7, v4, :cond_4

    invoke-interface {v10, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    const/4 v7, 0x0

    goto :goto_1

    :cond_5
    return-void
.end method

.method public getCurrentGroup()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/sf/saxon/om/Item;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->groups:Ljava/util/List;

    iget p0, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->h:I

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public declared-synchronized getCurrentGroupingKey()Lnet/sf/saxon/om/AtomicSequence;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->groupKeys:Ljava/util/List;

    iget v1, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->h:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/AtomicSequence;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/om/EmptyAtomicSequence;->getInstance()Lnet/sf/saxon/om/EmptyAtomicSequence;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLength()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->groups:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public hasNext()Z
    .locals 1

    iget v0, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->h:I

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->groups:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-ge v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterateCurrentGroup()Lnet/sf/saxon/om/SequenceIterator;
    .locals 2

    new-instance v0, Lnet/sf/saxon/tree/iter/ListIterator$Of;

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->groups:Ljava/util/List;

    iget p0, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->h:I

    add-int/lit8 p0, p0, -0x1

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-direct {v0, p0}, Lnet/sf/saxon/tree/iter/ListIterator$Of;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public final j()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->g:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {v1}, Lnet/sf/saxon/expr/XPathContext;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->e:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v1, v2}, Lnet/sf/saxon/expr/XPathContext;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    move-result-object v2

    invoke-interface {v1}, Lnet/sf/saxon/expr/XPathContext;->getImplicitTimezone()I

    move-result v3

    :goto_0
    invoke-interface {v2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v5, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->keyExpression:Lnet/sf/saxon/expr/Expression;

    invoke-virtual {v5, v1}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v5

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {v5}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v8

    check-cast v8, Lnet/sf/saxon/value/AtomicValue;

    if-nez v8, :cond_1

    new-instance v5, Lnet/sf/saxon/expr/sort/CompositeAtomicKey;

    invoke-direct {v5, v6}, Lnet/sf/saxon/expr/sort/CompositeAtomicKey;-><init>(Ljava/util/List;)V

    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_0

    new-instance v6, Ljava/util/ArrayList;

    const/16 v8, 0x14

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->groups:Ljava/util/List;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->groupKeys:Ljava/util/List;

    new-instance v8, Lnet/sf/saxon/om/AtomicArray;

    invoke-direct {v8, v7}, Lnet/sf/saxon/om/AtomicArray;-><init>(Ljava/util/List;)V

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v8}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v9

    if-eqz v9, :cond_2

    sget-object v8, Lnet/sf/saxon/functions/DistinctValues;->NaN_MATCH_KEY:Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    goto :goto_2

    :cond_2
    iget-object v9, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->f:Lnet/sf/saxon/lib/StringCollator;

    invoke-virtual {v8, v9, v3}, Lnet/sf/saxon/value/AtomicValue;->getXPathMatchKey(Lnet/sf/saxon/lib/StringCollator;I)Lnet/sf/saxon/expr/sort/AtomicMatchKey;

    move-result-object v8

    :goto_2
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    return-void
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 2

    iget v0, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->h:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->groups:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget v0, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->h:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->h:I

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/GroupByIterator;->current()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/expr/sort/GroupByIterator;->h:I

    const/4 p0, 0x0

    return-object p0
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
