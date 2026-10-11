.class public Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;
.super Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;
.source "SourceFile"


# instance fields
.field private eventFactory:Ljavax/xml/stream/XMLEventFactory;

.field private namespaceStack:Ljava/util/List;

.field private needToCallStartDocument:Z

.field private writer:Ljavax/xml/stream/XMLEventWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->namespaceStack:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->needToCallStartDocument:Z

    .line 4
    invoke-static {}, Ljavax/xml/stream/XMLEventFactory;->newInstance()Ljavax/xml/stream/XMLEventFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLEventWriter;)V
    .locals 1

    .line 5
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;-><init>()V

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->namespaceStack:Ljava/util/List;

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->needToCallStartDocument:Z

    .line 8
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->writer:Ljavax/xml/stream/XMLEventWriter;

    .line 9
    invoke-static {}, Ljavax/xml/stream/XMLEventFactory;->newInstance()Ljavax/xml/stream/XMLEventFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLEventWriter;Ljavax/xml/stream/XMLEventFactory;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;-><init>()V

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->namespaceStack:Ljava/util/List;

    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->needToCallStartDocument:Z

    .line 13
    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->writer:Ljavax/xml/stream/XMLEventWriter;

    if-eqz p2, :cond_0

    .line 14
    iput-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    goto :goto_0

    .line 15
    :cond_0
    invoke-static {}, Ljavax/xml/stream/XMLEventFactory;->newInstance()Ljavax/xml/stream/XMLEventFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    :goto_0
    return-void
.end method


# virtual methods
.method public characters([CII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->characters([CII)V

    :try_start_0
    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->isCDATA:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->getCurrentLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/stream/XMLEventFactory;->setLocation(Ljavax/xml/stream/Location;)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->writer:Ljavax/xml/stream/XMLEventWriter;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v1}, Ljavax/xml/stream/XMLEventFactory;->createCharacters(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object p0

    invoke-interface {v0, p0}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->comment([CII)V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->getCurrentLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/stream/XMLEventFactory;->setLocation(Ljavax/xml/stream/Location;)V

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->writer:Ljavax/xml/stream/XMLEventWriter;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {p0, v1}, Ljavax/xml/stream/XMLEventFactory;->createComment(Ljava/lang/String;)Ljavax/xml/stream/events/Comment;

    move-result-object p0

    invoke-interface {v0, p0}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public createNamespace(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;
    .locals 1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {p0, p1, p2}, Ljavax/xml/stream/XMLEventFactory;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {p0, p2}, Ljavax/xml/stream/XMLEventFactory;->createNamespace(Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;

    move-result-object p0

    return-object p0
.end method

.method public createStartEvents(Lorg/xml/sax/Attributes;[Ljava/util/Collection;)V
    .locals 13

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->namespaces:Ljava/util/Vector;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    move v4, v1

    move-object v5, v3

    :goto_0
    if-ge v4, v0, :cond_2

    iget-object v6, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->namespaces:Ljava/util/Vector;

    invoke-virtual {v6, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->namespaces:Ljava/util/Vector;

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v7, v4}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v6, v4}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;

    move-result-object v4

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    :cond_0
    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v8, 0x1

    goto :goto_0

    :cond_1
    move-object v5, v3

    :cond_2
    filled-new-array {v3, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/xml/sax/Attributes;->getLength()I

    move-result v4

    move v6, v1

    :goto_1
    if-ge v6, v4, :cond_8

    invoke-interface {p1, v6}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->parseQName(Ljava/lang/String;[Ljava/lang/String;)V

    aget-object v7, v0, v1

    aget-object v8, v0, v2

    invoke-interface {p1, v6}, Lorg/xml/sax/Attributes;->getQName(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v6}, Lorg/xml/sax/Attributes;->getValue(I)Ljava/lang/String;

    move-result-object v10

    invoke-interface {p1, v6}, Lorg/xml/sax/Attributes;->getURI(I)Ljava/lang/String;

    move-result-object v11

    const-string v12, "xmlns"

    invoke-virtual {v12, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_6

    invoke-virtual {v12, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_4

    iget-object v9, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v9, v7, v11, v8, v10}, Ljavax/xml/stream/XMLEventFactory;->createAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;

    move-result-object v7

    goto :goto_2

    :cond_4
    iget-object v7, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v7, v8, v10}, Ljavax/xml/stream/XMLEventFactory;->createAttribute(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Attribute;

    move-result-object v7

    :goto_2
    if-nez v3, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :cond_5
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_6
    :goto_3
    invoke-interface {v5, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_7

    invoke-virtual {p0, v7, v10}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->createNamespace(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/Namespace;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_8
    if-nez v5, :cond_9

    sget-object p0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    goto :goto_5

    :cond_9
    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p0

    :goto_5
    aput-object p0, p2, v1

    if-nez v3, :cond_a

    sget-object v3, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    :cond_a
    aput-object v3, p2, v2

    return-void
.end method

.method public endCDATA()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->getCurrentLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/stream/XMLEventFactory;->setLocation(Ljavax/xml/stream/Location;)V

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->writer:Ljavax/xml/stream/XMLEventWriter;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->CDATABuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/xml/stream/XMLEventFactory;->createCData(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V
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
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->getCurrentLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/stream/XMLEventFactory;->setLocation(Ljavax/xml/stream/Location;)V

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->writer:Ljavax/xml/stream/XMLEventWriter;

    iget-object v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v1}, Ljavax/xml/stream/XMLEventFactory;->createEndDocument()Ljavax/xml/stream/events/EndDocument;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->endDocument()V

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->namespaceStack:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->getCurrentLocation()Ljavax/xml/stream/Location;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljavax/xml/stream/XMLEventFactory;->setLocation(Ljavax/xml/stream/Location;)V

    const/4 p2, 0x0

    filled-new-array {p2, p2}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->parseQName(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object p3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->namespaceStack:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p3, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Collection;

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->writer:Ljavax/xml/stream/XMLEventWriter;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    const/4 v2, 0x0

    aget-object v2, p2, v2

    aget-object p2, p2, v1

    invoke-virtual {p0, v2, p1, p2, p3}, Ljavax/xml/stream/XMLEventFactory;->createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Ljavax/xml/stream/events/EndElement;

    move-result-object p0

    invoke-interface {v0, p0}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public getEventFactory()Ljavax/xml/stream/XMLEventFactory;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    return-object p0
.end method

.method public getEventWriter()Ljavax/xml/stream/XMLEventWriter;
    .locals 0

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->writer:Ljavax/xml/stream/XMLEventWriter;

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

    invoke-virtual {p0, p1, p2, p3}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->characters([CII)V

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lorg/xml/sax/helpers/DefaultHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->writer:Ljavax/xml/stream/XMLEventWriter;

    iget-object p0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {p0, p1, p2}, Ljavax/xml/stream/XMLEventFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/ProcessingInstruction;

    move-result-object p0

    invoke-interface {v0, p0}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public setEventFactory(Ljavax/xml/stream/XMLEventFactory;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    return-void
.end method

.method public setEventWriter(Ljavax/xml/stream/XMLEventWriter;)V
    .locals 0

    iput-object p1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->writer:Ljavax/xml/stream/XMLEventWriter;

    return-void
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->startDocument()V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->namespaceStack:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->getCurrentLocation()Ljavax/xml/stream/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/xml/stream/XMLEventFactory;->setLocation(Ljavax/xml/stream/Location;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->needToCallStartDocument:Z

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->needToCallStartDocument:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->docLocator:Lorg/xml/sax/Locator;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->writer:Ljavax/xml/stream/XMLEventWriter;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v2}, Ljavax/xml/stream/XMLEventFactory;->createStartDocument()Ljavax/xml/stream/events/StartDocument;

    move-result-object v2

    invoke-interface {v0, v2}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    :try_start_1
    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->writer:Ljavax/xml/stream/XMLEventWriter;

    iget-object v3, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    check-cast v0, Lorg/xml/sax/ext/Locator2;

    invoke-interface {v0}, Lorg/xml/sax/ext/Locator2;->getEncoding()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->docLocator:Lorg/xml/sax/Locator;

    check-cast v4, Lorg/xml/sax/ext/Locator2;

    invoke-interface {v4}, Lorg/xml/sax/ext/Locator2;->getXMLVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljavax/xml/stream/XMLEventFactory;->createStartDocument(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/StartDocument;

    move-result-object v0

    invoke-interface {v2, v0}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :try_start_2
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->writer:Ljavax/xml/stream/XMLEventWriter;

    iget-object v2, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {v2}, Ljavax/xml/stream/XMLEventFactory;->createStartDocument()Ljavax/xml/stream/events/StartDocument;

    move-result-object v2

    invoke-interface {v0, v2}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V
    :try_end_2
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_0
    iput-boolean v1, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->needToCallStartDocument:Z

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    invoke-virtual {p0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->getCurrentLocation()Ljavax/xml/stream/Location;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljavax/xml/stream/XMLEventFactory;->setLocation(Ljavax/xml/stream/Location;)V

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    invoke-virtual {p0, p4, v0}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->createStartEvents(Lorg/xml/sax/Attributes;[Ljava/util/Collection;)V

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->namespaceStack:Ljava/util/List;

    aget-object v5, v0, v1

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :try_start_3
    filled-new-array {v2, v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p3, v2}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->parseQName(Ljava/lang/String;[Ljava/lang/String;)V

    iget-object v4, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->writer:Ljavax/xml/stream/XMLEventWriter;

    iget-object v5, p0, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXEventWriter;->eventFactory:Ljavax/xml/stream/XMLEventFactory;

    aget-object v6, v2, v1

    aget-object v8, v2, v3

    aget-object v2, v0, v3

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Ljavax/xml/stream/XMLEventFactory;->createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;)Ljavax/xml/stream/events/StartElement;

    move-result-object v0

    invoke-interface {v4, v0}, Ljavax/xml/stream/XMLEventWriter;->add(Ljavax/xml/stream/events/XMLEvent;)V
    :try_end_3
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-super {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    :try_start_4
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-direct {v1, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Lcom/sun/org/apache/xalan/internal/xsltc/trax/SAX2StAXBaseWriter;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    throw v0
.end method
