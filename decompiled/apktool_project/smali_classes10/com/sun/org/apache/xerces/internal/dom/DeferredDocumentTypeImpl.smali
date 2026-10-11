.class public Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentTypeImpl;
.super Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = -0x1e268db160e6dd65L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData(Z)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren(Z)V

    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    return p0
.end method

.method public synchronizeChildren()V
    .locals 9

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument()Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument()Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setMutationEvents(Z)V

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren(Z)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    check-cast v1, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    new-instance v3, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    invoke-direct {v3, p0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->entities:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    new-instance v3, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    invoke-direct {v3, p0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->notations:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    new-instance v3, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    invoke-direct {v3, p0}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V

    iput-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->elements:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    iget v3, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eq v3, v5, :cond_5

    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeObject(I)Lcom/sun/org/apache/xerces/internal/dom/DeferredNode;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-eq v7, v6, :cond_3

    const/4 v6, 0x6

    if-eq v7, v6, :cond_2

    const/16 v6, 0xc

    if-eq v7, v6, :cond_1

    const/16 v6, 0x15

    if-eq v7, v6, :cond_0

    goto :goto_1

    :cond_0
    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->elements:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    invoke-virtual {v6, v5}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->notations:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    invoke-virtual {v6, v5}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->entities:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    invoke-virtual {v6, v5}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    check-cast v6, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    iget-boolean v6, v6, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->allowGrammarAccess:Z

    if-eqz v6, :cond_4

    invoke-virtual {p0, v5, v4}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object v4, v5

    goto :goto_2

    :cond_4
    :goto_1
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "DeferredDocumentTypeImpl#synchronizeInfo: node.getNodeType() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", class = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v1, v3}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v3

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument()Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setMutationEvents(Z)V

    invoke-virtual {p0, v6, v2}, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->setReadOnly(ZZ)V

    return-void
.end method

.method public synchronizeData()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData(Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->name:Ljava/lang/String;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->publicID:Ljava/lang/String;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->systemID:Ljava/lang/String;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentTypeImpl;->internalSubset:Ljava/lang/String;

    return-void
.end method
