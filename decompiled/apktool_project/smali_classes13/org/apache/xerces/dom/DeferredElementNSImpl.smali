.class public Lorg/apache/xerces/dom/DeferredElementNSImpl;
.super Lorg/apache/xerces/dom/ElementNSImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = -0x456a4409e1232119L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method public constructor <init>(Lorg/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xerces/dom/ElementNSImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput p2, p0, Lorg/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncChildren(Z)V

    return-void
.end method


# virtual methods
.method public final getNodeIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    return p0
.end method

.method public final synchronizeChildren()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xerces/dom/ParentNode;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lorg/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v0, p0, v1}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lorg/apache/xerces/dom/ParentNode;I)V

    return-void
.end method

.method public final synchronizeData()V
    .locals 10

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncData(Z)V

    iget-object v1, p0, Lorg/apache/xerces/dom/ParentNode;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    check-cast v1, Lorg/apache/xerces/dom/DeferredDocumentImpl;

    iget-boolean v2, v1, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    iput-boolean v0, v1, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    iget v3, p0, Lorg/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v1, v3}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/xerces/dom/ElementImpl;->name:Ljava/lang/String;

    const/16 v4, 0x3a

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v5, 0x1

    if-gez v3, :cond_0

    iget-object v3, p0, Lorg/apache/xerces/dom/ElementImpl;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lorg/apache/xerces/dom/ElementImpl;->name:Ljava/lang/String;

    add-int/2addr v3, v5

    invoke-virtual {v6, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    :goto_0
    iput-object v3, p0, Lorg/apache/xerces/dom/ElementNSImpl;->localName:Ljava/lang/String;

    iget v3, p0, Lorg/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v1, v3}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/xerces/dom/ElementNSImpl;->namespaceURI:Ljava/lang/String;

    iget v3, p0, Lorg/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v1, v3}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getTypeInfo(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/xerces/xs/XSTypeDefinition;

    iput-object v3, p0, Lorg/apache/xerces/dom/ElementNSImpl;->type:Lorg/apache/xerces/xs/XSTypeDefinition;

    invoke-virtual {p0}, Lorg/apache/xerces/dom/ElementImpl;->setupDefaultAttributes()V

    iget v3, p0, Lorg/apache/xerces/dom/DeferredElementNSImpl;->fNodeIndex:I

    invoke-virtual {v1, v3}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_4

    invoke-virtual {p0}, Lorg/apache/xerces/dom/ElementImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    :cond_1
    invoke-virtual {v1, v3}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lorg/apache/xerces/dom/DeferredNode;

    move-result-object v7

    check-cast v7, Lorg/apache/xerces/dom/AttrImpl;

    invoke-virtual {v7}, Lorg/apache/xerces/dom/AttrImpl;->getSpecified()Z

    move-result v8

    if-nez v8, :cond_3

    if-nez v0, :cond_2

    invoke-virtual {v7}, Lorg/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_3

    invoke-virtual {v7}, Lorg/apache/xerces/dom/NodeImpl;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lorg/apache/xerces/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    if-eq v8, v9, :cond_3

    invoke-virtual {v7}, Lorg/apache/xerces/dom/AttrImpl;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-gez v8, :cond_3

    :cond_2
    invoke-interface {p0, v7}, Lorg/w3c/dom/NamedNodeMap;->setNamedItemNS(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move v0, v5

    goto :goto_1

    :cond_3
    invoke-interface {p0, v7}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_1
    invoke-virtual {v1, v3}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v3

    if-ne v3, v6, :cond_1

    :cond_4
    iput-boolean v2, v1, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    return-void
.end method
