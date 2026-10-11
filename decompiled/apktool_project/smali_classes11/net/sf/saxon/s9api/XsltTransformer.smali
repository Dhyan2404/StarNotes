.class public Lnet/sf/saxon/s9api/XsltTransformer;
.super Lnet/sf/saxon/s9api/AbstractXsltTransformer;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/s9api/Destination;


# instance fields
.field public f:Lnet/sf/saxon/s9api/QName;

.field public g:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

.field public h:Ljavax/xml/transform/Source;

.field public i:Lnet/sf/saxon/s9api/Destination;

.field public final j:Lnet/sf/saxon/s9api/DestinationHelper;

.field public k:Ljava/net/URI;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/expr/instruct/GlobalParameterSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;-><init>(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/trans/XsltController;)V

    new-instance p1, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-direct {p1}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/s9api/XsltTransformer;->g:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    new-instance p1, Lnet/sf/saxon/s9api/DestinationHelper;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/DestinationHelper;-><init>(Lnet/sf/saxon/s9api/Destination;)V

    iput-object p1, p0, Lnet/sf/saxon/s9api/XsltTransformer;->j:Lnet/sf/saxon/s9api/DestinationHelper;

    return-void
.end method


# virtual methods
.method public declared-synchronized clearParameters()V
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/s9api/XsltTransformer;->g:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public closeAndNotify()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltTransformer;->j:Lnet/sf/saxon/s9api/DestinationHelper;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/DestinationHelper;->closeAndNotify()V

    return-void
.end method

.method public final d(Lnet/sf/saxon/om/Item;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getGlobalContextItem()Lnet/sf/saxon/om/Item;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/Controller;->setGlobalContextItem(Lnet/sf/saxon/om/Item;Z)V

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getDestination()Lnet/sf/saxon/s9api/Destination;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltTransformer;->i:Lnet/sf/saxon/s9api/Destination;

    return-object p0
.end method

.method public getDestinationBaseURI()Ljava/net/URI;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltTransformer;->k:Ljava/net/URI;

    return-object p0
.end method

.method public getInitialContextNode()Lnet/sf/saxon/s9api/XdmNode;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltTransformer;->h:Ljavax/xml/transform/Source;

    instance-of v0, p0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/om/NodeInfo;

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/s9api/XdmNode;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInitialTemplate()Lnet/sf/saxon/s9api/QName;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltTransformer;->f:Lnet/sf/saxon/s9api/QName;

    return-object p0
.end method

.method public declared-synchronized getParameter(Lnet/sf/saxon/s9api/QName;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/XsltTransformer;->g:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;->get(Lnet/sf/saxon/om/StructuredQName;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-object p2, p0, Lnet/sf/saxon/s9api/XsltTransformer;->i:Lnet/sf/saxon/s9api/Destination;

    if-eqz p2, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    iget-object v1, p0, Lnet/sf/saxon/s9api/XsltTransformer;->g:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-virtual {p0, v0, v1, p2}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getReceivingTransformer(Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/expr/instruct/GlobalParameterSet;Lnet/sf/saxon/s9api/Destination;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    new-instance p2, Lnet/sf/saxon/event/SequenceNormalizerWithSpaceSeparator;

    invoke-direct {p2, p0}, Lnet/sf/saxon/event/SequenceNormalizerWithSpaceSeparator;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-interface {p2, p1}, Lnet/sf/saxon/event/Receiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    return-object p2

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "No destination has been supplied"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public onClose(Lnet/sf/saxon/s9api/Action;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltTransformer;->j:Lnet/sf/saxon/s9api/DestinationHelper;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/DestinationHelper;->onClose(Lnet/sf/saxon/s9api/Action;)V

    return-void
.end method

.method public setDestination(Lnet/sf/saxon/s9api/Destination;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/XsltTransformer;->i:Lnet/sf/saxon/s9api/Destination;

    return-void
.end method

.method public setDestinationBaseURI(Ljava/net/URI;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/XsltTransformer;->k:Ljava/net/URI;

    return-void
.end method

.method public declared-synchronized setInitialContextNode(Lnet/sf/saxon/s9api/XdmNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiUncheckedException;
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    :try_start_0
    iput-object p1, p0, Lnet/sf/saxon/s9api/XsltTransformer;->h:Ljavax/xml/transform/Source;

    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/Controller;->setGlobalContextItem(Lnet/sf/saxon/om/Item;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->asActiveSource()Lnet/sf/saxon/lib/ActiveSource;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/s9api/XsltTransformer;->h:Ljavax/xml/transform/Source;

    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmNode;->getUnderlyingNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/om/NodeInfo;->getRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnet/sf/saxon/Controller;->setGlobalContextItem(Lnet/sf/saxon/om/Item;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;

    invoke-direct {v0, p1}, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public setInitialTemplate(Lnet/sf/saxon/s9api/QName;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/s9api/XsltTransformer;->f:Lnet/sf/saxon/s9api/QName;

    return-void
.end method

.method public declared-synchronized setParameter(Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/XdmValue;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/XsltTransformer;->g:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Lnet/sf/saxon/s9api/XdmValue;->getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;->put(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/GroundedValue;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    new-instance p2, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;

    invoke-direct {p2, p1}, Lnet/sf/saxon/s9api/SaxonApiUncheckedException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setSource(Ljavax/xml/transform/Source;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/s9api/XdmNode;

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    invoke-direct {v0, p1}, Lnet/sf/saxon/s9api/XdmNode;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/s9api/XsltTransformer;->setInitialContextNode(Lnet/sf/saxon/s9api/XdmNode;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljavax/xml/transform/dom/DOMSource;

    invoke-virtual {v0}, Ljavax/xml/transform/dom/DOMSource;->getNode()Lorg/w3c/dom/Node;

    move-result-object v0

    if-nez v0, :cond_1

    new-instance p1, Lnet/sf/saxon/tree/linked/DocumentImpl;

    invoke-direct {p1}, Lnet/sf/saxon/tree/linked/DocumentImpl;-><init>()V

    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->setConfiguration(Lnet/sf/saxon/Configuration;)V

    new-instance v0, Lnet/sf/saxon/s9api/XdmNode;

    invoke-direct {v0, p1}, Lnet/sf/saxon/s9api/XdmNode;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/s9api/XsltTransformer;->setInitialContextNode(Lnet/sf/saxon/s9api/XdmNode;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->processor:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/sf/saxon/Configuration;->unravel(Ljavax/xml/transform/Source;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    new-instance v0, Lnet/sf/saxon/s9api/XdmNode;

    invoke-direct {v0, p1}, Lnet/sf/saxon/s9api/XdmNode;-><init>(Lnet/sf/saxon/om/NodeInfo;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/s9api/XsltTransformer;->setInitialContextNode(Lnet/sf/saxon/s9api/XdmNode;)V

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lnet/sf/saxon/s9api/XsltTransformer;->h:Ljavax/xml/transform/Source;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized transform()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/XsltTransformer;->h:Ljavax/xml/transform/Source;

    iget-object v1, p0, Lnet/sf/saxon/s9api/XsltTransformer;->i:Lnet/sf/saxon/s9api/Destination;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v1, :cond_a

    const/4 v2, 0x0

    :try_start_1
    iget-object v3, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0, v3, v1}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getDestinationReceiver(Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/s9api/Destination;)Lnet/sf/saxon/event/Receiver;

    move-result-object v1

    iget-object v3, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v3}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/expr/instruct/Executable;->getGlobalContextRequirement()Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lnet/sf/saxon/expr/instruct/GlobalContextRequirement;->isAbsentFocus()Z

    move-result v3

    if-nez v3, :cond_3

    :cond_0
    if-eqz v0, :cond_3

    instance-of v3, v0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v3, :cond_1

    move-object v3, v0

    check-cast v3, Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {p0, v3}, Lnet/sf/saxon/s9api/XsltTransformer;->d(Lnet/sf/saxon/om/Item;)Z

    move-result v2

    goto :goto_0

    :cond_1
    instance-of v3, v0, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v3, v0}, Lnet/sf/saxon/Controller;->prepareInputTree(Ljavax/xml/transform/Source;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/s9api/XsltTransformer;->d(Lnet/sf/saxon/om/Item;)Z

    move-result v2

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->asActiveSource()Lnet/sf/saxon/lib/ActiveSource;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getSchemaValidationMode()Lnet/sf/saxon/s9api/ValidationMode;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/s9api/ValidationMode;->getNumber()I

    move-result v4

    invoke-virtual {v3, v0, v4}, Lnet/sf/saxon/Controller;->makeSourceTree(Ljavax/xml/transform/Source;I)Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/s9api/XsltTransformer;->d(Lnet/sf/saxon/om/Item;)Z

    move-result v2

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->asActiveSource()Lnet/sf/saxon/lib/ActiveSource;

    move-result-object v0

    :cond_3
    :goto_0
    iget-boolean v3, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->baseOutputUriWasSet:Z

    if-eqz v3, :cond_4

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getBaseOutputURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljavax/xml/transform/Result;->setSystemId(Ljava/lang/String;)V

    :cond_4
    iget-object v3, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    iget-object v4, p0, Lnet/sf/saxon/s9api/XsltTransformer;->g:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-virtual {v3, v4}, Lnet/sf/saxon/Controller;->initializeController(Lnet/sf/saxon/expr/instruct/GlobalParameterSet;)V

    iget-object v3, p0, Lnet/sf/saxon/s9api/XsltTransformer;->f:Lnet/sf/saxon/s9api/QName;

    if-eqz v3, :cond_5

    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v3}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v3

    invoke-virtual {v0, v3, v1}, Lnet/sf/saxon/trans/XsltController;->callTemplate(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/event/Receiver;)V

    goto :goto_1

    :cond_5
    if-eqz v0, :cond_6

    invoke-virtual {p0, v0, v1}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->applyTemplatesToSource(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/Receiver;)V

    goto :goto_1

    :cond_6
    new-instance v0, Lnet/sf/saxon/s9api/QName;

    const-string v3, "xsl"

    const-string v4, "http://www.w3.org/1999/XSL/Transform"

    const-string v5, "initial-template"

    invoke-direct {v0, v3, v4, v5}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Lnet/sf/saxon/trans/XsltController;->callTemplate(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/event/Receiver;)V

    :goto_1
    iget-object v0, p0, Lnet/sf/saxon/s9api/XsltTransformer;->i:Lnet/sf/saxon/s9api/Destination;

    invoke-interface {v0}, Lnet/sf/saxon/s9api/Destination;->closeAndNotify()V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_7

    :try_start_2
    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->clearGlobalContextItem()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v1

    new-instance v3, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v3, v0}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-interface {v1, v3}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XPathException;->setHasBeenReported(Z)V

    :cond_8
    new-instance v1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {v1, v0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    if-eqz v2, :cond_9

    :try_start_4
    iget-object v1, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v1}, Lnet/sf/saxon/Controller;->clearGlobalContextItem()V

    :cond_9
    throw v0

    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No destination has been supplied"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method
