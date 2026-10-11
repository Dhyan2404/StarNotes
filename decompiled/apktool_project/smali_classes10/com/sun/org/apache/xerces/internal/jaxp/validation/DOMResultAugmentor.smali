.class final Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMDocumentHandler;


# instance fields
.field private final fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field private fDOMValidatorHelper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;

.field private fDocument:Lorg/w3c/dom/Document;

.field private fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

.field private fIgnoreChars:Z

.field private fStorePSVI:Z


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->fDOMValidatorHelper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;

    return-void
.end method

.method private processAttributePSVI(Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->fStorePSVI:Z

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/dom/PSVIAttrNSImpl;->setPSVI(Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;)V

    :cond_0
    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getMemberTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    move-result-object p0

    if-nez p0, :cond_2

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->isIDType()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setType(Ljava/lang/Object;)V

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/XSSimpleType;->isIDType()Z

    move-result p0

    return p0
.end method


# virtual methods
.method public cdata(Lorg/w3c/dom/CDATASection;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

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
    iget-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->fIgnoreChars:Z

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->fDOMValidatorHelper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->getCurrentElement()Lorg/w3c/dom/Node;

    move-result-object p2

    check-cast p2, Lorg/w3c/dom/Element;

    .line 4
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->fDocument:Lorg/w3c/dom/Document;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->toString()Ljava/lang/String;

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
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 1
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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 2
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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 2
    return-void
.end method

.method public emptyElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

    invoke-virtual {p0, p1, p3}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->fDOMValidatorHelper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->getCurrentElement()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    if-eqz v0, :cond_2

    const-string v0, "ELEMENT_PSVI"

    invoke-interface {p2, v0}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;

    if-eqz p2, :cond_2

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->fStorePSVI:Z

    if-eqz p0, :cond_0

    move-object p0, p1

    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/dom/PSVIElementNSImpl;->setPSVI(Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;)V

    :cond_0
    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getMemberTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xs/ItemPSVI;->getTypeDefinition()Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    move-result-object p0

    :cond_1
    check-cast p1, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->setType(Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)V

    :cond_2
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

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    .line 2
    return-void
.end method

.method public setDOMResult(Ljavax/xml/transform/dom/DOMResult;)V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->fIgnoreChars:Z

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
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->fDocument:Lorg/w3c/dom/Document;

    instance-of v0, p1, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    if-eqz v0, :cond_1

    move-object v1, p1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    :cond_1
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    instance-of p1, p1, Lcom/sun/org/apache/xerces/internal/dom/PSVIDocumentImpl;

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->fStorePSVI:Z

    return-void

    :cond_2
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->fDocument:Lorg/w3c/dom/Document;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->fStorePSVI:Z

    return-void
.end method

.method public setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V
    .locals 0

    return-void
.end method

.method public setIgnoringCharacters(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->fIgnoreChars:Z

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
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/org/apache/xerces/internal/xni/XNIException;
        }
    .end annotation

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->fDOMValidatorHelper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMValidatorHelper;->getCurrentElement()Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p3

    invoke-interface {p3}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    const-string v2, "ATTRIBUTE_PSVI"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_1

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p3, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-interface {p2, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getAugmentations(I)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object v6

    invoke-interface {v6, v2}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;

    if-eqz v6, :cond_0

    invoke-direct {p0, v5, v6}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->processAttributePSVI(Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, p1

    check-cast v6, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    invoke-virtual {v6, v5, v4}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getLength()I

    move-result p3

    if-le p3, v0, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    if-nez v1, :cond_2

    :goto_1
    if-ge v0, p3, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-interface {p2, v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getName(ILcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v2, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v1, v1, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    invoke-interface {p2, v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v2, v1, v3}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v0, p3, :cond_4

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-interface {p2, v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getName(ILcom/sun/org/apache/xerces/internal/xni/QName;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->fDocumentImpl:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object v6, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->uri:Ljava/lang/String;

    iget-object v7, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->rawname:Ljava/lang/String;

    iget-object v5, v5, Lcom/sun/org/apache/xerces/internal/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v1, v6, v7, v5}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-interface {p2, v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    invoke-interface {p2, v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->getAugmentations(I)Lcom/sun/org/apache/xerces/internal/xni/Augmentations;

    move-result-object v5

    invoke-interface {v5, v2}, Lcom/sun/org/apache/xerces/internal/xni/Augmentations;->getItem(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;

    if-eqz v5, :cond_3

    invoke-direct {p0, v1, v5}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DOMResultAugmentor;->processAttributePSVI(Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;)Z

    move-result v5

    if-eqz v5, :cond_3

    move-object v5, p1

    check-cast v5, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    invoke-virtual {v5, v1, v4}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V

    :cond_3
    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setSpecified(Z)V

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
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
