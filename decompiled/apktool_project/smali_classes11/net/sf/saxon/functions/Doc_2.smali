.class public Lnet/sf/saxon/functions/Doc_2;
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
    .locals 9

    sget-object v0, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    const v1, 0xe000

    invoke-static {v0, v1}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/functions/OptionsParameter;

    invoke-direct {v1}, Lnet/sf/saxon/functions/OptionsParameter;-><init>()V

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->SINGLE_STRING:Lnet/sf/saxon/value/SequenceType;

    const-string v3, "base-uri"

    invoke-virtual {v1, v3, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v3, "validation"

    invoke-virtual {v1, v3, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v4, "strip"

    const-string v5, "skip"

    const-string v6, "strict"

    const-string v7, "lax"

    const-string v8, "preserve"

    filled-new-array {v6, v7, v8, v4, v5}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "SXZZ0001"

    invoke-virtual {v1, v3, v5, v4}, Lnet/sf/saxon/functions/OptionsParameter;->setAllowedValues(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v3, "type"

    sget-object v4, Lnet/sf/saxon/value/SequenceType;->SINGLE_QNAME:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v1, v3, v4}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v3, "strip-space"

    invoke-virtual {v1, v3, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v2, "package-defined"

    const-string v4, "default"

    const-string v6, "none"

    const-string v7, "all"

    const-string v8, "ignorable"

    filled-new-array {v6, v7, v8, v2, v4}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v5, v2}, Lnet/sf/saxon/functions/OptionsParameter;->setAllowedValues(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->SINGLE_BOOLEAN:Lnet/sf/saxon/value/SequenceType;

    const-string v3, "stable"

    invoke-virtual {v1, v3, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v3, "dtd-validation"

    invoke-virtual {v1, v3, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v3, "accumulators"

    invoke-virtual {v1, v3, v0}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v0, "use-xsi-schema-location"

    invoke-virtual {v1, v0, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    return-object v1
.end method

.method public static setParseOptions(Lnet/sf/saxon/expr/parser/RetainedStaticContext;Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/lib/ParseOptions;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/parser/RetainedStaticContext;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/Sequence;",
            ">;",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")",
            "Lnet/sf/saxon/lib/ParseOptions;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/lib/ParseOptions;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/lib/ParseOptions;-><init>(Lnet/sf/saxon/lib/ParseOptions;)V

    const-string v1, "validation"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/Sequence;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    invoke-interface {v1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v1

    const-string v3, "skip"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v1, "strip"

    :cond_0
    invoke-static {v1}, Lnet/sf/saxon/lib/Validation;->getCode(Ljava/lang/String;)I

    move-result v3

    if-eq v3, v2, :cond_1

    invoke-virtual {v0, v3}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Invalid validation value "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "SXZZ0002"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    const-string v1, "type"

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/Sequence;

    if-eqz v1, :cond_3

    invoke-interface {v1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/value/QNameValue;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {v1}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {p2, v1}, Lnet/sf/saxon/Configuration;->getSchemaType(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/type/SchemaType;

    move-result-object p2

    invoke-virtual {v0, p2}, Lnet/sf/saxon/lib/ParseOptions;->setTopLevelType(Lnet/sf/saxon/type/SchemaType;)V

    const/16 p2, 0x8

    invoke-virtual {v0, p2}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    :cond_3
    const-string p2, "strip-space"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/Sequence;

    const/4 v1, 0x4

    const/4 v3, 0x1

    if-eqz p2, :cond_9

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v4, "default"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    goto :goto_1

    :cond_4
    move v2, v1

    goto :goto_1

    :sswitch_1
    const-string v4, "package-defined"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_2
    const-string v4, "ignorable"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string v4, "none"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_7

    goto :goto_1

    :cond_7
    move v2, v3

    goto :goto_1

    :sswitch_4
    const-string v4, "all"

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_8

    goto :goto_1

    :cond_8
    const/4 v2, 0x0

    :goto_1
    packed-switch v2, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p2

    instance-of v2, p2, Lnet/sf/saxon/style/StylesheetPackage;

    if-eqz v2, :cond_9

    check-cast p2, Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p2}, Lnet/sf/saxon/style/StylesheetPackage;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object p2

    invoke-virtual {v0, p2}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    goto :goto_2

    :pswitch_1
    invoke-static {}, Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;

    move-result-object p2

    invoke-virtual {v0, p2}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    goto :goto_2

    :pswitch_2
    invoke-static {}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    move-result-object p2

    invoke-virtual {v0, p2}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    goto :goto_2

    :pswitch_3
    invoke-static {}, Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;

    move-result-object p2

    invoke-virtual {v0, p2}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    :cond_9
    :goto_2
    const-string p2, "dtd-validation"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/Sequence;

    if-eqz p2, :cond_b

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {p2}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result p2

    if-eqz p2, :cond_a

    move v1, v3

    :cond_a
    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ParseOptions;->setDTDValidationMode(I)V

    :cond_b
    const-string p2, "accumulators"

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/Sequence;

    if-eqz p2, :cond_d

    invoke-virtual {p0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->getAccumulatorRegistry()Lnet/sf/saxon/expr/accum/AccumulatorRegistry;

    move-result-object p0

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v2

    if-eqz v2, :cond_c

    check-cast v2, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {v2}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/sf/saxon/expr/accum/AccumulatorRegistry;->getAccumulator(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/expr/accum/Accumulator;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_c
    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ParseOptions;->setApplicableAccumulators(Ljava/util/Set;)V

    :cond_d
    const-string p0, "use-xsi-schema-location"

    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/Sequence;

    if-eqz p0, :cond_e

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/lib/ParseOptions;->setUseXsiSchemaLocation(Z)V

    :cond_e
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x179a1 -> :sswitch_4
        0x33af38 -> :sswitch_3
        0x1a7604cd -> :sswitch_2
        0x2ad3cf82 -> :sswitch_1
        0x5c13d641 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Ljava/lang/String;Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/TreeInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p3

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getSourceResolver()Lnet/sf/saxon/lib/SourceResolver;

    move-result-object p1

    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1, v0}, Lnet/sf/saxon/lib/SourceResolver;->resolveSource(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/lib/ActiveSource;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/functions/DocumentFn;->sourceIsTree(Ljavax/xml/transform/Source;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3, p0}, Lnet/sf/saxon/Controller;->prepareInputTree(Ljavax/xml/transform/Source;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lnet/sf/saxon/Controller;->makeBuilder()Lnet/sf/saxon/event/Builder;

    move-result-object p1

    instance-of p3, p1, Lnet/sf/saxon/tree/tiny/TinyBuilder;

    if-eqz p3, :cond_1

    move-object p3, p1

    check-cast p3, Lnet/sf/saxon/tree/tiny/TinyBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTreeStatistics()Lnet/sf/saxon/tree/tiny/TreeStatistics;

    move-result-object v0

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TreeStatistics;->SOURCE_DOCUMENT_STATISTICS:Lnet/sf/saxon/tree/tiny/Statistics;

    invoke-virtual {p3, v0}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->setStatistics(Lnet/sf/saxon/tree/tiny/Statistics;)V

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/event/Builder;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p3

    invoke-virtual {p1, p3}, Lnet/sf/saxon/event/Builder;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    :try_start_1
    invoke-static {p0, p1, p2}, Lnet/sf/saxon/event/Sender;->send(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-virtual {p1}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p3

    invoke-interface {p3}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p3

    invoke-virtual {p1}, Lnet/sf/saxon/event/Builder;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {p2}, Lnet/sf/saxon/lib/ParseOptions;->isPleaseCloseAfterUse()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lnet/sf/saxon/lib/ParseOptions;->close(Ljavax/xml/transform/Source;)V

    :cond_2
    move-object p0, p3

    :goto_0
    return-object p0

    :catchall_0
    move-exception p1

    invoke-virtual {p2}, Lnet/sf/saxon/lib/ParseOptions;->isPleaseCloseAfterUse()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-static {p0}, Lnet/sf/saxon/lib/ParseOptions;->close(Ljavax/xml/transform/Source;)V

    :cond_3
    throw p1

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid URI supplied to saxon:doc - "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "FODC0002"

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    aget-object p2, p2, v1

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    iget-object v1, v1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->optionDetails:Lnet/sf/saxon/functions/OptionsParameter;

    check-cast p2, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {v1, p2, p1}, Lnet/sf/saxon/functions/OptionsParameter;->processSuppliedOptions(Lnet/sf/saxon/ma/map/MapItem;Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-static {v1, p2, p1}, Lnet/sf/saxon/functions/Doc_2;->setParseOptions(Lnet/sf/saxon/expr/parser/RetainedStaticContext;Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/lib/ParseOptions;

    move-result-object p2

    invoke-virtual {p0, v0, p2, p1}, Lnet/sf/saxon/functions/Doc_2;->a(Ljava/lang/String;Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    instance-of v0, p1, Lnet/sf/saxon/trans/XsltController;

    if-eqz v0, :cond_1

    check-cast p1, Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XsltController;->getAccumulatorManager()Lnet/sf/saxon/expr/accum/AccumulatorManager;

    move-result-object p1

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v0

    invoke-virtual {p2}, Lnet/sf/saxon/lib/ParseOptions;->getApplicableAccumulators()Ljava/util/Set;

    move-result-object p2

    invoke-virtual {p1, v0, p2}, Lnet/sf/saxon/expr/accum/AccumulatorManager;->setApplicableAccumulators(Lnet/sf/saxon/om/TreeInfo;Ljava/util/Set;)V

    :cond_1
    return-object p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to load document "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "FODC0002"

    invoke-direct {p0, p2, v0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    throw p0
.end method

.method public getSpecialProperties([Lnet/sf/saxon/expr/Expression;)I
    .locals 0

    const/high16 p0, 0x18a0000

    return p0
.end method
