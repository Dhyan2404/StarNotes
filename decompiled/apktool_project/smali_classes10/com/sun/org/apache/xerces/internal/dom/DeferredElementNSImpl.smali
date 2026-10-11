.class public Lcom/sun/org/apache/xerces/internal/dom/DeferredElementNSImpl;
.super Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = -0x456a4409e1232119L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredElementNSImpl;->fNodeIndex:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren(Z)V

    return-void
.end method


# virtual methods
.method public final getNodeIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredElementNSImpl;->fNodeIndex:I

    return p0
.end method

.method public final synchronizeChildren()V
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument()Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->synchronizeChildren(Lcom/sun/org/apache/xerces/internal/dom/ParentNode;I)V

    return-void
.end method

.method public final synchronizeData()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData(Z)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    check-cast v1, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget-boolean v2, v1, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    iput-boolean v0, v1, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->name:Ljava/lang/String;

    const/16 v3, 0x3a

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->localName:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->name:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->localName:Ljava/lang/String;

    :goto_0
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getTypeInfo(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ElementNSImpl;->type:Lcom/sun/org/apache/xerces/internal/xs/XSTypeDefinition;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setupDefaultAttributes()V

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    :cond_1
    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeObject(I)Lcom/sun/org/apache/xerces/internal/dom/DeferredNode;

    move-result-object v4

    check-cast v4, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;

    invoke-interface {p0, v4}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v0

    if-ne v0, v3, :cond_1

    :cond_2
    iput-boolean v2, v1, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;->mutationEvents:Z

    return-void
.end method
