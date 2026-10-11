.class final Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/ContentHandler;


# instance fields
.field private final fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field private final fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

.field private final fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

.field private fNamespaceContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

.field private fNamespacePrefixes:Z

.field private fNeedPushNSContext:Z

.field private final fSAXLocatorWrapper:Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;

.field private fSchemaDOMParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

.field private fStringsInternalized:Z

.field private fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

.field private final fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fSAXLocatorWrapper:Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fNamespacePrefixes:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fStringsInternalized:Z

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/QName;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    return-void
.end method

.method private addNamespaceDeclarations(I)V
    .locals 7

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->getDeclaredPrefixAt(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-virtual {v2, v1}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->getURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    sget-object v3, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    sget-object v3, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->PREFIX_XMLNS:Ljava/lang/String;

    move-object v4, v1

    :goto_1
    iget-object v5, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    sget-object v6, Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;->XMLNS_URI:Ljava/lang/String;

    invoke-virtual {v5, v3, v1, v4, v6}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    sget-object v4, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    invoke-virtual {v1, v3, v4, v2}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->addAttribute(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static convertToSAXException(Lcom/sun/org/apache/xerces/internal/xni/XNIException;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of p0, v0, Lorg/xml/sax/SAXException;

    if-eqz p0, :cond_0

    check-cast v0, Lorg/xml/sax/SAXException;

    throw v0

    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p0

    :cond_1
    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static convertToSAXParseException(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of p0, v0, Lorg/xml/sax/SAXException;

    if-eqz p0, :cond_0

    check-cast v0, Lorg/xml/sax/SAXException;

    throw v0

    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p0

    :cond_1
    new-instance v0, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    new-instance v1, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v1
.end method

.method private fillQName(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fStringsInternalized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_3

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz p3, :cond_1

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {p2, p3}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {p3, p4}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    goto :goto_1

    :cond_2
    sget-object p3, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_1
    move-object p4, p3

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_4

    move-object p2, v1

    :cond_4
    if-nez p3, :cond_5

    sget-object p3, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_5
    if-nez p4, :cond_6

    sget-object p4, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_6
    move-object v1, p2

    move-object p2, p3

    :goto_2
    sget-object p3, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    const/16 v0, 0x3a

    invoke-virtual {p4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_8

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    const/4 v3, 0x0

    invoke-virtual {p4, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-ne p2, p3, :cond_7

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_7
    move-object p3, v2

    goto :goto_3

    :cond_8
    if-ne p2, p3, :cond_9

    move-object p2, p4

    :cond_9
    :goto_3
    invoke-virtual {p1, p3, p2, p4, v1}, Lcom/sun/org/apache/xerces/internal/xni/QName;->setValues(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private fillXMLAttributes(Lorg/xml/sax/Attributes;)V
    .locals 6

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->removeAllAttributes()V

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getLocalName(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v2, v3, v4, v5}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fillQName(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getType(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    iget-object v4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fAttributeQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->fCDATASymbol:Ljava/lang/String;

    :goto_1
    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->addAttributeNS(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;->setSpecified(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
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
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->setValues([CII)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->characters(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->convertToSAXException(Lcom/sun/org/apache/xerces/internal/xni/XNIException;)V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->convertToSAXParseException(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V

    :goto_0
    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fSAXLocatorWrapper:Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;->setLocator(Lorg/xml/sax/Locator;)V

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->endDocument(Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->convertToSAXException(Lcom/sun/org/apache/xerces/internal/xni/XNIException;)V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->convertToSAXParseException(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V

    :goto_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fillQName(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->endElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->convertToSAXException(Lcom/sun/org/apache/xerces/internal/xni/XNIException;)V

    goto :goto_0

    :catch_1
    move-exception p1

    invoke-static {p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->convertToSAXParseException(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->popContext()V

    return-void

    :goto_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->popContext()V

    throw p1
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public getDocument()Lorg/w3c/dom/Document;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p0

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
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-virtual {v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->setValues([CII)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->ignorableWhitespace(Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->convertToSAXException(Lcom/sun/org/apache/xerces/internal/xni/XNIException;)V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->convertToSAXParseException(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V

    :goto_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    invoke-virtual {p2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Lcom/sun/org/apache/xerces/internal/xni/XMLString;->setValues([CII)V

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fTempString:Lcom/sun/org/apache/xerces/internal/xni/XMLString;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->processingInstruction(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/XMLString;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->convertToSAXException(Lcom/sun/org/apache/xerces/internal/xni/XNIException;)V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->convertToSAXParseException(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V

    :goto_0
    return-void
.end method

.method public reset(Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;Lcom/sun/org/apache/xerces/internal/util/SymbolTable;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    iput-boolean p3, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fNamespacePrefixes:Z

    iput-boolean p4, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fStringsInternalized:Z

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fSAXLocatorWrapper:Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;->setLocator(Lorg/xml/sax/Locator;)V

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public startDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fNeedPushNSContext:Z

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fSAXLocatorWrapper:Lcom/sun/org/apache/xerces/internal/util/SAXLocatorWrapper;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0, v2}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->startDocument(Lcom/sun/org/apache/xerces/internal/xni/XMLLocator;Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/xni/NamespaceContext;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->convertToSAXException(Lcom/sun/org/apache/xerces/internal/xni/XNIException;)V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->convertToSAXParseException(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V

    :goto_0
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fNeedPushNSContext:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->pushContext()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fNeedPushNSContext:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fillQName(Lcom/sun/org/apache/xerces/internal/xni/QName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p4}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fillXMLAttributes(Lorg/xml/sax/Attributes;)V

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fNamespacePrefixes:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->getDeclaredPrefixCount()I

    move-result p1

    if-lez p1, :cond_1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->addNamespaceDeclarations(I)V

    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fSchemaDOMParser:Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;

    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fElementQName:Lcom/sun/org/apache/xerces/internal/xni/QName;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fAttributes:Lcom/sun/org/apache/xerces/internal/util/XMLAttributesImpl;

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p0, p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/opti/SchemaDOMParser;->startElement(Lcom/sun/org/apache/xerces/internal/xni/QName;Lcom/sun/org/apache/xerces/internal/xni/XMLAttributes;Lcom/sun/org/apache/xerces/internal/xni/Augmentations;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->convertToSAXException(Lcom/sun/org/apache/xerces/internal/xni/XNIException;)V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->convertToSAXParseException(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)V

    :goto_0
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fNeedPushNSContext:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fNeedPushNSContext:Z

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->pushContext()V

    :cond_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fStringsInternalized:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :goto_0
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fSymbolTable:Lcom/sun/org/apache/xerces/internal/util/SymbolTable;

    invoke-virtual {v0, p2}, Lcom/sun/org/apache/xerces/internal/util/SymbolTable;->addSymbol(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    sget-object p1, Lcom/sun/org/apache/xerces/internal/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_3
    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_5

    :cond_4
    move-object p2, v1

    :cond_5
    :goto_1
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/impl/xs/traversers/SchemaContentHandler;->fNamespaceContext:Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/util/NamespaceSupport;->declarePrefix(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
