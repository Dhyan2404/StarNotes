.class public Lnet/sf/saxon/functions/hof/LoadXqueryModule;
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

.method public static makeOptionsParameter()Lnet/sf/saxon/functions/OptionsParameter;
    .locals 6

    new-instance v0, Lnet/sf/saxon/functions/OptionsParameter;

    invoke-direct {v0}, Lnet/sf/saxon/functions/OptionsParameter;-><init>()V

    const-string v1, "xquery-version"

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->SINGLE_DECIMAL:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v1, "location-hints"

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->STRING_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v1, "context-item"

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->OPTIONAL_ITEM:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    new-instance v1, Lnet/sf/saxon/ma/map/MapType;

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    sget-object v3, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/ma/map/MapType;-><init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/value/SequenceType;)V

    const/16 v4, 0x4000

    invoke-static {v1, v4}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    const-string v5, "variables"

    invoke-virtual {v0, v5, v1}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    new-instance v1, Lnet/sf/saxon/ma/map/MapType;

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/ma/map/MapType;-><init>(Lnet/sf/saxon/type/AtomicType;Lnet/sf/saxon/value/SequenceType;)V

    invoke-static {v1, v4}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    const-string v2, "vendor-options"

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    return-object v0
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/ma/map/MapItem;
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "FOQM0002"

    .line 2
    array-length v1, p2

    const/4 v2, 0x2

    const-string v3, "FOQM0006"

    const-string v4, "variables"

    const/4 v5, 0x0

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    .line 3
    aget-object v1, p2, v1

    invoke-interface {v1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/ma/map/MapItem;

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v2

    iget-object v2, v2, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->optionDetails:Lnet/sf/saxon/functions/OptionsParameter;

    invoke-virtual {v2, v1, p1}, Lnet/sf/saxon/functions/OptionsParameter;->processSuppliedOptions(Lnet/sf/saxon/ma/map/MapItem;Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "xquery-version"

    .line 5
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/Sequence;

    if-eqz v2, :cond_1

    .line 6
    invoke-interface {v2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/value/DecimalValue;

    invoke-virtual {v6}, Lnet/sf/saxon/value/NumericValue;->getDoubleValue()D

    move-result-wide v6

    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    mul-double/2addr v8, v6

    const-wide/high16 v10, 0x403f000000000000L    # 31.0

    cmpl-double v8, v8, v10

    if-gtz v8, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "No XQuery version "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, " processor is available"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    const-string v6, "location-hints"

    .line 8
    invoke-interface {v1, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lnet/sf/saxon/om/Sequence;

    .line 9
    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/om/Sequence;

    const-string v8, "context-item"

    .line 10
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sf/saxon/om/Sequence;

    const-string v9, "vendor-options"

    .line 11
    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/Sequence;

    goto :goto_1

    :cond_2
    move-object v2, v5

    move-object v6, v2

    move-object v7, v6

    move-object v8, v7

    :goto_1
    if-eqz v2, :cond_5

    .line 12
    invoke-interface {v2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/DecimalValue;

    invoke-virtual {v1}, Lnet/sf/saxon/value/DecimalValue;->getDecimalValue()Ljava/math/BigDecimal;

    move-result-object v1

    .line 13
    new-instance v2, Ljava/math/BigDecimal;

    const-string v9, "1.0"

    invoke-direct {v2, v9}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/math/BigDecimal;

    const-string v9, "3.0"

    invoke-direct {v2, v9}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    new-instance v2, Ljava/math/BigDecimal;

    const-string v9, "3.1"

    invoke-direct {v2, v9}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unsupported XQuery version "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 15
    :cond_4
    :goto_2
    sget-object v2, Ljava/math/BigDecimal;->TEN:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->multiply(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->intValue()I

    :cond_5
    const/4 v1, 0x0

    .line 16
    aget-object p2, p2, v1

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p2

    .line 17
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    .line 18
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    if-eqz v6, :cond_6

    .line 19
    invoke-interface {v6}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v3

    .line 20
    :goto_3
    invoke-interface {v3}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v6

    if-eqz v6, :cond_6

    .line 21
    invoke-interface {v6}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 22
    :cond_6
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    .line 23
    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->newStaticQueryContext()Lnet/sf/saxon/query/StaticQueryContext;

    move-result-object v6

    .line 24
    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getModuleURIResolver()Lnet/sf/saxon/lib/ModuleURIResolver;

    move-result-object v9

    if-nez v9, :cond_7

    .line 25
    new-instance v9, Lnet/sf/saxon/lib/StandardModuleURIResolver;

    invoke-direct {v9, v3}, Lnet/sf/saxon/lib/StandardModuleURIResolver;-><init>(Lnet/sf/saxon/Configuration;)V

    .line 26
    :cond_7
    invoke-virtual {v6, v9}, Lnet/sf/saxon/query/StaticQueryContext;->setModuleURIResolver(Lnet/sf/saxon/lib/ModuleURIResolver;)V

    .line 27
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v9

    invoke-virtual {v9}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object v9

    .line 28
    invoke-virtual {v6, v9}, Lnet/sf/saxon/query/StaticQueryContext;->setBaseURI(Ljava/lang/String;)V

    :try_start_0
    new-array v10, v1, [Ljava/lang/String;

    .line 29
    invoke-interface {v2, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 30
    invoke-virtual {v6}, Lnet/sf/saxon/query/StaticQueryContext;->getModuleURIResolver()Lnet/sf/saxon/lib/ModuleURIResolver;

    move-result-object v10

    invoke-interface {v10, p2, v9, v2}, Lnet/sf/saxon/lib/ModuleURIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljavax/xml/transform/stream/StreamSource;

    move-result-object v10

    if-nez v10, :cond_8

    .line 31
    new-instance v10, Lnet/sf/saxon/lib/StandardModuleURIResolver;

    invoke-direct {v10, v3}, Lnet/sf/saxon/lib/StandardModuleURIResolver;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {v10, p2, v9, v2}, Lnet/sf/saxon/lib/StandardModuleURIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)[Ljavax/xml/transform/stream/StreamSource;

    move-result-object v10
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_2

    .line 32
    :cond_8
    array-length v2, v10

    if-eqz v2, :cond_14

    .line 33
    :try_start_1
    aget-object v2, v10, v1

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getValidCharacterChecker()Lnet/sf/saxon/z/IntPredicateProxy;

    move-result-object v9

    invoke-static {v2, v9}, Lnet/sf/saxon/query/QueryReader;->readSourceQuery(Ljavax/xml/transform/stream/StreamSource;Lnet/sf/saxon/z/IntPredicateProxy;)Ljava/lang/String;

    move-result-object v2

    .line 34
    invoke-virtual {v6, v2}, Lnet/sf/saxon/query/StaticQueryContext;->compileLibrary(Ljava/lang/String;)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    .line 35
    invoke-virtual {v6, p2}, Lnet/sf/saxon/query/StaticQueryContext;->getCompiledLibrary(Ljava/lang/String;)Lnet/sf/saxon/query/QueryLibrary;

    move-result-object v2

    if-eqz v2, :cond_13

    .line 36
    new-instance v0, Lnet/sf/saxon/query/QueryModule;

    invoke-direct {v0, v6}, Lnet/sf/saxon/query/QueryModule;-><init>(Lnet/sf/saxon/query/StaticQueryContext;)V

    .line 37
    invoke-virtual {v2}, Lnet/sf/saxon/query/QueryModule;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v6

    invoke-virtual {v0, v6}, Lnet/sf/saxon/query/QueryModule;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    .line 38
    invoke-virtual {v2}, Lnet/sf/saxon/query/QueryModule;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v6

    invoke-virtual {v0, v6}, Lnet/sf/saxon/query/QueryModule;->setExecutable(Lnet/sf/saxon/expr/instruct/Executable;)V

    .line 39
    invoke-virtual {v2, v0}, Lnet/sf/saxon/query/QueryLibrary;->link(Lnet/sf/saxon/query/QueryModule;)V

    .line 40
    new-instance v6, Lnet/sf/saxon/query/XQueryExpression;

    new-instance v9, Lnet/sf/saxon/expr/ContextItemExpression;

    invoke-direct {v9}, Lnet/sf/saxon/expr/ContextItemExpression;-><init>()V

    invoke-direct {v6, v9, v0, v1}, Lnet/sf/saxon/query/XQueryExpression;-><init>(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/query/QueryModule;Z)V

    .line 41
    new-instance v9, Lnet/sf/saxon/query/DynamicQueryContext;

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-direct {v9, p1}, Lnet/sf/saxon/query/DynamicQueryContext;-><init>(Lnet/sf/saxon/Configuration;)V

    if-eqz v7, :cond_9

    .line 42
    invoke-interface {v7}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/ma/map/MapItem;

    .line 43
    invoke-virtual {p1}, Lnet/sf/saxon/ma/map/MapItem;->keys()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object v7

    .line 44
    :goto_4
    invoke-interface {v7}, Lnet/sf/saxon/tree/iter/AtomicIterator;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v10

    if-eqz v10, :cond_9

    .line 45
    move-object v11, v10

    check-cast v11, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {v11}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v11

    invoke-virtual {p1, v10}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v10

    invoke-interface {v10}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v10

    invoke-virtual {v9, v11, v10}, Lnet/sf/saxon/query/DynamicQueryContext;->setParameter(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/GroundedValue;)V

    goto :goto_4

    :cond_9
    const-string p1, "FOQM0005"

    if-eqz v8, :cond_c

    .line 46
    invoke-interface {v8}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v7

    .line 47
    invoke-virtual {v0}, Lnet/sf/saxon/query/QueryModule;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Executable;->getGlobalContextRequirement()Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 48
    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->getRequiredItemType()Lnet/sf/saxon/type/ItemType;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 49
    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v3

    invoke-interface {v0, v7, v3}, Lnet/sf/saxon/type/ItemType;->matches(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_5

    .line 50
    :cond_a
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Required context item type is "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    .line 51
    :cond_b
    :goto_5
    invoke-interface {v8}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    invoke-virtual {v9, v0}, Lnet/sf/saxon/query/DynamicQueryContext;->setContextItem(Lnet/sf/saxon/om/Item;)V

    .line 52
    :cond_c
    invoke-virtual {v6, v9}, Lnet/sf/saxon/query/XQueryExpression;->newController(Lnet/sf/saxon/query/DynamicQueryContext;)Lnet/sf/saxon/Controller;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->newXPathContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v3

    .line 54
    new-instance v6, Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-direct {v6}, Lnet/sf/saxon/ma/map/HashTrieMap;-><init>()V

    .line 55
    invoke-virtual {v2}, Lnet/sf/saxon/query/QueryModule;->getImportedGlobalVariables()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lnet/sf/saxon/expr/instruct/GlobalVariable;

    .line 56
    new-instance v9, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {v8}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v10

    sget-object v11, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v9, v10, v11}, Lnet/sf/saxon/value/QNameValue;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/type/AtomicType;)V

    .line 57
    invoke-virtual {v9}, Lnet/sf/saxon/value/QualifiedNameValue;->getNamespaceURI()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_d

    .line 58
    :try_start_2
    invoke-virtual {v8, v3}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->evaluateVariable(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v8
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_0

    .line 59
    invoke-virtual {v6, v9, v8}, Lnet/sf/saxon/ma/map/MapItem;->addEntry(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/MapItem;

    move-result-object v6

    goto :goto_6

    :catch_0
    move-exception p0

    .line 60
    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/XPathException;->setIsGlobalError(Z)V

    .line 61
    invoke-virtual {p0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object p2

    const-string v0, "XPTY0004"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 62
    new-instance p2, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p2

    .line 63
    :cond_e
    throw p0

    .line 64
    :cond_f
    new-instance p1, Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-direct {p1}, Lnet/sf/saxon/ma/map/HashTrieMap;-><init>()V

    .line 65
    invoke-virtual {v2}, Lnet/sf/saxon/query/QueryModule;->getGlobalFunctionLibrary()Lnet/sf/saxon/query/XQueryFunctionLibrary;

    move-result-object v1

    .line 66
    new-instance v2, Lnet/sf/saxon/functions/hof/LoadXqueryModule$a;

    invoke-direct {v2, p0}, Lnet/sf/saxon/functions/hof/LoadXqueryModule$a;-><init>(Lnet/sf/saxon/functions/hof/LoadXqueryModule;)V

    .line 67
    invoke-virtual {v1}, Lnet/sf/saxon/query/XQueryFunctionLibrary;->getFunctionDefinitions()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_10
    :goto_7
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/query/XQueryFunction;

    .line 68
    new-instance v3, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {v1}, Lnet/sf/saxon/query/XQueryFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v7

    sget-object v8, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-direct {v3, v7, v8}, Lnet/sf/saxon/value/QNameValue;-><init>(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/type/AtomicType;)V

    .line 69
    invoke-virtual {v3}, Lnet/sf/saxon/value/QualifiedNameValue;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_10

    .line 70
    invoke-virtual {v1}, Lnet/sf/saxon/query/XQueryFunction;->getUserFunction()Lnet/sf/saxon/expr/instruct/UserFunction;

    move-result-object v7

    .line 71
    new-instance v8, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;

    invoke-direct {v8, v2, v7, v5, v0}, Lnet/sf/saxon/functions/hof/UserFunctionReference$BoundUserFunction;-><init>(Lnet/sf/saxon/expr/ExportAgent;Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/Component;Lnet/sf/saxon/Controller;)V

    .line 72
    invoke-virtual {p1, v3}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v7

    if-eqz v7, :cond_11

    .line 73
    invoke-virtual {p1, v3}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/ma/map/MapItem;

    new-instance v9, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {v1}, Lnet/sf/saxon/query/XQueryFunction;->getNumberOfArguments()I

    move-result v1

    int-to-long v10, v1

    invoke-direct {v9, v10, v11}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    invoke-virtual {v7, v9, v8}, Lnet/sf/saxon/ma/map/MapItem;->addEntry(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/MapItem;

    move-result-object v1

    goto :goto_8

    .line 74
    :cond_11
    new-instance v7, Lnet/sf/saxon/ma/map/SingleEntryMap;

    invoke-virtual {v1}, Lnet/sf/saxon/query/XQueryFunction;->getNumberOfArguments()I

    move-result v1

    int-to-long v9, v1

    invoke-static {v9, v10}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v1

    invoke-direct {v7, v1, v8}, Lnet/sf/saxon/ma/map/SingleEntryMap;-><init>(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)V

    move-object v1, v7

    .line 75
    :goto_8
    invoke-virtual {p1, v3, v1}, Lnet/sf/saxon/ma/map/MapItem;->addEntry(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p1

    goto :goto_7

    .line 76
    :cond_12
    new-instance p0, Lnet/sf/saxon/ma/map/DictionaryMap;

    invoke-direct {p0}, Lnet/sf/saxon/ma/map/DictionaryMap;-><init>()V

    .line 77
    invoke-virtual {p0, v4, v6}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    const-string p2, "functions"

    .line 78
    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/ma/map/DictionaryMap;->initialPut(Ljava/lang/String;Lnet/sf/saxon/om/GroundedValue;)V

    return-object p0

    .line 79
    :cond_13
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The library module located does not have the expected namespace "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :catch_1
    move-exception p0

    .line 80
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p2, "FOQM0003"

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    .line 81
    :cond_14
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No library module found with specified target namespace "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :catch_2
    move-exception p0

    .line 82
    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XPathException;->maybeSetErrorCode(Ljava/lang/String;)V

    .line 83
    throw p0

    .line 84
    :cond_15
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "First argument of fn:load-xquery-module() must not be a zero length string"

    const-string p2, "FOQM0001"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

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
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/hof/LoadXqueryModule;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/ma/map/MapItem;

    move-result-object p0

    return-object p0
.end method

.method public makeNewContext(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/ContextOriginator;)Lnet/sf/saxon/expr/XPathContext;
    .locals 0

    return-object p1
.end method
