.class public Lnet/sf/saxon/ma/json/JsonToXMLFn;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"


# static fields
.field public static OPTION_DETAILS:Lnet/sf/saxon/functions/OptionsParameter;


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    new-instance v0, Lnet/sf/saxon/type/SpecificFunctionType;

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->SINGLE_STRING:Lnet/sf/saxon/value/SequenceType;

    filled-new-array {v1}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    new-instance v2, Lnet/sf/saxon/functions/OptionsParameter;

    invoke-direct {v2}, Lnet/sf/saxon/functions/OptionsParameter;-><init>()V

    sget-object v3, Lnet/sf/saxon/value/SequenceType;->SINGLE_BOOLEAN:Lnet/sf/saxon/value/SequenceType;

    sget-object v4, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    const-string v5, "liberal"

    invoke-virtual {v2, v5, v3, v4}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/Sequence;)V

    const-string v5, "duplicates"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v1, v6}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/Sequence;)V

    const-string v1, "use-first"

    const-string v7, "retain"

    const-string v8, "reject"

    filled-new-array {v8, v1, v7}, [Ljava/lang/String;

    move-result-object v1

    const-string v7, "FOJS0005"

    invoke-virtual {v2, v5, v7, v1}, Lnet/sf/saxon/functions/OptionsParameter;->setAllowedValues(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "validate"

    invoke-virtual {v2, v1, v3, v4}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/Sequence;)V

    const-string v1, "escape"

    invoke-virtual {v2, v1, v3, v4}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/Sequence;)V

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    const-string v1, "fallback"

    invoke-virtual {v2, v1, v0, v6}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/Sequence;)V

    sput-object v2, Lnet/sf/saxon/ma/json/JsonToXMLFn;->OPTION_DETAILS:Lnet/sf/saxon/functions/OptionsParameter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v0, p2, v0

    invoke-interface {v0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x1

    aget-object p2, p2, v1

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/ma/map/MapItem;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p0, v0, p2, p1}, Lnet/sf/saxon/ma/json/JsonToXMLFn;->eval(Ljava/lang/String;Lnet/sf/saxon/ma/map/MapItem;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/om/SequenceTool;->itemOrEmpty(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    return-object p0
.end method

.method public eval(Ljava/lang/String;Lnet/sf/saxon/ma/map/MapItem;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/ma/json/JsonParser;

    invoke-direct {v0}, Lnet/sf/saxon/ma/json/JsonParser;-><init>()V

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object v1

    iget-object v1, v1, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->optionDetails:Lnet/sf/saxon/functions/OptionsParameter;

    invoke-virtual {v1, p2, p3}, Lnet/sf/saxon/functions/OptionsParameter;->processSuppliedOptions(Lnet/sf/saxon/ma/map/MapItem;Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/Executable;->isSchemaAware()Z

    move-result v2

    const/4 v3, 0x1

    invoke-static {v1, v3, v2}, Lnet/sf/saxon/ma/json/JsonParser;->getFlags(Ljava/util/Map;ZZ)I

    move-result v2

    and-int/lit8 v3, v2, 0x40

    if-nez v3, :cond_1

    and-int/lit16 v3, v2, 0x1e0

    if-nez v3, :cond_3

    and-int/lit8 v3, v2, 0x8

    if-eqz v3, :cond_0

    or-int/lit16 v2, v2, 0x100

    goto :goto_0

    :cond_0
    or-int/lit8 v2, v2, 0x20

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "json-to-xml: duplicates=use-last is not allowed"

    const-string p2, "FOJS0005"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    const/16 v2, 0x20

    const/4 v1, 0x0

    :cond_3
    :goto_0
    new-instance v3, Lnet/sf/saxon/ma/json/JsonHandlerXML;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v3, p3, p0, v2}, Lnet/sf/saxon/ma/json/JsonHandlerXML;-><init>(Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;I)V

    if-eqz p2, :cond_4

    invoke-virtual {v3, v1, p3}, Lnet/sf/saxon/ma/json/JsonHandler;->setFallbackFunction(Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)V

    :cond_4
    invoke-virtual {v0, p1, v2, v3, p3}, Lnet/sf/saxon/ma/json/JsonParser;->parse(Ljava/lang/String;ILnet/sf/saxon/ma/json/JsonHandler;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {v3}, Lnet/sf/saxon/ma/json/JsonHandlerXML;->getResult()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method
