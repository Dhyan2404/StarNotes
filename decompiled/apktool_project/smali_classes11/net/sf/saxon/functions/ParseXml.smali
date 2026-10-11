.class public Lnet/sf/saxon/functions/ParseXml;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/ParseXml$RetentiveErrorHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static d()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public final a(Lnet/sf/saxon/trans/XPathException;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "First argument to parse-xml() is not a well-formed and namespace-well-formed XML document. "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Ljavax/xml/transform/TransformerException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public final b(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    new-instance v3, Ljava/io/StringReader;

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljavax/xml/transform/stream/StreamSource;

    invoke-direct {p1, v3, v0}, Ljavax/xml/transform/stream/StreamSource;-><init>(Ljava/io/Reader;Ljava/lang/String;)V

    sget-object v3, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    invoke-interface {v3, p1, v2}, Lnet/sf/saxon/Platform;->resolveSource(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/lib/ActiveSource;

    move-result-object p1

    sget-object v3, Lnet/sf/saxon/om/TreeModel;->TINY_TREE:Lnet/sf/saxon/om/TreeModel;

    invoke-virtual {v1}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-virtual {v3, v1}, Lnet/sf/saxon/om/TreeModel;->makeBuilder(Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Builder;

    move-result-object v1

    new-instance v3, Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/sf/saxon/lib/ParseOptions;-><init>(Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v4

    instance-of v5, v4, Lnet/sf/saxon/style/StylesheetPackage;

    if-eqz v5, :cond_0

    move-object v5, v4

    check-cast v5, Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v5}, Lnet/sf/saxon/style/StylesheetPackage;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object v5

    invoke-virtual {v3, v5}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    check-cast v4, Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v4}, Lnet/sf/saxon/style/StylesheetPackage;->isStripsTypeAnnotations()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2, v1}, Lnet/sf/saxon/Configuration;->getAnnotationStripper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;

    move-result-object v2

    invoke-virtual {v3, v2}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    :cond_1
    move-object v2, v1

    :goto_0
    invoke-virtual {v1}, Lnet/sf/saxon/event/Builder;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v4

    invoke-interface {v2, v4}, Lnet/sf/saxon/event/Receiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-static {p1, v2, v3}, Lnet/sf/saxon/event/Sender;->send(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-virtual {v1}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    instance-of v2, p1, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, ""

    const-string v4, "saxon:document-uri"

    if-eqz v2, :cond_2

    :try_start_1
    move-object v2, p1

    check-cast v2, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;

    invoke-virtual {v2, v0}, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;->setBaseURI(Ljava/lang/String;)V

    invoke-virtual {v2}, Lnet/sf/saxon/tree/tiny/TinyNodeImpl;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v0

    invoke-interface {v0, v4, v3}, Lnet/sf/saxon/om/TreeInfo;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    instance-of v2, p1, Lnet/sf/saxon/tree/linked/DocumentImpl;

    if-eqz v2, :cond_3

    move-object v2, p1

    check-cast v2, Lnet/sf/saxon/tree/linked/DocumentImpl;

    invoke-virtual {v2, v0}, Lnet/sf/saxon/tree/linked/DocumentImpl;->setBaseURI(Ljava/lang/String;)V

    invoke-virtual {v2}, Lnet/sf/saxon/tree/linked/NodeImpl;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object v0

    invoke-interface {v0, v4, v3}, Lnet/sf/saxon/om/TreeInfo;->setUserData(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    :goto_1
    invoke-virtual {v1}, Lnet/sf/saxon/event/Builder;->reset()V

    return-object p1

    :cond_4
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "parse-xml() function is not available in this environment"

    invoke-direct {p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/ParseXml;->a(Lnet/sf/saxon/trans/XPathException;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "FODC0006"

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p1
.end method

.method public final c(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeInfo;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/functions/ParseXml$RetentiveErrorHandler;

    invoke-direct {v1}, Lnet/sf/saxon/functions/ParseXml$RetentiveErrorHandler;-><init>()V

    :try_start_0
    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    new-instance v4, Ljava/io/StringReader;

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/xml/sax/InputSource;

    invoke-direct {p1, v4}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p1, v0}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    new-instance v4, Ljavax/xml/transform/sax/SAXSource;

    invoke-direct {v4, p1}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    invoke-interface {v4, v0}, Ljavax/xml/transform/Source;->setSystemId(Ljava/lang/String;)V

    sget-object p1, Lnet/sf/saxon/om/TreeModel;->TINY_TREE:Lnet/sf/saxon/om/TreeModel;

    invoke-virtual {v2}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v2

    invoke-virtual {p1, v2}, Lnet/sf/saxon/om/TreeModel;->makeBuilder(Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/event/Builder;

    move-result-object p1

    new-instance v2, Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {v3}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v5

    invoke-direct {v2, v5}, Lnet/sf/saxon/lib/ParseOptions;-><init>(Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v5

    instance-of v6, v5, Lnet/sf/saxon/style/StylesheetPackage;

    if-eqz v6, :cond_0

    move-object v6, v5

    check-cast v6, Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v6}, Lnet/sf/saxon/style/StylesheetPackage;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object v6

    invoke-virtual {v2, v6}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    check-cast v5, Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v5}, Lnet/sf/saxon/style/StylesheetPackage;->isStripsTypeAnnotations()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, p1}, Lnet/sf/saxon/Configuration;->getAnnotationStripper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    :cond_1
    move-object v3, p1

    :goto_0
    invoke-virtual {v2, v1}, Lnet/sf/saxon/lib/ParseOptions;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-virtual {p1}, Lnet/sf/saxon/event/Builder;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v5

    invoke-interface {v3, v5}, Lnet/sf/saxon/event/Receiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-static {v4, v3, v2}, Lnet/sf/saxon/event/Sender;->send(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-virtual {p1}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;

    invoke-virtual {v2, v0}, Lnet/sf/saxon/tree/tiny/TinyDocumentImpl;->setBaseURI(Ljava/lang/String;)V

    invoke-virtual {p1}, Lnet/sf/saxon/event/Builder;->reset()V

    return-object v2

    :cond_2
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "parse-xml() function is not available in this environment"

    invoke-direct {p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/functions/ParseXml;->a(Lnet/sf/saxon/trans/XPathException;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "FODC0006"

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Lnet/sf/saxon/functions/ParseXml$RetentiveErrorHandler;->captureRetainedErrors(Lnet/sf/saxon/trans/XPathException;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p1
.end method

.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/value/StringValue;

    if-nez p2, :cond_0

    invoke-static {}, Lnet/sf/saxon/value/EmptySequence;->getInstance()Lnet/sf/saxon/value/EmptySequence;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {}, Lnet/sf/saxon/functions/ParseXml;->d()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/functions/ParseXml;->c(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/functions/ParseXml;->b(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method
