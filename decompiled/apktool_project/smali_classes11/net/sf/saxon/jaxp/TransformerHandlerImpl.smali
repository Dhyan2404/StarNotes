.class public Lnet/sf/saxon/jaxp/TransformerHandlerImpl;
.super Lnet/sf/saxon/event/ReceivingContentHandler;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/transform/sax/TransformerHandler;


# instance fields
.field public J:Ljavax/xml/transform/Result;

.field public O:Ljava/lang/String;

.field public Q:Z

.field public final x:Lnet/sf/saxon/jaxp/TransformerImpl;

.field public final y:Lnet/sf/saxon/event/Builder;

.field public z:Lnet/sf/saxon/event/Receiver;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/jaxp/TransformerImpl;)V
    .locals 6

    invoke-direct {p0}, Lnet/sf/saxon/event/ReceivingContentHandler;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/jaxp/TransformerHandlerImpl;->Q:Z

    iput-object p1, p0, Lnet/sf/saxon/jaxp/TransformerHandlerImpl;->x:Lnet/sf/saxon/jaxp/TransformerImpl;

    invoke-virtual {p1}, Lnet/sf/saxon/jaxp/TransformerImpl;->getUnderlyingXsltTransformer()Lnet/sf/saxon/s9api/XsltTransformer;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getUnderlyingController()Lnet/sf/saxon/trans/XsltController;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/jaxp/IdentityTransformer;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getSchemaValidationMode()I

    move-result v1

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->makeBuilder()Lnet/sf/saxon/event/Builder;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/jaxp/TransformerHandlerImpl;->y:Lnet/sf/saxon/event/Builder;

    instance-of v3, v2, Lnet/sf/saxon/tree/tiny/TinyBuilder;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lnet/sf/saxon/tree/tiny/TinyBuilder;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getTreeStatistics()Lnet/sf/saxon/tree/tiny/TreeStatistics;

    move-result-object v4

    iget-object v4, v4, Lnet/sf/saxon/tree/tiny/TreeStatistics;->SOURCE_DOCUMENT_STATISTICS:Lnet/sf/saxon/tree/tiny/Statistics;

    invoke-virtual {v3, v4}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->setStatistics(Lnet/sf/saxon/tree/tiny/Statistics;)V

    :cond_0
    invoke-virtual {v2}, Lnet/sf/saxon/event/Builder;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/event/PipelineConfiguration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lnet/sf/saxon/lib/ParseOptions;->setCheckEntityReferences(Z)V

    invoke-virtual {p0, v3}, Lnet/sf/saxon/event/ReceivingContentHandler;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/Controller;->makeStripper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Stripper;

    move-result-object v2

    iput-object v2, p0, Lnet/sf/saxon/jaxp/TransformerHandlerImpl;->z:Lnet/sf/saxon/event/Receiver;

    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->isStylesheetStrippingTypeAnnotations()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lnet/sf/saxon/jaxp/TransformerHandlerImpl;->z:Lnet/sf/saxon/event/Receiver;

    invoke-virtual {p1, v0}, Lnet/sf/saxon/Configuration;->getAnnotationStripper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/jaxp/TransformerHandlerImpl;->z:Lnet/sf/saxon/event/Receiver;

    :cond_1
    const/4 v0, 0x3

    if-eq v1, v0, :cond_2

    invoke-virtual {v4, v1}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    invoke-static {}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    move-result-object v0

    invoke-virtual {v4, v0}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    iget-object v0, p0, Lnet/sf/saxon/jaxp/TransformerHandlerImpl;->z:Lnet/sf/saxon/event/Receiver;

    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/TransformerHandlerImpl;->getSystemId()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v4, v2}, Lnet/sf/saxon/Configuration;->getDocumentValidator(Lnet/sf/saxon/event/Receiver;Ljava/lang/String;Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    iput-object p1, p0, Lnet/sf/saxon/jaxp/TransformerHandlerImpl;->z:Lnet/sf/saxon/event/Receiver;

    :cond_2
    iget-object p1, p0, Lnet/sf/saxon/jaxp/TransformerHandlerImpl;->z:Lnet/sf/saxon/event/Receiver;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/event/ReceivingContentHandler;->setReceiver(Lnet/sf/saxon/event/Receiver;)V

    return-void
.end method


# virtual methods
.method public endDocument()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    invoke-super {p0}, Lnet/sf/saxon/event/ReceivingContentHandler;->endDocument()V

    iget-object v0, p0, Lnet/sf/saxon/jaxp/TransformerHandlerImpl;->y:Lnet/sf/saxon/event/Builder;

    invoke-virtual {v0}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v1

    iget-object v2, p0, Lnet/sf/saxon/jaxp/TransformerHandlerImpl;->x:Lnet/sf/saxon/jaxp/TransformerImpl;

    invoke-virtual {v2}, Lnet/sf/saxon/jaxp/TransformerImpl;->getUnderlyingXsltTransformer()Lnet/sf/saxon/s9api/XsltTransformer;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/s9api/AbstractXsltTransformer;->getUnderlyingController()Lnet/sf/saxon/trans/XsltController;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/Controller;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object v2

    invoke-interface {v1, v2}, Lnet/sf/saxon/om/TreeInfo;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    iget-object v1, p0, Lnet/sf/saxon/jaxp/TransformerHandlerImpl;->y:Lnet/sf/saxon/event/Builder;

    invoke-virtual {v1}, Lnet/sf/saxon/event/Builder;->reset()V

    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/jaxp/TransformerHandlerImpl;->x:Lnet/sf/saxon/jaxp/TransformerImpl;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->asActiveSource()Lnet/sf/saxon/lib/ActiveSource;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/TransformerHandlerImpl;->J:Ljavax/xml/transform/Result;

    invoke-virtual {v1, v0, p0}, Lnet/sf/saxon/jaxp/TransformerImpl;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance v0, Lorg/xml/sax/SAXException;

    invoke-direct {v0, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw v0

    :cond_0
    new-instance p0, Lorg/xml/sax/SAXException;

    const-string v0, "No source document has been built"

    invoke-direct {p0, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getResult()Ljavax/xml/transform/Result;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/TransformerHandlerImpl;->J:Ljavax/xml/transform/Result;

    return-object p0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/TransformerHandlerImpl;->O:Ljava/lang/String;

    return-object p0
.end method

.method public getTransformer()Ljavax/xml/transform/Transformer;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/TransformerHandlerImpl;->x:Lnet/sf/saxon/jaxp/TransformerImpl;

    return-object p0
.end method

.method public setResult(Ljavax/xml/transform/Result;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/jaxp/TransformerHandlerImpl;->J:Ljavax/xml/transform/Result;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Result must not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/jaxp/TransformerHandlerImpl;->O:Ljava/lang/String;

    iget-object p0, p0, Lnet/sf/saxon/jaxp/TransformerHandlerImpl;->z:Lnet/sf/saxon/event/Receiver;

    invoke-interface {p0, p1}, Ljavax/xml/transform/Result;->setSystemId(Ljava/lang/String;)V

    return-void
.end method

.method public startDocument()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-boolean v0, p0, Lnet/sf/saxon/jaxp/TransformerHandlerImpl;->Q:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/jaxp/TransformerHandlerImpl;->Q:Z

    invoke-super {p0}, Lnet/sf/saxon/event/ReceivingContentHandler;->startDocument()V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "The TransformerHandler is not serially reusable. The startDocument() method must be called once only."

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
