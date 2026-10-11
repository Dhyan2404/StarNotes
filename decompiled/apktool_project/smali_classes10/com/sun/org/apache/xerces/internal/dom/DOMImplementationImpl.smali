.class public Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationImpl;
.super Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;
.source "SourceFile"

# interfaces
.implements Lorg/w3c/dom/DOMImplementation;


# static fields
.field static singleton:Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationImpl;-><init>()V

    sput-object v0, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationImpl;->singleton:Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;-><init>()V

    return-void
.end method

.method public static getDOMImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 1

    sget-object v0, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationImpl;->singleton:Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationImpl;

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

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    if-nez p3, :cond_0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;-><init>()V

    return-object p0

    :cond_0
    if-eqz p3, :cond_2

    invoke-interface {p3}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const-string p0, "WRONG_DOCUMENT_ERR"

    const/4 p1, 0x0

    const-string p2, "http://www.w3.org/dom/DOMTR"

    invoke-static {p2, p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lorg/w3c/dom/DOMException;

    const/4 p2, 0x4

    invoke-direct {p1, p2, p0}, Lorg/w3c/dom/DOMException;-><init>(SLjava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-direct {p0, p3}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;-><init>(Lorg/w3c/dom/DocumentType;)V

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDocumentImpl;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/dom/NodeImpl;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    return-object p0
.end method

.method public hasFeature(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    invoke-super {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/dom/CoreDOMImplementationImpl;->hasFeature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p0

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    const-string v2, "+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    const-string v2, "Events"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    const-string v3, "2.0"

    if-eqz v2, :cond_3

    if-nez v1, :cond_7

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    :cond_3
    const-string v2, "MutationEvents"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    if-nez v1, :cond_7

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_4
    const-string v4, "Traversal"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    if-nez v1, :cond_7

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_5
    const-string v4, "Range"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    if-nez v1, :cond_7

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_6
    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_8

    if-nez v1, :cond_7

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    move p0, v0

    :cond_8
    return p0
.end method
