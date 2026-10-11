.class public Lnet/sf/saxon/functions/Subsequence_2;
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

.method public static subSequence(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/value/NumericValue;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/value/Int64Value;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v0

    const-wide/16 v2, 0x1

    cmp-long p1, v0, v2

    if-gtz p1, :cond_4

    return-object p0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->isNaN()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/NumericValue;->round(I)Lnet/sf/saxon/value/NumericValue;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/value/Int64Value;->PLUS_ONE:Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result v0

    if-gtz v0, :cond_2

    return-object p0

    :cond_2
    sget-object v0, Lnet/sf/saxon/value/Int64Value;->MAX_LONG:Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/value/NumericValue;->compareTo(Lnet/sf/saxon/expr/sort/XPathComparable;)I

    move-result v0

    if-lez v0, :cond_3

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p1}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v0

    :cond_4
    const-wide/32 v2, 0x7fffffff

    cmp-long p1, v0, v2

    if-lez p1, :cond_5

    invoke-static {}, Lnet/sf/saxon/tree/iter/EmptyIterator;->emptyIterator()Lnet/sf/saxon/tree/iter/EmptyIterator;

    move-result-object p0

    return-object p0

    :cond_5
    long-to-int p1, v0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/TailIterator;->make(Lnet/sf/saxon/om/SequenceIterator;I)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p0, 0x0

    aget-object p0, p2, p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    const/4 p1, 0x1

    aget-object p1, p2, p1

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/value/NumericValue;

    invoke-static {p0, p1}, Lnet/sf/saxon/functions/Subsequence_2;->subSequence(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/value/NumericValue;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->toLazySequence(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public getCardinality([Lnet/sf/saxon/expr/Expression;)I
    .locals 0

    const/4 p0, 0x0

    aget-object p0, p1, p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    or-int/lit16 p0, p0, 0x6000

    return p0
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

.method public makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    aget-object v1, p1, v0

    invoke-static {v1}, Lnet/sf/saxon/expr/Literal;->isAtomic(Lnet/sf/saxon/expr/Expression;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    aget-object v2, p1, v1

    instance-of v2, v2, Lnet/sf/saxon/expr/ErrorExpression;

    if-nez v2, :cond_2

    aget-object v0, p1, v0

    check-cast v0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/NumericValue;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/value/NumericValue;->round(I)Lnet/sf/saxon/value/NumericValue;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/value/NumericValue;->longValue()J

    move-result-wide v2

    const-wide/32 v4, 0x7fffffff

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    invoke-super {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_0
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_1

    aget-object p0, p1, v1

    return-object p0

    :cond_1
    new-instance v0, Lnet/sf/saxon/expr/TailExpression;

    aget-object v1, p1, v1

    long-to-int v2, v2

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/expr/TailExpression;-><init>(Lnet/sf/saxon/expr/Expression;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    :cond_2
    invoke-super {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method
