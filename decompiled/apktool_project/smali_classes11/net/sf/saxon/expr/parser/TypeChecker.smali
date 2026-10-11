.class public Lnet/sf/saxon/expr/parser/TypeChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static b(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/FunctionItemType;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1, p0, p3}, Lnet/sf/saxon/type/FunctionItemType;->makeFunctionSequenceCoercer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static c(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/Converter;Lnet/sf/saxon/type/BuiltInAtomicType;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/type/Converter;->setConversionRules(Lnet/sf/saxon/lib/ConversionRules;)V

    instance-of v0, p0, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/type/Converter;->convert(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/type/ConversionResult;

    move-result-object v0

    instance-of v1, v0, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    invoke-static {v0, p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object p1

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1

    :cond_0
    new-instance v0, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    invoke-direct {v0, p0, p2}, Lnet/sf/saxon/expr/AtomicSequenceConverter;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)V

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->setConverter(Lnet/sf/saxon/type/Converter;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object v0
.end method

.method public static d(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    new-instance v0, Lnet/sf/saxon/type/Converter$PromoterToDouble;

    invoke-direct {v0}, Lnet/sf/saxon/type/Converter$PromoterToDouble;-><init>()V

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {p0, v0, v1}, Lnet/sf/saxon/expr/parser/TypeChecker;->c(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/Converter;Lnet/sf/saxon/type/BuiltInAtomicType;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static e(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    new-instance v0, Lnet/sf/saxon/type/Converter$PromoterToFloat;

    invoke-direct {v0}, Lnet/sf/saxon/type/Converter$PromoterToFloat;-><init>()V

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->FLOAT:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {p0, v0, v1}, Lnet/sf/saxon/expr/parser/TypeChecker;->c(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/Converter;Lnet/sf/saxon/type/BuiltInAtomicType;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static ebvError(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/trans/XPathException;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v0

    invoke-static {v0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/type/Type;->NODE_TYPE:Lnet/sf/saxon/type/ItemType;

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-ne v0, v2, :cond_1

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    if-ne v0, v2, :cond_1

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    if-ne v0, v2, :cond_1

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    if-ne v0, v2, :cond_1

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v0

    if-ne v0, v2, :cond_1

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object p1

    if-ne p1, v2, :cond_1

    instance-of p0, p0, Lnet/sf/saxon/type/JavaExternalObjectType;

    if-nez p0, :cond_1

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Effective boolean value is defined only for sequences containing booleans, strings, numbers, URIs, or nodes"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "FORG0006"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    return-object p0

    :cond_1
    return-object v1
.end method

.method public static f(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 2

    new-instance v0, Lnet/sf/saxon/type/Converter$ToStringConverter;

    invoke-direct {v0}, Lnet/sf/saxon/type/Converter$ToStringConverter;-><init>()V

    sget-object v1, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-static {p0, v0, v1}, Lnet/sf/saxon/expr/parser/TypeChecker;->c(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/Converter;Lnet/sf/saxon/type/BuiltInAtomicType;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    return-object p0
.end method

.method public static strictTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/expr/Expression;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p3}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v2

    const v3, 0xe000

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v2, v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v5

    :goto_0
    const/4 v6, -0x1

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v3

    invoke-static {v2, v3}, Lnet/sf/saxon/value/Cardinality;->subsumes(II)Z

    move-result v7

    goto :goto_1

    :cond_1
    move v7, v3

    move v3, v6

    :goto_1
    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    instance-of p1, p1, Lnet/sf/saxon/type/AnyItemType;

    if-nez p1, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v8

    sget-object v9, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq v8, v9, :cond_3

    sget-object v9, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    if-ne v8, v9, :cond_2

    goto :goto_2

    :cond_2
    move v4, v5

    :cond_3
    :goto_2
    move v10, v4

    move-object v4, p1

    move p1, v10

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    :goto_3
    if-eqz p1, :cond_5

    if-eqz v7, :cond_5

    return-object p0

    :cond_5
    const/16 p1, 0x2000

    if-ne v3, v6, :cond_7

    instance-of v3, v4, Lnet/sf/saxon/type/ErrorType;

    if-eqz v3, :cond_6

    move v3, p1

    goto :goto_4

    :cond_6
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v3

    :goto_4
    if-nez v7, :cond_7

    invoke-static {v2, v3}, Lnet/sf/saxon/value/Cardinality;->subsumes(II)Z

    move-result v7

    :cond_7
    if-eqz v7, :cond_8

    if-ne v3, p1, :cond_8

    return-object p0

    :cond_8
    if-nez v4, :cond_9

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v4

    :cond_9
    if-ne v3, p1, :cond_b

    and-int/lit16 v5, v2, 0x2000

    if-eqz v5, :cond_a

    goto :goto_5

    :cond_a
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "An empty sequence is not allowed as the "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-direct {p1, p3, v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->isTypeError()Z

    move-result p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p1

    :cond_b
    :goto_5
    invoke-virtual {v0, v4, v1}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v5

    sget-object v6, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    const-string v8, " is "

    if-ne v5, v6, :cond_d

    invoke-static {v3}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-static {v2}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v6

    if-eqz v6, :cond_c

    if-eq v3, p1, :cond_d

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required item type of "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; supplied value ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ") has item type "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ". The expression can succeed only if the supplied value is an empty sequence."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    invoke-interface {p3, p1, v0}, Lnet/sf/saxon/expr/StaticContext;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    goto :goto_6

    :cond_c
    invoke-virtual {p2, v1, p0, v0}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->composeErrorMessage(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/lang/String;

    move-result-object p1

    new-instance p3, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-direct {p3, p1, v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->isTypeError()Z

    move-result p0

    invoke-virtual {p3, p0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p3

    :cond_d
    :goto_6
    sget-object p1, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq v5, p1, :cond_e

    sget-object p1, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-eq v5, p1, :cond_e

    new-instance p1, Lnet/sf/saxon/expr/ItemChecker;

    invoke-direct {p1, p0, v1, p2}, Lnet/sf/saxon/expr/ItemChecker;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    invoke-virtual {p1, p0}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    goto :goto_7

    :cond_e
    move-object p1, p0

    :goto_7
    if-nez v7, :cond_10

    instance-of p3, p1, Lnet/sf/saxon/expr/Literal;

    if-nez p3, :cond_f

    invoke-static {p1, v2, p2}, Lnet/sf/saxon/expr/CardinalityChecker;->makeCardinalityChecker(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Expression;->adoptChildExpression(Lnet/sf/saxon/expr/Expression;)V

    move-object p1, p0

    goto :goto_8

    :cond_f
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required cardinality of "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Lnet/sf/saxon/value/Cardinality;->describe(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "; supplied value has cardinality "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lnet/sf/saxon/value/Cardinality;->describe(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    invoke-direct {p1, p3, v0, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p2}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->isTypeError()Z

    move-result p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw p1

    :cond_10
    :goto_8
    return-object p1
.end method

.method public static testConformance(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/trans/XPathException;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v1

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v3

    const-string v4, "XPTY0004"

    const/4 v5, 0x1

    if-eqz v3, :cond_1

    add-int/lit8 v2, v2, 0x1

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v6

    invoke-interface {v0, v3, v6}, Lnet/sf/saxon/type/ItemType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v3

    if-nez v3, :cond_0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Required type is "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; supplied value has type "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/type/UType;->getUType(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/type/UType;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p1, v4}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    return-object p1

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result p0

    if-nez v2, :cond_2

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result p1

    if-nez p1, :cond_2

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Required type does not allow empty sequence, but supplied value is empty"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p0, v4}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    return-object p0

    :cond_2
    if-le v2, v5, :cond_3

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result p1

    if-nez p1, :cond_3

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Required type requires a singleton sequence; supplied value contains "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " items"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p0, v4}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    return-object p0

    :cond_3
    if-lez v2, :cond_4

    const/16 p1, 0x2000

    if-ne p0, p1, :cond_4

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Required type requires an empty sequence, but supplied value is non-empty"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {p0, v4}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    return-object p0

    :cond_4
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p1, p2, p3}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->makeDownCaster(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/expr/AtomicSequenceConverter;

    move-result-object p0

    return-object p0
.end method

.method public makeArithmeticExpression(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    new-instance p0, Lnet/sf/saxon/expr/ArithmeticExpression;

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/expr/ArithmeticExpression;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method

.method public makeGeneralComparison(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    new-instance p0, Lnet/sf/saxon/expr/GeneralComparison20;

    invoke-direct {p0, p1, p2, p3}, Lnet/sf/saxon/expr/GeneralComparison20;-><init>(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method

.method public processValueOf(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/expr/Expression;
    .locals 0

    return-object p1
.end method

.method public staticTypeCheck(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/expr/Expression;->implementsStaticTypeCheck()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v1, v0, v5, v2, v3}, Lnet/sf/saxon/expr/Expression;->staticTypeCheck(Lnet/sf/saxon/value/SequenceType;ZLnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/expr/parser/ExpressionVisitor;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-virtual/range {p4 .. p4}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v4

    invoke-interface {v4}, Lnet/sf/saxon/expr/StaticContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v7

    invoke-virtual {v6}, Lnet/sf/saxon/Configuration;->getDefaultContextItemStaticInfo()Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;

    move-result-object v8

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/value/SequenceType;->getPrimaryType()Lnet/sf/saxon/type/ItemType;

    move-result-object v9

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/value/SequenceType;->getCardinality()I

    move-result v10

    invoke-static {v10}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    const v11, 0xe000

    if-ne v10, v11, :cond_1

    const/4 v11, 0x1

    goto :goto_0

    :cond_1
    move v11, v5

    :goto_0
    if-nez v11, :cond_2

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v11

    invoke-static {v10, v11}, Lnet/sf/saxon/value/Cardinality;->subsumes(II)Z

    move-result v14

    goto :goto_1

    :cond_2
    move v14, v11

    const/4 v11, -0x1

    :goto_1
    instance-of v15, v9, Lnet/sf/saxon/type/AnyItemType;

    const/16 v5, 0x2000

    if-ne v10, v5, :cond_3

    const/4 v15, 0x1

    :cond_3
    const/16 v17, 0x0

    if-nez v15, :cond_7

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v15

    if-eqz v9, :cond_6

    if-eqz v15, :cond_6

    invoke-virtual {v7, v9, v15}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v13

    sget-object v12, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq v13, v12, :cond_5

    sget-object v12, Lnet/sf/saxon/type/Affinity;->SUBSUMES:Lnet/sf/saxon/type/Affinity;

    if-ne v13, v12, :cond_4

    goto :goto_2

    :cond_4
    const/16 v16, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/16 v16, 0x1

    :goto_3
    move-object v12, v15

    move/from16 v15, v16

    goto :goto_4

    :cond_6
    throw v17

    :cond_7
    move-object/from16 v12, v17

    :goto_4
    if-nez v15, :cond_24

    invoke-interface {v9}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v13

    if-eqz v13, :cond_1f

    invoke-interface {v12}, Lnet/sf/saxon/type/ItemType;->isPlainType()Z

    move-result v13

    if-nez v13, :cond_e

    if-eq v11, v5, :cond_e

    invoke-interface {v12, v7}, Lnet/sf/saxon/type/ItemType;->isAtomizable(Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v11

    if-nez v11, :cond_c

    instance-of v0, v12, Lnet/sf/saxon/ma/map/TupleType;

    if-nez v0, :cond_b

    instance-of v0, v12, Lnet/sf/saxon/ma/map/MapType;

    if-nez v0, :cond_a

    instance-of v0, v12, Lnet/sf/saxon/type/FunctionItemType;

    if-nez v0, :cond_9

    instance-of v0, v12, Lnet/sf/saxon/pattern/NodeTest;

    if-eqz v0, :cond_8

    const-string v0, "an element type with element-only content"

    goto :goto_5

    :cond_8
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    :cond_9
    const-string v0, "a function type"

    goto :goto_5

    :cond_a
    const-string v0, "a map type"

    goto :goto_5

    :cond_b
    const-string v0, "a tuple type"

    :goto_5
    new-instance v3, Lnet/sf/saxon/trans/XPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "An atomic value is required for the "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", but the supplied type is "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", which cannot be atomized"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "FOTY0013"

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v4

    invoke-direct {v3, v0, v2, v4}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {v3, v1}, Lnet/sf/saxon/trans/XPathException;->setFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    throw v3

    :cond_c
    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/expr/Expression;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v11

    if-nez v11, :cond_d

    invoke-interface {v4}, Lnet/sf/saxon/expr/StaticContext;->makeRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v4

    invoke-virtual {v1, v4}, Lnet/sf/saxon/expr/Expression;->setRetainedStaticContextLocally(Lnet/sf/saxon/expr/parser/RetainedStaticContext;)V

    :cond_d
    invoke-static {v1, v2}, Lnet/sf/saxon/expr/Atomizer;->makeAtomizer(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    invoke-static {v1, v4}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v11

    invoke-static {v4, v11}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual {v11}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v12

    invoke-virtual {v11}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v4

    invoke-static {v10, v4}, Lnet/sf/saxon/value/Cardinality;->subsumes(II)Z

    move-result v14

    goto :goto_6

    :cond_e
    move v4, v11

    move-object v11, v1

    :goto_6
    sget-object v13, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_11

    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-nez v16, :cond_11

    sget-object v5, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    move-object v5, v9

    check-cast v5, Lnet/sf/saxon/type/PlainType;

    invoke-interface {v5}, Lnet/sf/saxon/type/HyperType;->isNamespaceSensitive()Z

    move-result v12

    if-nez v12, :cond_10

    invoke-static {v6, v11, v5}, Lnet/sf/saxon/expr/UntypedSequenceConverter;->makeUntypedSequenceConverter(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)Lnet/sf/saxon/expr/UntypedSequenceConverter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->setRoleDiagnostic(Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    invoke-static {v11, v5}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    :try_start_0
    instance-of v12, v11, Lnet/sf/saxon/expr/Literal;

    if-eqz v12, :cond_f

    invoke-virtual/range {p4 .. p4}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->makeDynamicContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object v12

    invoke-virtual {v5, v12}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v12

    invoke-static {v12}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v12

    invoke-static {v12, v11}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object v11

    invoke-static {v5, v11}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :cond_f
    move-object v11, v5

    :goto_7
    move-object v12, v9

    const/4 v15, 0x1

    goto :goto_8

    :catch_0
    move-exception v0

    invoke-virtual {v11}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v3

    invoke-virtual {v0, v3}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    invoke-virtual/range {p3 .. p3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw v0

    :cond_10
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An untyped atomic value cannot be converted to a QName or NOTATION as required for the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XPTY0117"

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-direct {v0, v2, v3, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw v0

    :cond_11
    :goto_8
    sget-object v5, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v12, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_14

    invoke-virtual {v9, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_14

    invoke-virtual {v9, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_14

    const/high16 v5, 0x4000000

    invoke-virtual {v11, v5}, Lnet/sf/saxon/expr/Expression;->hasSpecialProperty(I)Z

    move-result v5

    if-nez v5, :cond_14

    move-object v5, v9

    check-cast v5, Lnet/sf/saxon/type/PlainType;

    invoke-interface {v5}, Lnet/sf/saxon/type/HyperType;->isNamespaceSensitive()Z

    move-result v12

    if-eqz v12, :cond_12

    invoke-static {v6, v11, v5}, Lnet/sf/saxon/expr/UntypedSequenceConverter;->makeUntypedSequenceRejector(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)Lnet/sf/saxon/expr/UntypedSequenceConverter;

    move-result-object v5

    goto :goto_9

    :cond_12
    invoke-static {v6, v11, v5}, Lnet/sf/saxon/expr/UntypedSequenceConverter;->makeUntypedSequenceConverter(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/PlainType;)Lnet/sf/saxon/expr/UntypedSequenceConverter;

    move-result-object v5

    invoke-virtual {v5, v2}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->setRoleDiagnostic(Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    :goto_9
    invoke-static {v11, v5}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    :try_start_1
    instance-of v12, v11, Lnet/sf/saxon/expr/Literal;

    if-eqz v12, :cond_13

    invoke-virtual/range {p4 .. p4}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->makeDynamicContext()Lnet/sf/saxon/expr/XPathContext;

    move-result-object v12

    invoke-virtual {v5, v12}, Lnet/sf/saxon/expr/Expression;->iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v5

    invoke-static {v5}, Lnet/sf/saxon/om/SequenceTool;->toGroundedValue(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v5

    invoke-static {v5, v11}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;

    move-result-object v11

    invoke-static {v1, v11}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    goto :goto_a

    :cond_13
    move-object v11, v5

    :goto_a
    invoke-virtual {v11}, Lnet/sf/saxon/expr/Expression;->getItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v5
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v12, v5

    goto :goto_b

    :catch_1
    move-exception v0

    invoke-virtual {v11}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw v0

    :cond_14
    :goto_b
    instance-of v5, v9, Lnet/sf/saxon/type/AtomicType;

    if-eqz v5, :cond_1e

    move-object v5, v9

    check-cast v5, Lnet/sf/saxon/type/AtomicType;

    invoke-interface {v5}, Lnet/sf/saxon/type/SchemaType;->getFingerprint()I

    move-result v13

    move/from16 v17, v4

    const/16 v4, 0x205

    if-ne v13, v4, :cond_16

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v4

    invoke-virtual {v7, v12, v4}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v4

    move/from16 v18, v14

    sget-object v14, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-eq v4, v14, :cond_17

    invoke-static {v11}, Lnet/sf/saxon/expr/parser/TypeChecker;->d(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    instance-of v12, v4, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    if-eqz v12, :cond_15

    move-object v12, v4

    check-cast v12, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    invoke-virtual {v12, v2}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->setRoleDiagnostic(Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    :cond_15
    invoke-static {v11, v4}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    :try_start_2
    invoke-virtual {v4}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v11

    invoke-virtual {v11, v3, v8}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v11
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_2

    sget-object v12, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    :goto_c
    const/4 v4, -0x1

    goto :goto_d

    :catch_2
    move-exception v0

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw v0

    :cond_16
    move/from16 v18, v14

    :cond_17
    const/16 v4, 0x204

    if-ne v13, v4, :cond_19

    invoke-static {}, Lnet/sf/saxon/type/NumericType;->getInstance()Lnet/sf/saxon/type/NumericType;

    move-result-object v4

    invoke-virtual {v7, v12, v4}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v4

    sget-object v14, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-eq v4, v14, :cond_19

    sget-object v4, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v7, v12, v4}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result v4

    if-nez v4, :cond_19

    invoke-static {v11}, Lnet/sf/saxon/expr/parser/TypeChecker;->e(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    instance-of v12, v4, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    if-eqz v12, :cond_18

    move-object v12, v4

    check-cast v12, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    invoke-virtual {v12, v2}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->setRoleDiagnostic(Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    :cond_18
    invoke-static {v11, v4}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    :try_start_3
    invoke-virtual {v4}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v11

    invoke-virtual {v11, v3, v8}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v11
    :try_end_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_3 .. :try_end_3} :catch_3

    sget-object v12, Lnet/sf/saxon/type/BuiltInAtomicType;->FLOAT:Lnet/sf/saxon/type/BuiltInAtomicType;

    goto :goto_c

    :catch_3
    move-exception v0

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw v0

    :cond_19
    move/from16 v4, v17

    :goto_d
    const/16 v14, 0x201

    if-ne v13, v14, :cond_1b

    sget-object v13, Lnet/sf/saxon/type/BuiltInAtomicType;->ANY_URI:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v7, v12, v13}, Lnet/sf/saxon/type/TypeHierarchy;->isSubType(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Z

    move-result v13

    if-eqz v13, :cond_1b

    invoke-static {v11}, Lnet/sf/saxon/expr/parser/TypeChecker;->f(Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v4

    instance-of v12, v4, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    if-eqz v12, :cond_1a

    move-object v12, v4

    check-cast v12, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    invoke-virtual {v12, v2}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->setRoleDiagnostic(Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    :cond_1a
    invoke-static {v11, v4}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    :try_start_4
    invoke-virtual {v4}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v11

    invoke-virtual {v11, v3, v8}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v11
    :try_end_4
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_4 .. :try_end_4} :catch_4

    sget-object v12, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/4 v4, -0x1

    const/4 v15, 0x1

    goto :goto_e

    :catch_4
    move-exception v0

    invoke-virtual {v4}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw v0

    :cond_1b
    :goto_e
    if-nez v15, :cond_1d

    invoke-interface {v9}, Lnet/sf/saxon/type/ItemType;->getBasicAlphaCode()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v14, 0x2

    if-le v13, v14, :cond_1d

    invoke-virtual/range {p4 .. p4}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->getStaticContext()Lnet/sf/saxon/expr/StaticContext;

    move-result-object v13

    invoke-interface {v13}, Lnet/sf/saxon/expr/StaticContext;->getXPathVersion()I

    move-result v13

    const/16 v14, 0x28

    if-lt v13, v14, :cond_1d

    invoke-interface {v9}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v13

    invoke-interface {v12}, Lnet/sf/saxon/type/ItemType;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object v14

    invoke-virtual {v13, v14}, Lnet/sf/saxon/type/UType;->overlaps(Lnet/sf/saxon/type/UType;)Z

    move-result v13

    if-eqz v13, :cond_1d

    move-object/from16 v13, p0

    invoke-virtual {v13, v11, v5, v6}, Lnet/sf/saxon/expr/parser/TypeChecker;->a(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    instance-of v6, v5, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    if-eqz v6, :cond_1c

    move-object v6, v5

    check-cast v6, Lnet/sf/saxon/expr/AtomicSequenceConverter;

    invoke-virtual {v6, v2}, Lnet/sf/saxon/expr/AtomicSequenceConverter;->setRoleDiagnostic(Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    :cond_1c
    invoke-static {v11, v5}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    :try_start_5
    invoke-virtual {v5}, Lnet/sf/saxon/expr/Expression;->simplify()Lnet/sf/saxon/expr/Expression;

    move-result-object v6

    invoke-virtual {v6, v3, v8}, Lnet/sf/saxon/expr/Expression;->typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;

    move-result-object v5
    :try_end_5
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_5 .. :try_end_5} :catch_5

    move-object v11, v5

    move-object v5, v9

    const/4 v12, 0x1

    goto :goto_f

    :catch_5
    move-exception v0

    invoke-virtual {v5}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lnet/sf/saxon/trans/XPathException;->setIsStaticError(Z)V

    throw v0

    :cond_1d
    move-object v5, v12

    move v12, v15

    :goto_f
    move/from16 v14, v18

    goto/16 :goto_14

    :cond_1e
    move/from16 v17, v4

    move/from16 v18, v14

    move-object v5, v12

    move v12, v15

    goto/16 :goto_14

    :cond_1f
    const/4 v4, 0x1

    instance-of v5, v9, Lnet/sf/saxon/type/FunctionItemType;

    if-eqz v5, :cond_22

    move-object v5, v9

    check-cast v5, Lnet/sf/saxon/type/FunctionItemType;

    invoke-interface {v5}, Lnet/sf/saxon/type/FunctionItemType;->isMapType()Z

    move-result v6

    if-nez v6, :cond_22

    invoke-interface {v5}, Lnet/sf/saxon/type/FunctionItemType;->isArrayType()Z

    move-result v6

    if-nez v6, :cond_22

    invoke-virtual {v7}, Lnet/sf/saxon/type/TypeHierarchy;->getGenericFunctionItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v6

    invoke-virtual {v7, v12, v6}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v6

    sget-object v8, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-eq v6, v8, :cond_21

    instance-of v6, v12, Lnet/sf/saxon/type/FunctionItemType;

    if-nez v6, :cond_20

    new-instance v6, Lnet/sf/saxon/expr/ItemChecker;

    invoke-virtual {v7}, Lnet/sf/saxon/type/TypeHierarchy;->getGenericFunctionItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v8

    invoke-direct {v6, v1, v8, v2}, Lnet/sf/saxon/expr/ItemChecker;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    invoke-virtual {v7}, Lnet/sf/saxon/type/TypeHierarchy;->getGenericFunctionItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v12

    goto :goto_10

    :cond_20
    move-object v6, v1

    :goto_10
    invoke-static {v6, v5, v3, v2}, Lnet/sf/saxon/expr/parser/TypeChecker;->b(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/FunctionItemType;Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object v5

    move-object/from16 v19, v12

    move v12, v4

    move-object/from16 v4, v19

    goto :goto_11

    :cond_21
    move-object v5, v1

    move-object v4, v12

    move v12, v15

    :goto_11
    move-object/from16 v19, v5

    move-object v5, v4

    move v4, v11

    move-object/from16 v11, v19

    goto :goto_14

    :cond_22
    instance-of v5, v9, Lnet/sf/saxon/type/JavaExternalObjectType;

    if-eqz v5, :cond_24

    const/16 v5, 0x4000

    if-ne v10, v5, :cond_24

    move-object v5, v9

    check-cast v5, Lnet/sf/saxon/type/JavaExternalObjectType;

    invoke-virtual {v5}, Lnet/sf/saxon/type/JavaExternalObjectType;->getJavaClass()Ljava/lang/Class;

    move-result-object v6

    const-class v8, Lnet/sf/saxon/om/Sequence;

    invoke-virtual {v8, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_23

    move-object v5, v12

    move v12, v4

    :goto_12
    move v4, v11

    goto :goto_13

    :cond_23
    instance-of v6, v1, Lnet/sf/saxon/expr/FunctionCall;

    if-eqz v6, :cond_24

    move-object v6, v1

    check-cast v6, Lnet/sf/saxon/expr/FunctionCall;

    invoke-virtual {v6, v5}, Lnet/sf/saxon/expr/FunctionCall;->adjustRequiredType(Lnet/sf/saxon/type/JavaExternalObjectType;)Z

    move-result v5

    if-eqz v5, :cond_24

    move v14, v4

    move-object v5, v12

    move v12, v14

    goto :goto_12

    :cond_24
    move v4, v11

    move-object v5, v12

    move v12, v15

    :goto_13
    move-object v11, v1

    :goto_14
    if-eqz v12, :cond_25

    if-eqz v14, :cond_25

    return-object v11

    :cond_25
    const/4 v6, -0x1

    if-ne v4, v6, :cond_26

    invoke-virtual {v11}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result v4

    if-nez v14, :cond_26

    invoke-static {v10, v4}, Lnet/sf/saxon/value/Cardinality;->subsumes(II)Z

    move-result v14

    :cond_26
    const/16 v6, 0x2000

    if-eqz v14, :cond_27

    if-ne v4, v6, :cond_27

    return-object v11

    :cond_27
    if-ne v4, v6, :cond_29

    and-int/lit16 v6, v10, 0x2000

    if-eqz v6, :cond_28

    goto :goto_15

    :cond_28
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "An empty sequence is not allowed as the "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual/range {p3 .. p3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->isTypeError()Z

    move-result v2

    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    throw v0

    :cond_29
    :goto_15
    if-eqz v12, :cond_2a

    sget-object v5, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    goto :goto_16

    :cond_2a
    invoke-virtual {v7, v5, v9}, Lnet/sf/saxon/type/TypeHierarchy;->relationship(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/type/ItemType;)Lnet/sf/saxon/type/Affinity;

    move-result-object v5

    :goto_16
    const/16 v6, 0x2000

    if-ne v10, v6, :cond_2b

    sget-object v5, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    :cond_2b
    sget-object v8, Lnet/sf/saxon/type/Affinity;->DISJOINT:Lnet/sf/saxon/type/Affinity;

    if-ne v5, v8, :cond_2d

    invoke-static {v4}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v8

    if-eqz v8, :cond_2c

    invoke-static {v10}, Lnet/sf/saxon/value/Cardinality;->allowsZero(I)Z

    move-result v8

    if-eqz v8, :cond_2c

    if-eq v4, v6, :cond_2d

    invoke-virtual {v2, v9, v1, v7}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->composeErrorMessage(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/lang/String;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". The expression can succeed only if the supplied value is an empty sequence."

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v8

    invoke-virtual {v3, v6, v8}, Lnet/sf/saxon/expr/parser/ExpressionVisitor;->issueWarning(Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    goto :goto_17

    :cond_2c
    invoke-virtual {v2, v9, v1, v7}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->composeErrorMessage(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual/range {p3 .. p3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v5

    invoke-direct {v3, v0, v4, v5}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual/range {p3 .. p3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->isTypeError()Z

    move-result v0

    invoke-virtual {v3, v0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    invoke-virtual {v3, v1}, Lnet/sf/saxon/trans/XPathException;->setFailingExpression(Lnet/sf/saxon/expr/Expression;)V

    throw v3

    :cond_2d
    :goto_17
    sget-object v3, Lnet/sf/saxon/type/Affinity;->SAME_TYPE:Lnet/sf/saxon/type/Affinity;

    if-eq v5, v3, :cond_30

    sget-object v3, Lnet/sf/saxon/type/Affinity;->SUBSUMED_BY:Lnet/sf/saxon/type/Affinity;

    if-eq v5, v3, :cond_30

    instance-of v3, v11, Lnet/sf/saxon/expr/Literal;

    if-eqz v3, :cond_2f

    move-object v3, v11

    check-cast v3, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {v3}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v3

    invoke-virtual {v0, v3, v7}, Lnet/sf/saxon/value/SequenceType;->matches(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v0

    if-eqz v0, :cond_2e

    return-object v11

    :cond_2e
    invoke-virtual {v2, v9, v1, v7}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->composeErrorMessage(Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/TypeHierarchy;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual/range {p3 .. p3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-direct {v3, v0, v4, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual/range {p3 .. p3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->isTypeError()Z

    move-result v0

    invoke-virtual {v3, v0}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw v3

    :cond_2f
    new-instance v0, Lnet/sf/saxon/expr/ItemChecker;

    invoke-direct {v0, v11, v9, v2}, Lnet/sf/saxon/expr/ItemChecker;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/ItemType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;)V

    invoke-static {v11, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    move-object v11, v0

    :cond_30
    if-nez v14, :cond_32

    instance-of v0, v11, Lnet/sf/saxon/expr/Literal;

    if-nez v0, :cond_31

    invoke-static {v11, v10, v2}, Lnet/sf/saxon/expr/CardinalityChecker;->makeCardinalityChecker(Lnet/sf/saxon/expr/Expression;ILnet/sf/saxon/expr/parser/RoleDiagnostic;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    invoke-static {v11, v0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    move-object v11, v0

    goto :goto_18

    :cond_31
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Required cardinality of "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p3 .. p3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v10}, Lnet/sf/saxon/value/Cardinality;->describe(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "; supplied value has cardinality "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Lnet/sf/saxon/value/Cardinality;->describe(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p3 .. p3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->getErrorCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    invoke-direct {v0, v3, v4, v1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual/range {p3 .. p3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;->isTypeError()Z

    move-result v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setIsTypeError(Z)V

    throw v0

    :cond_32
    :goto_18
    return-object v11
.end method
