.class public Lcom/sun/org/apache/xalan/internal/transformer/TrAXFilter;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "SourceFile"


# instance fields
.field private m_templates:Ljavax/xml/transform/Templates;

.field private m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;


# direct methods
.method public constructor <init>(Ljavax/xml/transform/Templates;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TrAXFilter;->m_templates:Ljavax/xml/transform/Templates;

    invoke-interface {p1}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TrAXFilter;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    return-void
.end method

.method private setupParse()V
    .locals 2

    invoke-virtual {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TrAXFilter;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getInputContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    invoke-interface {v0, p0}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v0, "ER_NO_PARENT_FOR_FILTER"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getTransformer()Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TrAXFilter;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    return-object p0
.end method

.method public parse(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 21
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TrAXFilter;->parse(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    .line 2
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v2

    .line 3
    invoke-virtual {v2, v0}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 4
    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/transformer/TrAXFilter;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getStylesheet()Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/xalan/internal/templates/StylesheetRoot;->isSecureProcessing()Z

    move-result v3
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_0

    :try_start_1
    const-string v3, "http://javax.xml.XMLConstants/feature/secure-processing"

    .line 5
    invoke-virtual {v2, v3, v0}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_1 .. :try_end_1} :catch_1

    .line 6
    :catch_0
    :cond_0
    :try_start_2
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 7
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/AbstractMethodError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    :catch_1
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    .line 8
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    :cond_1
    :try_start_3
    const-string v3, "http://xml.org/sax/features/namespace-prefixes"

    .line 9
    invoke-interface {v2, v3, v0}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2

    .line 10
    :catch_2
    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/transformer/TrAXFilter;->setParent(Lorg/xml/sax/XMLReader;)V

    goto :goto_1

    :catch_3
    move-exception p0

    .line 11
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_4
    move-exception p0

    .line 12
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    .line 13
    :cond_2
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TrAXFilter;->setupParse()V

    .line 14
    :goto_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TrAXFilter;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 15
    invoke-virtual {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 16
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TrAXFilter;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->getExceptionThrown()Ljava/lang/Exception;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 17
    instance-of p1, p0, Lorg/xml/sax/SAXException;

    if-eqz p1, :cond_3

    .line 18
    check-cast p0, Lorg/xml/sax/SAXException;

    throw p0

    .line 19
    :cond_3
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_4
    return-void

    .line 20
    :cond_5
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string p1, "ER_CANNOT_CALL_PARSE"

    invoke-static {p1, v1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TrAXFilter;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    return-void
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TrAXFilter;->m_transformer:Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerImpl;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V

    return-void
.end method

.method public setParent(Lorg/xml/sax/XMLReader;)V
    .locals 1

    invoke-super {p0, p1}, Lorg/xml/sax/helpers/XMLFilterImpl;->setParent(Lorg/xml/sax/XMLReader;)V

    invoke-interface {p1}, Lorg/xml/sax/XMLReader;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lorg/xml/sax/XMLReader;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/transformer/TrAXFilter;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    :cond_0
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TrAXFilter;->setupParse()V

    return-void
.end method
