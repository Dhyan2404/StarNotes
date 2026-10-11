.class public Lnet/sf/saxon/expr/UnionCastableFunction;
.super Lnet/sf/saxon/expr/UnionConstructorFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/sf/saxon/type/UnionType;Lnet/sf/saxon/om/NamespaceResolver;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/expr/UnionConstructorFunction;-><init>(Lnet/sf/saxon/type/UnionType;Lnet/sf/saxon/om/NamespaceResolver;Z)V

    return-void
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/UnionConstructorFunction;->cast(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/AtomicSequence;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final b(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    instance-of v4, v2, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v4, :cond_2

    invoke-interface {v2}, Lnet/sf/saxon/om/Item;->atomize()Lnet/sf/saxon/om/AtomicSequence;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/om/SequenceTool;->getLength(Lnet/sf/saxon/om/Sequence;)I

    move-result v4

    add-int/2addr v1, v4

    if-le v1, v3, :cond_1

    return v0

    :cond_1
    if-eqz v4, :cond_0

    invoke-interface {v2}, Lnet/sf/saxon/om/AtomicSequence;->head()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lnet/sf/saxon/expr/UnionCastableFunction;->a(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_2
    instance-of v4, v2, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v4, :cond_4

    check-cast v2, Lnet/sf/saxon/value/AtomicValue;

    add-int/lit8 v1, v1, 0x1

    if-le v1, v3, :cond_3

    return v0

    :cond_3
    invoke-virtual {p0, v2, p2}, Lnet/sf/saxon/expr/UnionCastableFunction;->a(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Input to \'castable\' operator cannot be atomized"

    const-string p2, "XPTY0004"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_5
    if-nez v1, :cond_6

    iget-boolean p0, p0, Lnet/sf/saxon/expr/UnionConstructorFunction;->allowEmpty:Z

    if-eqz p0, :cond_7

    :cond_6
    move v0, v3

    :cond_7
    return v0
.end method

.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/AtomicSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/UnionCastableFunction;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/UnionCastableFunction;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/BooleanValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    aget-object p2, p2, v0

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/expr/UnionCastableFunction;->b(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/XPathContext;)Z

    move-result p0

    .line 4
    invoke-static {p0}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;
    .locals 2

    new-instance p0, Lnet/sf/saxon/type/SpecificFunctionType;

    sget-object v0, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    filled-new-array {v0}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->SINGLE_BOOLEAN:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {p0, v0, v1}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    return-object p0
.end method

.method public getFunctionName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method
