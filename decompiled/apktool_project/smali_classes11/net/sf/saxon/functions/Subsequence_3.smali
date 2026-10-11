.class public Lnet/sf/saxon/functions/Subsequence_3;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static subSequence(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/value/NumericValue;Lnet/sf/saxon/value/NumericValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/value/Int64Value;

    const/4 v1, 0x1

    const-wide/16 v2, 0x1

    const-wide/32 v4, 0x7fffffff

    if-eqz v0, :cond_5

    instance-of v0, p2, Lnet/sf/saxon/value/Int64Value;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v6

    cmp-long p1, v6, v4

    if-lez p1, :cond_0

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p2}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide p1

    cmp-long p3, p1, v4

    if-lez p3, :cond_1

    goto :goto_0

    :cond_1
    move-wide v4, p1

    :goto_0
    cmp-long p1, v4, v2

    if-gez p1, :cond_2

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_2
    add-long/2addr v4, v6

    sub-long/2addr v4, v2

    cmp-long p1, v4, v2

    if-gez p1, :cond_3

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_3
    cmp-long p1, v6, v2

    if-gez p1, :cond_4

    goto :goto_1

    :cond_4
    long-to-int v1, v6

    :goto_1
    long-to-int p1, v4

    invoke-static {p0, v1, p1}, Lnet/sf/saxon/expr/SubsequenceIterator;->make(Lnet/sf/saxon/om/SequenceIterator;II)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_6
    sget-object v0, Lnet/sf/saxon/value/Int64Value;->MAX_LONG:Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result v6

    if-lez v6, :cond_7

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_7
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lnet/sf/saxon/value/NumericValue;->round(I)Lnet/sf/saxon/value/NumericValue;

    move-result-object p1

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v7

    if-eqz v7, :cond_8

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_8
    invoke-virtual {p2, v6}, Lnet/sf/saxon/value/NumericValue;->round(I)Lnet/sf/saxon/value/NumericValue;

    move-result-object p2

    sget-object v7, Lnet/sf/saxon/value/Int64Value;->ZERO:Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p2, v7}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result v8

    if-gtz v8, :cond_9

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_9
    invoke-static {p1, v6, p2, p3}, Lnet/sf/saxon/expr/ArithmeticExpression;->compute(Lnet/sf/saxon/value/AtomicValue;ILnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_a
    sget-object v6, Lnet/sf/saxon/value/Int64Value;->PLUS_ONE:Lnet/sf/saxon/value/Int64Value;

    invoke-static {p2, v1, v6, p3}, Lnet/sf/saxon/expr/ArithmeticExpression;->compute(Lnet/sf/saxon/value/AtomicValue;ILnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {p2, v7}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p3

    if-gtz p3, :cond_b

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_b
    invoke-virtual {p1, v6}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p3

    if-gtz p3, :cond_c

    goto :goto_2

    :cond_c
    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v2

    :goto_2
    cmp-long p1, v2, v4

    if-lez p1, :cond_d

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_d
    invoke-virtual {p2, v0}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result p1

    if-ltz p1, :cond_e

    goto :goto_3

    :cond_e
    invoke-virtual {p2}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v4

    :goto_3
    long-to-int p1, v2

    long-to-int p2, v4

    invoke-static {p0, p1, p2}, Lnet/sf/saxon/expr/SubsequenceIterator;->make(Lnet/sf/saxon/om/SequenceIterator;II)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    aget-object p0, p2, p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    const/4 v0, 0x1

    aget-object v0, p2, v0

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/NumericValue;

    const/4 v1, 0x2

    aget-object p2, p2, v1

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/NumericValue;

    invoke-static {p0, v0, p2, p1}, Lnet/sf/saxon/functions/Subsequence_3;->subSequence(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/value/NumericValue;Lnet/sf/saxon/value/NumericValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toLazySequence(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public getSpecialProperties([Lnet/sf/saxon/expr/Expression;)I
    .locals 0

    const/4 p0, 0x0

    aget-object p0, p1, p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getSpecialProperties()I

    move-result p0

    return p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "Subsequence"

    return-object p0
.end method
