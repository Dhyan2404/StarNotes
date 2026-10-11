.class public Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;
.super Ljavax/xml/parsers/DocumentBuilder;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/jaxp/JAXPConstants;


# static fields
.field private static final CREATE_CDATA_NODES_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/create-cdata-nodes"

.field private static final CREATE_ENTITY_REF_NODES_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/dom/create-entity-ref-nodes"

.field private static final INCLUDE_COMMENTS_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/include-comments"

.field private static final INCLUDE_IGNORABLE_WHITESPACE:Ljava/lang/String; = "http://apache.org/xml/features/dom/include-ignorable-whitespace"

.field private static final NAMESPACES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final VALIDATION_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field private static final XINCLUDE_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude"

.field private static final XMLSCHEMA_VALIDATION_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"


# instance fields
.field private domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

.field private final fInitEntityResolver:Lorg/xml/sax/EntityResolver;

.field private final fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private fSchemaValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

.field private fSchemaValidator:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

.field private fSchemaValidatorComponentManager:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;

.field private final grammar:Ljavax/xml/validation/Schema;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderFactoryImpl;Ljava/util/Hashtable;Ljava/util/Hashtable;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljavax/xml/parsers/DocumentBuilder;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    .line 4
    new-instance v0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    .line 5
    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->isValidating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lcom/sun/org/apache/xerces/internal/jaxp/DefaultValidationErrorHandler;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/jaxp/DefaultValidationErrorHandler;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 7
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 9
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    const-string v1, "http://xml.org/sax/features/validation"

    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->isValidating()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    .line 10
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    const-string v1, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->isNamespaceAware()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    .line 11
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->isIgnoringElementContentWhitespace()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "http://apache.org/xml/features/dom/include-ignorable-whitespace"

    invoke-virtual {v0, v3, v1}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    .line 12
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->isExpandEntityReferences()Z

    move-result v1

    xor-int/2addr v1, v2

    const-string v3, "http://apache.org/xml/features/dom/create-entity-ref-nodes"

    invoke-virtual {v0, v3, v1}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    .line 13
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->isIgnoringComments()Z

    move-result v1

    xor-int/2addr v1, v2

    const-string v3, "http://apache.org/xml/features/include-comments"

    invoke-virtual {v0, v3, v1}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    .line 14
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-virtual {p1}, Ljavax/xml/parsers/DocumentBuilderFactory;->isCoalescing()Z

    move-result v1

    xor-int/2addr v1, v2

    const-string v3, "http://apache.org/xml/features/create-cdata-nodes"

    invoke-virtual {v0, v3, v1}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    .line 15
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderFactoryImpl;->isXIncludeAware()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 16
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    const-string v1, "http://apache.org/xml/features/xinclude"

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    :cond_1
    if-eqz p4, :cond_2

    .line 17
    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;-><init>()V

    const-string v1, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p4, v1, v0}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 18
    :cond_2
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderFactoryImpl;->getSchema()Ljavax/xml/validation/Schema;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->grammar:Ljavax/xml/validation/Schema;

    if-eqz p1, :cond_4

    .line 19
    iget-object p4, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-virtual {p4}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->getXMLParserConfiguration()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    move-result-object p4

    .line 20
    instance-of v0, p1, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XSGrammarPoolContainer;

    if-eqz v0, :cond_3

    .line 21
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;-><init>()V

    .line 22
    new-instance v1, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->fSchemaValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    .line 23
    new-instance v2, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;

    invoke-direct {v2, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;-><init>(Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;)V

    .line 24
    invoke-interface {p4, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V

    .line 25
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-interface {v2, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;->setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V

    .line 26
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractXMLDocumentParser;->setDTDSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;)V

    .line 27
    new-instance v1, Lcom/sun/org/apache/xerces/internal/jaxp/SchemaValidatorConfiguration;

    check-cast p1, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XSGrammarPoolContainer;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->fSchemaValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    invoke-direct {v1, p4, p1, v2}, Lcom/sun/org/apache/xerces/internal/jaxp/SchemaValidatorConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;Lcom/sun/org/apache/xerces/internal/jaxp/validation/XSGrammarPoolContainer;Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->fSchemaValidatorComponentManager:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;

    goto :goto_1

    .line 28
    :cond_3
    new-instance v0, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;

    invoke-virtual {p1}, Ljavax/xml/validation/Schema;->newValidatorHandler()Ljavax/xml/validation/ValidatorHandler;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;-><init>(Ljavax/xml/validation/ValidatorHandler;)V

    .line 29
    iput-object p4, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->fSchemaValidatorComponentManager:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;

    .line 30
    :goto_1
    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 31
    invoke-interface {v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object p1

    invoke-interface {p4, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    .line 32
    invoke-interface {p4, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    .line 33
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    .line 34
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractXMLDocumentParser;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    .line 35
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    .line 36
    :cond_4
    invoke-direct {p0, p3}, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->setFeatures(Ljava/util/Hashtable;)V

    .line 37
    invoke-direct {p0, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->setDocumentBuilderFactoryAttributes(Ljava/util/Hashtable;)V

    .line 38
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->fInitEntityResolver:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method private resetSchemaValidator()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->fSchemaValidatorComponentManager:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;

    invoke-interface {v0, p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->reset(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method private setDocumentBuilderFactoryAttributes(Ljava/util/Hashtable;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;,
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Ljava/lang/Boolean;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v3, v1, v2}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v3, "http://java.sun.com/xml/jaxp/properties/schemaLanguage"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "http://www.w3.org/2001/XMLSchema"

    if-eqz v4, :cond_3

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->isValidating()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    const-string v2, "http://apache.org/xml/features/validation/schema"

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v4}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-virtual {v1, v3, v5}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v4, "http://java.sun.com/xml/jaxp/properties/schemaSource"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->isValidating()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    if-eqz v6, :cond_4

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-virtual {v3, v1, v2}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "jaxp-order-not-supported"

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "http://www.w3.org/dom/DOMTR"

    invoke-static {v1, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-virtual {v3, v1, v2}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_6
    return-void
.end method

.method private setFeatures(Ljava/util/Hashtable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;,
            Lorg/xml/sax/SAXNotRecognizedException;
        }
    .end annotation

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-virtual {v3, v1, v2}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->setFeature(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getDOMImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 0

    invoke-static {}, Lcom/sun/org/apache/xerces/internal/dom/DOMImplementationImpl;->getDOMImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object p0

    return-object p0
.end method

.method public getDOMParser()Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    return-object p0
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->grammar:Ljavax/xml/validation/Schema;

    return-object p0
.end method

.method public isNamespaceAware()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isValidating()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isXIncludeAware()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    const-string v0, "http://apache.org/xml/features/xinclude"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public newDocument()Lorg/w3c/dom/Document;
    .locals 0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/dom/DocumentImpl;-><init>()V

    return-object p0
.end method

.method public parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->fSchemaValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;->reset()V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->resetSchemaValidator()V

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->parse(Lorg/xml/sax/InputSource;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->getDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "jaxp-null-input-source"

    const/4 v0, 0x0

    const-string v1, "http://www.w3.org/dom/DOMTR"

    invoke-static {v1, p1, v0}, Lcom/sun/org/apache/xerces/internal/dom/DOMMessageFormatter;->formatMessage(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->fInitEntityResolver:Lorg/xml/sax/EntityResolver;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_1
    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/DocumentBuilderImpl;->domParser:Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-void
.end method
