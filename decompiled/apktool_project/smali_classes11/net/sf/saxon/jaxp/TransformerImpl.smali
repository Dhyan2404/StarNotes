.class public Lnet/sf/saxon/jaxp/TransformerImpl;
.super Lcom/sunia/HTREnginev2/h5;
.source "SourceFile"


# instance fields
.field public final k:Lnet/sf/saxon/s9api/XsltTransformer;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/XsltExecutable;Lnet/sf/saxon/s9api/XsltTransformer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sunia/HTREnginev2/h5;-><init>(Lnet/sf/saxon/s9api/XsltExecutable;)V

    iput-object p2, p0, Lnet/sf/saxon/jaxp/TransformerImpl;->k:Lnet/sf/saxon/s9api/XsltTransformer;

    return-void
.end method


# virtual methods
.method public clearParameters()V
    .locals 0

    invoke-super {p0}, Lcom/sunia/HTREnginev2/h5;->clearParameters()V

    iget-object p0, p0, Lnet/sf/saxon/jaxp/TransformerImpl;->k:Lnet/sf/saxon/s9api/XsltTransformer;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XsltTransformer;->clearParameters()V

    return-void
.end method

.method public bridge synthetic getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    invoke-super {p0, p1}, Lcom/sunia/HTREnginev2/h5;->getParameter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getUnderlyingController()Lnet/sf/saxon/Controller;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/TransformerImpl;->getUnderlyingController()Lnet/sf/saxon/trans/XsltController;

    move-result-object p0

    return-object p0
.end method

.method public getUnderlyingController()Lnet/sf/saxon/trans/XsltController;
    .locals 0

    .line 2
    iget-object p0, p0, Lnet/sf/saxon/jaxp/TransformerImpl;->k:Lnet/sf/saxon/s9api/XsltTransformer;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getUnderlyingController()Lnet/sf/saxon/trans/XsltController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getUnderlyingXsltExecutable()Lnet/sf/saxon/s9api/XsltExecutable;
    .locals 0

    invoke-super {p0}, Lcom/sunia/HTREnginev2/h5;->getUnderlyingXsltExecutable()Lnet/sf/saxon/s9api/XsltExecutable;

    move-result-object p0

    return-object p0
.end method

.method public getUnderlyingXsltTransformer()Lnet/sf/saxon/s9api/XsltTransformer;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/TransformerImpl;->k:Lnet/sf/saxon/s9api/XsltTransformer;

    return-object p0
.end method

.method public newTransformerHandler()Ljavax/xml/transform/sax/TransformerHandler;
    .locals 1

    new-instance v0, Lnet/sf/saxon/jaxp/TransformerHandlerImpl;

    invoke-direct {v0, p0}, Lnet/sf/saxon/jaxp/TransformerHandlerImpl;-><init>(Lnet/sf/saxon/jaxp/TransformerImpl;)V

    return-object v0
.end method

.method public newXMLFilter()Lorg/xml/sax/XMLFilter;
    .locals 1

    new-instance v0, Lnet/sf/saxon/jaxp/FilterImpl;

    invoke-direct {v0, p0}, Lnet/sf/saxon/jaxp/FilterImpl;-><init>(Lnet/sf/saxon/jaxp/TransformerImpl;)V

    return-object v0
.end method

.method public reset()V
    .locals 0

    invoke-super {p0}, Lnet/sf/saxon/jaxp/IdentityTransformer;->reset()V

    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/TransformerImpl;->getUnderlyingController()Lnet/sf/saxon/trans/XsltController;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/trans/XsltController;->reset()V

    return-void
.end method

.method public setConvertedParameter(Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/XdmValue;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/TransformerImpl;->k:Lnet/sf/saxon/s9api/XsltTransformer;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/s9api/XsltTransformer;->setParameter(Lnet/sf/saxon/s9api/QName;Lnet/sf/saxon/s9api/XdmValue;)V

    return-void
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-super {p0, p1}, Lnet/sf/saxon/jaxp/IdentityTransformer;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V

    iget-object p0, p0, Lnet/sf/saxon/jaxp/TransformerImpl;->k:Lnet/sf/saxon/s9api/XsltTransformer;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->setErrorListener(Ljavax/xml/transform/ErrorListener;)V

    return-void
.end method

.method public setInitialMode(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/jaxp/TransformerImpl;->k:Lnet/sf/saxon/s9api/XsltTransformer;

    invoke-static {p1}, Lnet/sf/saxon/s9api/QName;->fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/s9api/QName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->setInitialMode(Lnet/sf/saxon/s9api/QName;)V
    :try_end_0
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public setInitialTemplate(Ljava/lang/String;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/TransformerImpl;->k:Lnet/sf/saxon/s9api/XsltTransformer;

    invoke-static {p1}, Lnet/sf/saxon/s9api/QName;->fromClarkName(Ljava/lang/String;)Lnet/sf/saxon/s9api/QName;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/s9api/XsltTransformer;->setInitialTemplate(Lnet/sf/saxon/s9api/QName;)V

    return-void
.end method

.method public bridge synthetic setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/sunia/HTREnginev2/h5;->setParameter(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 1

    invoke-super {p0, p1}, Lnet/sf/saxon/jaxp/IdentityTransformer;->setURIResolver(Ljavax/xml/transform/URIResolver;)V

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/TransformerImpl;->k:Lnet/sf/saxon/s9api/XsltTransformer;

    new-instance v0, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;

    invoke-direct {v0, p1}, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;-><init>(Ljavax/xml/transform/URIResolver;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V

    :cond_0
    return-void
.end method

.method public transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/jaxp/TransformerImpl;->k:Lnet/sf/saxon/s9api/XsltTransformer;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/s9api/XsltTransformer;->setSource(Ljavax/xml/transform/Source;)V

    invoke-interface {p2}, Ljavax/xml/transform/Result;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/sf/saxon/jaxp/TransformerImpl;->k:Lnet/sf/saxon/s9api/XsltTransformer;

    invoke-interface {p2}, Ljavax/xml/transform/Result;->getSystemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->setBaseOutputURI(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0, p2}, Lcom/sunia/HTREnginev2/h5;->b(Ljavax/xml/transform/Result;)Lnet/sf/saxon/s9api/Destination;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/IdentityTransformer;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/IdentityTransformer;->getLocalOutputProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>(Ljava/util/Properties;)V

    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/IdentityTransformer;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Lnet/sf/saxon/lib/SerializerFactory;->getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Receiver;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/jaxp/TransformerImpl;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    return-void

    :cond_1
    iget-object p1, p0, Lnet/sf/saxon/jaxp/TransformerImpl;->k:Lnet/sf/saxon/s9api/XsltTransformer;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/s9api/XsltTransformer;->setDestination(Lnet/sf/saxon/s9api/Destination;)V

    iget-object p0, p0, Lnet/sf/saxon/jaxp/TransformerImpl;->k:Lnet/sf/saxon/s9api/XsltTransformer;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XsltTransformer;->transform()V

    instance-of p0, v0, Lnet/sf/saxon/s9api/Serializer;

    if-eqz p0, :cond_2

    move-object p0, v0

    check-cast p0, Lnet/sf/saxon/s9api/Serializer;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Serializer;->isMustCloseAfterUse()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-interface {v0}, Lnet/sf/saxon/s9api/Destination;->close()V
    :try_end_0
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p0

    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    throw p0
.end method
