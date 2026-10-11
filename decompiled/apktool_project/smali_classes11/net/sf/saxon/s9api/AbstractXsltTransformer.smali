.class public abstract Lnet/sf/saxon/s9api/AbstractXsltTransformer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected baseOutputUriWasSet:Z

.field protected controller:Lnet/sf/saxon/trans/XsltController;

.field public e:Lnet/sf/saxon/s9api/MessageListener2;

.field protected processor:Lnet/sf/saxon/s9api/Processor;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/trans/XsltController;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->baseOutputUriWasSet:Z

    iput-object p1, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->processor:Lnet/sf/saxon/s9api/Processor;

    iput-object p2, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    return-void
.end method

.method public static synthetic a(Lnet/sf/saxon/s9api/MessageListener2;Lnet/sf/saxon/s9api/Message;)V
    .locals 0

    invoke-static {p0, p1}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->b(Lnet/sf/saxon/s9api/MessageListener2;Lnet/sf/saxon/s9api/Message;)V

    return-void
.end method

.method public static synthetic b(Lnet/sf/saxon/s9api/MessageListener2;Lnet/sf/saxon/s9api/Message;)V
    .locals 3

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Message;->getContent()Lnet/sf/saxon/s9api/XdmNode;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Message;->getErrorCode()Lnet/sf/saxon/s9api/QName;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Message;->isTerminate()Z

    move-result v2

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/Message;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object p1

    invoke-interface {p0, v0, v1, v2, p1}, Lnet/sf/saxon/s9api/MessageListener2;->message(Lnet/sf/saxon/s9api/XdmNode;Lnet/sf/saxon/s9api/QName;ZLjavax/xml/transform/SourceLocator;)V

    return-void
.end method


# virtual methods
.method public applyTemplatesToSource(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/Receiver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XsltController;->getInitialMode()Lnet/sf/saxon/trans/Mode;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/Mode;->isDeclaredStreamable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/trans/XsltController;->applyStreamingTemplates(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/Receiver;)V

    goto :goto_1

    :cond_0
    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_1

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getSchemaValidationMode()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/Controller;->makeSourceTree(Ljavax/xml/transform/Source;I)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/trans/XsltController;->applyTemplates(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/event/Receiver;)V

    :goto_1
    return-void
.end method

.method public final c(Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/expr/instruct/GlobalParameterSet;Lnet/sf/saxon/s9api/Destination;Lnet/sf/saxon/event/Builder;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/TreeReceiver;
    .locals 8

    new-instance v7, Lnet/sf/saxon/s9api/AbstractXsltTransformer$b;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p5

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lnet/sf/saxon/s9api/AbstractXsltTransformer$b;-><init>(Lnet/sf/saxon/s9api/AbstractXsltTransformer;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/event/Builder;Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/s9api/Destination;Lnet/sf/saxon/expr/instruct/GlobalParameterSet;)V

    return-object v7
.end method

.method public getBaseOutputURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getBaseOutputURI()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDestinationReceiver(Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/s9api/Destination;)Lnet/sf/saxon/event/Receiver;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XsltController;->setPrincipalDestination(Lnet/sf/saxon/s9api/Destination;)V

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Executable;->getPrimarySerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lnet/sf/saxon/s9api/Destination;->getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object v0

    invoke-static {}, Lnet/sf/saxon/Configuration;->isAssertionsEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lnet/sf/saxon/event/RegularSequenceChecker;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Lnet/sf/saxon/event/RegularSequenceChecker;-><init>(Lnet/sf/saxon/event/Receiver;Z)V

    move-object v0, v1

    :cond_0
    invoke-interface {v0}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-virtual {v1, p1}, Lnet/sf/saxon/event/PipelineConfiguration;->setController(Lnet/sf/saxon/Controller;)V

    iget-boolean p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->baseOutputUriWasSet:Z

    if-eqz p0, :cond_1

    :try_start_0
    invoke-interface {p2}, Lnet/sf/saxon/s9api/Destination;->getDestinationBaseURI()Ljava/net/URI;

    move-result-object p0

    if-nez p0, :cond_2

    new-instance p0, Ljava/net/URI;

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->getBaseOutputURI()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, p0}, Lnet/sf/saxon/s9api/Destination;->setDestinationBaseURI(Ljava/net/URI;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    invoke-interface {p2}, Lnet/sf/saxon/s9api/Destination;->getDestinationBaseURI()Ljava/net/URI;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-interface {p2}, Lnet/sf/saxon/s9api/Destination;->getDestinationBaseURI()Ljava/net/URI;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lnet/sf/saxon/Controller;->setBaseOutputURI(Ljava/lang/String;)V

    :catch_0
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->getBaseOutputURI()Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljavax/xml/transform/Result;->setSystemId(Ljava/lang/String;)V

    return-object v0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/lib/ErrorReporterToListener;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/lib/ErrorReporterToListener;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ErrorReporterToListener;->getErrorListener()Ljavax/xml/transform/ErrorListener;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    return-object p0
.end method

.method public getInitialMode()Lnet/sf/saxon/s9api/QName;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XsltController;->getInitialModeName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Lnet/sf/saxon/s9api/QName;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/QName;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    return-object v0
.end method

.method public getMessageListener2()Lnet/sf/saxon/s9api/MessageListener2;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->e:Lnet/sf/saxon/s9api/MessageListener2;

    return-object p0
.end method

.method public getReceivingTransformer(Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/expr/instruct/GlobalParameterSet;Lnet/sf/saxon/s9api/Destination;)Lnet/sf/saxon/event/Receiver;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XsltController;->getInitialMode()Lnet/sf/saxon/trans/Mode;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/trans/Mode;->isDeclaredStreamable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p3}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getDestinationReceiver(Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/s9api/Destination;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    :try_start_0
    invoke-virtual {p1, p2}, Lnet/sf/saxon/Controller;->initializeController(Lnet/sf/saxon/expr/instruct/GlobalParameterSet;)V

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XsltController;->getInitialMode()Lnet/sf/saxon/trans/Mode;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lnet/sf/saxon/trans/XsltController;->getStreamingReceiver(Lnet/sf/saxon/trans/Mode;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->makeBuilder()Lnet/sf/saxon/event/Builder;

    move-result-object v4

    instance-of v1, v4, Lnet/sf/saxon/tree/tiny/TinyBuilder;

    if-eqz v1, :cond_1

    move-object v1, v4

    check-cast v1, Lnet/sf/saxon/tree/tiny/TinyBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTreeStatistics()Lnet/sf/saxon/tree/tiny/TreeStatistics;

    move-result-object v0

    iget-object v0, v0, Lnet/sf/saxon/tree/tiny/TreeStatistics;->SOURCE_DOCUMENT_STATISTICS:Lnet/sf/saxon/tree/tiny/Statistics;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->setStatistics(Lnet/sf/saxon/tree/tiny/Statistics;)V

    :cond_1
    invoke-virtual {p1, v4}, Lnet/sf/saxon/Controller;->makeStripper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Stripper;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->isStylesheetStrippingTypeAnnotations()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/sf/saxon/Configuration;->getAnnotationStripper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object v0

    :cond_2
    move-object v5, v0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->c(Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/expr/instruct/GlobalParameterSet;Lnet/sf/saxon/s9api/Destination;Lnet/sf/saxon/event/Builder;Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/TreeReceiver;

    move-result-object p0

    return-object p0
.end method

.method public getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p0

    return-object p0
.end method

.method public getSchemaValidationMode()Lnet/sf/saxon/s9api/ValidationMode;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getSchemaValidationMode()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/s9api/ValidationMode;->get(I)Lnet/sf/saxon/s9api/ValidationMode;

    move-result-object p0

    return-object p0
.end method

.method public getTraceFunctionDestination()Lnet/sf/saxon/lib/Logger;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getTraceFunctionDestination()Lnet/sf/saxon/lib/Logger;

    move-result-object p0

    return-object p0
.end method

.method public getTraceListener()Lnet/sf/saxon/lib/TraceListener;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getTraceListener()Lnet/sf/saxon/lib/TraceListener;

    move-result-object p0

    return-object p0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p0

    instance-of v0, p0, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;->getWrappedURIResolver()Ljavax/xml/transform/URIResolver;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getUnderlyingController()Lnet/sf/saxon/trans/XsltController;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    return-object p0
.end method

.method public getUnparsedTextURIResolver()Lnet/sf/saxon/lib/UnparsedTextURIResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getUnparsedTextURIResolver()Lnet/sf/saxon/lib/UnparsedTextURIResolver;

    move-result-object p0

    return-object p0
.end method

.method public isAssertionsEnabled()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XsltController;->isAssertionsEnabled()Z

    move-result p0

    return p0
.end method

.method public isStreamableSource(Ljavax/xml/transform/Source;)Z
    .locals 2

    instance-of v0, p1, Lnet/sf/saxon/lib/AugmentedSource;

    if-eqz v0, :cond_0

    check-cast p1, Lnet/sf/saxon/lib/AugmentedSource;

    invoke-virtual {p1}, Lnet/sf/saxon/lib/AugmentedSource;->getContainedSource()Ljavax/xml/transform/Source;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->isStreamableSource(Ljavax/xml/transform/Source;)Z

    move-result p0

    return p0

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getSourceResolver()Lnet/sf/saxon/lib/SourceResolver;

    move-result-object v1

    invoke-interface {v1, p1, p0}, Lnet/sf/saxon/lib/SourceResolver;->resolveSource(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/lib/ActiveSource;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    instance-of p1, p0, Ljavax/xml/transform/sax/SAXSource;

    if-nez p1, :cond_1

    instance-of p1, p0, Ljavax/xml/transform/stream/StreamSource;

    if-nez p1, :cond_1

    instance-of p0, p0, Lnet/sf/saxon/event/EventSource;

    if-eqz p0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :catch_0
    :cond_2
    return v0
.end method

.method public setAssertionsEnabled(Z)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XsltController;->setAssertionsEnabled(Z)V

    return-void
.end method

.method public declared-synchronized setBaseOutputURI(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/Controller;->setBaseOutputURI(Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->baseOutputUriWasSet:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    new-instance v0, Lnet/sf/saxon/lib/ErrorReporterToListener;

    invoke-direct {v0, p1}, Lnet/sf/saxon/lib/ErrorReporterToListener;-><init>(Ljavax/xml/transform/ErrorListener;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Controller;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    return-void
.end method

.method public setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Controller;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    return-void
.end method

.method public setInitialMode(Lnet/sf/saxon/s9api/QName;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XsltController;->setInitialMode(Lnet/sf/saxon/om/StructuredQName;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setMessageHandler(Ljava/util/function/Consumer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lnet/sf/saxon/s9api/Message;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XsltController;->setMessageHandler(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public declared-synchronized setMessageListener(Lnet/sf/saxon/s9api/MessageListener2;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->e:Lnet/sf/saxon/s9api/MessageListener2;

    new-instance v0, Lcom/sunia/HTREnginev2/l5;

    invoke-direct {v0, p1}, Lcom/sunia/HTREnginev2/l5;-><init>(Lnet/sf/saxon/s9api/MessageListener2;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->setMessageHandler(Ljava/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Controller;->setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V

    return-void
.end method

.method public setResultDocumentHandler(Ljava/util/function/Function;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Ljava/net/URI;",
            "Lnet/sf/saxon/s9api/Destination;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    new-instance v1, Lnet/sf/saxon/s9api/AbstractXsltTransformer$a;

    invoke-direct {v1, p0, p1}, Lnet/sf/saxon/s9api/AbstractXsltTransformer$a;-><init>(Lnet/sf/saxon/s9api/AbstractXsltTransformer;Ljava/util/function/Function;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/trans/XsltController;->setResultDocumentResolver(Lnet/sf/saxon/lib/ResultDocumentResolver;)V

    return-void
.end method

.method public setSchemaValidationMode(Lnet/sf/saxon/s9api/ValidationMode;)V
    .locals 0

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/ValidationMode;->getNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Controller;->setSchemaValidationMode(I)V

    :cond_0
    return-void
.end method

.method public setTraceFunctionDestination(Lnet/sf/saxon/lib/Logger;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Controller;->setTraceFunctionDestination(Lnet/sf/saxon/lib/Logger;)V

    return-void
.end method

.method public setTraceListener(Lnet/sf/saxon/lib/TraceListener;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Controller;->setTraceListener(Lnet/sf/saxon/lib/TraceListener;)V

    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    new-instance v0, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;

    invoke-direct {v0, p1}, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;-><init>(Ljavax/xml/transform/URIResolver;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Controller;->setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V

    return-void
.end method

.method public setUnparsedTextResolver(Lnet/sf/saxon/lib/UnparsedTextURIResolver;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Controller;->setUnparsedTextURIResolver(Lnet/sf/saxon/lib/UnparsedTextURIResolver;)V

    return-void
.end method
