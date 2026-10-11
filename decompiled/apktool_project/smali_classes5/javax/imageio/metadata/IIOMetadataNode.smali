.class public Ljavax/imageio/metadata/IIOMetadataNode;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/Element;
.implements Lorg/w3c/dom/NodeList;


# instance fields
.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/sunia/HTREnginev2/cci;",
            ">;"
        }
    .end annotation
.end field

.field private firstChild:Ljavax/imageio/metadata/IIOMetadataNode;

.field private lastChild:Ljavax/imageio/metadata/IIOMetadataNode;

.field private nextSibling:Ljavax/imageio/metadata/IIOMetadataNode;

.field private nodeName:Ljava/lang/String;

.field private nodeValue:Ljava/lang/String;

.field private numChildren:I

.field private parent:Ljavax/imageio/metadata/IIOMetadataNode;

.field private previousSibling:Ljavax/imageio/metadata/IIOMetadataNode;

.field private userObject:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->nodeName:Ljava/lang/String;

    .line 3
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->nodeValue:Ljava/lang/String;

    .line 4
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->userObject:Ljava/lang/Object;

    .line 5
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->parent:Ljavax/imageio/metadata/IIOMetadataNode;

    const/4 v1, 0x0

    .line 6
    iput v1, p0, Ljavax/imageio/metadata/IIOMetadataNode;->numChildren:I

    .line 7
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->firstChild:Ljavax/imageio/metadata/IIOMetadataNode;

    .line 8
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->lastChild:Ljavax/imageio/metadata/IIOMetadataNode;

    .line 9
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->nextSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    .line 10
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->previousSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->attributes:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->nodeName:Ljava/lang/String;

    .line 14
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->nodeValue:Ljava/lang/String;

    .line 15
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->userObject:Ljava/lang/Object;

    .line 16
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->parent:Ljavax/imageio/metadata/IIOMetadataNode;

    const/4 v1, 0x0

    .line 17
    iput v1, p0, Ljavax/imageio/metadata/IIOMetadataNode;->numChildren:I

    .line 18
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->firstChild:Ljavax/imageio/metadata/IIOMetadataNode;

    .line 19
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->lastChild:Ljavax/imageio/metadata/IIOMetadataNode;

    .line 20
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->nextSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    .line 21
    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->previousSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->attributes:Ljava/util/List;

    .line 23
    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadataNode;->nodeName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lorg/w3c/dom/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    instance-of p0, p1, Ljavax/imageio/metadata/IIOMetadataNode;

    if-eqz p0, :cond_1

    return-void

    :cond_1
    new-instance p0, Ljavax/imageio/metadata/IIODOMException;

    const/4 p1, 0x4

    const-string v0, "Node not an IIOMetadataNode!"

    invoke-direct {p0, p1, v0}, Ljavax/imageio/metadata/IIODOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataNode;->a(Lorg/w3c/dom/Node;)V

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljavax/imageio/metadata/IIOMetadataNode;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "newChild == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final b(Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Node;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->nodeName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadataNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    move-object v0, p0

    check-cast v0, Ljavax/imageio/metadata/IIOMetadataNode;

    invoke-virtual {v0, p1, p2}, Ljavax/imageio/metadata/IIOMetadataNode;->b(Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final c(Ljava/lang/String;Z)V
    .locals 4

    iget-object v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Ljavax/imageio/metadata/IIOMetadataNode;->attributes:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sunia/HTREnginev2/cci;

    invoke-virtual {v2}, Lcom/sunia/HTREnginev2/cci;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x0

    invoke-virtual {v2, p1}, Lcom/sunia/HTREnginev2/cci;->d(Lorg/w3c/dom/Element;)V

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->attributes:Ljava/util/List;

    invoke-interface {p0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    return-void

    :cond_2
    new-instance p0, Ljavax/imageio/metadata/IIODOMException;

    const/16 p1, 0x8

    const-string p2, "No such attribute!"

    invoke-direct {p0, p1, p2}, Ljavax/imageio/metadata/IIODOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 2

    new-instance v0, Ljavax/imageio/metadata/IIOMetadataNode;

    iget-object v1, p0, Ljavax/imageio/metadata/IIOMetadataNode;->nodeName:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadataNode;->getUserObject()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->setUserObject(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->firstChild:Ljavax/imageio/metadata/IIOMetadataNode;

    :goto_0
    if-eqz p0, :cond_0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataNode;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljavax/imageio/metadata/IIOMetadataNode;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->nextSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public compareDocumentPosition(Lorg/w3c/dom/Node;)S
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lorg/w3c/dom/DOMException;

    const/16 p1, 0x9

    const-string v0, "Method not supported"

    invoke-direct {p0, p1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataNode;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    return-object p0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeNS(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p2}, Ljavax/imageio/metadata/IIOMetadataNode;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 0

    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadataNode;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Attr;

    return-object p0
.end method

.method public getAttributeNodeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;
    .locals 0

    invoke-virtual {p0, p2}, Ljavax/imageio/metadata/IIOMetadataNode;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object p0

    return-object p0
.end method

.method public getAttributes()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    new-instance v0, Lcom/sunia/HTREnginev2/eci;

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->attributes:Ljava/util/List;

    invoke-direct {v0, p0}, Lcom/sunia/HTREnginev2/eci;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public getBaseURI()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lorg/w3c/dom/DOMException;

    const/16 v0, 0x9

    const-string v1, "Method not supported"

    invoke-direct {p0, v0, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 0

    return-object p0
.end method

.method public getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljavax/imageio/metadata/IIOMetadataNode;->b(Ljava/lang/String;Ljava/util/List;)V

    new-instance p0, Lcom/sunia/HTREnginev2/fci;

    invoke-direct {p0, v0}, Lcom/sunia/HTREnginev2/fci;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public getElementsByTagNameNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/NodeList;
    .locals 0

    invoke-virtual {p0, p2}, Ljavax/imageio/metadata/IIOMetadataNode;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public getFeature(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lorg/w3c/dom/DOMException;

    const/16 p1, 0x9

    const-string p2, "Method not supported"

    invoke-direct {p0, p1, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->firstChild:Ljavax/imageio/metadata/IIOMetadataNode;

    return-object p0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->lastChild:Ljavax/imageio/metadata/IIOMetadataNode;

    return-object p0
.end method

.method public getLength()I
    .locals 0

    iget p0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->numChildren:I

    return p0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->nodeName:Ljava/lang/String;

    return-object p0
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getNextSibling()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->nextSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    return-object p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->nodeName:Ljava/lang/String;

    return-object p0
.end method

.method public getNodeType()S
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->nodeValue:Ljava/lang/String;

    return-object p0
.end method

.method public getOwnerDocument()Lorg/w3c/dom/Document;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getParentNode()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->parent:Ljavax/imageio/metadata/IIOMetadataNode;

    return-object p0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPreviousSibling()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->previousSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    return-object p0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lorg/w3c/dom/DOMException;

    const/16 v0, 0x9

    const-string v1, "Method not supported"

    invoke-direct {p0, v0, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public getTagName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->nodeName:Ljava/lang/String;

    return-object p0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lorg/w3c/dom/DOMException;

    const/16 v0, 0x9

    const-string v1, "Method not supported"

    invoke-direct {p0, v0, v1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lorg/w3c/dom/DOMException;

    const/16 p1, 0x9

    const-string v0, "Method not supported"

    invoke-direct {p0, p1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public getUserObject()Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->userObject:Ljava/lang/Object;

    return-object p0
.end method

.method public hasAttribute(Ljava/lang/String;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataNode;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

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

    invoke-virtual {p0, p2}, Ljavax/imageio/metadata/IIOMetadataNode;->hasAttribute(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public hasAttributes()Z
    .locals 0

    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->attributes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasChildNodes()Z
    .locals 0

    iget p0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->numChildren:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataNode;->a(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, p2}, Ljavax/imageio/metadata/IIOMetadataNode;->a(Lorg/w3c/dom/Node;)V

    check-cast p1, Ljavax/imageio/metadata/IIOMetadataNode;

    move-object v0, p2

    check-cast v0, Ljavax/imageio/metadata/IIOMetadataNode;

    if-nez p2, :cond_0

    iget-object p2, p0, Ljavax/imageio/metadata/IIOMetadataNode;->lastChild:Ljavax/imageio/metadata/IIOMetadataNode;

    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadataNode;->lastChild:Ljavax/imageio/metadata/IIOMetadataNode;

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object p2, v0, Ljavax/imageio/metadata/IIOMetadataNode;->previousSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    move-object v1, v0

    :goto_0
    if-eqz p2, :cond_1

    iput-object p1, p2, Ljavax/imageio/metadata/IIOMetadataNode;->nextSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    :cond_1
    if-eqz v1, :cond_2

    iput-object p1, v1, Ljavax/imageio/metadata/IIOMetadataNode;->previousSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    :cond_2
    iput-object p0, p1, Ljavax/imageio/metadata/IIOMetadataNode;->parent:Ljavax/imageio/metadata/IIOMetadataNode;

    iput-object p2, p1, Ljavax/imageio/metadata/IIOMetadataNode;->previousSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    iput-object v1, p1, Ljavax/imageio/metadata/IIOMetadataNode;->nextSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    iget-object p2, p0, Ljavax/imageio/metadata/IIOMetadataNode;->firstChild:Ljavax/imageio/metadata/IIOMetadataNode;

    if-ne p2, v0, :cond_3

    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadataNode;->firstChild:Ljavax/imageio/metadata/IIOMetadataNode;

    :cond_3
    iget p2, p0, Ljavax/imageio/metadata/IIOMetadataNode;->numChildren:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Ljavax/imageio/metadata/IIOMetadataNode;->numChildren:I

    return-object p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "newChild == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public isDefaultNamespace(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lorg/w3c/dom/DOMException;

    const/16 p1, 0x9

    const-string v0, "Method not supported"

    invoke-direct {p0, p1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lorg/w3c/dom/DOMException;

    const/16 p1, 0x9

    const-string v0, "Method not supported"

    invoke-direct {p0, p1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public isSameNode(Lorg/w3c/dom/Node;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lorg/w3c/dom/DOMException;

    const/16 p1, 0x9

    const-string v0, "Method not supported"

    invoke-direct {p0, p1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public isSupported(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 1

    if-gez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0}, Ljavax/imageio/metadata/IIOMetadataNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    add-int/lit8 v0, p1, -0x1

    if-lez p1, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    move p1, v0

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lorg/w3c/dom/DOMException;

    const/16 p1, 0x9

    const-string v0, "Method not supported"

    invoke-direct {p0, p1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public lookupPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lorg/w3c/dom/DOMException;

    const/16 p1, 0x9

    const-string v0, "Method not supported"

    invoke-direct {p0, p1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public normalize()V
    .locals 0

    return-void
.end method

.method public removeAttribute(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Ljavax/imageio/metadata/IIOMetadataNode;->c(Ljava/lang/String;Z)V

    return-void
.end method

.method public removeAttributeNS(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2}, Ljavax/imageio/metadata/IIOMetadataNode;->removeAttribute(Ljava/lang/String;)V

    return-void
.end method

.method public removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 1

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/imageio/metadata/IIOMetadataNode;->removeAttribute(Ljava/lang/String;)V

    return-object p1
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataNode;->a(Lorg/w3c/dom/Node;)V

    check-cast p1, Ljavax/imageio/metadata/IIOMetadataNode;

    iget-object v0, p1, Ljavax/imageio/metadata/IIOMetadataNode;->previousSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    iget-object v1, p1, Ljavax/imageio/metadata/IIOMetadataNode;->nextSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    if-eqz v0, :cond_0

    iput-object v1, v0, Ljavax/imageio/metadata/IIOMetadataNode;->nextSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    :cond_0
    if-eqz v1, :cond_1

    iput-object v0, v1, Ljavax/imageio/metadata/IIOMetadataNode;->previousSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    :cond_1
    iget-object v2, p0, Ljavax/imageio/metadata/IIOMetadataNode;->firstChild:Ljavax/imageio/metadata/IIOMetadataNode;

    if-ne v2, p1, :cond_2

    iput-object v1, p0, Ljavax/imageio/metadata/IIOMetadataNode;->firstChild:Ljavax/imageio/metadata/IIOMetadataNode;

    :cond_2
    iget-object v1, p0, Ljavax/imageio/metadata/IIOMetadataNode;->lastChild:Ljavax/imageio/metadata/IIOMetadataNode;

    if-ne v1, p1, :cond_3

    iput-object v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->lastChild:Ljavax/imageio/metadata/IIOMetadataNode;

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p1, Ljavax/imageio/metadata/IIOMetadataNode;->parent:Ljavax/imageio/metadata/IIOMetadataNode;

    iput-object v0, p1, Ljavax/imageio/metadata/IIOMetadataNode;->previousSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    iput-object v0, p1, Ljavax/imageio/metadata/IIOMetadataNode;->nextSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    iget v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->numChildren:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->numChildren:I

    return-object p1

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "oldChild == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataNode;->a(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, p2}, Ljavax/imageio/metadata/IIOMetadataNode;->a(Lorg/w3c/dom/Node;)V

    check-cast p1, Ljavax/imageio/metadata/IIOMetadataNode;

    check-cast p2, Ljavax/imageio/metadata/IIOMetadataNode;

    iget-object v0, p2, Ljavax/imageio/metadata/IIOMetadataNode;->previousSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    iget-object v1, p2, Ljavax/imageio/metadata/IIOMetadataNode;->nextSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    if-eqz v0, :cond_0

    iput-object p1, v0, Ljavax/imageio/metadata/IIOMetadataNode;->nextSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    :cond_0
    if-eqz v1, :cond_1

    iput-object p1, v1, Ljavax/imageio/metadata/IIOMetadataNode;->previousSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    :cond_1
    iput-object p0, p1, Ljavax/imageio/metadata/IIOMetadataNode;->parent:Ljavax/imageio/metadata/IIOMetadataNode;

    iput-object v0, p1, Ljavax/imageio/metadata/IIOMetadataNode;->previousSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    iput-object v1, p1, Ljavax/imageio/metadata/IIOMetadataNode;->nextSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    iget-object v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->firstChild:Ljavax/imageio/metadata/IIOMetadataNode;

    if-ne v0, p2, :cond_2

    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadataNode;->firstChild:Ljavax/imageio/metadata/IIOMetadataNode;

    :cond_2
    iget-object v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->lastChild:Ljavax/imageio/metadata/IIOMetadataNode;

    if-ne v0, p2, :cond_3

    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadataNode;->lastChild:Ljavax/imageio/metadata/IIOMetadataNode;

    :cond_3
    const/4 p0, 0x0

    iput-object p0, p2, Ljavax/imageio/metadata/IIOMetadataNode;->parent:Ljavax/imageio/metadata/IIOMetadataNode;

    iput-object p0, p2, Ljavax/imageio/metadata/IIOMetadataNode;->previousSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    iput-object p0, p2, Ljavax/imageio/metadata/IIOMetadataNode;->nextSibling:Ljavax/imageio/metadata/IIOMetadataNode;

    return-object p2

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "newChild == null!"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-char v3, v0, v2

    const v4, 0xfffe

    if-lt v3, v4, :cond_0

    move v0, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0, p1, v1}, Ljavax/imageio/metadata/IIOMetadataNode;->c(Ljava/lang/String;Z)V

    iget-object v0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->attributes:Ljava/util/List;

    new-instance v1, Lcom/sunia/HTREnginev2/cci;

    invoke-direct {v1, p0, p1, p2}, Lcom/sunia/HTREnginev2/cci;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    new-instance p0, Ljavax/imageio/metadata/IIODOMException;

    const/4 p1, 0x5

    const-string p2, "Attribute name is illegal!"

    invoke-direct {p0, p1, p2}, Ljavax/imageio/metadata/IIODOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-virtual {p0, p2, p3}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v0

    if-eqz v0, :cond_1

    if-ne v0, p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance p0, Lorg/w3c/dom/DOMException;

    const/16 p1, 0xa

    const-string v0, "Attribute is already in use"

    invoke-direct {p0, p1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    instance-of v0, p1, Lcom/sunia/HTREnginev2/cci;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/sunia/HTREnginev2/cci;

    invoke-virtual {p1, p0}, Lcom/sunia/HTREnginev2/cci;->d(Lorg/w3c/dom/Element;)V

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/sunia/HTREnginev2/cci;

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Attr;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, v1, p1}, Lcom/sunia/HTREnginev2/cci;-><init>(Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)V

    move-object p1, v0

    :goto_0
    invoke-virtual {p1}, Lcom/sunia/HTREnginev2/cci;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavax/imageio/metadata/IIOMetadataNode;->getAttributeNode(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0, v0}, Ljavax/imageio/metadata/IIOMetadataNode;->removeAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    :cond_3
    iget-object p0, p0, Ljavax/imageio/metadata/IIOMetadataNode;->attributes:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;
    .locals 0

    invoke-virtual {p0, p1}, Ljavax/imageio/metadata/IIOMetadataNode;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    move-result-object p0

    return-object p0
.end method

.method public setIdAttribute(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lorg/w3c/dom/DOMException;

    const/16 p1, 0x9

    const-string p2, "Method not supported"

    invoke-direct {p0, p1, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public setIdAttributeNS(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lorg/w3c/dom/DOMException;

    const/16 p1, 0x9

    const-string p2, "Method not supported"

    invoke-direct {p0, p1, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public setIdAttributeNode(Lorg/w3c/dom/Attr;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lorg/w3c/dom/DOMException;

    const/16 p1, 0x9

    const-string p2, "Method not supported"

    invoke-direct {p0, p1, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadataNode;->nodeValue:Ljava/lang/String;

    return-void
.end method

.method public setPrefix(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lorg/w3c/dom/DOMException;

    const/16 p1, 0x9

    const-string v0, "Method not supported"

    invoke-direct {p0, p1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    new-instance p0, Lorg/w3c/dom/DOMException;

    const/16 p1, 0x9

    const-string p2, "Method not supported"

    invoke-direct {p0, p1, p2}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public setUserObject(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Ljavax/imageio/metadata/IIOMetadataNode;->userObject:Ljava/lang/Object;

    return-void
.end method
