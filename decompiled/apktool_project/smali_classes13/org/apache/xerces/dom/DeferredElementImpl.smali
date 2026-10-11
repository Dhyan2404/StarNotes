.class public Lorg/apache/xerces/dom/DeferredElementImpl;
.super Lorg/apache/xerces/dom/ElementImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = -0x6a74ccb2df45c8baL


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method public constructor <init>(Lorg/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xerces/dom/ElementImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput p2, p0, Lorg/apache/xerces/dom/DeferredElementImpl;->fNodeIndex:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncChildren(Z)V

    return-void
.end method


# virtual methods
.method public final getNodeIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/dom/DeferredElementImpl;->fNodeIndex:I

    return p0
.end method

.method public final synchronizeChildren()V
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xerces/dom/ParentNode;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lorg/apache/xerces/dom/DeferredElementImpl;->fNodeIndex:I

    invoke-virtual {v0, p0, v1}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lorg/apache/xerces/dom/ParentNode;I)V

    return-void
.end method

.method public final synchronizeData()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncData(Z)V

    iget-object v1, p0, Lorg/apache/xerces/dom/ParentNode;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    check-cast v1, Lorg/apache/xerces/dom/DeferredDocumentImpl;

    iget-boolean v2, v1, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    iput-boolean v0, v1, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    iget v0, p0, Lorg/apache/xerces/dom/DeferredElementImpl;->fNodeIndex:I

    invoke-virtual {v1, v0}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/dom/ElementImpl;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lorg/apache/xerces/dom/ElementImpl;->setupDefaultAttributes()V

    iget v0, p0, Lorg/apache/xerces/dom/DeferredElementImpl;->fNodeIndex:I

    invoke-virtual {v1, v0}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    invoke-virtual {p0}, Lorg/apache/xerces/dom/ElementImpl;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object p0

    :cond_0
    invoke-virtual {v1, v0}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeObject(I)Lorg/apache/xerces/dom/DeferredNode;

    move-result-object v4

    check-cast v4, Lorg/apache/xerces/dom/NodeImpl;

    invoke-interface {p0, v4}, Lorg/w3c/dom/NamedNodeMap;->setNamedItem(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-virtual {v1, v0}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getPrevSibling(I)I

    move-result v0

    if-ne v0, v3, :cond_0

    :cond_1
    iput-boolean v2, v1, Lorg/apache/xerces/dom/DocumentImpl;->mutationEvents:Z

    return-void
.end method
