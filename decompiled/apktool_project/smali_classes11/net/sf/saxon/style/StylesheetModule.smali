.class public Lnet/sf/saxon/style/StylesheetModule;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lnet/sf/saxon/style/StyleElement;

.field public b:I

.field public c:I

.field public d:Lnet/sf/saxon/style/StylesheetModule;

.field public e:Z

.field public f:I

.field protected topLevel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/sf/saxon/style/ComponentDeclaration;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lnet/sf/saxon/style/StyleElement;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnet/sf/saxon/style/StylesheetModule;->f:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    iput-object p1, p0, Lnet/sf/saxon/style/StylesheetModule;->a:Lnet/sf/saxon/style/StyleElement;

    iput p2, p0, Lnet/sf/saxon/style/StylesheetModule;->b:I

    return-void
.end method

.method public static a(Lnet/sf/saxon/Configuration;Ljava/lang/String;[Ljavax/xml/transform/Source;)Ljavax/xml/transform/Source;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    array-length p0, p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    aget-object p0, p2, v1

    return-object p0

    :cond_0
    array-length p0, p2

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0xfa

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "<xsl:stylesheet version=\'1.0\' "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " xmlns:xsl=\'http://www.w3.org/1999/XSL/Transform\'>"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, p2

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p2, v1

    const-string v3, "<xsl:import href=\'"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\'/>"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const-string p2, "</xsl:stylesheet>"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p2, Lorg/xml/sax/InputSource;

    invoke-direct {p2}, Lorg/xml/sax/InputSource;-><init>()V

    invoke-virtual {p2, p1}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    new-instance p1, Ljava/io/StringReader;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lorg/xml/sax/InputSource;->setCharacterStream(Ljava/io/Reader;)V

    new-instance p0, Ljavax/xml/transform/sax/SAXSource;

    invoke-direct {p0, p2}, Ljavax/xml/transform/sax/SAXSource;-><init>(Lorg/xml/sax/InputSource;)V

    return-object p0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "No stylesheets were supplied"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static b(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/lib/ParseOptions;
    .locals 1

    instance-of v0, p0, Lnet/sf/saxon/lib/AugmentedSource;

    if-eqz v0, :cond_0

    check-cast p0, Lnet/sf/saxon/lib/AugmentedSource;

    invoke-virtual {p0}, Lnet/sf/saxon/lib/AugmentedSource;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object p0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {p0}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    :goto_0
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/lib/ParseOptions;->setDTDValidationMode(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/sf/saxon/lib/ParseOptions;->setLineNumbering(Z)V

    invoke-static {}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    invoke-virtual {p1}, Lnet/sf/saxon/event/PipelineConfiguration;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    return-object p0
.end method

.method public static c(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p3}, Lnet/sf/saxon/lib/ParseOptions;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p3}, Lnet/sf/saxon/lib/ParseOptions;->getXMLReaderMaker()Lnet/sf/saxon/trans/Maker;

    move-result-object v0

    if-nez v0, :cond_1

    instance-of v0, p0, Ljavax/xml/transform/sax/SAXSource;

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {v0}, Ljavax/xml/transform/sax/SAXSource;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    invoke-static {p0, p2, p3}, Lnet/sf/saxon/event/Sender;->send(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getStyleParser()Lorg/xml/sax/XMLReader;

    move-result-object v0

    invoke-virtual {p3, v0}, Lnet/sf/saxon/lib/ParseOptions;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    invoke-static {p0, p2, p3}, Lnet/sf/saxon/event/Sender;->send(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-virtual {p1, v0}, Lnet/sf/saxon/Configuration;->reuseStyleParser(Lorg/xml/sax/XMLReader;)V

    :goto_2
    return-void
.end method

.method public static getAssociatedStylesheet(Lnet/sf/saxon/Configuration;Lnet/sf/saxon/lib/ResourceResolver;Ljavax/xml/transform/Source;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/transform/Source;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    new-instance p5, Lnet/sf/saxon/event/PIGrabber;

    new-instance v0, Lnet/sf/saxon/event/Sink;

    invoke-virtual {p0}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/sf/saxon/event/Sink;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-direct {p5, v0}, Lnet/sf/saxon/event/PIGrabber;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {p5, p0}, Lnet/sf/saxon/event/PIGrabber;->setFactory(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {p5, p3, p4}, Lnet/sf/saxon/event/PIGrabber;->setCriteria(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p5, p3}, Lnet/sf/saxon/event/PIGrabber;->setBaseURI(Ljava/lang/String;)V

    invoke-virtual {p5, p1}, Lnet/sf/saxon/event/PIGrabber;->setResourceResolver(Lnet/sf/saxon/lib/ResourceResolver;)V

    const/4 p1, 0x0

    :try_start_0
    invoke-static {p2, p5, p1}, Lnet/sf/saxon/event/Sender;->send(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p5}, Lnet/sf/saxon/event/PIGrabber;->isTerminated()Z

    move-result p3

    if-eqz p3, :cond_2

    :goto_0
    :try_start_1
    invoke-virtual {p5}, Lnet/sf/saxon/event/PIGrabber;->getAssociatedStylesheets()[Ljavax/xml/transform/Source;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Lnet/sf/saxon/style/StylesheetModule;->a(Lnet/sf/saxon/Configuration;Ljava/lang/String;[Ljavax/xml/transform/Source;)Ljavax/xml/transform/Source;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "No matching <?xml-stylesheet?> processing instruction found"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    move-exception p0

    instance-of p1, p0, Lnet/sf/saxon/trans/XPathException;

    if-eqz p1, :cond_1

    check-cast p0, Lnet/sf/saxon/trans/XPathException;

    throw p0

    :cond_1
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Failed while looking for xml-stylesheet PI"

    invoke-direct {p0, p2, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p0
.end method

.method public static loadStylesheet(Ljavax/xml/transform/Source;Lnet/sf/saxon/style/Compilation;)Lnet/sf/saxon/PreparedStylesheet;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    instance-of v0, p0, Ljavax/xml/transform/sax/SAXSource;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    sget-object v2, Lnet/sf/saxon/lib/Feature;->IGNORE_SAX_SOURCE_PARSER:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v2}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    check-cast v0, Ljavax/xml/transform/sax/SAXSource;

    invoke-virtual {v0, v1}, Ljavax/xml/transform/sax/SAXSource;->setXMLReader(Lorg/xml/sax/XMLReader;)V

    :cond_0
    invoke-interface {p0}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance v1, Lnet/sf/saxon/om/DocumentKey;

    invoke-direct {v1, v0}, Lnet/sf/saxon/om/DocumentKey;-><init>(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getImportStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The stylesheet module includes/imports itself directly or indirectly"

    const-string v0, "XTSE0180"

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getImportStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->setMinimalPackageData()V

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/trans/CompilerInfo;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/event/PipelineConfiguration;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    new-instance v2, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    invoke-direct {v2, v1}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-interface {p0}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/event/Builder;->setSystemId(Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Lnet/sf/saxon/style/Compilation;->getStyleNodeFactory(Z)Lnet/sf/saxon/style/StyleNodeFactory;

    move-result-object v4

    invoke-virtual {v2, v4}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->setNodeFactory(Lnet/sf/saxon/tree/linked/NodeFactory;)V

    invoke-virtual {v2, v3}, Lnet/sf/saxon/event/Builder;->setLineNumbering(Z)V

    new-instance v4, Lnet/sf/saxon/style/UseWhenFilter;

    sget-object v5, Lnet/sf/saxon/value/NestedIntegerValue;->TWO:Lnet/sf/saxon/value/NestedIntegerValue;

    invoke-direct {v4, p1, v2, v5}, Lnet/sf/saxon/style/UseWhenFilter;-><init>(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/value/NestedIntegerValue;)V

    invoke-interface {p0}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lnet/sf/saxon/event/ProxyReceiver;->setSystemId(Ljava/lang/String;)V

    new-instance v5, Lnet/sf/saxon/om/StylesheetSpaceStrippingRule;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v6

    invoke-direct {v5, v6}, Lnet/sf/saxon/om/StylesheetSpaceStrippingRule;-><init>(Lnet/sf/saxon/om/NamePool;)V

    new-instance v6, Lnet/sf/saxon/event/Stripper;

    invoke-direct {v6, v5, v4}, Lnet/sf/saxon/event/Stripper;-><init>(Lnet/sf/saxon/om/SpaceStrippingRule;Lnet/sf/saxon/event/Receiver;)V

    new-instance v4, Lnet/sf/saxon/event/CommentStripper;

    invoke-direct {v4, v6}, Lnet/sf/saxon/event/CommentStripper;-><init>(Lnet/sf/saxon/event/Receiver;)V

    new-instance v5, Lnet/sf/saxon/tree/tiny/TinyBuilder;

    invoke-direct {v5, v1}, Lnet/sf/saxon/tree/tiny/TinyBuilder;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-interface {p0}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lnet/sf/saxon/event/Builder;->setSystemId(Ljava/lang/String;)V

    new-instance v6, Lnet/sf/saxon/event/CheckSumFilter;

    invoke-direct {v6, v5}, Lnet/sf/saxon/event/CheckSumFilter;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-virtual {v6, v3}, Lnet/sf/saxon/event/CheckSumFilter;->setCheckExistingChecksum(Z)V

    new-instance v7, Lnet/sf/saxon/event/Valve;

    const-string v8, "http://ns.saxonica.com/xslt/export"

    invoke-direct {v7, v8, v4, v6}, Lnet/sf/saxon/event/Valve;-><init>(Ljava/lang/String;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/event/Receiver;)V

    invoke-static {p0, v1}, Lnet/sf/saxon/style/StylesheetModule;->b(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v1

    :try_start_0
    invoke-static {p0, v0, v7, v1}, Lnet/sf/saxon/style/StylesheetModule;->c(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-virtual {v7}, Lnet/sf/saxon/event/Valve;->wasDiverted()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v6}, Lnet/sf/saxon/event/CheckSumFilter;->isChecksumCorrect()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makePackageLoader()Lnet/sf/saxon/trans/packages/IPackageLoader;

    move-result-object v0

    invoke-virtual {v5}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v2

    invoke-interface {v0, v2}, Lnet/sf/saxon/trans/packages/IPackageLoader;->loadPackageDoc(Lnet/sf/saxon/om/NodeInfo;)Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/style/Compilation;->setPackageData(Lnet/sf/saxon/expr/PackageData;)V

    new-instance v2, Lnet/sf/saxon/PreparedStylesheet;

    invoke-direct {v2, p1}, Lnet/sf/saxon/PreparedStylesheet;-><init>(Lnet/sf/saxon/style/Compilation;)V

    invoke-virtual {v0}, Lnet/sf/saxon/style/StylesheetPackage;->checkForAbstractComponents()V

    invoke-virtual {v0, v2}, Lnet/sf/saxon/style/StylesheetPackage;->updatePreparedStylesheet(Lnet/sf/saxon/PreparedStylesheet;)V
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lnet/sf/saxon/lib/ParseOptions;->isPleaseCloseAfterUse()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {p0}, Lnet/sf/saxon/lib/ParseOptions;->close(Ljavax/xml/transform/Source;)V

    :cond_4
    return-object v2

    :cond_5
    :try_start_1
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v2, "Compiled package cannot be loaded: incorrect checksum"

    invoke-direct {v0, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-virtual {v2}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    invoke-virtual {v2}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->reset()V

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getImportStack()Ljava/util/Stack;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    new-instance v2, Lnet/sf/saxon/PreparedStylesheet;

    invoke-direct {v2, p1}, Lnet/sf/saxon/PreparedStylesheet;-><init>(Lnet/sf/saxon/style/Compilation;)V

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->asActiveSource()Lnet/sf/saxon/lib/ActiveSource;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnet/sf/saxon/style/Compilation;->compilePackage(Ljavax/xml/transform/Source;)Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v0

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getErrorCount()I

    move-result v4

    if-gtz v4, :cond_8

    invoke-virtual {v0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/style/StylesheetPackage;->checkForAbstractComponents()V

    invoke-virtual {v0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object v0

    invoke-virtual {v0, v2}, Lnet/sf/saxon/style/StylesheetPackage;->updatePreparedStylesheet(Lnet/sf/saxon/PreparedStylesheet;)V

    invoke-virtual {p1}, Lnet/sf/saxon/style/Compilation;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object v0

    invoke-virtual {v2, v0}, Lnet/sf/saxon/expr/instruct/Executable;->addPackage(Lnet/sf/saxon/expr/PackageData;)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v1}, Lnet/sf/saxon/lib/ParseOptions;->isPleaseCloseAfterUse()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-static {p0}, Lnet/sf/saxon/lib/ParseOptions;->close(Ljavax/xml/transform/Source;)V

    :cond_7
    return-object v2

    :cond_8
    :try_start_2
    new-instance v0, Lnet/sf/saxon/trans/XPathException;

    const-string v2, "Errors were reported during stylesheet compilation"

    invoke-direct {v0, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lnet/sf/saxon/trans/XPathException;->setHasBeenReported(Z)V

    throw v0
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p1, v0}, Lnet/sf/saxon/style/Compilation;->reportError(Lnet/sf/saxon/trans/XPathException;)V

    :cond_9
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    invoke-virtual {v1}, Lnet/sf/saxon/lib/ParseOptions;->isPleaseCloseAfterUse()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {p0}, Lnet/sf/saxon/lib/ParseOptions;->close(Ljavax/xml/transform/Source;)V

    :cond_a
    throw p1
.end method

.method public static loadStylesheetModule(Ljavax/xml/transform/Source;ZLnet/sf/saxon/style/Compilation;Lnet/sf/saxon/value/NestedIntegerValue;)Lnet/sf/saxon/tree/linked/DocumentImpl;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p0}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/sf/saxon/om/DocumentKey;

    invoke-direct {v1, v0}, Lnet/sf/saxon/om/DocumentKey;-><init>(Ljava/lang/String;)V

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p2}, Lnet/sf/saxon/style/Compilation;->getImportStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The stylesheet module includes/imports itself directly or indirectly"

    const-string p2, "XTSE0180"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    invoke-virtual {p2}, Lnet/sf/saxon/style/Compilation;->getImportStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Lnet/sf/saxon/style/Compilation;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-virtual {p2}, Lnet/sf/saxon/style/Compilation;->getCompilerInfo()Lnet/sf/saxon/trans/CompilerInfo;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/trans/CompilerInfo;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/sf/saxon/event/PipelineConfiguration;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    new-instance v2, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;

    invoke-direct {v2, v1}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;-><init>(Lnet/sf/saxon/event/PipelineConfiguration;)V

    invoke-interface {p0}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/event/Builder;->setSystemId(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lnet/sf/saxon/style/Compilation;->getStyleNodeFactory(Z)Lnet/sf/saxon/style/StyleNodeFactory;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->setNodeFactory(Lnet/sf/saxon/tree/linked/NodeFactory;)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lnet/sf/saxon/event/Builder;->setLineNumbering(Z)V

    new-instance v3, Lnet/sf/saxon/style/UseWhenFilter;

    invoke-direct {v3, p2, v2, p3}, Lnet/sf/saxon/style/UseWhenFilter;-><init>(Lnet/sf/saxon/style/Compilation;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/value/NestedIntegerValue;)V

    invoke-interface {p0}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v3, p3}, Lnet/sf/saxon/event/ProxyReceiver;->setSystemId(Ljava/lang/String;)V

    new-instance p3, Lnet/sf/saxon/om/StylesheetSpaceStrippingRule;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getNamePool()Lnet/sf/saxon/om/NamePool;

    move-result-object v4

    invoke-direct {p3, v4}, Lnet/sf/saxon/om/StylesheetSpaceStrippingRule;-><init>(Lnet/sf/saxon/om/NamePool;)V

    new-instance v4, Lnet/sf/saxon/event/Stripper;

    invoke-direct {v4, p3, v3}, Lnet/sf/saxon/event/Stripper;-><init>(Lnet/sf/saxon/om/SpaceStrippingRule;Lnet/sf/saxon/event/Receiver;)V

    new-instance p3, Lnet/sf/saxon/event/CommentStripper;

    invoke-direct {p3, v4}, Lnet/sf/saxon/event/CommentStripper;-><init>(Lnet/sf/saxon/event/Receiver;)V

    invoke-static {p0, v1}, Lnet/sf/saxon/style/StylesheetModule;->b(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/PipelineConfiguration;)Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v1

    :try_start_0
    invoke-static {p0, v0, p3, v1}, Lnet/sf/saxon/style/StylesheetModule;->c(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-virtual {v2}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p3

    check-cast p3, Lnet/sf/saxon/tree/linked/DocumentImpl;

    invoke-virtual {v2}, Lnet/sf/saxon/tree/linked/LinkedTreeBuilder;->reset()V

    invoke-virtual {p2}, Lnet/sf/saxon/style/Compilation;->getImportStack()Ljava/util/Stack;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Lnet/sf/saxon/lib/ParseOptions;->isPleaseCloseAfterUse()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {p0}, Lnet/sf/saxon/lib/ParseOptions;->close(Ljavax/xml/transform/Source;)V

    :cond_3
    return-object p3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p3

    if-eqz p1, :cond_4

    :try_start_1
    invoke-virtual {p3}, Lnet/sf/saxon/trans/XPathException;->hasBeenReported()Z

    move-result p1

    if-nez p1, :cond_4

    invoke-virtual {p2, p3}, Lnet/sf/saxon/style/Compilation;->reportError(Lnet/sf/saxon/trans/XPathException;)V

    :cond_4
    throw p3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    invoke-virtual {v1}, Lnet/sf/saxon/lib/ParseOptions;->isPleaseCloseAfterUse()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-static {p0}, Lnet/sf/saxon/lib/ParseOptions;->close(Ljavax/xml/transform/Source;)V

    :cond_5
    throw p1
.end method


# virtual methods
.method public getConfiguration()Lnet/sf/saxon/Configuration;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetModule;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StyleElement;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    return-object p0
.end method

.method public getImporter()Lnet/sf/saxon/style/StylesheetModule;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetModule;->d:Lnet/sf/saxon/style/StylesheetModule;

    return-object p0
.end method

.method public getInputTypeAnnotations()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/style/StylesheetModule;->f:I

    return p0
.end method

.method public getMinImportPrecedence()I
    .locals 0

    iget p0, p0, Lnet/sf/saxon/style/StylesheetModule;->c:I

    return p0
.end method

.method public getPrecedence()I
    .locals 1

    iget-boolean v0, p0, Lnet/sf/saxon/style/StylesheetModule;->e:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetModule;->d:Lnet/sf/saxon/style/StylesheetModule;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetModule;->getPrecedence()I

    move-result p0

    goto :goto_0

    :cond_0
    iget p0, p0, Lnet/sf/saxon/style/StylesheetModule;->b:I

    :goto_0
    return p0
.end method

.method public getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetModule;->d:Lnet/sf/saxon/style/StylesheetModule;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetModule;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object p0

    return-object p0
.end method

.method public getRootElement()Lnet/sf/saxon/style/StyleElement;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetModule;->a:Lnet/sf/saxon/style/StyleElement;

    return-object p0
.end method

.method public getStylesheetElement()Lnet/sf/saxon/style/XSLModuleRoot;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/style/StylesheetModule;->a:Lnet/sf/saxon/style/StyleElement;

    check-cast p0, Lnet/sf/saxon/style/XSLModuleRoot;

    return-object p0
.end method

.method public setImporter(Lnet/sf/saxon/style/StylesheetModule;)V
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/style/StylesheetModule;->d:Lnet/sf/saxon/style/StylesheetModule;

    return-void
.end method

.method public setInputTypeAnnotations(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget v0, p0, Lnet/sf/saxon/style/StylesheetModule;->f:I

    or-int/2addr v0, p1

    iput v0, p0, Lnet/sf/saxon/style/StylesheetModule;->f:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetModule;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object v0

    const-string v1, "One stylesheet module specifies input-type-annotations=\'strip\', another specifies input-type-annotations=\'preserve\'"

    const-string v2, "XTSE0265"

    invoke-virtual {v0, v1, v2}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetModule;->getPrincipalStylesheetModule()Lnet/sf/saxon/style/PrincipalStylesheetModule;

    move-result-object p0

    invoke-virtual {p0}, Lnet/sf/saxon/style/PrincipalStylesheetModule;->getStylesheetPackage()Lnet/sf/saxon/style/StylesheetPackage;

    move-result-object p0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/style/StylesheetPackage;->setStripsTypeAnnotations(Z)V

    :cond_1
    return-void
.end method

.method public setMinImportPrecedence(I)V
    .locals 0

    iput p1, p0, Lnet/sf/saxon/style/StylesheetModule;->c:I

    return-void
.end method

.method public setWasIncluded()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/sf/saxon/style/StylesheetModule;->e:Z

    return-void
.end method

.method public spliceIncludes()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    :cond_1
    iget v0, p0, Lnet/sf/saxon/style/StylesheetModule;->b:I

    iput v0, p0, Lnet/sf/saxon/style/StylesheetModule;->c:I

    iget-object v0, p0, Lnet/sf/saxon/style/StylesheetModule;->a:Lnet/sf/saxon/style/StyleElement;

    invoke-virtual {p0}, Lnet/sf/saxon/style/StylesheetModule;->getStylesheetElement()Lnet/sf/saxon/style/XSLModuleRoot;

    move-result-object v1

    invoke-interface {v1}, Lnet/sf/saxon/om/NodeInfo;->children()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {v2}, Lnet/sf/saxon/om/NodeInfo;->getNodeKind()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    invoke-interface {v2}, Lnet/sf/saxon/om/Item;->getUnicodeStringValue()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v2

    invoke-static {v2}, Lnet/sf/saxon/value/Whitespace;->isAllWhite(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "No character data is allowed between top-level elements"

    const-string v3, "XTSE0120"

    invoke-virtual {v0, v2, v3}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    instance-of v3, v2, Lnet/sf/saxon/style/DataElement;

    if-eqz v3, :cond_4

    move-object v3, v2

    check-cast v3, Lnet/sf/saxon/style/DataElement;

    invoke-virtual {v3}, Lnet/sf/saxon/tree/linked/ElementImpl;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v4

    invoke-interface {v4}, Lnet/sf/saxon/om/NodeName;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Lnet/sf/saxon/expr/parser/Loc;

    invoke-direct {v4, v2}, Lnet/sf/saxon/expr/parser/Loc;-><init>(Ljavax/xml/transform/SourceLocator;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Top-level elements must be in a namespace: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lnet/sf/saxon/tree/linked/ElementImpl;->getNodeName()Lnet/sf/saxon/om/NodeName;

    move-result-object v3

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "XTSE0130"

    invoke-virtual {v0, v2, v3, v4}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    goto :goto_0

    :cond_4
    move-object v0, v2

    check-cast v0, Lnet/sf/saxon/style/StyleElement;

    instance-of v3, v2, Lnet/sf/saxon/style/XSLGeneralIncorporate;

    if-eqz v3, :cond_d

    check-cast v2, Lnet/sf/saxon/style/XSLGeneralIncorporate;

    invoke-virtual {v2}, Lnet/sf/saxon/style/StyleElement;->processAttributes()V

    invoke-virtual {v2}, Lnet/sf/saxon/style/XSLGeneralIncorporate;->validateInstruction()V

    invoke-virtual {v2}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v3

    invoke-virtual {v3}, Lnet/sf/saxon/style/Compilation;->getErrorCount()I

    move-result v3

    iget v4, p0, Lnet/sf/saxon/style/StylesheetModule;->b:I

    invoke-virtual {v2, p0, v4}, Lnet/sf/saxon/style/XSLGeneralIncorporate;->getIncludedStylesheet(Lnet/sf/saxon/style/StylesheetModule;I)Lnet/sf/saxon/style/StylesheetModule;

    move-result-object v4

    if-nez v4, :cond_5

    return-void

    :cond_5
    invoke-virtual {v2}, Lnet/sf/saxon/style/StyleElement;->getCompilation()Lnet/sf/saxon/style/Compilation;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/style/Compilation;->getErrorCount()I

    move-result v5

    sub-int/2addr v5, v3

    const/4 v3, 0x1

    if-lez v5, :cond_8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Reported "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-ne v5, v3, :cond_6

    const-string v5, " error"

    goto :goto_1

    :cond_6
    const-string v5, " errors"

    :goto_1
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lnet/sf/saxon/style/XSLGeneralIncorporate;->isImport()Z

    move-result v5

    if-eqz v5, :cond_7

    const-string v5, "imported"

    goto :goto_2

    :cond_7
    const-string v5, "included"

    :goto_2
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " stylesheet module"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "XTSE0165"

    invoke-virtual {v2, v5, v6}, Lnet/sf/saxon/style/StyleElement;->compileError(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {v2}, Lnet/sf/saxon/style/XSLGeneralIncorporate;->isImport()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {v4}, Lnet/sf/saxon/style/StylesheetModule;->getPrecedence()I

    move-result v2

    add-int/2addr v2, v3

    iput v2, p0, Lnet/sf/saxon/style/StylesheetModule;->b:I

    goto :goto_3

    :cond_9
    invoke-virtual {v4}, Lnet/sf/saxon/style/StylesheetModule;->getPrecedence()I

    move-result v2

    iput v2, p0, Lnet/sf/saxon/style/StylesheetModule;->b:I

    iget v2, p0, Lnet/sf/saxon/style/StylesheetModule;->c:I

    invoke-virtual {v4, v2}, Lnet/sf/saxon/style/StylesheetModule;->setMinImportPrecedence(I)V

    invoke-virtual {v4}, Lnet/sf/saxon/style/StylesheetModule;->setWasIncluded()V

    :goto_3
    iget-object v2, v4, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/sf/saxon/style/ComponentDeclaration;

    iget-object v5, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    if-ltz v5, :cond_c

    invoke-virtual {v4}, Lnet/sf/saxon/style/ComponentDeclaration;->getPrecedence()I

    move-result v6

    iget-object v7, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v7}, Lnet/sf/saxon/style/ComponentDeclaration;->getPrecedence()I

    move-result v7

    if-lt v6, v7, :cond_a

    goto :goto_6

    :cond_a
    :goto_5
    if-ltz v5, :cond_b

    invoke-virtual {v4}, Lnet/sf/saxon/style/ComponentDeclaration;->getPrecedence()I

    move-result v6

    iget-object v7, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-virtual {v7}, Lnet/sf/saxon/style/ComponentDeclaration;->getPrecedence()I

    move-result v7

    if-ge v6, v7, :cond_b

    add-int/lit8 v5, v5, -0x1

    goto :goto_5

    :cond_b
    iget-object v6, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    add-int/lit8 v5, v5, 0x1

    invoke-interface {v6, v5, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    :cond_c
    :goto_6
    iget-object v5, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_d
    new-instance v2, Lnet/sf/saxon/style/ComponentDeclaration;

    invoke-direct {v2, p0, v0}, Lnet/sf/saxon/style/ComponentDeclaration;-><init>(Lnet/sf/saxon/style/StylesheetModule;Lnet/sf/saxon/style/StyleElement;)V

    iget-object v3, p0, Lnet/sf/saxon/style/StylesheetModule;->topLevel:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :cond_e
    return-void
.end method
