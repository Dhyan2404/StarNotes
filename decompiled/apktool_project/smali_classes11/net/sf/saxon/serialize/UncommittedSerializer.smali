.class public Lnet/sf/saxon/serialize/UncommittedSerializer;
.super Lnet/sf/saxon/event/ProxyReceiver;
.source "SourceFile"


# instance fields
.field public e:Z

.field public f:Lnet/sf/saxon/event/EventBuffer;

.field public final g:Ljavax/xml/transform/Result;

.field public final h:Lnet/sf/saxon/serialize/SerializationProperties;


# direct methods
.method public constructor <init>(Ljavax/xml/transform/Result;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/serialize/SerializationProperties;)V
    .locals 0

    invoke-direct {p0, p2}, Lnet/sf/saxon/event/ProxyReceiver;-><init>(Lnet/sf/saxon/event/Receiver;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->e:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->f:Lnet/sf/saxon/event/EventBuffer;

    iput-object p1, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->g:Ljavax/xml/transform/Result;

    iput-object p3, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->h:Lnet/sf/saxon/serialize/SerializationProperties;

    return-void
.end method


# virtual methods
.method public append(Lnet/sf/saxon/om/Item;Lnet/sf/saxon/s9api/Location;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of p3, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz p3, :cond_0

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    const/4 p3, 0x2

    invoke-interface {p1, p0, p3, p2}, Lnet/sf/saxon/om/NodeInfo;->copy(Lnet/sf/saxon/event/Receiver;ILnet/sf/saxon/s9api/Location;)V

    goto :goto_0

    :cond_0
    iget-boolean p2, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->e:Z

    if-nez p2, :cond_1

    const-string p2, "xml"

    invoke-virtual {p0, p2}, Lnet/sf/saxon/serialize/UncommittedSerializer;->c(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyReceiver;->getNextReceiver()Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    invoke-interface {p0, p1}, Lnet/sf/saxon/event/Receiver;->append(Lnet/sf/saxon/om/Item;)V

    :goto_0
    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Ljava/util/Properties;

    iget-object v1, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->h:Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-virtual {v1}, Lnet/sf/saxon/serialize/SerializationProperties;->getProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V

    const-string v1, "method"

    invoke-virtual {v0, v1, p1}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object p1

    new-instance v1, Lnet/sf/saxon/serialize/SerializationProperties;

    iget-object v2, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->h:Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-virtual {v2}, Lnet/sf/saxon/serialize/SerializationProperties;->getCharacterMapIndex()Lnet/sf/saxon/serialize/CharacterMapIndex;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>(Ljava/util/Properties;Lnet/sf/saxon/serialize/CharacterMapIndex;)V

    iget-object v0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->h:Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-virtual {v0}, Lnet/sf/saxon/serialize/SerializationProperties;->getValidationFactory()Lnet/sf/saxon/event/FilterFactory;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/serialize/SerializationProperties;->setValidationFactory(Lnet/sf/saxon/event/FilterFactory;)V

    iget-object v0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->g:Ljavax/xml/transform/Result;

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v2}, Lnet/sf/saxon/lib/SerializerFactory;->getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->e:Z

    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->open()V

    iget-object v0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->f:Lnet/sf/saxon/event/EventBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/event/EventBuffer;->replay(Lnet/sf/saxon/event/Receiver;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->f:Lnet/sf/saxon/event/EventBuffer;

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/ProxyReceiver;->setUnderlyingReceiver(Lnet/sf/saxon/event/Receiver;)V

    return-void
.end method

.method public characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyReceiver;->getNextReceiver()Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->f:Lnet/sf/saxon/event/EventBuffer;

    if-nez v0, :cond_1

    new-instance v0, Lnet/sf/saxon/event/EventBuffer;

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/event/EventBuffer;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    iput-object v0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->f:Lnet/sf/saxon/event/EventBuffer;

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->f:Lnet/sf/saxon/event/EventBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lnet/sf/saxon/event/EventBuffer;->characters(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    invoke-static {p1}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "xml"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/serialize/UncommittedSerializer;->c(Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->e:Z

    if-nez v0, :cond_0

    const-string v0, "xml"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/UncommittedSerializer;->c(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyReceiver;->getNextReceiver()Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/event/Receiver;->close()V

    return-void
.end method

.method public comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyReceiver;->getNextReceiver()Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3}, Lnet/sf/saxon/event/Receiver;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->f:Lnet/sf/saxon/event/EventBuffer;

    if-nez v0, :cond_1

    new-instance v0, Lnet/sf/saxon/event/EventBuffer;

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/event/EventBuffer;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    iput-object v0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->f:Lnet/sf/saxon/event/EventBuffer;

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->f:Lnet/sf/saxon/event/EventBuffer;

    invoke-virtual {p0, p1, p2, p3}, Lnet/sf/saxon/event/EventBuffer;->comment(Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :goto_0
    return-void
.end method

.method public endDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->e:Z

    if-nez v0, :cond_0

    const-string v0, "xml"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/UncommittedSerializer;->c(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyReceiver;->getNextReceiver()Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/event/Receiver;->endDocument()V

    return-void
.end method

.method public open()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->e:Z

    return-void
.end method

.method public processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyReceiver;->getNextReceiver()Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    invoke-interface {p0, p1, p2, p3, p4}, Lnet/sf/saxon/event/Receiver;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->f:Lnet/sf/saxon/event/EventBuffer;

    if-nez v0, :cond_1

    new-instance v0, Lnet/sf/saxon/event/EventBuffer;

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/event/EventBuffer;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    iput-object v0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->f:Lnet/sf/saxon/event/EventBuffer;

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->f:Lnet/sf/saxon/event/EventBuffer;

    invoke-virtual {p0, p1, p2, p3, p4}, Lnet/sf/saxon/event/EventBuffer;->processingInstruction(Ljava/lang/String;Lnet/sf/saxon/str/UnicodeString;Lnet/sf/saxon/s9api/Location;I)V

    :goto_0
    return-void
.end method

.method public startDocument(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyReceiver;->getNextReceiver()Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    invoke-interface {p0, p1}, Lnet/sf/saxon/event/Receiver;->startDocument(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->f:Lnet/sf/saxon/event/EventBuffer;

    if-nez v0, :cond_1

    new-instance v0, Lnet/sf/saxon/event/EventBuffer;

    invoke-virtual {p0}, Lnet/sf/saxon/event/SequenceReceiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/event/EventBuffer;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    iput-object v0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->f:Lnet/sf/saxon/event/EventBuffer;

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->f:Lnet/sf/saxon/event/EventBuffer;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/EventBuffer;->startDocument(I)V

    :goto_0
    return-void
.end method

.method public startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->e:Z

    if-nez v0, :cond_3

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v1

    const-string v2, "html"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/serialize/UncommittedSerializer;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "xml"

    if-eqz v0, :cond_2

    const-string v0, "http://www.w3.org/1999/xhtml"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/serialize/UncommittedSerializer;->h:Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-virtual {v0}, Lnet/sf/saxon/serialize/SerializationProperties;->getProperties()Ljava/util/Properties;

    move-result-object v0

    const-string v1, "{http://saxon.sf.net/}stylesheet-version"

    invoke-virtual {v0, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "10"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v2}, Lnet/sf/saxon/serialize/UncommittedSerializer;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "xhtml"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/serialize/UncommittedSerializer;->c(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lnet/sf/saxon/serialize/UncommittedSerializer;->c(Ljava/lang/String;)V

    :cond_3
    :goto_0
    invoke-virtual {p0}, Lnet/sf/saxon/event/ProxyReceiver;->getNextReceiver()Lnet/sf/saxon/event/Receiver;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move v7, p6

    invoke-interface/range {v1 .. v7}, Lnet/sf/saxon/event/Receiver;->startElement(Lnet/sf/saxon/om/NodeName;Lnet/sf/saxon/type/SchemaType;Lnet/sf/saxon/om/AttributeMap;Lnet/sf/saxon/om/NamespaceMap;Lnet/sf/saxon/s9api/Location;I)V

    return-void
.end method
