.class public Lnet/sf/saxon/expr/ListConstructorFunction;
.super Lnet/sf/saxon/functions/AbstractFunction;
.source "SourceFile"


# instance fields
.field protected allowEmpty:Z

.field protected memberType:Lnet/sf/saxon/type/SimpleType;

.field protected nsResolver:Lnet/sf/saxon/om/NamespaceResolver;

.field protected targetType:Lnet/sf/saxon/type/ListType;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/type/ListType;Lnet/sf/saxon/om/NamespaceResolver;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/type/MissingComponentException;
        }
    .end annotation

    invoke-direct {p0}, Lnet/sf/saxon/functions/AbstractFunction;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/ListConstructorFunction;->targetType:Lnet/sf/saxon/type/ListType;

    iput-object p2, p0, Lnet/sf/saxon/expr/ListConstructorFunction;->nsResolver:Lnet/sf/saxon/om/NamespaceResolver;

    iput-boolean p3, p0, Lnet/sf/saxon/expr/ListConstructorFunction;->allowEmpty:Z

    invoke-interface {p1}, Lnet/sf/saxon/type/ListType;->getItemType()Lnet/sf/saxon/type/SimpleType;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/ListConstructorFunction;->memberType:Lnet/sf/saxon/type/SimpleType;

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/AtomicSequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2
    aget-object p2, p2, v0

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/AtomicValue;

    const/4 v0, 0x1

    const-string v1, "XPTY0004"

    if-nez p2, :cond_1

    .line 3
    iget-boolean p0, p0, Lnet/sf/saxon/expr/ListConstructorFunction;->allowEmpty:Z

    if-eqz p0, :cond_0

    .line 4
    invoke-static {}, Lnet/sf/saxon/om/EmptyAtomicSequence;->getInstance()Lnet/sf/saxon/om/EmptyAtomicSequence;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cast expression does not allow an empty sequence to be supplied"

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    .line 7
    throw p0

    .line 8
    :cond_1
    instance-of v2, p2, Lnet/sf/saxon/value/StringValue;

    if-eqz v2, :cond_3

    instance-of v2, p2, Lnet/sf/saxon/value/AnyURIValue;

    if-nez v2, :cond_3

    .line 9
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p1

    .line 10
    invoke-virtual {p2}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p2

    .line 11
    iget-object v0, p0, Lnet/sf/saxon/expr/ListConstructorFunction;->targetType:Lnet/sf/saxon/type/ListType;

    iget-object v1, p0, Lnet/sf/saxon/expr/ListConstructorFunction;->nsResolver:Lnet/sf/saxon/om/NamespaceResolver;

    invoke-interface {v0, p2, v1, p1}, Lnet/sf/saxon/type/SimpleType;->validateContent(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v0

    if-nez v0, :cond_2

    .line 12
    iget-object v0, p0, Lnet/sf/saxon/expr/ListConstructorFunction;->targetType:Lnet/sf/saxon/type/ListType;

    iget-object p0, p0, Lnet/sf/saxon/expr/ListConstructorFunction;->nsResolver:Lnet/sf/saxon/om/NamespaceResolver;

    invoke-interface {v0, p2, p0, p1}, Lnet/sf/saxon/type/SimpleType;->getTypedValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    return-object p0

    .line 13
    :cond_2
    invoke-virtual {v0}, Lnet/sf/saxon/type/ValidationFailure;->makeException()Lnet/sf/saxon/type/ValidationException;

    move-result-object p0

    throw p0

    .line 14
    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Only xs:string and xs:untypedAtomic can be cast to a list type"

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    .line 16
    throw p0
.end method

.method public bridge synthetic call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/ListConstructorFunction;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    return-object p0
.end method

.method public getArity()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/ListConstructorFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;
    .locals 3

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    iget-object v1, p0, Lnet/sf/saxon/expr/ListConstructorFunction;->memberType:Lnet/sf/saxon/type/SimpleType;

    invoke-interface {v1}, Lnet/sf/saxon/type/SimpleType;->isAtomicType()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/expr/ListConstructorFunction;->memberType:Lnet/sf/saxon/type/SimpleType;

    check-cast v0, Lnet/sf/saxon/type/AtomicType;

    :cond_0
    iget-boolean p0, p0, Lnet/sf/saxon/expr/ListConstructorFunction;->allowEmpty:Z

    if-eqz p0, :cond_1

    sget-object p0, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    goto :goto_0

    :cond_1
    sget-object p0, Lnet/sf/saxon/value/SequenceType;->SINGLE_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    :goto_0
    new-instance v1, Lnet/sf/saxon/type/SpecificFunctionType;

    filled-new-array {p0}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    const v2, 0xe000

    invoke-static {v0, v2}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    return-object v1
.end method

.method public getFunctionName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ListConstructorFunction;->targetType:Lnet/sf/saxon/type/ListType;

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public getMemberType()Lnet/sf/saxon/type/SimpleType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ListConstructorFunction;->memberType:Lnet/sf/saxon/type/SimpleType;

    return-object p0
.end method

.method public getTargetType()Lnet/sf/saxon/type/ListType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/ListConstructorFunction;->targetType:Lnet/sf/saxon/type/ListType;

    return-object p0
.end method

.method public isAllowEmpty()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/ListConstructorFunction;->allowEmpty:Z

    return p0
.end method
