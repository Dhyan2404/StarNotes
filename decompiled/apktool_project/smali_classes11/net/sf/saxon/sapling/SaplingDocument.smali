.class public Lnet/sf/saxon/sapling/SaplingDocument;
.super Lnet/sf/saxon/sapling/SaplingNode;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ActiveSource;


# instance fields
.field public e:Ljava/lang/String;

.field public f:Lnet/sf/saxon/ma/trie/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/sf/saxon/ma/trie/ImmutableList<",
            "Lnet/sf/saxon/sapling/SaplingNode;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lnet/sf/saxon/sapling/SaplingNode;-><init>()V

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/sapling/SaplingNode;->emptyNodeList()Lnet/sf/saxon/ma/trie/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/sapling/SaplingDocument;->f:Lnet/sf/saxon/ma/trie/ImmutableList;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lnet/sf/saxon/sapling/SaplingNode;-><init>()V

    .line 4
    invoke-virtual {p0}, Lnet/sf/saxon/sapling/SaplingNode;->emptyNodeList()Lnet/sf/saxon/ma/trie/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/sapling/SaplingDocument;->f:Lnet/sf/saxon/ma/trie/ImmutableList;

    .line 5
    iput-object p1, p0, Lnet/sf/saxon/sapling/SaplingDocument;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lnet/sf/saxon/sapling/SaplingDocument;
    .locals 2

    new-instance v0, Lnet/sf/saxon/sapling/SaplingDocument;

    iget-object v1, p0, Lnet/sf/saxon/sapling/SaplingDocument;->e:Ljava/lang/String;

    invoke-direct {v0, v1}, Lnet/sf/saxon/sapling/SaplingDocument;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/sapling/SaplingDocument;->f:Lnet/sf/saxon/ma/trie/ImmutableList;

    iput-object p0, v0, Lnet/sf/saxon/sapling/SaplingDocument;->f:Lnet/sf/saxon/ma/trie/ImmutableList;

    return-object v0
.end method

.method public deliver(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance v0, Lnet/sf/saxon/event/NamespaceReducer;

    invoke-direct {v0, p1}, Lnet/sf/saxon/event/NamespaceReducer;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->open()V

    iget-object p1, p0, Lnet/sf/saxon/sapling/SaplingDocument;->e:Ljava/lang/String;

    invoke-interface {v0, p1}, Ljavax/xml/transform/Result;->setSystemId(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-interface {v0, p1}, Lnet/sf/saxon/event/Receiver;->startDocument(I)V

    iget-object p0, p0, Lnet/sf/saxon/sapling/SaplingDocument;->f:Lnet/sf/saxon/ma/trie/ImmutableList;

    invoke-virtual {p0}, Lnet/sf/saxon/ma/trie/ImmutableList;->reverse()Lnet/sf/saxon/ma/trie/ImmutableList;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/ma/trie/ImmutableList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/sf/saxon/sapling/SaplingNode;

    invoke-virtual {p1, v0, p2}, Lnet/sf/saxon/sapling/SaplingNode;->deliver(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->endDocument()V

    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->close()V

    return-void
.end method

.method public getNodeKind()I
    .locals 0

    const/16 p0, 0x9

    return p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/sapling/SaplingDocument;->e:Ljava/lang/String;

    return-object p0
.end method

.method public send(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/s9api/Destination;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p1

    new-instance v0, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-direct {v0}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>()V

    invoke-interface {p2, p1, v0}, Lnet/sf/saxon/s9api/Destination;->getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/sapling/SaplingDocument;->deliver(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public serialize(Lnet/sf/saxon/s9api/Serializer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Serializer;->getProcessor()Lnet/sf/saxon/s9api/Processor;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/sapling/SaplingDocument;->send(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/s9api/Destination;)V

    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public toNodeInfo(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/NodeInfo;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/lib/ParseOptions;->getModel()Lnet/sf/saxon/om/TreeModel;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/sf/saxon/om/TreeModel;->makeBuilder(Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Builder;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/event/Builder;->open()V

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/sapling/SaplingDocument;->deliver(Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-virtual {v0}, Lnet/sf/saxon/event/Builder;->close()V

    invoke-virtual {v0}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public toXdmNode(Lnet/sf/saxon/s9api/Processor;)Lnet/sf/saxon/s9api/XdmNode;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/sapling/SaplingDocument;->toNodeInfo(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmNode;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public varargs withChild([Lnet/sf/saxon/sapling/SaplingNode;)Lnet/sf/saxon/sapling/SaplingDocument;
    .locals 5

    invoke-virtual {p0}, Lnet/sf/saxon/sapling/SaplingDocument;->a()Lnet/sf/saxon/sapling/SaplingDocument;

    move-result-object p0

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    invoke-virtual {v2}, Lnet/sf/saxon/sapling/SaplingNode;->getNodeKind()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    const/16 v4, 0x8

    if-eq v3, v4, :cond_1

    const/16 v2, 0x9

    if-eq v3, v2, :cond_0

    goto :goto_1

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Cannot add document child to a document node"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    iget-object v3, p0, Lnet/sf/saxon/sapling/SaplingDocument;->f:Lnet/sf/saxon/ma/trie/ImmutableList;

    invoke-virtual {v3, v2}, Lnet/sf/saxon/ma/trie/ImmutableList;->prepend(Ljava/lang/Object;)Lnet/sf/saxon/ma/trie/ImmutableList;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/sapling/SaplingDocument;->f:Lnet/sf/saxon/ma/trie/ImmutableList;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object p0
.end method
