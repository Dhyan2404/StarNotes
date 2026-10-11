.class public Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/stream/XMLEventWriter;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    return-void
.end method


# virtual methods
.method public add(Ljavax/xml/stream/XMLEventReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    :goto_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;->add(Ljavax/xml/stream/events/XMLEvent;)V

    goto :goto_0

    :cond_0
    return-void

    .line 3
    :cond_1
    new-instance p0, Ljavax/xml/stream/XMLStreamException;

    const-string p1, "Event reader shouldn\'t be null"

    invoke-direct {p0, p1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public add(Ljavax/xml/stream/events/XMLEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 4
    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 5
    :pswitch_1
    check-cast p1, Ljavax/xml/stream/events/Namespace;

    .line 6
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljavax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 7
    :pswitch_2
    check-cast p1, Ljavax/xml/stream/events/Characters;

    .line 8
    invoke-interface {p1}, Ljavax/xml/stream/events/Characters;->isCData()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 10
    :pswitch_3
    check-cast p1, Ljavax/xml/stream/events/DTD;

    .line 11
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/events/DTD;->getDocumentTypeDeclaration()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeDTD(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 12
    :pswitch_4
    check-cast p1, Ljavax/xml/stream/events/Attribute;

    .line 13
    invoke-interface {p1}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    .line 14
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v1, v2, v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 15
    :pswitch_5
    check-cast p1, Ljavax/xml/stream/events/EntityReference;

    .line 16
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/events/EntityReference;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeEntityRef(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 17
    :pswitch_6
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    goto/16 :goto_2

    .line 18
    :pswitch_7
    check-cast p1, Ljavax/xml/stream/events/StartDocument;

    .line 19
    :try_start_0
    iget-object v0, p0, Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/events/StartDocument;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/xml/stream/events/StartDocument;->getVersion()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_2

    .line 20
    :catch_0
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/events/StartDocument;->getVersion()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 21
    :pswitch_8
    check-cast p1, Ljavax/xml/stream/events/Comment;

    .line 22
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/events/Comment;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeComment(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 23
    :pswitch_9
    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object p1

    .line 24
    invoke-interface {p1}, Ljavax/xml/stream/events/Characters;->isCData()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 27
    :pswitch_a
    check-cast p1, Ljavax/xml/stream/events/ProcessingInstruction;

    .line 28
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/events/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljavax/xml/stream/events/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljavax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 29
    :pswitch_b
    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    goto :goto_2

    .line 30
    :pswitch_c
    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->asStartElement()Ljavax/xml/stream/events/StartElement;

    move-result-object p1

    .line 31
    invoke-interface {p1}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v3, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    invoke-interface {p1}, Ljavax/xml/stream/events/StartElement;->getNamespaces()Ljava/util/Iterator;

    move-result-object v0

    .line 34
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/xml/stream/events/Namespace;

    .line 36
    iget-object v2, p0, Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v1}, Ljavax/xml/stream/events/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljavax/xml/stream/events/Namespace;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 37
    :cond_1
    invoke-interface {p1}, Ljavax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object p1

    .line 38
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/Attribute;

    .line 40
    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    .line 41
    iget-object v2, p0, Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v3, v4, v1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
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

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->close()V

    return-void
.end method

.method public flush()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    return-void
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p0}, Ljavax/xml/stream/XMLStreamWriter;->getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;

    move-result-object p0

    return-object p0
.end method

.method public getPrefix(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLStreamWriter;->getPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public setDefaultNamespace(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLStreamWriter;->setDefaultNamespace(Ljava/lang/String;)V

    return-void
.end method

.method public setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p0, p1}, Ljavax/xml/stream/XMLStreamWriter;->setNamespaceContext(Ljavax/xml/namespace/NamespaceContext;)V

    return-void
.end method

.method public setPrefix(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object p0, p0, Lcom/sun/xml/internal/stream/writers/XMLEventWriterImpl;->fStreamWriter:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p0, p1, p2}, Ljavax/xml/stream/XMLStreamWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
