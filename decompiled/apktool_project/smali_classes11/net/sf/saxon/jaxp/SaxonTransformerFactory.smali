.class public Lnet/sf/saxon/jaxp/SaxonTransformerFactory;
.super Ljavax/xml/transform/sax/SAXTransformerFactory;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/Configuration$ApiProvider;


# static fields
.field public static final g:Ljava/lang/String; = "http://javax.xml.XMLConstants/feature/secure-processing"


# instance fields
.field public final e:Lnet/sf/saxon/s9api/Processor;

.field public f:Ljavax/xml/transform/ErrorListener;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXTransformerFactory;-><init>()V

    .line 2
    new-instance v0, Lnet/sf/saxon/lib/StandardErrorListener;

    invoke-direct {v0}, Lnet/sf/saxon/lib/StandardErrorListener;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->f:Ljavax/xml/transform/ErrorListener;

    .line 3
    new-instance v0, Lnet/sf/saxon/s9api/Processor;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lnet/sf/saxon/s9api/Processor;-><init>(Z)V

    iput-object v0, p0, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->e:Lnet/sf/saxon/s9api/Processor;

    return-void
.end method

.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljavax/xml/transform/sax/SAXTransformerFactory;-><init>()V

    .line 5
    new-instance v0, Lnet/sf/saxon/lib/StandardErrorListener;

    invoke-direct {v0}, Lnet/sf/saxon/lib/StandardErrorListener;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->f:Ljavax/xml/transform/ErrorListener;

    .line 6
    new-instance v0, Lnet/sf/saxon/s9api/Processor;

    invoke-direct {v0, p1}, Lnet/sf/saxon/s9api/Processor;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object v0, p0, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->e:Lnet/sf/saxon/s9api/Processor;

    return-void
.end method


# virtual methods
.method public getAssociatedStylesheet(Ljavax/xml/transform/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->e:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->newXsltCompiler()Lnet/sf/saxon/s9api/XsltCompiler;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->f:Ljavax/xml/transform/ErrorListener;

    if-eqz p0, :cond_0

    new-instance v1, Lnet/sf/saxon/lib/ErrorReporterToListener;

    invoke-direct {v1, p0}, Lnet/sf/saxon/lib/ErrorReporterToListener;-><init>(Ljavax/xml/transform/ErrorListener;)V

    invoke-virtual {v0, v1}, Lnet/sf/saxon/s9api/XsltCompiler;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lnet/sf/saxon/s9api/XsltCompiler;->getAssociatedStylesheet(Ljavax/xml/transform/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {p1, p0}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "http://javax.xml.XMLConstants/property/accessExternalDTD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lnet/sf/saxon/lib/Feature;->XML_PARSER_PROPERTY:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->getConfigurationProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v0, "http://javax.xml.XMLConstants/property/accessExternalStylesheet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/lib/Feature;->ALLOWED_PROTOCOLS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->getConfigurationProperty(Lnet/sf/saxon/lib/Feature;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->getConfigurationProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->e:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getErrorListener()Ljavax/xml/transform/ErrorListener;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->f:Ljavax/xml/transform/ErrorListener;

    return-object p0
.end method

.method public getFeature(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "http://javax.xml.transform.stream.StreamSource/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "http://javax.xml.transform.stream.StreamResult/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_2
    const-string v0, "http://javax.xml.transform.sax.SAXSource/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_3
    const-string v0, "http://javax.xml.transform.dom.DOMSource/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_4
    const-string v0, "http://javax.xml.transform.sax.SAXResult/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_5
    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_6
    const-string v0, "http://javax.xml.transform.sax.SAXTransformerFactory/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_7
    const-string v0, "http://javax.xml.transform.dom.DOMResult/feature"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    move v3, v2

    goto :goto_0

    :sswitch_8
    const-string v0, "http://javax.xml.transform.sax.SAXTransformerFactory/feature/xmlfilter"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->getConfigurationProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    instance-of p1, p0, Ljava/lang/Boolean;

    if-eqz p1, :cond_9

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_9

    move v1, v2

    :catch_0
    :cond_9
    return v1

    :pswitch_0
    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/lib/Feature;->ALLOW_EXTERNAL_FUNCTIONS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p0

    xor-int/2addr p0, v2

    return p0

    :pswitch_1
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x70f4d545 -> :sswitch_8
        -0x4b551ce9 -> :sswitch_7
        -0x46ea2a85 -> :sswitch_6
        -0x2ee2d1c6 -> :sswitch_5
        -0x227ecf99 -> :sswitch_4
        -0xe3b5aeb -> :sswitch_3
        0x1a9af265 -> :sswitch_2
        0x374a92af -> :sswitch_1
        0x746454ad -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getProcessor()Lnet/sf/saxon/s9api/Processor;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->e:Lnet/sf/saxon/s9api/Processor;

    return-object p0
.end method

.method public getURIResolver()Ljavax/xml/transform/URIResolver;
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v0

    instance-of v0, v0, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;->getWrappedURIResolver()Ljavax/xml/transform/URIResolver;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public declared-synchronized newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->e:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->newXsltCompiler()Lnet/sf/saxon/s9api/XsltCompiler;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->f:Ljavax/xml/transform/ErrorListener;

    if-eqz v1, :cond_0

    .line 3
    new-instance v2, Lnet/sf/saxon/lib/ErrorReporterToListener;

    invoke-direct {v2, v1}, Lnet/sf/saxon/lib/ErrorReporterToListener;-><init>(Ljavax/xml/transform/ErrorListener;)V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/s9api/XsltCompiler;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Lnet/sf/saxon/s9api/XsltCompiler;->compile(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XsltExecutable;

    move-result-object p1

    .line 5
    new-instance v0, Lnet/sf/saxon/jaxp/TemplatesImpl;

    invoke-direct {v0, p0, p1}, Lnet/sf/saxon/jaxp/TemplatesImpl;-><init>(Ljavax/xml/transform/TransformerFactory;Lnet/sf/saxon/s9api/XsltExecutable;)V
    :try_end_0
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    :try_start_1
    new-instance v0, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {v0, p1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized newTemplates(Ljavax/xml/transform/Source;Lnet/sf/saxon/trans/CompilerInfo;)Ljavax/xml/transform/Templates;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    monitor-enter p0

    .line 7
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->e:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {v0}, Lnet/sf/saxon/s9api/Processor;->newXsltCompiler()Lnet/sf/saxon/s9api/XsltCompiler;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lnet/sf/saxon/s9api/XsltCompiler;->getUnderlyingCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v1

    invoke-virtual {v1, p2}, Lnet/sf/saxon/trans/CompilerInfo;->copyFrom(Lnet/sf/saxon/trans/CompilerInfo;)V

    .line 9
    new-instance p2, Lnet/sf/saxon/jaxp/TemplatesImpl;

    invoke-virtual {v0, p1}, Lnet/sf/saxon/s9api/XsltCompiler;->compile(Ljavax/xml/transform/Source;)Lnet/sf/saxon/s9api/XsltExecutable;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lnet/sf/saxon/jaxp/TemplatesImpl;-><init>(Ljavax/xml/transform/TransformerFactory;Lnet/sf/saxon/s9api/XsltExecutable;)V
    :try_end_0
    .catch Lnet/sf/saxon/s9api/SaxonApiException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p2

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    :try_start_1
    new-instance p2, Ljavax/xml/transform/TransformerConfigurationException;

    invoke-direct {p2, p1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    throw p1
.end method

.method public newTemplatesHandler()Ljavax/xml/transform/sax/TemplatesHandler;
    .locals 2

    new-instance v0, Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;

    iget-object v1, p0, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->e:Lnet/sf/saxon/s9api/Processor;

    invoke-direct {v0, p0, v1}, Lnet/sf/saxon/jaxp/TemplatesHandlerImpl;-><init>(Ljavax/xml/transform/TransformerFactory;Lnet/sf/saxon/s9api/Processor;)V

    return-object v0
.end method

.method public newTransformer()Ljavax/xml/transform/Transformer;
    .locals 1

    .line 3
    new-instance v0, Lnet/sf/saxon/jaxp/IdentityTransformer;

    iget-object p0, p0, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->e:Lnet/sf/saxon/s9api/Processor;

    invoke-virtual {p0}, Lnet/sf/saxon/s9api/Processor;->getUnderlyingConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/jaxp/IdentityTransformer;-><init>(Lnet/sf/saxon/Configuration;)V

    return-object v0
.end method

.method public newTransformer(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Transformer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object p0

    .line 2
    invoke-interface {p0}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p0

    return-object p0
.end method

.method public newTransformerHandler()Ljavax/xml/transform/sax/TransformerHandler;
    .locals 1

    .line 7
    new-instance v0, Lnet/sf/saxon/jaxp/IdentityTransformer;

    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-direct {v0, p0}, Lnet/sf/saxon/jaxp/IdentityTransformer;-><init>(Lnet/sf/saxon/Configuration;)V

    .line 8
    new-instance p0, Lnet/sf/saxon/jaxp/IdentityTransformerHandler;

    invoke-direct {p0, v0}, Lnet/sf/saxon/jaxp/IdentityTransformerHandler;-><init>(Lnet/sf/saxon/jaxp/IdentityTransformer;)V

    return-object p0
.end method

.method public newTransformerHandler(Ljavax/xml/transform/Source;)Ljavax/xml/transform/sax/TransformerHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->newTransformerHandler(Ljavax/xml/transform/Templates;)Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object p0

    return-object p0
.end method

.method public newTransformerHandler(Ljavax/xml/transform/Templates;)Ljavax/xml/transform/sax/TransformerHandler;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 3
    instance-of p0, p1, Lnet/sf/saxon/jaxp/TemplatesImpl;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p1}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/jaxp/TransformerImpl;

    .line 5
    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/TransformerImpl;->newTransformerHandler()Ljavax/xml/transform/sax/TransformerHandler;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljavax/xml/transform/TransformerConfigurationException;

    const-string p1, "Templates object was not created by Saxon"

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public newXMLFilter(Ljavax/xml/transform/Source;)Lorg/xml/sax/XMLFilter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->newTemplates(Ljavax/xml/transform/Source;)Ljavax/xml/transform/Templates;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1}, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->newXMLFilter(Ljavax/xml/transform/Templates;)Lorg/xml/sax/XMLFilter;

    move-result-object p0

    return-object p0
.end method

.method public newXMLFilter(Ljavax/xml/transform/Templates;)Lorg/xml/sax/XMLFilter;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    .line 3
    instance-of p0, p1, Lnet/sf/saxon/jaxp/TemplatesImpl;

    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p1}, Ljavax/xml/transform/Templates;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object p0

    check-cast p0, Lcom/sunia/HTREnginev2/h5;

    .line 5
    invoke-virtual {p0}, Lcom/sunia/HTREnginev2/h5;->newXMLFilter()Lorg/xml/sax/XMLFilter;

    move-result-object p0

    return-object p0

    .line 6
    :cond_0
    new-instance p0, Ljavax/xml/transform/TransformerConfigurationException;

    const-string p1, "Supplied Templates object was not created using Saxon"

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "http://javax.xml.XMLConstants/property/accessExternalDTD"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "http://javax.xml.XMLConstants/property/accessExternalStylesheet"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "http://saxon.sf.net/feature/configuration-file"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "http://saxon.sf.net/feature/configuration"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/Configuration;->setConfigurationProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_0
    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    const-string p1, "http://saxon.sf.net/feature/parserProperty?uri=http://javax.xml.XMLConstants/property/accessExternalDTD"

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/Configuration;->setConfigurationProperty(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_1
    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/lib/Feature;->ALLOWED_PROTOCOLS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lnet/sf/saxon/Configuration;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p0

    instance-of p1, p0, Lnet/sf/saxon/lib/CatalogResourceResolver;

    if-eqz p1, :cond_4

    check-cast p0, Lnet/sf/saxon/lib/CatalogResourceResolver;

    sget-object p1, Lorg/xmlresolver/ResolverFeature;->ACCESS_EXTERNAL_DOCUMENT:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/lib/CatalogResourceResolver;->setFeature(Lorg/xmlresolver/ResolverFeature;Ljava/lang/Object;)V

    sget-object p1, Lorg/xmlresolver/ResolverFeature;->ACCESS_EXTERNAL_ENTITY:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/lib/CatalogResourceResolver;->setFeature(Lorg/xmlresolver/ResolverFeature;Ljava/lang/Object;)V

    goto :goto_1

    :pswitch_2
    new-instance p1, Lnet/sf/saxon/trans/ConfigurationReader;

    invoke-direct {p1}, Lnet/sf/saxon/trans/ConfigurationReader;-><init>()V

    :try_start_0
    new-instance v0, Ljavax/xml/transform/stream/StreamSource;

    new-instance v1, Ljava/io/File;

    check-cast p2, Ljava/lang/String;

    invoke-direct {v1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/File;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/trans/ConfigurationReader;->makeConfiguration(Ljavax/xml/transform/Source;)Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->setConfiguration(Lnet/sf/saxon/Configuration;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :pswitch_3
    check-cast p2, Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, p2}, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->setConfiguration(Lnet/sf/saxon/Configuration;)V

    :cond_4
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x5311cf19 -> :sswitch_3
        -0x52b6a15e -> :sswitch_2
        0x2f8ecbe1 -> :sswitch_1
        0x4d61aba1 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setConfiguration(Lnet/sf/saxon/Configuration;)V
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->e:Lnet/sf/saxon/s9api/Processor;

    sget-object v0, Lnet/sf/saxon/lib/Feature;->CONFIGURATION:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/s9api/Processor;->setConfigurationProperty(Lnet/sf/saxon/lib/Feature;Ljava/lang/Object;)V

    return-void
.end method

.method public setErrorListener(Ljavax/xml/transform/ErrorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p1, :cond_0

    iput-object p1, p0, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->f:Ljavax/xml/transform/ErrorListener;

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public setFeature(Ljava/lang/String;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerConfigurationException;
        }
    .end annotation

    const-string v0, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/lib/Feature;->ALLOW_EXTERNAL_FUNCTIONS:Lnet/sf/saxon/lib/Feature;

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/Configuration;->setBooleanProperty(Lnet/sf/saxon/lib/Feature;Z)V

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/Configuration;->setBooleanProperty(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    new-instance p0, Ljavax/xml/transform/TransformerConfigurationException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unsupported TransformerFactory feature: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljavax/xml/transform/TransformerConfigurationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setURIResolver(Ljavax/xml/transform/URIResolver;)V
    .locals 1

    invoke-virtual {p0}, Lnet/sf/saxon/jaxp/SaxonTransformerFactory;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    new-instance v0, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;

    invoke-direct {v0, p1}, Lnet/sf/saxon/lib/ResourceResolverWrappingURIResolver;-><init>(Ljavax/xml/transform/URIResolver;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V

    return-void
.end method
