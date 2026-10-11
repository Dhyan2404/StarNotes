.class final Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHelper;


# static fields
.field private static final ENTITY_RESOLVER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/entity-resolver"

.field private static final ERROR_HANDLER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-handler"

.field private static final ERROR_REPORTER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/error-reporter"

.field private static final PARSER_SETTINGS:Ljava/lang/String; = "http://apache.org/xml/features/internal/parser-settings"

.field private static final SCHEMA_VALIDATOR:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validator/schema"

.field private static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field private static final VALIDATION_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/internal/validation-manager"


# instance fields
.field private fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

.field private fConfiguration:Ljava/lang/ref/SoftReference;

.field private fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

.field private handler:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;


# direct methods
.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/SoftReference;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;->fConfiguration:Ljava/lang/ref/SoftReference;

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;->handler:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v0, "http://apache.org/xml/properties/internal/validator/schema"

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    return-void
.end method

.method private initialize()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;
    .locals 4

    new-instance v0, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;-><init>()V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v2, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v2, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v2, "http://apache.org/xml/properties/internal/error-reporter"

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v3, Lcom/sun/org/apache/xerces/internal/impl/msg/XMLMessageFormatter;

    invoke-direct {v3}, Lcom/sun/org/apache/xerces/internal/impl/msg/XMLMessageFormatter;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    const-string v2, "http://www.w3.org/TR/1999/REC-xml-names-19990114"

    invoke-virtual {v1, v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/XMLErrorReporter;->putMessageFormatter(Ljava/lang/String;Lcom/sun/org/apache/xerces/internal/util/MessageFormatter;)V

    :cond_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v2, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v2, "http://apache.org/xml/properties/internal/validation-manager"

    invoke-virtual {v1, v2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->setDTDHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDHandler;)V

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/XML11Configuration;->setDTDContentModelHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDTDContentModelHandler;)V

    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;->fConfiguration:Ljava/lang/ref/SoftReference;

    return-object v0
.end method


# virtual methods
.method public validate(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_1

    instance-of v0, p2, Ljavax/xml/transform/stream/StreamResult;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "SourceResultMismatch"

    invoke-static {v0, p2, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    check-cast p1, Ljavax/xml/transform/stream/StreamSource;

    if-eqz p2, :cond_2

    :try_start_0
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    check-cast v0, Ljavax/xml/transform/sax/SAXTransformerFactory;

    invoke-virtual {v0}, Ljavax/xml/transform/sax/SAXTransformerFactory;->newTransformerHandler()Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;

    iget-object v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;-><init>(Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;->handler:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v0, p2}, Ljavax/xml/transform/sax/TransformerHandler;->setResult(Ljavax/xml/transform/Result;)V

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerFactoryConfigurationError;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerFactoryConfigurationError;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_2
    :goto_1
    new-instance p2, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;->fConfiguration:Ljava/lang/ref/SoftReference;

    invoke-virtual {p1}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;->initialize()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    move-result-object p1

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v1, "http://apache.org/xml/features/internal/parser-settings"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;->fComponentManager:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaValidatorComponentManager;->reset()V

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;->fSchemaValidator:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/StreamValidatorHelper;->handler:Lcom/sun/org/apache/xerces/internal/jaxp/validation/ValidatorHandlerImpl;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaValidator;->setDocumentHandler(Lcom/sun/org/apache/xerces/internal/xni/XMLDocumentHandler;)V

    :try_start_1
    invoke-interface {p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->parse(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/Util;->toSAXException(Lcom/sun/org/apache/xerces/internal/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object p0

    throw p0

    :catch_2
    move-exception p0

    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/Util;->toSAXParseException(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;)Lorg/xml/sax/SAXParseException;

    move-result-object p0

    throw p0
.end method
