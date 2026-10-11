.class public Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;
.super Ljavax/xml/transform/Transformer;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/transform/sax/TransformerHandler;
.implements Lorg/xml/sax/ext/DeclHandler;


# instance fields
.field m_URIResolver:Ljavax/xml/transform/URIResolver;

.field private m_errorListener:Ljavax/xml/transform/ErrorListener;

.field m_flushedStartDoc:Z

.field m_foundFirstElement:Z

.field private m_isSecureProcessing:Z

.field private m_outputFormat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

.field private m_outputStream:Ljava/io/FileOutputStream;

.field private m_params:Ljava/util/Hashtable;

.field private m_result:Ljavax/xml/transform/Result;

.field private m_resultContentHandler:Lorg/xml/sax/ContentHandler;

.field private m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

.field private m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

.field private m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

.field private m_serializer:Lcom/sun/org/apache/xml/internal/serializer/Serializer;

.field private m_systemID:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljavax/xml/transform/Transformer;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    .line 4
    new-instance v1, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xml/internal/utils/DefaultErrorHandler;-><init>(Z)V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    .line 5
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_isSecureProcessing:Z

    .line 6
    new-instance v0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    const-string v1, "xml"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_outputFormat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    .line 7
    iput-boolean p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_isSecureProcessing:Z

    return-void
.end method

.method private createResultContentHandler(Ljavax/xml/transform/Result;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    instance-of v0, p1, Ljavax/xml/transform/sax/SAXResult;

    if-eqz v0, :cond_0

    check-cast p1, Ljavax/xml/transform/sax/SAXResult;

    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXResult;->getHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXResult;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p1, Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    if-eqz v0, :cond_d

    check-cast p1, Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_serializer:Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    goto/16 :goto_4

    :cond_0
    instance-of v0, p1, Ljavax/xml/transform/dom/DOMResult;

    if-eqz v0, :cond_6

    check-cast p1, Ljavax/xml/transform/dom/DOMResult;

    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMResult;->getNode()Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMResult;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    const/16 v2, 0x9

    if-ne v2, p1, :cond_1

    move-object v2, v0

    check-cast v2, Lorg/w3c/dom/Document;

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    goto :goto_0

    :cond_2
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    iget-boolean v3, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_isSecureProcessing:Z
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v3, :cond_3

    :try_start_1
    const-string v3, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {v0, v3, v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_3
    :try_start_2
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0
    :try_end_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_2 .. :try_end_2} :catch_1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    invoke-virtual {p1, v0}, Ljavax/xml/transform/dom/DOMResult;->setNode(Lorg/w3c/dom/Node;)V

    move p1, v2

    move-object v2, v0

    :goto_0
    const/16 v3, 0xb

    if-ne v3, p1, :cond_4

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;

    check-cast v0, Lorg/w3c/dom/DocumentFragment;

    invoke-direct {p1, v2, v0}, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/DocumentFragment;)V

    goto :goto_1

    :cond_4
    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;

    invoke-direct {p1, v2, v0}, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;-><init>(Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;)V

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {p1, v1}, Lcom/sun/org/apache/xml/internal/utils/DOMBuilder;->setNextSibling(Lorg/w3c/dom/Node;)V

    :cond_5
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    goto/16 :goto_4

    :catch_1
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_6
    instance-of v0, p1, Ljavax/xml/transform/stream/StreamResult;

    if-eqz v0, :cond_12

    check-cast p1, Ljavax/xml/transform/stream/StreamResult;

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_outputFormat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    const-string v1, "method"

    invoke-virtual {v0, v1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    :try_start_3
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_outputFormat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializerFactory;->getSerializer(Ljava/util/Properties;)Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_serializer:Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->setWriter(Ljava/io/Writer;)V

    goto :goto_3

    :cond_7
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    goto :goto_3

    :cond_8
    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object p1

    const-string v1, "file:///"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    const-string v2, ":"

    if-eqz v1, :cond_a

    const/16 v1, 0x8

    :try_start_4
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_9

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_9
    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_a
    const-string v1, "file:/"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_c

    const/4 v1, 0x6

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_b

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_b
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_c
    :goto_2
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    :goto_3
    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->asContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_d
    :goto_4
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    instance-of v0, p1, Lorg/xml/sax/DTDHandler;

    if-eqz v0, :cond_e

    move-object v0, p1

    check-cast v0, Lorg/xml/sax/DTDHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    :cond_e
    instance-of v0, p1, Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_f

    move-object v0, p1

    check-cast v0, Lorg/xml/sax/ext/DeclHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    :cond_f
    instance-of v0, p1, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_10

    check-cast p1, Lorg/xml/sax/ext/LexicalHandler;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    :cond_10
    return-void

    :cond_11
    :try_start_5
    new-instance p0, Ljavax/xml/transform/TransformerException;

    const-string p1, "ER_NO_OUTPUT_SPECIFIED"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :catch_2
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_12
    new-instance p0, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "ER_CANNOT_TRANSFORM_TO_RESULT_TYPE"

    invoke-static {v0, p1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz v0, :cond_0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/xml/sax/ext/DeclHandler;->attributeDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public characters([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->flushStartDoc()V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    return-void
.end method

.method public clearParameters()V
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public comment([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->flushStartDoc()V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    :cond_0
    return-void
.end method

.method public elementDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->elementDecl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    :cond_0
    return-void
.end method

.method public endDTD()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->endDTD()V

    :cond_0
    return-void
.end method

.method public endDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->flushStartDoc()V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->endEntity(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public endPrefixMapping(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->flushStartDoc()V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    return-void
.end method

.method public externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ext/DeclHandler;->externalEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final flushStartDoc()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->createResultContentHandler(Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    :cond_1
    return-void
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-object p0
.end method

.method public getOutputProperties()Ljava/util/Properties;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_outputFormat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Properties;->clone()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Properties;

    return-object p0
.end method

.method public getOutputProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_outputFormat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-static {p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-object p0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    return-object p0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 0

    return-object p0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_URIResolver:Ljavax/xml/transform/URIResolver;

    return-object p0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ContentHandler;->ignorableWhitespace([CII)V

    return-void
.end method

.method public internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ext/DeclHandler;->internalEntityDecl(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/DTDHandler;->notationDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->flushStartDoc()V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_foundFirstElement:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultDeclHandler:Lorg/xml/sax/ext/DeclHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_serializer:Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_URIResolver:Ljavax/xml/transform/URIResolver;

    new-instance v0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    const-string v1, "xml"

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_outputFormat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->createResultContentHandler(Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-direct {p1, p0}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_NULL_ERROR_HANDLER"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setOutputProperties(Ljava/util/Properties;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_1

    const-string v0, "method"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-direct {v1, v0}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_outputFormat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-direct {v0}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_outputFormat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_outputFormat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->copyFrom(Ljava/util/Properties;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_outputFormat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    :goto_1
    return-void
.end method

.method public setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->isLegalPropertyKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_outputFormat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "ER_OUTPUT_PROPERTY_NOT_RECOGNIZED"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_params:Ljava/util/Hashtable;

    invoke-virtual {p0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p2, "ER_INVALID_SET_PARAM_VALUE"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setResult(Ljavax/xml/transform/Result;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ER_RESULT_NULL"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_URIResolver:Ljavax/xml/transform/URIResolver;

    return-void
.end method

.method public skippedEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->flushStartDoc()V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    return-void
.end method

.method public startCDATA()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    :cond_0
    return-void
.end method

.method public startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->flushStartDoc()V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3}, Lorg/xml/sax/ext/LexicalHandler;->startDTD(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_result:Ljavax/xml/transform/Result;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->createResultContentHandler(Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_flushedStartDoc:Z

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_foundFirstElement:Z

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v0
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_foundFirstElement:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_serializer:Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_foundFirstElement:Z

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_outputFormat:Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;

    invoke-virtual {v0}, Lcom/sun/org/apache/xalan/internal/templates/OutputProperties;->getProperties()Ljava/util/Properties;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_serializer:Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    invoke-static {p1, p2, v0, v1}, Lcom/sun/org/apache/xalan/internal/transformer/SerializerSwitcher;->switchSerializerIfHTML(Ljava/lang/String;Ljava/lang/String;Ljava/util/Properties;Lcom/sun/org/apache/xml/internal/serializer/Serializer;)Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_serializer:Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    if-eq v0, v1, :cond_2

    :try_start_1
    invoke-interface {v0}, Lcom/sun/org/apache/xml/internal/serializer/Serializer;->asContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    instance-of v2, v1, Lorg/xml/sax/DTDHandler;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lorg/xml/sax/DTDHandler;

    iput-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    :cond_0
    instance-of v2, v1, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v2, :cond_1

    check-cast v1, Lorg/xml/sax/ext/LexicalHandler;

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    :cond_1
    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_serializer:Lcom/sun/org/apache/xml/internal/serializer/Serializer;

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->flushStartDoc()V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void
.end method

.method public startEntity(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultLexicalHandler:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/xml/sax/ext/LexicalHandler;->startEntity(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->flushStartDoc()V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultContentHandler:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->createResultContentHandler(Ljavax/xml/transform/Result;)V

    instance-of p2, p1, Ljavax/xml/transform/stream/StreamSource;

    if-eqz p2, :cond_0

    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    move-object p2, p1

    check-cast p2, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {p2}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object p2

    if-eqz p2, :cond_2

    :cond_0
    instance-of p2, p1, Ljavax/xml/transform/sax/SAXSource;

    if-eqz p2, :cond_1

    move-object p2, p1

    check-cast p2, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {p2}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p2

    if-eqz p2, :cond_2

    :cond_1
    instance-of p2, p1, Ljavax/xml/transform/dom/DOMSource;

    if-eqz p2, :cond_4

    move-object p2, p1

    check-cast p2, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {p2}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object p2

    if-nez p2, :cond_4

    :cond_2
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object p2

    invoke-virtual {p2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object p2

    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {p2}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object p2

    invoke-direct {v0, p2}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    if-eqz p1, :cond_3

    invoke-interface {v0, p1}, Ljavax/xml/transform/Source;->setSystemId(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object p1, v0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    :goto_0
    const/4 p2, 0x0

    :try_start_1
    instance-of v0, p1, Ljavax/xml/transform/dom/DOMSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_b

    check-cast p1, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    invoke-virtual {p1}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    if-eqz p1, :cond_a

    :try_start_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->startDocument()V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :cond_5
    :try_start_3
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    if-ne v0, v2, :cond_6

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    array-length v3, v0

    invoke-virtual {p0, v0, v1, v3}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->characters([CII)V

    goto :goto_1

    :cond_6
    new-instance v0, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;

    invoke-direct {v0, p0, v1}, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;-><init>(Lorg/xml/sax/ContentHandler;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/TreeWalker;->traverse(Lorg/w3c/dom/Node;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    :try_start_4
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    if-ne p1, v2, :cond_8

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->endDocument()V

    goto :goto_2

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result p1

    if-ne p1, v2, :cond_7

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->endDocument()V

    :cond_7
    throw v0
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :catch_1
    move-exception p1

    :try_start_5
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    new-instance v1, Ljavax/xml/transform/TransformerException;

    invoke-direct {v1, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :cond_8
    :goto_2
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    if-eqz p1, :cond_9

    :try_start_6
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :catch_2
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    :cond_9
    return-void

    :cond_a
    :try_start_7
    const-string p1, "ER_ILLEGAL_DOMSOURCE_INPUT"

    invoke-static {p1, p2}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b
    invoke-static {p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_c

    invoke-virtual {v0}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_systemID:Ljava/lang/String;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :cond_c
    :try_start_8
    instance-of v3, p1, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v3, :cond_d

    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1
    :try_end_8
    .catch Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException; {:try_start_8 .. :try_end_8} :catch_d
    .catch Lorg/xml/sax/SAXException; {:try_start_8 .. :try_end_8} :catch_b
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_a
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto :goto_3

    :cond_d
    move-object p1, p2

    :goto_3
    if-nez p1, :cond_e

    :try_start_9
    invoke-static {}, Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;->getInstance()Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1
    :try_end_9
    .catch Lorg/xml/sax/SAXException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    move v1, v2

    goto :goto_4

    :catch_3
    move-exception v0

    :try_start_a
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, v0}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_a
    .catch Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException; {:try_start_a .. :try_end_a} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_5
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :catch_4
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_7

    :cond_e
    :goto_4
    :try_start_b
    const-string v3, "http://xml.org/sax/features/namespace-prefixes"

    invoke-interface {p1, v3, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_b
    .catch Lorg/xml/sax/SAXException; {:try_start_b .. :try_end_b} :catch_7
    .catch Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException; {:try_start_b .. :try_end_b} :catch_6
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto/16 :goto_b

    :catch_5
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_6

    :catch_6
    move-exception v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    goto :goto_9

    :catch_7
    :goto_5
    :try_start_c
    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    invoke-interface {p1, p0}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    :try_end_c
    .catch Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException; {:try_start_c .. :try_end_c} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_c .. :try_end_c} :catch_4
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :try_start_d
    const-string v2, "http://xml.org/sax/properties/lexical-handler"

    invoke-interface {p1, v2, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "http://xml.org/sax/properties/declaration-handler"

    invoke-interface {p1, v2, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_d
    .catch Lorg/xml/sax/SAXException; {:try_start_d .. :try_end_d} :catch_8
    .catch Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException; {:try_start_d .. :try_end_d} :catch_6
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :catch_8
    :try_start_e
    const-string v2, "http://xml.org/sax/handlers/LexicalHandler"

    invoke-interface {p1, v2, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    const-string v2, "http://xml.org/sax/handlers/DeclHandler"

    invoke-interface {p1, v2, p0}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_e
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_e .. :try_end_e} :catch_9
    .catch Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException; {:try_start_e .. :try_end_e} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_e .. :try_end_e} :catch_4
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    :catch_9
    :try_start_f
    invoke-interface {p1, v0}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_f
    .catch Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException; {:try_start_f .. :try_end_f} :catch_6
    .catch Lorg/xml/sax/SAXException; {:try_start_f .. :try_end_f} :catch_4
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_5
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v1, :cond_f

    :try_start_10
    invoke-static {}, Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;->getInstance()Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_8

    :catchall_2
    move-exception p1

    move-object v0, p2

    goto :goto_b

    :catch_a
    move-exception p1

    move-object v0, p2

    :goto_6
    :try_start_11
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-direct {v2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :catch_b
    move-exception p1

    move-object v0, p2

    :goto_7
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_errorListener:Ljavax/xml/transform/ErrorListener;

    new-instance v3, Ljavax/xml/transform/TransformerException;

    invoke-direct {v3, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Ljavax/xml/transform/ErrorListener;->fatalError(Ljavax/xml/transform/TransformerException;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    if-eqz v1, :cond_f

    :try_start_12
    invoke-static {}, Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;->getInstance()Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_4

    :cond_f
    :goto_8
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    if-eqz p1, :cond_10

    :try_start_13
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_c

    :catch_c
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    :cond_10
    return-void

    :catch_d
    move-exception p1

    move-object v0, p2

    :goto_9
    :try_start_14
    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v2

    :goto_a
    instance-of v3, v2, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    if-eqz v3, :cond_11

    check-cast v2, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;

    invoke-virtual {v2}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object v2

    goto :goto_a

    :cond_11
    new-instance v2, Ljavax/xml/transform/TransformerException;

    invoke-virtual {p1}, Lcom/sun/org/apache/xml/internal/utils/WrappedRuntimeException;->getException()Ljava/lang/Exception;

    move-result-object p1

    invoke-direct {v2, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    :catchall_3
    move-exception p1

    :goto_b
    if-eqz v1, :cond_12

    :try_start_15
    invoke-static {}, Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;->getInstance()Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/sun/org/apache/xml/internal/utils/XMLReaderManager;->releaseXMLReader(Lorg/xml/sax/XMLReader;)V

    :cond_12
    throw p1

    :cond_13
    new-instance v0, Ljavax/xml/transform/TransformerException;

    const-string v3, "ER_CANNOT_TRANSFORM_SOURCE_TYPE"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-static {v3, v2}, Lcom/sun/org/apache/xalan/internal/res/XSLMessages;->createMessage(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljavax/xml/transform/TransformerException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    :catchall_4
    move-exception p1

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    if-eqz v0, :cond_14

    :try_start_16
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_e

    :catch_e
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_outputStream:Ljava/io/FileOutputStream;

    :cond_14
    throw p1
.end method

.method public unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/transformer/TransformerIdentityImpl;->m_resultDTDHandler:Lorg/xml/sax/DTDHandler;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2, p3, p4}, Lorg/xml/sax/DTDHandler;->unparsedEntityDecl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
