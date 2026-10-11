.class public Lcom/sun/org/apache/html/internal/dom/HTMLTableElementImpl;
.super Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/html/HTMLTableElement;


# instance fields
.field private _bodies:Lcom/sun/org/apache/html/internal/dom/HTMLCollectionImpl;

.field private _rows:Lcom/sun/org/apache/html/internal/dom/HTMLCollectionImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/html/internal/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;-><init>(Lcom/sun/org/apache/html/internal/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized createCaption()Lorg/w3c/dom/html/HTMLElement;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/html/internal/dom/HTMLTableElementImpl;->getCaption()Lorg/w3c/dom/html/HTMLTableCaptionElement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/sun/org/apache/html/internal/dom/HTMLTableCaptionElementImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/html/internal/dom/HTMLDocumentImpl;

    const-string v2, "CAPTION"

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/html/internal/dom/HTMLTableCaptionElementImpl;-><init>(Lcom/sun/org/apache/html/internal/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createTFoot()Lorg/w3c/dom/html/HTMLElement;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/html/internal/dom/HTMLTableElementImpl;->getTFoot()Lorg/w3c/dom/html/HTMLTableSectionElement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/sun/org/apache/html/internal/dom/HTMLTableSectionElementImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/html/internal/dom/HTMLDocumentImpl;

    const-string v2, "TFOOT"

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/html/internal/dom/HTMLTableSectionElementImpl;-><init>(Lcom/sun/org/apache/html/internal/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized createTHead()Lorg/w3c/dom/html/HTMLElement;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/html/internal/dom/HTMLTableElementImpl;->getTHead()Lorg/w3c/dom/html/HTMLTableSectionElement;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    new-instance v0, Lcom/sun/org/apache/html/internal/dom/HTMLTableSectionElementImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/html/internal/dom/HTMLDocumentImpl;

    const-string v2, "THEAD"

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/html/internal/dom/HTMLTableSectionElementImpl;-><init>(Lcom/sun/org/apache/html/internal/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteCaption()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/html/internal/dom/HTMLTableElementImpl;->getCaption()Lorg/w3c/dom/html/HTMLTableCaptionElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteRow(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    instance-of v1, v0, Lorg/w3c/dom/html/HTMLTableRowElement;

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_1
    :try_start_1
    instance-of v1, v0, Lcom/sun/org/apache/html/internal/dom/HTMLTableSectionElementImpl;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/sun/org/apache/html/internal/dom/HTMLTableSectionElementImpl;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/html/internal/dom/HTMLTableSectionElementImpl;->deleteRowX(I)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-gez p1, :cond_2

    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    :try_start_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized deleteTFoot()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/html/internal/dom/HTMLTableElementImpl;->getTFoot()Lorg/w3c/dom/html/HTMLTableSectionElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized deleteTHead()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/html/internal/dom/HTMLTableElementImpl;->getTHead()Lorg/w3c/dom/html/HTMLTableSectionElement;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getAlign()Ljava/lang/String;
    .locals 1

    const-string v0, "align"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBgColor()Ljava/lang/String;
    .locals 1

    const-string v0, "bgcolor"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBorder()Ljava/lang/String;
    .locals 1

    const-string v0, "border"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public declared-synchronized getCaption()Lorg/w3c/dom/html/HTMLTableCaptionElement;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/w3c/dom/html/HTMLTableCaptionElement;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CAPTION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lorg/w3c/dom/html/HTMLTableCaptionElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getCellPadding()Ljava/lang/String;
    .locals 1

    const-string v0, "cellpadding"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getCellSpacing()Ljava/lang/String;
    .locals 1

    const-string v0, "cellspacing"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getFrame()Ljava/lang/String;
    .locals 1

    const-string v0, "frame"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRows()Lorg/w3c/dom/html/HTMLCollection;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/html/internal/dom/HTMLTableElementImpl;->_rows:Lcom/sun/org/apache/html/internal/dom/HTMLCollectionImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/html/internal/dom/HTMLCollectionImpl;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/html/internal/dom/HTMLCollectionImpl;-><init>(Lorg/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, Lcom/sun/org/apache/html/internal/dom/HTMLTableElementImpl;->_rows:Lcom/sun/org/apache/html/internal/dom/HTMLCollectionImpl;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/html/internal/dom/HTMLTableElementImpl;->_rows:Lcom/sun/org/apache/html/internal/dom/HTMLCollectionImpl;

    return-object p0
.end method

.method public getRules()Ljava/lang/String;
    .locals 1

    const-string v0, "rules"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    const-string v0, "summary"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTBodies()Lorg/w3c/dom/html/HTMLCollection;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/html/internal/dom/HTMLTableElementImpl;->_bodies:Lcom/sun/org/apache/html/internal/dom/HTMLCollectionImpl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/html/internal/dom/HTMLCollectionImpl;

    const/4 v1, -0x2

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/html/internal/dom/HTMLCollectionImpl;-><init>(Lorg/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, Lcom/sun/org/apache/html/internal/dom/HTMLTableElementImpl;->_bodies:Lcom/sun/org/apache/html/internal/dom/HTMLCollectionImpl;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/html/internal/dom/HTMLTableElementImpl;->_bodies:Lcom/sun/org/apache/html/internal/dom/HTMLCollectionImpl;

    return-object p0
.end method

.method public declared-synchronized getTFoot()Lorg/w3c/dom/html/HTMLTableSectionElement;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/w3c/dom/html/HTMLTableSectionElement;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TFOOT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lorg/w3c/dom/html/HTMLTableSectionElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getTHead()Lorg/w3c/dom/html/HTMLTableSectionElement;
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    instance-of v1, v0, Lorg/w3c/dom/html/HTMLTableSectionElement;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "THEAD"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast v0, Lorg/w3c/dom/html/HTMLTableSectionElement;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_1
    monitor-exit p0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getWidth()Ljava/lang/String;
    .locals 1

    const-string v0, "width"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public insertRow(I)Lorg/w3c/dom/html/HTMLElement;
    .locals 3

    new-instance v0, Lcom/sun/org/apache/html/internal/dom/HTMLTableRowElementImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/html/internal/dom/HTMLDocumentImpl;

    const-string v2, "TR"

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/html/internal/dom/HTMLTableRowElementImpl;-><init>(Lcom/sun/org/apache/html/internal/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLTableElementImpl;->insertRowX(ILcom/sun/org/apache/html/internal/dom/HTMLTableRowElementImpl;)V

    return-object v0
.end method

.method public insertRowX(ILcom/sun/org/apache/html/internal/dom/HTMLTableRowElementImpl;)V
    .locals 3

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    if-eqz v0, :cond_3

    instance-of v2, v0, Lorg/w3c/dom/html/HTMLTableRowElement;

    if-eqz v2, :cond_0

    if-nez p1, :cond_2

    invoke-virtual {p0, p2, v0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    :cond_0
    instance-of v2, v0, Lcom/sun/org/apache/html/internal/dom/HTMLTableSectionElementImpl;

    if-eqz v2, :cond_2

    move-object v1, v0

    check-cast v1, Lcom/sun/org/apache/html/internal/dom/HTMLTableSectionElementImpl;

    invoke-virtual {v1, p1, p2}, Lcom/sun/org/apache/html/internal/dom/HTMLTableSectionElementImpl;->insertRowX(ILcom/sun/org/apache/html/internal/dom/HTMLTableRowElementImpl;)I

    move-result p1

    if-gez p1, :cond_1

    return-void

    :cond_1
    move-object v1, v0

    :cond_2
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_3
    if-eqz v1, :cond_4

    invoke-interface {v1, p2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :goto_1
    return-void
.end method

.method public setAlign(Ljava/lang/String;)V
    .locals 1

    const-string v0, "align"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBgColor(Ljava/lang/String;)V
    .locals 1

    const-string v0, "bgcolor"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setBorder(Ljava/lang/String;)V
    .locals 1

    const-string v0, "border"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setCaption(Lorg/w3c/dom/html/HTMLTableCaptionElement;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAPTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTM016 Argument \'caption\' is not an element of type <CAPTION>."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/html/internal/dom/HTMLTableElementImpl;->deleteCaption()V

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setCellPadding(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cellpadding"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setCellSpacing(Ljava/lang/String;)V
    .locals 1

    const-string v0, "cellspacing"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setFrame(Ljava/lang/String;)V
    .locals 1

    const-string v0, "frame"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRules(Ljava/lang/String;)V
    .locals 1

    const-string v0, "rules"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 1

    const-string v0, "summary"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public declared-synchronized setTFoot(Lorg/w3c/dom/html/HTMLTableSectionElement;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TFOOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTM018 Argument \'tFoot\' is not an element of type <TFOOT>."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/html/internal/dom/HTMLTableElementImpl;->deleteTFoot()V

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setTHead(Lorg/w3c/dom/html/HTMLTableSectionElement;)V
    .locals 2

    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "THEAD"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "HTM017 Argument \'tHead\' is not an element of type <THEAD>."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/html/internal/dom/HTMLTableElementImpl;->deleteTHead()V

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setWidth(Ljava/lang/String;)V
    .locals 1

    const-string v0, "width"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
