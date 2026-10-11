.class public Lcom/sun/org/apache/xalan/internal/processor/ProcessorInclude;
.super Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;
.source "SourceFile"


# static fields
.field static final serialVersionUID:J = -0x3f6c2e64b6cc7fc9L


# instance fields
.field private m_href:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorInclude;->m_href:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getHref()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorInclude;->m_href:Ljava/lang/String;

    return-object p0
.end method

.method public getStylesheetInclErr()Ljava/lang/String;
    .locals 0

    const-string p0, "ER_STYLESHEET_INCLUDES_ITSELF"

    return-object p0
.end method

.method public getStylesheetType()I
    .locals 0

    const/4 p0, 0x2

    return p0
.end method

.method public parse(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheetProcessor()Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;

    move-result-object p2

    invoke-virtual {p2}, Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;->getURIResolver()Ljavax/xml/transform/URIResolver;

    move-result-object p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorInclude;->getHref()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    move-result-object p5

    invoke-interface {p2, p4, p5}, Ljavax/xml/transform/URIResolver;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object p2

    if-eqz p2, :cond_2

    instance-of p4, p2, Ljavax/xml/transform/dom/DOMSource;

    if-eqz p4, :cond_2

    move-object p3, p2

    check-cast p3, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {p3}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object p3

    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorInclude;->getHref()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/sun/org/apache/xml/internal/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    new-instance p4, Lcom/sun/org/apache/xml/internal/utils/TreeWalker;

    new-instance p5, Lcom/sun/org/apache/xml/internal/utils/DOM2Helper;

    invoke-direct {p5}, Lcom/sun/org/apache/xml/internal/utils/DOM2Helper;-><init>()V

    invoke-direct {p4, p1, p5, p2}, Lcom/sun/org/apache/xml/internal/utils/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Lcom/sun/org/apache/xml/internal/utils/DOMHelper;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p4, p3}, Lcom/sun/org/apache/xml/internal/utils/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-exception p2

    :try_start_2
    new-instance p3, Ljavax/xml/transform/TransformerException;

    invoke-direct {p3, p2}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p3

    :catch_1
    move-exception p0

    goto/16 :goto_1

    :catch_2
    move-exception p2

    goto/16 :goto_2

    :cond_1
    move-object p2, p3

    :cond_2
    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorInclude;->getHref()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Lcom/sun/org/apache/xml/internal/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    new-instance p4, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {p4, p2}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/lang/String;)V

    move-object p2, p4

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorInclude;->processSource(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljavax/xml/transform/Source;)Ljavax/xml/transform/Source;

    move-result-object p2

    instance-of p4, p2, Ljavax/xml/transform/sax/SAXSource;

    if-eqz p4, :cond_4

    move-object p3, p2

    check-cast p3, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {p3}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p3

    :cond_4
    invoke-static {p2}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_1

    if-nez p3, :cond_6

    :try_start_3
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object p4

    const/4 p5, 0x1

    invoke-virtual {p4, p5}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheetProcessor()Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/processor/TransformerFactoryImpl;->isSecureProcessing()Z

    move-result v0
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/NoSuchMethodError; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/AbstractMethodError; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_1

    if-eqz v0, :cond_5

    :try_start_4
    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p4, v0, p5}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NoSuchMethodError; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/lang/AbstractMethodError; {:try_start_4 .. :try_end_4} :catch_6
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_4 .. :try_end_4} :catch_1

    :catch_3
    :cond_5
    :try_start_5
    invoke-virtual {p4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p4

    invoke-virtual {p4}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p3
    :try_end_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/NoSuchMethodError; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/lang/AbstractMethodError; {:try_start_5 .. :try_end_5} :catch_6
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_0

    :catch_4
    move-exception p2

    :try_start_6
    new-instance p3, Lorg/xml/sax/SAXException;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p3

    :catch_5
    move-exception p2

    new-instance p3, Lorg/xml/sax/SAXException;

    invoke-direct {p3, p2}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p3

    :catch_6
    :cond_6
    :goto_0
    if-nez p3, :cond_7

    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p3

    :cond_7
    if-eqz p3, :cond_8

    invoke-interface {p3, p1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {p2}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->pushBaseIndentifier(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_6 .. :try_end_6} :catch_1

    :try_start_7
    invoke-interface {p3, p2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->popBaseIndentifier()Ljava/lang/String;

    goto :goto_3

    :catchall_0
    move-exception p2

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->popBaseIndentifier()Ljava/lang/String;

    throw p2
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_8 .. :try_end_8} :catch_1

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    goto :goto_3

    :goto_2
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorInclude;->getHref()Ljava/lang/String;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p3, "ER_IOEXCEPTION"

    invoke-virtual {p1, p3, p0, p2}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Exception;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public processSource(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljavax/xml/transform/Source;)Ljavax/xml/transform/Source;
    .locals 0

    return-object p2
.end method

.method public setHref(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/processor/ProcessorInclude;->m_href:Ljava/lang/String;

    return-void
.end method

.method public startElement(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0, p1, p4, p5, p0}, Lcom/sun/org/apache/xalan/internal/processor/XSLTElementProcessor;->setPropertiesFromAttributes(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Lorg/xml/sax/Attributes;Lcom/sun/org/apache/xalan/internal/templates/ElemTemplateElement;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorInclude;->getHref()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getBaseIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sun/org/apache/xml/internal/utils/SystemIDResolver;->getAbsoluteURI(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->importStackContains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->pushImportURL(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->getStylesheetType()I

    move-result v0

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorInclude;->getStylesheetType()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->setStylesheetType(I)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->pushNewNamespaceSupport()V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual/range {p0 .. p5}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorInclude;->parse(Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->setStylesheetType(I)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->popImportURL()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->popNamespaceSupport()V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->setStylesheetType(I)V

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->popImportURL()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->popNamespaceSupport()V

    throw p0

    :cond_0
    new-instance p2, Lorg/xml/sax/SAXException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/processor/ProcessorInclude;->getStylesheetInclErr()Ljava/lang/String;

    move-result-object p0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p3

    invoke-static {p0, p3}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p2, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/sun/org/apache/xalan/internal/processor/StylesheetHandler;->error(Ljava/lang/String;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
