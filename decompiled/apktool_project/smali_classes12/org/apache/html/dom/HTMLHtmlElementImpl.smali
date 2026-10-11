.class public Lorg/apache/html/dom/HTMLHtmlElementImpl;
.super Lorg/apache/html/dom/HTMLElementImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/html/HTMLHtmlElement;


# static fields
.field private static final serialVersionUID:J = -0x3e4ebd77fa8316e6L


# direct methods
.method public constructor <init>(Lorg/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lorg/apache/html/dom/HTMLElementImpl;-><init>(Lorg/apache/html/dom/HTMLDocumentImpl;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .locals 1

    const-string v0, "version"

    invoke-virtual {p0, v0}, Lorg/apache/html/dom/HTMLElementImpl;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/html/dom/HTMLElementImpl;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 1

    const-string v0, "version"

    invoke-virtual {p0, v0, p1}, Lorg/apache/xerces/dom/ElementImpl;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
