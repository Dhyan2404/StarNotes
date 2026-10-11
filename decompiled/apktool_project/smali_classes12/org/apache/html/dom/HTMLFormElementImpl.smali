.class public Lorg/apache/html/dom/HTMLFormElementImpl;
.super Lorg/apache/html/dom/HTMLElementImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/html/HTMLFormElement;


# static fields
.field private static final serialVersionUID:J = -0x65a6bcfac23fbc5aL


# instance fields
.field private _elements:Lorg/apache/html/dom/HTMLCollectionImpl;


# direct methods
.method public constructor <init>(Lorg/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/html/dom/HTMLElementImpl;-><init>(Lorg/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cloneNode(Z)Lorg/w3c/dom/Node;
    .locals 0

    invoke-super {p0, p1}, Lorg/apache/xerces/dom/ElementImpl;->cloneNode(Z)Lorg/w3c/dom/Node;

    move-result-object p0

    check-cast p0, Lorg/apache/html/dom/HTMLFormElementImpl;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/html/dom/HTMLFormElementImpl;->_elements:Lorg/apache/html/dom/HTMLCollectionImpl;

    return-object p0
.end method

.method public getAcceptCharset()Ljava/lang/String;
    .locals 1

    const-string v0, "accept-charset"

    invoke-virtual {p0, v0}, Lorg/apache/html/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAction()Ljava/lang/String;
    .locals 1

    const-string v0, "action"

    invoke-virtual {p0, v0}, Lorg/apache/html/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getChildNodes()Lorg/w3c/dom/NodeList;
    .locals 0

    invoke-virtual {p0}, Lorg/apache/xerces/dom/ParentNode;->getChildNodesUnoptimized()Lorg/w3c/dom/NodeList;

    move-result-object p0

    return-object p0
.end method

.method public getElements()Lorg/w3c/dom/html/HTMLCollection;
    .locals 2

    iget-object v0, p0, Lorg/apache/html/dom/HTMLFormElementImpl;->_elements:Lorg/apache/html/dom/HTMLCollectionImpl;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/html/dom/HTMLCollectionImpl;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lorg/apache/html/dom/HTMLCollectionImpl;-><init>(Lorg/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, Lorg/apache/html/dom/HTMLFormElementImpl;->_elements:Lorg/apache/html/dom/HTMLCollectionImpl;

    :cond_0
    iget-object p0, p0, Lorg/apache/html/dom/HTMLFormElementImpl;->_elements:Lorg/apache/html/dom/HTMLCollectionImpl;

    return-object p0
.end method

.method public getEnctype()Ljava/lang/String;
    .locals 1

    const-string v0, "enctype"

    invoke-virtual {p0, v0}, Lorg/apache/html/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLength()I
    .locals 0

    invoke-virtual {p0}, Lorg/apache/html/dom/HTMLFormElementImpl;->getElements()Lorg/w3c/dom/html/HTMLCollection;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/html/HTMLCollection;->getLength()I

    move-result p0

    return p0
.end method

.method public getMethod()Ljava/lang/String;
    .locals 1

    const-string v0, "method"

    invoke-virtual {p0, v0}, Lorg/apache/html/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/html/dom/HTMLElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/apache/html/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getTarget()Ljava/lang/String;
    .locals 1

    const-string v0, "target"

    invoke-virtual {p0, v0}, Lorg/apache/html/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public reset()V
    .locals 0

    return-void
.end method

.method public setAcceptCharset(Ljava/lang/String;)V
    .locals 1

    const-string v0, "accept-charset"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 1

    const-string v0, "action"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setEnctype(Ljava/lang/String;)V
    .locals 1

    const-string v0, "enctype"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMethod(Ljava/lang/String;)V
    .locals 1

    const-string v0, "method"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setTarget(Ljava/lang/String;)V
    .locals 1

    const-string v0, "target"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public submit()V
    .locals 0

    return-void
.end method
