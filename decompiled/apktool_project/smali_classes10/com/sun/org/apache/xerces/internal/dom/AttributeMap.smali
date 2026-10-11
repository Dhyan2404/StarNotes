.class public Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;
.super Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = 0x7b21d4678ec641a7L


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;->cloneContent(Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->hasDefaults(Z)V

    :cond_0
    return-void
.end method

.method private final remove(Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;IZ)Lorg/w3c/dom/Node;
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerDocument()Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isIdAttribute()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->hasDefaults()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eqz p3, :cond_3

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    check-cast p3, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->getDefaultAttributes()Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    move-result-object p3

    if-eqz p3, :cond_2

    invoke-virtual {p3, v1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p3

    if-eqz p3, :cond_2

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_2

    invoke-interface {p3, v4}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-interface {p3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    move-object p3, v2

    check-cast p3, Lcom/sun/org/apache/xerces/internal/dom/AttrNSImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p3, Lcom/sun/org/apache/xerces/internal/dom/AttrNSImpl;->namespaceURI:Ljava/lang/String;

    :cond_1
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    iput-object p3, v2, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isOwned(Z)V

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isSpecified(Z)V

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {p3, v2, p2}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isIdAttribute()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object p2

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    check-cast p3, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    invoke-virtual {v0, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    goto :goto_0

    :cond_2
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {p3, p2}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0

    :cond_3
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {p3, p2}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_4
    :goto_0
    iput-object v0, p1, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isOwned(Z)V

    invoke-virtual {p1, v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isSpecified(Z)V

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isIdAttribute(Z)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v0, p1, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->removedAttrNode(Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Ljava/lang/String;)V

    return-object p1
.end method


# virtual methods
.method public cloneContent(Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;)V
    .locals 5

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1, v0}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->setSize(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isSpecified()Z

    move-result v2

    invoke-virtual {v4, v2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isSpecified(Z)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v2, v4, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    iput-object v2, v4, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isOwned(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public cloneMap(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;
    .locals 2

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    check-cast p1, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;-><init>(Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->hasDefaults()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->hasDefaults(Z)V

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;->cloneContent(Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;)V

    return-object v0
.end method

.method public final internalRemoveNamedItem(Ljava/lang/String;Z)Lorg/w3c/dom/Node;
    .locals 3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->isReadOnly()Z

    move-result v0

    const-string v1, "http://www.w3.org/dom/DOMTR"

    const/4 v2, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;I)I

    move-result p1

    if-gez p1, :cond_1

    if-nez p2, :cond_0

    return-object v2

    :cond_0
    const-string p0, "NOT_FOUND_ERR"

    invoke-static {v1, p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {p2, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;->remove(Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;IZ)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v1, p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x7

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public final internalRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;Z)Lorg/w3c/dom/Node;
    .locals 7

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerDocument()Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    move-result-object v0

    iget-boolean v1, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    const-string v2, "http://www.w3.org/dom/DOMTR"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v2, p0, v3}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x7

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_3

    if-nez p3, :cond_2

    return-object v3

    :cond_2
    const-string p0, "NOT_FOUND_ERR"

    invoke-static {v2, p0, v3}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_3
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {p3, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isIdAttribute()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {p3}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->hasDefaults()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    check-cast v3, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->getDefaultAttributes()Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {p0, v2, v5}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;I)I

    move-result v6

    if-ltz v6, :cond_6

    add-int/2addr v6, v4

    invoke-virtual {p0, v2, v6}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;I)I

    move-result v2

    if-gez v2, :cond_6

    invoke-interface {v3, v4}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    iput-object v6, v2, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    move-object v3, v2

    check-cast v3, Lcom/sun/org/apache/xerces/internal/dom/AttrNSImpl;

    iput-object p1, v3, Lcom/sun/org/apache/xerces/internal/dom/AttrNSImpl;->namespaceURI:Ljava/lang/String;

    :cond_5
    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isOwned(Z)V

    invoke-virtual {v2, v5}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isSpecified(Z)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {p1, v2, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isIdAttribute()Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    check-cast v1, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    invoke-virtual {v0, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    goto :goto_1

    :cond_6
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_1

    :cond_7
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_1

    :cond_8
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {p1, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_9
    :goto_1
    iput-object v0, p3, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {p3, v5}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isOwned(Z)V

    invoke-virtual {p3, v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isSpecified(Z)V

    invoke-virtual {p3, v5}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isIdAttribute(Z)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v0, p3, p0, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->removedAttrNode(Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Ljava/lang/String;)V

    return-object p3
.end method

.method public moveSpecifiedAttributes(Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;)V
    .locals 4

    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_3

    iget-object v2, p1, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isSpecified()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct {p1, v2, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;->remove(Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;IZ)Lorg/w3c/dom/Node;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getLocalName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    :cond_1
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;->setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_2
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_3
    return-void
.end method

.method public reconcileDefaults(Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;)V
    .locals 7

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isSpecified()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-direct {p0, v3, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;->remove(Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;IZ)Lorg/w3c/dom/Node;

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    goto :goto_3

    :cond_4
    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v3, v1

    :goto_2
    if-ge v3, v0, :cond_7

    iget-object v4, p1, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v4, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getNodeName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5, v1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;I)I

    move-result v5

    if-gez v5, :cond_5

    rsub-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v2}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    iput-object v6, v4, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v4, v2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isOwned(Z)V

    invoke-virtual {v4, v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isSpecified(Z)V

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v6, v4, v5}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_6
    :goto_3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;->cloneContent(Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;)V

    :cond_7
    return-void
.end method

.method public removeItem(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, p1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_1
    if-ltz v0, :cond_2

    check-cast p1, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-direct {p0, p1, v0, p2}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;->remove(Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;IZ)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_2
    const-string p0, "NOT_FOUND_ERR"

    const/4 p1, 0x0

    const-string p2, "http://www.w3.org/dom/DOMTR"

    invoke-static {p2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public removeNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;->internalRemoveNamedItem(Ljava/lang/String;Z)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;->internalRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;Z)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public safeRemoveNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;->internalRemoveNamedItem(Ljava/lang/String;Z)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public safeRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;->internalRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;Z)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerDocument()Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    const-string v1, "http://www.w3.org/dom/DOMTR"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerDocument()Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    move-result-object v4

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "HIERARCHY_REQUEST_ERR"

    invoke-static {v1, p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    const-string p0, "WRONG_DOCUMENT_ERR"

    invoke-static {v1, p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x4

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    const-string p0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v1, p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    move-object v3, p1

    check-cast v3, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isOwned()Z

    move-result v4

    const/16 v5, 0xa

    if-eqz v4, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    if-ne v0, p0, :cond_4

    goto :goto_1

    :cond_4
    const-string p0, "INUSE_ATTRIBUTE_ERR"

    invoke-static {v1, p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v5, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-object p1

    :cond_6
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    iput-object v0, v3, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isOwned(Z)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {p0, v1, v4}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_7

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v5, p1, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerDocument()Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    move-result-object p1

    iput-object p1, v2, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isOwned(Z)V

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isSpecified(Z)V

    goto :goto_2

    :cond_7
    rsub-int/lit8 v0, v1, -0x1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    if-nez v1, :cond_8

    new-instance v1, Ljava/util/Vector;

    const/4 v6, 0x5

    invoke-direct {v1, v6, v5}, Ljava/util/Vector;-><init>(II)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    :cond_8
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v1, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :goto_2
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerDocument()Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setAttrNode(Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;)V

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isNormalized()Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isNormalized(Z)V

    :cond_9
    return-object v2
.end method

.method public setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerDocument()Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    move-result-object v0

    iget-boolean v0, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    const-string v1, "http://www.w3.org/dom/DOMTR"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerDocument()Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    move-result-object v4

    if-ne v3, v4, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "HIERARCHY_REQUEST_ERR"

    invoke-static {v1, p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x3

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    const-string p0, "WRONG_DOCUMENT_ERR"

    invoke-static {v1, p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x4

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    const-string p0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v1, p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    move-object v3, p1

    check-cast v3, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isOwned()Z

    move-result v4

    const/16 v5, 0xa

    if-eqz v4, :cond_6

    if-eqz v0, :cond_5

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    if-ne v0, p0, :cond_4

    goto :goto_1

    :cond_4
    const-string p0, "INUSE_ATTRIBUTE_ERR"

    invoke-static {v1, p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v5, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_5
    :goto_1
    return-object p1

    :cond_6
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    iput-object v0, v3, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isOwned(Z)V

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v1, v4}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x0

    if-ltz v1, :cond_7

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v5, p1, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerDocument()Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    move-result-object p1

    iput-object p1, v2, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v2, v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isOwned(Z)V

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isSpecified(Z)V

    goto :goto_2

    :cond_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v4}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->findNamePoint(Ljava/lang/String;I)I

    move-result v0

    if-ltz v0, :cond_8

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v1, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    goto :goto_2

    :cond_8
    rsub-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    if-nez v1, :cond_9

    new-instance v1, Ljava/util/Vector;

    const/4 v6, 0x5

    invoke-direct {v1, v6, v5}, Ljava/util/Vector;-><init>(II)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    :cond_9
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->nodes:Ljava/util/Vector;

    invoke-virtual {v1, p1, v0}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    :goto_2
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerDocument()Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    move-result-object p1

    invoke-virtual {p1, v3, v2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setAttrNode(Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;)V

    invoke-virtual {v3}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isNormalized()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isNormalized(Z)V

    :cond_a
    return-object v2
.end method
