.class public Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ContentHandler;
.implements Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;


# instance fields
.field private fCore:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

.field private locator:Lorg/xml/sax/Locator;

.field private final nsContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

.field private final symbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field private final xa:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->nsContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->symbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->xa:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->fCore:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    return-void
.end method

.method private createAttributes(Lorg/xml/sax/Attributes;)Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->xa:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->removeAllAttributes()V

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->xa:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;->addAttribute(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->xa:Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    return-object p0
.end method

.method private createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xni/QName;
    .locals 3

    const/16 v0, 0x3a

    invoke-virtual {p3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    const-string p1, ""

    if-gez v0, :cond_0

    move-object p2, p3

    goto :goto_0

    :cond_0
    add-int/lit8 p2, v0, 0x1

    invoke-virtual {p3, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    :cond_1
    :goto_0
    const/4 v1, 0x0

    if-gez v0, :cond_2

    move-object v0, v1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    invoke-virtual {p3, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    move-object p1, v1

    :cond_3
    new-instance v1, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p3}, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p2, p3, p0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private createXMLString(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xni/XMLString;
    .locals 2

    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;-><init>([CII)V

    return-object p0
.end method

.method private symbolize(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->symbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->fCore:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;-><init>([CII)V

    const/4 p1, 0x0

    invoke-interface {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/jaxp/validation/WrappedSAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/WrappedSAXException;->exception:Lorg/xml/sax/SAXException;

    throw p0
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->fCore:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endDocument(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/jaxp/validation/WrappedSAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/WrappedSAXException;->exception:Lorg/xml/sax/SAXException;

    throw p0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->fCore:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object p0

    const/4 p1, 0x0

    invoke-interface {v0, p0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/jaxp/validation/WrappedSAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/WrappedSAXException;->exception:Lorg/xml/sax/SAXException;

    throw p0
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->nsContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->popContext()V

    return-void
.end method

.method public getDocumentHandler()Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->fCore:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    return-object p0
.end method

.method public ignorableWhitespace([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->fCore:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-direct {v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;-><init>([CII)V

    const/4 p1, 0x0

    invoke-interface {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->ignorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/jaxp/validation/WrappedSAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/WrappedSAXException;->exception:Lorg/xml/sax/SAXException;

    throw p0
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->fCore:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->symbolize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->createXMLString(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {v0, p1, p0, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/jaxp/validation/WrappedSAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/WrappedSAXException;->exception:Lorg/xml/sax/SAXException;

    throw p0
.end method

.method public setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->fCore:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->locator:Lorg/xml/sax/Locator;

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public startDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->nsContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->reset()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->locator:Lorg/xml/sax/Locator;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;

    const/4 v2, -0x1

    invoke-direct {v0, v1, v1, v2, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/util/SimpleLocator;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/sun/org/apache/xerces/internal/util/LocatorWrapper;

    invoke-direct {v2, v0}, Lcom/sun/org/apache/xerces/internal/util/LocatorWrapper;-><init>(Lorg/xml/sax/Locator;)V

    move-object v0, v2

    :goto_0
    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->fCore:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->nsContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-interface {v2, v0, v1, p0, v1}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startDocument(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/jaxp/validation/WrappedSAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/WrappedSAXException;->exception:Lorg/xml/sax/SAXException;

    throw p0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->fCore:Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;

    invoke-direct {p0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->createQName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xni/QName;

    move-result-object p1

    invoke-direct {p0, p4}, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->createAttributes(Lorg/xml/sax/Attributes;)Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {v0, p1, p0, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/jaxp/validation/WrappedSAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/WrappedSAXException;->exception:Lorg/xml/sax/SAXException;

    throw p0
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->nsContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->pushContext()V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/util/SAX2XNI;->nsContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
