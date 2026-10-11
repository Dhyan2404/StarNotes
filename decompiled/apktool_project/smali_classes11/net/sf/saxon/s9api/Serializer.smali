.class public Lnet/sf/saxon/s9api/Serializer;
.super Lnet/sf/saxon/s9api/AbstractDestination;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/s9api/Serializer$Property;
    }
.end annotation


# static fields
.field public static final k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/s9api/Serializer$Property;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public f:Lnet/sf/saxon/s9api/Processor;

.field public final g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/sf/saxon/om/StructuredQName;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ljavax/xml/transform/stream/StreamResult;

.field public i:Lnet/sf/saxon/serialize/CharacterMapIndex;

.field public j:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lnet/sf/saxon/s9api/Serializer;->k:Ljava/util/Map;

    invoke-static {}, Lnet/sf/saxon/s9api/Serializer$Property;->values()[Lnet/sf/saxon/s9api/Serializer$Property;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Lnet/sf/saxon/s9api/Serializer;->k:Ljava/util/Map;

    invoke-virtual {v3}, Lnet/sf/saxon/s9api/Serializer$Property;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/s9api/Processor;)V
    .locals 2

    invoke-direct {p0}, Lnet/sf/saxon/s9api/AbstractDestination;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->g:Ljava/util/Map;

    new-instance v0, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v0}, Ljavax/xml/transform/stream/StreamResult;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->h:Ljavax/xml/transform/stream/StreamResult;

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->i:Lnet/sf/saxon/serialize/CharacterMapIndex;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/s9api/Serializer;->j:Z

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/Serializer;->setProcessor(Lnet/sf/saxon/s9api/Processor;)V

    return-void
.end method

.method public static getProperty(Lnet/sf/saxon/s9api/QName;)Lnet/sf/saxon/s9api/Serializer$Property;
    .locals 3

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/QName;->getClarkName()Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lnet/sf/saxon/s9api/Serializer;->k:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/s9api/Serializer$Property;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown serialization property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/s9api/XdmNode;Ljavax/xml/transform/Result;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Serializer;->getLocallyDefinedProperties()Ljava/util/Properties;

    move-result-object p0

    invoke-static {p1, p2, p0}, Lnet/sf/saxon/query/QueryResult;->serialize(Lnet/sf/saxon/om/NodeInfo;Ljavax/xml/transform/Result;Ljava/util/Properties;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/s9api/Serializer;->j:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->h:Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {v0}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    const-string v1, "Failed while closing output file"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/Serializer;->h:Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object p0

    if-eqz p0, :cond_1

    :try_start_1
    invoke-virtual {p0}, Ljava/io/Writer;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_1
    return-void
.end method

.method public getCharacterMapIndex()Lnet/sf/saxon/serialize/CharacterMapIndex;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->i:Lnet/sf/saxon/serialize/CharacterMapIndex;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/serialize/CharacterMapIndex;

    invoke-direct {v0}, Lnet/sf/saxon/serialize/CharacterMapIndex;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->i:Lnet/sf/saxon/serialize/CharacterMapIndex;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/Serializer;->i:Lnet/sf/saxon/serialize/CharacterMapIndex;

    return-object p0
.end method

.method public getCombinedOutputProperties(Ljava/util/Properties;)Ljava/util/Properties;
    .locals 3

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0, p1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    move-object p1, v0

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->g:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/om/StructuredQName;

    iget-object v2, p0, Lnet/sf/saxon/s9api/Serializer;->g:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1}, Lnet/sf/saxon/om/StructuredQName;->getClarkName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, v2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object p1
.end method

.method public getContentHandler()Lorg/xml/sax/ContentHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->f:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Serializer;->getSerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/s9api/Serializer;->getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/event/NamespaceReducer;

    invoke-direct {v0, p0}, Lnet/sf/saxon/event/NamespaceReducer;-><init>(Lnet/sf/saxon/event/Receiver;)V

    new-instance p0, Lnet/sf/saxon/event/ReceivingContentHandler;

    invoke-direct {p0}, Lnet/sf/saxon/event/ReceivingContentHandler;-><init>()V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/ReceivingContentHandler;->setReceiver(Lnet/sf/saxon/event/Receiver;)V

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/event/ReceivingContentHandler;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    return-object p0
.end method

.method public getLocallyDefinedProperties()Ljava/util/Properties;
    .locals 4

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iget-object v1, p0, Lnet/sf/saxon/s9api/Serializer;->g:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/StructuredQName;

    iget-object v3, p0, Lnet/sf/saxon/s9api/Serializer;->g:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Lnet/sf/saxon/om/StructuredQName;->getClarkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getOutputDestination()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->h:Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {v0}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/s9api/Serializer;->h:Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object p0

    return-object p0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->h:Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {v0}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lnet/sf/saxon/s9api/Serializer;->h:Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/s9api/Serializer;->h:Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {p0}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    :try_start_0
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    :cond_2
    return-object v0
.end method

.method public getOutputProperty(Lnet/sf/saxon/s9api/QName;)Ljava/lang/String;
    .locals 0

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/s9api/Serializer;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getOutputProperty(Lnet/sf/saxon/s9api/Serializer$Property;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/sf/saxon/s9api/Serializer;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Serializer$Property;->getQName()Lnet/sf/saxon/s9api/QName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getProcessor()Lnet/sf/saxon/s9api/Processor;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/Serializer;->f:Lnet/sf/saxon/s9api/Processor;

    return-object p0
.end method

.method public getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/event/PipelineConfiguration;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Serializer;->getSerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object v1

    invoke-virtual {v1, p2}, Lnet/sf/saxon/serialize/SerializationProperties;->combineWith(Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object p2

    iget-object v1, p0, Lnet/sf/saxon/s9api/Serializer;->h:Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {v0, v1, p2, p1}, Lnet/sf/saxon/lib/SerializerFactory;->getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    iget-object p2, p0, Lnet/sf/saxon/s9api/AbstractDestination;->helper:Lnet/sf/saxon/s9api/DestinationHelper;

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/DestinationHelper;->getListeners()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_1

    instance-of p2, p1, Lnet/sf/saxon/event/SequenceNormalizer;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lnet/sf/saxon/event/SequenceNormalizer;

    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractDestination;->helper:Lnet/sf/saxon/s9api/DestinationHelper;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/DestinationHelper;->getListeners()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/event/SequenceNormalizer;->onClose(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    new-instance p2, Lnet/sf/saxon/event/CloseNotifier;

    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractDestination;->helper:Lnet/sf/saxon/s9api/DestinationHelper;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/DestinationHelper;->getListeners()Ljava/util/List;

    move-result-object v0

    invoke-direct {p2, p1, v0}, Lnet/sf/saxon/event/CloseNotifier;-><init>(Lnet/sf/saxon/event/Receiver;Ljava/util/List;)V

    move-object p1, p2

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljavax/xml/transform/Result;->getSystemId()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/AbstractDestination;->getDestinationBaseURI()Ljava/net/URI;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/AbstractDestination;->getDestinationBaseURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Ljavax/xml/transform/Result;->setSystemId(Ljava/lang/String;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-object p1

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getResult()Ljavax/xml/transform/Result;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/Serializer;->h:Ljavax/xml/transform/stream/StreamResult;

    return-object p0
.end method

.method public getSerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;
    .locals 2

    new-instance v0, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Serializer;->getLocallyDefinedProperties()Ljava/util/Properties;

    move-result-object v1

    iget-object p0, p0, Lnet/sf/saxon/s9api/Serializer;->i:Lnet/sf/saxon/serialize/CharacterMapIndex;

    invoke-direct {v0, v1, p0}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>(Ljava/util/Properties;Lnet/sf/saxon/serialize/CharacterMapIndex;)V

    return-object v0
.end method

.method public getXMLStreamWriter()Lnet/sf/saxon/event/StreamWriterToReceiver;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->f:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Serializer;->getSerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/s9api/Serializer;->getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/event/NamespaceReducer;

    invoke-direct {v0, p0}, Lnet/sf/saxon/event/NamespaceReducer;-><init>(Lnet/sf/saxon/event/Receiver;)V

    new-instance p0, Lnet/sf/saxon/event/StreamWriterToReceiver;

    invoke-direct {p0, v0}, Lnet/sf/saxon/event/StreamWriterToReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    return-object p0
.end method

.method public isMustCloseAfterUse()Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/s9api/Serializer;->j:Z

    return p0
.end method

.method public serialize(Ljavax/xml/transform/Source;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->f:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/s9api/Serializer;->h:Ljavax/xml/transform/stream/StreamResult;

    new-instance v2, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Serializer;->getLocallyDefinedProperties()Ljava/util/Properties;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/lib/SerializerFactory;->getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/s9api/Serializer;->f:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lnet/sf/saxon/event/Sender;->send(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/AbstractDestination;->closeAndNotify()V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public serializeNode(Lnet/sf/saxon/s9api/XdmNode;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->h:Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {v0}, Ljavax/xml/transform/stream/StreamResult;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljavax/xml/transform/stream/StreamResult;->getWriter()Ljava/io/Writer;

    move-result-object v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljavax/xml/transform/stream/StreamResult;->getSystemId()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Either an outputStream, or a Writer, or a File must be supplied"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/s9api/Serializer;->a(Lnet/sf/saxon/s9api/XdmNode;Ljavax/xml/transform/Result;)V

    return-void
.end method

.method public serializeNodeToString(Lnet/sf/saxon/s9api/XdmNode;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    new-instance v1, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v1, v0}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    invoke-virtual {p0, p1, v1}, Lnet/sf/saxon/s9api/Serializer;->a(Lnet/sf/saxon/s9api/XdmNode;Ljavax/xml/transform/Result;)V

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public serializeToString(Ljavax/xml/transform/Source;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->f:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object v0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    new-instance v2, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v2, v1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/Writer;)V

    new-instance v3, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Serializer;->getLocallyDefinedProperties()Ljava/util/Properties;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v0, v2, v3}, Lnet/sf/saxon/lib/SerializerFactory;->getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object v0

    iget-object v2, p0, Lnet/sf/saxon/s9api/Serializer;->f:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v2}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lnet/sf/saxon/event/Sender;->send(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/AbstractDestination;->closeAndNotify()V

    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public serializeXdmValue(Lnet/sf/saxon/s9api/XdmValue;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    instance-of v0, p1, Lnet/sf/saxon/s9api/XdmNode;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/s9api/XdmNode;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/Serializer;->serializeNode(Lnet/sf/saxon/s9api/XdmNode;)V

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v0, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Serializer;->getLocallyDefinedProperties()Ljava/util/Properties;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/s9api/Serializer;->i:Lnet/sf/saxon/serialize/CharacterMapIndex;

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>(Ljava/util/Properties;Lnet/sf/saxon/serialize/CharacterMapIndex;)V

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmValue;->getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/GroundedValue;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object p1

    iget-object v1, p0, Lnet/sf/saxon/s9api/Serializer;->f:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/s9api/Serializer;->h:Ljavax/xml/transform/stream/StreamResult;

    invoke-static {p1, v1, v2, v0}, Lnet/sf/saxon/query/QueryResult;->serializeSequence(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/Configuration;Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/AbstractDestination;->closeAndNotify()V

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setCharacterMap(Lnet/sf/saxon/serialize/CharacterMapIndex;)V
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->i:Lnet/sf/saxon/serialize/CharacterMapIndex;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lnet/sf/saxon/serialize/CharacterMapIndex;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/serialize/CharacterMapIndex;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    if-eq v0, p1, :cond_1

    invoke-virtual {v0}, Lnet/sf/saxon/serialize/CharacterMapIndex;->copy()Lnet/sf/saxon/serialize/CharacterMapIndex;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/serialize/CharacterMapIndex;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/serialize/CharacterMap;

    invoke-virtual {v1}, Lnet/sf/saxon/serialize/CharacterMap;->getName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lnet/sf/saxon/serialize/CharacterMapIndex;->putCharacterMap(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/serialize/CharacterMap;)V

    goto :goto_0

    :cond_1
    move-object p1, v0

    :cond_2
    :goto_1
    iput-object p1, p0, Lnet/sf/saxon/s9api/Serializer;->i:Lnet/sf/saxon/serialize/CharacterMapIndex;

    return-void
.end method

.method public setCloseOnCompletion(Z)V
    .locals 0

    iput-boolean p1, p0, Lnet/sf/saxon/s9api/Serializer;->j:Z

    return-void
.end method

.method public setOutputFile(Ljava/io/File;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->h:Ljavax/xml/transform/stream/StreamResult;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/transform/stream/StreamResult;->setOutputStream(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->h:Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {v0, v1}, Ljavax/xml/transform/stream/StreamResult;->setWriter(Ljava/io/Writer;)V

    iget-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->h:Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {v0, p1}, Ljavax/xml/transform/stream/StreamResult;->setSystemId(Ljava/io/File;)V

    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/AbstractDestination;->setDestinationBaseURI(Ljava/net/URI;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/s9api/Serializer;->j:Z

    return-void
.end method

.method public setOutputProperties(Ljava/util/Properties;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    iget-object v2, p0, Lnet/sf/saxon/s9api/Serializer;->g:Ljava/util/Map;

    invoke-static {v1}, Lnet/sf/saxon/om/StructuredQName;->fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setOutputProperties(Lnet/sf/saxon/serialize/SerializationProperties;)V
    .locals 1

    .line 3
    invoke-virtual {p1}, Lnet/sf/saxon/serialize/SerializationProperties;->getProperties()Ljava/util/Properties;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/s9api/Serializer;->setOutputProperties(Ljava/util/Properties;)V

    .line 4
    invoke-virtual {p1}, Lnet/sf/saxon/serialize/SerializationProperties;->getCharacterMapIndex()Lnet/sf/saxon/serialize/CharacterMapIndex;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/Serializer;->setCharacterMap(Lnet/sf/saxon/serialize/CharacterMapIndex;)V

    return-void
.end method

.method public setOutputProperty(Lnet/sf/saxon/s9api/QName;Ljava/lang/String;)V
    .locals 4

    .line 6
    iget-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->f:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object v0

    .line 7
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    const-string v3, "http://saxon.sf.net/"

    if-nez v2, :cond_0

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getClarkName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, p2}, Lnet/sf/saxon/lib/SerializerFactory;->checkOutputProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getLocalName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "next-in-chain"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "saxon:next-in-chain is not a valid serialization property"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    if-nez p2, :cond_3

    .line 12
    iget-object p0, p0, Lnet/sf/saxon/s9api/Serializer;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 13
    :cond_3
    iget-object p0, p0, Lnet/sf/saxon/s9api/Serializer;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void

    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOutputProperty(Lnet/sf/saxon/s9api/Serializer$Property;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->f:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object v0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Serializer$Property;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lnet/sf/saxon/lib/SerializerFactory;->checkOutputProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_0

    .line 3
    iget-object p0, p0, Lnet/sf/saxon/s9api/Serializer;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Serializer$Property;->getQName()Lnet/sf/saxon/s9api/QName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/Serializer;->g:Ljava/util/Map;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Serializer$Property;->getQName()Lnet/sf/saxon/s9api/QName;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void

    :catch_0
    move-exception p0

    .line 5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setOutputStream(Ljava/io/OutputStream;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->h:Ljavax/xml/transform/stream/StreamResult;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/transform/stream/StreamResult;->setWriter(Ljava/io/Writer;)V

    iget-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->h:Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {v0, v1}, Ljavax/xml/transform/stream/StreamResult;->setSystemId(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->h:Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {v0, p1}, Ljavax/xml/transform/stream/StreamResult;->setOutputStream(Ljava/io/OutputStream;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/s9api/Serializer;->j:Z

    return-void
.end method

.method public setOutputWriter(Ljava/io/Writer;)V
    .locals 2

    iget-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->h:Ljavax/xml/transform/stream/StreamResult;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/transform/stream/StreamResult;->setOutputStream(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->h:Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {v0, v1}, Ljavax/xml/transform/stream/StreamResult;->setSystemId(Ljava/lang/String;)V

    iget-object v0, p0, Lnet/sf/saxon/s9api/Serializer;->h:Ljavax/xml/transform/stream/StreamResult;

    invoke-virtual {v0, p1}, Ljavax/xml/transform/stream/StreamResult;->setWriter(Ljava/io/Writer;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/s9api/Serializer;->j:Z

    return-void
.end method

.method public setProcessor(Lnet/sf/saxon/s9api/Processor;)V
    .locals 0

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lnet/sf/saxon/s9api/Serializer;->f:Lnet/sf/saxon/s9api/Processor;

    return-void
.end method
