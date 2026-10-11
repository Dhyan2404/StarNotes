.class public Lorg/apache/xml/serialize/TextSerializer;
.super Lorg/apache/xml/serialize/BaseMarkupSerializer;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lorg/apache/xml/serialize/OutputFormat;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "text"

    invoke-direct {v0, v3, v1, v2}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;-><init>(Lorg/apache/xml/serialize/OutputFormat;)V

    return-void
.end method


# virtual methods
.method public characters(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/xml/serialize/TextSerializer;->content()Lorg/apache/xml/serialize/ElementState;

    move-result-object p2

    const/4 v0, 0x0

    iput-boolean v0, p2, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    iput-boolean v0, p2, Lorg/apache/xml/serialize/ElementState;->doCData:Z

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, p2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printText(Ljava/lang/String;ZZ)V

    return-void
.end method

.method public characters([CII)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xml/serialize/TextSerializer;->content()Lorg/apache/xml/serialize/ElementState;

    move-result-object v0

    const/4 v1, 0x0

    iput-boolean v1, v0, Lorg/apache/xml/serialize/ElementState;->inCData:Z

    iput-boolean v1, v0, Lorg/apache/xml/serialize/ElementState;->doCData:Z

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-virtual/range {v2 .. v7}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->printText([CIIZZ)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public comment(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public comment([CII)V
    .locals 0

    .line 2
    return-void
.end method

.method public content()Lorg/apache/xml/serialize/ElementState;
    .locals 2

    invoke-virtual {p0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result p0

    if-nez p0, :cond_1

    iget-boolean p0, v0, Lorg/apache/xml/serialize/ElementState;->empty:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    iput-boolean v1, v0, Lorg/apache/xml/serialize/ElementState;->empty:Z

    :cond_0
    iput-boolean v1, v0, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    :cond_1
    return-object v0
.end method

.method public endElement(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/TextSerializer;->endElementIO(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2
    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    invoke-virtual {p0, p2}, Lorg/apache/xml/serialize/TextSerializer;->endElement(Ljava/lang/String;)V

    return-void
.end method

.method public endElementIO(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    invoke-virtual {p0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->leaveElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    const/4 v0, 0x0

    iput-boolean v0, p1, Lorg/apache/xml/serialize/ElementState;->empty:Z

    invoke-virtual {p0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {p0}, Lorg/apache/xml/serialize/Printer;->flush()V

    :cond_0
    return-void
.end method

.method public getEntityRef(I)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public processingInstructionIO(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public serializeElement(Lorg/w3c/dom/Element;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_started:Z

    if-nez v2, :cond_0

    invoke-virtual {p0, v0}, Lorg/apache/xml/serialize/TextSerializer;->startDocument(Ljava/lang/String;)V

    :cond_0
    iget-boolean v2, v1, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    invoke-interface {p1}, Lorg/w3c/dom/Node;->hasChildNodes()Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v1, v0, v2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serialize/ElementState;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    invoke-virtual {p0, v0}, Lorg/apache/xml/serialize/TextSerializer;->endElementIO(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/TextSerializer;->serializeNode(Lorg/w3c/dom/Node;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result p0

    if-nez p0, :cond_3

    const/4 p0, 0x1

    iput-boolean p0, v1, Lorg/apache/xml/serialize/ElementState;->afterElement:Z

    const/4 p0, 0x0

    iput-boolean p0, v1, Lorg/apache/xml/serialize/ElementState;->empty:Z

    :cond_3
    :goto_1
    return-void
.end method

.method public serializeNode(Lorg/w3c/dom/Node;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/16 v2, 0x9

    if-eq v0, v2, :cond_2

    const/16 v2, 0xb

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Lorg/apache/xml/serialize/TextSerializer;->characters(Ljava/lang/String;Z)V

    goto :goto_2

    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/TextSerializer;->serializeNode(Lorg/w3c/dom/Node;)V

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_1

    :cond_4
    check-cast p1, Lorg/w3c/dom/Element;

    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/TextSerializer;->serializeElement(Lorg/w3c/dom/Element;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public setOutputFormat(Lorg/apache/xml/serialize/OutputFormat;)V
    .locals 3

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lorg/apache/xml/serialize/OutputFormat;

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "text"

    invoke-direct {p1, v2, v0, v1}, Lorg/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    invoke-super {p0, p1}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->setOutputFormat(Lorg/apache/xml/serialize/OutputFormat;)V

    return-void
.end method

.method public startDocument(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_printer:Lorg/apache/xml/serialize/Printer;

    invoke-virtual {p1}, Lorg/apache/xml/serialize/Printer;->leaveDTD()Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_started:Z

    invoke-virtual {p0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->serializePreRoot()V

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p3

    :goto_0
    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Lorg/apache/xml/serialize/TextSerializer;->startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V

    return-void
.end method

.method public startElement(Ljava/lang/String;Lorg/xml/sax/AttributeList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->getElementState()Lorg/apache/xml/serialize/ElementState;

    move-result-object p2

    invoke-virtual {p0}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->isDocumentState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/xml/serialize/BaseMarkupSerializer;->_started:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lorg/apache/xml/serialize/TextSerializer;->startDocument(Ljava/lang/String;)V

    :cond_0
    iget-boolean p2, p2, Lorg/apache/xml/serialize/ElementState;->preserveSpace:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, p1, p2}, Lorg/apache/xml/serialize/BaseMarkupSerializer;->enterElementState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/apache/xml/serialize/ElementState;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method
