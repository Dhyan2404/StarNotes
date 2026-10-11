.class public Lcom/sun/org/apache/xerces/internal/dom/DOMXSImplementationSourceImpl;
.super Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationSourceImpl;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationSourceImpl;-><init>()V

    return-void
.end method


# virtual methods
.method public getDOMImplementation(Ljava/lang/String;)Lorg/w3c/dom/DOMImplementation;
    .locals 2

    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationSourceImpl;->getDOMImplementation(Ljava/lang/String;)Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/dom/PSVIDOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationSourceImpl;->testImpl(Lorg/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationSourceImpl;->testImpl(Lorg/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object v0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDOMImplementationList(Ljava/lang/String;)Lorg/w3c/dom/DOMImplementationList;
    .locals 4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-super {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationSourceImpl;->getDOMImplementationList(Ljava/lang/String;)Lorg/w3c/dom/DOMImplementationList;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/DOMImplementationList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-interface {v1, v2}, Lorg/w3c/dom/DOMImplementationList;->item(I)Lorg/w3c/dom/DOMImplementation;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/dom/PSVIDOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationSourceImpl;->testImpl(Lorg/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/impl/xs/XSImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationSourceImpl;->testImpl(Lorg/w3c/dom/DOMImplementation;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_2
    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationListImpl;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationListImpl;-><init>(Ljava/util/Vector;)V

    return-object p0
.end method
