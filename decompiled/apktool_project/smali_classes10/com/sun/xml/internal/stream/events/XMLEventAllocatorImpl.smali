.class public Lcom/sun/xml/internal/stream/events/XMLEventAllocatorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/util/XMLEventAllocator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getQName(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/namespace/QName;
    .locals 2

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object p1

    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    new-instance v1, Ljavax/xml/namespace/QName;

    invoke-direct {v1, v0, p1, p0}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez p0, :cond_1

    if-eqz v0, :cond_1

    new-instance v1, Ljavax/xml/namespace/QName;

    invoke-direct {v1, v0, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    if-nez p0, :cond_2

    if-nez v0, :cond_2

    new-instance v1, Ljavax/xml/namespace/QName;

    invoke-direct {v1, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method private setNamespaceContext(Lcom/sun/xml/internal/stream/events/StartElementEvent;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0

    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;

    new-instance p2, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;->getNamespaceContext()Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;-><init>(Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;)V

    new-instance p0, Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xerces/internal/util/NamespaceContextWrapper;-><init>(Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;)V

    invoke-virtual {p1, p0}, Lcom/sun/xml/internal/stream/events/StartElementEvent;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    return-void
.end method


# virtual methods
.method public allocate(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/XMLEvent;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0, p1}, Lcom/sun/xml/internal/stream/events/XMLEventAllocatorImpl;->getXMLEvent(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    const-string p1, "Reader cannot be null"

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public allocate(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/util/XMLEventConsumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Lcom/sun/xml/internal/stream/events/XMLEventAllocatorImpl;->getXMLEvent(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p2, p0}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    :cond_0
    return-void
.end method

.method public fillAttributes(Lcom/sun/xml/internal/stream/events/StartElementEvent;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 3

    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_0

    invoke-interface {p2, v0}, Ljavax/xml/stream/XMLStreamReader;->getAttributeName(I)Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    new-instance v2, Lcom/sun/xml/internal/stream/events/AttributeImpl;

    invoke-direct {v2}, Lcom/sun/xml/internal/stream/events/AttributeImpl;-><init>()V

    invoke-virtual {v2, v1}, Lcom/sun/xml/internal/stream/events/AttributeImpl;->setName(Ljavax/xml/namespace/QName;)V

    invoke-interface {p2, v0}, Ljavax/xml/stream/XMLStreamReader;->getAttributeType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sun/xml/internal/stream/events/AttributeImpl;->setAttributeType(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Ljavax/xml/stream/XMLStreamReader;->isAttributeSpecified(I)Z

    move-result v1

    invoke-virtual {v2, v1}, Lcom/sun/xml/internal/stream/events/AttributeImpl;->setSpecified(Z)V

    invoke-interface {p2, v0}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/sun/xml/internal/stream/events/AttributeImpl;->setValue(Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/sun/xml/internal/stream/events/StartElementEvent;->addAttribute(Ljavax/xml/stream/events/Attribute;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public fillNamespaceAttributes(Lcom/sun/xml/internal/stream/events/EndElementEvent;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 4

    .line 6
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 7
    invoke-interface {p2, v0}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-interface {p2, v0}, Ljavax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 9
    :cond_0
    new-instance v3, Lcom/sun/xml/internal/stream/events/NamespaceImpl;

    invoke-direct {v3, v2, v1}, Lcom/sun/xml/internal/stream/events/NamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1, v3}, Lcom/sun/xml/internal/stream/events/EndElementEvent;->addNamespace(Ljavax/xml/stream/events/Namespace;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public fillNamespaceAttributes(Lcom/sun/xml/internal/stream/events/StartElementEvent;Ljavax/xml/stream/XMLStreamReader;)V
    .locals 4

    .line 1
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 2
    invoke-interface {p2, v0}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-interface {p2, v0}, Ljavax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    const-string v2, ""

    .line 4
    :cond_0
    new-instance v3, Lcom/sun/xml/internal/stream/events/NamespaceImpl;

    invoke-direct {v3, v2, v1}, Lcom/sun/xml/internal/stream/events/NamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v3}, Lcom/sun/xml/internal/stream/events/StartElementEvent;->addNamespaceAttribute(Ljavax/xml/stream/events/Namespace;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getNextEvent(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/XMLEvent;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    invoke-virtual {p0, p1}, Lcom/sun/xml/internal/stream/events/XMLEventAllocatorImpl;->getXMLEvent(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object p0

    return-object p0
.end method

.method public getXMLEvent(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/XMLEvent;
    .locals 5

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    const-string v2, "javax.xml.stream.isNamespaceAware"

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    new-instance v4, Lcom/sun/xml/internal/stream/events/CharacterEvent;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0, v3}, Lcom/sun/xml/internal/stream/events/CharacterEvent;-><init>(Ljava/lang/String;Z)V

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    goto/16 :goto_1

    :pswitch_1
    new-instance v4, Lcom/sun/xml/internal/stream/events/DTDEvent;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Lcom/sun/xml/internal/stream/events/DTDEvent;-><init>(Ljava/lang/String;)V

    goto/16 :goto_1

    :pswitch_2
    new-instance v4, Lcom/sun/xml/internal/stream/events/EntityReferenceEvent;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/sun/xml/internal/stream/events/EntityDeclarationImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, p0, v0}, Lcom/sun/xml/internal/stream/events/EntityReferenceEvent;-><init>(Ljava/lang/String;Ljavax/xml/stream/events/EntityDeclaration;)V

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    goto/16 :goto_1

    :pswitch_3
    new-instance v4, Lcom/sun/xml/internal/stream/events/EndDocumentEvent;

    invoke-direct {v4}, Lcom/sun/xml/internal/stream/events/EndDocumentEvent;-><init>()V

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    goto/16 :goto_1

    :pswitch_4
    new-instance v4, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;

    invoke-direct {v4}, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;-><init>()V

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->setVersion(Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->setEncoding(Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {v4, v3}, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->setDeclaredEncoding(Z)V

    goto :goto_0

    :cond_0
    invoke-virtual {v4, v1}, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->setDeclaredEncoding(Z)V

    :goto_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->isStandalone()Z

    move-result p0

    invoke-virtual {v4, p0}, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;->setStandalone(Z)V

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    goto/16 :goto_1

    :pswitch_5
    new-instance v4, Lcom/sun/xml/internal/stream/events/CharacterEvent;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0, v1, v3}, Lcom/sun/xml/internal/stream/events/CharacterEvent;-><init>(Ljava/lang/String;ZZ)V

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    goto/16 :goto_1

    :pswitch_6
    new-instance v4, Lcom/sun/xml/internal/stream/events/CommentEvent;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Lcom/sun/xml/internal/stream/events/CommentEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    goto :goto_1

    :pswitch_7
    new-instance v4, Lcom/sun/xml/internal/stream/events/CharacterEvent;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Lcom/sun/xml/internal/stream/events/CharacterEvent;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    goto :goto_1

    :pswitch_8
    new-instance v4, Lcom/sun/xml/internal/stream/events/ProcessingInstructionEvent;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v4, p0, v0}, Lcom/sun/xml/internal/stream/events/ProcessingInstructionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    goto :goto_1

    :pswitch_9
    new-instance v4, Lcom/sun/xml/internal/stream/events/EndElementEvent;

    invoke-direct {p0, p1}, Lcom/sun/xml/internal/stream/events/XMLEventAllocatorImpl;->getQName(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/sun/xml/internal/stream/events/EndElementEvent;-><init>(Ljavax/xml/namespace/QName;)V

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    invoke-interface {p1, v2}, Ljavax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v4, p1}, Lcom/sun/xml/internal/stream/events/XMLEventAllocatorImpl;->fillNamespaceAttributes(Lcom/sun/xml/internal/stream/events/EndElementEvent;Ljavax/xml/stream/XMLStreamReader;)V

    goto :goto_1

    :pswitch_a
    new-instance v4, Lcom/sun/xml/internal/stream/events/StartElementEvent;

    invoke-direct {p0, p1}, Lcom/sun/xml/internal/stream/events/XMLEventAllocatorImpl;->getQName(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-direct {v4, v0}, Lcom/sun/xml/internal/stream/events/StartElementEvent;-><init>(Ljavax/xml/namespace/QName;)V

    invoke-virtual {p0, v4, p1}, Lcom/sun/xml/internal/stream/events/XMLEventAllocatorImpl;->fillAttributes(Lcom/sun/xml/internal/stream/events/StartElementEvent;Ljavax/xml/stream/XMLStreamReader;)V

    invoke-interface {p1, v2}, Ljavax/xml/stream/XMLStreamReader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v4, p1}, Lcom/sun/xml/internal/stream/events/XMLEventAllocatorImpl;->fillNamespaceAttributes(Lcom/sun/xml/internal/stream/events/StartElementEvent;Ljavax/xml/stream/XMLStreamReader;)V

    invoke-direct {p0, v4, p1}, Lcom/sun/xml/internal/stream/events/XMLEventAllocatorImpl;->setNamespaceContext(Lcom/sun/xml/internal/stream/events/StartElementEvent;Ljavax/xml/stream/XMLStreamReader;)V

    :cond_1
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object p0

    invoke-virtual {v4, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    :cond_2
    :goto_1
    :pswitch_b
    return-object v4

    nop

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
        :pswitch_b
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public newInstance()Ljavax/xml/stream/util/XMLEventAllocator;
    .locals 0

    new-instance p0, Lcom/sun/xml/internal/stream/events/XMLEventAllocatorImpl;

    invoke-direct {p0}, Lcom/sun/xml/internal/stream/events/XMLEventAllocatorImpl;-><init>()V

    return-object p0
.end method
