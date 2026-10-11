.class public Lnet/sf/saxon/s9api/XsltExecutable;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/s9api/XsltExecutable$ParameterDetails;
    }
.end annotation


# instance fields
.field public a:Lnet/sf/saxon/s9api/Processor;

.field public b:Lnet/sf/saxon/PreparedStylesheet;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/PreparedStylesheet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/s9api/XsltExecutable;->a:Lnet/sf/saxon/s9api/Processor;

    iput-object p2, p0, Lnet/sf/saxon/s9api/XsltExecutable;->b:Lnet/sf/saxon/PreparedStylesheet;

    return-void
.end method


# virtual methods
.method public explain(Lnet/sf/saxon/s9api/Destination;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/s9api/XsltExecutable;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->obtainDefaultSerializationProperties()Lnet/sf/saxon/serialize/SerializationProperties;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lnet/sf/saxon/s9api/Destination;->getReceiver(Lnet/sf/saxon/event/PipelineConfiguration;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p1

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltExecutable;->b:Lnet/sf/saxon/PreparedStylesheet;

    new-instance v1, Lnet/sf/saxon/trace/ExpressionPresenter;

    invoke-direct {v1, v0, p1}, Lnet/sf/saxon/trace/ExpressionPresenter;-><init>(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/PreparedStylesheet;->explain(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public export(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/sf/saxon/s9api/XsltExecutable;->b:Lnet/sf/saxon/PreparedStylesheet;

    invoke-virtual {v0}, Lnet/sf/saxon/PreparedStylesheet;->getTopLevelPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/PackageData;->getTargetEdition()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lnet/sf/saxon/s9api/XsltExecutable;->getProcessor()Lnet/sf/saxon/s9api/Processor;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->getSaxonEdition()Ljava/lang/String;

    move-result-object v0

    .line 3
    :cond_0
    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/s9api/XsltExecutable;->export(Ljava/io/OutputStream;Ljava/lang/String;)V

    return-void
.end method

.method public export(Ljava/io/OutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/s9api/SaxonApiException;
        }
    .end annotation

    .line 4
    iget-object v0, p0, Lnet/sf/saxon/s9api/XsltExecutable;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    .line 5
    :try_start_0
    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltExecutable;->b:Lnet/sf/saxon/PreparedStylesheet;

    invoke-virtual {p0}, Lnet/sf/saxon/PreparedStylesheet;->getTopLevelPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    .line 6
    invoke-virtual {v0, p2, p1, p0}, Lnet/sf/saxon/Configuration;->newExpressionExporter(Ljava/lang/String;Ljava/io/OutputStream;Lnet/sf/saxon/style/StylesheetPackage;)Lnet/sf/saxon/trace/ExpressionPresenter;

    move-result-object p2

    .line 7
    invoke-virtual {p0}, Lnet/sf/saxon/expr/PackageData;->isRelocatable()Z

    move-result v0

    invoke-virtual {p2, v0}, Lnet/sf/saxon/trace/ExpressionPresenter;->setRelocatable(Z)V

    .line 8
    invoke-virtual {p0, p2}, Lnet/sf/saxon/style/StylesheetPackage;->export(Lnet/sf/saxon/trace/ExpressionPresenter;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_1

    .line 9
    :try_start_1
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 10
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    move-exception p0

    .line 11
    new-instance p1, Lnet/sf/saxon/s9api/SaxonApiException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/s9api/SaxonApiException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getGlobalParameters()Ljava/util/HashMap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Lnet/sf/saxon/s9api/QName;",
            "Lnet/sf/saxon/s9api/XsltExecutable$ParameterDetails;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/s9api/XsltExecutable;->b:Lnet/sf/saxon/PreparedStylesheet;

    invoke-virtual {v0}, Lnet/sf/saxon/expr/instruct/Executable;->getGlobalParameters()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/expr/instruct/GlobalParam;

    new-instance v3, Lnet/sf/saxon/s9api/XsltExecutable$ParameterDetails;

    iget-object v4, p0, Lnet/sf/saxon/s9api/XsltExecutable;->a:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getRequiredType()Lnet/sf/saxon/value/SequenceType;

    move-result-object v5

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->isRequiredParam()Z

    move-result v6

    invoke-direct {v3, v4, v5, v6}, Lnet/sf/saxon/s9api/XsltExecutable$ParameterDetails;-><init>(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/value/SequenceType;Z)V

    new-instance v4, Lnet/sf/saxon/s9api/QName;

    invoke-virtual {v2}, Lnet/sf/saxon/expr/instruct/GlobalVariable;->getVariableQName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object v2

    invoke-direct {v4, v2}, Lnet/sf/saxon/s9api/QName;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public getProcessor()Lnet/sf/saxon/s9api/Processor;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltExecutable;->a:Lnet/sf/saxon/s9api/Processor;

    return-object p0
.end method

.method public getUnderlyingCompiledStylesheet()Lnet/sf/saxon/PreparedStylesheet;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltExecutable;->b:Lnet/sf/saxon/PreparedStylesheet;

    return-object p0
.end method

.method public getWhitespaceStrippingPolicy()Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltExecutable;->b:Lnet/sf/saxon/PreparedStylesheet;

    invoke-virtual {p0}, Lnet/sf/saxon/PreparedStylesheet;->getTopLevelPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetPackage;->isStripsWhitespace()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

    invoke-direct {v0, p0}, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;-><init>(Lnet/sf/saxon/style/StylesheetPackage;)V

    return-object v0

    :cond_0
    sget-object p0, Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;->UNSPECIFIED:Lnet/sf/saxon/s9api/WhitespaceStrippingPolicy;

    return-object p0
.end method

.method public load()Lnet/sf/saxon/s9api/XsltTransformer;
    .locals 4

    new-instance v0, Lnet/sf/saxon/s9api/XsltTransformer;

    iget-object v1, p0, Lnet/sf/saxon/s9api/XsltExecutable;->a:Lnet/sf/saxon/s9api/Processor;

    iget-object v2, p0, Lnet/sf/saxon/s9api/XsltExecutable;->b:Lnet/sf/saxon/PreparedStylesheet;

    invoke-virtual {v2}, Lnet/sf/saxon/PreparedStylesheet;->newController()Lnet/sf/saxon/trans/XsltController;

    move-result-object v2

    iget-object v3, p0, Lnet/sf/saxon/s9api/XsltExecutable;->b:Lnet/sf/saxon/PreparedStylesheet;

    invoke-virtual {v3}, Lnet/sf/saxon/PreparedStylesheet;->getCompileTimeParams()Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lnet/sf/saxon/s9api/XsltTransformer;-><init>(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/expr/instruct/GlobalParameterSet;)V

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltExecutable;->b:Lnet/sf/saxon/PreparedStylesheet;

    invoke-virtual {p0}, Lnet/sf/saxon/PreparedStylesheet;->getDefaultInitialTemplateName()Lnet/sf/saxon/om/StructuredQName;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v1, Lnet/sf/saxon/s9api/QName;

    invoke-direct {v1, p0}, Lnet/sf/saxon/s9api/QName;-><init>(Lnet/sf/saxon/om/StructuredQName;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/s9api/XsltTransformer;->setInitialTemplate(Lnet/sf/saxon/s9api/QName;)V

    :cond_0
    return-object v0
.end method

.method public load30()Lnet/sf/saxon/s9api/Xslt30Transformer;
    .locals 3

    new-instance v0, Lnet/sf/saxon/s9api/Xslt30Transformer;

    iget-object v1, p0, Lnet/sf/saxon/s9api/XsltExecutable;->a:Lnet/sf/saxon/s9api/Processor;

    iget-object v2, p0, Lnet/sf/saxon/s9api/XsltExecutable;->b:Lnet/sf/saxon/PreparedStylesheet;

    invoke-virtual {v2}, Lnet/sf/saxon/PreparedStylesheet;->newController()Lnet/sf/saxon/trans/XsltController;

    move-result-object v2

    iget-object p0, p0, Lnet/sf/saxon/s9api/XsltExecutable;->b:Lnet/sf/saxon/PreparedStylesheet;

    invoke-virtual {p0}, Lnet/sf/saxon/PreparedStylesheet;->getCompileTimeParams()Lnet/sf/saxon/expr/instruct/GlobalParameterSet;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lnet/sf/saxon/s9api/Xslt30Transformer;-><init>(Lnet/sf/saxon/s9api/Processor;Lnet/sf/saxon/trans/XsltController;Lnet/sf/saxon/expr/instruct/GlobalParameterSet;)V

    return-object v0
.end method
