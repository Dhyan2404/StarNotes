.class public Lnet/sf/saxon/dom/DocumentBuilderImpl;
.super Ljavax/xml/parsers/DocumentBuilder;
.source "SourceFile"


# instance fields
.field public e:Lnet/sf/saxon/Configuration;

.field public f:Lnet/sf/saxon/lib/ParseOptions;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/xml/parsers/DocumentBuilder;-><init>()V

    new-instance v0, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {v0}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/dom/DocumentBuilderImpl;->f:Lnet/sf/saxon/lib/ParseOptions;

    return-void
.end method


# virtual methods
.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 1

    iget-object v0, p0, Lnet/sf/saxon/dom/DocumentBuilderImpl;->e:Lnet/sf/saxon/Configuration;

    if-nez v0, :cond_0

    new-instance v0, Lnet/sf/saxon/Configuration;

    invoke-direct {v0}, Lnet/sf/saxon/Configuration;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/dom/DocumentBuilderImpl;->e:Lnet/sf/saxon/Configuration;

    :cond_0
    iget-object p0, p0, Lnet/sf/saxon/dom/DocumentBuilderImpl;->e:Lnet/sf/saxon/Configuration;

    return-object p0
.end method

.method public getDOMImplementation()Lorg/w3c/dom/DOMImplementation;
    .locals 0

    invoke-virtual {p0}, Lnet/sf/saxon/dom/DocumentBuilderImpl;->newDocument()Lorg/w3c/dom/Document;

    move-result-object p0

    invoke-interface {p0}, Lorg/w3c/dom/Document;->getImplementation()Lorg/w3c/dom/DOMImplementation;

    move-result-object p0

    return-object p0
.end method

.method public getParseOptions()Lnet/sf/saxon/lib/ParseOptions;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/dom/DocumentBuilderImpl;->f:Lnet/sf/saxon/lib/ParseOptions;

    return-object p0
.end method

.method public getStripSpace()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object p0, p0, Lnet/sf/saxon/dom/DocumentBuilderImpl;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object p0

    invoke-static {}, Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;

    move-result-object v0

    if-ne p0, v0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    move-result-object v0

    if-ne p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-static {}, Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p0, v0, :cond_2

    return v1

    :cond_2
    if-nez p0, :cond_3

    return v1

    :cond_3
    const/4 p0, 0x4

    return p0
.end method

.method public isNamespaceAware()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isValidating()Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/dom/DocumentBuilderImpl;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->getDTDValidationMode()I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isXIncludeAware()Z
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/dom/DocumentBuilderImpl;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/ParseOptions;->isXIncludeAware()Z

    move-result p0

    return p0
.end method

.method public newDocument()Lorg/w3c/dom/Document;
    .locals 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "The only way to build a document using this DocumentBuilder is with the parse() method"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public parse(Ljava/io/File;)Lorg/w3c/dom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 12
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    .line 14
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0, v0}, Lnet/sf/saxon/dom/DocumentBuilderImpl;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object p0

    return-object p0
.end method

.method public parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lnet/sf/saxon/dom/DocumentBuilderImpl;->e:Lnet/sf/saxon/Configuration;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lnet/sf/saxon/Configuration;

    invoke-direct {v0}, Lnet/sf/saxon/Configuration;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/dom/DocumentBuilderImpl;->e:Lnet/sf/saxon/Configuration;

    .line 3
    :cond_0
    new-instance v0, Lnet/sf/saxon/tree/tiny/TinyBuilder;

    iget-object v1, p0, Lnet/sf/saxon/dom/DocumentBuilderImpl;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/tree/tiny/TinyBuilder;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    .line 4
    iget-object v1, p0, Lnet/sf/saxon/dom/DocumentBuilderImpl;->e:Lnet/sf/saxon/Configuration;

    invoke-virtual {v1}, Lnet/sf/saxon/Configuration;->getTreeStatistics()Lnet/sf/saxon/tree/tiny/TreeStatistics;

    move-result-object v1

    iget-object v1, v1, Lnet/sf/saxon/tree/tiny/TreeStatistics;->SOURCE_DOCUMENT_STATISTICS:Lnet/sf/saxon/tree/tiny/Statistics;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->setStatistics(Lnet/sf/saxon/tree/tiny/Statistics;)V

    .line 5
    new-instance v1, Ljavax/xml/transform/sax/SAXSource;

    invoke-direct {v1, p1}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    .line 6
    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljavax/xml/transform/sax/SAXSource;->setSystemId(Ljava/lang/String;)V

    .line 7
    iget-object p0, p0, Lnet/sf/saxon/dom/DocumentBuilderImpl;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-static {v1, v0, p0}, Lnet/sf/saxon/event/Sender;->send(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V

    .line 8
    invoke-virtual {v0}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    check-cast p0, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;

    .line 9
    invoke-virtual {v0}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->reset()V

    .line 10
    invoke-static {p0}, Lnet/sf/saxon/dom/NodeOverNodeInfo;->wrap(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/dom/NodeOverNodeInfo;

    move-result-object p0

    check-cast p0, Lorg/w3c/dom/Document;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 11
    new-instance p1, Lorg/xml/sax/SAXException;

    invoke-direct {p1, p0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/Exception;)V

    throw p1
.end method

.method public setConfiguration(Lnet/sf/saxon/Configuration;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/dom/DocumentBuilderImpl;->e:Lnet/sf/saxon/Configuration;

    return-void
.end method

.method public setEntityResolver(Lorg/xml/sax/EntityResolver;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/dom/DocumentBuilderImpl;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    return-void
.end method

.method public setErrorHandler(Lorg/xml/sax/ErrorHandler;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/dom/DocumentBuilderImpl;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    return-void
.end method

.method public setParseOptions(Lnet/sf/saxon/lib/ParseOptions;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/dom/DocumentBuilderImpl;->f:Lnet/sf/saxon/lib/ParseOptions;

    return-void
.end method

.method public setStripSpace(I)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/dom/DocumentBuilderImpl;->f:Lnet/sf/saxon/lib/ParseOptions;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    iget-object p0, p0, Lnet/sf/saxon/dom/DocumentBuilderImpl;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-static {}, Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/AllElementsSpaceStrippingRule;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lnet/sf/saxon/dom/DocumentBuilderImpl;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-static {}, Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lnet/sf/saxon/dom/DocumentBuilderImpl;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-static {}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    :goto_0
    return-void
.end method

.method public setValidating(Z)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/dom/DocumentBuilderImpl;->f:Lnet/sf/saxon/lib/ParseOptions;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x4

    :goto_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setDTDValidationMode(I)V

    return-void
.end method

.method public setXIncludeAware(Z)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/dom/DocumentBuilderImpl;->f:Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setXIncludeAware(Z)V

    return-void
.end method
