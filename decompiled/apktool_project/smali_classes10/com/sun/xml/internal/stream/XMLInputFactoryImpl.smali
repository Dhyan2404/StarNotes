.class public Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;
.super Ljavax/xml/stream/XMLInputFactory;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z


# instance fields
.field fEventReaderInstance:Z

.field fPropertyChanged:Z

.field private fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

.field fReuseInstance:Z

.field private fTempReader:Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljavax/xml/stream/XMLInputFactory;-><init>()V

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;-><init>(I)V

    iput-object v0, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fTempReader:Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fPropertyChanged:Z

    iput-boolean v1, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fReuseInstance:Z

    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fEventReaderInstance:Z

    return-void
.end method


# virtual methods
.method public createFilteredReader(Ljavax/xml/stream/XMLEventReader;Ljavax/xml/stream/EventFilter;)Ljavax/xml/stream/XMLEventReader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1
    new-instance p0, Lcom/sun/xml/internal/stream/EventFilterSupport;

    invoke-direct {p0, p1, p2}, Lcom/sun/xml/internal/stream/EventFilterSupport;-><init>(Ljavax/xml/stream/XMLEventReader;Ljavax/xml/stream/EventFilter;)V

    return-object p0
.end method

.method public createFilteredReader(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/StreamFilter;)Ljavax/xml/stream/XMLStreamReader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2
    new-instance p0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;

    invoke-direct {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamFilterImpl;-><init>(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/StreamFilter;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public createXMLEventReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLEventReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->initEventReader()V

    .line 2
    new-instance v0, Lcom/sun/xml/internal/stream/XMLEventReaderImpl;

    invoke-virtual {p0, p1}, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->createXMLStreamReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/xml/internal/stream/XMLEventReaderImpl;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    return-object v0
.end method

.method public createXMLEventReader(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLEventReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 9
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->initEventReader()V

    .line 10
    new-instance v0, Lcom/sun/xml/internal/stream/XMLEventReaderImpl;

    invoke-virtual {p0, p1, p2}, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->createXMLStreamReader(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/xml/internal/stream/XMLEventReaderImpl;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    return-object v0
.end method

.method public createXMLEventReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLEventReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->initEventReader()V

    .line 4
    new-instance v0, Lcom/sun/xml/internal/stream/XMLEventReaderImpl;

    invoke-virtual {p0, p1}, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->createXMLStreamReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/xml/internal/stream/XMLEventReaderImpl;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    return-object v0
.end method

.method public createXMLEventReader(Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/stream/XMLEventReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->initEventReader()V

    .line 8
    new-instance v0, Lcom/sun/xml/internal/stream/XMLEventReaderImpl;

    invoke-virtual {p0, p1, p2}, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/xml/internal/stream/XMLEventReaderImpl;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    return-object v0
.end method

.method public createXMLEventReader(Ljava/lang/String;Ljava/io/Reader;)Ljavax/xml/stream/XMLEventReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 11
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->initEventReader()V

    .line 12
    new-instance v0, Lcom/sun/xml/internal/stream/XMLEventReaderImpl;

    invoke-virtual {p0, p1, p2}, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->createXMLStreamReader(Ljava/lang/String;Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/xml/internal/stream/XMLEventReaderImpl;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    return-object v0
.end method

.method public createXMLEventReader(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/XMLEventReader;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 13
    new-instance p0, Lcom/sun/xml/internal/stream/XMLEventReaderImpl;

    invoke-direct {p0, p1}, Lcom/sun/xml/internal/stream/XMLEventReaderImpl;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    return-object p0
.end method

.method public createXMLEventReader(Ljavax/xml/transform/Source;)Ljavax/xml/stream/XMLEventReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->initEventReader()V

    .line 6
    new-instance v0, Lcom/sun/xml/internal/stream/XMLEventReaderImpl;

    invoke-virtual {p0, p1}, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->createXMLStreamReader(Ljavax/xml/transform/Source;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/sun/xml/internal/stream/XMLEventReaderImpl;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    return-object v0
.end method

.method public createXMLStreamReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0, v6}, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->getXMLStreamReaderImpl(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    return-object p0
.end method

.method public createXMLStreamReader(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/xml/stream/XMLStreamReader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 10
    new-instance v6, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, v6

    move-object v4, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v6}, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->getXMLStreamReaderImpl(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    return-object p0
.end method

.method public createXMLStreamReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 3
    new-instance v6, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v6}, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->getXMLStreamReaderImpl(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    return-object p0
.end method

.method public createXMLStreamReader(Ljava/lang/String;Ljava/io/InputStream;)Ljavax/xml/stream/XMLStreamReader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 8
    new-instance v6, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v6}, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->getXMLStreamReaderImpl(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    return-object p0
.end method

.method public createXMLStreamReader(Ljava/lang/String;Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 5
    new-instance v6, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, v6}, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->getXMLStreamReaderImpl(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object p0

    return-object p0
.end method

.method public createXMLStreamReader(Ljavax/xml/transform/Source;)Ljavax/xml/stream/XMLStreamReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 7
    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;

    invoke-virtual {p0, p1}, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->jaxpSourcetoXMLInputSource(Ljavax/xml/transform/Source;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    move-result-object p1

    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->getNewPropertyManager()Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V

    return-object v0
.end method

.method public getEventAllocator()Ljavax/xml/stream/util/XMLEventAllocator;
    .locals 1

    const-string v0, "javax.xml.stream.allocator"

    invoke-virtual {p0, v0}, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/xml/stream/util/XMLEventAllocator;

    return-object p0
.end method

.method public getNewPropertyManager()Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;
    .locals 4

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    iget-object v1, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    invoke-direct {v0, v1}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;-><init>(Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V

    iget-boolean v1, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fEventReaderInstance:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/Boolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/Boolean;-><init>(Z)V

    const-string v3, "http://java.sun.com/xml/stream/properties/reader-in-defined-state"

    invoke-virtual {v0, v3, v1}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fEventReaderInstance:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fPropertyChanged:Z

    :cond_0
    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "Property not supported"

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    invoke-virtual {v1, p1}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->containsProperty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getXMLReporter()Ljavax/xml/stream/XMLReporter;
    .locals 1

    iget-object p0, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    const-string v0, "javax.xml.stream.reporter"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/xml/stream/XMLReporter;

    return-object p0
.end method

.method public getXMLResolver()Ljavax/xml/stream/XMLResolver;
    .locals 1

    iget-object p0, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    const-string v0, "javax.xml.stream.resolver"

    invoke-virtual {p0, v0}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/xml/stream/XMLResolver;

    return-object p0
.end method

.method public getXMLStreamReaderImpl(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)Ljavax/xml/stream/XMLStreamReader;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    iget-object v0, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fTempReader:Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fPropertyChanged:Z

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;

    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->getNewPropertyManager()Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V

    iput-object v0, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fTempReader:Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;

    return-object v0

    :cond_0
    iget-boolean v2, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fReuseInstance:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->canReuse()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fPropertyChanged:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fTempReader:Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;

    invoke-virtual {v0}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->reset()V

    iget-object v0, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fTempReader:Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;->setInputSource(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;)V

    iput-boolean v1, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fPropertyChanged:Z

    iget-object p0, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fTempReader:Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;

    return-object p0

    :cond_1
    iput-boolean v1, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fPropertyChanged:Z

    new-instance v0, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;

    invoke-virtual {p0}, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->getNewPropertyManager()Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;-><init>(Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;)V

    iput-object v0, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fTempReader:Lcom/sun/org/apache/xerces/internal/impl/XMLStreamReaderImpl;

    return-object v0
.end method

.method public initEventReader()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fEventReaderInstance:Z

    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fPropertyChanged:Z

    return-void
.end method

.method public isPropertySupported(Ljava/lang/String;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    invoke-virtual {p0, p1}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->containsProperty(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public jaxpSourcetoXMLInputSource(Ljavax/xml/transform/Source;)Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;
    .locals 7

    instance-of p0, p1, Ljavax/xml/transform/stream/StreamSource;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    check-cast p1, Ljavax/xml/transform/stream/StreamSource;

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamSource;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamSource;->getPublicId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamSource;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-virtual {p1}, Ljavax/xml/transform/stream/StreamSource;->getReader()Ljava/io/Reader;

    move-result-object p0

    if-eqz v5, :cond_0

    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Ljava/lang/String;)V

    return-object p0

    :cond_0
    if-eqz p0, :cond_1

    new-instance p1, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    move-object v5, p0

    invoke-direct/range {v1 .. v6}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/Reader;Ljava/lang/String;)V

    return-object p1

    :cond_1
    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-direct {p0, v2, v3, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_2
    instance-of p0, p1, Ljavax/xml/transform/Source;

    if-eqz p0, :cond_3

    new-instance p0, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;

    invoke-interface {p1}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1, v0}, Lcom/sun/org/apache/xerces/internal/xni/parser/XMLInputSource;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object p0

    :cond_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " type is not supported"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEventAllocator(Ljavax/xml/stream/util/XMLEventAllocator;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    const-string v0, "javax.xml.stream.allocator"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    invoke-virtual {v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->containsProperty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "reuse-instance"

    if-eq p1, v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fPropertyChanged:Z

    goto :goto_1

    :cond_1
    :goto_0
    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fReuseInstance:Z

    :goto_1
    iget-object p0, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    invoke-virtual {p0, p1, p2}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Property "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not supported"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setXMLReporter(Ljavax/xml/stream/XMLReporter;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    const-string v0, "javax.xml.stream.reporter"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setXMLResolver(Ljavax/xml/stream/XMLResolver;)V
    .locals 1

    iget-object p0, p0, Lcom/sun/xml/internal/stream/XMLInputFactoryImpl;->fPropertyManager:Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;

    const-string v0, "javax.xml.stream.resolver"

    invoke-virtual {p0, v0, p1}, Lcom/sun/org/apache/xerces/internal/impl/PropertyManager;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
