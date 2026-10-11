.class public Lnet/sf/saxon/expr/Literal;
.super Lnet/sf/saxon/expr/Expression;
.source "SourceFile"


# static fields
.field public static final synthetic o:Z


# instance fields
.field public final n:Lnet/sf/saxon/om/GroundedValue;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/om/GroundedValue;)V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/expr/Expression;-><init>()V

    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->reduce()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    return-void
.end method

.method private synthetic c(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/om/Item;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    const/high16 v0, 0x80000

    invoke-virtual {p1, p2, p0, v0}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method

.method public static synthetic d(Lnet/sf/saxon/trace/ExpressionPresenter;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/Literal;->g(Lnet/sf/saxon/trace/ExpressionPresenter;Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static synthetic e(Lnet/sf/saxon/expr/Literal;Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/om/Item;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/expr/Literal;->c(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/om/Item;)V

    return-void
.end method

.method public static exportAtomicValue(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->getOptions()Lnet/sf/saxon/trace/ExpressionPresenter$Options;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;

    iget-object v0, v0, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;->target:Ljava/lang/String;

    const-string v1, "JS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->checkValidInJavascript()V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v0

    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->STRING:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "val"

    if-eqz v2, :cond_1

    const-string p0, "str"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p1, v3, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    goto/16 :goto_1

    :cond_1
    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->INTEGER:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string p0, "int"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p1, v3, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    goto/16 :goto_1

    :cond_2
    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->DECIMAL:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string p0, "dec"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p1, v3, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    goto/16 :goto_1

    :cond_3
    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->DOUBLE:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string p0, "dbl"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p1, v3, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    goto :goto_1

    :cond_4
    sget-object v2, Lnet/sf/saxon/type/BuiltInAtomicType;->BOOLEAN:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    check-cast p0, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/BooleanValue;->effectiveBooleanValue()Z

    move-result p0

    if-eqz p0, :cond_5

    const-string p0, "true"

    goto :goto_0

    :cond_5
    const-string p0, "false"

    :goto_0
    invoke-virtual {p1, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    goto :goto_1

    :cond_6
    instance-of v2, p0, Lnet/sf/saxon/value/QualifiedNameValue;

    const-string v4, "type"

    if-eqz v2, :cond_8

    const-string v1, "qName"

    invoke-virtual {p1, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    check-cast p0, Lnet/sf/saxon/value/QualifiedNameValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/QualifiedNameValue;->getPrefix()Ljava/lang/String;

    move-result-object v1

    const-string v2, "pre"

    invoke-virtual {p1, v2, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "uri"

    invoke-virtual {p0}, Lnet/sf/saxon/value/QualifiedNameValue;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "loc"

    invoke-virtual {p0}, Lnet/sf/saxon/value/QualifiedNameValue;->getLocalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lnet/sf/saxon/type/BuiltInAtomicType;->QNAME:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    invoke-interface {v0}, Lnet/sf/saxon/type/SchemaType;->getEQName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v4, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    goto :goto_1

    :cond_8
    const-string p0, "atomic"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p1, v3, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lnet/sf/saxon/type/AlphaCode;->fromItemType(Lnet/sf/saxon/type/ItemType;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v4, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    :goto_1
    return-void
.end method

.method public static exportValue(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "empty"

    invoke-virtual {p1, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    goto/16 :goto_2

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v0, :cond_1

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/Literal;->exportAtomicValue(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/trace/ExpressionPresenter;)V

    goto/16 :goto_2

    :cond_1
    instance-of v0, p0, Lnet/sf/saxon/value/IntegerRange;

    const-string v1, ""

    if-eqz v0, :cond_2

    const-string v0, "range"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Lnet/sf/saxon/value/IntegerRange;

    invoke-virtual {p0}, Lnet/sf/saxon/value/IntegerRange;->getStart()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "from"

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/value/IntegerRange;->getEnd()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "to"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    goto/16 :goto_2

    :cond_2
    instance-of v0, p0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_b

    const-string v0, "node"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "kind"

    invoke-virtual {p1, v2, v1}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->getOptions()Lnet/sf/saxon/trace/ExpressionPresenter$Options;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;

    iget-boolean v1, v1, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;->explaining:Z

    if-eqz v1, :cond_3

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getDisplayName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const-string v0, "name"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_3
    const/4 v1, 0x1

    const-string v2, "content"

    if-eq v0, v1, :cond_9

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    const/4 v1, 0x7

    if-eq v0, v1, :cond_5

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    const/16 v1, 0x9

    if-eq v0, v1, :cond_9

    const/16 v1, 0xd

    if-eq v0, v1, :cond_5

    goto/16 :goto_0

    :cond_4
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_5
    invoke-static {p0}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "localName"

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "prefix"

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "ns"

    invoke-virtual {v0}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-interface {p0}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v2, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljava/util/Properties;

    invoke-direct {v1}, Ljava/util/Properties;-><init>()V

    const-string v3, "method"

    const-string v4, "xml"

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "indent"

    const-string v4, "no"

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    const-string v3, "omit-xml-declaration"

    const-string v4, "yes"

    invoke-virtual {v1, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-static {p0, v3, v1}, Lnet/sf/saxon/query/QueryResult;->serialize(Lnet/sf/saxon/om/NodeInfo;Ljavax/xml/transform/Result;Ljava/util/Properties;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "baseUri"

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    :goto_0
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    goto/16 :goto_2

    :cond_b
    instance-of v0, p0, Lnet/sf/saxon/ma/map/MapItem;

    if-eqz v0, :cond_d

    const-string v0, "map"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p0, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/MapItem;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "size"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lnet/sf/saxon/ma/map/MapItem;->keyValuePairs()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/ma/map/KeyValuePair;

    iget-object v1, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-static {v1, p1}, Lnet/sf/saxon/expr/Literal;->exportAtomicValue(Lnet/sf/saxon/value/AtomicValue;Lnet/sf/saxon/trace/ExpressionPresenter;)V

    iget-object v0, v0, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-static {v0, p1}, Lnet/sf/saxon/expr/Literal;->exportValue(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/trace/ExpressionPresenter;)V

    goto :goto_1

    :cond_c
    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    goto :goto_2

    :cond_d
    instance-of v0, p0, Lnet/sf/saxon/om/Function;

    if-eqz v0, :cond_e

    check-cast p0, Lnet/sf/saxon/om/Function;

    invoke-interface {p0, p1}, Lnet/sf/saxon/om/Function;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    goto :goto_2

    :cond_e
    instance-of v0, p0, Lnet/sf/saxon/value/AnyExternalObject;

    if-eqz v0, :cond_10

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->getOptions()Lnet/sf/saxon/trace/ExpressionPresenter$Options;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;

    iget-boolean v0, v0, Lnet/sf/saxon/trace/ExpressionPresenter$ExportOptions;->explaining:Z

    if-eqz v0, :cond_f

    const-string v0, "externalObject"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    check-cast p0, Lnet/sf/saxon/value/AnyExternalObject;

    invoke-interface {p0}, Lnet/sf/saxon/value/AnyExternalObject;->getWrappedObject()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    const-string v0, "class"

    invoke-virtual {p1, v0, p0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    goto :goto_2

    :cond_f
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Cannot export a stylesheet containing literal values bound to external Java objects"

    const-string v0, "SXST0070"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_10
    const-string v0, "literal"

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->startElement(Ljava/lang/String;)I

    instance-of v0, p0, Lnet/sf/saxon/om/GroundedValue;

    if-eqz v0, :cond_11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, p0

    check-cast v2, Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {v2}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "count"

    invoke-virtual {p1, v1, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->emitAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    invoke-interface {p0}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    new-instance v0, Lcom/sunia/HTREnginev2/tzi;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/tzi;-><init>(Lnet/sf/saxon/trace/ExpressionPresenter;)V

    invoke-static {p0, v0}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trace/ExpressionPresenter;->endElement()I

    :goto_2
    return-void
.end method

.method public static synthetic g(Lnet/sf/saxon/trace/ExpressionPresenter;Lnet/sf/saxon/om/Item;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p1, p0}, Lnet/sf/saxon/expr/Literal;->exportValue(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/trace/ExpressionPresenter;)V

    return-void
.end method

.method public static hasEffectiveBooleanValue(Lnet/sf/saxon/expr/Expression;Z)Z
    .locals 2

    instance-of v0, p0, Lnet/sf/saxon/expr/Literal;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    check-cast p0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->effectiveBooleanValue()Z

    move-result p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, p0, :cond_0

    const/4 v1, 0x1

    :catch_0
    :cond_0
    return v1
.end method

.method public static isAtomic(Lnet/sf/saxon/expr/Expression;)Z
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    instance-of p0, p0, Lnet/sf/saxon/value/AtomicValue;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isConstantBoolean(Lnet/sf/saxon/expr/Expression;Z)Z
    .locals 2

    instance-of v0, p0, Lnet/sf/saxon/expr/Literal;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/value/BooleanValue;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/value/BooleanValue;

    invoke-virtual {p0}, Lnet/sf/saxon/value/BooleanValue;->getBooleanValue()Z

    move-result p0

    if-ne p0, p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isConstantOne(Lnet/sf/saxon/expr/Expression;)Z
    .locals 6

    instance-of v0, p0, Lnet/sf/saxon/expr/Literal;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/value/Int64Value;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p0}, Lnet/sf/saxon/value/Int64Value;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    cmp-long p0, v2, v4

    if-nez p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/expr/Literal;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/expr/Literal;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Literal;->getGroundedValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static makeEmptySequence()Lnet/sf/saxon/expr/Literal;
    .locals 2

    new-instance v0, Lnet/sf/saxon/expr/Literal;

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/expr/Literal;-><init>(Lnet/sf/saxon/om/GroundedValue;)V

    return-object v0
.end method

.method public static makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;
    .locals 1

    .line 1
    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->reduce()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p0

    .line 2
    instance-of v0, p0, Lnet/sf/saxon/value/StringValue;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lnet/sf/saxon/expr/StringLiteral;

    check-cast p0, Lnet/sf/saxon/value/StringValue;

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/StringLiteral;-><init>(Lnet/sf/saxon/value/StringValue;)V

    return-object v0

    .line 4
    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/om/Function;

    if-eqz v0, :cond_1

    instance-of v0, p0, Lnet/sf/saxon/ma/map/MapItem;

    if-nez v0, :cond_1

    instance-of v0, p0, Lnet/sf/saxon/ma/arrays/ArrayItem;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lnet/sf/saxon/functions/hof/FunctionLiteral;

    check-cast p0, Lnet/sf/saxon/om/Function;

    invoke-direct {v0, p0}, Lnet/sf/saxon/functions/hof/FunctionLiteral;-><init>(Lnet/sf/saxon/om/Function;)V

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Lnet/sf/saxon/expr/Literal;

    invoke-direct {v0, p0}, Lnet/sf/saxon/expr/Literal;-><init>(Lnet/sf/saxon/om/GroundedValue;)V

    return-object v0
.end method

.method public static makeLiteral(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Literal;
    .locals 0

    .line 7
    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->makeLiteral(Lnet/sf/saxon/om/GroundedValue;)Lnet/sf/saxon/expr/Literal;

    move-result-object p0

    .line 8
    invoke-static {p1, p0}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p0
.end method


# virtual methods
.method public addToPathMap(Lnet/sf/saxon/expr/parser/PathMap;Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;)Lnet/sf/saxon/expr/parser/PathMap$PathMapNodeSet;
    .locals 0

    return-object p2
.end method

.method public computeCardinality()I
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v0

    const/16 v1, 0x2000

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    instance-of v0, p0, Lnet/sf/saxon/value/AtomicValue;

    const/16 v2, 0x4000

    if-eqz v0, :cond_1

    return v2

    :cond_1
    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_2

    return v1

    :cond_2
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p0

    if-eqz p0, :cond_3

    const p0, 0x8000

    return p0

    :cond_3
    return v2
.end method

.method public computeHashCode()I
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    instance-of v0, v0, Lnet/sf/saxon/om/AtomicSequence;

    if-eqz v0, :cond_0

    invoke-static {}, Lnet/sf/saxon/expr/sort/SimpleTypeComparison;->getInstance()Lnet/sf/saxon/expr/sort/SimpleTypeComparison;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    check-cast p0, Lnet/sf/saxon/om/AtomicSequence;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/expr/sort/SimpleTypeComparison;->hash(Lnet/sf/saxon/om/AtomicSequence;)I

    move-result p0

    return p0

    :cond_0
    invoke-super {p0}, Lnet/sf/saxon/expr/Expression;->computeHashCode()I

    move-result p0

    return p0
.end method

.method public computeSpecialProperties()I
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result p0

    if-nez p0, :cond_0

    const/high16 p0, 0xdff0000

    return p0

    :cond_0
    const/high16 p0, 0x800000

    return p0
.end method

.method public copy(Lnet/sf/saxon/expr/parser/RebindingMap;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    new-instance p1, Lnet/sf/saxon/expr/Literal;

    iget-object v0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    invoke-direct {p1, v0}, Lnet/sf/saxon/expr/Literal;-><init>(Lnet/sf/saxon/om/GroundedValue;)V

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/parser/ExpressionTool;->copyLocationInfo(Lnet/sf/saxon/expr/Expression;Lnet/sf/saxon/expr/Expression;)V

    return-object p1
.end method

.method public effectiveBooleanValue(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->effectiveBooleanValue()Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    instance-of v0, p1, Lnet/sf/saxon/expr/Literal;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    check-cast p1, Lnet/sf/saxon/expr/Literal;

    iget-object p1, p1, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    :goto_0
    invoke-interface {p0}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v2

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-eqz v0, :cond_8

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    if-ne v0, v2, :cond_3

    goto :goto_0

    :cond_3
    instance-of v3, v0, Lnet/sf/saxon/om/NodeInfo;

    instance-of v4, v2, Lnet/sf/saxon/om/NodeInfo;

    if-eq v3, v4, :cond_4

    return v1

    :cond_4
    if-eqz v3, :cond_6

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_5
    return v1

    :cond_6
    instance-of v3, v0, Lnet/sf/saxon/value/AtomicValue;

    instance-of v4, v2, Lnet/sf/saxon/value/AtomicValue;

    if-eq v3, v4, :cond_7

    return v1

    :cond_7
    if-eqz v3, :cond_8

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    check-cast v2, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/value/AtomicValue;->isIdentical(Lnet/sf/saxon/value/AtomicValue;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-virtual {v0}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v0

    invoke-virtual {v2}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v2

    if-ne v0, v2, :cond_8

    goto :goto_0

    :cond_8
    :goto_1
    return v1
.end method

.method public evaluateAsString(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/str/UnicodeString;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lnet/sf/saxon/expr/Literal;->evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/value/AtomicValue;

    if-nez p0, :cond_0

    invoke-static {}, Lnet/sf/saxon/str/EmptyUnicodeString;->getInstance()Lnet/sf/saxon/str/EmptyUnicodeString;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/value/AtomicValue;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p0

    return-object p0
.end method

.method public evaluateItem(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/Item;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->head()Lnet/sf/saxon/om/Item;

    move-result-object p0

    return-object p0
.end method

.method public evaluatePendingUpdates(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/PendingUpdateList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lnet/sf/saxon/expr/Expression;->evaluatePendingUpdates(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/expr/PendingUpdateList;)V

    :goto_0
    return-void
.end method

.method public export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    invoke-static {p0, p1}, Lnet/sf/saxon/expr/Literal;->exportValue(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/trace/ExpressionPresenter;)V

    return-void
.end method

.method public final getDependencies()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getExpressionName()Ljava/lang/String;
    .locals 0

    const-string p0, "literal"

    return-object p0
.end method

.method public getGroundedValue()Lnet/sf/saxon/om/GroundedValue;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    return-object p0
.end method

.method public getImplementationMethod()I
    .locals 0

    const/4 p0, 0x7

    return p0
.end method

.method public getIntegerBounds()[Lnet/sf/saxon/value/IntegerValue;
    .locals 6

    iget-object v0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    instance-of v1, v0, Lnet/sf/saxon/value/IntegerValue;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eqz v1, :cond_0

    new-array p0, v4, [Lnet/sf/saxon/value/IntegerValue;

    move-object v1, v0

    check-cast v1, Lnet/sf/saxon/value/IntegerValue;

    aput-object v1, p0, v3

    check-cast v0, Lnet/sf/saxon/value/IntegerValue;

    aput-object v0, p0, v2

    return-object p0

    :cond_0
    instance-of v1, v0, Lnet/sf/saxon/value/IntegerRange;

    if-eqz v1, :cond_1

    new-array v1, v4, [Lnet/sf/saxon/value/IntegerValue;

    check-cast v0, Lnet/sf/saxon/value/IntegerRange;

    invoke-virtual {v0}, Lnet/sf/saxon/value/IntegerRange;->getStart()J

    move-result-wide v4

    invoke-static {v4, v5}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object v0

    aput-object v0, v1, v3

    iget-object p0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    check-cast p0, Lnet/sf/saxon/value/IntegerRange;

    invoke-virtual {p0}, Lnet/sf/saxon/value/IntegerRange;->getEnd()J

    move-result-wide v3

    invoke-static {v3, v4}, Lnet/sf/saxon/value/Int64Value;->makeIntegerValue(J)Lnet/sf/saxon/value/Int64Value;

    move-result-object p0

    aput-object p0, v1, v2

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getItemType()Lnet/sf/saxon/type/ItemType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    instance-of v1, v0, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v1, :cond_0

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    invoke-static {p0, v0}, Lnet/sf/saxon/om/SequenceTool;->getItemType(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/type/TypeHierarchy;)Lnet/sf/saxon/type/ItemType;

    move-result-object p0

    return-object p0
.end method

.method public getNetCost()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v0

    if-nez v0, :cond_0

    sget-object p0, Lnet/sf/saxon/type/UType;->VOID:Lnet/sf/saxon/type/UType;

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    instance-of v1, v0, Lnet/sf/saxon/value/AtomicValue;

    if-eqz v1, :cond_1

    check-cast v0, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v0}, Lnet/sf/saxon/value/AtomicValue;->getUType()Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v0, v0, Lnet/sf/saxon/om/Function;

    if-eqz v0, :cond_2

    sget-object p0, Lnet/sf/saxon/type/UType;->FUNCTION:Lnet/sf/saxon/type/UType;

    return-object p0

    :cond_2
    invoke-super {p0, p1}, Lnet/sf/saxon/expr/Expression;->getStaticUType(Lnet/sf/saxon/type/UType;)Lnet/sf/saxon/type/UType;

    move-result-object p0

    return-object p0
.end method

.method public getStreamerName()Ljava/lang/String;
    .locals 0

    const-string p0, "Literal"

    return-object p0
.end method

.method public isSubtreeExpression()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isVacuousExpression()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public iterate()Lnet/sf/saxon/om/SequenceIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public iterate(Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/SequenceIterator;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p0

    return-object p0
.end method

.method public optimize(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-object p0
.end method

.method public process(Lnet/sf/saxon/event/Outputter;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p2, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    instance-of v0, p2, Lnet/sf/saxon/om/Item;

    if-eqz v0, :cond_0

    check-cast p2, Lnet/sf/saxon/om/Item;

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p0

    const/high16 v0, 0x80000

    invoke-virtual {p1, p2, p0, v0}, Lnet/sf/saxon/event/Outputter;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p2

    new-instance v0, Lcom/sunia/HTREnginev2/uzi;

    invoke-direct {v0, p0, p1}, Lcom/sunia/HTREnginev2/uzi;-><init>(Lnet/sf/saxon/expr/Literal;Lnet/sf/saxon/event/Outputter;)V

    invoke-static {p2, v0}, Lnet/sf/saxon/om/SequenceTool;->supply(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/om/ItemConsumer;)V

    :goto_0
    return-void
.end method

.method public toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p0}, Lnet/sf/saxon/expr/Literal;->isEmptySequence(Lnet/sf/saxon/expr/Expression;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance p0, Lnet/sf/saxon/pattern/NodeTestPattern;

    invoke-static {}, Lnet/sf/saxon/type/ErrorType;->getInstance()Lnet/sf/saxon/type/ErrorType;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/pattern/NodeTestPattern;-><init>(Lnet/sf/saxon/pattern/NodeTest;)V

    return-object p0

    :cond_0
    invoke-super {p0, p1}, Lnet/sf/saxon/expr/Expression;->toPattern(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/pattern/Pattern;

    move-result-object p0

    return-object p0
.end method

.method public toShortString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "()"

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {v0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->toShortString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {v1}, Lnet/sf/saxon/om/GroundedValue;->head()Lnet/sf/saxon/om/Item;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/Item;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", ...{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {p0}, Lnet/sf/saxon/om/GroundedValue;->getLength()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "})"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/expr/Literal;->n:Lnet/sf/saxon/om/GroundedValue;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public typeCheck(Lnet/sf/saxon/expr/parser/ExpressionVisitor;Lnet/sf/saxon/expr/parser/ContextItemStaticInfo;)Lnet/sf/saxon/expr/Expression;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    return-object p0
.end method
