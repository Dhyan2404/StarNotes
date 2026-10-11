.class public Lcom/sun/org/apache/html/internal/dom/HTMLMenuElementImpl;
.super Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/html/HTMLMenuElement;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/html/internal/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;-><init>(Lcom/sun/org/apache/html/internal/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCompact()Z
    .locals 1

    const-string v0, "compact"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setCompact(Z)V
    .locals 1

    const-string v0, "compact"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/html/internal/dom/HTMLElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method
