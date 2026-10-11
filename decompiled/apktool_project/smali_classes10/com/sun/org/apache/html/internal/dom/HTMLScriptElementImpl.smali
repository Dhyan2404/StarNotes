.class public Lcom/sun/org/apache/html/internal/dom/HTMLScriptElementImpl;
.super Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/html/HTMLScriptElement;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/html/internal/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;-><init>(Lcom/sun/org/apache/html/internal/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/lang/String;
    .locals 1

    const-string v0, "charset"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDefer()Z
    .locals 1

    const-string v0, "defer"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getEvent()Ljava/lang/String;
    .locals 1

    const-string v0, "event"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHtmlFor()Ljava/lang/String;
    .locals 1

    const-string v0, "for"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSrc()Ljava/lang/String;
    .locals 1

    const-string v0, "src"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getText()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p0

    const-string v0, ""

    :goto_0
    if-eqz p0, :cond_1

    instance-of v1, p0, Lorg/w3c/dom/Text;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v0, p0

    check-cast v0, Lorg/w3c/dom/Text;

    invoke-interface {v0}, Lorg/w3c/dom/CharacterData;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "type"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setCharset(Ljava/lang/String;)V
    .locals 1

    const-string v0, "charset"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setDefer(Z)V
    .locals 1

    const-string v0, "defer"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setEvent(Ljava/lang/String;)V
    .locals 1

    const-string v0, "event"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setHtmlFor(Ljava/lang/String;)V
    .locals 1

    const-string v0, "for"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1

    const-string v0, "src"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 2

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-object v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/ParentNode;->insertBefore(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .locals 1

    const-string v0, "type"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
