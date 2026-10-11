.class public Lnet/sf/saxon/s9api/Xslt30Transformer;
.super Lnet/sf/saxon/s9api/AbstractXsltTransformer;
.source "SourceFile"


# instance fields
.field public f:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

.field public g:Z

.field public h:Lnet/sf/saxon/om/Item;

.field public i:Z


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/expr/instruct/GlobalParameterSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;-><init>(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/trans/XsltController;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/s9api/Xslt30Transformer;->g:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/s9api/Xslt30Transformer;->h:Lnet/sf/saxon/om/Item;

    new-instance p1, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-direct {p1}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/s9api/Xslt30Transformer;->f:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    return-void
.end method

.method public static synthetic d(Lnet/sf/saxon/s9api/Xslt30Transformer;)Lnet/sf/saxon/expr/instruct/GlobalParameterSet;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/Xslt30Transformer;->f:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    return-object p0
.end method


# virtual methods
.method public declared-synchronized applyTemplates(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    monitor-enter p0

    .line 12
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    new-instance v0, Lnet/sf/saxon/s9api/RawDestination;

    invoke-direct {v0}, Lnet/sf/saxon/s9api/RawDestination;-><init>()V

    .line 14
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/s9api/Xslt30Transformer;->applyTemplates(Ljavax/xml/transform/Source;Lnet/sf/saxon/s9api/Destination;)V

    .line 15
    invoke-virtual {v0}, Lnet/sf/saxon/s9api/RawDestination;->getXdmValue()Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized applyTemplates(Lnet/sf/saxon/s9api/XdmValue;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    monitor-enter p0

    .line 28
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v0, Lnet/sf/saxon/s9api/RawDestination;

    invoke-direct {v0}, Lnet/sf/saxon/s9api/RawDestination;-><init>()V

    .line 30
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/s9api/Xslt30Transformer;->applyTemplates(Lnet/sf/saxon/s9api/XdmValue;Lnet/sf/saxon/s9api/Destination;)V

    .line 31
    invoke-virtual {v0}, Lnet/sf/saxon/s9api/RawDestination;->getXdmValue()Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized applyTemplates(Ljavax/xml/transform/Source;Lnet/sf/saxon/s9api/Destination;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Xslt30Transformer;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    :try_start_1
    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getDestinationReceiver(Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/s9api/Destination;)Lnet/sf/saxon/event/Receiver;

    move-result-object v0

    .line 4
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->applyTemplatesToSource(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/Receiver;)V

    .line 5
    invoke-interface {p2}, Lnet/sf/saxon/s9api/Destination;->closeAndNotify()V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 7
    :try_start_2
    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result p2

    if-nez p2, :cond_0

    .line 8
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p2

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-interface {p2, v0}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    .line 9
    :cond_0
    new-instance p2, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p2, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 10
    :cond_1
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "No initial match selection supplied"

    const-string v0, "XTDE0044"

    invoke-direct {p1, p2, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance p2, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p2, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized applyTemplates(Lnet/sf/saxon/s9api/XdmValue;Lnet/sf/saxon/s9api/Destination;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    monitor-enter p0

    .line 16
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Xslt30Transformer;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :try_start_1
    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getDestinationReceiver(Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/s9api/Destination;)Lnet/sf/saxon/event/Receiver;

    move-result-object v0

    .line 20
    iget-boolean v1, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->baseOutputUriWasSet:Z

    if-eqz v1, :cond_0

    .line 21
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getBaseOutputURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/xml/transform/Result;->setSystemId(Ljava/lang/String;)V

    .line 22
    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmValue;->getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lnet/sf/saxon/trans/XsltController;->applyTemplates(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/event/Receiver;)V

    .line 23
    invoke-interface {p2}, Lnet/sf/saxon/s9api/Destination;->closeAndNotify()V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 25
    :try_start_2
    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result p2

    if-nez p2, :cond_1

    .line 26
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p2

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-interface {p2, v0}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    .line 27
    :cond_1
    new-instance p2, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p2, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public asDocumentDestination(Lnet/sf/saxon/s9api/Destination;)Lnet/sf/saxon/s9api/Destination;
    .locals 1

    new-instance v0, Lnet/sf/saxon/s9api/Xslt30Transformer$a;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/s9api/Xslt30Transformer$a;-><init>(Lnet/sf/saxon/s9api/Xslt30Transformer;Lnet/sf/saxon/s9api/Destination;)V

    return-object v0
.end method

.method public declared-synchronized callFunction(Lnet/sf/saxon/s9api/QName;[Lnet/sf/saxon/s9api/XdmValue;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Xslt30Transformer;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/s9api/Xslt30Transformer;->e(Lnet/sf/saxon/s9api/QName;[Lnet/sf/saxon/s9api/XdmValue;)Lnet/sf/saxon/expr/Component;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/instruct/UserFunction;

    .line 6
    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/s9api/Xslt30Transformer;->g(Lnet/sf/saxon/expr/instruct/UserFunction;[Lnet/sf/saxon/s9api/XdmValue;)[Lnet/sf/saxon/om/Sequence;

    move-result-object p2

    .line 7
    iget-object v1, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v1}, Lnet/sf/saxon/Controller;->newXPathContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v1

    .line 8
    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    const/16 p1, 0xa0

    .line 9
    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/XPathContextMinor;->setTemporaryOutputState(I)V

    const/4 p1, 0x0

    .line 10
    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/XPathContextMinor;->setCurrentOutputUri(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, v1, p2}, Lnet/sf/saxon/expr/instruct/UserFunction;->call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;

    move-result-object p1

    .line 12
    invoke-interface {p1}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object p1

    .line 13
    invoke-static {p1}, Lnet/sf/saxon/s9api/XdmValue;->wrap(Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p1
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    move-exception p1

    .line 14
    :try_start_2
    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result p2

    if-nez p2, :cond_0

    .line 15
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p2

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-interface {p2, v0}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    .line 16
    :cond_0
    new-instance p2, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p2, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized callFunction(Lnet/sf/saxon/s9api/QName;[Lnet/sf/saxon/s9api/XdmValue;Lnet/sf/saxon/s9api/Destination;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    monitor-enter p0

    .line 17
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Xslt30Transformer;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    :try_start_1
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/s9api/Xslt30Transformer;->e(Lnet/sf/saxon/s9api/QName;[Lnet/sf/saxon/s9api/XdmValue;)Lnet/sf/saxon/expr/Component;

    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lnet/sf/saxon/expr/Component;->getActor()Lnet/sf/saxon/expr/instruct/Actor;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/expr/instruct/UserFunction;

    .line 20
    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/s9api/Xslt30Transformer;->g(Lnet/sf/saxon/expr/instruct/UserFunction;[Lnet/sf/saxon/s9api/XdmValue;)[Lnet/sf/saxon/om/Sequence;

    move-result-object p2

    .line 21
    iget-object v1, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v1}, Lnet/sf/saxon/Controller;->newXPathContext()Lnet/sf/saxon/expr/XPathContextMajor;

    move-result-object v1

    .line 22
    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/XPathContextMajor;->setCurrentComponent(Lnet/sf/saxon/expr/Component;)V

    const/16 p1, 0xa0

    .line 23
    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/XPathContextMinor;->setTemporaryOutputState(I)V

    const/4 p1, 0x0

    .line 24
    invoke-virtual {v1, p1}, Lnet/sf/saxon/expr/XPathContextMinor;->setCurrentOutputUri(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p1}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/Executable;->getPrimarySerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object p1

    .line 26
    iget-object v2, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v2}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v2

    invoke-interface {p3, v2, p1}, Lnet/sf/saxon/s9api/Destination;->getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    .line 27
    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->open()V

    .line 28
    new-instance v2, Lnet/sf/saxon/event/ComplexContentOutputter;

    invoke-direct {v2, p1}, Lnet/sf/saxon/event/ComplexContentOutputter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {v0, v1, p2, v2}, Lnet/sf/saxon/expr/instruct/UserFunction;->process(Lnet/sf/saxon/expr/XPathContextMajor;[Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/event/Outputter;)V

    .line 29
    invoke-interface {p1}, Lnet/sf/saxon/event/Receiver;->close()V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    :try_start_2
    invoke-interface {p3}, Lnet/sf/saxon/s9api/Destination;->closeAndNotify()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 31
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 32
    :try_start_3
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p2

    new-instance p3, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {p3, p1}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-interface {p2, p3}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    .line 33
    new-instance p2, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p2, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized callTemplate(Lnet/sf/saxon/s9api/QName;)Lnet/sf/saxon/s9api/XdmValue;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    monitor-enter p0

    .line 14
    :try_start_0
    new-instance v0, Lnet/sf/saxon/s9api/RawDestination;

    invoke-direct {v0}, Lnet/sf/saxon/s9api/RawDestination;-><init>()V

    .line 15
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/s9api/Xslt30Transformer;->callTemplate(Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/Destination;)V

    .line 16
    invoke-virtual {v0}, Lnet/sf/saxon/s9api/RawDestination;->getXdmValue()Lnet/sf/saxon/s9api/XdmValue;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized callTemplate(Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/Destination;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Xslt30Transformer;->f()V

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lnet/sf/saxon/s9api/QName;

    const-string v0, "xsl"

    const-string v1, "http://www.w3.org/1999/XSL/Transform"

    const-string v2, "initial-template"

    invoke-direct {p1, v0, v1, v2}, Lnet/sf/saxon/s9api/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    :cond_0
    :try_start_1
    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getDestinationReceiver(Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/s9api/Destination;)Lnet/sf/saxon/event/Receiver;

    move-result-object v0

    .line 5
    iget-boolean v1, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->baseOutputUriWasSet:Z

    if-eqz v1, :cond_1

    .line 6
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getBaseOutputURI()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/xml/transform/Result;->setSystemId(Ljava/lang/String;)V

    .line 7
    :cond_1
    iget-object v1, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lnet/sf/saxon/trans/XsltController;->callTemplate(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/event/Receiver;)V

    .line 8
    invoke-interface {p2}, Lnet/sf/saxon/s9api/Destination;->closeAndNotify()V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 9
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    .line 10
    :try_start_2
    invoke-interface {p2}, Lnet/sf/saxon/s9api/Destination;->closeAndNotify()V

    .line 11
    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result p2

    if-nez p2, :cond_2

    .line 12
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p2

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-interface {p2, v0}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    .line 13
    :cond_2
    new-instance p2, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p2, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized e(Lnet/sf/saxon/s9api/QName;[Lnet/sf/saxon/s9api/XdmValue;)Lnet/sf/saxon/expr/Component;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lnet/sf/saxon/trans/SymbolicName$F;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    array-length v2, p2

    invoke-direct {v0, v1, v2}, Lnet/sf/saxon/trans/SymbolicName$F;-><init>(Lnet/sf/saxon/om/StructuredQName;I)V

    iget-object v1, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v1}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/PreparedStylesheet;

    invoke-virtual {v1, v0}, Lnet/sf/saxon/PreparedStylesheet;->getComponent(Lnet/sf/saxon/trans/SymbolicName;)Lnet/sf/saxon/expr/Component;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object p1

    sget-object p2, Lnet/sf/saxon/trans/Visibility;->FINAL:Lnet/sf/saxon/trans/Visibility;

    if-eq p1, p2, :cond_1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/Component;->getVisibility()Lnet/sf/saxon/trans/Visibility;

    move-result-object p1

    sget-object p2, Lnet/sf/saxon/trans/Visibility;->PUBLIC:Lnet/sf/saxon/trans/Visibility;

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot invoke "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " externally, because it is not public"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "XTDE0041"

    invoke-direct {p1, p2, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v1

    :cond_2
    :try_start_1
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No public function with name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/s9api/QName;->getClarkName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " and arity "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p2

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " has been declared in the stylesheet"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "XTDE0041"

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final f()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/s9api/Xslt30Transformer;->g:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/s9api/Xslt30Transformer;->f:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/s9api/Xslt30Transformer;->f:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    :cond_0
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    iget-object v1, p0, Lnet/sf/saxon/s9api/Xslt30Transformer;->h:Lnet/sf/saxon/om/Item;

    iget-boolean v2, p0, Lnet/sf/saxon/s9api/Xslt30Transformer;->i:Z

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/Controller;->setGlobalContextItem(Lnet/sf/saxon/om/Item;Z)V

    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    iget-object v1, p0, Lnet/sf/saxon/s9api/Xslt30Transformer;->f:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Controller;->initializeController(Lnet/sf/saxon/expr/instruct/GlobalParameterSet;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/s9api/Xslt30Transformer;->g:Z

    return-void
.end method

.method public final g(Lnet/sf/saxon/expr/instruct/UserFunction;[Lnet/sf/saxon/s9api/XdmValue;)[Lnet/sf/saxon/om/Sequence;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->processor:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getParameterDefinitions()[Lnet/sf/saxon/expr/instruct/UserFunctionParameter;

    move-result-object v0

    array-length v1, p2

    new-array v1, v1, [Lnet/sf/saxon/om/GroundedValue;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_1

    aget-object v4, v0, v3

    invoke-virtual {v4}, Lnet/sf/saxon/expr/instruct/UserFunctionParameter;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v4

    aget-object v5, p2, v3

    invoke-virtual {v5}, Lnet/sf/saxon/s9api/XdmValue;->getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v5

    aput-object v5, v1, v3

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lnet/sf/saxon/value/SequenceType;->matches(Lnet/sf/saxon/om/GroundedValue;Lnet/sf/saxon/type/TypeHierarchy;)Z

    move-result v5

    if-nez v5, :cond_0

    new-instance v5, Lnet/sf/saxon/expr/parser/RoleDiagnostic;

    invoke-virtual {p1}, Lnet/sf/saxon/expr/instruct/UserFunction;->getFunctionName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v6

    invoke-virtual {v6}, Lnet/sf/saxon/om/StructuredQName;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v2, v6, v3}, Lnet/sf/saxon/expr/parser/RoleDiagnostic;-><init>(ILjava/lang/String;I)V

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getTypeHierarchy()Lnet/sf/saxon/type/TypeHierarchy;

    move-result-object v6

    aget-object v7, v1, v3

    sget-object v8, Lnet/sf/saxon/expr/parser/Loc;->NONE:Lnet/sf/saxon/expr/parser/Loc;

    invoke-virtual {v6, v7, v4, v5, v8}, Lnet/sf/saxon/type/TypeHierarchy;->applyFunctionConversionRules(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/value/SequenceType;Lnet/sf/saxon/expr/parser/RoleDiagnostic;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/om/GroundedValue;

    move-result-object v4

    invoke-interface {v4}, Lnet/sf/saxon/om/Sequence;->materialize()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v4

    aput-object v4, v1, v3

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method public getGlobalContextItem()Lnet/sf/saxon/s9api/XdmItem;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/Xslt30Transformer;->h:Lnet/sf/saxon/om/Item;

    invoke-static {p0}, Lnet/sf/saxon/s9api/XdmItem;->wrapItem(Lnet/sf/saxon/om/Item;)Lnet/sf/saxon/s9api/XdmItem;

    move-result-object p0

    return-object p0
.end method

.method public newSerializer()Lnet/sf/saxon/s9api/Serializer;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->processor:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->newSerializer()Lnet/sf/saxon/s9api/Serializer;

    move-result-object v0

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/instruct/Executable;->getPrimarySerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object p0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/s9api/Serializer;->setOutputProperties(Lnet/sf/saxon/serialize/SerializationProperties;)V

    return-object v0
.end method

.method public newSerializer(Ljava/io/File;)Lnet/sf/saxon/s9api/Serializer;
    .locals 2

    .line 3
    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->processor:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/s9api/Processor;->newSerializer(Ljava/io/File;)Lnet/sf/saxon/s9api/Serializer;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v1}, Lnet/sf/saxon/Controller;->getExecutable()Lnet/sf/saxon/expr/instruct/Executable;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/expr/instruct/Executable;->getPrimarySerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/s9api/Serializer;->setOutputProperties(Lnet/sf/saxon/serialize/SerializationProperties;)V

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->setBaseOutputURI(Ljava/lang/String;)V

    return-object v0
.end method

.method public newSerializer(Ljava/io/OutputStream;)Lnet/sf/saxon/s9api/Serializer;
    .locals 0

    .line 8
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Xslt30Transformer;->newSerializer()Lnet/sf/saxon/s9api/Serializer;

    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/Serializer;->setOutputStream(Ljava/io/OutputStream;)V

    return-object p0
.end method

.method public newSerializer(Ljava/io/Writer;)Lnet/sf/saxon/s9api/Serializer;
    .locals 0

    .line 6
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Xslt30Transformer;->newSerializer()Lnet/sf/saxon/s9api/Serializer;

    move-result-object p0

    .line 7
    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/Serializer;->setOutputWriter(Ljava/io/Writer;)V

    return-object p0
.end method

.method public setGlobalContextItem(Lnet/sf/saxon/s9api/XdmItem;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/s9api/Xslt30Transformer;->setGlobalContextItem(Lnet/sf/saxon/s9api/XdmItem;Z)V

    return-void
.end method

.method public declared-synchronized setGlobalContextItem(Lnet/sf/saxon/s9api/XdmItem;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lnet/sf/saxon/s9api/Xslt30Transformer;->g:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/s9api/XdmItem;->getUnderlyingValue()Lnet/sf/saxon/om/Item;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lnet/sf/saxon/s9api/Xslt30Transformer;->h:Lnet/sf/saxon/om/Item;

    .line 4
    iput-boolean p2, p0, Lnet/sf/saxon/s9api/Xslt30Transformer;->i:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Stylesheet has already been evaluated"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setInitialTemplateParameters(Ljava/util/Map;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/sf/saxon/s9api/XdmValue;",
            ">(",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/s9api/QName;",
            "TT;>;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/s9api/QName;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/s9api/XdmValue;

    invoke-virtual {v2}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/XdmValue;->getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p1, v0, p2}, Lnet/sf/saxon/trans/XsltController;->setInitialTemplateParameters(Ljava/util/Map;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setStylesheetParameters(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lnet/sf/saxon/s9api/XdmValue;",
            ">(",
            "Ljava/util/Map<",
            "Lnet/sf/saxon/s9api/QName;",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lnet/sf/saxon/s9api/Xslt30Transformer;->g:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/s9api/Xslt30Transformer;->f:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-direct {v0}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/s9api/Xslt30Transformer;->f:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/sf/saxon/s9api/QName;

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/QName;->getStructuredQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/s9api/XdmValue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lnet/sf/saxon/s9api/Xslt30Transformer;->f:Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/XdmValue;->getUnderlyingValue()Lnet/sf/saxon/om/GroundedValue;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Lnet/sf/saxon/expr/instruct/GlobalParameterSet;->put(Lnet/sf/saxon/om/StructuredQName;Lnet/sf/saxon/om/GroundedValue;)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/UncheckedXPathException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    new-instance v0, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {v0, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Lnet/sf/saxon/trans/UncheckedXPathException;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Stylesheet has already been evaluated"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized transform(Ljavax/xml/transform/Source;Lnet/sf/saxon/s9api/Destination;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XsltController;->getInitialMode()Lnet/sf/saxon/trans/Mode;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/trans/Mode;->isDeclaredStreamable()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Xslt30Transformer;->f()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    instance-of v0, p1, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    move-object v1, p1

    check-cast v1, Lnet/sf/saxon/om/NodeInfo;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Controller;->setGlobalContextItem(Lnet/sf/saxon/om/Item;)V

    check-cast p1, Lnet/sf/saxon/om/NodeInfo;

    goto :goto_0

    :cond_0
    instance-of v0, p1, Ljavax/xml/transform/dom/DOMSource;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/Controller;->prepareInputTree(Ljavax/xml/transform/Source;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/Controller;->setGlobalContextItem(Lnet/sf/saxon/om/Item;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getSchemaValidationMode()Lnet/sf/saxon/s9api/ValidationMode;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/ValidationMode;->getNumber()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/Controller;->makeSourceTree(Ljavax/xml/transform/Source;I)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/Controller;->setGlobalContextItem(Lnet/sf/saxon/om/Item;)V

    :goto_0
    iget-object v0, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p0, v0, p2}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getDestinationReceiver(Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/s9api/Destination;)Lnet/sf/saxon/event/Receiver;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->controller:Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v1, p1, v0}, Lnet/sf/saxon/trans/XsltController;->applyTemplates(Lnet/sf/saxon/om/Sequence;Lnet/sf/saxon/event/Receiver;)V

    invoke-interface {p2}, Lnet/sf/saxon/s9api/Destination;->closeAndNotify()V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p2

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-interface {p2, v0}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V

    :cond_2
    new-instance p2, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p2, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    :cond_3
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    const-string p2, "Cannot use the transform() method when the initial mode is streamable"

    invoke-direct {p1, p2}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "No initial match selection supplied"

    const-string v0, "XTDE0044"

    invoke-direct {p1, p2, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p2, p1}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
