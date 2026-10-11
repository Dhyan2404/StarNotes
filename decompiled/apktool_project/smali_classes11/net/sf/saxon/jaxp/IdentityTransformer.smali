.class public Lnet/sf/saxon/jaxp/IdentityTransformer;
.super Ljavax/xml/transform/Transformer;
.source "SourceFile"


# instance fields
.field public final e:Lnet/sf/saxon/Configuration;

.field public f:Ljava/util/Properties;

.field public g:Ljavax/xml/transform/URIResolver;

.field public h:Ljavax/xml/transform/ErrorListener;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 0

    invoke-direct {p0}, Ljavax/xml/transform/Transformer;-><init>()V

    iput-object p1, p0, Lnet/sf/saxon/jaxp/IdentityTransformer;->e:Lnet/sf/saxon/Configuration;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/jaxp/IdentityTransformer;->f:Ljava/util/Properties;

    return-void
.end method

.method public clearParameters()V
    .locals 0

    return-void
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/IdentityTransformer;->e:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/IdentityTransformer;->h:Ljavax/xml/transform/ErrorListener;

    return-object p0
.end method

.method public getLocalOutputProperties()Ljava/util/Properties;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/jaxp/IdentityTransformer;->f:Ljava/util/Properties;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/IdentityTransformer;->a()V

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/jaxp/IdentityTransformer;->f:Ljava/util/Properties;

    return-object p0
.end method

.method public getOutputProperties()Ljava/util/Properties;
    .locals 5

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/IdentityTransformer;->getStylesheetOutputProperties()Ljava/util/Properties;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lnet/sf/saxon/jaxp/IdentityTransformer;->f:Ljava/util/Properties;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lnet/sf/saxon/jaxp/IdentityTransformer;->f:Ljava/util/Properties;

    invoke-virtual {v3, v2}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method public getOutputProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/IdentityTransformer;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lnet/sf/saxon/lib/SerializerFactory;->checkOutputProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v0, p0, Lnet/sf/saxon/jaxp/IdentityTransformer;->f:Ljava/util/Properties;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/IdentityTransformer;->getStylesheetOutputProperties()Ljava/util/Properties;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public getStylesheetOutputProperties()Ljava/util/Properties;
    .locals 0

    new-instance p0, Ljava/util/Properties;

    invoke-direct {p0}, Ljava/util/Properties;-><init>()V

    return-object p0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/IdentityTransformer;->g:Ljavax/xml/transform/URIResolver;

    return-object p0
.end method

.method public reportFatalError(Lnet/sf/saxon/trans/XPathException;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/jaxp/IdentityTransformer;->h:Ljavax/xml/transform/ErrorListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljavax/xml/transform/ErrorListener;->error(Ljavax/xml/transform/TransformerException;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/IdentityTransformer;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->makeErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/trans/XmlProcessingException;

    invoke-direct {v0, p1}, Lnet/sf/saxon/trans/XmlProcessingException;-><init>(Lnet/sf/saxon/trans/XPathException;)V

    invoke-interface {p0, v0}, Lnet/sf/saxon/lib/ErrorReporter;->report(Lnet/sf/saxon/s9api/XmlProcessingError;)V
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_0
    return-void
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/jaxp/IdentityTransformer;->f:Ljava/util/Properties;

    iput-object v0, p0, Lnet/sf/saxon/jaxp/IdentityTransformer;->g:Ljavax/xml/transform/URIResolver;

    iput-object v0, p0, Lnet/sf/saxon/jaxp/IdentityTransformer;->h:Ljavax/xml/transform/ErrorListener;

    return-void
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Ljavax/xml/transform/ErrorListener;

    iput-object p1, p0, Lnet/sf/saxon/jaxp/IdentityTransformer;->h:Ljavax/xml/transform/ErrorListener;

    return-void
.end method

.method public setOutputProperties(Ljava/util/Properties;)V
    .locals 3

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lnet/sf/saxon/jaxp/IdentityTransformer;->f:Ljava/util/Properties;

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/Properties;->stringPropertyNames()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lnet/sf/saxon/jaxp/IdentityTransformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/jaxp/IdentityTransformer;->f:Ljava/util/Properties;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/IdentityTransformer;->a()V

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/IdentityTransformer;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/sf/saxon/lib/SerializerFactory;->checkOutputProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/IdentityTransformer;->f:Ljava/util/Properties;

    invoke-virtual {p0, p1, p2}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    return-void

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/jaxp/IdentityTransformer;->g:Ljavax/xml/transform/URIResolver;

    return-void
.end method

.method public transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/IdentityTransformer;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getSerializerFactory()Lnet/sf/saxon/lib/SerializerFactory;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/serialize/SerializationProperties;

    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/IdentityTransformer;->getOutputProperties()Ljava/util/Properties;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/serialize/SerializationProperties;-><init>(Ljava/util/Properties;)V

    invoke-virtual {v0, p2, v1}, Lnet/sf/saxon/lib/SerializerFactory;->getReceiver(Ljavax/xml/transform/Result;Lnet/sf/saxon/serialize/SerializationProperties;)Lnet/sf/saxon/event/Receiver;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/event/PipelineConfiguration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/jaxp/IdentityTransformer;->h:Ljavax/xml/transform/ErrorListener;

    if-eqz v1, :cond_0

    new-instance v2, Lnet/sf/saxon/lib/ErrorReporterToListener;

    invoke-direct {v2, v1}, Lnet/sf/saxon/lib/ErrorReporterToListener;-><init>(Ljavax/xml/transform/ErrorListener;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/lib/ParseOptions;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ParseOptions;->setContinueAfterValidationErrors(Z)V

    invoke-static {p1, p2, v0}, Lnet/sf/saxon/event/Sender;->send(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object p2

    instance-of v0, p2, Lorg/xml/sax/SAXParseException;

    if-eqz v0, :cond_1

    check-cast p2, Lorg/xml/sax/SAXParseException;

    invoke-virtual {p2}, Lorg/xml/sax/SAXException;->getException()Ljava/lang/Exception;

    move-result-object p2

    instance-of p2, p2, Ljava/lang/RuntimeException;

    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lnet/sf/saxon/jaxp/IdentityTransformer;->reportFatalError(Lnet/sf/saxon/trans/XPathException;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/jaxp/IdentityTransformer;->reportFatalError(Lnet/sf/saxon/trans/XPathException;)V

    :cond_2
    :goto_0
    throw p1
.end method
