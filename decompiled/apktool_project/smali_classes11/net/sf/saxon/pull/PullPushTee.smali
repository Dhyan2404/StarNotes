.class public Lnet/sf/saxon/pull/PullPushTee;
.super Lnet/sf/saxon/pull/PullFilter;
.source "SourceFile"


# instance fields
.field public final c:Lnet/sf/saxon/event/Receiver;

.field public d:Z

.field public final e:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack<",
            "Lnet/sf/saxon/om/NamespaceMap;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/pull/PullProvider;Lnet/sf/saxon/event/Receiver;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/pull/PullFilter;-><init>(Lnet/sf/saxon/pull/PullProvider;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/pull/PullPushTee;->d:Z

    new-instance p1, Ljava/util/Stack;

    invoke-direct {p1}, Ljava/util/Stack;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/pull/PullPushTee;->e:Ljava/util/Stack;

    iput-object p2, p0, Lnet/sf/saxon/pull/PullPushTee;->c:Lnet/sf/saxon/event/Receiver;

    return-void
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/pull/PullEvent;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/pull/PullFilter;->getUnderlyingProvider()Lnet/sf/saxon/pull/PullProvider;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/pull/PullProvider;->getSourceLocator()Lnet/sf/saxon/s9api/Location;

    move-result-object v1

    if-nez v1, :cond_0

    sget-object v1, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    :cond_0
    move-object v7, v1

    iget-object v2, p0, Lnet/sf/saxon/pull/PullPushTee;->c:Lnet/sf/saxon/event/Receiver;

    sget-object v1, Lnet/sf/saxon/pull/PullPushTee$a;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v9, 0x0

    packed-switch v1, :pswitch_data_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :pswitch_0
    instance-of v1, v2, Lnet/sf/saxon/event/SequenceReceiver;

    if-eqz v1, :cond_9

    new-instance v1, Lnet/sf/saxon/tree/util/Orphan;

    invoke-interface {v0}, Lnet/sf/saxon/pull/PullProvider;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/sf/saxon/tree/util/Orphan;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {p0}, Lnet/sf/saxon/pull/PullFilter;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/tree/util/Orphan;->setNodeName(Lnet/sf/saxon/om/NodeName;)V

    const/16 v0, 0xd

    invoke-virtual {v1, v0}, Lnet/sf/saxon/tree/util/Orphan;->setNodeKind(S)V

    invoke-virtual {p0}, Lnet/sf/saxon/pull/PullFilter;->getStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/tree/util/Orphan;->setStringValue(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-interface {v2, v1, v7, v9}, Lnet/sf/saxon/event/Receiver;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    goto/16 :goto_4

    :pswitch_1
    instance-of v1, v2, Lnet/sf/saxon/event/SequenceReceiver;

    if-eqz v1, :cond_9

    new-instance v1, Lnet/sf/saxon/tree/util/Orphan;

    invoke-interface {v0}, Lnet/sf/saxon/pull/PullProvider;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-direct {v1, v0}, Lnet/sf/saxon/tree/util/Orphan;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {p0}, Lnet/sf/saxon/pull/PullFilter;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/tree/util/Orphan;->setNodeName(Lnet/sf/saxon/om/NodeName;)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lnet/sf/saxon/tree/util/Orphan;->setNodeKind(S)V

    invoke-virtual {p0}, Lnet/sf/saxon/pull/PullFilter;->getStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/tree/util/Orphan;->setStringValue(Lnet/sf/saxon/str/UnicodeString;)V

    invoke-interface {v2, v1, v7, v9}, Lnet/sf/saxon/event/Receiver;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    goto/16 :goto_4

    :pswitch_2
    instance-of v1, v2, Lnet/sf/saxon/event/SequenceReceiver;

    if-eqz v1, :cond_1

    invoke-super {p0}, Lnet/sf/saxon/pull/PullFilter;->getAtomicValue()Lnet/sf/saxon/value/AtomicValue;

    move-result-object v0

    invoke-interface {v2, v0, v7, v9}, Lnet/sf/saxon/event/Receiver;->append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V

    goto/16 :goto_4

    :cond_1
    iget-boolean v1, p0, Lnet/sf/saxon/pull/PullPushTee;->d:Z

    if-eqz v1, :cond_2

    sget-object v1, Lnet/sf/saxon/str/StringConstants;->SINGLE_SPACE:Lnet/sf/saxon/str/UnicodeString;

    invoke-interface {v2, v1, v7, v9}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :cond_2
    invoke-interface {v0}, Lnet/sf/saxon/pull/PullProvider;->getStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-interface {v2, v0, v7, v9}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto/16 :goto_4

    :pswitch_3
    invoke-interface {v0}, Lnet/sf/saxon/pull/PullProvider;->close()V

    goto/16 :goto_4

    :pswitch_4
    invoke-interface {v0}, Lnet/sf/saxon/pull/PullProvider;->getUnparsedEntities()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/pull/UnparsedEntity;

    invoke-virtual {v1}, Lnet/sf/saxon/pull/UnparsedEntity;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lnet/sf/saxon/pull/UnparsedEntity;->getSystemId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lnet/sf/saxon/pull/UnparsedEntity;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v4, v1}, Lnet/sf/saxon/event/Receiver;->setUnparsedEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-interface {v2}, Lnet/sf/saxon/event/Receiver;->endDocument()V

    goto/16 :goto_4

    :pswitch_5
    invoke-interface {v2}, Lnet/sf/saxon/event/Receiver;->endElement()V

    iget-object v0, p0, Lnet/sf/saxon/pull/PullPushTee;->e:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    goto/16 :goto_4

    :pswitch_6
    invoke-interface {v0}, Lnet/sf/saxon/pull/PullProvider;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lnet/sf/saxon/pull/PullProvider;->getStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-interface {v2, v1, v0, v7, v9}, Lnet/sf/saxon/event/Receiver;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto/16 :goto_4

    :pswitch_7
    invoke-interface {v0}, Lnet/sf/saxon/pull/PullProvider;->getStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-interface {v2, v0, v7, v9}, Lnet/sf/saxon/event/Receiver;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto/16 :goto_4

    :pswitch_8
    invoke-interface {v0}, Lnet/sf/saxon/pull/PullProvider;->getStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    const/16 v1, 0x400

    invoke-interface {v2, v0, v7, v1}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_4

    :pswitch_9
    invoke-interface {v0}, Lnet/sf/saxon/pull/PullProvider;->getNamespaceDeclarations()[Lnet/sf/saxon/om/NamespaceBinding;

    move-result-object v1

    iget-object v3, p0, Lnet/sf/saxon/pull/PullPushTee;->e:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lnet/sf/saxon/om/NamespaceMap;->emptyMap()Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v3

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lnet/sf/saxon/pull/PullPushTee;->e:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/sf/saxon/om/NamespaceMap;

    :goto_1
    array-length v4, v1

    move-object v6, v3

    move v3, v9

    :goto_2
    if-ge v3, v4, :cond_8

    aget-object v5, v1, v3

    if-nez v5, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v5}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-virtual {v5}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lnet/sf/saxon/om/NamespaceMap;->getDefaultNamespace()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    :cond_6
    invoke-virtual {v5}, Lnet/sf/saxon/om/NamespaceBinding;->getPrefix()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5}, Lnet/sf/saxon/om/NamespaceBinding;->getURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v8, v5}, Lnet/sf/saxon/om/NamespaceMap;->put(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/om/NamespaceMap;

    move-result-object v6

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_8
    :goto_3
    iget-object v1, p0, Lnet/sf/saxon/pull/PullPushTee;->e:Ljava/util/Stack;

    invoke-virtual {v1, v6}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0}, Lnet/sf/saxon/pull/PullProvider;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-interface {v0}, Lnet/sf/saxon/pull/PullProvider;->getSchemaType()Lnet/sf/saxon/type/SchemaType;

    move-result-object v4

    invoke-interface {v0}, Lnet/sf/saxon/pull/PullProvider;->getAttributes()Lnet/sf/saxon/om/AttributeMap;

    move-result-object v5

    const/16 v8, 0x40

    invoke-interface/range {v2 .. v8}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_4

    :pswitch_a
    invoke-interface {v2, v9}, Lnet/sf/saxon/event/Receiver;->startDocument(I)V

    :cond_9
    :goto_4
    sget-object v0, Lnet/sf/saxon/pull/PullEvent;->ATOMIC_VALUE:Lnet/sf/saxon/pull/PullEvent;

    if-ne p1, v0, :cond_a

    const/4 v9, 0x1

    :cond_a
    iput-boolean v9, p0, Lnet/sf/saxon/pull/PullPushTee;->d:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x1
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

.method public getReceiver()Lnet/sf/saxon/event/Receiver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/pull/PullPushTee;->c:Lnet/sf/saxon/event/Receiver;

    return-object p0
.end method

.method public next()Lnet/sf/saxon/pull/PullEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-super {p0}, Lnet/sf/saxon/pull/PullFilter;->next()Lnet/sf/saxon/pull/PullEvent;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/pull/PullFilter;->currentEvent:Lnet/sf/saxon/pull/PullEvent;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/pull/PullPushTee;->a(Lnet/sf/saxon/pull/PullEvent;)V

    iget-object p0, p0, Lnet/sf/saxon/pull/PullFilter;->currentEvent:Lnet/sf/saxon/pull/PullEvent;

    return-object p0
.end method
