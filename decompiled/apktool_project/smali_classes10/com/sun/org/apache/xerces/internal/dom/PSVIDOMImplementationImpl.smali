.class public Lcom/sun/org/apache/xerces/internal/dom/PSVIDOMImplementationImpl;
.super Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;
.source "SourceFile"


# static fields
.field static singleton:Lcom/sun/org/apache/xerces/internal/dom/PSVIDOMImplementationImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/PSVIDOMImplementationImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/dom/PSVIDOMImplementationImpl;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/dom/PSVIDOMImplementationImpl;->singleton:Lcom/sun/org/apache/xerces/internal/dom/PSVIDOMImplementationImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;-><init>()V

    return-void
.end method

.method public static getDOMImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xerces/internal/dom/PSVIDOMImplementationImpl;->singleton:Lcom/sun/org/apache/xerces/internal/dom/PSVIDOMImplementationImpl;

    return-object v0
.end method


# virtual methods
.method public createDocument(Ljava/lang/String;Ljava/lang/String;Lorg/w3c/dom/DocumentType;)Lorg/w3c/dom/Document;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation

    if-eqz p3, :cond_1

    invoke-interface {p3}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lorg/w3c/dom/DOMException;

    const-string p1, "WRONG_DOCUMENT_ERR"

    const/4 p2, 0x0

    const-string p3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-static {p3, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x4

    invoke-direct {p0, p2, p1}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/PSVIDocumentImpl;

    invoke-direct {p0, p3}, Lcom/sun/org/apache/xerces/internal/dom/PSVIDocumentImpl;-><init>(Lorg/w3c/dom/DocumentType;)V

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "psvi"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
