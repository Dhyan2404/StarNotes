.class public final Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;
.super Ljavax/xml/validation/SchemaFactory;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;,
        Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;
    }
.end annotation


# static fields
.field private static final SCHEMA_FULL_CHECKING:Ljava/lang/String; = "http://apache.org/xml/features/validation/schema-full-checking"

.field private static final SECURITY_MANAGER:Ljava/lang/String; = "http://apache.org/xml/properties/security-manager"

.field private static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field private final fDOMEntityResolverWrapper:Lcom/sun/org/apache/xerces/internal/util/DOMEntityResolverWrapper;

.field private fErrorHandler:Lorg/xml/sax/ErrorHandler;

.field private fErrorHandlerWrapper:Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;

.field private fLSResourceResolver:Lorg/w3c/dom/ls/LSResourceResolver;

.field private fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

.field private fXMLGrammarPoolWrapper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

.field private final fXMLSchemaLoader:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljavax/xml/validation/SchemaFactory;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;

    invoke-static {}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DraconianErrorHandler;->getInstance()Lcom/sun/org/apache/xerces/internal/jaxp/validation/DraconianErrorHandler;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;-><init>(Lorg/xml/sax/ErrorHandler;)V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fErrorHandlerWrapper:Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/DOMEntityResolverWrapper;

    invoke-direct {v1}, Lcom/sun/org/apache/xerces/internal/util/DOMEntityResolverWrapper;-><init>()V

    iput-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fDOMEntityResolverWrapper:Lcom/sun/org/apache/xerces/internal/util/DOMEntityResolverWrapper;

    new-instance v2, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

    invoke-direct {v2}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;-><init>()V

    iput-object v2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fXMLGrammarPoolWrapper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

    const-string v2, "http://apache.org/xml/features/validation/schema-full-checking"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "http://apache.org/xml/properties/internal/grammar-pool"

    iget-object v3, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fXMLGrammarPoolWrapper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

    invoke-virtual {v0, v2, v3}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->setEntityResolver(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;)V

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fErrorHandlerWrapper:Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;

    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->setErrorHandler(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;)V

    return-void
.end method


# virtual methods
.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    return-object p0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->getFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getType()S

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "feature-not-recognized"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/xml/sax/SAXNotSupportedException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "feature-not-supported"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string v0, "FeatureNameNull"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const-string v0, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    return-object p0

    :cond_0
    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "property-not-supported"

    if-nez v0, :cond_2

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getType()S

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "property-not-recognized"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/xml/sax/SAXNotSupportedException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/xml/sax/SAXNotSupportedException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string v0, "ProperyNameNull"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getResourceResolver()Lorg/w3c/dom/ls/LSResourceResolver;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fLSResourceResolver:Lorg/w3c/dom/ls/LSResourceResolver;

    return-object p0
.end method

.method public isSchemaLanguageSupported(Ljava/lang/String;)Z
    .locals 2

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "http://www.w3.org/2001/XMLSchema"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "SchemaLanguageLengthZero"

    invoke-static {v0, v1, p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "SchemaLanguageNull"

    invoke-static {v0, v1, p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public newSchema()Ljavax/xml/validation/Schema;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 38
    new-instance p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/WeakReferenceXMLSchema;

    invoke-direct {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/WeakReferenceXMLSchema;-><init>()V

    return-object p0
.end method

.method public newSchema([Ljavax/xml/transform/Source;)Ljavax/xml/validation/Schema;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fXMLGrammarPoolWrapper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->setGrammarPool(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V

    .line 3
    array-length v1, p1

    new-array v1, v1, [Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    const/4 v2, 0x0

    move v3, v2

    .line 4
    :goto_0
    array-length v4, p1

    const/4 v5, 0x0

    if-ge v3, v4, :cond_5

    .line 5
    aget-object v4, p1, v3

    .line 6
    instance-of v6, v4, Ljavax/xml/transform/stream/StreamSource;

    if-eqz v6, :cond_0

    .line 7
    check-cast v4, Ljavax/xml/transform/stream/StreamSource;

    .line 8
    invoke-virtual {v4}, Ljavax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v6

    .line 9
    invoke-virtual {v4}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v7

    .line 10
    invoke-virtual {v4}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v8

    .line 11
    invoke-virtual {v4}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object v4

    .line 12
    new-instance v9, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-direct {v9, v6, v7, v5}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    aput-object v9, v1, v3

    .line 13
    invoke-virtual {v9, v8}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 14
    aget-object v5, v1, v3

    invoke-virtual {v5, v4}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    goto :goto_1

    .line 15
    :cond_0
    instance-of v6, v4, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v6, :cond_2

    .line 16
    check-cast v4, Ljavax/xml/transform/sax/SAXSource;

    .line 17
    invoke-virtual {v4}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 18
    new-instance v5, Lcom/sun/org/apache/xerces/internal/util/SAXInputSource;

    invoke-virtual {v4}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    invoke-direct {v5, v4, v6}, Lcom/sun/org/apache/xerces/internal/util/SAXInputSource;-><init>(Lorg/xml/sax/XMLReader;Lorg/xml/sax/InputSource;)V

    aput-object v5, v1, v3

    goto :goto_1

    .line 19
    :cond_1
    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string v0, "SAXSourceNullInputSource"

    invoke-static {p1, v0, v5}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 20
    :cond_2
    instance-of v6, v4, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v6, :cond_3

    .line 21
    check-cast v4, Ljavax/xml/transform/dom/DOMSource;

    .line 22
    invoke-virtual {v4}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v5

    .line 23
    invoke-virtual {v4}, Ljavax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object v4

    .line 24
    new-instance v6, Lcom/sun/org/apache/xerces/internal/util/DOMInputSource;

    invoke-direct {v6, v5, v4}, Lcom/sun/org/apache/xerces/internal/util/DOMInputSource;-><init>(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    aput-object v6, v1, v3

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    if-nez v4, :cond_4

    .line 25
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string v0, "SchemaSourceArrayMemberNull"

    invoke-static {p1, v0, v5}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 26
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "SchemaFactorySourceUnrecognized"

    invoke-static {p1, v1, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 27
    :cond_5
    :try_start_0
    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->loadGrammar([Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fXMLGrammarPoolWrapper:Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;

    invoke-virtual {p0, v5}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolWrapper;->setGrammarPool(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V

    .line 29
    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory$XMLGrammarPoolImplExtension;->getGrammarCount()I

    move-result p0

    const/4 p1, 0x1

    if-le p0, p1, :cond_6

    .line 30
    new-instance p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchema;

    new-instance p1, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ReadOnlyGrammarPool;

    invoke-direct {p1, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/ReadOnlyGrammarPool;-><init>(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchema;-><init>(Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V

    return-object p0

    :cond_6
    if-ne p0, p1, :cond_7

    const-string p0, "http://www.w3.org/2001/XMLSchema"

    .line 31
    invoke-virtual {v0, p0}, Lcom/sun/org/apache/xerces/internal/util/XMLGrammarPoolImpl;->retrieveInitialGrammarSet(Ljava/lang/String;)[Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;

    move-result-object p0

    .line 32
    new-instance p1, Lcom/sun/org/apache/xerces/internal/jaxp/validation/SimpleXMLSchema;

    aget-object p0, p0, v2

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/SimpleXMLSchema;-><init>(Lcom/sun/org/apache/xerces/internal/xni/grammars/Grammar;)V

    return-object p1

    .line 33
    :cond_7
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/EmptyXMLSchema;->getInstance()Lcom/sun/org/apache/xerces/internal/jaxp/validation/EmptyXMLSchema;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p1

    .line 34
    new-instance v0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v5, p1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;Ljava/lang/Exception;)V

    .line 35
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    invoke-interface {p0, v0}, Lorg/xml/sax/ErrorHandler;->error(Lorg/xml/sax/SAXParseException;)V

    .line 36
    throw v0

    :catch_1
    move-exception p0

    .line 37
    invoke-static {p0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/Util;->toSAXException(Lcom/sun/org/apache/xerces/internal/xni/XNIException;)Lorg/xml/sax/SAXException;

    move-result-object p0

    throw p0
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fErrorHandler:Lorg/xml/sax/ErrorHandler;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fErrorHandlerWrapper:Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/DraconianErrorHandler;->getInstance()Lcom/sun/org/apache/xerces/internal/jaxp/validation/DraconianErrorHandler;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fErrorHandlerWrapper:Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->setErrorHandler(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;)V

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p2, :cond_0

    new-instance v0, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    invoke-direct {v0}, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;-><init>()V

    :cond_0
    iput-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;

    const-string p1, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getType()S

    move-result p0

    if-nez p0, :cond_2

    new-instance p0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string v0, "feature-not-recognized"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/xml/sax/SAXNotSupportedException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string v0, "feature-not-supported"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string p2, "FeatureNameNull"

    invoke-static {p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    if-eqz p1, :cond_3

    const-string v0, "http://apache.org/xml/properties/security-manager"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    check-cast p2, Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    iput-object p2, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fSecurityManager:Lcom/sun/org/apache/xerces/internal/util/SecurityManager;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "property-not-supported"

    if-nez v0, :cond_2

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getType()S

    move-result p0

    if-nez p0, :cond_1

    new-instance p0, Lorg/xml/sax/SAXNotRecognizedException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    const-string v0, "property-not-recognized"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v0, p1}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Lorg/xml/sax/SAXNotSupportedException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Lorg/xml/sax/SAXNotSupportedException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p2

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, v1, p1}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    const-string p2, "ProperyNameNull"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Lcom/sun/org/apache/xerces/internal/jaxp/validation/JAXPValidationMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setResourceResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V
    .locals 1

    iput-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fLSResourceResolver:Lorg/w3c/dom/ls/LSResourceResolver;

    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fDOMEntityResolverWrapper:Lcom/sun/org/apache/xerces/internal/util/DOMEntityResolverWrapper;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/util/DOMEntityResolverWrapper;->setEntityResolver(Lorg/w3c/dom/ls/LSResourceResolver;)V

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fXMLSchemaLoader:Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/jaxp/validation/XMLSchemaFactory;->fDOMEntityResolverWrapper:Lcom/sun/org/apache/xerces/internal/util/DOMEntityResolverWrapper;

    invoke-virtual {p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/xs/XMLSchemaLoader;->setEntityResolver(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;)V

    return-void
.end method
