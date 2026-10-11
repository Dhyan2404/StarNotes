.class public Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;
.super Lnet/sf/saxon/event/ReceivingContentHandler;
.source "SourceFile"

# interfaces
.implements Ljavax/xml/transform/sax/TemplatesHandler;


# instance fields
.field public final J:Lnet/sf/saxon/style/StyleNodeFactory;

.field public O:Ljavax/xml/transform/Templates;

.field public Q:Ljava/lang/String;

.field public final x:Ljavax/xml/transform/TransformerFactory;

.field public final y:Lnet/sf/saxon/s9api/Processor;

.field public final z:Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;


# direct methods
.method public constructor <init>(Ljavax/xml/transform/TransformerFactory;Lnet/sf/saxon/s9api/Processor;)V
    .locals 4

    invoke-direct {p0}, Lnet/sf/saxon/event/ReceivingContentHandler;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;->x:Ljavax/xml/transform/TransformerFactory;

    iput-object p2, p0, Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;->y:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {p2}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p2

    invoke-virtual {p0, p2}, Lnet/sf/saxon/event/ReceivingContentHandler;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    new-instance p2, Lnet/sf/saxon/trans/CompilerInfo;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getDefaultXsltCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v0

    invoke-direct {p2, v0}, Lnet/sf/saxon/trans/CompilerInfo;-><init>(Lnet/sf/saxon/trans/CompilerInfo;)V

    new-instance v0, Lnet/sf/saxon/style/Compilation;

    invoke-direct {v0, p1, p2}, Lnet/sf/saxon/style/Compilation;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/trans/CompilerInfo;)V

    invoke-virtual {v0}, Lnet/sf/saxon/style/Compilation;->setMinimalPackageData()V

    const/4 p2, 0x1

    invoke-virtual {v0, p2}, Lnet/sf/saxon/style/Compilation;->getStyleNodeFactory(Z)Lnet/sf/saxon/style/StyleNodeFactory;

    move-result-object v1

    iput-object v1, p0, Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;->J:Lnet/sf/saxon/style/StyleNodeFactory;

    new-instance v2, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    invoke-virtual {p0}, Lnet/sf/saxon/event/ReceivingContentHandler;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    iput-object v2, p0, Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;->z:Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    invoke-virtual {v2, v1}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->setNodeFactory(Lnet/sf/saxon/tree/linked/NodeFactory;)V

    invoke-virtual {v2, p2}, Lnet/sf/saxon/event/Builder;->setLineNumbering(Z)V

    new-instance p2, Lnet/sf/saxon/style/UseWhenFilter;

    sget-object v1, Lnet/sf/saxon/value/NestedIntegerValue;->TWO:Lnet/sf/saxon/value/NestedIntegerValue;

    invoke-direct {p2, v0, v2, v1}, Lnet/sf/saxon/style/UseWhenFilter;-><init>(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/value/NestedIntegerValue;)V

    new-instance v0, Lnet/sf/saxon/om/StylesheetSpaceStrippingRule;

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object p1

    invoke-direct {v0, p1}, Lnet/sf/saxon/om/StylesheetSpaceStrippingRule;-><init>(Lnet/sf/saxon/om/NamePool;)V

    new-instance p1, Lnet/sf/saxon/event/Stripper;

    invoke-direct {p1, v0, p2}, Lnet/sf/saxon/event/Stripper;-><init>(Lnet/sf/saxon/om/SpaceStrippingRule;Lnet/sf/saxon/event/Receiver;)V

    new-instance p2, Lnet/sf/saxon/event/CommentStripper;

    invoke-direct {p2, p1}, Lnet/sf/saxon/event/CommentStripper;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/event/ReceivingContentHandler;->setReceiver(Lnet/sf/saxon/event/Receiver;)V

    return-void
.end method

.method public static synthetic d(Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;->Q:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public getSystemId()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;->Q:Ljava/lang/String;

    return-object p0
.end method

.method public getTemplates()Ljavax/xml/transform/Templates;
    .locals 4

    iget-object v0, p0, Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;->O:Ljavax/xml/transform/Templates;

    if-nez v0, :cond_2

    iget-object v0, p0, Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;->z:Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/tree/linked/DocumentImpl;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {v0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->getDocumentElement()Lnet/sf/saxon/tree/linked/ElementImpl;

    move-result-object v1

    instance-of v1, v1, Lnet/sf/saxon/style/XSLModuleRoot;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;->z:Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    invoke-virtual {v1}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->reset()V

    :try_start_0
    iget-object v1, p0, Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;->y:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v1}, Lnet/sf/saxon/s9api/Processor;->newXsltCompiler()Lnet/sf/saxon/s9api/XsltCompiler;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/jaxp/TemplatesImpl;

    iget-object v3, p0, Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;->x:Ljavax/xml/transform/TransformerFactory;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->asActiveSource()Lnet/sf/saxon/lib/ActiveSource;

    move-result-object v0

    invoke-virtual {v1, v0}, Lnet/sf/saxon/s9api/XsltCompiler;->compile(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XsltExecutable;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Lnet/sf/saxon/jaxp/TemplatesImpl;-><init>(Ljavax/xml/transform/TransformerFactory;Lnet/sf/saxon/s9api/XsltExecutable;)V

    iput-object v2, p0, Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;->O:Ljavax/xml/transform/Templates;
    :try_end_0
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/SaxonApiException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Input is not a stylesheet"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    iget-object p0, p0, Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;->O:Ljavax/xml/transform/Templates;

    return-object p0
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;->Q:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lnet/sf/saxon/event/ReceivingContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    :cond_0
    return-void
.end method

.method public setSystemId(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;->Q:Ljava/lang/String;

    iget-object v0, p0, Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;->z:Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/event/Builder;->setSystemId(Ljava/lang/String;)V

    new-instance p1, Lnet/sf/saxon/jaxp/TemplatesHandlerImpl$a;

    invoke-direct {p1, p0}, Lnet/sf/saxon/jaxp/TemplatesHandlerImpl$a;-><init>(Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;)V

    invoke-super {p0, p1}, Lnet/sf/saxon/event/ReceivingContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    return-void
.end method
