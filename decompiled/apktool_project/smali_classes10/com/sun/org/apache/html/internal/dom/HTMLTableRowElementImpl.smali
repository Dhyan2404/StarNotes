.class public Lcom/sun/org/apache/html/internal/dom/HTMLTableRowElementImpl;
.super Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/html/HTMLTableRowElement;


# instance fields
.field _cells:Lorg/w3c/dom/html/HTMLCollection;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/html/internal/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;-><init>(Lcom/sun/org/apache/html/internal/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public deleteCell(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_2

    instance-of v1, v0, Lorg/w3c/dom/html/HTMLTableCellElement;

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void

    :cond_0
    add-int/lit8 p1, p1, -0x1

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_2
    return-void
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

.method public getCells()Lorg/w3c/dom/html/HTMLCollection;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/html/internal/dom/HTMLTableRowElementImpl;->_cells:Lorg/w3c/dom/html/HTMLCollection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/html/internal/dom/HTMLCollectionImpl;

    const/4 v1, -0x3

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/html/internal/dom/HTMLCollectionImpl;-><init>(Lorg/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, Lcom/sun/org/apache/html/internal/dom/HTMLTableRowElementImpl;->_cells:Lorg/w3c/dom/html/HTMLCollection;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/html/internal/dom/HTMLTableRowElementImpl;->_cells:Lorg/w3c/dom/html/HTMLCollection;

    return-object p0
.end method

.method public getCh()Ljava/lang/String;
    .locals 2

    const-string v0, "char"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getChOff()Ljava/lang/String;
    .locals 1

    const-string v0, "charoff"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRowIndex()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lorg/w3c/dom/html/HTMLTableSectionElement;

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 4
    :cond_0
    instance-of v1, v0, Lorg/w3c/dom/html/HTMLTableElement;

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLTableRowElementImpl;->getRowIndex(Lorg/w3c/dom/Node;)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getRowIndex(Lorg/w3c/dom/Node;)I
    .locals 2

    .line 6
    check-cast p1, Lorg/w3c/dom/html/HTMLElement;

    const-string v0, "TR"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p1

    const/4 v0, 0x0

    .line 7
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 8
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    if-ne v1, p0, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getSectionRowIndex()I
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v1, v0, Lorg/w3c/dom/html/HTMLTableSectionElement;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLTableRowElementImpl;->getRowIndex(Lorg/w3c/dom/Node;)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, -0x1

    return p0
.end method

.method public getVAlign()Ljava/lang/String;
    .locals 1

    const-string v0, "valign"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public insertCell(I)Lorg/w3c/dom/html/HTMLElement;
    .locals 3

    new-instance v0, Lcom/sun/org/apache/html/internal/dom/HTMLTableCellElementImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/html/internal/dom/HTMLDocumentImpl;

    const-string v2, "TD"

    invoke-direct {v0, v1, v2}, Lcom/sun/org/apache/html/internal/dom/HTMLTableCellElementImpl;-><init>(Lcom/sun/org/apache/html/internal/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    instance-of v2, v1, Lorg/w3c/dom/html/HTMLTableCellElement;

    if-eqz v2, :cond_1

    if-nez p1, :cond_0

    invoke-virtual {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0

    :cond_0
    add-int/lit8 p1, p1, -0x1

    :cond_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object v0
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

.method public setCells(Lorg/w3c/dom/html/HTMLCollection;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lorg/w3c/dom/html/HTMLCollection;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_1

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    add-int/lit8 v0, v0, 0x1

    invoke-interface {p1, v0}, Lorg/w3c/dom/html/HTMLCollection;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setCh(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "char"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setChOff(Ljava/lang/String;)V
    .locals 1

    const-string v0, "charoff"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setRowIndex(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v1, v0, Lorg/w3c/dom/html/HTMLTableSectionElement;

    if-eqz v1, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    :cond_0
    instance-of v1, v0, Lorg/w3c/dom/html/HTMLTableElement;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/sun/org/apache/html/internal/dom/HTMLTableElementImpl;

    invoke-virtual {v0, p1, p0}, Lcom/sun/org/apache/html/internal/dom/HTMLTableElementImpl;->insertRowX(ILcom/sun/org/apache/html/internal/dom/HTMLTableRowElementImpl;)V

    :cond_1
    return-void
.end method

.method public setSectionRowIndex(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ChildNode;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v0

    instance-of v1, v0, Lorg/w3c/dom/html/HTMLTableSectionElement;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/sun/org/apache/html/internal/dom/HTMLTableSectionElementImpl;

    invoke-virtual {v0, p1, p0}, Lcom/sun/org/apache/html/internal/dom/HTMLTableSectionElementImpl;->insertRowX(ILcom/sun/org/apache/html/internal/dom/HTMLTableRowElementImpl;)I

    :cond_0
    return-void
.end method

.method public setVAlign(Ljava/lang/String;)V
    .locals 1

    const-string v0, "valign"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
