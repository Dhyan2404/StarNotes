.class public Lnet/sf/saxon/expr/UnionConstructorFunction;
.super Lnet/sf/saxon/functions/AbstractFunction;
.source "SourceFile"


# instance fields
.field protected allowEmpty:Z

.field protected resolver:Lnet/sf/saxon/om/NamespaceResolver;

.field protected targetType:Lnet/sf/saxon/type/UnionType;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/type/UnionType;Lnet/sf/saxon/om/NamespaceResolver;Z)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/AbstractFunction;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/expr/UnionConstructorFunction;->targetType:Lnet/sf/saxon/type/UnionType;

    iput-object p2, p0, Lnet/sf/saxon/expr/UnionConstructorFunction;->resolver:Lnet/sf/saxon/om/NamespaceResolver;

    iput-boolean p3, p0, Lnet/sf/saxon/expr/UnionConstructorFunction;->allowEmpty:Z

    return-void
.end method

.method public static cast(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/type/UnionType;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/om/AtomicSequence;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 24
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    instance-of v0, p0, Lnet/sf/saxon/value/StringValue;

    const-string v1, "FORG0001"

    if-eqz v0, :cond_0

    instance-of v0, p0, Lnet/sf/saxon/value/AnyURIValue;

    if-nez v0, :cond_0

    .line 26
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-interface {p1, p0, p2, p3}, Lnet/sf/saxon/type/UnionType;->getTypedValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/type/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 27
    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 28
    throw p0

    .line 29
    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p2

    .line 30
    invoke-interface {p1}, Lnet/sf/saxon/type/UnionType;->getPlainMemberTypes()Ljava/util/List;

    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/type/PlainType;

    .line 32
    invoke-virtual {p2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object p0

    .line 33
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/type/PlainType;

    move-object v4, p2

    :goto_0
    if-eqz v4, :cond_3

    .line 34
    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    return-object p0

    .line 35
    :cond_4
    invoke-interface {v4}, Lnet/sf/saxon/type/SchemaType;->getBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v5

    instance-of v5, v5, Lnet/sf/saxon/type/AtomicType;

    if-eqz v5, :cond_5

    invoke-interface {v4}, Lnet/sf/saxon/type/SchemaType;->getBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/type/AtomicType;

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    .line 36
    :cond_6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_7
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/type/PlainType;

    .line 37
    instance-of v2, v0, Lnet/sf/saxon/type/AtomicType;

    if-eqz v2, :cond_7

    .line 38
    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v2

    check-cast v0, Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {p3, v2, v0}, Lnet/sf/saxon/lib/ConversionRules;->getConverter(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/Converter;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 39
    invoke-virtual {v0, p0}, Lnet/sf/saxon/type/Converter;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v0

    .line 40
    instance-of v2, v0, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v2, :cond_7

    .line 41
    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    return-object v0

    .line 42
    :cond_8
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Cannot convert the supplied value to "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lnet/sf/saxon/type/UnionType;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/AtomicSequence;
    .locals 1
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

    if-nez p2, :cond_1

    .line 3
    iget-boolean p0, p0, Lnet/sf/saxon/expr/UnionConstructorFunction;->allowEmpty:Z

    if-eqz p0, :cond_0

    .line 4
    invoke-static {}, Lnet/sf/saxon/om/EmptyAtomicSequence;->getInstance()Lnet/sf/saxon/om/EmptyAtomicSequence;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cast expression does not allow an empty sequence to be supplied"

    const-string p2, "XPTY0004"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    .line 7
    throw p0

    .line 8
    :cond_1
    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/expr/UnionConstructorFunction;->cast(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/AtomicSequence;

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

    .line 1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/UnionConstructorFunction;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    return-object p0
.end method

.method public cast(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/AtomicSequence;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    instance-of v0, p1, Lnet/sf/saxon/value/StringValue;

    const-string v1, "FORG0001"

    if-eqz v0, :cond_0

    instance-of v0, p1, Lnet/sf/saxon/value/AnyURIValue;

    if-nez v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/expr/UnionConstructorFunction;->targetType:Lnet/sf/saxon/type/UnionType;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/expr/UnionConstructorFunction;->resolver:Lnet/sf/saxon/om/NamespaceResolver;

    invoke-interface {v0, p1, p0, p2}, Lnet/sf/saxon/type/UnionType;->getTypedValue(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/type/ValidationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 5
    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    .line 6
    throw p0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v0

    .line 8
    iget-object v2, p0, Lnet/sf/saxon/expr/UnionConstructorFunction;->targetType:Lnet/sf/saxon/type/UnionType;

    invoke-interface {v2}, Lnet/sf/saxon/type/UnionType;->getPlainMemberTypes()Ljava/util/List;

    move-result-object v2

    .line 9
    iget-object v3, p0, Lnet/sf/saxon/expr/UnionConstructorFunction;->targetType:Lnet/sf/saxon/type/UnionType;

    invoke-interface {v3}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 10
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/type/PlainType;

    .line 11
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-object p1

    .line 12
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/type/PlainType;

    move-object v5, v0

    :goto_0
    if-eqz v5, :cond_3

    .line 13
    invoke-virtual {v5, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    return-object p1

    .line 14
    :cond_4
    invoke-interface {v5}, Lnet/sf/saxon/type/SchemaType;->getBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v6

    instance-of v6, v6, Lnet/sf/saxon/type/AtomicType;

    if-eqz v6, :cond_5

    invoke-interface {v5}, Lnet/sf/saxon/type/SchemaType;->getBaseType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/type/AtomicType;

    goto :goto_0

    :cond_5
    const/4 v5, 0x0

    goto :goto_0

    .line 15
    :cond_6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/type/PlainType;

    .line 16
    instance-of v3, v2, Lnet/sf/saxon/type/AtomicType;

    if-eqz v3, :cond_7

    .line 17
    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v3

    check-cast v2, Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {p2, v3, v2}, Lnet/sf/saxon/lib/ConversionRules;->getConverter(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/Converter;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 18
    invoke-virtual {v2, p1}, Lnet/sf/saxon/type/Converter;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v2

    .line 19
    instance-of v3, v2, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v3, :cond_7

    .line 20
    iget-object v3, p0, Lnet/sf/saxon/expr/UnionConstructorFunction;->targetType:Lnet/sf/saxon/type/UnionType;

    invoke-interface {v3}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v3

    if-nez v3, :cond_8

    .line 21
    iget-object v3, p0, Lnet/sf/saxon/expr/UnionConstructorFunction;->targetType:Lnet/sf/saxon/type/UnionType;

    check-cast v2, Lnet/sf/saxon/value/AtomicValue;

    invoke-interface {v3, v2, p2}, Lnet/sf/saxon/type/UnionType;->checkAgainstFacets(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/type/ValidationFailure;

    move-result-object v3

    if-nez v3, :cond_7

    return-object v2

    .line 22
    :cond_8
    check-cast v2, Lnet/sf/saxon/value/AtomicValue;

    return-object v2

    .line 23
    :cond_9
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot convert the supplied value to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/expr/UnionConstructorFunction;->targetType:Lnet/sf/saxon/type/UnionType;

    invoke-interface {p0}, Lnet/sf/saxon/type/UnionType;->getDescription()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public getArity()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnionConstructorFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFunctionItemType()Lnet/sf/saxon/type/FunctionItemType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/UnionConstructorFunction;->targetType:Lnet/sf/saxon/type/UnionType;

    invoke-interface {v0}, Lnet/sf/saxon/type/UnionType;->getResultTypeOfCast()Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/UnionConstructorFunction;->allowEmpty:Z

    if-eqz p0, :cond_0

    sget-object p0, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    goto :goto_0

    :cond_0
    sget-object p0, Lnet/sf/saxon/value/SequenceType;->SINGLE_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    :goto_0
    new-instance v1, Lnet/sf/saxon/type/SpecificFunctionType;

    filled-new-array {p0}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    return-object v1
.end method

.method public getFunctionName()Lnet/sf/saxon/om/StructuredQName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/UnionConstructorFunction;->targetType:Lnet/sf/saxon/type/UnionType;

    invoke-interface {p0}, Lnet/sf/saxon/type/UnionType;->getTypeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    return-object p0
.end method

.method public getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/UnionConstructorFunction;->resolver:Lnet/sf/saxon/om/NamespaceResolver;

    return-object p0
.end method

.method public getOperandRole()Lnet/sf/saxon/expr/OperandRole;
    .locals 0

    sget-object p0, Lnet/sf/saxon/expr/OperandRole;->SINGLE_ATOMIC:Lnet/sf/saxon/expr/OperandRole;

    return-object p0
.end method

.method public getTargetType()Lnet/sf/saxon/type/UnionType;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/UnionConstructorFunction;->targetType:Lnet/sf/saxon/type/UnionType;

    return-object p0
.end method

.method public isAllowEmpty()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/expr/UnionConstructorFunction;->allowEmpty:Z

    return p0
.end method
