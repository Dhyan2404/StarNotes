.class public Lnet/sf/saxon/functions/TransformFn;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/TransformFn$d;,
        Lnet/sf/saxon/functions/TransformFn$e;,
        Lnet/sf/saxon/functions/TransformFn$c;,
        Lnet/sf/saxon/functions/TransformFn$b;,
        Lnet/sf/saxon/functions/TransformFn$f;
    }
.end annotation


# static fields
.field public static final h:[Ljava/lang/String;

.field public static final i:Ljava/lang/String; = "dummy"


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const-string v0, "package-name"

    const-string v1, "package-version"

    const-string v2, "package-node"

    const-string v3, "package-location"

    const-string v4, "static-params"

    const-string v5, "global-context-item"

    const-string v6, "template-params"

    const-string v7, "tunnel-params"

    const-string v8, "initial-function"

    const-string v9, "function-params"

    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/sf/saxon/functions/TransformFn;->h:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/lang/String;Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/functions/TransformFn;->n(Ljava/lang/String;Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Ljava/lang/String;Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/functions/TransformFn;->o(Ljava/lang/String;Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static makeOptionsParameter()Lnet/sf/saxon/functions/OptionsParameter;
    .locals 9

    new-instance v0, Lnet/sf/saxon/functions/OptionsParameter;

    invoke-direct {v0}, Lnet/sf/saxon/functions/OptionsParameter;-><init>()V

    const-string v1, "xslt-version"

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->SINGLE_DECIMAL:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->SINGLE_STRING:Lnet/sf/saxon/value/SequenceType;

    const-string v2, "stylesheet-location"

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    sget-object v2, Lnet/sf/saxon/value/SequenceType;->SINGLE_NODE:Lnet/sf/saxon/value/SequenceType;

    const-string v3, "stylesheet-node"

    invoke-virtual {v0, v3, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v3, "stylesheet-text"

    invoke-virtual {v0, v3, v1}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v3, "stylesheet-base-uri"

    invoke-virtual {v0, v3, v1}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v3, "base-output-uri"

    invoke-virtual {v0, v3, v1}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    sget-object v3, Lnet/sf/saxon/ma/map/MapType;->ANY_MAP_TYPE:Lnet/sf/saxon/ma/map/MapType;

    const/16 v4, 0x4000

    invoke-static {v3, v4}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v5

    const-string v6, "stylesheet-params"

    invoke-virtual {v0, v6, v5}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v5, "source-node"

    invoke-virtual {v0, v5, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v5, "source-location"

    invoke-virtual {v0, v5, v1}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    sget-object v5, Lnet/sf/saxon/value/SequenceType;->SINGLE_QNAME:Lnet/sf/saxon/value/SequenceType;

    const-string v6, "initial-mode"

    invoke-virtual {v0, v6, v5}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    sget-object v6, Lnet/sf/saxon/value/SequenceType;->ANY_SEQUENCE:Lnet/sf/saxon/value/SequenceType;

    const-string v7, "initial-match-selection"

    invoke-virtual {v0, v7, v6}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v7, "initial-template"

    invoke-virtual {v0, v7, v5}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v7, "delivery-format"

    invoke-virtual {v0, v7, v1}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v7, "serialization-params"

    invoke-static {v3, v4}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v7, "vendor-options"

    invoke-static {v3, v4}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v8

    invoke-virtual {v0, v7, v8}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v7, "cache"

    sget-object v8, Lnet/sf/saxon/value/SequenceType;->SINGLE_BOOLEAN:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v7, v8}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v7, "package-name"

    invoke-virtual {v0, v7, v1}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v7, "package-version"

    invoke-virtual {v0, v7, v1}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v7, "package-node"

    invoke-virtual {v0, v7, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v2, "package-location"

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v2, "static-params"

    invoke-static {v3, v4}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v2, "global-context-item"

    sget-object v7, Lnet/sf/saxon/value/SequenceType;->SINGLE_ITEM:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v2, v7}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v2, "template-params"

    invoke-static {v3, v4}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v2, "tunnel-params"

    invoke-static {v3, v4}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v7

    invoke-virtual {v0, v2, v7}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v2, "initial-function"

    invoke-virtual {v0, v2, v5}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v2, "function-params"

    sget-object v5, Lnet/sf/saxon/ma/arrays/ArrayItemType;->SINGLE_ARRAY:Lnet/sf/saxon/value/SequenceType;

    invoke-virtual {v0, v2, v5}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    const-string v2, "requested-properties"

    invoke-static {v3, v4}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    new-instance v2, Lnet/sf/saxon/type/SpecificFunctionType;

    filled-new-array {v1, v6}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-direct {v2, v1, v6}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    invoke-static {v2, v4}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    const-string v2, "post-process"

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;)V

    return-object v0
.end method

.method public static synthetic n(Ljava/lang/String;Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method public static synthetic o(Ljava/lang/String;Lnet/sf/saxon/om/NodeInfo;)Ljava/lang/String;
    .locals 0

    return-object p0
.end method

.method public static v(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/Configuration;I)Lnet/sf/saxon/om/NodeInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/lib/ParseOptions;-><init>(Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-virtual {v0, p2}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->asActiveSource()Lnet/sf/saxon/lib/ActiveSource;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Lnet/sf/saxon/Configuration;->buildDocumentTree(Ljavax/xml/transform/Source;Lnet/sf/saxon/lib/ParseOptions;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c(Lnet/sf/saxon/value/AtomicValue;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of p0, p1, Lnet/sf/saxon/value/BooleanValue;

    if-eqz p0, :cond_0

    check-cast p1, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result p0

    return p0

    :cond_0
    instance-of p0, p1, Lnet/sf/saxon/value/StringValue;

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/value/Whitespace;->normalizeWhitespace(Lnet/sf/saxon/str/UnicodeString;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "yes"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "true"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "1"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "no"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "false"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0

    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unrecognized boolean value "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FOXT0002"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "FOXT0003"

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v3

    iget-object v3, v3, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->optionDetails:Lnet/sf/saxon/functions/OptionsParameter;

    const/4 v4, 0x0

    aget-object v5, p2, v4

    invoke-interface {v5}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {v3, v5, v1}, Lnet/sf/saxon/functions/OptionsParameter;->processSuppliedOptions(Lnet/sf/saxon/ma/map/MapItem;Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Map;

    move-result-object v3

    const-string v5, "vendor-options"

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/om/Sequence;

    if-nez v5, :cond_0

    const/4 v5, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v5}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/ma/map/MapItem;

    :goto_0
    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v7

    const-string v8, ""

    const/4 v9, 0x1

    if-eqz v5, :cond_4

    new-instance v10, Lnet/sf/saxon/value/QNameValue;

    const-string v11, "configuration"

    const-string v12, "http://saxon.sf.net/"

    invoke-direct {v10, v8, v12, v11}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v10}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v10

    if-eqz v10, :cond_2

    invoke-interface {v10}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v10

    check-cast v10, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v10}, Lnet/sf/saxon/om/NodeInfo;->asActiveSource()Lnet/sf/saxon/lib/ActiveSource;

    move-result-object v10

    invoke-static {v10, v7}, Lnet/sf/saxon/Configuration;->readConfiguration(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/Configuration;

    move-result-object v7

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v10

    sget-object v11, Lnet/sf/saxon/lib/Feature;->ALLOW_EXTERNAL_FUNCTIONS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v10, v11}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v7, v11, v4}, Lnet/sf/saxon/Configuration;->setBooleanProperty(Lnet/sf/saxon/lib/Feature;Z)V

    :cond_1
    move v10, v4

    goto :goto_1

    :cond_2
    move v10, v9

    :goto_1
    new-instance v11, Lnet/sf/saxon/value/QNameValue;

    const-string v13, "schema-validation"

    invoke-direct {v11, v8, v12, v13}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v5, v11}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v5

    if-eqz v5, :cond_3

    invoke-interface {v5}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v5

    invoke-interface {v5}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lnet/sf/saxon/lib/Validation;->getCode(Ljava/lang/String;)I

    move-result v5

    goto :goto_2

    :cond_3
    move v5, v4

    goto :goto_2

    :cond_4
    move v5, v4

    move v10, v9

    :goto_2
    new-instance v11, Lnet/sf/saxon/s9api/Processor;

    invoke-direct {v11, v9}, Lnet/sf/saxon/s9api/Processor;-><init>(Z)V

    sget-object v12, Lnet/sf/saxon/lib/Feature;->CONFIGURATION:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v11, v12, v7}, Lnet/sf/saxon/s9api/Processor;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v12

    invoke-virtual {v12}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v12

    invoke-virtual {v12}, Lnet/sf/saxon/expr/PackageData;->getHostLanguageVersion()I

    move-result v12

    invoke-virtual {v0, v3, v1, v12}, Lnet/sf/saxon/functions/TransformFn;->i(Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;I)V

    const-string v13, "xslt-version"

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "FOXT0002"

    if-eqz v14, :cond_6

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lnet/sf/saxon/om/Sequence;

    invoke-interface {v13}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v13

    check-cast v13, Lnet/sf/saxon/value/BigDecimalValue;

    invoke-virtual {v13}, Lnet/sf/saxon/value/BigDecimalValue;->getDoubleValue()D

    move-result-wide v13

    const-wide/high16 v16, 0x4024000000000000L    # 10.0

    mul-double v13, v13, v16

    move-object/from16 v16, v7

    int-to-double v6, v12

    cmpl-double v6, v13, v6

    if-gtz v6, :cond_5

    goto :goto_3

    :cond_5
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "The transform option xslt-version is higher than the language version supported by this processor"

    invoke-direct {v0, v1, v15}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_6
    move-object/from16 v16, v7

    :goto_3
    const-string v6, "source-node"

    const-string v7, "source-location"

    const-string v12, "initial-match-selection"

    filled-new-array {v6, v7, v12}, [Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v3, v13}, Lnet/sf/saxon/functions/TransformFn;->p(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v0, v3}, Lnet/sf/saxon/functions/TransformFn;->e(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_7

    goto :goto_4

    :cond_7
    const-string v14, "invocation"

    :goto_4
    const-string v9, "initial-template"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    const-string v4, "initial-function"

    if-nez v18, :cond_8

    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_8

    if-nez v13, :cond_8

    new-instance v13, Lnet/sf/saxon/value/QNameValue;

    const-string v14, "http://www.w3.org/1999/XSL/Transform"

    invoke-direct {v13, v8, v14, v9}, Lnet/sf/saxon/value/QNameValue;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v3, v9, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v14, v9

    :cond_8
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    const-string v13, "function-params"

    if-eqz v8, :cond_a

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_9

    goto :goto_5

    :cond_9
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Use of the transform option initial-function requires the function parameters to be supplied using the option function-params"

    invoke-direct {v0, v1, v15}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_a
    :goto_5
    invoke-virtual {v14, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_c

    invoke-interface {v3, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_b

    goto :goto_6

    :cond_b
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "The transform option function-params can only be used if the option initial-function is also used"

    invoke-direct {v0, v1, v15}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_c
    :goto_6
    invoke-virtual {v0, v3}, Lnet/sf/saxon/functions/TransformFn;->h(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v8

    const-string v14, "requested-properties"

    invoke-interface {v3, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-eqz v14, :cond_d

    invoke-virtual {v0, v3, v11}, Lnet/sf/saxon/functions/TransformFn;->s(Ljava/util/Map;Lnet/sf/saxon/s9api/Processor;)V

    :cond_d
    invoke-virtual {v11}, Lnet/sf/saxon/s9api/Processor;->newXsltCompiler()Lnet/sf/saxon/s9api/XsltCompiler;

    move-result-object v14

    move-object/from16 v18, v2

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/expr/XPathContext;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v2

    invoke-virtual {v14, v2}, Lnet/sf/saxon/s9api/XsltCompiler;->setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V

    const/4 v2, 0x0

    invoke-virtual {v14, v2}, Lnet/sf/saxon/s9api/XsltCompiler;->setJustInTimeCompilation(Z)V

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/expr/XPathContext;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v2

    invoke-virtual {v14, v2}, Lnet/sf/saxon/s9api/XsltCompiler;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    const-string v2, "static-params"

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_e

    invoke-virtual {v0, v3, v14, v10}, Lnet/sf/saxon/functions/TransformFn;->t(Ljava/util/Map;Lnet/sf/saxon/s9api/XsltCompiler;Z)V

    :cond_e
    invoke-virtual {v0, v3, v14, v8, v1}, Lnet/sf/saxon/functions/TransformFn;->l(Ljava/util/Map;Lnet/sf/saxon/s9api/XsltCompiler;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/s9api/XsltExecutable;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/s9api/XsltExecutable;->load30()Lnet/sf/saxon/s9api/Xslt30Transformer;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/expr/XPathContext;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v8

    invoke-virtual {v2, v8}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v19, v14

    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    move/from16 v20, v5

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v21

    invoke-interface/range {v21 .. v21}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    const-string v1, "document"

    const-string v22, "output"

    move-object/from16 v25, v1

    move-object/from16 v23, v22

    const/16 v24, 0x0

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v34, 0x0

    move-object/from16 v22, v2

    const/4 v2, 0x0

    :goto_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v35

    move-object/from16 v36, v11

    if-eqz v35, :cond_26

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v11, v35

    check-cast v11, Ljava/lang/String;

    invoke-interface {v3, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v35

    move-object/from16 v37, v3

    move-object/from16 v3, v35

    check-cast v3, Lnet/sf/saxon/om/Sequence;

    move-object/from16 v35, v2

    invoke-interface {v3}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v2

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v38

    const/16 v39, -0x1

    sparse-switch v38, :sswitch_data_0

    move-object/from16 v38, v3

    goto/16 :goto_9

    :sswitch_0
    move-object/from16 v38, v3

    const-string v3, "template-params"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    goto/16 :goto_9

    :cond_f
    const/16 v3, 0xe

    goto/16 :goto_8

    :sswitch_1
    move-object/from16 v38, v3

    const-string v3, "stylesheet-params"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_10

    goto/16 :goto_9

    :cond_10
    const/16 v3, 0xd

    goto/16 :goto_8

    :sswitch_2
    move-object/from16 v38, v3

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_11

    goto/16 :goto_9

    :cond_11
    const/16 v3, 0xc

    goto/16 :goto_8

    :sswitch_3
    move-object/from16 v38, v3

    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    goto/16 :goto_9

    :cond_12
    const/16 v3, 0xb

    goto/16 :goto_8

    :sswitch_4
    move-object/from16 v38, v3

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_13

    goto/16 :goto_9

    :cond_13
    const/16 v3, 0xa

    goto :goto_8

    :sswitch_5
    move-object/from16 v38, v3

    const-string v3, "delivery-format"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_14

    goto/16 :goto_9

    :cond_14
    const/16 v3, 0x9

    goto :goto_8

    :sswitch_6
    move-object/from16 v38, v3

    const-string v3, "serialization-params"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto/16 :goto_9

    :cond_15
    const/16 v3, 0x8

    goto :goto_8

    :sswitch_7
    move-object/from16 v38, v3

    const-string v3, "base-output-uri"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_16

    goto/16 :goto_9

    :cond_16
    const/4 v3, 0x7

    goto :goto_8

    :sswitch_8
    move-object/from16 v38, v3

    const-string v3, "post-process"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_17

    goto :goto_9

    :cond_17
    const/4 v3, 0x6

    goto :goto_8

    :sswitch_9
    move-object/from16 v38, v3

    invoke-virtual {v11, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_9

    :cond_18
    const/4 v3, 0x5

    goto :goto_8

    :sswitch_a
    move-object/from16 v38, v3

    const-string v3, "tunnel-params"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_9

    :cond_19
    const/4 v3, 0x4

    :goto_8
    move/from16 v39, v3

    goto :goto_9

    :sswitch_b
    move-object/from16 v38, v3

    const-string v3, "initial-mode"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1a

    goto :goto_9

    :cond_1a
    const/16 v39, 0x3

    goto :goto_9

    :sswitch_c
    move-object/from16 v38, v3

    invoke-virtual {v11, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    goto :goto_9

    :cond_1b
    const/16 v39, 0x2

    goto :goto_9

    :sswitch_d
    move-object/from16 v38, v3

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    goto :goto_9

    :cond_1c
    const/16 v39, 0x1

    goto :goto_9

    :sswitch_e
    move-object/from16 v38, v3

    const-string v3, "global-context-item"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_9

    :cond_1d
    const/16 v39, 0x0

    :goto_9
    packed-switch v39, :pswitch_data_0

    :goto_a
    goto :goto_b

    :pswitch_0
    check-cast v2, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {v0, v2, v14, v10}, Lnet/sf/saxon/functions/TransformFn;->q(Lnet/sf/saxon/ma/map/MapItem;Ljava/util/Map;Z)V

    goto :goto_a

    :pswitch_1
    check-cast v2, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {v0, v2, v8, v10}, Lnet/sf/saxon/functions/TransformFn;->q(Lnet/sf/saxon/ma/map/MapItem;Ljava/util/Map;Z)V

    goto :goto_a

    :pswitch_2
    new-instance v3, Lnet/sf/saxon/s9api/QName;

    check-cast v2, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {v2}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-direct {v3, v2}, Lnet/sf/saxon/s9api/QName;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    move-object/from16 v30, v3

    goto :goto_b

    :pswitch_3
    invoke-interface {v2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v28

    :goto_b
    move-object/from16 v39, v4

    goto/16 :goto_e

    :pswitch_4
    check-cast v2, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {v2}, Lnet/sf/saxon/ma/arrays/ArrayItem;->arrayLength()I

    move-result v3

    new-array v11, v3, [Lnet/sf/saxon/s9api/XdmValue;

    move-object/from16 v39, v4

    const/4 v4, 0x0

    :goto_c
    if-ge v4, v3, :cond_1f

    move/from16 v34, v3

    invoke-virtual {v2, v4}, Lnet/sf/saxon/ma/arrays/ArrayItem;->get(I)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v3

    if-nez v10, :cond_1e

    invoke-virtual {v0, v3}, Lnet/sf/saxon/functions/TransformFn;->f(Lnet/sf/saxon/om/Sequence;)V

    :cond_1e
    invoke-static {v3}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object v3

    aput-object v3, v11, v4

    add-int/lit8 v4, v4, 0x1

    move/from16 v3, v34

    goto :goto_c

    :cond_1f
    move-object/from16 v34, v11

    goto :goto_e

    :pswitch_5
    move-object/from16 v39, v4

    invoke-interface {v2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    const-string v3, "serialized"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    const-string v3, "raw"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    goto :goto_d

    :cond_20
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "The transform option delivery-format should be one of: document|serialized|raw "

    invoke-direct {v0, v1, v15}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_21
    :goto_d
    move-object/from16 v25, v2

    goto :goto_e

    :pswitch_6
    move-object/from16 v39, v4

    move-object/from16 v26, v2

    check-cast v26, Lnet/sf/saxon/ma/map/MapItem;

    goto :goto_e

    :pswitch_7
    move-object/from16 v39, v4

    invoke-interface {v2}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v23, v2

    goto/16 :goto_10

    :pswitch_8
    move-object/from16 v39, v4

    move-object/from16 v24, v2

    check-cast v24, Lnet/sf/saxon/om/Function;

    goto :goto_e

    :pswitch_9
    move-object/from16 v39, v4

    check-cast v2, Lnet/sf/saxon/om/NodeInfo;

    if-nez v10, :cond_22

    invoke-virtual {v0, v2}, Lnet/sf/saxon/functions/TransformFn;->f(Lnet/sf/saxon/om/Sequence;)V

    :cond_22
    move-object/from16 v27, v2

    goto :goto_e

    :pswitch_a
    move-object/from16 v39, v4

    check-cast v2, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {v0, v2, v5, v10}, Lnet/sf/saxon/functions/TransformFn;->q(Lnet/sf/saxon/ma/map/MapItem;Ljava/util/Map;Z)V

    :cond_23
    :goto_e
    move-object/from16 v2, v35

    goto :goto_10

    :pswitch_b
    move-object/from16 v39, v4

    new-instance v3, Lnet/sf/saxon/s9api/QName;

    check-cast v2, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {v2}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-direct {v3, v2}, Lnet/sf/saxon/s9api/QName;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    move-object/from16 v31, v3

    goto :goto_e

    :pswitch_c
    move-object/from16 v39, v4

    new-instance v3, Lnet/sf/saxon/s9api/QName;

    check-cast v2, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {v2}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-direct {v3, v2}, Lnet/sf/saxon/s9api/QName;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    move-object/from16 v33, v3

    goto :goto_e

    :pswitch_d
    move-object/from16 v39, v4

    invoke-static/range {v38 .. v38}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object v29

    if-nez v10, :cond_23

    move-object/from16 v2, v38

    invoke-virtual {v0, v2}, Lnet/sf/saxon/functions/TransformFn;->f(Lnet/sf/saxon/om/Sequence;)V

    goto :goto_e

    :pswitch_e
    move-object/from16 v39, v4

    if-nez v10, :cond_25

    instance-of v3, v2, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v3, :cond_25

    move-object v3, v2

    check-cast v3, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/TreeInfo;->isTyped()Z

    move-result v3

    if-nez v3, :cond_24

    goto :goto_f

    :cond_24
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v1, "Schema-validated nodes cannot be passed to fn:transform() when it runs under a different Saxon Configuration"

    invoke-direct {v0, v1, v15}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :cond_25
    :goto_f
    invoke-static {v2}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object v2

    move-object/from16 v32, v2

    check-cast v32, Lnet/sf/saxon/s9api/XdmItem;

    goto :goto_e

    :goto_10
    move-object/from16 v11, v36

    move-object/from16 v3, v37

    move-object/from16 v4, v39

    goto/16 :goto_7

    :cond_26
    move-object/from16 v35, v2

    if-nez v35, :cond_27

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/functions/SystemFunction;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object v1

    :goto_11
    move-object/from16 v3, v25

    move-object/from16 v2, v36

    goto :goto_12

    :cond_27
    :try_start_0
    new-instance v1, Ljava/net/URI;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_4

    move-object/from16 v2, v35

    :try_start_1
    invoke-direct {v1, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URI;->isAbsolute()Z

    move-result v1

    if-nez v1, :cond_28

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getStaticBaseUri()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_5

    :cond_28
    move-object v1, v2

    goto :goto_11

    :goto_12
    invoke-static {v2, v3}, Lnet/sf/saxon/functions/TransformFn$b;->d(Lnet/sf/saxon/s9api/Processor;Ljava/lang/String;)Lnet/sf/saxon/functions/TransformFn$b;

    move-result-object v2

    move-object/from16 v3, v22

    invoke-virtual {v2, v3}, Lnet/sf/saxon/functions/TransformFn$b;->k(Lnet/sf/saxon/s9api/Xslt30Transformer;)V

    invoke-virtual {v2, v1}, Lnet/sf/saxon/functions/TransformFn$b;->h(Ljava/lang/String;)V

    move-object/from16 v4, v23

    invoke-virtual {v2, v4}, Lnet/sf/saxon/functions/TransformFn$b;->j(Ljava/lang/String;)V

    move-object/from16 v6, p1

    move-object/from16 v7, v24

    invoke-virtual {v2, v7, v6}, Lnet/sf/saxon/functions/TransformFn$b;->i(Lnet/sf/saxon/om/Function;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {v3}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getUnderlyingController()Lnet/sf/saxon/trans/XsltController;

    move-result-object v6

    invoke-virtual {v6, v2}, Lnet/sf/saxon/trans/XsltController;->setResultDocumentResolver(Lnet/sf/saxon/lib/ResultDocumentResolver;)V

    move-object/from16 v6, v26

    invoke-virtual {v2, v6}, Lnet/sf/saxon/functions/TransformFn$b;->b(Lnet/sf/saxon/ma/map/MapItem;)Lnet/sf/saxon/s9api/Destination;

    move-result-object v6

    :try_start_2
    invoke-virtual {v3, v8}, Lnet/sf/saxon/s9api/Xslt30Transformer;->setStylesheetParameters(Ljava/util/Map;)V

    invoke-virtual {v3, v1}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->setBaseOutputURI(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v3, v14, v1}, Lnet/sf/saxon/s9api/Xslt30Transformer;->setInitialTemplateParameters(Ljava/util/Map;Z)V

    const/4 v1, 0x1

    invoke-virtual {v3, v5, v1}, Lnet/sf/saxon/s9api/Xslt30Transformer;->setInitialTemplateParameters(Ljava/util/Map;Z)V

    move/from16 v5, v20

    if-eq v5, v1, :cond_2a

    const/4 v1, 0x2

    if-ne v5, v1, :cond_29

    goto :goto_14

    :cond_29
    :goto_13
    move-object/from16 v0, v28

    move-object/from16 v1, v32

    goto/16 :goto_18

    :cond_2a
    :goto_14
    move-object/from16 v1, v27

    if-eqz v1, :cond_2b

    move-object/from16 v7, v16

    invoke-static {v1, v7, v5}, Lnet/sf/saxon/functions/TransformFn;->v(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/Configuration;I)Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0
    :try_end_2
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v27, v0

    goto/16 :goto_16

    :cond_2b
    move-object/from16 v7, v16

    move-object/from16 v8, v28

    if-eqz v8, :cond_2c

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/functions/SystemFunction;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/lib/ResourceRequest;

    invoke-direct {v1}, Lnet/sf/saxon/lib/ResourceRequest;-><init>()V

    iput-object v8, v1, Lnet/sf/saxon/lib/ResourceRequest;->relativeUri:Ljava/lang/String;

    iput-object v0, v1, Lnet/sf/saxon/lib/ResourceRequest;->baseUri:Ljava/lang/String;

    const-string v9, "https://www.iana.org/assignments/media-types/application/xml"

    iput-object v9, v1, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    const-string v9, "source document"

    iput-object v9, v1, Lnet/sf/saxon/lib/ResourceRequest;->purpose:Ljava/lang/String;
    :try_end_3
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_3 .. :try_end_3} :catch_3

    :try_start_4
    invoke-static {v8, v0}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;
    :try_end_4
    .catch Ljava/net/URISyntaxException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_4 .. :try_end_4} :catch_3

    const/4 v0, 0x3

    :try_start_5
    new-array v0, v0, [Lnet/sf/saxon/lib/ResourceResolver;

    invoke-virtual/range {v19 .. v19}, Lnet/sf/saxon/s9api/XsltCompiler;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v8

    const/4 v9, 0x0

    aput-object v8, v0, v9

    invoke-virtual {v7}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v0, v9

    new-instance v8, Lnet/sf/saxon/lib/DirectResourceResolver;

    invoke-direct {v8, v7}, Lnet/sf/saxon/lib/DirectResourceResolver;-><init>(Lnet/sf/saxon/Configuration;)V

    const/4 v9, 0x2

    aput-object v8, v0, v9

    invoke-virtual {v1, v0}, Lnet/sf/saxon/lib/ResourceRequest;->resolve([Lnet/sf/saxon/lib/ResourceResolver;)Ljavax/xml/transform/Source;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {v7}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v8

    invoke-direct {v1, v8}, Lnet/sf/saxon/lib/ParseOptions;-><init>(Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-virtual {v1, v5}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    invoke-virtual {v7, v0, v1}, Lnet/sf/saxon/Configuration;->buildDocumentTree(Ljavax/xml/transform/Source;Lnet/sf/saxon/lib/ParseOptions;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    move-object/from16 v27, v0

    move-object/from16 v0, v32

    const/16 v28, 0x0

    goto :goto_17

    :catch_0
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unresolvable sourceLocation URI "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_5
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_5 .. :try_end_5} :catch_3

    move-object/from16 v2, v18

    :try_start_6
    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_6
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_6 .. :try_end_6} :catch_3

    :catch_1
    move-exception v0

    goto :goto_15

    :catch_2
    move-exception v0

    move-object/from16 v2, v18

    :goto_15
    :try_start_7
    invoke-virtual {v0, v2}, Lnet/sf/saxon/trans/XPathException;->maybeSetErrorCode(Ljava/lang/String;)V

    throw v0

    :cond_2c
    move-object/from16 v27, v1

    move-object/from16 v28, v8

    :goto_16
    move-object/from16 v0, v32

    :goto_17
    instance-of v1, v0, Lnet/sf/saxon/s9api/XdmNode;

    if-eqz v1, :cond_2d

    move-object/from16 v32, v0

    check-cast v32, Lnet/sf/saxon/s9api/XdmNode;

    invoke-virtual/range {v32 .. v32}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    invoke-static {v0, v7, v5}, Lnet/sf/saxon/functions/TransformFn;->v(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/Configuration;I)Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object v0

    move-object/from16 v32, v0

    check-cast v32, Lnet/sf/saxon/s9api/XdmNode;

    goto/16 :goto_13

    :cond_2d
    move-object v1, v0

    move-object/from16 v0, v28

    :goto_18
    if-eqz v27, :cond_2e

    if-nez v1, :cond_2e

    new-instance v5, Lnet/sf/saxon/s9api/XdmNode;

    invoke-interface/range {v27 .. v27}, Lnet/sf/saxon/om/NodeInfo;->getRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v7

    invoke-direct {v5, v7}, Lnet/sf/saxon/s9api/XdmNode;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-virtual {v3, v5}, Lnet/sf/saxon/s9api/Xslt30Transformer;->setGlobalContextItem(Lnet/sf/saxon/s9api/XdmItem;)V

    :cond_2e
    if-eqz v1, :cond_2f

    invoke-virtual {v3, v1}, Lnet/sf/saxon/s9api/Xslt30Transformer;->setGlobalContextItem(Lnet/sf/saxon/s9api/XdmItem;)V

    :cond_2f
    move-object/from16 v1, v30

    if-eqz v1, :cond_30

    invoke-virtual {v3, v1, v6}, Lnet/sf/saxon/s9api/Xslt30Transformer;->callTemplate(Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/Destination;)V

    invoke-virtual {v2}, Lnet/sf/saxon/functions/TransformFn$b;->c()Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    goto :goto_1a

    :cond_30
    move-object/from16 v1, v33

    if-eqz v1, :cond_31

    move-object/from16 v5, v34

    invoke-virtual {v3, v1, v5, v6}, Lnet/sf/saxon/s9api/Xslt30Transformer;->callFunction(Lnet/sf/saxon/s9api/QName;[Lnet/sf/saxon/s9api/XdmValue;Lnet/sf/saxon/s9api/Destination;)V

    invoke-virtual {v2}, Lnet/sf/saxon/functions/TransformFn$b;->c()Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    goto :goto_1a

    :cond_31
    move-object/from16 v1, v31

    if-eqz v1, :cond_32

    invoke-virtual {v3, v1}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->setInitialMode(Lnet/sf/saxon/s9api/QName;)V

    :cond_32
    if-nez v29, :cond_33

    if-eqz v27, :cond_33

    invoke-static/range {v27 .. v27}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object v29

    :cond_33
    move-object/from16 v1, v29

    if-nez v1, :cond_35

    if-eqz v0, :cond_35

    new-instance v1, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v1, v0}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getUnderlyingController()Lnet/sf/saxon/trans/XsltController;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XsltController;->getInitialMode()Lnet/sf/saxon/trans/Mode;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/Mode;->isDeclaredStreamable()Z

    move-result v0

    if-eqz v0, :cond_34

    invoke-virtual {v3, v1, v6}, Lnet/sf/saxon/s9api/Xslt30Transformer;->applyTemplates(Ljavax/xml/transform/Source;Lnet/sf/saxon/s9api/Destination;)V

    goto :goto_19

    :cond_34
    invoke-virtual {v3, v1, v6}, Lnet/sf/saxon/s9api/Xslt30Transformer;->transform(Ljavax/xml/transform/Source;Lnet/sf/saxon/s9api/Destination;)V

    :goto_19
    invoke-virtual {v2}, Lnet/sf/saxon/functions/TransformFn$b;->c()Lnet/sf/saxon/om/Sequence;

    move-result-object v0

    goto :goto_1a

    :cond_35
    invoke-virtual {v3, v1, v6}, Lnet/sf/saxon/s9api/Xslt30Transformer;->applyTemplates(Lnet/sf/saxon/s9api/XdmValue;Lnet/sf/saxon/s9api/Destination;)V

    invoke-virtual {v2}, Lnet/sf/saxon/functions/TransformFn$b;->c()Lnet/sf/saxon/om/Sequence;

    move-result-object v0
    :try_end_7
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_7 .. :try_end_7} :catch_3

    :goto_1a
    new-instance v1, Lnet/sf/saxon/ma/map/HashTrieMap;

    invoke-direct {v1}, Lnet/sf/saxon/ma/map/HashTrieMap;-><init>()V

    invoke-virtual {v2, v1}, Lnet/sf/saxon/functions/TransformFn$b;->f(Lnet/sf/saxon/ma/map/MapItem;)Lnet/sf/saxon/ma/map/MapItem;

    move-result-object v1

    if-eqz v0, :cond_36

    new-instance v2, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v2, v4}, Lnet/sf/saxon/value/StringValue;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lnet/sf/saxon/ma/map/MapItem;->addEntry(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/ma/map/MapItem;

    move-result-object v1

    :cond_36
    return-object v1

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/trans/XPathException;

    if-eqz v1, :cond_37

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/XPathException;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setIsGlobalError(Z)V

    throw v0

    :cond_37
    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-object/from16 v2, v35

    :catch_5
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid base output URI "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v15}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0

    :sswitch_data_0
    .sparse-switch
        -0x7cdf01a5 -> :sswitch_e
        -0x33983505 -> :sswitch_d
        -0x23b673bf -> :sswitch_c
        -0x1b2c1174 -> :sswitch_b
        -0x137af175 -> :sswitch_a
        -0x7cebf8c -> :sswitch_9
        0x903fa42 -> :sswitch_8
        0x92e931c -> :sswitch_7
        0x116e2a03 -> :sswitch_6
        0x207dabf0 -> :sswitch_5
        0x251a6d1b -> :sswitch_4
        0x327aa927 -> :sswitch_3
        0x3b34e4e3 -> :sswitch_2
        0x433a29e5 -> :sswitch_1
        0x5bba7a39 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final d(Ljava/util/Map;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/Sequence;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "initial-mode"

    const-string v1, "initial-template"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/functions/TransformFn;->p(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final e(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/Sequence;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "initial-template"

    const-string v1, "initial-function"

    const-string v2, "initial-mode"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/functions/TransformFn;->p(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final f(Lnet/sf/saxon/om/Sequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p1

    if-eqz p1, :cond_2

    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/TreeInfo;->isTyped()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Schema-validated nodes cannot be passed to fn:transform() when it runs under a different Saxon Configuration"

    const-string v0, "FOXT0002"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public final g(Ljava/util/Map;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/Sequence;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "stylesheet-node"

    const-string v1, "stylesheet-text"

    const-string v2, "stylesheet-location"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/functions/TransformFn;->k(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final h(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/Sequence;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "stylesheet-location"

    const-string v1, "stylesheet-node"

    const-string v2, "stylesheet-text"

    const-string v3, "package-name"

    const-string v4, "package-node"

    const-string v5, "package-location"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/functions/TransformFn;->k(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "package-location"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The transform option "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not implemented in Saxon"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "FOXT0002"

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
.end method

.method public final i(Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/Sequence;",
            ">;",
            "Lnet/sf/saxon/expr/XPathContext;",
            "I)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p2

    const-string v0, "FOXT0002"

    if-nez p2, :cond_3

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/functions/TransformFn;->m(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x1e

    if-lt p3, v1, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "The transform option "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " is only available when using an XSLT 3.0 processor"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "No transformation options supplied"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method

.method public final varargs j([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x100

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v0, p1

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    aget-object v4, p1, v3

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_1

    :cond_0
    const-string v5, " | "

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final varargs k(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/Sequence;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/functions/TransformFn;->p(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "One of the following transform options must be present: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/functions/TransformFn;->j([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(Ljava/util/Map;Lnet/sf/saxon/s9api/XsltCompiler;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/s9api/XsltExecutable;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/Sequence;",
            ">;",
            "Lnet/sf/saxon/s9api/XsltCompiler;",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")",
            "Lnet/sf/saxon/s9api/XsltExecutable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/om/Sequence;

    invoke-interface {v4}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v4

    const-string v5, "stylesheet-base-uri"

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/om/Sequence;

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    invoke-interface {v5}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v5

    invoke-interface {v5}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/URI;->isAbsolute()Z

    move-result v8

    if-nez v8, :cond_1

    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v7

    invoke-virtual {v7}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getStaticBaseUri()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    goto :goto_0

    :cond_0
    move-object v7, v6

    :cond_1
    :goto_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/s9api/XsltCompiler;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v8

    new-instance v9, Lnet/sf/saxon/functions/TransformFn$f;

    invoke-direct {v9, v5, v8}, Lnet/sf/saxon/functions/TransformFn$f;-><init>(Ljava/util/List;Lnet/sf/saxon/lib/ErrorReporter;)V

    invoke-virtual {v2, v9}, Lnet/sf/saxon/s9api/XsltCompiler;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    const-string v8, "static-params"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-nez v8, :cond_2

    move v8, v9

    goto :goto_1

    :cond_2
    move v8, v10

    :goto_1
    const-string v11, "cache"

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    if-eqz v12, :cond_3

    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lnet/sf/saxon/om/Sequence;

    invoke-interface {v11}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v11

    check-cast v11, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {v11}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result v11

    and-int/2addr v8, v11

    :cond_3
    invoke-interface/range {p4 .. p4}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v11

    invoke-virtual {v11}, Lnet/sf/saxon/Controller;->getStylesheetCache()Lnet/sf/saxon/trans/StylesheetCache;

    move-result-object v11

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/s9api/XsltCompiler;->getProcessor()Lnet/sf/saxon/s9api/Processor;

    move-result-object v12

    invoke-virtual {v12}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v12

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v13

    const/4 v14, 0x3

    const/4 v15, 0x2

    const/16 v16, -0x1

    sparse-switch v13, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string v13, "stylesheet-text"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    const/16 v16, 0x4

    goto :goto_2

    :sswitch_1
    const-string v13, "stylesheet-node"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    move/from16 v16, v14

    goto :goto_2

    :sswitch_2
    const-string v13, "package-node"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    move/from16 v16, v15

    goto :goto_2

    :sswitch_3
    const-string v13, "package-name"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    goto :goto_2

    :cond_7
    move/from16 v16, v9

    goto :goto_2

    :sswitch_4
    const-string v13, "stylesheet-location"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    goto :goto_2

    :cond_8
    move/from16 v16, v10

    :goto_2
    packed-switch v16, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-interface {v4}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v8, :cond_9

    invoke-virtual {v11, v3}, Lnet/sf/saxon/trans/StylesheetCache;->getStylesheetByText(Ljava/lang/String;)Lnet/sf/saxon/s9api/XsltExecutable;

    move-result-object v6

    :cond_9
    if-nez v6, :cond_12

    new-instance v0, Ljava/io/StringReader;

    invoke-direct {v0, v3}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {v4, v0}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;)V

    if-eqz v7, :cond_a

    invoke-virtual {v7}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljavax/xml/transform/stream/StreamSource;->setSystemId(Ljava/lang/String;)V

    :cond_a
    :try_start_0
    invoke-virtual {v2, v4}, Lnet/sf/saxon/s9api/XsltCompiler;->compile(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XsltExecutable;

    move-result-object v0
    :try_end_0
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v0

    goto :goto_3

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2, v5}, Lnet/sf/saxon/functions/TransformFn;->r(Lnet/sf/saxon/s9api/SaxonApiException;Ljava/util/List;)Lnet/sf/saxon/s9api/XsltExecutable;

    :goto_3
    if-eqz v8, :cond_12

    invoke-virtual {v11, v3, v6}, Lnet/sf/saxon/trans/StylesheetCache;->setStylesheetByText(Ljava/lang/String;Lnet/sf/saxon/s9api/XsltExecutable;)V

    goto/16 :goto_5

    :pswitch_1
    check-cast v4, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v7, :cond_b

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {v7}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lnet/sf/saxon/tree/wrapper/RebasedDocument;

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v4

    new-instance v9, Lcom/sunia/HTREnginev2/nln;

    invoke-direct {v9, v0}, Lcom/sunia/HTREnginev2/nln;-><init>(Ljava/lang/String;)V

    new-instance v10, Lcom/sunia/HTREnginev2/oln;

    invoke-direct {v10, v0}, Lcom/sunia/HTREnginev2/oln;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4, v9, v10}, Lnet/sf/saxon/tree/wrapper/RebasedDocument;-><init>(Lnet/sf/saxon/om/TreeInfo;Ljava/util/function/Function;Ljava/util/function/Function;)V

    invoke-virtual {v3}, Lnet/sf/saxon/om/GenericTreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v4

    :cond_b
    if-eqz v8, :cond_c

    invoke-virtual {v11, v4}, Lnet/sf/saxon/trans/StylesheetCache;->getStylesheetByNode(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/s9api/XsltExecutable;

    move-result-object v6

    :cond_c
    if-nez v6, :cond_12

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeInfo;->asActiveSource()Lnet/sf/saxon/lib/ActiveSource;

    move-result-object v0

    if-eqz v7, :cond_d

    invoke-static {v0}, Lnet/sf/saxon/lib/AugmentedSource;->makeAugmentedSource(Ljavax/xml/transform/Source;)Lnet/sf/saxon/lib/AugmentedSource;

    move-result-object v0

    invoke-virtual {v7}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljavax/xml/transform/Source;->setSystemId(Ljava/lang/String;)V

    :cond_d
    :try_start_1
    invoke-virtual {v2, v0}, Lnet/sf/saxon/s9api/XsltCompiler;->compile(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XsltExecutable;

    move-result-object v0
    :try_end_1
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2, v5}, Lnet/sf/saxon/functions/TransformFn;->r(Lnet/sf/saxon/s9api/SaxonApiException;Ljava/util/List;)Lnet/sf/saxon/s9api/XsltExecutable;

    :goto_4
    if-eqz v8, :cond_12

    invoke-virtual {v11, v4, v6}, Lnet/sf/saxon/trans/StylesheetCache;->setStylesheetByNode(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/s9api/XsltExecutable;)V

    goto/16 :goto_5

    :pswitch_2
    invoke-interface {v4}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/value/Whitespace;->trim(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "package-version"

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_e

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/Sequence;

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v6

    :cond_e
    :try_start_2
    invoke-virtual {v2, v1, v6}, Lnet/sf/saxon/s9api/XsltCompiler;->obtainPackage(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/s9api/XsltPackage;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/XsltPackage;->link()Lnet/sf/saxon/s9api/XsltExecutable;

    move-result-object v6

    goto/16 :goto_5

    :cond_f
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot locate package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " version "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FOXT0002"

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_2 .. :try_end_2} :catch_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/trans/XPathException;

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/XPathException;

    throw v0

    :cond_10
    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :pswitch_3
    invoke-interface {v4}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v8, :cond_11

    invoke-virtual {v11, v0}, Lnet/sf/saxon/trans/StylesheetCache;->getStylesheetByLocation(Ljava/lang/String;)Lnet/sf/saxon/s9api/XsltExecutable;

    move-result-object v6

    :cond_11
    if-nez v6, :cond_12

    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lnet/sf/saxon/functions/SystemFunction;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lnet/sf/saxon/lib/ResourceRequest;

    invoke-direct {v4}, Lnet/sf/saxon/lib/ResourceRequest;-><init>()V

    iput-object v3, v4, Lnet/sf/saxon/lib/ResourceRequest;->baseUri:Ljava/lang/String;

    iput-object v0, v4, Lnet/sf/saxon/lib/ResourceRequest;->relativeUri:Ljava/lang/String;

    invoke-static {v0, v3}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v4, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    const-string v3, "http://www.w3.org/1999/XSL/Transform"

    iput-object v3, v4, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    const-string v3, "transformation"

    iput-object v3, v4, Lnet/sf/saxon/lib/ResourceRequest;->purpose:Ljava/lang/String;

    new-array v3, v14, [Lnet/sf/saxon/lib/ResourceResolver;

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/s9api/XsltCompiler;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v6

    aput-object v6, v3, v10

    invoke-virtual {v12}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v6

    aput-object v6, v3, v9

    new-instance v6, Lnet/sf/saxon/lib/DirectResourceResolver;

    invoke-direct {v6, v12}, Lnet/sf/saxon/lib/DirectResourceResolver;-><init>(Lnet/sf/saxon/Configuration;)V

    aput-object v6, v3, v15

    invoke-virtual {v4, v3}, Lnet/sf/saxon/lib/ResourceRequest;->resolve([Lnet/sf/saxon/lib/ResourceResolver;)Ljavax/xml/transform/Source;

    move-result-object v3
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_4

    :try_start_4
    invoke-virtual {v2, v3}, Lnet/sf/saxon/s9api/XsltCompiler;->compile(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XsltExecutable;

    move-result-object v6
    :try_end_4
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_4 .. :try_end_4} :catch_3

    if-eqz v8, :cond_12

    invoke-virtual {v11, v0, v6}, Lnet/sf/saxon/trans/StylesheetCache;->setStylesheetByLocation(Ljava/lang/String;Lnet/sf/saxon/s9api/XsltExecutable;)V

    goto :goto_5

    :catch_3
    move-exception v0

    move-object v2, v0

    invoke-virtual {v1, v2, v5}, Lnet/sf/saxon/functions/TransformFn;->r(Lnet/sf/saxon/s9api/SaxonApiException;Ljava/util/List;)Lnet/sf/saxon/s9api/XsltExecutable;

    move-result-object v0

    return-object v0

    :catch_4
    move-exception v0

    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_5
    move-exception v0

    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to resolve stylesheet-location in fn:transform: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_12
    :goto_5
    return-object v6

    :sswitch_data_0
    .sparse-switch
        -0x772bcbac -> :sswitch_4
        -0x72a3dc4e -> :sswitch_3
        -0x72a3a8d7 -> :sswitch_2
        0xb416a21 -> :sswitch_1
        0xb44014c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final m(Ljava/lang/String;)Z
    .locals 4

    sget-object p0, Lnet/sf/saxon/functions/TransformFn;->h:[Ljava/lang/String;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final varargs p(Ljava/util/Map;[Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/Sequence;",
            ">;[",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p2, v2

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1

    if-nez v1, :cond_0

    move-object v1, v3

    goto :goto_1

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The following transform options are mutually exclusive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/functions/TransformFn;->j([Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "FOXT0002"

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final q(Lnet/sf/saxon/ma/map/MapItem;Ljava/util/Map;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/ma/map/MapItem;",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/s9api/QName;",
            "Lnet/sf/saxon/s9api/XdmValue;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/ma/map/MapItem;->keys()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AtomicIterator;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v2, v1, Lnet/sf/saxon/value/QNameValue;

    if-eqz v2, :cond_1

    new-instance v2, Lnet/sf/saxon/s9api/QName;

    move-object v3, v1

    check-cast v3, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {v3}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/sf/saxon/s9api/QName;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    if-nez p3, :cond_0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/functions/TransformFn;->f(Lnet/sf/saxon/om/Sequence;)V

    :cond_0
    invoke-static {v1}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object v1

    invoke-interface {p2, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The names of parameters must be supplied as QNames"

    const-string p2, "FOXT0002"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public final r(Lnet/sf/saxon/s9api/SaxonApiException;Ljava/util/List;)Lnet/sf/saxon/s9api/XsltExecutable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/s9api/SaxonApiException;",
            "Ljava/util/List<",
            "Lnet/sf/saxon/s9api/XmlProcessingError;",
            ">;)",
            "Lnet/sf/saxon/s9api/XsltExecutable;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/trans/XPathException;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/trans/XPathException;

    throw p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XmlProcessingError;

    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->fromXmlProcessingError(Lnet/sf/saxon/s9api/XmlProcessingError;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    const-string p1, "FOXT0002"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetErrorCode(Ljava/lang/String;)V

    throw p0
.end method

.method public final s(Ljava/util/Map;Lnet/sf/saxon/s9api/Processor;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/Sequence;",
            ">;",
            "Lnet/sf/saxon/s9api/Processor;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const-string v2, "requested-properties"

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/Sequence;

    invoke-interface {v2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {v2}, Lnet/sf/saxon/ma/map/MapItem;->keys()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Lnet/sf/saxon/tree/iter/AtomicIterator;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v4

    if-eqz v4, :cond_12

    invoke-virtual {v4}, Lnet/sf/saxon/value/AtomicValue;->head()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v5

    check-cast v5, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {v5}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v5

    invoke-virtual {v2, v4}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v4

    invoke-interface {v4}, Lnet/sf/saxon/om/GroundedValue;->head()Lnet/sf/saxon/om/Item;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/value/AtomicValue;

    const-string v6, "http://www.w3.org/1999/XSL/Transform"

    invoke-virtual {v5, v6}, Lnet/sf/saxon/om/StructuredQName;->hasURI(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-virtual {v5}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const-string v8, "product-version"

    const-string v9, "supports-backwards-compatibility"

    const-string v10, "supports-serialization"

    const-string v11, "supports-higher-order-functions"

    const-string v12, "supports-namespace-axis"

    const-string v13, "supports-streaming"

    const-string v14, "vendor-url"

    const-string v15, "xpath-version"

    move-object/from16 p1, v2

    const-string v2, "xsd-version"

    move-object/from16 v16, v3

    const-string v3, "is-schema-aware"

    const/4 v1, 0x2

    const/16 v17, -0x1

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v17, 0xb

    goto/16 :goto_1

    :sswitch_1
    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v17, 0xa

    goto/16 :goto_1

    :sswitch_2
    const-string v7, "product-name"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v17, 0x9

    goto/16 :goto_1

    :sswitch_3
    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_1

    :cond_3
    const/16 v17, 0x8

    goto :goto_1

    :sswitch_4
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const/16 v17, 0x7

    goto :goto_1

    :sswitch_5
    const-string v7, "supports-dynamic-evaluation"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_1

    :cond_5
    const/16 v17, 0x6

    goto :goto_1

    :sswitch_6
    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_1

    :cond_6
    const/16 v17, 0x5

    goto :goto_1

    :sswitch_7
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_1

    :cond_7
    const/16 v17, 0x4

    goto :goto_1

    :sswitch_8
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_1

    :cond_8
    const/16 v17, 0x3

    goto :goto_1

    :sswitch_9
    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_1

    :cond_9
    move/from16 v17, v1

    goto :goto_1

    :sswitch_a
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_1

    :cond_a
    const/16 v17, 0x1

    goto :goto_1

    :sswitch_b
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_1

    :cond_b
    const/16 v17, 0x0

    :goto_1
    packed-switch v17, :pswitch_data_0

    :cond_c
    :goto_2
    move-object/from16 v5, p2

    goto/16 :goto_3

    :pswitch_0
    invoke-static {}, Lnet/sf/saxon/Version;->getProductVersion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0, v8, v6}, Lnet/sf/saxon/functions/TransformFn;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    invoke-virtual {v0, v4}, Lnet/sf/saxon/functions/TransformFn;->c(Lnet/sf/saxon/value/AtomicValue;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0, v9, v6}, Lnet/sf/saxon/functions/TransformFn;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    const-string v1, "SAXON"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0, v14, v6}, Lnet/sf/saxon/functions/TransformFn;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    const-string v1, "saxonica.com"

    invoke-virtual {v6, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v4}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v1

    const-string v2, "Saxonica"

    invoke-virtual {v1, v2}, Lnet/sf/saxon/str/UnicodeString;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0, v14, v6}, Lnet/sf/saxon/functions/TransformFn;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_4
    invoke-virtual {v0, v4}, Lnet/sf/saxon/functions/TransformFn;->c(Lnet/sf/saxon/value/AtomicValue;)Z

    move-result v1

    if-nez v1, :cond_c

    invoke-virtual {v0, v10, v6}, Lnet/sf/saxon/functions/TransformFn;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :pswitch_5
    invoke-virtual {v0, v4}, Lnet/sf/saxon/functions/TransformFn;->c(Lnet/sf/saxon/value/AtomicValue;)Z

    move-result v1

    if-nez v1, :cond_c

    sget-object v1, Lnet/sf/saxon/lib/Feature;->DISABLE_XSL_EVALUATE:Lnet/sf/saxon/lib/Feature;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object/from16 v5, p2

    invoke-virtual {v5, v1, v2}, Lnet/sf/saxon/s9api/Processor;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    goto/16 :goto_3

    :pswitch_6
    move-object/from16 v5, p2

    :try_start_0
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    const-wide v3, 0x4008cccccccccccdL    # 3.1

    cmpl-double v1, v1, v3

    if-lez v1, :cond_11

    invoke-virtual {v0, v15, v6}, Lnet/sf/saxon/functions/TransformFn;->u(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    invoke-virtual {v0, v15, v6}, Lnet/sf/saxon/functions/TransformFn;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_7
    move-object/from16 v5, p2

    :try_start_1
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    const-wide v7, 0x3ff199999999999aL    # 1.1

    cmpl-double v1, v3, v7

    if-lez v1, :cond_11

    invoke-virtual {v0, v2, v6}, Lnet/sf/saxon/functions/TransformFn;->u(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    invoke-virtual {v0, v2, v6}, Lnet/sf/saxon/functions/TransformFn;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_8
    move-object/from16 v5, p2

    invoke-virtual {v0, v4}, Lnet/sf/saxon/functions/TransformFn;->c(Lnet/sf/saxon/value/AtomicValue;)Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v1

    if-eqz v1, :cond_d

    sget-object v1, Lnet/sf/saxon/lib/Feature;->XSLT_SCHEMA_AWARE:Lnet/sf/saxon/lib/Feature;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v5, v1, v2}, Lnet/sf/saxon/s9api/Processor;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    goto :goto_3

    :cond_d
    invoke-virtual {v0, v3, v6}, Lnet/sf/saxon/functions/TransformFn;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_e
    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v0, v3, v6}, Lnet/sf/saxon/functions/TransformFn;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_9
    move-object/from16 v5, p2

    invoke-virtual {v0, v4}, Lnet/sf/saxon/functions/TransformFn;->c(Lnet/sf/saxon/value/AtomicValue;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v0, v11, v6}, Lnet/sf/saxon/functions/TransformFn;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_a
    move-object/from16 v5, p2

    invoke-virtual {v0, v4}, Lnet/sf/saxon/functions/TransformFn;->c(Lnet/sf/saxon/value/AtomicValue;)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v0, v12, v6}, Lnet/sf/saxon/functions/TransformFn;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_b
    move-object/from16 v5, p2

    invoke-virtual {v0, v4}, Lnet/sf/saxon/functions/TransformFn;->c(Lnet/sf/saxon/value/AtomicValue;)Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v1

    if-nez v1, :cond_11

    invoke-virtual {v0, v13, v6}, Lnet/sf/saxon/functions/TransformFn;->u(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_f
    invoke-virtual/range {p2 .. p2}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2, v1}, Lnet/sf/saxon/Configuration;->isLicensedFeature(I)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-object v1, Lnet/sf/saxon/lib/Feature;->STREAMABILITY:Lnet/sf/saxon/lib/Feature;

    const-string v2, "off"

    invoke-virtual {v5, v1, v2}, Lnet/sf/saxon/s9api/Processor;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    goto :goto_3

    :cond_10
    move-object v5, v1

    move-object/from16 p1, v2

    move-object/from16 v16, v3

    :cond_11
    :goto_3
    move-object/from16 v2, p1

    move-object v1, v5

    move-object/from16 v3, v16

    goto/16 :goto_0

    :cond_12
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x722ddfa7 -> :sswitch_b
        -0x66ddd0c4 -> :sswitch_a
        -0x66196ab9 -> :sswitch_9
        -0x62ce6d0b -> :sswitch_8
        -0x3589082c -> :sswitch_7
        -0x25968458 -> :sswitch_6
        -0x1b183c8d -> :sswitch_5
        0x26e02067 -> :sswitch_4
        0x2950fb6a -> :sswitch_3
        0x39b58ca9 -> :sswitch_2
        0x46a5cf0a -> :sswitch_1
        0x5c6f6dfa -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final t(Ljava/util/Map;Lnet/sf/saxon/s9api/XsltCompiler;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/Sequence;",
            ">;",
            "Lnet/sf/saxon/s9api/XsltCompiler;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "static-params"

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/om/Sequence;

    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {p1}, Lnet/sf/saxon/ma/map/MapItem;->keys()Lnet/sf/saxon/tree/iter/AtomicIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Lnet/sf/saxon/tree/iter/AtomicIterator;->next()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v1

    if-eqz v1, :cond_2

    instance-of v2, v1, Lnet/sf/saxon/value/QNameValue;

    if-eqz v2, :cond_1

    new-instance v2, Lnet/sf/saxon/s9api/QName;

    move-object v3, v1

    check-cast v3, Lnet/sf/saxon/value/QNameValue;

    invoke-virtual {v3}, Lnet/sf/saxon/value/QualifiedNameValue;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/sf/saxon/s9api/QName;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/ma/map/MapItem;->get(Lnet/sf/saxon/value/AtomicValue;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    if-nez p3, :cond_0

    invoke-virtual {p0, v1}, Lnet/sf/saxon/functions/TransformFn;->f(Lnet/sf/saxon/om/Sequence;)V

    :cond_0
    invoke-static {v1}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object v1

    invoke-virtual {p2, v2, v1}, Lnet/sf/saxon/s9api/XsltCompiler;->setParameter(Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/XdmValue;)V

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Parameter names in static-params must be supplied as QNames"

    const-string p2, "FOXT0002"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    return-void
.end method

.method public final u(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No XSLT processor is available with xsl:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " = "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FOXT0001"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method
