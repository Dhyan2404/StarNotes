.class public Lcom/sun/org/apache/xerces/internal/dom/DeferredEntityReferenceImpl;
.super Lcom/sun/org/apache/xerces/internal/dom/EntityReferenceImpl;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x56ab1254629fc5fL


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/EntityReferenceImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredEntityReferenceImpl;->fNodeIndex:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData(Z)V

    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredEntityReferenceImpl;->fNodeIndex:I

    return p0
.end method

.method public synchronizeChildren()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren(Z)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isReadOnly(Z)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument()Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredEntityReferenceImpl;->fNodeIndex:I

    invoke-virtual {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->synchronizeChildren(Lcom/sun/org/apache/xerces/internal/dom/ParentNode;I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/sun/org/apache/xerces/internal/dom/EntityReferenceImpl;->setReadOnly(ZZ)V

    return-void
.end method

.method public synchronizeData()V
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData(Z)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->ownerDocument:Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredEntityReferenceImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/EntityReferenceImpl;->name:Ljava/lang/String;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredEntityReferenceImpl;->fNodeIndex:I

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeValue(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/EntityReferenceImpl;->baseURI:Ljava/lang/String;

    return-void
.end method
