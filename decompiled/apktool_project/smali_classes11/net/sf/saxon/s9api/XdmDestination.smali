.class public Lnet/sf/saxon/s9api/XdmDestination;
.super Lnet/sf/saxon/s9api/AbstractDestination;
.source "SourceFile"


# instance fields
.field public f:Lnet/sf/saxon/om/TreeModel;

.field public g:Lnet/sf/saxon/event/Builder;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lnet/sf/saxon/s9api/AbstractDestination;-><init>()V

    sget-object v0, Lnet/sf/saxon/om/TreeModel;->TINY_TREE:Lnet/sf/saxon/om/TreeModel;

    iput-object v0, p0, Lnet/sf/saxon/s9api/XdmDestination;->f:Lnet/sf/saxon/om/TreeModel;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getBaseURI()Ljava/net/URI;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/AbstractDestination;->getDestinationBaseURI()Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;
    .locals 3

    iget-object v0, p0, Lnet/sf/saxon/s9api/XdmDestination;->f:Lnet/sf/saxon/om/TreeModel;

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lnet/sf/saxon/event/PipelineConfiguration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/lib/ParseOptions;->getTreeModel()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-static {v1}, Lnet/sf/saxon/om/TreeModel;->getTreeModel(I)Lnet/sf/saxon/om/TreeModel;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    sget-object v0, Lnet/sf/saxon/om/TreeModel;->TINY_TREE:Lnet/sf/saxon/om/TreeModel;

    :cond_1
    invoke-virtual {v0, p1}, Lnet/sf/saxon/om/TreeModel;->makeBuilder(Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Builder;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/s9api/XdmDestination;->g:Lnet/sf/saxon/event/Builder;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmDestination;->getBaseURI()Ljava/net/URI;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XdmDestination;->getBaseURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lnet/sf/saxon/s9api/XdmDestination;->g:Lnet/sf/saxon/event/Builder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/sf/saxon/event/Builder;->setUseEventLocation(Z)V

    iget-object v0, p0, Lnet/sf/saxon/s9api/XdmDestination;->g:Lnet/sf/saxon/event/Builder;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/event/Builder;->setBaseURI(Ljava/lang/String;)V

    :cond_3
    iget-object v0, p0, Lnet/sf/saxon/s9api/XdmDestination;->g:Lnet/sf/saxon/event/Builder;

    invoke-virtual {p2, v0}, Lnet/sf/saxon/serialize/SerializationProperties;->makeSequenceNormalizer(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/SequenceNormalizer;

    move-result-object p2

    invoke-virtual {p2, p1}, Lnet/sf/saxon/event/ProxyReceiver;->setSystemId(Ljava/lang/String;)V

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractDestination;->helper:Lnet/sf/saxon/s9api/DestinationHelper;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/DestinationHelper;->getListeners()Ljava/util/List;

    move-result-object p0

    invoke-virtual {p2, p0}, Lnet/sf/saxon/event/SequenceNormalizer;->onClose(Ljava/util/List;)V

    return-object p2
.end method

.method public getTreeModel()Lnet/sf/saxon/om/TreeModel;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XdmDestination;->f:Lnet/sf/saxon/om/TreeModel;

    return-object p0
.end method

.method public getXdmNode()Lnet/sf/saxon/s9api/XdmNode;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/s9api/XdmDestination;->g:Lnet/sf/saxon/event/Builder;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmNode;

    :goto_0
    return-object p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "The document has not yet been built"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/s9api/XdmDestination;->g:Lnet/sf/saxon/event/Builder;

    return-void
.end method

.method public setBaseURI(Ljava/net/URI;)V
    .locals 1

    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/AbstractDestination;->setDestinationBaseURI(Ljava/net/URI;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Supplied base URI must be absolute"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTreeModel(Lnet/sf/saxon/om/TreeModel;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/XdmDestination;->f:Lnet/sf/saxon/om/TreeModel;

    return-void
.end method
