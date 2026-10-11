.class public Lcom/sun/org/apache/html/internal/dom/HTMLFrameElementImpl;
.super Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/html/HTMLFrameElement;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/html/internal/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;-><init>(Lcom/sun/org/apache/html/internal/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getContentDocument()Lorg/w3c/dom/Document;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFrameBorder()Ljava/lang/String;
    .locals 1

    const-string v0, "frameborder"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getLongDesc()Ljava/lang/String;
    .locals 1

    const-string v0, "longdesc"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMarginHeight()Ljava/lang/String;
    .locals 1

    const-string v0, "marginheight"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getMarginWidth()Ljava/lang/String;
    .locals 1

    const-string v0, "marginwidth"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNoResize()Z
    .locals 1

    const-string v0, "noresize"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public getScrolling()Ljava/lang/String;
    .locals 1

    const-string v0, "scrolling"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

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

.method public setFrameBorder(Ljava/lang/String;)V
    .locals 1

    const-string v0, "frameborder"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setLongDesc(Ljava/lang/String;)V
    .locals 1

    const-string v0, "longdesc"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMarginHeight(Ljava/lang/String;)V
    .locals 1

    const-string v0, "marginheight"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setMarginWidth(Ljava/lang/String;)V
    .locals 1

    const-string v0, "marginwidth"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNoResize(Z)V
    .locals 1

    const-string v0, "noresize"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method

.method public setScrolling(Ljava/lang/String;)V
    .locals 1

    const-string v0, "scrolling"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1

    const-string v0, "src"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
