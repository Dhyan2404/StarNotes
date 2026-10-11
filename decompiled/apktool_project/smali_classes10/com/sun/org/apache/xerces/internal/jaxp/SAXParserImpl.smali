.class public Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;
.super Ljavax/xml/parsers/SAXParser;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/jaxp/JAXPConstants;
.implements Lcom/sun/org/apache/xerces/internal/xs/PSVIProvider;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;
    }
.end annotation


# static fields
.field private static final NAMESPACES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespaces"

.field private static final NAMESPACE_PREFIXES_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/namespace-prefixes"

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final VALIDATION_FEATURE:Ljava/lang/String; = "http://xml.org/sax/features/validation"

.field private static final XINCLUDE_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/xinclude"

.field private static final XMLSCHEMA_VALIDATION_FEATURE:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema"


# instance fields
.field private final fInitEntityResolver:Lorg/xml/sax/EntityResolver;

.field private final fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private fSchemaValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

.field private fSchemaValidator:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

.field private fSchemaValidatorComponentManager:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;

.field private final grammar:Ljavax/xml/validation/Schema;

.field private schemaLanguage:Ljava/lang/String;

.field private xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;Ljava/util/Hashtable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;Ljava/util/Hashtable;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;Ljava/util/Hashtable;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljavax/xml/parsers/SAXParser;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->schemaLanguage:Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-direct {v0, p0}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    .line 5
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->isNamespaceAware()Z

    move-result v1

    const-string v2, "http://xml.org/sax/features/namespaces"

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature0(Ljava/lang/String;Z)V

    .line 6
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->isNamespaceAware()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "http://xml.org/sax/features/namespace-prefixes"

    invoke-virtual {v0, v3, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature0(Ljava/lang/String;Z)V

    .line 7
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->isXIncludeAware()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string v1, "http://apache.org/xml/features/xinclude"

    invoke-virtual {v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature0(Ljava/lang/String;Z)V

    :cond_0
    if-eqz p3, :cond_1

    .line 9
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;-><init>()V

    const-string v1, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p3, v1, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;->setProperty0(Ljava/lang/String;Ljava/lang/Object;)V

    .line 10
    :cond_1
    invoke-direct {p0, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->setFeatures(Ljava/util/Hashtable;)V

    .line 11
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->isValidating()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 12
    new-instance p2, Lcom/sun/org/apache/xerces/internal/jaxp/DefaultValidationErrorHandler;

    invoke-direct {p2}, Lcom/sun/org/apache/xerces/internal/jaxp/DefaultValidationErrorHandler;-><init>()V

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 13
    iget-object p3, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {p3, p2}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    goto :goto_0

    .line 14
    :cond_2
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object p2

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    .line 15
    :goto_0
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string p3, "http://xml.org/sax/features/validation"

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->isValidating()Z

    move-result v0

    invoke-virtual {p2, p3, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature0(Ljava/lang/String;Z)V

    .line 16
    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserFactoryImpl;->getSchema()Ljavax/xml/validation/Schema;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->grammar:Ljavax/xml/validation/Schema;

    if-eqz p1, :cond_4

    .line 17
    iget-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {p2}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;->getXMLParserConfiguration()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    move-result-object p2

    .line 18
    instance-of p3, p1, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XSGrammarPoolContainer;

    if-eqz p3, :cond_3

    .line 19
    new-instance p3, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-direct {p3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;-><init>()V

    .line 20
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->fSchemaValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    .line 21
    new-instance v1, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/UnparsedEntityHandler;-><init>(Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;)V

    .line 22
    invoke-interface {p2, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V

    .line 23
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;->setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V

    .line 24
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractXMLDocumentParser;->setDTDSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDTDSource;)V

    .line 25
    new-instance v0, Lcom/sun/org/apache/xerces/internal/jaxp/SchemaValidatorConfiguration;

    check-cast p1, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XSGrammarPoolContainer;

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->fSchemaValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    invoke-direct {v0, p2, p1, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/SchemaValidatorConfiguration;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;Lcom/sun/org/apache/xerces/internal/jaxp/validation/XSGrammarPoolContainer;Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->fSchemaValidatorComponentManager:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;

    goto :goto_1

    .line 26
    :cond_3
    new-instance p3, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;

    invoke-virtual {p1}, Ljavax/xml/validation/Schema;->newValidatorHandler()Ljavax/xml/validation/ValidatorHandler;

    move-result-object p1

    invoke-direct {p3, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/JAXPValidatorComponent;-><init>(Ljavax/xml/validation/ValidatorHandler;)V

    .line 27
    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->fSchemaValidatorComponentManager:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;

    .line 28
    :goto_1
    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->getRecognizedFeatures()[Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->addRecognizedFeatures([Ljava/lang/String;)V

    .line 29
    invoke-interface {p3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;->getRecognizedProperties()[Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    .line 30
    invoke-interface {p2, p3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    .line 31
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-interface {p3, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    .line 32
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {p1, p3}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractXMLDocumentParser;->setDocumentSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLDocumentSource;)V

    .line 33
    iput-object p3, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    .line 34
    :cond_4
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->fInitEntityResolver:Lorg/xml/sax/EntityResolver;

    return-void
.end method

.method public static synthetic access$000(Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponent;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;)Ljavax/xml/validation/Schema;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->grammar:Ljavax/xml/validation/Schema;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->schemaLanguage:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->schemaLanguage:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic access$300(Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;)Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->fSchemaValidationManager:Lcom/sun/org/apache/xerces/internal/impl/validation/ValidationManager;

    return-object p0
.end method

.method public static synthetic access$400(Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->fSchemaValidatorComponentManager:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLComponentManager;

    return-object p0
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

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v3, v1, v2}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;->setFeature0(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getAttributePSVI(I)Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xerces/internal/xs/PSVIProvider;->getAttributePSVI(I)Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;

    move-result-object p0

    return-object p0
.end method

.method public getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xs/PSVIProvider;->getAttributePSVIByName(Ljava/lang/String;Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/xs/AttributePSVI;

    move-result-object p0

    return-object p0
.end method

.method public getElementPSVI()Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xs/PSVIProvider;->getElementPSVI()Lcom/sun/org/apache/xerces/internal/xs/ElementPSVI;

    move-result-object p0

    return-object p0
.end method

.method public getParser()Lorg/xml/sax/Parser;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    return-object p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSchema()Ljavax/xml/validation/Schema;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->grammar:Ljavax/xml/validation/Schema;

    return-object p0
.end method

.method public getXMLReader()Lorg/xml/sax/XMLReader;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    return-object p0
.end method

.method public isNamespaceAware()Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string v0, "http://xml.org/sax/features/namespaces"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;->getFeature(Ljava/lang/String;)Z

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
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string v0, "http://xml.org/sax/features/validation"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;->getFeature(Ljava/lang/String;)Z

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
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    const-string v0, "http://apache.org/xml/features/xinclude"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;->getFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public reset()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;->restoreInitState()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->fInitErrorHandler:Lorg/xml/sax/ErrorHandler;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->fInitEntityResolver:Lorg/xml/sax/EntityResolver;

    if-eq v0, v1, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {p0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractSAXParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_1
    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl;->xmlReader:Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/jaxp/SAXParserImpl$JAXPSAXParser;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
