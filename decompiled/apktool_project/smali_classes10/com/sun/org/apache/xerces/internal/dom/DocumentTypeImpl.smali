.class public Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;
.super Lcom/sun/org/apache/xerces/internal/dom/ParentNode;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/DocumentType;


# static fields
.field static final serialVersionUID:J = 0x6b92258c19cc7f95L


# instance fields
.field private doctypeNumber:I

.field protected elements:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

.field protected entities:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

.field protected internalSubset:Ljava/lang/String;

.field protected name:Ljava/lang/String;

.field protected notations:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

.field protected publicID:Ljava/lang/String;

.field protected systemID:Ljava/lang/String;

.field private userData:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->doctypeNumber:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    .line 4
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->name:Ljava/lang/String;

    .line 5
    new-instance p1, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->entities:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    .line 6
    new-instance p1, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->notations:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    .line 7
    new-instance p1, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->elements:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 8
    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V

    .line 9
    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->publicID:Ljava/lang/String;

    .line 10
    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->systemID:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 1

    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->entities:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->cloneMap(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->entities:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->notations:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->cloneMap(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    move-result-object v0

    iput-object v0, p1, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->notations:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->elements:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->cloneMap(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    move-result-object p0

    iput-object p0, p1, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->elements:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    return-object p1
.end method

.method public getElements()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->elements:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    return-object p0
.end method

.method public getEntities()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->entities:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    return-object p0
.end method

.method public getInternalSubset()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->synchronizeData()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->internalSubset:Ljava/lang/String;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->synchronizeData()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNodeName()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->synchronizeData()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->name:Ljava/lang/String;

    return-object p0
.end method

.method public getNodeNumber()I
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-super {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->getNodeNumber()I

    move-result p0

    return p0

    :cond_0
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->doctypeNumber:I

    if-nez v0, :cond_1

    invoke-static {}, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->assignDocTypeNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->doctypeNumber:I

    :cond_1
    iget p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->doctypeNumber:I

    return p0
.end method

.method public getNodeType()S
    .locals 0

    const/16 p0, 0xa

    return p0
.end method

.method public getNotations()Lorg/w3c/dom/NamedNodeMap;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->notations:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->synchronizeData()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->publicID:Ljava/lang/String;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->synchronizeData()V

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->systemID:Ljava/lang/String;

    return-object p0
.end method

.method public getTextContent()Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getUserData(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode$UserDataRecord;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    return-object p0

    :cond_1
    return-object v0
.end method

.method public getUserDataRecord()Ljava/util/Hashtable;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    return-object p0
.end method

.method public isEqualNode(Lorg/w3c/dom/Node;)Z
    .locals 5

    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->isEqualNode(Lorg/w3c/dom/Node;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->synchronizeData()V

    :cond_1
    check-cast p1, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    :cond_3
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_4
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    :cond_5
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    :cond_6
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_8

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    :cond_7
    return v1

    :cond_8
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return v1

    :cond_9
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->getInternalSubset()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    return v1

    :cond_b
    iget-object v0, p1, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->entities:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->entities:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    if-nez v2, :cond_c

    if-nez v0, :cond_d

    :cond_c
    if-eqz v2, :cond_e

    if-nez v0, :cond_e

    :cond_d
    return v1

    :cond_e
    if-eqz v2, :cond_11

    if-eqz v0, :cond_11

    invoke-virtual {v2}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getLength()I

    move-result v2

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getLength()I

    move-result v3

    if-eq v2, v3, :cond_f

    return v1

    :cond_f
    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->entities:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    if-eqz v3, :cond_11

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->entities:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    invoke-virtual {v3, v2}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    check-cast v3, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    check-cast v4, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v3, v4}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isEqualNode(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-nez v3, :cond_10

    return v1

    :cond_10
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_11
    iget-object p1, p1, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->notations:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->notations:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    if-nez v0, :cond_12

    if-nez p1, :cond_13

    :cond_12
    if-eqz v0, :cond_14

    if-nez p1, :cond_14

    :cond_13
    return v1

    :cond_14
    if-eqz v0, :cond_17

    if-eqz p1, :cond_17

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getLength()I

    move-result v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getLength()I

    move-result v2

    if-eq v0, v2, :cond_15

    return v1

    :cond_15
    move v0, v1

    :goto_1
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->notations:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->notations:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    invoke-virtual {v2, v0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v2, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    check-cast v3, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isEqualNode(Lorg/w3c/dom/Node;)Z

    move-result v2

    if-nez v2, :cond_16

    return v1

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_17
    const/4 p0, 0x1

    return p0
.end method

.method public setInternalSubset(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->synchronizeData()V

    :cond_0
    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->internalSubset:Ljava/lang/String;

    return-void
.end method

.method public setOwnerDocument(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->setOwnerDocument(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->entities:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->setOwnerDocument(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->notations:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->setOwnerDocument(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->elements:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->setOwnerDocument(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;)V

    return-void
.end method

.method public setReadOnly(ZZ)V
    .locals 1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->synchronizeChildren()V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->setReadOnly(ZZ)V

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->elements:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->setReadOnly(ZZ)V

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->entities:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    invoke-virtual {p2, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->setReadOnly(ZZ)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->notations:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->setReadOnly(ZZ)V

    return-void
.end method

.method public setTextContent(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    return-void
.end method

.method public setUserData(Ljava/lang/String;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    :cond_0
    const/4 v0, 0x0

    if-nez p2, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_1

    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode$UserDataRecord;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->userData:Ljava/util/Hashtable;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/dom/ParentNode$UserDataRecord;

    invoke-direct {v2, p0, p2, p3}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode$UserDataRecord;-><init>(Lcom/sun/org/apache/xerces/internal/dom/ParentNode;Ljava/lang/Object;Lorg/w3c/dom/UserDataHandler;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    check-cast p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode$UserDataRecord;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode$UserDataRecord;->fData:Ljava/lang/Object;

    return-object p0

    :cond_3
    return-object v0
.end method
