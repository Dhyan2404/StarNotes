.class public Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;
.super Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;
.source "SourceFile"


# static fields
.field private static final RECOGNIZED_PROPERTIES:[Ljava/lang/String;

.field protected static final SYMBOL_TABLE:Ljava/lang/String; = "http://apache.org/xml/properties/internal/symbol-table"

.field protected static final USE_ENTITY_RESOLVER2:Ljava/lang/String; = "http://xml.org/sax/features/use-entity-resolver2"

.field protected static final XMLGRAMMAR_POOL:Ljava/lang/String; = "http://apache.org/xml/properties/internal/grammar-pool"


# instance fields
.field protected fUseEntityResolver2:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    const-string v0, "http://apache.org/xml/properties/internal/symbol-table"

    const-string v1, "http://apache.org/xml/properties/internal/grammar-pool"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;-><init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/util/SymbolTable;Lcom/sun/org/apache/xerces/internal/xni/grammars/XMLGrammarPool;)V
    .locals 2

    const-string v0, "com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration"

    const-string v1, "com.sun.org.apache.xerces.internal.parsers.XIncludeAwareParserConfiguration"

    .line 5
    invoke-static {v0, v1}, Lcom/sun/org/apache/xerces/internal/parsers/ObjectFactory;->createObject(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->fUseEntityResolver2:Z

    .line 7
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    sget-object v1, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->RECOGNIZED_PROPERTIES:[Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->addRecognizedProperties([Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 8
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/symbol-table"

    invoke-interface {v0, v1, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 9
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string p1, "http://apache.org/xml/properties/internal/grammar-pool"

    invoke-interface {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->fUseEntityResolver2:Z

    return-void
.end method


# virtual methods
.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/entity-resolver"

    invoke-interface {p0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    if-eqz p0, :cond_1

    instance-of v1, p0, Lcom/sun/org/apache/xerces/internal/util/EntityResolverWrapper;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/util/EntityResolverWrapper;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/EntityResolverWrapper;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object p0

    :goto_0
    move-object v0, p0

    goto :goto_1

    :cond_0
    instance-of v1, p0, Lcom/sun/org/apache/xerces/internal/util/EntityResolver2Wrapper;

    if-eqz v1, :cond_1

    check-cast p0, Lcom/sun/org/apache/xerces/internal/util/EntityResolver2Wrapper;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/EntityResolver2Wrapper;->getEntityResolver()Lorg/xml/sax/ext/EntityResolver2;

    move-result-object p0
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_1
    :goto_1
    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    const-string v1, "http://apache.org/xml/properties/internal/error-handler"

    invoke-interface {p0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    if-eqz p0, :cond_0

    instance-of v1, p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;

    if-eqz v1, :cond_0

    check-cast p0, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object p0
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    :try_start_0
    const-string v0, "http://xml.org/sax/features/use-entity-resolver2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->fUseEntityResolver2:Z

    return p0

    :cond_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    if-nez p1, :cond_1

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v1, "feature-not-recognized"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v1, "feature-not-supported"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const-string v0, "http://apache.org/xml/properties/dom/current-element-node"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :try_start_0
    const-string p1, "http://apache.org/xml/features/dom/defer-node-expansion"

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->getFeature(Ljava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/AbstractDOMParser;->fCurrentNode:Lorg/w3c/dom/Node;

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_1
    return-object p0

    :cond_1
    new-instance p0, Lorg/xml/sax/SAXNotSupportedException;

    const-string p1, "Current element node cannot be queried when node expansion is deferred."

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0
    :try_end_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    if-nez p1, :cond_3

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v1, "property-not-recognized"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v1, "property-not-supported"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getXMLParserConfiguration()Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    return-object p0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p1, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->parse(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 5
    instance-of p0, p1, Lorg/xml/sax/SAXException;

    if-nez p0, :cond_1

    .line 6
    instance-of p0, p1, Ljava/io/IOException;

    if-eqz p0, :cond_0

    .line 7
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 8
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p0

    .line 9
    :cond_1
    check-cast p1, Lorg/xml/sax/SAXException;

    throw p1

    .line 10
    :cond_2
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    .line 11
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 12
    instance-of p0, p1, Lorg/xml/sax/SAXException;

    if-nez p0, :cond_4

    .line 13
    instance-of p0, p1, Ljava/io/IOException;

    if-eqz p0, :cond_3

    .line 14
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 15
    :cond_3
    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p0

    .line 16
    :cond_4
    check-cast p1, Lorg/xml/sax/SAXException;

    throw p1

    .line 17
    :cond_5
    new-instance p1, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {p1}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    .line 18
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 19
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getLineNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 21
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 22
    new-instance v0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 23
    :try_start_0
    new-instance v0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->setByteStream(Ljava/io/InputStream;)V

    .line 25
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->setCharacterStream(Ljava/io/Reader;)V

    .line 26
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;->setEncoding(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->parse(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sun/org/apache/xerces/internal/xni/XNIException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 29
    instance-of p0, p1, Lorg/xml/sax/SAXException;

    if-nez p0, :cond_1

    .line 30
    instance-of p0, p1, Ljava/io/IOException;

    if-eqz p0, :cond_0

    .line 31
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 32
    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p0

    .line 33
    :cond_1
    check-cast p1, Lorg/xml/sax/SAXException;

    throw p1

    .line 34
    :cond_2
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_1
    move-exception p0

    .line 35
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/XNIException;->getException()Ljava/lang/Exception;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 36
    instance-of p0, p1, Lorg/xml/sax/SAXException;

    if-nez p0, :cond_4

    .line 37
    instance-of p0, p1, Ljava/io/IOException;

    if-eqz p0, :cond_3

    .line 38
    check-cast p1, Ljava/io/IOException;

    throw p1

    .line 39
    :cond_3
    new-instance p0, Lorg/xml/sax/SAXException;

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p0

    .line 40
    :cond_4
    check-cast p1, Lorg/xml/sax/SAXException;

    throw p1

    .line 41
    :cond_5
    new-instance p1, Lorg/xml/sax/helpers/LocatorImpl;

    invoke-direct {p1}, Lorg/xml/sax/helpers/LocatorImpl;-><init>()V

    .line 42
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getPublicId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setPublicId(Ljava/lang/String;)V

    .line 43
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getExpandedSystemId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setSystemId(Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getLineNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setLineNumber(I)V

    .line 45
    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParseException;->getColumnNumber()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/xml/sax/helpers/LocatorImpl;->setColumnNumber(I)V

    .line 46
    new-instance v0, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lorg/xml/sax/SAXParseException;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    throw v0
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 3

    const-string v0, "http://apache.org/xml/properties/internal/entity-resolver"

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLEntityResolver;

    iget-boolean v2, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->fUseEntityResolver2:Z

    if-eqz v2, :cond_1

    instance-of v2, p1, Lorg/xml/sax/ext/EntityResolver2;

    if-eqz v2, :cond_1

    instance-of v2, v1, Lcom/sun/org/apache/xerces/internal/util/EntityResolver2Wrapper;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sun/org/apache/xerces/internal/util/EntityResolver2Wrapper;

    check-cast p1, Lorg/xml/sax/ext/EntityResolver2;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xerces/internal/util/EntityResolver2Wrapper;->setEntityResolver(Lorg/xml/sax/ext/EntityResolver2;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/EntityResolver2Wrapper;

    check-cast p1, Lorg/xml/sax/ext/EntityResolver2;

    invoke-direct {v1, p1}, Lcom/sun/org/apache/xerces/internal/util/EntityResolver2Wrapper;-><init>(Lorg/xml/sax/ext/EntityResolver2;)V

    invoke-interface {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    instance-of v2, v1, Lcom/sun/org/apache/xerces/internal/util/EntityResolverWrapper;

    if-eqz v2, :cond_2

    check-cast v1, Lcom/sun/org/apache/xerces/internal/util/EntityResolverWrapper;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xerces/internal/util/EntityResolverWrapper;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/EntityResolverWrapper;

    invoke-direct {v1, p1}, Lcom/sun/org/apache/xerces/internal/util/EntityResolverWrapper;-><init>(Lorg/xml/sax/EntityResolver;)V

    invoke-interface {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 3

    const-string v0, "http://apache.org/xml/properties/internal/error-handler"

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLErrorHandler;

    instance-of v2, v1, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;

    if-eqz v2, :cond_0

    check-cast v1, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    new-instance v1, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;

    invoke-direct {v1, p1}, Lcom/sun/org/apache/xerces/internal/util/ErrorHandlerWrapper;-><init>(Lorg/xml/sax/ErrorHandler;)V

    invoke-interface {p0, v0, v1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    :try_start_0
    const-string v0, "http://xml.org/sax/features/use-entity-resolver2"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean p1, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->fUseEntityResolver2:Z

    if-eq p2, p1, :cond_0

    iput-boolean p2, p0, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->fUseEntityResolver2:Z

    invoke-virtual {p0}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/parsers/DOMParser;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    if-nez p1, :cond_2

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "feature-not-recognized"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "feature-not-supported"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {v0, p1, p2}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getIdentifier()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLConfigurationException;->getType()S

    move-result p1

    if-nez p1, :cond_0

    new-instance p1, Lorg/xml/sax/SAXNotRecognizedException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "property-not-recognized"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotRecognizedException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    new-instance p1, Lorg/xml/sax/SAXNotSupportedException;

    iget-object p0, p0, Lcom/sun/org/apache/xerces/internal/parsers/XMLParser;->fConfiguration:Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;

    invoke-interface {p0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLParserConfiguration;->getLocale()Ljava/util/Locale;

    move-result-object p0

    const-string v0, "property-not-supported"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p0, v0, p2}, Lcom/sun/org/apache/xerces/internal/util/SAXMessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
