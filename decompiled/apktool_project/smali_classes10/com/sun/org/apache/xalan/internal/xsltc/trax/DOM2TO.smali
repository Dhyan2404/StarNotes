.class public Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/XMLReader;
.implements Lorg/xml/sax/ext/Locator2;


# static fields
.field private static final EMPTYSTRING:Ljava/lang/String; = ""

.field private static final XMLNS_PREFIX:Ljava/lang/String; = "xmlns"


# instance fields
.field private _dom:Lorg/w3c/dom/Node;

.field private _handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

.field private xmlEncoding:Ljava/lang/String;

.field private xmlVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->xmlVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->xmlEncoding:Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_dom:Lorg/w3c/dom/Node;

    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    return-void
.end method

.method private getNodeTypeFromCode(S)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    goto :goto_0

    :pswitch_0
    const-string p0, "NOTATION_NODE"

    goto :goto_0

    :pswitch_1
    const-string p0, "DOCUMENT_FRAGMENT_NODE"

    goto :goto_0

    :pswitch_2
    const-string p0, "DOCUMENT_TYPE_NODE"

    goto :goto_0

    :pswitch_3
    const-string p0, "DOCUMENT_NODE"

    goto :goto_0

    :pswitch_4
    const-string p0, "COMMENT_NODE"

    goto :goto_0

    :pswitch_5
    const-string p0, "PROCESSING_INSTRUCTION_NODE"

    goto :goto_0

    :pswitch_6
    const-string p0, "ENTITY_NODE"

    goto :goto_0

    :pswitch_7
    const-string p0, "ENTITY_REFERENCE_NODE"

    goto :goto_0

    :pswitch_8
    const-string p0, "CDATA_SECTION_NODE"

    goto :goto_0

    :pswitch_9
    const-string p0, "TEXT_NODE"

    goto :goto_0

    :pswitch_a
    const-string p0, "ATTRIBUTE_NODE"

    goto :goto_0

    :pswitch_b
    const-string p0, "ELEMENT_NODE"

    :goto_0
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private parse(Lorg/w3c/dom/Node;)V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/16 v1, 0xb

    if-eq v0, v1, :cond_7

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_5

    const/4 v1, 0x7

    if-eq v0, v1, :cond_4

    const/16 v1, 0x8

    if-eq v0, v1, :cond_3

    const/16 v1, 0x9

    if-eq v0, v1, :cond_1

    goto/16 :goto_7

    .line 9
    :cond_1
    move-object v0, p1

    check-cast v0, Lorg/w3c/dom/Document;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->setDocumentInfo(Lorg/w3c/dom/Document;)V

    .line 10
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v0, p0}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 11
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 12
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_2

    .line 13
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->parse(Lorg/w3c/dom/Node;)V

    .line 14
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    .line 15
    :cond_2
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    goto/16 :goto_7

    .line 16
    :cond_3
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->comment(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 17
    :cond_4
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 18
    :cond_5
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 19
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->characters(Ljava/lang/String;)V

    .line 20
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    goto/16 :goto_7

    .line 21
    :cond_6
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->characters(Ljava/lang/String;)V

    goto/16 :goto_7

    .line 22
    :cond_7
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_1
    if-eqz p1, :cond_15

    .line 23
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->parse(Lorg/w3c/dom/Node;)V

    .line 24
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_1

    .line 25
    :cond_8
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v2, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 28
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :goto_2
    const-string v5, "xmlns"

    const/16 v6, 0x3a

    const-string v7, ""

    if-ge v4, v2, :cond_b

    .line 29
    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 30
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v9

    .line 31
    invoke-virtual {v9, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 32
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    .line 33
    invoke-virtual {v9, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v6

    if-lez v6, :cond_9

    add-int/lit8 v6, v6, 0x1

    .line 34
    invoke-virtual {v9, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 35
    :cond_9
    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v6, v7, v5}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 36
    :cond_b
    new-instance v4, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;

    invoke-direct {v4}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;-><init>()V

    move v8, v3

    :goto_3
    if-ge v8, v2, :cond_10

    .line 37
    invoke-interface {v1, v8}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    .line 38
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    .line 39
    invoke-virtual {v10, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_f

    .line 40
    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_e

    .line 41
    invoke-virtual {v11, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_e

    .line 42
    invoke-virtual {v10, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v12

    .line 43
    invoke-virtual {v4, v11}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->lookupPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v13, :cond_c

    .line 44
    invoke-virtual {v4}, Lcom/sun/org/apache/xml/internal/serializer/NamespaceMappings;->generateNextPrefix()Ljava/lang/String;

    move-result-object v13

    :cond_c
    if-lez v12, :cond_d

    .line 45
    invoke-virtual {v10, v3, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 46
    :cond_d
    iget-object v12, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v12, v13, v11}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object v11, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ":"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v10, v9}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 48
    :cond_e
    iget-object v11, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v10, v9}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->addAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    :goto_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 49
    :cond_10
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    if-eqz v1, :cond_12

    .line 51
    invoke-virtual {v0, v6}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    if-lez v2, :cond_11

    .line 52
    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 53
    :cond_11
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v2, v7, v1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_12
    if-nez v1, :cond_13

    if-eqz v2, :cond_13

    .line 54
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v1, v7, v7}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->namespaceAfterStartElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_13
    :goto_5
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object p1

    :goto_6
    if-eqz p1, :cond_14

    .line 56
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->parse(Lorg/w3c/dom/Node;)V

    .line 57
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_6

    .line 58
    :cond_14
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, v0}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->endElement(Ljava/lang/String;)V

    :cond_15
    :goto_7
    return-void
.end method

.method private setDocumentInfo(Lorg/w3c/dom/Document;)V
    .locals 2

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getXmlStandalone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getXmlStandalone()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setStandalone(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Document;->getXmlVersion()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->setXMLVersion(Ljava/lang/String;)V

    invoke-interface {p1}, Lorg/w3c/dom/Document;->getXmlEncoding()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->setEncoding(Ljava/lang/String;)V

    return-void
.end method

.method private setEncoding(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->xmlEncoding:Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setEncoding(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private setXMLVersion(Ljava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->xmlVersion:Ljava/lang/String;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0, p1}, Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;->setVersion(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->xmlEncoding:Ljava/lang/String;

    return-object p0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const/4 p0, 0x0

    return p0
.end method

.method public getLineNumber()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public getPublicId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getXMLVersion()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->xmlVersion:Ljava/lang/String;

    return-object p0
.end method

.method public parse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_dom:Lorg/w3c/dom/Node;

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 5
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_dom:Lorg/w3c/dom/Node;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->parse(Lorg/w3c/dom/Node;)V

    .line 6
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_handler:Lcom/sun/org/apache/xml/internal/serializer/SerializationHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_dom:Lorg/w3c/dom/Node;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->parse(Lorg/w3c/dom/Node;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public parse(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 59
    new-instance p0, Ljava/io/IOException;

    const-string p1, "This method is not yet implemented."

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->_dom:Lorg/w3c/dom/Node;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2TO;->parse(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 0

    return-void
.end method

.method public setDTDHandler(Lorg/xml/sax/DTDHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    return-void
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotRecognizedException;,
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    return-void
.end method
