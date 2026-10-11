.class public Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;
.super Ljavax/xml/stream/XMLEventFactory;
.source "SourceFile"


# instance fields
.field location:Ljavax/xml/stream/Location;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/xml/stream/XMLEventFactory;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->location:Ljavax/xml/stream/Location;

    return-void
.end method


# virtual methods
.method public createAttribute(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;
    .locals 1

    .line 1
    new-instance v0, Lcom/sun/xml/internal/stream/events/AttributeImpl;

    invoke-direct {v0, p1, p2}, Lcom/sun/xml/internal/stream/events/AttributeImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->location:Ljavax/xml/stream/Location;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    :cond_0
    return-object v0
.end method

.method public createAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;
    .locals 7

    .line 4
    new-instance v6, Lcom/sun/xml/internal/stream/events/AttributeImpl;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/sun/xml/internal/stream/events/AttributeImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->location:Ljavax/xml/stream/Location;

    if-eqz p0, :cond_0

    invoke-virtual {v6, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    :cond_0
    return-object v6
.end method

.method public createAttribute(Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;
    .locals 2

    .line 3
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->createAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;

    move-result-object p0

    return-object p0
.end method

.method public createCData(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;
    .locals 2

    new-instance v0, Lcom/sun/xml/internal/stream/events/CharacterEvent;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/sun/xml/internal/stream/events/CharacterEvent;-><init>(Ljava/lang/String;Z)V

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->location:Ljavax/xml/stream/Location;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    :cond_0
    return-object v0
.end method

.method public createCharacters(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;
    .locals 1

    new-instance v0, Lcom/sun/xml/internal/stream/events/CharacterEvent;

    invoke-direct {v0, p1}, Lcom/sun/xml/internal/stream/events/CharacterEvent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->location:Ljavax/xml/stream/Location;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    :cond_0
    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Ljavax/xml/stream/events/Comment;
    .locals 1

    new-instance v0, Lcom/sun/xml/internal/stream/events/CommentEvent;

    invoke-direct {v0, p1}, Lcom/sun/xml/internal/stream/events/CommentEvent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->location:Ljavax/xml/stream/Location;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    :cond_0
    return-object v0
.end method

.method public createDTD(Ljava/lang/String;)Ljavax/xml/stream/events/DTD;
    .locals 1

    new-instance v0, Lcom/sun/xml/internal/stream/events/DTDEvent;

    invoke-direct {v0, p1}, Lcom/sun/xml/internal/stream/events/DTDEvent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->location:Ljavax/xml/stream/Location;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    :cond_0
    return-object v0
.end method

.method public createEndDocument()Ljavax/xml/stream/events/EndDocument;
    .locals 1

    new-instance v0, Lcom/sun/xml/internal/stream/events/EndDocumentEvent;

    invoke-direct {v0}, Lcom/sun/xml/internal/stream/events/EndDocumentEvent;-><init>()V

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->location:Ljavax/xml/stream/Location;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    :cond_0
    return-object v0
.end method

.method public createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/EndElement;
    .locals 1

    .line 2
    new-instance v0, Lcom/sun/xml/internal/stream/events/EndElementEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/xml/internal/stream/events/EndElementEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->location:Ljavax/xml/stream/Location;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    :cond_0
    return-object v0
.end method

.method public createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Ljavax/xml/stream/events/EndElement;
    .locals 1

    .line 4
    new-instance v0, Lcom/sun/xml/internal/stream/events/EndElementEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/xml/internal/stream/events/EndElementEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_0

    .line 5
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljavax/xml/stream/events/Namespace;

    invoke-virtual {v0, p1}, Lcom/sun/xml/internal/stream/events/EndElementEvent;->addNamespace(Ljavax/xml/stream/events/Namespace;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->location:Ljavax/xml/stream/Location;

    if-eqz p0, :cond_1

    invoke-virtual {v0, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    :cond_1
    return-object v0
.end method

.method public createEndElement(Ljavax/xml/namespace/QName;Ljava/util/Iterator;)Ljavax/xml/stream/events/EndElement;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, v0, p1}, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/EndElement;

    move-result-object p0

    return-object p0
.end method

.method public createEntityReference(Ljava/lang/String;Ljavax/xml/stream/events/EntityDeclaration;)Ljavax/xml/stream/events/EntityReference;
    .locals 1

    new-instance v0, Lcom/sun/xml/internal/stream/events/EntityReferenceEvent;

    invoke-direct {v0, p1, p2}, Lcom/sun/xml/internal/stream/events/EntityReferenceEvent;-><init>(Ljava/lang/String;Ljavax/xml/stream/events/EntityDeclaration;)V

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->location:Ljavax/xml/stream/Location;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    :cond_0
    return-object v0
.end method

.method public createIgnorableSpace(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;
    .locals 3

    new-instance v0, Lcom/sun/xml/internal/stream/events/CharacterEvent;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lcom/sun/xml/internal/stream/events/CharacterEvent;-><init>(Ljava/lang/String;ZZ)V

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->location:Ljavax/xml/stream/Location;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    :cond_0
    return-object v0
.end method

.method public createNamespace(Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;
    .locals 1

    .line 1
    new-instance v0, Lcom/sun/xml/internal/stream/events/NamespaceImpl;

    invoke-direct {v0, p1}, Lcom/sun/xml/internal/stream/events/NamespaceImpl;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->location:Ljavax/xml/stream/Location;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    :cond_0
    return-object v0
.end method

.method public createNamespace(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;
    .locals 1

    .line 3
    new-instance v0, Lcom/sun/xml/internal/stream/events/NamespaceImpl;

    invoke-direct {v0, p1, p2}, Lcom/sun/xml/internal/stream/events/NamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->location:Ljavax/xml/stream/Location;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    :cond_0
    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/ProcessingInstruction;
    .locals 1

    new-instance v0, Lcom/sun/xml/internal/stream/events/ProcessingInstructionEvent;

    invoke-direct {v0, p1, p2}, Lcom/sun/xml/internal/stream/events/ProcessingInstructionEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->location:Ljavax/xml/stream/Location;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    :cond_0
    return-object v0
.end method

.method public createSpace(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;
    .locals 1

    new-instance v0, Lcom/sun/xml/internal/stream/events/CharacterEvent;

    invoke-direct {v0, p1}, Lcom/sun/xml/internal/stream/events/CharacterEvent;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->location:Ljavax/xml/stream/Location;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    :cond_0
    return-object v0
.end method

.method public createStartDocument()Ljavax/xml/stream/events/StartDocument;
    .locals 1

    .line 1
    new-instance v0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;

    invoke-direct {v0}, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;-><init>()V

    .line 2
    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->location:Ljavax/xml/stream/Location;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    :cond_0
    return-object v0
.end method

.method public createStartDocument(Ljava/lang/String;)Ljavax/xml/stream/events/StartDocument;
    .locals 1

    .line 3
    new-instance v0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;

    invoke-direct {v0, p1}, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;-><init>(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->location:Ljavax/xml/stream/Location;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    :cond_0
    return-object v0
.end method

.method public createStartDocument(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/StartDocument;
    .locals 1

    .line 5
    new-instance v0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;

    invoke-direct {v0, p1, p2}, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->location:Ljavax/xml/stream/Location;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    :cond_0
    return-object v0
.end method

.method public createStartDocument(Ljava/lang/String;Ljava/lang/String;Z)Ljavax/xml/stream/events/StartDocument;
    .locals 1

    .line 7
    new-instance v0, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/xml/internal/stream/events/StartDocumentEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8
    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->location:Ljavax/xml/stream/Location;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    :cond_0
    return-object v0
.end method

.method public createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/StartElement;
    .locals 1

    .line 2
    new-instance v0, Lcom/sun/xml/internal/stream/events/StartElementEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/xml/internal/stream/events/StartElementEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->location:Ljavax/xml/stream/Location;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    :cond_0
    return-object v0
.end method

.method public createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;)Ljavax/xml/stream/events/StartElement;
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 4
    invoke-virtual/range {v0 .. v6}, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/stream/events/StartElement;

    move-result-object p0

    return-object p0
.end method

.method public createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/stream/events/StartElement;
    .locals 1

    .line 5
    new-instance v0, Lcom/sun/xml/internal/stream/events/StartElementEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/xml/internal/stream/events/StartElementEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p4}, Lcom/sun/xml/internal/stream/events/StartElementEvent;->addAttributes(Ljava/util/Iterator;)V

    .line 7
    invoke-virtual {v0, p5}, Lcom/sun/xml/internal/stream/events/StartElementEvent;->addNamespaceAttributes(Ljava/util/Iterator;)V

    .line 8
    invoke-virtual {v0, p6}, Lcom/sun/xml/internal/stream/events/StartElementEvent;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    .line 9
    iget-object p0, p0, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->location:Ljavax/xml/stream/Location;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Lcom/sun/xml/internal/stream/events/DummyEvent;->setLocation(Ljavax/xml/stream/Location;)V

    :cond_0
    return-object v0
.end method

.method public createStartElement(Ljavax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;)Ljavax/xml/stream/events/StartElement;
    .locals 6

    .line 1
    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;)Ljavax/xml/stream/events/StartElement;

    move-result-object p0

    return-object p0
.end method

.method public setLocation(Ljavax/xml/stream/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/xml/internal/stream/events/XMLEventFactoryImpl;->location:Ljavax/xml/stream/Location;

    return-void
.end method
