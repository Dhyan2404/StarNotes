.class public Lnet/sf/saxon/expr/sort/SortedGroupIterator;
.super Lnet/sf/saxon/expr/sort/SortedIterator;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/sort/GroupIterator;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/sort/GroupIterator;Lnet/sf/saxon/expr/sort/SortKeyEvaluator;[Lnet/sf/saxon/expr/sort/AtomicComparer;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lnet/sf/saxon/expr/sort/SortedIterator;-><init>(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/sort/SortKeyEvaluator;[Lnet/sf/saxon/expr/sort/AtomicComparer;Z)V

    sget-object p1, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/sort/SortedIterator;->setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V

    return-void
.end method


# virtual methods
.method public buildArray()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->base:Lnet/sf/saxon/om/SequenceIterator;

    invoke-static {v0}, Lnet/sf/saxon/om/SequenceTool;->supportsGetLength(Lnet/sf/saxon/om/SequenceIterator;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->base:Lnet/sf/saxon/om/SequenceIterator;

    invoke-static {v0}, Lnet/sf/saxon/om/SequenceTool;->getLength(Lnet/sf/saxon/om/SequenceIterator;)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    :goto_0
    new-array v1, v0, [Lnet/sf/saxon/expr/sort/ObjectToBeSorted;

    iput-object v1, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->values:[Lnet/sf/saxon/expr/sort/ObjectToBeSorted;

    const/4 v1, 0x0

    iput v1, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->count:I

    iget-object v2, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->context:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {v2}, Lnet/sf/saxon/expr/XPathContext;->newContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->base:Lnet/sf/saxon/om/SequenceIterator;

    check-cast v3, Lnet/sf/saxon/om/FocusIterator;

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/XPathContextMinor;->setCurrentIterator(Lnet/sf/saxon/om/FocusIterator;)V

    iget-object v3, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->base:Lnet/sf/saxon/om/SequenceIterator;

    check-cast v3, Lnet/sf/saxon/om/FocusTrackingIterator;

    invoke-virtual {v3}, Lnet/sf/saxon/om/FocusTrackingIterator;->getUnderlyingIterator()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/expr/sort/GroupIterator;

    invoke-virtual {v2, v3}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentGroupIterator(Lnet/sf/saxon/expr/sort/GroupIterator;)V

    :goto_1
    iget-object v4, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->base:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v4}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v4

    if-eqz v4, :cond_3

    iget v5, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->count:I

    if-ne v5, v0, :cond_1

    mul-int/lit8 v0, v0, 0x2

    iget-object v5, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->values:[Lnet/sf/saxon/expr/sort/ObjectToBeSorted;

    invoke-static {v5, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lnet/sf/saxon/expr/sort/ObjectToBeSorted;

    iput-object v5, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->values:[Lnet/sf/saxon/expr/sort/ObjectToBeSorted;

    :cond_1
    new-instance v5, Lnet/sf/saxon/expr/sort/GroupToBeSorted;

    iget-object v6, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->comparators:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    array-length v6, v6

    invoke-direct {v5, v6}, Lnet/sf/saxon/expr/sort/GroupToBeSorted;-><init>(I)V

    iget-object v6, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->values:[Lnet/sf/saxon/expr/sort/ObjectToBeSorted;

    iget v7, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->count:I

    aput-object v5, v6, v7

    iput-object v4, v5, Lnet/sf/saxon/expr/sort/ObjectToBeSorted;->value:Lnet/sf/saxon/om/Item;

    move v4, v1

    :goto_2
    iget-object v6, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->comparators:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    array-length v6, v6

    if-ge v4, v6, :cond_2

    iget-object v6, v5, Lnet/sf/saxon/expr/sort/ObjectToBeSorted;->sortKeyValues:[Lnet/sf/saxon/value/AtomicValue;

    iget-object v7, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->sortKeyEvaluator:Lnet/sf/saxon/expr/sort/SortKeyEvaluator;

    invoke-interface {v7, v4, v2}, Lnet/sf/saxon/expr/sort/SortKeyEvaluator;->evaluateSortKey(ILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v7

    aput-object v7, v6, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    iget v4, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->count:I

    add-int/lit8 v6, v4, 0x1

    iput v6, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->count:I

    iput v4, v5, Lnet/sf/saxon/expr/sort/ObjectToBeSorted;->originalPosition:I

    invoke-interface {v3}, Lnet/sf/saxon/expr/sort/GroupIterator;->getCurrentGroupingKey()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object v4

    iput-object v4, v5, Lnet/sf/saxon/expr/sort/GroupToBeSorted;->currentGroupingKey:Lnet/sf/saxon/om/AtomicSequence;

    new-instance v4, Lnet/sf/saxon/om/MemoSequence;

    invoke-interface {v3}, Lnet/sf/saxon/expr/sort/GroupIterator;->iterateCurrentGroup()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v6

    invoke-direct {v4, v6}, Lnet/sf/saxon/om/MemoSequence;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    iput-object v4, v5, Lnet/sf/saxon/expr/sort/GroupToBeSorted;->currentGroup:Lnet/sf/saxon/om/MemoSequence;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public getCurrentGroupingKey()Lnet/sf/saxon/om/AtomicSequence;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->values:[Lnet/sf/saxon/expr/sort/ObjectToBeSorted;

    iget p0, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->position:I

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    check-cast p0, Lnet/sf/saxon/expr/sort/GroupToBeSorted;

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GroupToBeSorted;->currentGroupingKey:Lnet/sf/saxon/om/AtomicSequence;

    return-object p0
.end method

.method public iterateCurrentGroup()Lnet/sf/saxon/om/SequenceIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->values:[Lnet/sf/saxon/expr/sort/ObjectToBeSorted;

    iget p0, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->position:I

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    check-cast p0, Lnet/sf/saxon/expr/sort/GroupToBeSorted;

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/GroupToBeSorted;->currentGroup:Lnet/sf/saxon/om/MemoSequence;

    invoke-virtual {p0}, Lnet/sf/saxon/om/MemoSequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method
