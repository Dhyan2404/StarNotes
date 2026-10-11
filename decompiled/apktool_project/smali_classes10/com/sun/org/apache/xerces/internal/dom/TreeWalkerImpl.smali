.class public Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/traversal/TreeWalker;


# instance fields
.field fCurrentNode:Lorg/w3c/dom/Node;

.field private fEntityReferenceExpansion:Z

.field fNodeFilter:Lorg/w3c/dom/traversal/NodeFilter;

.field fRoot:Lorg/w3c/dom/Node;

.field fWhatToShow:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;ILorg/w3c/dom/traversal/NodeFilter;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fRoot:Lorg/w3c/dom/Node;

    iput p2, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fWhatToShow:I

    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fNodeFilter:Lorg/w3c/dom/traversal/NodeFilter;

    iput-boolean p4, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fEntityReferenceExpansion:Z

    return-void
.end method


# virtual methods
.method public acceptNode(Lorg/w3c/dom/Node;)S
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fNodeFilter:Lorg/w3c/dom/traversal/NodeFilter;

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fWhatToShow:I

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    sub-int/2addr p1, v2

    shl-int p1, v2, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    return v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fWhatToShow:I

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    sub-int/2addr v3, v2

    shl-int/2addr v2, v3

    and-int/2addr v0, v2

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fNodeFilter:Lorg/w3c/dom/traversal/NodeFilter;

    invoke-interface {p0, p1}, Lorg/w3c/dom/traversal/NodeFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result p0

    return p0

    :cond_2
    return v1
.end method

.method public firstChild()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getFirstChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    :cond_1
    return-object v0
.end method

.method public getCurrentNode()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public getExpandEntityReferences()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fEntityReferenceExpansion:Z

    return p0
.end method

.method public getFilter()Lorg/w3c/dom/traversal/NodeFilter;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fNodeFilter:Lorg/w3c/dom/traversal/NodeFilter;

    return-object p0
.end method

.method public getFirstChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fEntityReferenceExpansion:Z

    if-nez v1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    return-object v1

    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    invoke-interface {v1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getFirstChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v1, p1}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getNextSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0

    :cond_5
    invoke-virtual {p0, v1, p1}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getNextSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public getLastChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-boolean v1, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fEntityReferenceExpansion:Z

    if-nez v1, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    return-object v0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v1

    if-nez v1, :cond_2

    return-object v0

    :cond_2
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    return-object v1

    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    invoke-interface {v1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getLastChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_4

    invoke-virtual {p0, v1, p1}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getPreviousSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_4
    return-object v0

    :cond_5
    invoke-virtual {p0, v1, p1}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getPreviousSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public getNextSibling(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fRoot:Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getNextSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public getNextSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-ne p1, p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    const/4 v2, 0x3

    if-nez v1, :cond_3

    .line 3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_2

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v1

    if-ne v1, v2, :cond_2

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getNextSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0

    .line 6
    :cond_3
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-object v1

    :cond_4
    if-ne p1, v2, :cond_6

    .line 7
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getFirstChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_5

    .line 8
    invoke-virtual {p0, v1, p2}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getNextSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_5
    return-object p1

    .line 9
    :cond_6
    invoke-virtual {p0, v1, p2}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getNextSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_1
    return-object v0
.end method

.method public getParentNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fRoot:Lorg/w3c/dom/Node;

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    return-object p1

    :cond_2
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getParentNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public getPreviousSibling(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fRoot:Lorg/w3c/dom/Node;

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getPreviousSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0
.end method

.method public getPreviousSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-ne p1, p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    const/4 v2, 0x3

    if-nez v1, :cond_3

    .line 3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_2

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result v1

    if-ne v1, v2, :cond_2

    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getPreviousSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    return-object v0

    .line 6
    :cond_3
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    return-object v1

    :cond_4
    if-ne p1, v2, :cond_6

    .line 7
    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getLastChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_5

    .line 8
    invoke-virtual {p0, v1, p2}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getPreviousSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_5
    return-object p1

    .line 9
    :cond_6
    invoke-virtual {p0, v1, p2}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getPreviousSibling(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_1
    return-object v0
.end method

.method public getRoot()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fRoot:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public getWhatToShow()I
    .locals 0

    iget p0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fWhatToShow:I

    return p0
.end method

.method public lastChild()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getLastChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    :cond_1
    return-object v0
.end method

.method public nextNode()Lorg/w3c/dom/Node;
    .locals 3

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getFirstChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getNextSibling(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_2

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    return-object v0

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getParentNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getNextSibling(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_3

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    return-object v2

    :cond_3
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getParentNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public nextSibling()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getNextSibling(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    :cond_1
    return-object v0
.end method

.method public parentNode()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getParentNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    :cond_1
    return-object v0
.end method

.method public previousNode()Lorg/w3c/dom/Node;
    .locals 4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getPreviousSibling(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getParentNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    return-object v0

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getLastChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    move-object v2, v1

    :goto_0
    if-eqz v1, :cond_3

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getLastChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v2

    move-object v3, v2

    move-object v2, v1

    move-object v1, v3

    goto :goto_0

    :cond_3
    if-eqz v2, :cond_4

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    return-object v2

    :cond_4
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public previousSibling()Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->getPreviousSibling(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_1

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    :cond_1
    return-object v0
.end method

.method public setCurrentNode(Lorg/w3c/dom/Node;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fCurrentNode:Lorg/w3c/dom/Node;

    return-void

    :cond_0
    const-string p0, "NOT_SUPPORTED_ERR"

    const/4 p1, 0x0

    const-string v0, "http://www.w3.org/dom/DOMTR"

    invoke-static {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/16 v0, 0x9

    invoke-direct {p1, v0, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1
.end method

.method public setWhatShow(I)V
    .locals 0

    iput p1, p0, Lcom/sun/org/apache/xerces/internal/dom/TreeWalkerImpl;->fWhatToShow:I

    return-void
.end method
