.class public Lorg/apache/html/dom/HTMLDListElementImpl;
.super Lorg/apache/html/dom/HTMLElementImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/html/HTMLDListElement;


# static fields
.field private static final serialVersionUID:J = -0x1d8f4cd8b7fdb60cL


# direct methods
.method public constructor <init>(Lorg/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/html/dom/HTMLElementImpl;-><init>(Lorg/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getCompact()Z
    .locals 1

    const-string v0, "compact"

    invoke-virtual {p0, v0}, Lorg/apache/html/dom/HTMLElementImpl;->getBinary(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public setCompact(Z)V
    .locals 1

    const-string v0, "compact"

    invoke-virtual {p0, v0, p1}, Lorg/apache/html/dom/HTMLElementImpl;->setAttribute(Ljava/lang/String;Z)V

    return-void
.end method
