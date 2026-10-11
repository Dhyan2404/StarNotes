.class public Lcom/sun/org/apache/xerces/internal/dom/DeferredTextImpl;
.super Lcom/sun/org/apache/xerces/internal/dom/TextImpl;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/dom/DeferredNode;


# static fields
.field static final serialVersionUID:J = 0x2010f31313a241d1L


# instance fields
.field protected transient fNodeIndex:I


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/TextImpl;-><init>(Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;Ljava/lang/String;)V

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredTextImpl;->fNodeIndex:I

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData(Z)V

    return-void
.end method


# virtual methods
.method public getNodeIndex()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredTextImpl;->fNodeIndex:I

    return p0
.end method

.method public synchronizeData()V
    .locals 3

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->needsSyncData(Z)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->ownerDocument()Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredTextImpl;->fNodeIndex:I

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeValueString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/CharacterDataImpl;->data:Ljava/lang/String;

    iget v2, p0, Lcom/sun/org/apache/xerces/internal/dom/DeferredTextImpl;->fNodeIndex:I

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/dom/DeferredDocumentImpl;->getNodeExtra(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    move v0, v2

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->isIgnorableWhitespace(Z)V

    return-void
.end method
