.class public Lnet/sf/saxon/ma/json/ParseJsonFn;
.super Lnet/sf/saxon/ma/json/JsonToXMLFn;
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

    new-instance v2, Lnet/sf/saxon/type/SpecificFunctionType;

    filled-new-array {v1}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/value/SequenceType;->SINGLE_ATOMIC:Lnet/sf/saxon/value/SequenceType;

    invoke-direct {v2, v3, v4}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    new-instance v3, Lnet/sf/saxon/functions/OptionsParameter;

    invoke-direct {v3}, Lnet/sf/saxon/functions/OptionsParameter;-><init>()V

    sget-object v4, Lnet/sf/saxon/value/SequenceType;->SINGLE_BOOLEAN:Lnet/sf/saxon/value/SequenceType;

    sget-object v5, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    const-string v6, "liberal"

    invoke-virtual {v3, v6, v4, v5}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/Sequence;)V

    const-string v6, "use-first"

    invoke-static {v6}, Lnet/sf/saxon/value/StringValue;->bmp(Ljava/lang/String;)Lnet/sf/saxon/value/StringValue;

    move-result-object v7

    const-string v8, "duplicates"

    invoke-virtual {v3, v8, v1, v7}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/Sequence;)V

    const-string v1, "reject"

    const-string v7, "use-last"

    filled-new-array {v1, v6, v7}, [Ljava/lang/String;

    move-result-object v1

    const-string v6, "FOJS0005"

    invoke-virtual {v3, v8, v6, v1}, Lnet/sf/saxon/functions/OptionsParameter;->setAllowedValues(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    const-string v1, "escape"

    invoke-virtual {v3, v1, v4, v5}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/Sequence;)V

    const/16 v1, 0x4000

    invoke-static {v0, v1}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v0

    const-string v4, "fallback"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v0, v5}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/Sequence;)V

    const-string v0, "number-parser"

    invoke-static {v2, v1}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-virtual {v3, v0, v1, v5}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/Sequence;)V

    sput-object v3, Lnet/sf/saxon/ma/json/ParseJsonFn;->OPTION_DETAILS:Lnet/sf/saxon/functions/OptionsParameter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/ma/json/JsonToXMLFn;-><init>()V

    return-void
.end method

.method public static parse(Ljava/lang/String;Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/om/Sequence;",
            ">;",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")",
            "Lnet/sf/saxon/om/Item;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/ma/json/JsonParser;

    invoke-direct {v0}, Lnet/sf/saxon/ma/json/JsonParser;-><init>()V

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-static {p1, v1, v1}, Lnet/sf/saxon/ma/json/JsonParser;->getFlags(Ljava/util/Map;ZZ)I

    move-result v1

    :cond_0
    new-instance v2, Lnet/sf/saxon/ma/json/JsonHandlerMap;

    invoke-direct {v2, p2, v1}, Lnet/sf/saxon/ma/json/JsonHandlerMap;-><init>(Lnet/sf/saxon/expr/XPathContext;I)V

    and-int/lit8 v3, v1, 0x20

    if-nez v3, :cond_3

    and-int/lit16 v3, v1, 0x1e0

    if-nez v3, :cond_1

    or-int/lit16 v1, v1, 0x80

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {v2, p1, p2}, Lnet/sf/saxon/ma/json/JsonHandler;->setFallbackFunction(Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/ma/json/JsonParser;->setNumberParser(Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)V

    :cond_2
    invoke-virtual {v0, p0, v1, v2, p2}, Lnet/sf/saxon/ma/json/JsonParser;->parse(Ljava/lang/String;ILnet/sf/saxon/ma/json/JsonHandler;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {v2}, Lnet/sf/saxon/ma/json/JsonHandlerMap;->getResult()Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0

    :cond_3
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "parse-json: duplicates=retain is not allowed"

    const-string p2, "FOJS0005"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public eval(Ljava/lang/String;Lnet/sf/saxon/ma/map/MapItem;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object p0

    iget-object p0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->optionDetails:Lnet/sf/saxon/functions/OptionsParameter;

    invoke-virtual {p0, p2, p3}, Lnet/sf/saxon/functions/OptionsParameter;->processSuppliedOptions(Lnet/sf/saxon/ma/map/MapItem;Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Map;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-static {p1, p0, p3}, Lnet/sf/saxon/ma/json/ParseJsonFn;->parse(Ljava/lang/String;Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method
