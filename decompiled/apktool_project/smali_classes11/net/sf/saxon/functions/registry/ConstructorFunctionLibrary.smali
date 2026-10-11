.class public Lnet/sf/saxon/functions/registry/ConstructorFunctionLibrary;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/functions/FunctionLibrary;


# instance fields
.field public final a:Lnet/sf/saxon/Configuration;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/functions/registry/ConstructorFunctionLibrary;->a:Lnet/sf/saxon/Configuration;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lnet/sf/saxon/functions/registry/ConstructorFunctionLibrary;->b(Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object p3, p3, v0

    invoke-interface {p3}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p3

    check-cast p3, Lnet/sf/saxon/value/AtomicValue;

    if-nez p3, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Lnet/sf/saxon/type/UnionType;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->getConversionRules()Lnet/sf/saxon/lib/ConversionRules;

    move-result-object p2

    invoke-static {p3, p0, p1, p2}, Lnet/sf/saxon/expr/UnionConstructorFunction;->cast(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/type/UnionType;Lnet/sf/saxon/om/NamespaceResolver;Lnet/sf/saxon/lib/ConversionRules;)Lnet/sf/saxon/om/AtomicSequence;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public bind(Lnet/sf/saxon/trans/SymbolicName$F;[Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/StaticContext;Ljava/util/List;)Lnet/sf/saxon/expr/Expression;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/trans/SymbolicName$F;",
            "[",
            "Lnet/sf/saxon/expr/Expression;",
            "Lnet/sf/saxon/expr/StaticContext;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lnet/sf/saxon/expr/Expression;"
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Missing schema component: "

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_6

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName$F;->getArity()I

    move-result p0

    if-eq p0, v6, :cond_0

    const-string p0, "A constructor function must have exactly one argument"

    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v5

    :cond_0
    invoke-static {v0, v1}, Lnet/sf/saxon/type/Type;->getBuiltInSimpleType(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/type/SimpleType;

    move-result-object p0

    const/16 p1, 0x7d

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lnet/sf/saxon/type/SimpleType;->isAtomicType()Z

    move-result v2

    if-eqz v2, :cond_3

    check-cast p0, Lnet/sf/saxon/type/AtomicType;

    invoke-interface {p0}, Lnet/sf/saxon/type/AtomicType;->isAbstract()Z

    move-result p3

    if-eqz p3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Abstract type used in constructor function: {"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v5

    :cond_1
    new-instance p1, Lnet/sf/saxon/expr/CastExpression;

    aget-object p3, p2, v4

    invoke-direct {p1, p3, p0, v6}, Lnet/sf/saxon/expr/CastExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/AtomicType;Z)V

    aget-object p0, p2, v4

    instance-of p0, p0, Lnet/sf/saxon/expr/StringLiteral;

    if-eqz p0, :cond_2

    invoke-virtual {p1, v6}, Lnet/sf/saxon/expr/CastingExpression;->setOperandIsStringLiteral(Z)V

    :cond_2
    return-object p1

    :cond_3
    invoke-interface {p0}, Lnet/sf/saxon/type/SimpleType;->isUnionType()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p3}, Lnet/sf/saxon/expr/StaticContext;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object p1

    new-instance p3, Lnet/sf/saxon/expr/UnionConstructorFunction;

    check-cast p0, Lnet/sf/saxon/type/UnionType;

    invoke-direct {p3, p0, p1, v6}, Lnet/sf/saxon/expr/UnionConstructorFunction;-><init>(Lnet/sf/saxon/type/UnionType;Lnet/sf/saxon/om/NamespaceResolver;Z)V

    new-instance p0, Lnet/sf/saxon/expr/StaticFunctionCall;

    invoke-direct {p0, p3, p2}, Lnet/sf/saxon/expr/StaticFunctionCall;-><init>(Lnet/sf/saxon/om/Function;[Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_4
    invoke-interface {p3}, Lnet/sf/saxon/expr/StaticContext;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object p1

    :try_start_0
    new-instance p3, Lnet/sf/saxon/expr/ListConstructorFunction;

    check-cast p0, Lnet/sf/saxon/type/ListType;

    invoke-direct {p3, p0, p1, v6}, Lnet/sf/saxon/expr/ListConstructorFunction;-><init>(Lnet/sf/saxon/type/ListType;Lnet/sf/saxon/om/NamespaceResolver;Z)V

    new-instance p0, Lnet/sf/saxon/expr/StaticFunctionCall;

    invoke-direct {p0, p3, p2}, Lnet/sf/saxon/expr/StaticFunctionCall;-><init>(Lnet/sf/saxon/om/Function;[Lnet/sf/saxon/expr/Expression;)V
    :try_end_0
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v5

    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unknown constructor function: {"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v5

    :cond_6
    array-length p1, p2

    if-ne p1, v6, :cond_9

    iget-object p0, p0, Lnet/sf/saxon/functions/registry/ConstructorFunctionLibrary;->a:Lnet/sf/saxon/Configuration;

    new-instance p1, Lnet/sf/saxon/om/StructuredQName;

    const-string v2, ""

    invoke-direct {p1, v2, v0, v1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    instance-of p1, p0, Lnet/sf/saxon/type/SimpleType;

    if-eqz p1, :cond_9

    instance-of p1, p0, Lnet/sf/saxon/type/AtomicType;

    if-eqz p1, :cond_7

    new-instance p1, Lnet/sf/saxon/expr/CastExpression;

    aget-object p2, p2, v4

    check-cast p0, Lnet/sf/saxon/type/AtomicType;

    invoke-direct {p1, p2, p0, v6}, Lnet/sf/saxon/expr/CastExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/type/AtomicType;Z)V

    return-object p1

    :cond_7
    instance-of p1, p0, Lnet/sf/saxon/type/ListType;

    const/16 v0, 0x1e

    if-eqz p1, :cond_8

    invoke-interface {p3}, Lnet/sf/saxon/expr/StaticContext;->getXPathVersion()I

    move-result p1

    if-lt p1, v0, :cond_8

    invoke-interface {p3}, Lnet/sf/saxon/expr/StaticContext;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object p1

    :try_start_1
    new-instance p3, Lnet/sf/saxon/expr/ListConstructorFunction;

    check-cast p0, Lnet/sf/saxon/type/ListType;

    invoke-direct {p3, p0, p1, v6}, Lnet/sf/saxon/expr/ListConstructorFunction;-><init>(Lnet/sf/saxon/type/ListType;Lnet/sf/saxon/om/NamespaceResolver;Z)V

    new-instance p0, Lnet/sf/saxon/expr/StaticFunctionCall;

    invoke-direct {p0, p3, p2}, Lnet/sf/saxon/expr/StaticFunctionCall;-><init>(Lnet/sf/saxon/om/Function;[Lnet/sf/saxon/expr/Expression;)V
    :try_end_1
    .catch Lnet/sf/saxon/type/MissingComponentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p4, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v5

    :cond_8
    move-object p1, p0

    check-cast p1, Lnet/sf/saxon/type/SimpleType;

    invoke-interface {p1}, Lnet/sf/saxon/type/SimpleType;->isUnionType()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-interface {p3}, Lnet/sf/saxon/expr/StaticContext;->getXPathVersion()I

    move-result p1

    if-lt p1, v0, :cond_9

    invoke-interface {p3}, Lnet/sf/saxon/expr/StaticContext;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object p1

    new-instance p3, Lnet/sf/saxon/expr/UnionConstructorFunction;

    check-cast p0, Lnet/sf/saxon/type/UnionType;

    invoke-direct {p3, p0, p1, v6}, Lnet/sf/saxon/expr/UnionConstructorFunction;-><init>(Lnet/sf/saxon/type/UnionType;Lnet/sf/saxon/om/NamespaceResolver;Z)V

    new-instance p0, Lnet/sf/saxon/expr/StaticFunctionCall;

    invoke-direct {p0, p3, p2}, Lnet/sf/saxon/expr/StaticFunctionCall;-><init>(Lnet/sf/saxon/om/Function;[Lnet/sf/saxon/expr/Expression;)V

    return-object p0

    :cond_9
    return-object v5
.end method

.method public copy()Lnet/sf/saxon/functions/FunctionLibrary;
    .locals 0

    return-object p0
.end method

.method public getFunctionItem(Lnet/sf/saxon/trans/SymbolicName$F;Lnet/sf/saxon/expr/StaticContext;)Lnet/sf/saxon/om/Function;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName$F;->getArity()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/functions/registry/ConstructorFunctionLibrary;->a:Lnet/sf/saxon/Configuration;

    new-instance v3, Lnet/sf/saxon/om/StructuredQName;

    const-string v4, ""

    invoke-direct {v3, v4, v0, p1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v3}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->isComplexType()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, p0

    check-cast p1, Lnet/sf/saxon/type/SimpleType;

    invoke-interface {p1}, Lnet/sf/saxon/type/HyperType;->isNamespaceSensitive()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p2}, Lnet/sf/saxon/expr/StaticContext;->getNamespaceResolver()Lnet/sf/saxon/om/NamespaceResolver;

    move-result-object v1

    :cond_2
    instance-of p1, p0, Lnet/sf/saxon/type/AtomicType;

    if-eqz p1, :cond_3

    new-instance p1, Lnet/sf/saxon/functions/hof/AtomicConstructorFunction;

    check-cast p0, Lnet/sf/saxon/type/AtomicType;

    invoke-direct {p1, p0, v1}, Lnet/sf/saxon/functions/hof/AtomicConstructorFunction;-><init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/om/NamespaceResolver;)V

    return-object p1

    :cond_3
    instance-of p1, p0, Lnet/sf/saxon/type/ListType;

    if-eqz p1, :cond_4

    new-instance p1, Lnet/sf/saxon/expr/ListConstructorFunction;

    check-cast p0, Lnet/sf/saxon/type/ListType;

    invoke-direct {p1, p0, v1, v2}, Lnet/sf/saxon/expr/ListConstructorFunction;-><init>(Lnet/sf/saxon/type/ListType;Lnet/sf/saxon/om/NamespaceResolver;Z)V

    return-object p1

    :cond_4
    new-instance p1, Lnet/sf/saxon/expr/CallableDelegate;

    new-instance p2, Lcom/sunia/HTREnginev2/iae;

    invoke-direct {p2, p0, v1}, Lcom/sunia/HTREnginev2/iae;-><init>(Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/NamespaceResolver;)V

    invoke-direct {p1, p2}, Lnet/sf/saxon/expr/CallableDelegate;-><init>(Lnet/sf/saxon/expr/CallableDelegate$Lambda;)V

    check-cast p0, Lnet/sf/saxon/type/UnionType;

    invoke-interface {p0}, Lnet/sf/saxon/type/UnionType;->getResultTypeOfCast()Lnet/sf/saxon/value/SequenceType;

    move-result-object p0

    new-instance p2, Lnet/sf/saxon/functions/CallableFunction;

    new-instance v0, Lnet/sf/saxon/type/SpecificFunctionType;

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    filled-new-array {v1}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    invoke-direct {p2, v2, p1, v0}, Lnet/sf/saxon/functions/CallableFunction;-><init>(ILnet/sf/saxon/expr/Callable;Lnet/sf/saxon/type/FunctionItemType;)V

    return-object p2

    :cond_5
    :goto_0
    return-object v1
.end method

.method public isAvailable(Lnet/sf/saxon/trans/SymbolicName$F;I)Z
    .locals 4

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName$F;->getArity()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lnet/sf/saxon/trans/SymbolicName;->getComponentName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/functions/registry/ConstructorFunctionLibrary;->a:Lnet/sf/saxon/Configuration;

    new-instance v2, Lnet/sf/saxon/om/StructuredQName;

    const-string v3, ""

    invoke-direct {v2, v3, p2, p1}, Lnet/sf/saxon/om/StructuredQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->isComplexType()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/type/SchemaType;->isAtomicType()Z

    move-result p1

    if-eqz p1, :cond_2

    move-object p1, p0

    check-cast p1, Lnet/sf/saxon/type/AtomicType;

    invoke-interface {p1}, Lnet/sf/saxon/type/AtomicType;->isAbstract()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    invoke-static {}, Lnet/sf/saxon/type/AnySimpleType;->getInstance()Lnet/sf/saxon/type/AnySimpleType;

    move-result-object p1

    if-eq p0, p1, :cond_3

    move v0, v1

    :cond_3
    :goto_0
    return v0
.end method
