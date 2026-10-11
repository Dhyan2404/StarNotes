.class public Lcom/sun/org/apache/html/internal/dom/HTMLSelectElementImpl;
.super Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/html/HTMLSelectElement;
.implements Lcom/sun/org/apache/html/internal/dom/HTMLFormControl;


# instance fields
.field private _options:Lorg/w3c/dom/html/HTMLCollection;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/html/internal/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;-><init>(Lcom/sun/org/apache/html/internal/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public add(Lorg/w3c/dom/html/HTMLElement;Lorg/w3c/dom/html/HTMLElement;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public blur()V
    .locals 0

    return-void
.end method

.method public focus()V
    .locals 0

    return-void
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getChildNodesUnoptimized()Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public getDisabled()Z
    .locals 1

    const-string v0, "disabled"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getLength()I
    .locals 0

    invoke-virtual {p0}, Lcom/sun/org/apache/html/internal/dom/HTMLSelectElementImpl;->getOptions()Lorg/w3c/dom/html/HTMLCollection;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/html/HTMLCollection;->getLength()I

    move-result p0

    return p0
.end method

.method public getMultiple()Z
    .locals 1

    const-string v0, "multiple"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOptions()Lorg/w3c/dom/html/HTMLCollection;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/html/internal/dom/HTMLSelectElementImpl;->_options:Lorg/w3c/dom/html/HTMLCollection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/html/internal/dom/HTMLCollectionImpl;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/html/internal/dom/HTMLCollectionImpl;-><init>(Lorg/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, Lcom/sun/org/apache/html/internal/dom/HTMLSelectElementImpl;->_options:Lorg/w3c/dom/html/HTMLCollection;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/html/internal/dom/HTMLSelectElementImpl;->_options:Lorg/w3c/dom/html/HTMLCollection;

    return-object p0
.end method

.method public getSelectedIndex()I
    .locals 2

    const-string v0, "OPTION"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-interface {p0, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/html/HTMLOptionElement;

    invoke-interface {v1}, Lorg/w3c/dom/html/HTMLOptionElement;->getSelected()Z

    move-result v1

    if-eqz v1, :cond_0

    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getSize()I
    .locals 1

    const-string v0, "size"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getTabIndex()I
    .locals 1

    const-string v0, "tabindex"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    const-string v0, "value"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public remove(I)V
    .locals 1

    const-string v0, "OPTION"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object p1

    invoke-interface {p1, p0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    :cond_0
    return-void
.end method

.method public setDisabled(Z)V
    .locals 1

    const-string v0, "disabled"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setMultiple(Z)V
    .locals 1

    const-string v0, "multiple"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSelectedIndex(I)V
    .locals 4

    const-string v0, "OPTION"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lcom/sun/org/apache/html/internal/dom/HTMLOptionElementImpl;

    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    goto :goto_1

    :cond_0
    move v3, v0

    :goto_1
    invoke-virtual {v2, v3}, Lcom/sun/org/apache/html/internal/dom/HTMLOptionElementImpl;->setSelected(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setSize(I)V
    .locals 1

    const-string v0, "size"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTabIndex(I)V
    .locals 1

    const-string v0, "tabindex"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 1

    const-string v0, "value"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
