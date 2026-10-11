.class public Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;
.super Lorg/apache/xerces/dom/DocumentTypeImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = -0x1e268db160e6dd65L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method public constructor <init>(Lorg/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xerces/dom/DocumentTypeImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput p2, p0, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncData(Z)V

    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncChildren(Z)V

    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    return p0
.end method

.method public synchronizeChildren()V
    .locals 9

    invoke-virtual {p0}, Lorg/apache/xerces/dom/ParentNode;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/xerces/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/ParentNode;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setMutationEvents(Z)V

    invoke-virtual {p0, v2}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncChildren(Z)V

    iget-object v1, p0, Lorg/apache/xerces/dom/ParentNode;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    check-cast v1, Lorg/apache/xerces/dom/DeferredDocumentImpl;

    new-instance v3, Lorg/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {v3, p0}, Lorg/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lorg/apache/xerces/dom/NodeImpl;)V

    iput-object v3, p0, Lorg/apache/xerces/dom/DocumentTypeImpl;->entities:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    new-instance v3, Lorg/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {v3, p0}, Lorg/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lorg/apache/xerces/dom/NodeImpl;)V

    iput-object v3, p0, Lorg/apache/xerces/dom/DocumentTypeImpl;->notations:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    new-instance v3, Lorg/apache/xerces/dom/NamedNodeMapImpl;

    invoke-direct {v3, p0}, Lorg/apache/xerces/dom/NamedNodeMapImpl;-><init>(Lorg/apache/xerces/dom/NodeImpl;)V

    iput-object v3, p0, Lorg/apache/xerces/dom/DocumentTypeImpl;->elements:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    iget v3, p0, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    invoke-virtual {v1, v3}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    const/4 v5, -0x1

    const/4 v6, 0x1

    if-ne v3, v5, :cond_0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/ParentNode;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/apache/xerces/dom/CoreDocumentImpl;->setMutationEvents(Z)V

    invoke-virtual {p0, v6, v2}, Lorg/apache/xerces/dom/DocumentTypeImpl;->setReadOnly(ZZ)V

    return-void

    :cond_0
    invoke-virtual {v1, v3}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lorg/apache/xerces/dom/DeferredNode;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-eq v7, v6, :cond_4

    const/4 v6, 0x6

    if-eq v7, v6, :cond_3

    const/16 v6, 0xc

    if-eq v7, v6, :cond_2

    const/16 v6, 0x15

    if-eq v7, v6, :cond_1

    goto :goto_2

    :cond_1
    iget-object v6, p0, Lorg/apache/xerces/dom/DocumentTypeImpl;->elements:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lorg/apache/xerces/dom/DocumentTypeImpl;->notations:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    goto :goto_1

    :cond_3
    iget-object v6, p0, Lorg/apache/xerces/dom/DocumentTypeImpl;->entities:Lorg/apache/xerces/dom/NamedNodeMapImpl;

    :goto_1
    invoke-virtual {v6, v5}, Lorg/apache/xerces/dom/NamedNodeMapImpl;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_3

    :cond_4
    invoke-virtual {p0}, Lorg/apache/xerces/dom/ParentNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v6

    check-cast v6, Lorg/apache/xerces/dom/DocumentImpl;

    iget-boolean v6, v6, Lorg/apache/xerces/dom/CoreDocumentImpl;->allowGrammarAccess:Z

    if-eqz v6, :cond_5

    invoke-virtual {p0, v5, v4}, Lorg/apache/xerces/dom/ParentNode;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object v4, v5

    goto :goto_3

    :cond_5
    :goto_2
    sget-object v6, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuffer;

    invoke-direct {v7}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "DeferredDocumentTypeImpl#synchronizeInfo: node.getNodeType() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v8, ", class = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_3
    invoke-virtual {v1, v3}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v3

    goto :goto_0
.end method

.method public synchronizeData()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncData(Z)V

    iget-object v0, p0, Lorg/apache/xerces/dom/ParentNode;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    check-cast v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xerces/dom/DocumentTypeImpl;->name:Ljava/lang/String;

    iget v1, p0, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xerces/dom/DocumentTypeImpl;->publicID:Ljava/lang/String;

    iget v1, p0, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xerces/dom/DocumentTypeImpl;->systemID:Ljava/lang/String;

    iget v1, p0, Lorg/apache/xerces/dom/DeferredDocumentTypeImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/dom/DocumentTypeImpl;->internalSubset:Ljava/lang/String;

    return-void
.end method
