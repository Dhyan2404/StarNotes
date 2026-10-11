.class public Lnet/sf/saxon/expr/CastExpression;
.super Lnet/sf/saxon/expr/CastingExpression;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/AtomicType;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/expr/CastingExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/AtomicType;Z)V

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/expr/CastExpression;->d(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->itemOrEmpty(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public computeCardinality()I
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->allowsEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/16 p0, 0x6000

    goto :goto_0

    :cond_0
    const/16 p0, 0x4000

    :goto_0
    return p0
.end method

.method public computeHashCode()I
    .locals 1

    invoke-super {p0}, Lnet/sf/saxon/expr/UnaryExpression;->computeHashCode()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public computeSpecialProperties()I
    .locals 2

    invoke-super {p0}, Lnet/sf/saxon/expr/CastingExpression;->computeSpecialProperties()I

    move-result v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne p0, v1, :cond_0

    const p0, -0x4000001

    and-int/2addr v0, p0

    :cond_0
    return v0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 3

    new-instance v0, Lnet/sf/saxon/expr/CastExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/Expression;->copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->allowsEmpty()Z

    move-result v2

    invoke-direct {v0, p1, v1, v2}, Lnet/sf/saxon/expr/CastExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/AtomicType;Z)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    iget-object p1, p0, Lnet/sf/saxon/expr/CastingExpression;->converter:Lnet/sf/saxon/type/Converter;

    iput-object p1, v0, Lnet/sf/saxon/expr/CastingExpression;->converter:Lnet/sf/saxon/type/Converter;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContext(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->isOperandIsStringLiteral()Z

    move-result p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/CastingExpression;->setOperandIsStringLiteral(Z)V

    return-object v0
.end method

.method public final d(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "XPTY0004"

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->allowsEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Cast does not allow an empty sequence"

    invoke-direct {p1, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p1

    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/expr/CastingExpression;->converter:Lnet/sf/saxon/type/Converter;

    if-nez v1, :cond_3

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object v2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/lib/ConversionRules;->getConverter(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/Converter;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/type/HyperType;->isNamespaceSensitive()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p2

    invoke-virtual {v1, p2}, Lnet/sf/saxon/type/Converter;->setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/type/Converter;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Casting from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getPrimitiveType()Lnet/sf/saxon/type/BuiltInAtomicType;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not permitted"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {v1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v1, v0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw v1

    :cond_3
    :goto_0
    invoke-virtual {v1, p1}, Lnet/sf/saxon/type/Converter;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object p1

    instance-of p2, p1, Lnet/sf/saxon/type/ValidationFailure;

    if-nez p2, :cond_4

    check-cast p1, Lnet/sf/saxon/value/AtomicValue;

    return-object p1

    :cond_4
    check-cast p1, Lnet/sf/saxon/type/ValidationFailure;

    invoke-virtual {p1}, Lnet/sf/saxon/type/ValidationFailure;->makeException()Lnet/sf/saxon/type/ValidationException;

    move-result-object p1

    const-string p2, "FORG0001"

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    throw p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/expr/CastExpression;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast p1, Lnet/sf/saxon/expr/CastExpression;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/expr/Expression;->isEqual(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->allowsEmpty()Z

    move-result p0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/CastingExpression;->allowsEmpty()Z

    move-result p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public bridge synthetic evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/CastExpression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0

    return-object p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/Expression;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    .line 3
    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/expr/CastExpression;->d(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/value/AtomicValue;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    throw p0
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "cast"

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/expr/CastingExpression;->export(Lnet/sf/saxon/trace/ExpressionPresenter;Ljava/lang/String;)V

    return-void
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "cast"

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;
    .locals 2

    iget-object p0, p0, Lnet/sf/saxon/expr/CastingExpression;->converter:Lnet/sf/saxon/type/Converter;

    sget-object v0, Lnet/sf/saxon/type/Converter$BooleanToInteger;->INSTANCE:Lnet/sf/saxon/type/Converter$BooleanToInteger;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    new-array p0, p0, [Lnet/sf/saxon/value/IntegerValue;

    const/4 v0, 0x0

    sget-object v1, Lnet/sf/saxon/value/Int64Value;->ZERO:Lnet/sf/saxon/value/Int64Value;

    aput-object v1, p0, v0

    const/4 v0, 0x1

    sget-object v1, Lnet/sf/saxon/value/Int64Value;->PLUS_ONE:Lnet/sf/saxon/value/Int64Value;

    aput-object v1, p0, v0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    return-object p0
.end method

.method public getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/UnaryExpression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    if-eq v1, p0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    const-class v4, Lnet/sf/saxon/functions/String_1;

    const/4 v5, 0x0

    const/16 v6, 0x4000

    if-ne v2, v3, :cond_5

    invoke-virtual {v1, v4}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    move-object p1, v1

    check-cast p1, Lnet/sf/saxon/expr/SystemFunctionCall;

    invoke-virtual {p1, v5}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    instance-of p2, p2, Lnet/sf/saxon/type/AtomicType;

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p2

    if-ne p2, v6, :cond_5

    new-instance p2, Lnet/sf/saxon/expr/CastExpression;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->allowsEmpty()Z

    move-result p0

    invoke-direct {p2, p1, v3, p0}, Lnet/sf/saxon/expr/CastExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/AtomicType;Z)V

    return-object p2

    :cond_1
    instance-of v2, v1, Lnet/sf/saxon/expr/CastExpression;

    if-eqz v2, :cond_3

    move-object p1, v1

    check-cast p1, Lnet/sf/saxon/expr/CastExpression;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p2

    if-ne p2, v3, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p2

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne p2, v2, :cond_5

    invoke-virtual {p1, v3}, Lnet/sf/saxon/expr/CastingExpression;->setTargetType(Lnet/sf/saxon/type/AtomicType;)V

    return-object v1

    :cond_3
    instance-of v2, v1, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    if-ne v2, v3, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v2

    sget-object v7, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    if-ne v2, v7, :cond_5

    check-cast v1, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    new-instance p0, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    invoke-virtual {v1}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-direct {p0, v0, v3}, Lnet/sf/saxon/expr/AtomicSequenceConverter;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)V

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_5
    invoke-virtual {v1, v4}, Lnet/sf/saxon/expr/Expression;->isCallOn(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_6

    move-object p1, v1

    check-cast p1, Lnet/sf/saxon/expr/SystemFunctionCall;

    invoke-virtual {p1, v5}, Lnet/sf/saxon/expr/FunctionCall;->getArg(I)Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    instance-of v2, p2, Lnet/sf/saxon/type/AtomicType;

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v2

    if-ne v2, v6, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_6

    return-object p1

    :cond_6
    instance-of p1, v1, Lnet/sf/saxon/expr/CastExpression;

    if-eqz p1, :cond_8

    move-object p1, v1

    check-cast p1, Lnet/sf/saxon/expr/CastExpression;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p2

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p2, v2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result v2

    if-nez v2, :cond_7

    invoke-virtual {v0, p2, v3}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_8

    :cond_7
    invoke-virtual {p1}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    instance-of v2, p2, Lnet/sf/saxon/type/AtomicType;

    if-eqz v2, :cond_8

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v2

    if-ne v2, v6, :cond_8

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_8

    return-object p1

    :cond_8
    instance-of p1, v1, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    if-eqz p1, :cond_a

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-nez p2, :cond_9

    invoke-virtual {v0, p1, v3}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    move-object p1, v1

    check-cast p1, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p2

    instance-of v2, p2, Lnet/sf/saxon/type/AtomicType;

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v2

    if-ne v2, v6, :cond_a

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v2

    invoke-virtual {v0, p2, v2}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result p2

    if-eqz p2, :cond_a

    return-object p1

    :cond_a
    invoke-virtual {v1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p1

    invoke-static {p1}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result p1

    if-nez p1, :cond_b

    invoke-virtual {p0, v5}, Lnet/sf/saxon/expr/CastingExpression;->setAllowEmpty(Z)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->resetLocalStaticProperties()V

    :cond_b
    instance-of p1, v1, Lnet/sf/saxon/expr/Literal;

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastExpression;->preEvaluate()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_c
    return-object p0
.end method

.method public preEvaluate()Lnet/sf/saxon/expr/Expression;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lnet/sf/saxon/expr/CastingExpression;->converter:Lnet/sf/saxon/type/Converter;

    if-eqz v1, :cond_2

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/type/Converter;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/type/ValidationFailure;

    if-eqz v1, :cond_1

    check-cast v0, Lnet/sf/saxon/type/ValidationFailure;

    invoke-virtual {v0}, Lnet/sf/saxon/type/ValidationFailure;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, "FORG0001"

    :cond_0
    new-instance v2, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {v0}, Lnet/sf/saxon/type/ValidationFailure;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-direct {v2, v0, v1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    throw v2

    :cond_1
    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    invoke-static {v0, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_2
    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->allowsEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "XPTY0004"

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    const-string v2, "Cast can never succeed: the operand must not be an empty sequence"

    invoke-direct {v0, v2, v1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw v0

    :cond_4
    return-object p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/type/SchemaType;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/type/SchemaType;->getEQName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getOperand()Lnet/sf/saxon/expr/Operand;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/Operand;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)V

    sget-object p2, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    invoke-static {p2, v0}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v2

    new-instance v3, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    const/4 v4, 0x2

    const-string v5, "cast as"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {v1, v6}, Lnet/sf/saxon/Configuration;->getTypeChecker(Z)Lnet/sf/saxon/expr/parser/TypeChecker;

    move-result-object v1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/UnaryExpression;->getBaseExpression()Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-virtual {v1, v4, v0, v3, p1}, Lnet/sf/saxon/expr/parser/TypeChecker;->staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/expr/UnaryExpression;->setBaseExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    instance-of v3, v1, Lnet/sf/saxon/type/ErrorType;

    const/4 v4, 0x1

    const-string v5, "XPTY0004"

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->allowsEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-static {}, Lnet/sf/saxon/expr/Literal;->makeEmptySequence()Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Cast does not allow an empty sequence as input"

    invoke-direct {p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1, v4}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p1

    :cond_1
    check-cast v1, Lnet/sf/saxon/type/PlainType;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-ne v2, v3, :cond_2

    return-object v0

    :cond_2
    sget-object v3, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-ne v2, v3, :cond_3

    new-instance p1, Lnet/sf/saxon/type/Converter$UpCastingConverter;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/sf/saxon/type/Converter$UpCastingConverter;-><init>(Lnet/sf/saxon/type/AtomicType;)V

    iput-object p1, p0, Lnet/sf/saxon/expr/CastingExpression;->converter:Lnet/sf/saxon/type/Converter;

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p1

    invoke-interface {v1}, Lnet/sf/saxon/type/ItemType;->isAtomicType()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eq v1, p2, :cond_5

    move-object p2, v1

    check-cast p2, Lnet/sf/saxon/type/AtomicType;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Lnet/sf/saxon/lib/ConversionRules;->getConverter(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/type/AtomicType;)Lnet/sf/saxon/type/Converter;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/CastingExpression;->converter:Lnet/sf/saxon/type/Converter;

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/type/HyperType;->isNamespaceSensitive()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lnet/sf/saxon/expr/CastingExpression;->converter:Lnet/sf/saxon/type/Converter;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/type/Converter;->setNamespaceResolver(Lnet/sf/saxon/om/NamespaceResolver;)Lnet/sf/saxon/type/Converter;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/CastingExpression;->converter:Lnet/sf/saxon/type/Converter;

    goto :goto_0

    :cond_4
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Casting from "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastingExpression;->getTargetType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " can never succeed"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p1, v4}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p1

    :cond_5
    :goto_0
    instance-of p1, v0, Lnet/sf/saxon/expr/Literal;

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lnet/sf/saxon/expr/CastExpression;->preEvaluate()Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    :cond_6
    return-object p0
.end method
