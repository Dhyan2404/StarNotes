.class public Lnet/sf/saxon/query/SequenceWrapper;
.super Lnet/sf/saxon/event/SequenceReceiver;
.source "SourceFile"


# static fields
.field public static final RESULT_NS:Ljava/lang/String;


# instance fields
.field public final e:Lnet/sf/saxon/event/ComplexContentOutputter;

.field public f:I

.field public g:Lnet/sf/saxon/om/FingerprintedQName;

.field public h:Lnet/sf/saxon/om/FingerprintedQName;

.field public i:Lnet/sf/saxon/om/FingerprintedQName;

.field public j:Lnet/sf/saxon/om/FingerprintedQName;

.field public k:Lnet/sf/saxon/om/FingerprintedQName;

.field public l:Lnet/sf/saxon/om/FingerprintedQName;

.field public m:Lnet/sf/saxon/om/FingerprintedQName;

.field public n:Lnet/sf/saxon/om/FingerprintedQName;

.field public o:Lnet/sf/saxon/om/FingerprintedQName;

.field public p:Lnet/sf/saxon/om/FingerprintedQName;

.field public q:Lnet/sf/saxon/om/FingerprintedQName;

.field public r:Lnet/sf/saxon/om/FingerprintedQName;

.field public s:Lnet/sf/saxon/om/FingerprintedQName;

.field public t:Lnet/sf/saxon/om/FingerprintedQName;

.field public u:Lnet/sf/saxon/om/FingerprintedQName;

.field public v:Lnet/sf/saxon/om/FingerprintedQName;

.field public w:Lnet/sf/saxon/om/FingerprintedQName;

.field public x:Lnet/sf/saxon/om/NamespaceMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    sget-object v0, Lnet/sf/saxon/query/QueryResult;->RESULT_NS:Ljava/lang/String;

    sput-object v0, Lnet/sf/saxon/query/SequenceWrapper;->RESULT_NS:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/event/Receiver;)V
    .locals 1

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/event/SequenceReceiver;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/query/SequenceWrapper;->f:I

    new-instance v0, Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-direct {v0, p1}, Lnet/sf/saxon/event/ComplexContentOutputter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    iput-object v0, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    return-void
.end method


# virtual methods
.method public append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of p3, p1, Lnet/sf/saxon/value/AtomicValue;

    const/4 v0, 0x0

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p3

    iget-object v1, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    iget-object v2, p0, Lnet/sf/saxon/query/SequenceWrapper;->n:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v3

    sget-object v4, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {v1, v2, v3, v4, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    move-object v1, p1

    check-cast v1, Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {v1}, Lnet/sf/saxon/value/AtomicValue;->getItemType()Lnet/sf/saxon/type/AtomicType;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/type/SchemaType;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p3, v1}, Lnet/sf/saxon/om/NamePool;->suggestPrefixForURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "p"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x3a

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    iget-object p3, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p3, v2, v1, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object v5, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    iget-object v6, p0, Lnet/sf/saxon/query/SequenceWrapper;->w:Lnet/sf/saxon/om/FingerprintedQName;

    sget-object v7, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    const/4 v10, 0x0

    move-object v9, p2

    invoke-virtual/range {v5 .. v10}, Lnet/sf/saxon/event/ComplexContentOutputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    iget-object p3, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p3}, Lnet/sf/saxon/event/ComplexContentOutputter;->startContent()V

    iget-object p3, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p3, p1, p2, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    iget-object p0, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->endElement()V

    goto/16 :goto_4

    :cond_1
    instance-of p3, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz p3, :cond_4

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result p3

    const/4 v1, 0x2

    if-ne p3, v1, :cond_2

    invoke-static {p1}, Lnet/sf/saxon/om/NameOfNode;->makeName(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object p2

    move-object v4, p2

    check-cast v4, Lnet/sf/saxon/type/SimpleType;

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v7, 0x0

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lnet/sf/saxon/query/SequenceWrapper;->c(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/CharSequence;Lnet/sf/saxon/s9api/Location;I)V

    goto/16 :goto_4

    :cond_2
    const/16 v1, 0xd

    if-ne p3, v1, :cond_3

    new-instance p2, Lnet/sf/saxon/om/NamespaceBinding;

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p3, p1}, Lnet/sf/saxon/om/NamespaceBinding;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2, v0}, Lnet/sf/saxon/query/SequenceWrapper;->e(Lnet/sf/saxon/om/NamespaceBindingSet;I)V

    goto/16 :goto_4

    :cond_3
    const/4 p3, 0x6

    invoke-interface {p1, p0, p3, p2}, Lnet/sf/saxon/om/NodeInfo;->copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    goto/16 :goto_4

    :cond_4
    instance-of p3, p1, Lnet/sf/saxon/ma/map/MapItem;

    if-eqz p3, :cond_7

    invoke-virtual {p0}, Lnet/sf/saxon/query/SequenceWrapper;->getDestination()Lnet/sf/saxon/event/ComplexContentOutputter;

    move-result-object p3

    iget-object v1, p0, Lnet/sf/saxon/query/SequenceWrapper;->p:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v2

    invoke-virtual {p3, v1, v2, p2, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    check-cast p1, Lnet/sf/saxon/ma/map/MapItem;

    invoke-virtual {p1}, Lnet/sf/saxon/ma/map/MapItem;->keyValuePairs()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/ma/map/KeyValuePair;

    iget-object v2, p0, Lnet/sf/saxon/query/SequenceWrapper;->q:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v3

    invoke-virtual {p3, v2, v3, p2, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    iget-object v2, p0, Lnet/sf/saxon/query/SequenceWrapper;->r:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v3

    invoke-virtual {p3, v2, v3, p2, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    iget-object v2, v1, Lnet/sf/saxon/ma/map/KeyValuePair;->key:Lnet/sf/saxon/value/AtomicValue;

    invoke-virtual {p0, v2}, Lnet/sf/saxon/event/SequenceReceiver;->append(Lnet/sf/saxon/om/Item;)V

    invoke-virtual {p3}, Lnet/sf/saxon/event/ComplexContentOutputter;->endElement()V

    iget-object v2, p0, Lnet/sf/saxon/query/SequenceWrapper;->s:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v3

    invoke-virtual {p3, v2, v3, p2, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    iget-object v1, v1, Lnet/sf/saxon/ma/map/KeyValuePair;->value:Lnet/sf/saxon/om/GroundedValue;

    invoke-interface {v1}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {p0, v2}, Lnet/sf/saxon/event/SequenceReceiver;->append(Lnet/sf/saxon/om/Item;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p3}, Lnet/sf/saxon/event/ComplexContentOutputter;->endElement()V

    invoke-virtual {p3}, Lnet/sf/saxon/event/ComplexContentOutputter;->endElement()V

    goto :goto_0

    :cond_6
    invoke-virtual {p3}, Lnet/sf/saxon/event/ComplexContentOutputter;->endElement()V

    goto/16 :goto_4

    :cond_7
    instance-of p3, p1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    if-eqz p3, :cond_a

    iget-object p2, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    iget-object p3, p0, Lnet/sf/saxon/query/SequenceWrapper;->t:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {p2, p3, v1, v2, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    iget-object p2, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p2}, Lnet/sf/saxon/event/ComplexContentOutputter;->startContent()V

    check-cast p1, Lnet/sf/saxon/ma/arrays/ArrayItem;

    invoke-virtual {p1}, Lnet/sf/saxon/ma/arrays/ArrayItem;->members()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/GroundedValue;

    iget-object p3, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    iget-object v1, p0, Lnet/sf/saxon/query/SequenceWrapper;->u:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {p3, v1, v2, v3, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {p2}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Lnet/sf/saxon/om/SequenceIterator;->next()Lnet/sf/saxon/om/Item;

    move-result-object p3

    if-eqz p3, :cond_8

    invoke-virtual {p0, p3}, Lnet/sf/saxon/event/SequenceReceiver;->append(Lnet/sf/saxon/om/Item;)V

    goto :goto_3

    :cond_8
    iget-object p2, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p2}, Lnet/sf/saxon/event/ComplexContentOutputter;->endElement()V

    goto :goto_2

    :cond_9
    iget-object p0, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->endElement()V

    goto :goto_4

    :cond_a
    instance-of p3, p1, Lnet/sf/saxon/om/Function;

    if-eqz p3, :cond_b

    iget-object p3, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    iget-object v1, p0, Lnet/sf/saxon/query/SequenceWrapper;->o:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {p3, v1, v2, v3, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    iget-object p3, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p3}, Lnet/sf/saxon/event/ComplexContentOutputter;->startContent()V

    iget-object p3, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    check-cast p1, Lnet/sf/saxon/om/Function;

    invoke-interface {p1}, Lnet/sf/saxon/om/Function;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p3, p1, p2, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    iget-object p0, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->endElement()V

    goto :goto_4

    :cond_b
    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getGenre()Lnet/sf/saxon/om/Genre;

    move-result-object p3

    sget-object v1, Lnet/sf/saxon/om/Genre;->EXTERNAL:Lnet/sf/saxon/om/Genre;

    if-ne p3, v1, :cond_c

    check-cast p1, Lnet/sf/saxon/value/ObjectValue;

    invoke-virtual {p1}, Lnet/sf/saxon/value/ObjectValue;->getObject()Ljava/lang/Object;

    move-result-object p1

    iget-object p3, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    iget-object v1, p0, Lnet/sf/saxon/query/SequenceWrapper;->v:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v2

    sget-object v3, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {p3, v1, v2, v3, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    iget-object v4, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    new-instance v5, Lnet/sf/saxon/om/NoNamespaceName;

    const-string p3, "class"

    invoke-direct {v5, p3}, Lnet/sf/saxon/om/NoNamespaceName;-><init>(Ljava/lang/String;)V

    sget-object v6, Lnet/sf/saxon/type/BuiltInAtomicType;->UNTYPED_ATOMIC:Lnet/sf/saxon/type/BuiltInAtomicType;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Lnet/sf/saxon/event/ComplexContentOutputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    iget-object p3, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p3}, Lnet/sf/saxon/event/ComplexContentOutputter;->startContent()V

    iget-object p3, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object p1

    invoke-virtual {p3, p1, p2, v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    iget-object p0, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->endElement()V

    :cond_c
    :goto_4
    return-void
.end method

.method public final c(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/CharSequence;Lnet/sf/saxon/s9api/Location;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    move-object v0, p0

    new-instance v7, Lnet/sf/saxon/om/AttributeInfo;

    invoke-interface/range {p3 .. p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v1, v7

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-direct/range {v1 .. v6}, Lnet/sf/saxon/om/AttributeInfo;-><init>(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    invoke-static {v7}, Lnet/sf/saxon/om/SingletonAttributeMap;->of(Lnet/sf/saxon/om/AttributeInfo;)Lnet/sf/saxon/om/SingletonAttributeMap;

    move-result-object v11

    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v1

    const-string v2, ""

    move-object/from16 v3, p1

    invoke-interface {v3, v2}, Lnet/sf/saxon/om/NodeName;->hasURI(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-interface/range {p1 .. p1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v1

    :cond_0
    move-object v12, v1

    iget-object v8, v0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    iget-object v9, v0, Lnet/sf/saxon/query/SequenceWrapper;->i:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v10

    sget-object v13, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v14, 0x0

    invoke-virtual/range {v8 .. v14}, Lnet/sf/saxon/event/ComplexContentOutputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    iget-object v1, v0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->startContent()V

    iget-object v0, v0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->endElement()V

    return-void
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/query/SequenceWrapper;->f:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/query/SequenceWrapper;->j:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/query/SequenceWrapper;->f(Lnet/sf/saxon/om/NodeName;)V

    iget-object v0, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {v0, p1, p2, p3}, Lnet/sf/saxon/event/ComplexContentOutputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/SequenceWrapper;->d()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/ComplexContentOutputter;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :goto_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/query/SequenceWrapper;->d()V

    iget-object v0, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->endDocument()V

    iget-object p0, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->close()V

    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/query/SequenceWrapper;->f:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/query/SequenceWrapper;->k:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/query/SequenceWrapper;->f(Lnet/sf/saxon/om/NodeName;)V

    iget-object v0, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {v0, p1, p2, p3}, Lnet/sf/saxon/event/ComplexContentOutputter;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/SequenceWrapper;->d()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/ComplexContentOutputter;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :goto_0
    return-void
.end method

.method public final d()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->endElement()V

    return-void
.end method

.method public final e(Lnet/sf/saxon/om/NamespaceBindingSet;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/sf/saxon/om/NamespaceMap;->addAll(Lnet/sf/saxon/om/NamespaceBindingSet;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v4

    iget-object v0, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    iget-object v1, p0, Lnet/sf/saxon/query/SequenceWrapper;->m:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v2

    invoke-static {}, Lnet/sf/saxon/om/EmptyAttributeMap;->getInstance()Lnet/sf/saxon/om/EmptyAttributeMap;

    move-result-object v3

    sget-object v5, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lnet/sf/saxon/event/ComplexContentOutputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    iget-object p1, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p1}, Lnet/sf/saxon/event/ComplexContentOutputter;->startContent()V

    iget-object p0, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->endElement()V

    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/query/SequenceWrapper;->d()V

    iget v0, p0, Lnet/sf/saxon/query/SequenceWrapper;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/query/SequenceWrapper;->f:I

    return-void
.end method

.method public endElement()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {v0}, Lnet/sf/saxon/event/ComplexContentOutputter;->endElement()V

    iget v0, p0, Lnet/sf/saxon/query/SequenceWrapper;->f:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lnet/sf/saxon/query/SequenceWrapper;->f:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/query/SequenceWrapper;->d()V

    :cond_0
    return-void
.end method

.method public final f(Lnet/sf/saxon/om/NodeName;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-static {}, Lnet/sf/saxon/type/Untyped;->getInstance()Lnet/sf/saxon/type/Untyped;

    move-result-object v1

    sget-object v2, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    const/4 v3, 0x0

    invoke-virtual {v0, p1, v1, v2, v3}, Lnet/sf/saxon/event/ComplexContentOutputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    iget-object p1, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    const-string v0, "xs"

    const-string v1, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p1, v0, v1, v3}, Lnet/sf/saxon/event/ComplexContentOutputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p1, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    const-string v0, "xsi"

    const-string v1, "http://www.w3.org/2001/XMLSchema-instance"

    invoke-virtual {p1, v0, v1, v3}, Lnet/sf/saxon/event/ComplexContentOutputter;->namespace(Ljava/lang/String;Ljava/lang/String;I)V

    iget-object p0, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startContent()V

    return-void
.end method

.method public getDestination()Lnet/sf/saxon/event/ComplexContentOutputter;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    return-object p0
.end method

.method public open()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/om/FingerprintedQName;

    sget-object v1, Lnet/sf/saxon/query/SequenceWrapper;->RESULT_NS:Ljava/lang/String;

    const-string v2, "sequence"

    const-string v3, "result"

    invoke-direct {v0, v3, v1, v2}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v4, "document"

    invoke-direct {v2, v3, v1, v4}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/sf/saxon/query/SequenceWrapper;->g:Lnet/sf/saxon/om/FingerprintedQName;

    new-instance v2, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v4, "element"

    invoke-direct {v2, v3, v1, v4}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/sf/saxon/query/SequenceWrapper;->h:Lnet/sf/saxon/om/FingerprintedQName;

    new-instance v2, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v4, "attribute"

    invoke-direct {v2, v3, v1, v4}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/sf/saxon/query/SequenceWrapper;->i:Lnet/sf/saxon/om/FingerprintedQName;

    new-instance v2, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v4, "text"

    invoke-direct {v2, v3, v1, v4}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/sf/saxon/query/SequenceWrapper;->j:Lnet/sf/saxon/om/FingerprintedQName;

    new-instance v2, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v4, "comment"

    invoke-direct {v2, v3, v1, v4}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/sf/saxon/query/SequenceWrapper;->k:Lnet/sf/saxon/om/FingerprintedQName;

    new-instance v2, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v4, "processing-instruction"

    invoke-direct {v2, v3, v1, v4}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/sf/saxon/query/SequenceWrapper;->l:Lnet/sf/saxon/om/FingerprintedQName;

    new-instance v2, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v4, "namespace"

    invoke-direct {v2, v3, v1, v4}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/sf/saxon/query/SequenceWrapper;->m:Lnet/sf/saxon/om/FingerprintedQName;

    new-instance v2, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v4, "atomic-value"

    invoke-direct {v2, v3, v1, v4}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/sf/saxon/query/SequenceWrapper;->n:Lnet/sf/saxon/om/FingerprintedQName;

    new-instance v2, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v4, "function"

    invoke-direct {v2, v3, v1, v4}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/sf/saxon/query/SequenceWrapper;->o:Lnet/sf/saxon/om/FingerprintedQName;

    new-instance v2, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v4, "array"

    invoke-direct {v2, v3, v1, v4}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/sf/saxon/query/SequenceWrapper;->t:Lnet/sf/saxon/om/FingerprintedQName;

    new-instance v2, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v4, "array-member"

    invoke-direct {v2, v3, v1, v4}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/sf/saxon/query/SequenceWrapper;->u:Lnet/sf/saxon/om/FingerprintedQName;

    new-instance v2, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v4, "map"

    invoke-direct {v2, v3, v1, v4}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/sf/saxon/query/SequenceWrapper;->p:Lnet/sf/saxon/om/FingerprintedQName;

    new-instance v2, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v4, "map-entry"

    invoke-direct {v2, v3, v1, v4}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/sf/saxon/query/SequenceWrapper;->q:Lnet/sf/saxon/om/FingerprintedQName;

    new-instance v2, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v4, "map-key"

    invoke-direct {v2, v3, v1, v4}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/sf/saxon/query/SequenceWrapper;->r:Lnet/sf/saxon/om/FingerprintedQName;

    new-instance v2, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v4, "map-value"

    invoke-direct {v2, v3, v1, v4}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/sf/saxon/query/SequenceWrapper;->s:Lnet/sf/saxon/om/FingerprintedQName;

    new-instance v2, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v4, "external-object"

    invoke-direct {v2, v3, v1, v4}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p0, Lnet/sf/saxon/query/SequenceWrapper;->v:Lnet/sf/saxon/om/FingerprintedQName;

    new-instance v1, Lnet/sf/saxon/om/FingerprintedQName;

    const-string v2, "http://www.w3.org/2001/XMLSchema-instance"

    const-string v3, "type"

    const-string v4, "xsi"

    invoke-direct {v1, v4, v2, v3}, Lnet/sf/saxon/om/FingerprintedQName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lnet/sf/saxon/query/SequenceWrapper;->w:Lnet/sf/saxon/om/FingerprintedQName;

    iget-object v1, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {v1}, Lnet/sf/saxon/event/ComplexContentOutputter;->open()V

    iget-object v1, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/sf/saxon/event/ComplexContentOutputter;->startDocument(I)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/query/SequenceWrapper;->f(Lnet/sf/saxon/om/NodeName;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/query/SequenceWrapper;->f:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/query/SequenceWrapper;->l:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/query/SequenceWrapper;->f(Lnet/sf/saxon/om/NodeName;)V

    iget-object v0, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/sf/saxon/event/ComplexContentOutputter;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/query/SequenceWrapper;->d()V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/event/ComplexContentOutputter;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :goto_0
    return-void
.end method

.method public startDocument(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p1, p0, Lnet/sf/saxon/query/SequenceWrapper;->g:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/query/SequenceWrapper;->f(Lnet/sf/saxon/om/NodeName;)V

    iget p1, p0, Lnet/sf/saxon/query/SequenceWrapper;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lnet/sf/saxon/query/SequenceWrapper;->f:I

    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget p4, p0, Lnet/sf/saxon/query/SequenceWrapper;->f:I

    add-int/lit8 v0, p4, 0x1

    iput v0, p0, Lnet/sf/saxon/query/SequenceWrapper;->f:I

    if-nez p4, :cond_0

    iget-object p4, p0, Lnet/sf/saxon/query/SequenceWrapper;->h:Lnet/sf/saxon/om/FingerprintedQName;

    invoke-virtual {p0, p4}, Lnet/sf/saxon/query/SequenceWrapper;->f(Lnet/sf/saxon/om/NodeName;)V

    :cond_0
    iget-object p4, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p4, p1, p2, p5, p6}, Lnet/sf/saxon/event/ComplexContentOutputter;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/s9api/Location;I)V

    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/AttributeInfo;

    iget-object v0, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getType()Lnet/sf/saxon/type/SimpleType;

    move-result-object v2

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v4

    invoke-virtual {p2}, Lnet/sf/saxon/om/AttributeInfo;->getProperties()I

    move-result v5

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/event/ComplexContentOutputter;->attribute(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SimpleType;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/query/SequenceWrapper;->e:Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-virtual {p0}, Lnet/sf/saxon/event/ComplexContentOutputter;->startContent()V

    return-void
.end method

.method public usesTypeAnnotations()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
