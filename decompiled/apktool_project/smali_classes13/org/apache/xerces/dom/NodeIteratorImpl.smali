.class public Lorg/apache/xerces/dom/NodeIteratorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/traversal/NodeIterator;


# instance fields
.field public e:Lorg/apache/xerces/dom/DocumentImpl;

.field public f:Lorg/w3c/dom/Node;

.field public g:I

.field public h:Lorg/w3c/dom/traversal/NodeFilter;

.field public i:Z

.field public j:Lorg/w3c/dom/Node;

.field public k:Z

.field public l:Z


# direct methods
.method public constructor <init>(Lorg/apache/xerces/dom/DocumentImpl;Lorg/w3c/dom/Node;ILorg/w3c/dom/traversal/NodeFilter;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->i:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->k:Z

    iput-object p1, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->e:Lorg/apache/xerces/dom/DocumentImpl;

    iput-object p2, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->f:Lorg/w3c/dom/Node;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->j:Lorg/w3c/dom/Node;

    iput p3, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->g:I

    iput-object p4, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->h:Lorg/w3c/dom/traversal/NodeFilter;

    iput-boolean p5, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->l:Z

    return-void
.end method


# virtual methods
.method public a(Lorg/w3c/dom/Node;)Z
    .locals 4

    iget-object v0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->h:Lorg/w3c/dom/traversal/NodeFilter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget p0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->g:I

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    sub-int/2addr p1, v2

    shl-int p1, v2, p1

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    iget v0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->g:I

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    sub-int/2addr v3, v2

    shl-int v3, v2, v3

    and-int/2addr v0, v3

    if-eqz v0, :cond_2

    iget-object p0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->h:Lorg/w3c/dom/traversal/NodeFilter;

    invoke-interface {p0, p1}, Lorg/w3c/dom/traversal/NodeFilter;->acceptNode(Lorg/w3c/dom/Node;)S

    move-result p0

    if-ne p0, v2, :cond_2

    move v1, v2

    :cond_2
    return v1
.end method

.method public b(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 3

    iget-object v0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->j:Lorg/w3c/dom/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    :goto_0
    iget-object v2, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->f:Lorg/w3c/dom/Node;

    if-ne v0, v2, :cond_1

    return-object v1

    :cond_1
    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0
.end method

.method public c(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;
    .locals 1

    if-nez p1, :cond_0

    iget-object p0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->f:Lorg/w3c/dom/Node;

    return-object p0

    :cond_0
    if-eqz p2, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p2, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->f:Lorg/w3c/dom/Node;

    const/4 v0, 0x0

    if-ne p1, p2, :cond_2

    return-object v0

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p2

    if-eqz p2, :cond_3

    return-object p2

    :cond_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p2, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->f:Lorg/w3c/dom/Node;

    if-ne p1, p2, :cond_4

    goto :goto_0

    :cond_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p2

    if-eqz p2, :cond_3

    return-object p2

    :cond_5
    :goto_0
    return-object v0
.end method

.method public d(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 1

    iget-object v0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->f:Lorg/w3c/dom/Node;

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getPreviousSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-boolean p0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->l:Z

    if-nez p0, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p0

    const/4 p1, 0x5

    if-eq p0, p1, :cond_4

    :cond_2
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getLastChild()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_4
    :goto_1
    return-object v0
.end method

.method public detach()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->i:Z

    iget-object v0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->e:Lorg/apache/xerces/dom/DocumentImpl;

    invoke-virtual {v0, p0}, Lorg/apache/xerces/dom/DocumentImpl;->removeNodeIterator(Lorg/w3c/dom/traversal/NodeIterator;)V

    return-void
.end method

.method public getExpandEntityReferences()Z
    .locals 0

    iget-boolean p0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->l:Z

    return p0
.end method

.method public getFilter()Lorg/w3c/dom/traversal/NodeFilter;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->h:Lorg/w3c/dom/traversal/NodeFilter;

    return-object p0
.end method

.method public getRoot()Lorg/w3c/dom/Node;
    .locals 0

    iget-object p0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->f:Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public getWhatToShow()I
    .locals 0

    iget p0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->g:I

    return p0
.end method

.method public nextNode()Lorg/w3c/dom/Node;
    .locals 6

    iget-boolean v0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->f:Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->j:Lorg/w3c/dom/Node;

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    iget-boolean v3, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->k:Z

    const/4 v4, 0x1

    if-nez v3, :cond_3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->j:Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_3
    iget-boolean v3, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->l:Z

    if-nez v3, :cond_4

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v5, 0x5

    if-ne v3, v5, :cond_4

    invoke-virtual {p0, v0, v2}, Lorg/apache/xerces/dom/NodeIteratorImpl;->c(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_4
    invoke-virtual {p0, v0, v4}, Lorg/apache/xerces/dom/NodeIteratorImpl;->c(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    iput-boolean v4, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->k:Z

    if-nez v0, :cond_5

    return-object v1

    :cond_5
    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/NodeIteratorImpl;->a(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->j:Lorg/w3c/dom/Node;

    return-object v0

    :cond_6
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string v0, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INVALID_STATE_ERR"

    invoke-static {v0, v2, v1}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public previousNode()Lorg/w3c/dom/Node;
    .locals 4

    iget-boolean v0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->i:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    iget-object v0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->f:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->j:Lorg/w3c/dom/Node;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :cond_1
    if-eqz v3, :cond_2

    return-object v1

    :cond_2
    iget-boolean v3, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->k:Z

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->j:Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/NodeIteratorImpl;->d(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    iput-boolean v2, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->k:Z

    if-nez v0, :cond_4

    return-object v1

    :cond_4
    invoke-virtual {p0, v0}, Lorg/apache/xerces/dom/NodeIteratorImpl;->a(Lorg/w3c/dom/Node;)Z

    move-result v3

    if-eqz v3, :cond_1

    iput-object v0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->j:Lorg/w3c/dom/Node;

    return-object v0

    :cond_5
    :goto_1
    return-object v1

    :cond_6
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string v0, "http://www.w3.org/dom/DOMTR"

    const-string v2, "INVALID_STATE_ERR"

    invoke-static {v0, v2, v1}, Lorg/apache/xerces/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0xb

    invoke-direct {p0, v1, v0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0
.end method

.method public removeNode(Lorg/w3c/dom/Node;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/NodeIteratorImpl;->b(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    if-nez p1, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->k:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/NodeIteratorImpl;->d(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->j:Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/apache/xerces/dom/NodeIteratorImpl;->c(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v0

    if-eqz v0, :cond_3

    iput-object v0, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->j:Lorg/w3c/dom/Node;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/xerces/dom/NodeIteratorImpl;->d(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->j:Lorg/w3c/dom/Node;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/xerces/dom/NodeIteratorImpl;->k:Z

    :goto_0
    return-void
.end method
