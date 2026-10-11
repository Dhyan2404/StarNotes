.class final Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;


# static fields
.field private static final kidOK:[I


# instance fields
.field private final fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field private fCurrentNode:Lorg/w3c/dom/Node;

.field private fDocument:Lorg/w3c/dom/Document;

.field private fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

.field private fFragmentRoot:Lorg/w3c/dom/Node;

.field private fIgnoreChars:Z

.field private fNextSibling:Lorg/w3c/dom/Node;

.field private fStorePSVI:Z

.field private fTarget:Lorg/w3c/dom/Node;

.field private final fTargetChildren:Ljava/util/ArrayList;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xd

    new-array v0, v0, [I

    sput-object v0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->kidOK:[I

    const/16 v1, 0x9

    const/16 v2, 0x582

    aput v2, v0, v1

    const/4 v1, 0x1

    const/16 v2, 0x1ba

    aput v2, v0, v1

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v2, v0, v1

    const/4 v1, 0x2

    const/16 v2, 0x28

    aput v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v2, v0, v1

    const/16 v1, 0xc

    aput v2, v0, v1

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fTargetChildren:Ljava/util/ArrayList;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    return-void
.end method

.method private append(Lorg/w3c/dom/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->kidOK:[I

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fTarget:Lorg/w3c/dom/Node;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    aget v0, v0, v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    shl-int v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fTargetChildren:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :cond_1
    const-string p0, "HIERARCHY_REQUEST_ERR"

    const/4 p1, 0x0

    const-string v0, "http://www.w3.org/dom/DOMTR"

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/XNIException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public cdata(Lorg/w3c/dom/CDATASection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fDocument:Lorg/w3c/dom/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->append(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 2
    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fIgnoreChars:Z

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fDocument:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->append(Lorg/w3c/dom/Node;)V

    :cond_0
    return-void
.end method

.method public characters(Lorg/w3c/dom/Text;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fDocument:Lorg/w3c/dom/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->append(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public comment(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public comment(Lorg/w3c/dom/Comment;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fDocument:Lorg/w3c/dom/Document;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->append(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public doctypeDecl(Lorg/w3c/dom/DocumentType;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    if-eqz v0, :cond_3

    .line 3
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createDocumentType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/DocumentType;

    move-result-object v0

    .line 4
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getInternalSubset()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 5
    move-object v2, v0

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->setInternalSubset(Ljava/lang/String;)V

    .line 6
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 7
    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getEntities()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    .line 8
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    .line 9
    invoke-interface {v1, v5}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Entity;

    .line 10
    iget-object v7, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createEntity(Ljava/lang/String;)Lorg/w3c/dom/Entity;

    move-result-object v7

    check-cast v7, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;

    .line 11
    invoke-interface {v6}, Lorg/w3c/dom/Entity;->getPublicId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;->setPublicId(Ljava/lang/String;)V

    .line 12
    invoke-interface {v6}, Lorg/w3c/dom/Entity;->getSystemId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;->setSystemId(Ljava/lang/String;)V

    .line 13
    invoke-interface {v6}, Lorg/w3c/dom/Entity;->getNotationName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Lcom/sun/org/apache/xerces/internal/dom/EntityImpl;->setNotationName(Ljava/lang/String;)V

    .line 14
    invoke-interface {v2, v7}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 15
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/DocumentType;->getNotations()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    .line 16
    invoke-interface {v0}, Lorg/w3c/dom/DocumentType;->getNotations()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 17
    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    :goto_1
    if-ge v4, v2, :cond_2

    .line 18
    invoke-interface {p1, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Notation;

    .line 19
    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createNotation(Ljava/lang/String;)Lorg/w3c/dom/Notation;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xerces/internal/dom/NotationImpl;

    .line 20
    invoke-interface {v3}, Lorg/w3c/dom/Notation;->getPublicId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/org/apache/xerces/internal/dom/NotationImpl;->setPublicId(Ljava/lang/String;)V

    .line 21
    invoke-interface {v3}, Lorg/w3c/dom/Notation;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Lcom/sun/org/apache/xerces/internal/dom/NotationImpl;->setSystemId(Ljava/lang/String;)V

    .line 22
    invoke-interface {v1, v5}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 23
    :cond_2
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->append(Lorg/w3c/dom/Node;)V

    :cond_3
    return-void
.end method

.method public emptyElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    return-void
.end method

.method public endCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endDocument(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fTargetChildren:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fNextSibling:Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    :goto_0
    if-ge v1, p1, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fTarget:Lorg/w3c/dom/Node;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fTargetChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    invoke-interface {v0, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :goto_1
    if-ge v1, p1, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fTarget:Lorg/w3c/dom/Node;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fTargetChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Node;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fNextSibling:Lorg/w3c/dom/Node;

    invoke-interface {v0, v2, v3}, Lorg/w3c/dom/Node;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    if-eqz p2, :cond_2

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    if-eqz p1, :cond_2

    const-string p1, "ELEMENT_PSVI"

    invoke-interface {p2, p1}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;

    if-eqz p1, :cond_2

    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fStorePSVI:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lorg/w3c/dom/Node;

    check-cast p2, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->setPSVI(Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;)V

    :cond_0
    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getMemberTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-interface {p1}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object p2

    :cond_1
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lorg/w3c/dom/Node;

    check-cast p1, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;

    invoke-virtual {p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->setType(Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)V

    :cond_2
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lorg/w3c/dom/Node;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fFragmentRoot:Lorg/w3c/dom/Node;

    if-ne p1, p2, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lorg/w3c/dom/Node;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fFragmentRoot:Lorg/w3c/dom/Node;

    return-void

    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lorg/w3c/dom/Node;

    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public getDocumentSource()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public ignorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public processingInstruction(Lorg/w3c/dom/ProcessingInstruction;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fDocument:Lorg/w3c/dom/Document;

    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->append(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public setDOMResult(Ljavax/xml/transform/dom/DOMResult;)V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fFragmentRoot:Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fIgnoreChars:Z

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fTargetChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fTarget:Lorg/w3c/dom/Node;

    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMResult;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fNextSibling:Lorg/w3c/dom/Node;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fTarget:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/16 v1, 0x9

    if-ne p1, v1, :cond_0

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fTarget:Lorg/w3c/dom/Node;

    check-cast p1, Lorg/w3c/dom/Document;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fTarget:Lorg/w3c/dom/Node;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fDocument:Lorg/w3c/dom/Document;

    instance-of v1, p1, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    :cond_1
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    instance-of p1, p1, Lcom/sun/org/apache/xerces/internal/dom/PSVIDocumentImpl;

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fStorePSVI:Z

    return-void

    :cond_2
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fTarget:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fNextSibling:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fDocument:Lorg/w3c/dom/Document;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iput-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fStorePSVI:Z

    return-void
.end method

.method public setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V
    .locals 0

    return-void
.end method

.method public setIgnoringCharacters(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fIgnoreChars:Z

    return-void
.end method

.method public startCDATA(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startDocument(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLength()I

    move-result p3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fDocument:Lorg/w3c/dom/Document;

    iget-object v2, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    :goto_0
    if-ge v1, p3, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-interface {p2, v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getName(ILcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v0, v0, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {p2, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v0, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v2, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v3, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    :goto_1
    if-ge v1, p3, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-interface {p2, v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getName(ILcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v3, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v4, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v2, v2, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-interface {p2, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    invoke-interface {p2, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getAugmentations(I)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object v2

    const-string v3, "ATTRIBUTE_PSVI"

    invoke-interface {v2, v3}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;

    if-eqz v2, :cond_3

    iget-boolean v3, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fStorePSVI:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->setPSVI(Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;)V

    :cond_1
    invoke-interface {v2}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getMemberTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    move-result-object v3

    const/4 v4, 0x1

    if-nez v3, :cond_2

    invoke-interface {v2}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    check-cast v2, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {v2}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->isIDType()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    invoke-virtual {v2, v0, v4}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V

    goto :goto_2

    :cond_2
    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    check-cast v3, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {v3}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->isIDType()Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    invoke-virtual {v2, v0, v4}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V

    :cond_3
    :goto_2
    invoke-interface {p2, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->isSpecified(I)Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setSpecified(Z)V

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->append(Lorg/w3c/dom/Node;)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fCurrentNode:Lorg/w3c/dom/Node;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fFragmentRoot:Lorg/w3c/dom/Node;

    if-nez p2, :cond_5

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultBuilder;->fFragmentRoot:Lorg/w3c/dom/Node;

    :cond_5
    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLResourceIdentifier;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method
