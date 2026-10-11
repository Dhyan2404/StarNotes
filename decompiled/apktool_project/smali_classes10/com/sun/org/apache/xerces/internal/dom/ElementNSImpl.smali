.class public Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;
.super Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x7ee003136adf5f42L

.field static final xmlURI:Ljava/lang/String; = "http://www.w3.org/XML/1998/namespace"


# instance fields
.field protected localName:Ljava/lang/String;

.field protected namespaceURI:Ljava/lang/String;

.field transient type:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p3}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->setName(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    .line 4
    invoke-direct {p0, p1, p3}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 5
    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->localName:Ljava/lang/String;

    .line 6
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    return-void
.end method

.method private setName(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    :cond_1
    const/16 v1, 0xe

    const-string v2, "NAMESPACE_ERR"

    const-string v3, "http://www.w3.org/dom/DOMTR"

    if-eqz p2, :cond_8

    const/16 v4, 0x3a

    invoke-virtual {p2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    invoke-virtual {p2, v4}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {v6, p2, v5, v4}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->checkNamespaceWF(Ljava/lang/String;II)V

    if-gez v5, :cond_4

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->localName:Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-boolean v4, p0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_7

    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->checkQName(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "xmlns"

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p1, :cond_3

    sget-object v4, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    if-eqz p1, :cond_7

    sget-object v4, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-static {v3, v2, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_4
    const/4 v6, 0x0

    invoke-virtual {p2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->localName:Ljava/lang/String;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-boolean p2, p2, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz p2, :cond_7

    if-eqz p1, :cond_6

    const-string p2, "xml"

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    sget-object p2, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    :cond_5
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->localName:Ljava/lang/String;

    invoke-virtual {p2, v5, v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->checkQName(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {p0, v5, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->checkDOMNSErr(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    invoke-static {v3, v2, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_7
    :goto_1
    return-void

    :cond_8
    invoke-static {v3, v2, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v1, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getBaseURI()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    const-string v2, "http://www.w3.org/XML/1998/namespace"

    const-string v3, "base"

    invoke-virtual {v0, v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    :try_start_0
    new-instance v2, Lcom/sun/org/apache/xerces/internal/util/URI;

    invoke-direct {v2, v0}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/util/URI;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->parentNode()Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->parentNode()Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    move-result-object p0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getBaseURI()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_3

    :try_start_1
    new-instance v2, Lcom/sun/org/apache/xerces/internal/util/URI;

    new-instance v3, Lcom/sun/org/apache/xerces/internal/util/URI;

    invoke-direct {v3, p0}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3, v0}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Lcom/sun/org/apache/xerces/internal/util/URI;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/util/URI;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    :cond_3
    return-object v1

    :cond_4
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->parentNode()Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->parentNode()Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_6

    :try_start_2
    new-instance p0, Lcom/sun/org/apache/xerces/internal/util/URI;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/URI;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    return-object v1

    :cond_6
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getBaseURI()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_7
    move-object p0, v1

    :goto_3
    if-eqz p0, :cond_8

    :try_start_3
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/URI;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/URI;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_3
    .catch Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException; {:try_start_3 .. :try_end_3} :catch_3

    return-object p0

    :catch_3
    :cond_8
    return-object v1
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->localName:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->name:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->name:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->type:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    if-eqz p0, :cond_1

    instance-of v0, p0, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    if-eqz v0, :cond_0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->getTypeName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->getTypeName()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->type:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/XSObject;->getNamespace()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->type:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    if-eqz p0, :cond_2

    instance-of v0, p0, Lcom/sun/org/apache/xerces/internal/xs/XSSimpleTypeDefinition;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/dv/xs/XSSimpleTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_1
    check-cast p0, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSComplexTypeDecl;->isDOMDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method rename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_0
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->name:Ljava/lang/String;

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->setName(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->reconcileDefaultAttributes()V

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isReadOnly()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/dom/DOMTR"

    if-nez v0, :cond_4

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXML11Version()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isXMLName(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    const/16 v3, 0xe

    const-string v4, "NAMESPACE_ERR"

    if-eqz v0, :cond_2

    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    const-string v0, "xml"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    const-string v5, "http://www.w3.org/XML/1998/namespace"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v2, v4, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v3, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {v2, v4, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v3, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_3
    const-string p0, "INVALID_CHARACTER_ERR"

    invoke-static {v2, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x5

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_4
    const-string p0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v2, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_5
    :goto_0
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ":"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->localName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->name:Ljava/lang/String;

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->localName:Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->name:Ljava/lang/String;

    :goto_1
    return-void
.end method

.method public setType(Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->type:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    return-void
.end method

.method public setValues(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->firstChild:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->fNodeListCache:Lcom/sun/org/apache/xerces/internal/dom/NodeListCache;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->flags:S

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setOwnerDocument(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData(Z)V

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->name:Ljava/lang/String;

    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->localName:Ljava/lang/String;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    return-void
.end method
