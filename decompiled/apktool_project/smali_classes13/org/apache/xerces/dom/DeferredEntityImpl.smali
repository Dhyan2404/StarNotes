.class public Lorg/apache/xerces/dom/DeferredEntityImpl;
.super Lorg/apache/xerces/dom/EntityImpl;
.source "SourceFile"

# interfaces
.implements Lorg/apache/xerces/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x420f8ee1ad39e3c6L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method public constructor <init>(Lorg/apache/xerces/dom/DeferredDocumentImpl;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/apache/xerces/dom/EntityImpl;-><init>(Lorg/apache/xerces/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput p2, p0, Lorg/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncData(Z)V

    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncChildren(Z)V

    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    return p0
.end method

.method public synchronizeChildren()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncChildren(Z)V

    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/NodeImpl;->isReadOnly(Z)V

    invoke-virtual {p0}, Lorg/apache/xerces/dom/ParentNode;->ownerDocument()Lorg/apache/xerces/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lorg/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    invoke-virtual {v0, p0, v1}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->synchronizeChildren(Lorg/apache/xerces/dom/ParentNode;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lorg/apache/xerces/dom/ParentNode;->setReadOnly(ZZ)V

    return-void
.end method

.method public synchronizeData()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/NodeImpl;->needsSyncData(Z)V

    iget-object v0, p0, Lorg/apache/xerces/dom/ParentNode;->ownerDocument:Lorg/apache/xerces/dom/CoreDocumentImpl;

    check-cast v0, Lorg/apache/xerces/dom/DeferredDocumentImpl;

    iget v1, p0, Lorg/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xerces/dom/EntityImpl;->name:Ljava/lang/String;

    iget v1, p0, Lorg/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xerces/dom/EntityImpl;->publicId:Ljava/lang/String;

    iget v1, p0, Lorg/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/apache/xerces/dom/EntityImpl;->systemId:Ljava/lang/String;

    iget v1, p0, Lorg/apache/xerces/dom/DeferredEntityImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeType(I)S

    invoke-virtual {v0, v1}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xerces/dom/EntityImpl;->notationName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xerces/dom/EntityImpl;->version:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeURI(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xerces/dom/EntityImpl;->encoding:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/xerces/dom/EntityImpl;->baseURI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/xerces/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/xerces/dom/EntityImpl;->inputEncoding:Ljava/lang/String;

    return-void
.end method
