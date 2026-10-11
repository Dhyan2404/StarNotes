.class public Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xml/sax/XMLReader;
.implements Lorg/xml/sax/Locator;


# instance fields
.field private _lex:Lorg/xml/sax/ext/LexicalHandler;

.field private _sax:Lorg/xml/sax/ContentHandler;

.field private _saxImpl:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

.field private encoding:Ljava/lang/String;

.field private final staxEventReader:Ljavax/xml/stream/XMLEventReader;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLEventReader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->_lex:Lorg/xml/sax/ext/LexicalHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->_saxImpl:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->version:Ljava/lang/String;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->encoding:Ljava/lang/String;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->staxEventReader:Ljavax/xml/stream/XMLEventReader;

    return-void
.end method

.method public static synthetic access$000(Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->version:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->encoding:Ljava/lang/String;

    return-object p0
.end method

.method private bridge()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->staxEventReader:Ljavax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLEventReader;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isStartDocument()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    throw p0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_2

    move-object v1, v0

    check-cast v1, Ljavax/xml/stream/events/StartDocument;

    invoke-interface {v1}, Ljavax/xml/stream/events/StartDocument;->getVersion()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->version:Ljava/lang/String;

    move-object v1, v0

    check-cast v1, Ljavax/xml/stream/events/StartDocument;

    invoke-interface {v1}, Ljavax/xml/stream/events/StartDocument;->encodingSet()Z

    move-result v1

    if-eqz v1, :cond_2

    check-cast v0, Ljavax/xml/stream/events/StartDocument;

    invoke-interface {v0}, Ljavax/xml/stream/events/StartDocument;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->encoding:Ljava/lang/String;

    :cond_2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->staxEventReader:Ljavax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->handleStartDocument(Ljavax/xml/stream/events/XMLEvent;)V

    const/4 v1, 0x0

    :cond_4
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    new-instance p0, Ljava/lang/InternalError;

    goto :goto_2

    :pswitch_1
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->handleEntityDecl()V

    goto :goto_1

    :pswitch_2
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->handleNotationDecl()V

    goto :goto_1

    :pswitch_3
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->handleNamespace()V

    goto :goto_1

    :pswitch_4
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->handleCDATA()V

    goto :goto_1

    :pswitch_5
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->handleDTD()V

    goto :goto_1

    :pswitch_6
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->handleAttribute()V

    goto :goto_1

    :pswitch_7
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->handleEntityReference()V

    goto :goto_1

    :pswitch_8
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->handleSpace()V

    goto :goto_1

    :pswitch_9
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->handleComment()V

    goto :goto_1

    :pswitch_a
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->handleCharacters(Ljavax/xml/stream/events/Characters;)V

    goto :goto_1

    :pswitch_b
    check-cast v0, Ljavax/xml/stream/events/ProcessingInstruction;

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->handlePI(Ljavax/xml/stream/events/ProcessingInstruction;)V

    goto :goto_1

    :pswitch_c
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->asEndElement()Ljavax/xml/stream/events/EndElement;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->handleEndElement(Ljavax/xml/stream/events/EndElement;)V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :pswitch_d
    add-int/lit8 v1, v1, 0x1

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->asStartElement()Ljavax/xml/stream/events/StartElement;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->handleStartElement(Ljavax/xml/stream/events/StartElement;)V

    :goto_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->staxEventReader:Ljavax/xml/stream/XMLEventReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->handleEndDocument()V

    return-void

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processing event: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v0, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private getAttributes(Ljavax/xml/stream/events/StartElement;)Lorg/xml/sax/Attributes;
    .locals 6

    new-instance p0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {p0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljavax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/Attribute;

    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v3

    invoke-virtual {v3}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3a

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    :cond_2
    :goto_1
    move-object v3, v2

    :goto_2
    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getDTDType()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-object p0

    :cond_4
    new-instance p0, Ljava/lang/InternalError;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAttributes() attempting to process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private handleAttribute()V
    .locals 0

    return-void
.end method

.method private handleCDATA()V
    .locals 0

    return-void
.end method

.method private handleCharacters(Ljavax/xml/stream/events/Characters;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    invoke-interface {p1}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    invoke-interface {p1}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1, p1}, Lorg/xml/sax/ContentHandler;->characters([CII)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {p1, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private handleComment()V
    .locals 0

    return-void
.end method

.method private handleDTD()V
    .locals 0

    return-void
.end method

.method private handleEndDocument()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->endDocument()V

    return-void
.end method

.method private handleEndElement(Ljavax/xml/stream/events/EndElement;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-interface {p1}, Ljavax/xml/stream/events/EndElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v4, v0, v1}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/xml/stream/events/EndElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_1

    move-object v0, v2

    :cond_1
    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    invoke-interface {v1, v0}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_2
    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {p1, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private handleEntityDecl()V
    .locals 0

    return-void
.end method

.method private handleEntityReference()V
    .locals 0

    return-void
.end method

.method private handleNamespace()V
    .locals 0

    return-void
.end method

.method private handleNotationDecl()V
    .locals 0

    return-void
.end method

.method private handlePI(Ljavax/xml/stream/events/ProcessingInstruction;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    invoke-interface {p1}, Ljavax/xml/stream/events/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljavax/xml/stream/events/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {p1, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method private handleSpace()V
    .locals 0

    return-void
.end method

.method private handleStartDocument(Ljavax/xml/stream/events/XMLEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    new-instance v1, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX$1;

    invoke-direct {v1, p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX$1;-><init>(Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;Ljavax/xml/stream/events/XMLEvent;)V

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    invoke-interface {p0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    return-void
.end method

.method private handleStartElement(Ljavax/xml/stream/events/StartElement;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    :try_start_0
    invoke-interface {p1}, Ljavax/xml/stream/events/StartElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/stream/events/Namespace;

    invoke-interface {v1}, Ljavax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    const-string v1, ""

    :cond_0
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    invoke-interface {p1, v1}, Ljavax/xml/stream/events/StartElement;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-direct {p0, p1}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->getAttributes(Ljavax/xml/stream/events/StartElement;)Lorg/xml/sax/Attributes;

    move-result-object p1

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p0, v2, v0, v1, p1}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {p1, p0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public getColumnNumber()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->_sax:Lorg/xml/sax/ContentHandler;

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
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;,
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->bridge()V

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

    .line 4
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
    :try_start_0
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->bridge()V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 2
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public setContentHandler(Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->_sax:Lorg/xml/sax/ContentHandler;

    instance-of v0, p1, Lorg/xml/sax/ext/LexicalHandler;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/xml/sax/ext/LexicalHandler;

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->_lex:Lorg/xml/sax/ext/LexicalHandler;

    :cond_0
    instance-of v0, p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/StAXEvent2SAX;->_saxImpl:Lcom/sun/org/apache/xalan/internal/xsltc/dom/SAXImpl;

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
