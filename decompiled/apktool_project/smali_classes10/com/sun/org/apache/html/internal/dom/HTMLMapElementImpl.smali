.class public Lcom/sun/org/apache/html/internal/dom/HTMLMapElementImpl;
.super Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/html/HTMLMapElement;


# instance fields
.field private _areas:Lorg/w3c/dom/html/HTMLCollection;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/html/internal/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;-><init>(Lcom/sun/org/apache/html/internal/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAreas()Lorg/w3c/dom/html/HTMLCollection;
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/html/internal/dom/HTMLMapElementImpl;->_areas:Lorg/w3c/dom/html/HTMLCollection;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/html/internal/dom/HTMLCollectionImpl;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/html/internal/dom/HTMLCollectionImpl;-><init>(Lorg/w3c/dom/html/HTMLElement;S)V

    iput-object v0, p0, Lcom/sun/org/apache/html/internal/dom/HTMLMapElementImpl;->_areas:Lorg/w3c/dom/html/HTMLCollection;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/html/internal/dom/HTMLMapElementImpl;->_areas:Lorg/w3c/dom/html/HTMLCollection;

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "name"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
