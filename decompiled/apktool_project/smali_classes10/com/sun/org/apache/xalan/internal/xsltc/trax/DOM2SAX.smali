.class public Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/XMLReader;
.implements Lorg/xml/sax/Locator;


# static fields
.field private static final EMPTYSTRING:Ljava/lang/String; = ""

.field private static final XMLNS_PREFIX:Ljava/lang/String; = "xmlns"


# instance fields
.field private _dom:Lorg/w3c/dom/Node;

.field private _lex:Lorg/xml/sax/ext/LexicalHandler;

.field private _nsPrefixes:Ljava/util/Hashtable;

.field private _sax:Lorg/xml/sax/ContentHandler;

.field private _saxImpl:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Node;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_dom:Lorg/w3c/dom/Node;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_lex:Lorg/xml/sax/ext/LexicalHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_saxImpl:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_nsPrefixes:Ljava/util/Hashtable;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_dom:Lorg/w3c/dom/Node;

    return-void
.end method

.method private endPrefixMapping(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_nsPrefixes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private static getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-lez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    return-object v0
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
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    move-object/from16 v0, p0

    if-nez p1, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    const/4 v7, 0x0

    if-eq v1, v2, :cond_8

    const/4 v2, 0x3

    if-eq v1, v2, :cond_7

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    const/16 v2, 0x9

    if-eq v1, v2, :cond_1

    goto/16 :goto_7

    .line 9
    :cond_1
    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, v0}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 10
    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 11
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_2

    .line 12
    invoke-direct {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->parse(Lorg/w3c/dom/Node;)V

    .line 13
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    .line 14
    :cond_2
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    goto/16 :goto_7

    .line 15
    :cond_3
    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_lex:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v1, :cond_14

    .line 16
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 17
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_lex:Lorg/xml/sax/ext/LexicalHandler;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0, v2, v7, v1}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    goto/16 :goto_7

    .line 18
    :cond_4
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7

    .line 19
    :cond_5
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 20
    iget-object v2, v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_lex:Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v2, :cond_6

    .line 21
    invoke-interface {v2}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 22
    iget-object v2, v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v2, v3, v7, v1}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 23
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_lex:Lorg/xml/sax/ext/LexicalHandler;

    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    goto/16 :goto_7

    .line 24
    :cond_6
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0, v2, v7, v1}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto/16 :goto_7

    .line 25
    :cond_7
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    .line 26
    iget-object v0, v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {v0, v2, v7, v1}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    goto/16 :goto_7

    .line 27
    :cond_8
    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    .line 28
    new-instance v9, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v9}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    .line 29
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v10

    .line 30
    invoke-interface {v10}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v11

    move v1, v7

    :goto_1
    const-string v12, "xmlns"

    const-string v13, ""

    const/16 v14, 0x3a

    if-ge v1, v11, :cond_b

    .line 31
    invoke-interface {v10, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 32
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    .line 33
    invoke-virtual {v3, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 34
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    .line 35
    invoke-virtual {v3, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v4

    if-lez v4, :cond_9

    add-int/lit8 v4, v4, 0x1

    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    .line 37
    :cond_9
    invoke-direct {v0, v13, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 38
    invoke-virtual {v8, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_b
    move v15, v7

    :goto_2
    if-ge v15, v11, :cond_f

    .line 39
    invoke-interface {v10, v15}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 40
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v4

    .line 41
    invoke-virtual {v4, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    .line 42
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 43
    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    if-eqz v2, :cond_d

    .line 44
    invoke-virtual {v4, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    if-lez v3, :cond_c

    .line 45
    invoke-virtual {v4, v7, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_c
    move-object v3, v13

    .line 46
    :goto_3
    invoke-direct {v0, v3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 47
    invoke-virtual {v8, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 48
    :cond_d
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v3

    const-string v5, "CDATA"

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    move-object v1, v9

    invoke-virtual/range {v1 .. v6}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_e
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 49
    :cond_f
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v10

    .line 50
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v11

    .line 51
    invoke-static/range {p1 .. p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->getLocalName(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v12

    if-eqz v11, :cond_11

    .line 52
    invoke-virtual {v10, v14}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-lez v1, :cond_10

    .line 53
    invoke-virtual {v10, v7, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 54
    :cond_10
    invoke-direct {v0, v13, v11}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 55
    invoke-virtual {v8, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 56
    :cond_11
    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_saxImpl:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v1, :cond_12

    move-object v2, v11

    move-object v3, v12

    move-object v4, v10

    move-object v5, v9

    move-object/from16 v6, p1

    .line 57
    invoke-virtual/range {v1 .. v6}, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/w3c/dom/Node;)V

    goto :goto_4

    .line 58
    :cond_12
    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, v11, v12, v10, v9}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 59
    :goto_4
    invoke-interface/range {p1 .. p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    :goto_5
    if-eqz v1, :cond_13

    .line 60
    invoke-direct {v0, v1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->parse(Lorg/w3c/dom/Node;)V

    .line 61
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_5

    .line 62
    :cond_13
    iget-object v1, v0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, v11, v12, v10}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v1

    :goto_6
    if-ge v7, v1, :cond_14

    .line 64
    invoke-virtual {v8, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->endPrefixMapping(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    :cond_14
    :goto_7
    return-void
.end method

.method private startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_nsPrefixes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Stack;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0, p1, p2}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_nsPrefixes:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    invoke-virtual {p0, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return v1
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    return-object p0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 0

    const/4 p0, 0x0

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

.method public parse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_dom:Lorg/w3c/dom/Node;

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
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 5
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_dom:Lorg/w3c/dom/Node;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->parse(Lorg/w3c/dom/Node;)V

    .line 6
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    goto :goto_1

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_dom:Lorg/w3c/dom/Node;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->parse(Lorg/w3c/dom/Node;)V

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

    .line 65
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
    iget-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_dom:Lorg/w3c/dom/Node;

    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->parse(Lorg/w3c/dom/Node;)V

    return-void
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    instance-of v0, p1, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_lex:Lorg/xml/sax/ext/LexicalHandler;

    :cond_0
    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/DOM2SAX;->_saxImpl:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    :cond_1
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
