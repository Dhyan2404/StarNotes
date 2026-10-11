.class public Lcom/sun/org/apache/xerces/internal/dom/DeferredElementDefinitionImpl;
.super Lcom/sun/org/apache/xerces/internal/dom/ElementDefinitionImpl;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x5d06afa0904b42f7L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/ElementDefinitionImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredElementDefinitionImpl;->fNodeIndex:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData(Z)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren(Z)V

    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredElementDefinitionImpl;->fNodeIndex:I

    return p0
.end method

.method public synchronizeChildren()V
    .locals 5

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->getMutationEvents()Z

    move-result v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->setMutationEvents(Z)V

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren(Z)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    check-cast v1, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    invoke-direct {v2, v1}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;)V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementDefinitionImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredElementDefinitionImpl;->fNodeIndex:I

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v2

    :goto_0
    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeObject(I)Lcom/sun/org/apache/xerces/internal/dom/DeferredNode;

    move-result-object v3

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementDefinitionImpl;->attributes:Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;

    invoke-virtual {v4, v3}, Lcom/sun/org/apache/xerces/internal/dom/NamedNodeMapImpl;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->setMutationEvents(Z)V

    return-void
.end method

.method public synchronizeData()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData(Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredElementDefinitionImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementDefinitionImpl;->name:Ljava/lang/String;

    return-void
.end method
