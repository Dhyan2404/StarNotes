.class public Lorg/apache/html/dom/HTMLMapElementImpl;
.super Lorg/apache/html/dom/HTMLElementImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/html/HTMLMapElement;


# static fields
.field private static final serialVersionUID:J = 0x685f8f6916fc1ac8L


# instance fields
.field private _areas:Lorg/w3c/dom/html/HTMLCollection;


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

    check-cast p0, Lorg/apache/html/dom/HTMLMapElementImpl;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/apache/html/dom/HTMLMapElementImpl;->_areas:Lorg/w3c/dom/html/HTMLCollection;

    return-object p0
.end method

.method public getAreas()Lorg/w3c/dom/html/HTMLCollection;
    .locals 2

    iget-object v0, p0, Lorg/apache/html/dom/HTMLMapElementImpl;->_areas:Lorg/w3c/dom/html/HTMLCollection;

    if-nez v0, :cond_0

    new-instance v0, Lorg/apache/html/dom/HTMLCollectionImpl;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lorg/apache/html/dom/HTMLCollectionImpl;-><init>(Lorg/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, Lorg/apache/html/dom/HTMLMapElementImpl;->_areas:Lorg/w3c/dom/html/HTMLCollection;

    :cond_0
    iget-object p0, p0, Lorg/apache/html/dom/HTMLMapElementImpl;->_areas:Lorg/w3c/dom/html/HTMLCollection;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lorg/apache/html/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
