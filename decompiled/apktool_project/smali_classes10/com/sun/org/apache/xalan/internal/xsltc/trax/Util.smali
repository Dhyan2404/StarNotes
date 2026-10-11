.class public final Lcom/sun/org/apache/xalan/internal/xsltc/trax/Util;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static baseName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->baseName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getInputSource(Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    instance-of v1, p1, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v1, :cond_2

    check-cast p1, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getInputSource()Lorg/xml/sax/InputSource;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_6

    :try_start_1
    invoke-virtual {p1}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1
    :try_end_1
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_6

    const/4 v2, 0x1

    if-nez p1, :cond_1

    :try_start_2
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    :try_start_3
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->isSecureProcessing()Z

    move-result v3
    :try_end_3
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_6

    if-eqz v3, :cond_0

    :try_start_4
    const-string v3, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v3, v2}, Ljavax/xml/parsers/SAXParserFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_6

    :catch_1
    :cond_0
    :try_start_5
    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p1

    invoke-virtual {p1}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object p1
    :try_end_5
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_5} :catch_6

    goto :goto_0

    :catch_2
    move-exception p0

    :try_start_6
    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v1, "ParserConfigurationException"

    invoke-direct {p1, v1, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_1
    :goto_0
    const-string v3, "http://xml.org/sax/features/namespaces"

    invoke-interface {p1, v3, v2}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    const-string v2, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v3, 0x0

    invoke-interface {p1, v2, v3}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setXMLReader(Lorg/xml/sax/XMLReader;)V
    :try_end_6
    .catch Lorg/xml/sax/SAXNotRecognizedException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Lorg/xml/sax/SAXNotSupportedException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_6

    goto/16 :goto_3

    :catch_3
    move-exception p0

    :try_start_7
    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v1, "SAXException "

    invoke-direct {p1, v1, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_4
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v1, "SAXNotSupportedException "

    invoke-direct {p1, v1, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :catch_5
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    const-string v1, "SAXNotRecognizedException "

    invoke-direct {p1, v1, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    instance-of v1, p1, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v1, :cond_4

    move-object v1, p1

    check-cast v1, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v1}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Document;

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;

    invoke-direct {v3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;-><init>(Lorg/w3c/dom/Node;)V

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    invoke-static {p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object p0

    if-nez p0, :cond_3

    new-instance p0, Lorg/xml/sax/InputSource;

    invoke-virtual {v1}, Ljavax/xml/transform/dom/DOMSource;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    :cond_3
    :goto_1
    move-object v1, p0

    goto :goto_3

    :cond_4
    instance-of v1, p1, Ljavax/xml/transform/stax/StAXSource;

    if-eqz v1, :cond_7

    move-object v1, p1

    check-cast v1, Ljavax/xml/transform/stax/StAXSource;

    invoke-virtual {v1}, Ljavax/xml/transform/stax/StAXSource;->getXMLEventReader()Ljavax/xml/stream/XMLEventReader;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v1}, Ljavax/xml/transform/stax/StAXSource;->getXMLEventReader()Ljavax/xml/stream/XMLEventReader;

    move-result-object v2

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;

    invoke-direct {v3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;-><init>(Ljavax/xml/stream/XMLEventReader;)V

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljavax/xml/transform/stax/StAXSource;->getXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v1}, Ljavax/xml/transform/stax/StAXSource;->getXMLStreamReader()Ljavax/xml/stream/XMLStreamReader;

    move-result-object v2

    new-instance v3, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXStream2SAX;

    invoke-direct {v3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXStream2SAX;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    invoke-virtual {p0, v3}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    :cond_6
    :goto_2
    invoke-static {p1}, Ljavax/xml/transform/sax/SAXSource;->sourceToInputSource(Ljavax/xml/transform/Source;)Lorg/xml/sax/InputSource;

    move-result-object p0

    if-nez p0, :cond_3

    new-instance p0, Lorg/xml/sax/InputSource;

    invoke-virtual {v1}, Ljavax/xml/transform/stax/StAXSource;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    instance-of v1, p1, Ljavax/xml/transform/stream/StreamSource;

    if-eqz v1, :cond_a

    check-cast p1, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/XSLTC;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    if-eqz v1, :cond_8

    new-instance p0, Lorg/xml/sax/InputSource;

    invoke-direct {p0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    goto :goto_1

    :cond_8
    if-eqz p1, :cond_9

    new-instance p0, Lorg/xml/sax/InputSource;

    invoke-direct {p0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    goto :goto_1

    :cond_9
    new-instance p0, Lorg/xml/sax/InputSource;

    invoke-direct {p0, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :goto_3
    invoke-virtual {v1, v0}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    return-object v1

    :cond_a
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string p1, "JAXP_UNKNOWN_SOURCE_ERR"

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catch Ljava/lang/NullPointerException; {:try_start_7 .. :try_end_7} :catch_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_6

    :catch_6
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string p1, "FILE_ACCESS_ERR"

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_7
    new-instance p0, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;

    const-string p1, "JAXP_NO_SOURCE_ERR"

    const-string v0, "TransformerFactory.newTemplates()"

    invoke-direct {p0, p1, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/ErrorMsg;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static noExtName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->noExtName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static toJavaName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/compiler/util/Util;->toJavaName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
