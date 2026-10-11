.class public Lnet/sf/saxon/expr/sort/SortedIterator;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/om/SequenceIterator;
.implements Lnet/sf/saxon/expr/LastPositionFinder;
.implements Lnet/sf/saxon/tree/iter/LookaheadIterator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/expr/sort/SortedIterator$a;
    }
.end annotation


# instance fields
.field protected base:Lnet/sf/saxon/om/SequenceIterator;

.field protected comparators:[Lnet/sf/saxon/expr/sort/AtomicComparer;

.field protected context:Lnet/sf/saxon/expr/XPathContext;

.field protected count:I

.field public e:Lnet/sf/saxon/s9api/HostLanguage;

.field protected position:I

.field protected sortKeyEvaluator:Lnet/sf/saxon/expr/sort/SortKeyEvaluator;

.field protected values:[Lnet/sf/saxon/expr/sort/ObjectToBeSorted;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->count:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->position:I

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/sort/SortKeyEvaluator;[Lnet/sf/saxon/expr/sort/AtomicComparer;Z)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 5
    iput v0, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->count:I

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->position:I

    if-eqz p5, :cond_0

    .line 7
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->newMinorContext()Lnet/sf/saxon/expr/XPathContextMinor;

    move-result-object p5

    iput-object p5, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->context:Lnet/sf/saxon/expr/XPathContext;

    .line 8
    invoke-interface {p5, p2}, Lnet/sf/saxon/expr/XPathContext;->trackFocus(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/FocusIterator;

    move-result-object p2

    iput-object p2, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->base:Lnet/sf/saxon/om/SequenceIterator;

    .line 9
    iget-object p2, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->context:Lnet/sf/saxon/expr/XPathContext;

    const/16 p5, 0xcb

    invoke-interface {p2, p5}, Lnet/sf/saxon/expr/XPathContext;->setTemporaryOutputState(I)V

    goto :goto_0

    .line 10
    :cond_0
    iput-object p2, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->base:Lnet/sf/saxon/om/SequenceIterator;

    .line 11
    iput-object p1, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->context:Lnet/sf/saxon/expr/XPathContext;

    .line 12
    :goto_0
    iput-object p3, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->sortKeyEvaluator:Lnet/sf/saxon/expr/sort/SortKeyEvaluator;

    .line 13
    array-length p2, p4

    new-array p2, p2, [Lnet/sf/saxon/expr/sort/AtomicComparer;

    iput-object p2, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->comparators:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    .line 14
    :goto_1
    array-length p2, p4

    if-ge v0, p2, :cond_1

    .line 15
    iget-object p2, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->comparators:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    aget-object p3, p4, v0

    invoke-interface {p3, p1}, Lnet/sf/saxon/expr/sort/AtomicComparer;->provideContext(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/expr/sort/AtomicComparer;

    move-result-object p3

    aput-object p3, p2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public buildArray()V
    .locals 7
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
    new-array v1, v0, [Lnet/sf/saxon/expr/sort/ItemToBeSorted;

    iput-object v1, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->values:[Lnet/sf/saxon/expr/sort/ObjectToBeSorted;

    const/4 v1, 0x0

    iput v1, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->count:I

    :goto_1
    iget-object v2, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->base:Lnet/sf/saxon/om/SequenceIterator;

    invoke-interface {v2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v2

    if-eqz v2, :cond_3

    iget v3, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->count:I

    if-ne v3, v0, :cond_1

    mul-int/lit8 v0, v0, 0x2

    new-array v4, v0, [Lnet/sf/saxon/expr/sort/ObjectToBeSorted;

    iget-object v5, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->values:[Lnet/sf/saxon/expr/sort/ObjectToBeSorted;

    invoke-static {v5, v1, v4, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v4, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->values:[Lnet/sf/saxon/expr/sort/ObjectToBeSorted;

    :cond_1
    new-instance v3, Lnet/sf/saxon/expr/sort/ItemToBeSorted;

    iget-object v4, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->comparators:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    array-length v4, v4

    invoke-direct {v3, v4}, Lnet/sf/saxon/expr/sort/ItemToBeSorted;-><init>(I)V

    iget-object v4, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->values:[Lnet/sf/saxon/expr/sort/ObjectToBeSorted;

    iget v5, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->count:I

    aput-object v3, v4, v5

    iput-object v2, v3, Lnet/sf/saxon/expr/sort/ObjectToBeSorted;->value:Lnet/sf/saxon/om/Item;

    move v2, v1

    :goto_2
    iget-object v4, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->comparators:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    array-length v4, v4

    if-ge v2, v4, :cond_2

    iget-object v4, v3, Lnet/sf/saxon/expr/sort/ObjectToBeSorted;->sortKeyValues:[Lnet/sf/saxon/value/AtomicValue;

    iget-object v5, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->sortKeyEvaluator:Lnet/sf/saxon/expr/sort/SortKeyEvaluator;

    iget-object v6, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->context:Lnet/sf/saxon/expr/XPathContext;

    invoke-interface {v5, v2, v6}, Lnet/sf/saxon/expr/sort/SortKeyEvaluator;->evaluateSortKey(ILnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object v5

    aput-object v5, v4, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    iget v2, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->count:I

    add-int/lit8 v4, v2, 0x1

    iput v4, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->count:I

    iput v2, v3, Lnet/sf/saxon/expr/sort/ObjectToBeSorted;->originalPosition:I

    goto :goto_1

    :cond_3
    mul-int/lit8 v2, v0, 0x2

    iget v3, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->count:I

    if-lt v2, v3, :cond_4

    sub-int/2addr v0, v3

    const/16 v2, 0x7d0

    if-le v0, v2, :cond_5

    :cond_4
    new-array v0, v3, [Lnet/sf/saxon/expr/sort/ObjectToBeSorted;

    iget-object v2, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->values:[Lnet/sf/saxon/expr/sort/ObjectToBeSorted;

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->values:[Lnet/sf/saxon/expr/sort/ObjectToBeSorted;

    :cond_5
    return-void
.end method

.method public final f()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortedIterator;->buildArray()V

    iget v0, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->count:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->values:[Lnet/sf/saxon/expr/sort/ObjectToBeSorted;

    new-instance v2, Lnet/sf/saxon/expr/sort/SortedIterator$a;

    iget-object v3, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->comparators:[Lnet/sf/saxon/expr/sort/AtomicComparer;

    invoke-direct {v2, v3}, Lnet/sf/saxon/expr/sort/SortedIterator$a;-><init>([Lnet/sf/saxon/expr/sort/AtomicComparer;)V

    const/4 v3, 0x0

    invoke-static {v1, v3, v0, v2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;IILjava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Non-comparable types found while sorting: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->e:Lnet/sf/saxon/s9api/HostLanguage;

    sget-object v0, Lnet/sf/saxon/s9api/HostLanguage;->XSLT:Lnet/sf/saxon/s9api/HostLanguage;

    if-ne p0, v0, :cond_1

    const-string p0, "XTDE1030"

    invoke-virtual {v1, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "XPTY0004"

    invoke-virtual {v1, p0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    :goto_0
    throw v1
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->count:I

    if-gez v0, :cond_0

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortedIterator;->f()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0

    :cond_0
    :goto_0
    iget p0, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->count:I

    return p0
.end method

.method public hasNext()Z
    .locals 4

    iget v0, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->position:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->count:I

    const/4 v3, 0x1

    if-gez v2, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->base:Lnet/sf/saxon/om/SequenceIterator;

    instance-of v2, v0, Lnet/sf/saxon/tree/iter/LookaheadIterator;

    if-eqz v2, :cond_1

    check-cast v0, Lnet/sf/saxon/tree/iter/LookaheadIterator;

    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/LookaheadIterator;->supportsHasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->base:Lnet/sf/saxon/om/SequenceIterator;

    check-cast p0, Lnet/sf/saxon/tree/iter/LookaheadIterator;

    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/LookaheadIterator;->hasNext()Z

    move-result p0

    return p0

    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortedIterator;->f()V

    iget p0, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->count:I
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez p0, :cond_2

    move v1, v3

    :cond_2
    return v1

    :catch_0
    move-exception v0

    const/4 v1, -0x1

    iput v1, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->count:I

    new-instance v1, Lnet/sf/saxon/om/FocusTrackingIterator;

    new-instance v2, Lnet/sf/saxon/expr/ErrorIterator;

    invoke-direct {v2, v0}, Lnet/sf/saxon/expr/ErrorIterator;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-direct {v1, v2}, Lnet/sf/saxon/om/FocusTrackingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;)V

    iput-object v1, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->base:Lnet/sf/saxon/om/SequenceIterator;

    return v3

    :cond_3
    if-ge v0, v2, :cond_4

    move v1, v3

    :cond_4
    return v1
.end method

.method public next()Lnet/sf/saxon/om/Item;
    .locals 3

    iget v0, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->position:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    return-object v1

    :cond_0
    iget v0, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->count:I

    if-gez v0, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/sort/SortedIterator;->f()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/trans/UncheckedXPathException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/trans/UncheckedXPathException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->position:I

    iget v2, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->count:I

    if-ge v0, v2, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->values:[Lnet/sf/saxon/expr/sort/ObjectToBeSorted;

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->position:I

    aget-object p0, v1, v0

    iget-object p0, p0, Lnet/sf/saxon/expr/sort/ObjectToBeSorted;->value:Lnet/sf/saxon/om/Item;

    return-object p0

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->position:I

    return-object v1
.end method

.method public setHostLanguage(Lnet/sf/saxon/s9api/HostLanguage;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/expr/sort/SortedIterator;->e:Lnet/sf/saxon/s9api/HostLanguage;

    return-void
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
