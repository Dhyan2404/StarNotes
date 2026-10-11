.class public final Lcom/sunia/HTREnginev2/rqe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sunia/HTREnginev2/pqe;


# instance fields
.field public final e:Lcom/sunia/HTREnginev2/tqe;

.field public f:Lorg/w3c/dom/Document;

.field public g:Lorg/apache/xerces/dom/CoreDocumentImpl;

.field public h:Z

.field public i:Z

.field public final j:Lorg/apache/xerces/xni/QName;


# direct methods
.method public constructor <init>(Lcom/sunia/HTREnginev2/tqe;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/apache/xerces/xni/QName;

    invoke-direct {v0}, Lorg/apache/xerces/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sunia/HTREnginev2/rqe;->j:Lorg/apache/xerces/xni/QName;

    iput-object p1, p0, Lcom/sunia/HTREnginev2/rqe;->e:Lcom/sunia/HTREnginev2/tqe;

    return-void
.end method


# virtual methods
.method public cdata(Lorg/w3c/dom/CDATASection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .line 1
    iget-boolean p2, p0, Lcom/sunia/HTREnginev2/rqe;->i:Z

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/sunia/HTREnginev2/rqe;->e:Lcom/sunia/HTREnginev2/tqe;

    invoke-virtual {p2}, Lcom/sunia/HTREnginev2/tqe;->h()Lorg/w3c/dom/Node;

    move-result-object p2

    check-cast p2, Lorg/w3c/dom/Element;

    iget-object p0, p0, Lcom/sunia/HTREnginev2/rqe;->f:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lorg/apache/xerces/xni/XMLString;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p0

    invoke-interface {p2, p0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    return-void
.end method

.method public characters(Lorg/w3c/dom/Text;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .line 2
    return-void
.end method

.method public comment(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public comment(Lorg/w3c/dom/Comment;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .line 2
    return-void
.end method

.method public doctypeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public doctypeDecl(Lorg/w3c/dom/DocumentType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .line 2
    return-void
.end method

.method public emptyElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/sunia/HTREnginev2/rqe;->startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lcom/sunia/HTREnginev2/rqe;->endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public endCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endDocument(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p1, p0, Lcom/sunia/HTREnginev2/rqe;->e:Lcom/sunia/HTREnginev2/tqe;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/tqe;->h()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/sunia/HTREnginev2/rqe;->g:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v0, :cond_2

    const-string v0, "ELEMENT_PSVI"

    invoke-interface {p2, v0}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/apache/xerces/xs/ElementPSVI;

    if-eqz p2, :cond_2

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/rqe;->h:Z

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Lorg/apache/xerces/dom/PSVIElementNSImpl;

    invoke-virtual {p0, p2}, Lorg/apache/xerces/dom/PSVIElementNSImpl;->setPSVI(Lorg/apache/xerces/xs/ElementPSVI;)V

    :cond_0
    invoke-interface {p2}, Lorg/apache/xerces/xs/ItemPSVI;->getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-interface {p2}, Lorg/apache/xerces/xs/ItemPSVI;->getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object p0

    :cond_1
    check-cast p1, Lorg/apache/xerces/dom/ElementNSImpl;

    invoke-virtual {p1, p0}, Lorg/apache/xerces/dom/ElementNSImpl;->setType(Lorg/apache/xerces/xs/XSTypeDefinition;)V

    :cond_2
    return-void
.end method

.method public endGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public getDocumentSource()Lorg/apache/xerces/xni/parser/XMLDocumentSource;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public ignorableWhitespace(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/sunia/HTREnginev2/rqe;->characters(Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V

    return-void
.end method

.method public final o(Lorg/apache/xerces/dom/AttrImpl;Lorg/apache/xerces/xs/AttributePSVI;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sunia/HTREnginev2/rqe;->h:Z

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Lorg/apache/xerces/dom/PSVIAttrNSImpl;

    invoke-virtual {p0, p2}, Lorg/apache/xerces/dom/PSVIAttrNSImpl;->setPSVI(Lorg/apache/xerces/xs/AttributePSVI;)V

    :cond_0
    invoke-interface {p2}, Lorg/apache/xerces/xs/ItemPSVI;->getMemberTypeDefinition()Lorg/apache/xerces/xs/XSSimpleTypeDefinition;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-interface {p2}, Lorg/apache/xerces/xs/ItemPSVI;->getTypeDefinition()Lorg/apache/xerces/xs/XSTypeDefinition;

    move-result-object p0

    if-eqz p0, :cond_2

    :cond_1
    invoke-virtual {p1, p0}, Lorg/apache/xerces/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    check-cast p0, Lorg/apache/xerces/impl/dv/XSSimpleType;

    invoke-interface {p0}, Lorg/apache/xerces/impl/dv/XSSimpleType;->isIDType()Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public processingInstruction(Ljava/lang/String;Lorg/apache/xerces/xni/XMLString;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .line 1
    return-void
.end method

.method public processingInstruction(Lorg/w3c/dom/ProcessingInstruction;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    .line 2
    return-void
.end method

.method public setDOMResult(Ljavax/xml/transform/dom/DOMResult;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/rqe;->i:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v2, 0x9

    if-ne v0, v2, :cond_0

    check-cast p1, Lorg/w3c/dom/Document;

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/sunia/HTREnginev2/rqe;->f:Lorg/w3c/dom/Document;

    instance-of v0, p1, Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Lorg/apache/xerces/dom/CoreDocumentImpl;

    :cond_1
    iput-object v1, p0, Lcom/sunia/HTREnginev2/rqe;->g:Lorg/apache/xerces/dom/CoreDocumentImpl;

    instance-of p1, p1, Lorg/apache/xerces/dom/PSVIDocumentImpl;

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/rqe;->h:Z

    return-void

    :cond_2
    iput-object v1, p0, Lcom/sunia/HTREnginev2/rqe;->f:Lorg/w3c/dom/Document;

    iput-object v1, p0, Lcom/sunia/HTREnginev2/rqe;->g:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iput-boolean v0, p0, Lcom/sunia/HTREnginev2/rqe;->h:Z

    return-void
.end method

.method public setDocumentSource(Lorg/apache/xerces/xni/parser/XMLDocumentSource;)V
    .locals 0

    return-void
.end method

.method public setIgnoringCharacters(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sunia/HTREnginev2/rqe;->i:Z

    return-void
.end method

.method public startCDATA(Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startDocument(Lorg/apache/xerces/xni/XMLLocator;Ljava/lang/String;Lorg/apache/xerces/xni/NamespaceContext;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public startElement(Lorg/apache/xerces/xni/QName;Lorg/apache/xerces/xni/XMLAttributes;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    iget-object p1, p0, Lcom/sunia/HTREnginev2/rqe;->e:Lcom/sunia/HTREnginev2/tqe;

    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/tqe;->h()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p3

    invoke-interface {p3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    iget-object v1, p0, Lcom/sunia/HTREnginev2/rqe;->g:Lorg/apache/xerces/dom/CoreDocumentImpl;

    const-string v2, "ATTRIBUTE_PSVI"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    move v1, v3

    :goto_0
    if-lt v1, v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p3, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/dom/AttrImpl;

    invoke-interface {p2, v1}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v6

    invoke-interface {v6, v2}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/xs/AttributePSVI;

    if-eqz v6, :cond_1

    invoke-virtual {p0, v5, v6}, Lcom/sunia/HTREnginev2/rqe;->o(Lorg/apache/xerces/dom/AttrImpl;Lorg/apache/xerces/xs/AttributePSVI;)Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, p1

    check-cast v6, Lorg/apache/xerces/dom/ElementImpl;

    invoke-virtual {v6, v5, v4}, Lorg/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    invoke-interface {p2}, Lorg/apache/xerces/xni/XMLAttributes;->getLength()I

    move-result p3

    if-le p3, v0, :cond_7

    iget-object v1, p0, Lcom/sunia/HTREnginev2/rqe;->g:Lorg/apache/xerces/dom/CoreDocumentImpl;

    if-nez v1, :cond_4

    :goto_2
    if-lt v0, p3, :cond_3

    goto :goto_4

    :cond_3
    iget-object v1, p0, Lcom/sunia/HTREnginev2/rqe;->j:Lorg/apache/xerces/xni/QName;

    invoke-interface {p2, v0, v1}, Lorg/apache/xerces/xni/XMLAttributes;->getName(ILorg/apache/xerces/xni/QName;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/rqe;->j:Lorg/apache/xerces/xni/QName;

    iget-object v2, v1, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, v1, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {p2, v0}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v1, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    :goto_3
    if-lt v0, p3, :cond_5

    goto :goto_4

    :cond_5
    iget-object v1, p0, Lcom/sunia/HTREnginev2/rqe;->j:Lorg/apache/xerces/xni/QName;

    invoke-interface {p2, v0, v1}, Lorg/apache/xerces/xni/XMLAttributes;->getName(ILorg/apache/xerces/xni/QName;)V

    iget-object v1, p0, Lcom/sunia/HTREnginev2/rqe;->g:Lorg/apache/xerces/dom/CoreDocumentImpl;

    iget-object v5, p0, Lcom/sunia/HTREnginev2/rqe;->j:Lorg/apache/xerces/xni/QName;

    iget-object v6, v5, Lorg/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v7, v5, Lorg/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v5, v5, Lorg/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v5}, Lorg/apache/xerces/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v1

    check-cast v1, Lorg/apache/xerces/dom/AttrImpl;

    invoke-interface {p2, v0}, Lorg/apache/xerces/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/apache/xerces/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    invoke-interface {p2, v0}, Lorg/apache/xerces/xni/XMLAttributes;->getAugmentations(I)Lorg/apache/xerces/xni/Augmentations;

    move-result-object v5

    invoke-interface {v5, v2}, Lorg/apache/xerces/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/xerces/xs/AttributePSVI;

    if-eqz v5, :cond_6

    invoke-virtual {p0, v1, v5}, Lcom/sunia/HTREnginev2/rqe;->o(Lorg/apache/xerces/dom/AttrImpl;Lorg/apache/xerces/xs/AttributePSVI;)Z

    move-result v5

    if-eqz v5, :cond_6

    move-object v5, p1

    check-cast v5, Lorg/apache/xerces/dom/ElementImpl;

    invoke-virtual {v5, v1, v4}, Lorg/apache/xerces/dom/ElementImpl;->setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V

    :cond_6
    invoke-virtual {v1, v3}, Lorg/apache/xerces/dom/AttrImpl;->setSpecified(Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_7
    :goto_4
    return-void
.end method

.method public startGeneralEntity(Ljava/lang/String;Lorg/apache/xerces/xni/XMLResourceIdentifier;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public textDecl(Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public xmlDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/xerces/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/xerces/xni/XNIException;
        }
    .end annotation

    return-void
.end method
