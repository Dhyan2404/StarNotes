.class public final Lorg/apache/xerces/stax/XMLEventFactoryImpl;
.super Ljavax/xml/stream/XMLEventFactory;
.source "SourceFile"


# instance fields
.field public a:Ljavax/xml/stream/Location;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljavax/xml/stream/XMLEventFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljavax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/stream/events/StartElement;
    .locals 7

    new-instance v6, Lorg/apache/xerces/stax/events/StartElementImpl;

    iget-object v5, p0, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->a:Ljavax/xml/stream/Location;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lorg/apache/xerces/stax/events/StartElementImpl;-><init>(Ljavax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;Ljavax/xml/namespace/NamespaceContext;Ljavax/xml/stream/Location;)V

    return-object v6
.end method

.method public createAttribute(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;
    .locals 1

    .line 1
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, p2}, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->createAttribute(Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;

    move-result-object p0

    return-object p0
.end method

.method public createAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;
    .locals 1

    .line 2
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, p2, p3, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p4}, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->createAttribute(Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;

    move-result-object p0

    return-object p0
.end method

.method public createAttribute(Ljavax/xml/namespace/QName;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;
    .locals 7

    .line 3
    new-instance v6, Lorg/apache/xerces/stax/events/AttributeImpl;

    const-string v3, "CDATA"

    const/4 v4, 0x1

    iget-object v5, p0, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->a:Ljavax/xml/stream/Location;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lorg/apache/xerces/stax/events/AttributeImpl;-><init>(Ljavax/xml/namespace/QName;Ljava/lang/String;Ljava/lang/String;ZLjavax/xml/stream/Location;)V

    return-object v6
.end method

.method public createCData(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;
    .locals 2

    new-instance v0, Lorg/apache/xerces/stax/events/CharactersImpl;

    const/16 v1, 0xc

    iget-object p0, p0, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->a:Ljavax/xml/stream/Location;

    invoke-direct {v0, p1, v1, p0}, Lorg/apache/xerces/stax/events/CharactersImpl;-><init>(Ljava/lang/String;ILjavax/xml/stream/Location;)V

    return-object v0
.end method

.method public createCharacters(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;
    .locals 2

    new-instance v0, Lorg/apache/xerces/stax/events/CharactersImpl;

    const/4 v1, 0x4

    iget-object p0, p0, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->a:Ljavax/xml/stream/Location;

    invoke-direct {v0, p1, v1, p0}, Lorg/apache/xerces/stax/events/CharactersImpl;-><init>(Ljava/lang/String;ILjavax/xml/stream/Location;)V

    return-object v0
.end method

.method public createComment(Ljava/lang/String;)Ljavax/xml/stream/events/Comment;
    .locals 1

    new-instance v0, Lorg/apache/xerces/stax/events/CommentImpl;

    iget-object p0, p0, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->a:Ljavax/xml/stream/Location;

    invoke-direct {v0, p1, p0}, Lorg/apache/xerces/stax/events/CommentImpl;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    return-object v0
.end method

.method public createDTD(Ljava/lang/String;)Ljavax/xml/stream/events/DTD;
    .locals 1

    new-instance v0, Lorg/apache/xerces/stax/events/DTDImpl;

    iget-object p0, p0, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->a:Ljavax/xml/stream/Location;

    invoke-direct {v0, p1, p0}, Lorg/apache/xerces/stax/events/DTDImpl;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    return-object v0
.end method

.method public createEndDocument()Ljavax/xml/stream/events/EndDocument;
    .locals 1

    new-instance v0, Lorg/apache/xerces/stax/events/EndDocumentImpl;

    iget-object p0, p0, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->a:Ljavax/xml/stream/Location;

    invoke-direct {v0, p0}, Lorg/apache/xerces/stax/events/EndDocumentImpl;-><init>(Ljavax/xml/stream/Location;)V

    return-object v0
.end method

.method public createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/EndElement;
    .locals 1

    .line 1
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, p2, p3, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->createEndElement(Ljavax/xml/namespace/QName;Ljava/util/Iterator;)Ljavax/xml/stream/events/EndElement;

    move-result-object p0

    return-object p0
.end method

.method public createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Ljavax/xml/stream/events/EndElement;
    .locals 1

    .line 2
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, p2, p3, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p4}, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->createEndElement(Ljavax/xml/namespace/QName;Ljava/util/Iterator;)Ljavax/xml/stream/events/EndElement;

    move-result-object p0

    return-object p0
.end method

.method public createEndElement(Ljavax/xml/namespace/QName;Ljava/util/Iterator;)Ljavax/xml/stream/events/EndElement;
    .locals 1

    .line 3
    new-instance v0, Lorg/apache/xerces/stax/events/EndElementImpl;

    iget-object p0, p0, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->a:Ljavax/xml/stream/Location;

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/xerces/stax/events/EndElementImpl;-><init>(Ljavax/xml/namespace/QName;Ljava/util/Iterator;Ljavax/xml/stream/Location;)V

    return-object v0
.end method

.method public createEntityReference(Ljava/lang/String;Ljavax/xml/stream/events/EntityDeclaration;)Ljavax/xml/stream/events/EntityReference;
    .locals 1

    new-instance v0, Lorg/apache/xerces/stax/events/EntityReferenceImpl;

    iget-object p0, p0, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->a:Ljavax/xml/stream/Location;

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/xerces/stax/events/EntityReferenceImpl;-><init>(Ljava/lang/String;Ljavax/xml/stream/events/EntityDeclaration;Ljavax/xml/stream/Location;)V

    return-object v0
.end method

.method public createIgnorableSpace(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;
    .locals 2

    new-instance v0, Lorg/apache/xerces/stax/events/CharactersImpl;

    const/4 v1, 0x6

    iget-object p0, p0, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->a:Ljavax/xml/stream/Location;

    invoke-direct {v0, p1, v1, p0}, Lorg/apache/xerces/stax/events/CharactersImpl;-><init>(Ljava/lang/String;ILjavax/xml/stream/Location;)V

    return-object v0
.end method

.method public createNamespace(Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;
    .locals 1

    .line 1
    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;

    move-result-object p0

    return-object p0
.end method

.method public createNamespace(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;
    .locals 1

    .line 2
    new-instance v0, Lorg/apache/xerces/stax/events/NamespaceImpl;

    iget-object p0, p0, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->a:Ljavax/xml/stream/Location;

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/xerces/stax/events/NamespaceImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/stream/Location;)V

    return-object v0
.end method

.method public createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/ProcessingInstruction;
    .locals 1

    new-instance v0, Lorg/apache/xerces/stax/events/ProcessingInstructionImpl;

    iget-object p0, p0, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->a:Ljavax/xml/stream/Location;

    invoke-direct {v0, p1, p2, p0}, Lorg/apache/xerces/stax/events/ProcessingInstructionImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Ljavax/xml/stream/Location;)V

    return-object v0
.end method

.method public createSpace(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;
    .locals 0

    invoke-virtual {p0, p1}, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->createCharacters(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object p0

    return-object p0
.end method

.method public createStartDocument()Ljavax/xml/stream/events/StartDocument;
    .locals 1

    .line 1
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->createStartDocument(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/StartDocument;

    move-result-object p0

    return-object p0
.end method

.method public createStartDocument(Ljava/lang/String;)Ljavax/xml/stream/events/StartDocument;
    .locals 1

    .line 2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->createStartDocument(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/StartDocument;

    move-result-object p0

    return-object p0
.end method

.method public createStartDocument(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/StartDocument;
    .locals 8

    .line 3
    new-instance v7, Lorg/apache/xerces/stax/events/StartDocumentImpl;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v6, p0, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->a:Ljavax/xml/stream/Location;

    move-object v0, v7

    move-object v1, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/xerces/stax/events/StartDocumentImpl;-><init>(Ljava/lang/String;ZZZLjava/lang/String;Ljavax/xml/stream/Location;)V

    return-object v7
.end method

.method public createStartDocument(Ljava/lang/String;Ljava/lang/String;Z)Ljavax/xml/stream/events/StartDocument;
    .locals 8

    .line 4
    new-instance v7, Lorg/apache/xerces/stax/events/StartDocumentImpl;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v2, v0

    const/4 v4, 0x1

    iget-object v6, p0, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->a:Ljavax/xml/stream/Location;

    move-object v0, v7

    move-object v1, p1

    move v3, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lorg/apache/xerces/stax/events/StartDocumentImpl;-><init>(Ljava/lang/String;ZZZLjava/lang/String;Ljavax/xml/stream/Location;)V

    return-object v7
.end method

.method public createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/StartElement;
    .locals 1

    .line 1
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, p2, p3, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1, p1}, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->createStartElement(Ljavax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;)Ljavax/xml/stream/events/StartElement;

    move-result-object p0

    return-object p0
.end method

.method public createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;)Ljavax/xml/stream/events/StartElement;
    .locals 1

    .line 2
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, p2, p3, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p4, p5}, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->createStartElement(Ljavax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;)Ljavax/xml/stream/events/StartElement;

    move-result-object p0

    return-object p0
.end method

.method public createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/stream/events/StartElement;
    .locals 1

    .line 3
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-direct {v0, p2, p3, p1}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0, p4, p5, p6}, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->a(Ljavax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/stream/events/StartElement;

    move-result-object p0

    return-object p0
.end method

.method public createStartElement(Ljavax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;)Ljavax/xml/stream/events/StartElement;
    .locals 1

    .line 4
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->a(Ljavax/xml/namespace/QName;Ljava/util/Iterator;Ljava/util/Iterator;Ljavax/xml/namespace/NamespaceContext;)Ljavax/xml/stream/events/StartElement;

    move-result-object p0

    return-object p0
.end method

.method public setLocation(Ljavax/xml/stream/Location;)V
    .locals 0

    iput-object p1, p0, Lorg/apache/xerces/stax/XMLEventFactoryImpl;->a:Ljavax/xml/stream/Location;

    return-void
.end method
