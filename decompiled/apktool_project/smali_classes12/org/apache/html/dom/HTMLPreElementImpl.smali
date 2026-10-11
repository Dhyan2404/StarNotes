.class public Lorg/apache/html/dom/HTMLPreElementImpl;
.super Lorg/apache/html/dom/HTMLElementImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/html/HTMLPreElement;


# static fields
.field private static final serialVersionUID:J = -0x3a38ea770da00cacL


# direct methods
.method public constructor <init>(Lorg/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/html/dom/HTMLElementImpl;-><init>(Lorg/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getWidth()I
    .locals 1

    const-string v0, "width"

    invoke-virtual {p0, v0}, Lorg/apache/html/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/html/dom/HTMLElementImpl;->getInteger(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public setWidth(I)V
    .locals 1

    const-string v0, "width"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
