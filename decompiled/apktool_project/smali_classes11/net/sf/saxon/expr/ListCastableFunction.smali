.class public Lnet/sf/saxon/expr/ListCastableFunction;
.super Lnet/sf/saxon/expr/ListConstructorFunction;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lnet/sf/saxon/type/ListType;Lnet/sf/saxon/om/NamespaceResolver;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/MissingComponentException;
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/expr/ListConstructorFunction;-><init>(Lnet/sf/saxon/type/ListType;Lnet/sf/saxon/om/NamespaceResolver;Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/AtomicSequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/ListCastableFunction;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/BooleanValue;

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
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/ListCastableFunction;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/value/BooleanValue;
    .locals 2
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

    .line 4
    invoke-interface {p2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/AtomicValue;

    if-nez v1, :cond_0

    .line 5
    iget-boolean p0, p0, Lnet/sf/saxon/expr/ListConstructorFunction;->allowEmpty:Z

    invoke-static {p0}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    invoke-interface {p2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 7
    sget-object p0, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    return-object p0

    .line 8
    :cond_1
    instance-of p2, v1, Lnet/sf/saxon/value/StringValue;

    if-eqz p2, :cond_4

    instance-of p2, v1, Lnet/sf/saxon/value/AnyURIValue;

    if-eqz p2, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p1

    .line 10
    invoke-virtual {v1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    .line 11
    iget-object v1, p0, Lnet/sf/saxon/expr/ListConstructorFunction;->targetType:Lnet/sf/saxon/type/ListType;

    iget-object p0, p0, Lnet/sf/saxon/expr/ListConstructorFunction;->nsResolver:Lnet/sf/saxon/om/NamespaceResolver;

    invoke-interface {v1, p2, p0, p1}, Lnet/sf/saxon/type/SimpleType;->validateContent(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object p0

    if-nez p0, :cond_3

    const/4 v0, 0x1

    .line 12
    :cond_3
    invoke-static {v0}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object p0

    return-object p0

    .line 13
    :cond_4
    :goto_0
    sget-object p0, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

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
