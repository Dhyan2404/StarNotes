.class public final Lcom/sun/org/apache/xerces/internal/dom/DeferredAttrImpl;
.super Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x5fcd35369ab8d3dcL


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredAttrImpl;->fNodeIndex:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData(Z)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncChildren(Z)V

    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredAttrImpl;->fNodeIndex:I

    return p0
.end method

.method public synchronizeChildren()V
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerDocument()Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget v1, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredAttrImpl;->fNodeIndex:I

    invoke-virtual {v0, p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->synchronizeChildren(Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;I)V

    return-void
.end method

.method public synchronizeData()V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData(Z)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerDocument()Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredAttrImpl;->fNodeIndex:I

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeName(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->name:Ljava/lang/String;

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredAttrImpl;->fNodeIndex:I

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v2

    and-int/lit8 v3, v2, 0x20

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v0

    :goto_0
    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isSpecified(Z)V

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_1

    move v0, v4

    :cond_1
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isIdAttribute(Z)V

    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredAttrImpl;->fNodeIndex:I

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getLastChild(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getTypeInfo(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/AttrImpl;->type:Ljava/lang/Object;

    return-void
.end method
