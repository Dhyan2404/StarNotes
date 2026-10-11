.class public Lnet/sf/saxon/ma/json/XMLToJsonFn;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/functions/PushableFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/ma/json/XMLToJsonFn$b;
    }
.end annotation


# static fields
.field public static final h:Lnet/sf/saxon/type/FunctionItemType;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lnet/sf/saxon/type/SpecificFunctionType;

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->SINGLE_STRING:Lnet/sf/saxon/value/SequenceType;

    filled-new-array {v1}, [Lnet/sf/saxon/value/SequenceType;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lnet/sf/saxon/type/SpecificFunctionType;-><init>([Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/value/SequenceType;)V

    sput-object v0, Lnet/sf/saxon/ma/json/XMLToJsonFn;->h:Lnet/sf/saxon/type/FunctionItemType;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static makeOptionsParameter()Lnet/sf/saxon/functions/OptionsParameter;
    .locals 4

    new-instance v0, Lnet/sf/saxon/functions/OptionsParameter;

    invoke-direct {v0}, Lnet/sf/saxon/functions/OptionsParameter;-><init>()V

    sget-object v1, Lnet/sf/saxon/value/SequenceType;->SINGLE_BOOLEAN:Lnet/sf/saxon/value/SequenceType;

    sget-object v2, Lnet/sf/saxon/value/BooleanValue;->FALSE:Lnet/sf/saxon/value/BooleanValue;

    const-string v3, "indent"

    invoke-virtual {v0, v3, v1, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/Sequence;)V

    sget-object v1, Lnet/sf/saxon/ma/json/XMLToJsonFn;->h:Lnet/sf/saxon/type/FunctionItemType;

    const/16 v2, 0x6000

    invoke-static {v1, v2}, Lnet/sf/saxon/value/SequenceType;->makeSequenceType(Lnet/sf/saxon/type/ItemType;I)Lnet/sf/saxon/value/SequenceType;

    move-result-object v1

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object v2

    const-string v3, "number-formatter"

    invoke-virtual {v0, v3, v1, v2}, Lnet/sf/saxon/functions/OptionsParameter;->addAllowedOption(Ljava/lang/String;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/om/Sequence;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/str/UniStringConsumer;Lnet/sf/saxon/ma/json/XMLToJsonFn$b;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p4}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p0

    invoke-virtual {p0, p4}, Lnet/sf/saxon/event/PipelineConfiguration;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    new-instance v0, Lnet/sf/saxon/ma/json/JsonReceiver;

    invoke-direct {v0, p0, p4, p2}, Lnet/sf/saxon/ma/json/JsonReceiver;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/str/UniStringConsumer;)V

    iget-boolean p0, p3, Lnet/sf/saxon/ma/json/XMLToJsonFn$b;->a:Z

    invoke-virtual {v0, p0}, Lnet/sf/saxon/ma/json/JsonReceiver;->setIndenting(Z)V

    iget-object p0, p3, Lnet/sf/saxon/ma/json/XMLToJsonFn$b;->b:Lnet/sf/saxon/om/Function;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/ma/json/JsonReceiver;->setNumberFormatter(Lnet/sf/saxon/om/Function;)V

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p0

    const/16 p2, 0x9

    if-ne p0, p2, :cond_1

    new-instance p0, Lnet/sf/saxon/event/DocumentValidator;

    const-string p2, "FOJS0006"

    invoke-direct {p0, v0, p2}, Lnet/sf/saxon/event/DocumentValidator;-><init>(Lnet/sf/saxon/event/Receiver;Ljava/lang/String;)V

    move-object v0, p0

    :cond_1
    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->open()V

    const/4 p0, 0x0

    sget-object p2, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-interface {p1, v0, p0, p2}, Lnet/sf/saxon/om/NodeInfo;->copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->close()V

    return-void
.end method

.method public final b(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/ma/json/XMLToJsonFn$b;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    aget-object p2, p2, v2

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getDetails()Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;

    move-result-object p0

    iget-object p0, p0, Lnet/sf/saxon/functions/registry/BuiltInFunctionSet$Entry;->optionDetails:Lnet/sf/saxon/functions/OptionsParameter;

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/functions/OptionsParameter;->processSuppliedOptions(Lnet/sf/saxon/ma/map/MapItem;Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Map;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/ma/json/XMLToJsonFn$b;

    invoke-direct {p1, v1}, Lnet/sf/saxon/ma/json/XMLToJsonFn$b;-><init>(Lnet/sf/saxon/ma/json/XMLToJsonFn$a;)V

    const-string p2, "indent"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/Sequence;

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {p2}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result p2

    iput-boolean p2, p1, Lnet/sf/saxon/ma/json/XMLToJsonFn$b;->a:Z

    const-string p2, "number-formatter"

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/Sequence;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/om/Function;

    iput-object p0, p1, Lnet/sf/saxon/ma/json/XMLToJsonFn$b;->b:Lnet/sf/saxon/om/Function;

    :cond_0
    return-object p1

    :cond_1
    new-instance p0, Lnet/sf/saxon/ma/json/XMLToJsonFn$b;

    invoke-direct {p0, v1}, Lnet/sf/saxon/ma/json/XMLToJsonFn$b;-><init>(Lnet/sf/saxon/ma/json/XMLToJsonFn$a;)V

    return-object p0
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

    check-cast v0, Lnet/sf/saxon/om/NodeInfo;

    if-nez v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/ma/json/XMLToJsonFn;->b(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/ma/json/XMLToJsonFn$b;

    move-result-object p2

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/event/PipelineConfiguration;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    new-instance v1, Lnet/sf/saxon/str/UnicodeBuilder;

    invoke-direct {v1}, Lnet/sf/saxon/str/UnicodeBuilder;-><init>()V

    invoke-virtual {p0, v0, v1, p2, p1}, Lnet/sf/saxon/ma/json/XMLToJsonFn;->a(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/str/UniStringConsumer;Lnet/sf/saxon/ma/json/XMLToJsonFn$b;Lnet/sf/saxon/expr/XPathContext;)V

    new-instance p0, Lnet/sf/saxon/value/StringValue;

    invoke-virtual {v1}, Lnet/sf/saxon/str/UnicodeBuilder;->toUnicodeString()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/value/StringValue;-><init>(Lnet/sf/saxon/str/UnicodeString;)V

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "XmlToJsonFn"

    return-object p0
.end method

.method public process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object v1, p3, v0

    invoke-interface {v1}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v1, :cond_0

    invoke-virtual {p0, p2, p3}, Lnet/sf/saxon/ma/json/XMLToJsonFn;->b(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/ma/json/XMLToJsonFn$b;

    move-result-object p3

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v2

    invoke-virtual {v2, p2}, Lnet/sf/saxon/event/PipelineConfiguration;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    sget-object v2, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {p1, v0, v2}, Lnet/sf/saxon/event/Outputter;->getStringReceiver(ZLnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/str/UniStringConsumer;

    move-result-object p1

    invoke-virtual {p0, v1, p1, p3, p2}, Lnet/sf/saxon/ma/json/XMLToJsonFn;->a(Lnet/sf/saxon/om/NodeInfo;Lnet/sf/saxon/str/UniStringConsumer;Lnet/sf/saxon/ma/json/XMLToJsonFn$b;Lnet/sf/saxon/expr/XPathContext;)V

    :cond_0
    return-void
.end method
