.class public Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;
.super Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/Attr;
.implements Lorg/w3c/dom/TypeInfo;


# static fields
.field static final DTD_URI:Ljava/lang/String; = "http://www.w3.org/TR/REC-xml"

.field static final serialVersionUID:J = 0x64ff9c955f6bcfc6L

.field protected static textNode:Lcom/sun/org/apache/xerces/internal/dom/TextImpl;


# instance fields
.field protected name:Ljava/lang/String;

.field transient type:Ljava/lang/Object;

.field protected value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    .line 3
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->name:Ljava/lang/String;

    const/4 p1, 0x1

    .line 4
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isSpecified(Z)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->hasStringValue(Z)V

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren(Z)V

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->synchronizeChildren()V

    :cond_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    return-void
.end method


# virtual methods
.method public checkNormalizationAfterInsert(Lcom/sun/org/apache/xerces/internal/dom/ChildNode;)V
    .locals 3

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeType()S

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling()Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    move-result-object v0

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeType()S

    move-result v0

    if-eq v0, v2, :cond_1

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeType()S

    move-result p1

    if-ne p1, v2, :cond_3

    :cond_1
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isNormalized(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isNormalized()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isNormalized(Z)V

    :cond_3
    :goto_0
    return-void
.end method

.method public checkNormalizationAfterRemove(Lcom/sun/org/apache/xerces/internal/dom/ChildNode;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeType()S

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeType()S

    move-result p1

    if-ne p1, v1, :cond_0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isNormalized(Z)V

    :cond_0
    return-void
.end method

.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->synchronizeChildren()V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->hasStringValue()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast p0, Lorg/w3c/dom/Node;

    :goto_0
    if-eqz p0, :cond_1

    invoke-interface {p0, v1}, Lorg/w3c/dom/Node;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isSpecified(Z)V

    return-object p1
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->synchronizeChildren()V

    :cond_0
    return-object p0
.end method

.method public getElement()Lorg/w3c/dom/Element;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isOwned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public getFirstChild()Lorg/w3c/dom/Node;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->synchronizeChildren()V

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->makeChildNode()V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public getLastChild()Lorg/w3c/dom/Node;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->synchronizeChildren()V

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->lastChild()Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    move-result-object p0

    return-object p0
.end method

.method public getLength()I
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->hasStringValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    const/4 v0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    add-int/lit8 v0, v0, 0x1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    goto :goto_0

    :cond_1
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->synchronizeData()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->synchronizeData()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNodeType()S
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public getNodeValue()Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOwnerElement()Lorg/w3c/dom/Element;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isOwned()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    check-cast p0, Lorg/w3c/dom/Element;

    return-object p0
.end method

.method public getSchemaTypeInfo()Lorg/w3c/dom/TypeInfo;
    .locals 0

    return-object p0
.end method

.method public getSpecified()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->synchronizeData()V

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isSpecified()Z

    move-result p0

    return p0
.end method

.method public getTypeName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->type:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getTypeNamespace()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->type:Ljava/lang/Object;

    if-eqz p0, :cond_0

    const-string p0, "http://www.w3.org/TR/REC-xml"

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->synchronizeData()V

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->synchronizeChildren()V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    const-string v1, ""

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->hasStringValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeType()S

    move-result v0

    const/4 v2, 0x5

    if-ne v0, v2, :cond_4

    move-object v0, p0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/EntityReferenceImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/EntityReferenceImpl;->getEntityRefValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    if-eqz p0, :cond_9

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    :goto_1
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeType()S

    move-result v0

    if-ne v0, v2, :cond_7

    move-object v0, p0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/EntityReferenceImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/EntityReferenceImpl;->getEntityRefValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    goto :goto_1

    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    :goto_3
    if-nez v0, :cond_a

    goto :goto_4

    :cond_a
    move-object v1, v0

    :goto_4
    return-object v1
.end method

.method public hasChildNodes()Z
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->synchronizeChildren()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->internalInsertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method internalInsertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerDocument()Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    move-result-object v0

    iget-boolean v1, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/16 v3, 0xb

    const/4 v4, 0x3

    const-string v5, "HIERARCHY_REQUEST_ERR"

    const/4 v6, 0x0

    const-string v7, "http://www.w3.org/dom/DOMTR"

    if-ne v2, v3, :cond_3

    if-eqz v1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p3

    :goto_0
    if-eqz p3, :cond_1

    invoke-virtual {v0, p0, p3}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isKidOK(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p3}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p3

    goto :goto_0

    :cond_0
    invoke-static {v7, v5, v6}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v4, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p3

    invoke-virtual {p0, p3, p2}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_2
    return-object p1

    :cond_3
    if-ne p1, p2, :cond_4

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p1

    :cond_4
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->synchronizeChildren()V

    :cond_5
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_e

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    if-ne v1, v0, :cond_c

    invoke-virtual {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->isKidOK(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Z

    move-result v1

    if-eqz v1, :cond_b

    if-eqz p2, :cond_7

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    if-ne v1, p0, :cond_6

    goto :goto_2

    :cond_6
    const-string p0, "NOT_FOUND_ERR"

    invoke-static {v7, p0, v6}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_7
    :goto_2
    move-object v8, p0

    move v1, v3

    :goto_3
    if-eqz v1, :cond_9

    if-eqz v8, :cond_9

    if-eq p1, v8, :cond_8

    move v1, v3

    goto :goto_4

    :cond_8
    move v1, v2

    :goto_4
    invoke-virtual {v8}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->parentNode()Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    move-result-object v8

    goto :goto_3

    :cond_9
    if-eqz v1, :cond_a

    goto :goto_5

    :cond_a
    invoke-static {v7, v5, v6}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v4, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_b
    invoke-static {v7, v5, v6}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    invoke-direct {p1, v4, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_c
    const-string p0, "WRONG_DOCUMENT_ERR"

    invoke-static {v7, p0, v6}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x4

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_d
    const-string p0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v7, p0, v6}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x7

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_e
    :goto_5
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->makeChildNode()V

    invoke-virtual {v0, p0, p3}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->insertingNode(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Z)V

    move-object v1, p1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    invoke-virtual {v1}, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->parentNode()Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    move-result-object v4

    if-eqz v4, :cond_f

    invoke-interface {v4, v1}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_f
    move-object v4, p2

    check-cast v4, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iput-object p0, v1, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isOwned(Z)V

    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v5, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    if-nez v5, :cond_10

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isFirstChild(Z)V

    iput-object v1, v1, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    goto :goto_6

    :cond_10
    if-nez v4, :cond_11

    iget-object p2, v5, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iput-object v1, p2, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iput-object p2, v1, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iput-object v1, v5, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    goto :goto_6

    :cond_11
    if-ne p2, v5, :cond_12

    invoke-virtual {v5, v2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isFirstChild(Z)V

    iput-object v5, v1, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iget-object p2, v5, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iput-object p2, v1, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iput-object v1, v5, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isFirstChild(Z)V

    goto :goto_6

    :cond_12
    iget-object p2, v4, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iput-object v4, v1, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iput-object v1, p2, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iput-object v1, v4, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iput-object p2, v1, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    :goto_6
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->changed()V

    invoke-virtual {v0, p0, v1, p3}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->insertedNode(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Z)V

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->checkNormalizationAfterInsert(Lcom/sun/org/apache/xerces/internal/dom/ChildNode;)V

    return-object p1
.end method

.method internalRemoveChild(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerDocument()Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    move-result-object v0

    iget-boolean v1, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isReadOnly()Z

    move-result v1

    const-string v3, "http://www.w3.org/dom/DOMTR"

    if-nez v1, :cond_1

    if-eqz p1, :cond_2

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v1

    if-ne v1, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "NOT_FOUND_ERR"

    invoke-static {v3, p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 p2, 0x8

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    const-string p0, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {v3, p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x7

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    check-cast p1, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    invoke-virtual {v0, p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->removingNode(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Z)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    const/4 v3, 0x0

    if-ne p1, v1, :cond_3

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isFirstChild(Z)V

    iget-object v1, p1, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    if-eqz v1, :cond_5

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isFirstChild(Z)V

    iget-object v4, p1, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iput-object v4, v1, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    goto :goto_1

    :cond_3
    iget-object v4, p1, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iget-object v5, p1, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iput-object v5, v4, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    if-nez v5, :cond_4

    check-cast v1, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iput-object v4, v1, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    goto :goto_1

    :cond_4
    iput-object v4, v5, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    :cond_5
    :goto_1
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling()Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    move-result-object v1

    iput-object v0, p1, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isOwned(Z)V

    iput-object v2, p1, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iput-object v2, p1, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->changed()V

    invoke-virtual {v0, p0, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->removedNode(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;Z)V

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->checkNormalizationAfterRemove(Lcom/sun/org/apache/xerces/internal/dom/ChildNode;)V

    return-object p1
.end method

.method public isDerivedFrom(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isEqualNode(Lorg/w3c/dom/Node;)Z

    move-result p0

    return p0
.end method

.method public isId()Z
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isIdAttribute()Z

    move-result p0

    return p0
.end method

.method public item(I)Lorg/w3c/dom/Node;
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->hasStringValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->makeChildNode()V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast p0, Lorg/w3c/dom/Node;

    return-object p0

    :cond_1
    :goto_0
    return-object v1

    :cond_2
    if-gez p1, :cond_3

    return-object v1

    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    const/4 v0, 0x0

    :goto_1
    if-ge v0, p1, :cond_4

    if-eqz p0, :cond_4

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    return-object p0
.end method

.method public final lastChild()Lcom/sun/org/apache/xerces/internal/dom/ChildNode;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->makeChildNode()V

    .line 2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    if-eqz p0, :cond_0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public final lastChild(Lcom/sun/org/apache/xerces/internal/dom/ChildNode;)V
    .locals 0

    .line 3
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    if-eqz p0, :cond_0

    .line 4
    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    :cond_0
    return-void
.end method

.method public makeChildNode()V
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->hasStringValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerDocument()Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/TextImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isFirstChild(Z)V

    iput-object v0, v0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iput-object p0, v0, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isOwned(Z)V

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->hasStringValue(Z)V

    :cond_1
    return-void
.end method

.method public normalize()V
    .locals 4

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isNormalized()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->hasStringValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    :goto_0
    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-ne v2, v3, :cond_1

    move-object v2, v0

    check-cast v2, Lorg/w3c/dom/Text;

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/w3c/dom/CharacterData;->appendData(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isNormalized(Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->hasStringValue()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->internalRemoveChild(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "NOT_FOUND_ERR"

    const/4 p1, 0x0

    const-string v0, "http://www.w3.org/dom/DOMTR"

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

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

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->synchronizeData()V

    :cond_0
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->name:Ljava/lang/String;

    return-void
.end method

.method public replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->makeChildNode()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerDocument()Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->replacingNode(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V

    const/4 v1, 0x1

    invoke-virtual {p0, p1, p2, v1}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->internalInsertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    if-eq p1, p2, :cond_0

    invoke-virtual {p0, p2, v1}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->internalRemoveChild(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    :cond_0
    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->replacedNode(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V

    return-object p2
.end method

.method public setIdAttribute(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->synchronizeData()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isIdAttribute(Z)V

    return-void
.end method

.method public setNodeValue(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->setValue(Ljava/lang/String;)V

    return-void
.end method

.method public setOwnerDocument(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->synchronizeChildren()V

    :cond_0
    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->setOwnerDocument(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->hasStringValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->setOwnerDocument(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setReadOnly(ZZ)V
    .locals 1

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->setReadOnly(ZZ)V

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->synchronizeChildren()V

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->hasStringValue()Z

    move-result p2

    if-eqz p2, :cond_1

    return-void

    :cond_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    :goto_0
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeType()S

    move-result p2

    const/4 v0, 0x5

    if-eq p2, v0, :cond_2

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->setReadOnly(ZZ)V

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->nextSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    goto :goto_0

    :cond_3
    return-void
.end method

.method public setSpecified(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->synchronizeData()V

    :cond_0
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isSpecified(Z)V

    return-void
.end method

.method public setType(Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->type:Ljava/lang/Object;

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 8

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerDocument()Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    move-result-object v0

    iget-boolean v1, v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->errorChecking:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isReadOnly()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "http://www.w3.org/dom/DOMTR"

    const-string p1, "NO_MODIFICATION_ALLOWED_ERR"

    invoke-static {p0, p1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 v0, 0x7

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getOwnerElement()Lorg/w3c/dom/Element;

    move-result-object v1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->synchronizeData()V

    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->synchronizeChildren()V

    :cond_3
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_9

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->hasStringValue()Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    move-object v6, v3

    check-cast v6, Ljava/lang/String;

    sget-object v7, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->textNode:Lcom/sun/org/apache/xerces/internal/dom/TextImpl;

    if-nez v7, :cond_4

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v3

    check-cast v3, Lcom/sun/org/apache/xerces/internal/dom/TextImpl;

    sput-object v3, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->textNode:Lcom/sun/org/apache/xerces/internal/dom/TextImpl;

    goto :goto_1

    :cond_4
    check-cast v3, Ljava/lang/String;

    iput-object v3, v7, Lcom/sun/org/apache/xerces/internal/dom/CharacterDataImpl;->data:Ljava/lang/String;

    :goto_1
    sget-object v3, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->textNode:Lcom/sun/org/apache/xerces/internal/dom/TextImpl;

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    invoke-virtual {v3, v5}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isFirstChild(Z)V

    sget-object v3, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->textNode:Lcom/sun/org/apache/xerces/internal/dom/TextImpl;

    iput-object v3, v3, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iput-object p0, v3, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v3, v5}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isOwned(Z)V

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->hasStringValue(Z)V

    sget-object v3, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->textNode:Lcom/sun/org/apache/xerces/internal/dom/TextImpl;

    invoke-virtual {p0, v3, v5}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->internalRemoveChild(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    goto :goto_4

    :cond_5
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v6

    :goto_2
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    if-eqz v3, :cond_8

    check-cast v3, Lorg/w3c/dom/Node;

    invoke-virtual {p0, v3, v5}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->internalRemoveChild(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    goto :goto_2

    :cond_6
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->hasStringValue()Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    goto :goto_3

    :cond_7
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    check-cast v6, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    iput-object v2, v6, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->previousSibling:Lcom/sun/org/apache/xerces/internal/dom/ChildNode;

    invoke-virtual {v6, v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isFirstChild(Z)V

    iput-object v0, v6, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerNode:Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    :goto_3
    move-object v6, v3

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren(Z)V

    :cond_8
    :goto_4
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isIdAttribute()Z

    move-result v3

    if-eqz v3, :cond_a

    if-eqz v1, :cond_a

    invoke-virtual {v0, v6}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->removeIdentifier(Ljava/lang/String;)V

    goto :goto_5

    :cond_9
    const-string v6, ""

    :cond_a
    :goto_5
    invoke-virtual {p0, v5}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isSpecified(Z)V

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v3

    invoke-virtual {p0, v3, v2, v5}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->internalInsertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    invoke-virtual {p0, v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->hasStringValue(Z)V

    invoke-virtual {v0, p0, v6}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->modifiedAttrValue(Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->value:Ljava/lang/Object;

    invoke-virtual {p0, v5}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->hasStringValue(Z)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->changed()V

    :goto_6
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isIdAttribute()Z

    move-result p0

    if-eqz p0, :cond_c

    if-eqz v1, :cond_c

    invoke-virtual {v0, p1, v1}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->putIdentifier(Ljava/lang/String;Lorg/w3c/dom/Element;)V

    :cond_c
    return-void
.end method

.method public synchronizeChildren()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren(Z)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->getValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
