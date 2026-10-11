.class public Lcom/sun/xml/internal/stream/EventFilterSupport;
.super Ljavax/xml/stream/util/EventReaderDelegate;
.source "SourceFile"


# instance fields
.field fEventFilter:Ljavax/xml/stream/EventFilter;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLEventReader;Ljavax/xml/stream/EventFilter;)V
    .locals 0

    invoke-direct {p0}, Ljavax/xml/stream/util/EventReaderDelegate;-><init>()V

    invoke-virtual {p0, p1}, Ljavax/xml/stream/util/EventReaderDelegate;->setParent(Ljavax/xml/stream/XMLEventReader;)V

    iput-object p2, p0, Lcom/sun/xml/internal/stream/EventFilterSupport;->fEventFilter:Ljavax/xml/stream/EventFilter;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/EventFilterSupport;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/EventFilterSupport;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public nextEvent()Ljavax/xml/stream/events/XMLEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-super {p0}, Ljavax/xml/stream/util/EventReaderDelegate;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Ljavax/xml/stream/util/EventReaderDelegate;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/xml/internal/stream/EventFilterSupport;->fEventFilter:Ljavax/xml/stream/EventFilter;

    invoke-interface {v1, v0}, Ljavax/xml/stream/EventFilter;->accept(Ljavax/xml/stream/events/XMLEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/EventFilterSupport;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public nextTag()Ljavax/xml/stream/events/XMLEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-super {p0}, Ljavax/xml/stream/util/EventReaderDelegate;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Ljavax/xml/stream/util/EventReaderDelegate;->nextTag()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    iget-object v1, p0, Lcom/sun/xml/internal/stream/EventFilterSupport;->fEventFilter:Ljavax/xml/stream/EventFilter;

    invoke-interface {v1, v0}, Ljavax/xml/stream/EventFilter;->accept(Ljavax/xml/stream/events/XMLEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/EventFilterSupport;->nextTag()Ljavax/xml/stream/events/XMLEvent;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance p0, Ljava/util/NoSuchElementException;

    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    throw p0
.end method

.method public peek()Ljavax/xml/stream/events/XMLEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    invoke-super {p0}, Ljavax/xml/stream/util/EventReaderDelegate;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object v1, p0, Lcom/sun/xml/internal/stream/EventFilterSupport;->fEventFilter:Ljavax/xml/stream/EventFilter;

    invoke-interface {v1, v0}, Ljavax/xml/stream/EventFilter;->accept(Ljavax/xml/stream/events/XMLEvent;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    invoke-super {p0}, Ljavax/xml/stream/util/EventReaderDelegate;->next()Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/EventFilterSupport;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object p0

    return-object p0
.end method
