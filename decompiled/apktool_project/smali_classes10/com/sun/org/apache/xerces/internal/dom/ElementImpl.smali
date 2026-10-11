.class public Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;
.super Lcom/sun/org/apache/xerces/internal/dom/ParentNode;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/Element;
.implements Lorg/w3c/dom/TypeInfo;


# static fields
.field static final serialVersionUID:J = 0x33965660e8283866L


# instance fields
.field protected attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

.field protected name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V

    .line 2
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->name:Ljava/lang/String;

    const/4 p1, 0x1

    .line 3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData(Z)V

    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;->cloneMap(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    iput-object p0, p1, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    :cond_0
    return-object p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    const-string v0, ""

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    const-string v0, ""

    if-nez p0, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    if-nez p0, :cond_1

    const/4 p0, 0x0

    return-object p0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;-><init>(Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    return-object p0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const-string v2, "xml:base"

    invoke-virtual {v0, v2}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Attr;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    new-instance v2, Lcom/sun/org/apache/xerces/internal/util/URI;

    invoke-direct {v2, v0}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/util/URI;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getBaseURI()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    if-eqz p0, :cond_2

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
    :cond_2
    return-object v1

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getBaseURI()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_4
    move-object p0, v1

    :goto_1
    if-eqz p0, :cond_5

    :try_start_2
    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/URI;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/util/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/URI;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Lcom/sun/org/apache/xerces/internal/util/URI$MalformedURIException; {:try_start_2 .. :try_end_2} :catch_2

    return-object p0

    :catch_2
    :cond_5
    return-object v1
.end method

.method public getDefaultAttributes()Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->getDoctype()Lorg/w3c/dom/DocumentType;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getElements()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->getNodeName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/ElementDefinitionImpl;

    if-nez p0, :cond_1

    return-object v1

    :cond_1
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementDefinitionImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    return-object p0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DeepNodeListImpl;

    invoke-direct {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DeepNodeListImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Ljava/lang/String;)V

    return-object v0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DeepNodeListImpl;

    invoke-direct {v0, p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DeepNodeListImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNodeType()S
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_0
    return-object p0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getXercesAttribute(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    if-nez p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getNamedItemIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasAttributeNS(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasAttributes()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getLength()I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 6

    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->isEqualNode(Lorg/w3c/dom/Node;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->hasAttributes()Z

    move-result v0

    check-cast p1, Lorg/w3c/dom/Element;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasAttributes()Z

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p1

    invoke-interface {p0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    invoke-interface {p1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    if-eq v0, v2, :cond_2

    return v1

    :cond_2
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_7

    invoke-interface {p0, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isEqualNode(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-nez v3, :cond_5

    :cond_3
    return v1

    :cond_4
    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    if-eqz v4, :cond_6

    check-cast v3, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isEqualNode(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-nez v3, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    return v1

    :cond_7
    const/4 p0, 0x1

    return p0
.end method

.method public moveSpecifiedAttributes(Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_0
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;-><init>(Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;->moveSpecifiedAttributes(Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;)V

    :cond_2
    return-void
.end method

.method public normalize()V
    .locals 5

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isNormalized()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->synchronizeChildren()V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->firstChild:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    :goto_0
    const/4 v1, 0x1

    if-eqz v0, :cond_6

    iget-object v2, v0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_4

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeType()S

    move-result v1

    if-ne v1, v4, :cond_2

    move-object v1, v0

    check-cast v1, Lorg/w3c/dom/Text;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/w3c/dom/CharacterData;->appendData(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_2
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_5

    :cond_3
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_4
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeType()S

    move-result v3

    if-ne v3, v1, :cond_5

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->normalize()V

    :cond_5
    :goto_1
    move-object v0, v2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    if-eqz v0, :cond_7

    const/4 v0, 0x0

    :goto_2
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_7

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->normalize()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isNormalized(Z)V

    return-void
.end method

.method public reconcileDefaultAttributes()V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->getDefaultAttributes()Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    move-result-object v0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;->reconcileDefaults(Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;)V

    :cond_0
    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 p1, 0x0

    const-string v0, "http://www.w3.org/dom/DOMTR"

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;->safeRemoveNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "NO_MODIFICATION_ALLOWED_ERR"

    const/4 p1, 0x0

    const-string p2, "http://www.w3.org/dom/DOMTR"

    invoke-static {p2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x7

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    if-nez p0, :cond_3

    return-void

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;->safeRemoveNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/dom/DOMTR"

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v2, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;->removeItem(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0

    :cond_3
    const-string p0, "NOT_FOUND_ERR"

    invoke-static {v2, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 v0, 0x8

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method rename(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_0
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->reconcileDefaultAttributes()V

    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "http://www.w3.org/dom/DOMTR"

    const-string p1, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x7

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    if-nez v0, :cond_3

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;-><init>(Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    :cond_3
    invoke-interface {p1, p2}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_4
    invoke-interface {v0, p2}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method public setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "http://www.w3.org/dom/DOMTR"

    const-string p1, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {p0, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x7

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_2
    const/16 v0, 0x3a

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_3

    move-object v0, p2

    move-object v2, v1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v3

    if-nez v3, :cond_5

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    if-nez p2, :cond_4

    new-instance p2, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    invoke-direct {p2, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;-><init>(Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;)V

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    :cond_4
    invoke-interface {p1, p3}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;->setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_3

    :cond_5
    instance-of v1, v3, Lcom/sun/org/apache/xerces/internal/dom/AttrNSImpl;

    if-eqz v1, :cond_7

    move-object p0, v3

    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/AttrNSImpl;

    if-eqz v2, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_6
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->name:Ljava/lang/String;

    goto :goto_2

    :cond_7
    new-instance v3, Lcom/sun/org/apache/xerces/internal/dom/AttrNSImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-direct {v3, v1, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/dom/AttrNSImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;->setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_2
    invoke-interface {v3, p3}, Lorg/w3c/dom/Node;->setNodeValue(Ljava/lang/String;)V

    :goto_3
    return-void
.end method

.method public setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 4
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

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isReadOnly()Z

    move-result v0

    const-string v2, "http://www.w3.org/dom/DOMTR"

    if-nez v0, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "WRONG_DOCUMENT_ERR"

    invoke-static {v2, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x4

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    const-string p0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v2, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    if-nez v0, :cond_4

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;-><init>(Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 4
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

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isReadOnly()Z

    move-result v0

    const-string v2, "http://www.w3.org/dom/DOMTR"

    if-nez v0, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    if-ne v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "WRONG_DOCUMENT_ERR"

    invoke-static {v2, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x4

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    const-string p0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v2, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    if-nez v0, :cond_4

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;-><init>(Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;->setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public setIdAttribute(Ljava/lang/String;Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    const/16 v0, 0x8

    const-string v1, "NOT_FOUND_ERR"

    const/4 v2, 0x0

    const-string v3, "http://www.w3.org/dom/DOMTR"

    if-eqz p1, :cond_5

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-boolean v4, v4, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isReadOnly()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v4

    if-ne v4, p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v3, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    const-string p0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v3, p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x7

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isIdAttribute(Z)V

    if-nez p2, :cond_4

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    :goto_1
    return-void

    :cond_5
    invoke-static {v3, v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    move-object p1, v0

    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p1

    const/16 p2, 0x8

    const-string v1, "NOT_FOUND_ERR"

    const-string v2, "http://www.w3.org/dom/DOMTR"

    if-eqz p1, :cond_6

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-boolean v3, v3, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isReadOnly()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v3

    if-ne v3, p0, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {v2, v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_3
    const-string p0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v2, p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x7

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    move-object p2, p1

    check-cast p2, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-virtual {p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isIdAttribute(Z)V

    if-nez p3, :cond_5

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    :goto_1
    return-void

    :cond_6
    invoke-static {v2, v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V
    .locals 3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    iget-boolean v0, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isReadOnly()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "http://www.w3.org/dom/DOMTR"

    if-nez v0, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-ne v0, p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "NOT_FOUND_ERR"

    invoke-static {v2, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    const-string p0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v2, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x7

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_3
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isIdAttribute(Z)V

    if-nez p2, :cond_4

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    :goto_1
    return-void
.end method

.method public setOwnerDocument(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->setOwnerDocument(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->setOwnerDocument(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V

    :cond_0
    return-void
.end method

.method public setReadOnly(ZZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->setReadOnly(ZZ)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    if-eqz p0, :cond_0

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->setReadOnly(ZZ)V

    :cond_0
    return-void
.end method

.method public setXercesAttributeNode(Lorg/w3c/dom/Attr;)I
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->synchronizeData()V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;-><init>(Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->addItem(Lorg/w3c/dom/Node;)I

    move-result p0

    return p0
.end method

.method public setupDefaultAttributes()V
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->getDefaultAttributes()Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    invoke-direct {v1, p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;-><init>(Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/AttributeMap;

    :cond_0
    return-void
.end method

.method public synchronizeData()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData(Z)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setMutationEvents(Z)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setupDefaultAttributes()V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setMutationEvents(Z)V

    return-void
.end method
