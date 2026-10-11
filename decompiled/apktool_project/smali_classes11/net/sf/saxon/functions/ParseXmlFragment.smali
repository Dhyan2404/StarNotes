.class public Lnet/sf/saxon/functions/ParseXmlFragment;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/ParseXmlFragment$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static synthetic a(Ljava/util/List;Ljava/io/StringReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lnet/sf/saxon/functions/ParseXmlFragment;->d(Ljava/util/List;Ljava/io/StringReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;
    .locals 0

    invoke-static {p0}, Lnet/sf/saxon/functions/ParseXmlFragment;->e(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Ljava/util/List;Ljava/io/StringReader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string p3, "http://www.saxonica.com/parse-xml-fragment/actual.xml"

    invoke-virtual {p3, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance p0, Lorg/xml/sax/InputSource;

    invoke-direct {p0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static synthetic e(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;
    .locals 1

    new-instance v0, Lnet/sf/saxon/functions/ParseXmlFragment$a;

    invoke-direct {v0, p0}, Lnet/sf/saxon/functions/ParseXmlFragment$a;-><init>(Lnet/sf/saxon/event/Receiver;)V

    return-object v0
.end method


# virtual methods
.method public final c(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeInfo;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "FODC0006"

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lnet/sf/saxon/functions/ParseXml$RetentiveErrorHandler;

    invoke-direct {v2}, Lnet/sf/saxon/functions/ParseXml$RetentiveErrorHandler;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    add-int/lit8 v5, v4, 0x1

    const/4 v6, 0x3

    if-ge v4, v6, :cond_8

    :try_start_0
    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v6

    new-instance v7, Ljava/io/StringReader;

    invoke-interface {p1}, Lnet/sf/saxon/om/Item;->getStringValue()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    const-string v8, "<!DOCTYPE z [<!ENTITY e SYSTEM \"http://www.saxonica.com/parse-xml-fragment/actual.xml\">]>\n<z>&e;</z>"

    new-instance v9, Ljava/io/StringReader;

    invoke-direct {v9, v8}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    new-instance v8, Lorg/xml/sax/InputSource;

    invoke-direct {v8, v9}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v8, v1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    new-instance v9, Ljavax/xml/transform/sax/SAXSource;

    invoke-direct {v9, v8}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    const/4 v8, 0x1

    if-ne v5, v8, :cond_0

    invoke-virtual {v6}, Lnet/sf/saxon/Configuration;->getSourceParser()Lorg/xml/sax/XMLReader;

    move-result-object v8

    invoke-interface {v8}, Lorg/xml/sax/XMLReader;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v10

    if-eqz v10, :cond_1

    goto/16 :goto_2

    :cond_0
    sget-object v8, Lnet/sf/saxon/Version;->platform:Lnet/sf/saxon/Platform;

    invoke-interface {v8}, Lnet/sf/saxon/Platform;->loadParserForXmlFragments()Lorg/xml/sax/XMLReader;

    move-result-object v8

    :cond_1
    invoke-static {v8}, Lnet/sf/saxon/resource/ActiveSAXSource;->configureParser(Lorg/xml/sax/XMLReader;)V

    invoke-virtual {v9, v8}, Ljavax/xml/transform/sax/SAXSource;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    invoke-virtual {v9, v1}, Ljavax/xml/transform/sax/SAXSource;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {v4}, Lnet/sf/saxon/Controller;->makeBuilder()Lnet/sf/saxon/event/Builder;

    move-result-object v10

    instance-of v11, v10, Lnet/sf/saxon/tree/tiny/TinyBuilder;

    if-eqz v11, :cond_2

    move-object v11, v10

    check-cast v11, Lnet/sf/saxon/tree/tiny/TinyBuilder;

    invoke-virtual {v4}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Lnet/sf/saxon/Configuration;->getTreeStatistics()Lnet/sf/saxon/tree/tiny/TreeStatistics;

    move-result-object v4

    iget-object v4, v4, Lnet/sf/saxon/tree/tiny/TreeStatistics;->FN_PARSE_STATISTICS:Lnet/sf/saxon/tree/tiny/Statistics;

    invoke-virtual {v11, v4}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->setStatistics(Lnet/sf/saxon/tree/tiny/Statistics;)V

    :cond_2
    new-instance v4, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {v4}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    const/4 v11, 0x4

    invoke-virtual {v4, v11}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    invoke-virtual {v4, v11}, Lnet/sf/saxon/lib/ParseOptions;->setDTDValidationMode(I)V

    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    new-instance v12, Lcom/sunia/HTREnginev2/wwk;

    invoke-direct {v12, v11, v7, v1}, Lcom/sunia/HTREnginev2/wwk;-><init>(Ljava/util/List;Ljava/io/StringReader;Ljava/lang/String;)V

    invoke-interface {v8, v12}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object v7

    invoke-virtual {v7}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v7

    instance-of v8, v7, Lnet/sf/saxon/style/StylesheetPackage;

    if-eqz v8, :cond_3

    move-object v8, v7

    check-cast v8, Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v8}, Lnet/sf/saxon/style/StylesheetPackage;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object v8

    invoke-virtual {v4, v8}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    check-cast v7, Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v7}, Lnet/sf/saxon/style/StylesheetPackage;->isStripsTypeAnnotations()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v6, v10}, Lnet/sf/saxon/Configuration;->getAnnotationStripper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object v6

    goto :goto_1

    :cond_3
    invoke-static {}, Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/IgnorableSpaceStrippingRule;

    move-result-object v6

    invoke-virtual {v4, v6}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    :cond_4
    move-object v6, v10

    :goto_1
    invoke-virtual {v4, v2}, Lnet/sf/saxon/lib/ParseOptions;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    invoke-virtual {v10}, Lnet/sf/saxon/event/Builder;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v7

    invoke-interface {v6, v7}, Lnet/sf/saxon/event/Receiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    new-instance v7, Lcom/sunia/HTREnginev2/xwk;

    invoke-direct {v7}, Lcom/sunia/HTREnginev2/xwk;-><init>()V

    invoke-virtual {v4, v7}, Lnet/sf/saxon/lib/ParseOptions;->addFilter(Lnet/sf/saxon/event/FilterFactory;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-static {v9, v6, v4}, Lnet/sf/saxon/event/Sender;->send(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-virtual {v10}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v3

    invoke-virtual {v10}, Lnet/sf/saxon/event/Builder;->reset()V

    goto :goto_2

    :catch_0
    move-exception v4

    invoke-interface {v11}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_6

    const/4 v4, 0x2

    if-eq v5, v4, :cond_5

    :goto_2
    move v4, v5

    goto/16 :goto_0

    :cond_5
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The configured XML parser cannot be used by fn:parse-xml-fragment(), because it ignores the supplied EntityResolver"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Lnet/sf/saxon/functions/ParseXml$RetentiveErrorHandler;->captureRetainedErrors(Lnet/sf/saxon/trans/XPathException;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p0

    :cond_6
    throw v4

    :cond_7
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "parse-xml-fragment() function is not available in this environment"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "First argument to parse-xml-fragment() is not a well-formed and namespace-well-formed XML fragment. XML parser reported: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lnet/sf/saxon/functions/ParseXml$RetentiveErrorHandler;->captureRetainedErrors(Lnet/sf/saxon/trans/XPathException;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p1

    :cond_8
    return-object v3
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
    invoke-virtual {p0, p2, p1}, Lnet/sf/saxon/functions/ParseXmlFragment;->c(Lnet/sf/saxon/value/StringValue;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method
