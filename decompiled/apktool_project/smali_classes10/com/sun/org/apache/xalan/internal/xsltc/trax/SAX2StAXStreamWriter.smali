.class public Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;
.super Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;
.source "SourceFile"


# instance fields
.field private needToCallStartDocument:Z

.field private writer:Ljavax/xml/stream/XMLStreamWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;->needToCallStartDocument:Z

    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;->needToCallStartDocument:Z

    .line 5
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->characters([CII)V

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->isCDATA:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p0, p1, p2, p3}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters([CII)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public comment([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->comment([CII)V

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {p0, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeComment(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public endCDATA()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->CDATABuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->endCDATA()V

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndDocument()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->endDocument()V

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    throw v0
.end method

.method public getStreamWriter()Ljavax/xml/stream/XMLStreamWriter;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    return-object p0
.end method

.method public ignorableWhitespace([CII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lorg/xml/sax/helpers/DefaultHandler;->ignorableWhitespace([CII)V

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p0, p1, p2, p3}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters([CII)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/DefaultHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p0, p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public setStreamWriter(Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->startDocument()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;->needToCallStartDocument:Z

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "xmlns"

    iget-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;->needToCallStartDocument:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :try_start_0
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->docLocator:Lorg/xml/sax/Locator;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    check-cast v1, Lorg/xml/sax/ext/Locator2;

    invoke-interface {v1}, Lorg/xml/sax/ext/Locator2;->getXMLVersion()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v3, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument()V
    :try_end_2
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    iput-boolean v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;->needToCallStartDocument:Z

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_1
    :goto_1
    const/4 v1, 0x0

    :try_start_3
    filled-new-array {v1, v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {p3, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->parseQName(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v3, p3}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    invoke-interface {p4}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v3

    move v4, v2

    :goto_2
    if-ge v4, v3, :cond_6

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->parseQName(Ljava/lang/String;[Ljava/lang/String;)V

    aget-object v5, v1, v2

    const/4 v6, 0x1

    aget-object v6, v1, v6

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v8

    invoke-interface {p4, v4}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_3

    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v7, v5, v9, v6, v8}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_3
    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v5, v7, v8}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_4
    :goto_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v5, v8}, Ljavax/xml/stream/XMLStreamWriter;->setDefaultNamespace(Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v5, v6, v8}, Ljavax/xml/stream/XMLStreamWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXStreamWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v5, v6, v8}, Ljavax/xml/stream/XMLStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_6

    :catch_2
    move-exception v0

    :try_start_4
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_6
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    throw v0
.end method
