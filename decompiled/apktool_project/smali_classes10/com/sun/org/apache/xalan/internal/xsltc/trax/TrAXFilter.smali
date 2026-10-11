.class public Lcom/sun/org/apache/xalan/internal/xsltc/trax/TrAXFilter;
.super Lorg/xml/sax/helpers/XMLFilterImpl;
.source "SourceFile"


# instance fields
.field private _templates:Ljavax/xml/transform/Templates;

.field private _transformer:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;

.field private _transformerHandler:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;


# direct methods
.method public constructor <init>(Ljavax/xml/transform/Templates;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    invoke-direct {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;-><init>()V

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TrAXFilter;->_templates:Ljavax/xml/transform/Templates;

    invoke-interface {p1}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TrAXFilter;->_transformer:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;

    invoke-direct {v0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TrAXFilter;->_transformerHandler:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;

    return-void
.end method

.method private createParent()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TrAXFilter;->_transformer:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;

    invoke-virtual {v2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;->isSecureProcessing()Z

    move-result v2
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v2, :cond_0

    :try_start_1
    const-string v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {v0, v2, v1}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :cond_0
    :try_start_2
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljavax/xml/parsers/FactoryConfigurationError; {:try_start_2 .. :try_end_2} :catch_1

    if-nez v0, :cond_1

    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    :cond_1
    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/XMLFilterImpl;->setParent(Lorg/xml/sax/XMLReader;)V

    return-void

    :catch_1
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method


# virtual methods
.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TrAXFilter;->_transformer:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerImpl;

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

    .line 8
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TrAXFilter;->parse(Lorg/xml/sax/InputSource;)V

    return-void
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2
    :try_start_1
    invoke-static {}, Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;->getInstance()Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lorg/xml/sax/helpers/XMLFilterImpl;->setParent(Lorg/xml/sax/XMLReader;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 4
    :try_start_2
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-virtual {p0}, Lorg/xml/sax/SAXException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object p0

    invoke-interface {p0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;->getInstance()Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;->getInstance()Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V

    .line 7
    :cond_2
    throw p0
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TrAXFilter;->_transformerHandler:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;

    new-instance v1, Ljavax/xml/transform/sax/SAXResult;

    invoke-direct {v1, p1}, Ljavax/xml/transform/sax/SAXResult;-><init>(Lorg/xml/sax/ContentHandler;)V

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;->setResult(Ljavax/xml/transform/Result;)V

    invoke-virtual {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object p1

    if-nez p1, :cond_0

    :try_start_0
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TrAXFilter;->createParent()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    return-void

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lorg/xml/sax/helpers/XMLFilterImpl;->getParent()Lorg/xml/sax/XMLReader;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/TrAXFilter;->_transformerHandler:Lcom/sun/org/apache/xalan/internal/xsltc/trax/TransformerHandlerImpl;

    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    return-void
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 0

    return-void
.end method
