.class public Lnet/sf/saxon/functions/DocumentFn;
.super Lnet/sf/saxon/functions/SystemFunction;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/expr/Callable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/functions/DocumentFn$a;
    }
.end annotation


# instance fields
.field public h:Lnet/sf/saxon/s9api/Location;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnet/sf/saxon/functions/SystemFunction;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x0

    if-ltz v0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The fragment identifier "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " is not a valid NCName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string v0, "XTDE1160"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_0
    filled-new-array {p0, v1}, [Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static b(Lnet/sf/saxon/om/TreeInfo;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/om/NodeInfo;
    .locals 1

    if-nez p1, :cond_0

    invoke-interface {p0}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0

    :cond_0
    invoke-static {p1}, Lnet/sf/saxon/om/NameChecker;->isValidNCName(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p1

    const-string p2, "Invalid fragment identifier in URI"

    const-string v0, "XTDE1160"

    invoke-virtual {p1, p2, v0, p3}, Lnet/sf/saxon/Controller;->warning(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    invoke-interface {p0}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0

    :cond_1
    const/4 p2, 0x0

    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/om/TreeInfo;->selectID(Ljava/lang/String;Z)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0
.end method

.method public static computeDocumentKey(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/PackageData;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/DocumentKey;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 p3, 0x1

    .line 1
    invoke-static {p0, p1, p2, p3}, Lnet/sf/saxon/functions/DocumentFn;->computeDocumentKey(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/PackageData;Z)Lnet/sf/saxon/om/DocumentKey;

    move-result-object p0

    return-object p0
.end method

.method public static computeDocumentKey(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/PackageData;Z)Lnet/sf/saxon/om/DocumentKey;
    .locals 1

    .line 2
    invoke-static {p0}, Lnet/sf/saxon/functions/ResolveURI;->escapeSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p1, :cond_0

    .line 3
    :try_start_0
    new-instance p1, Ljava/net/URI;

    invoke-direct {p1, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    :try_start_1
    invoke-static {p0, p1}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 7
    :catch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/../"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    if-eqz p3, :cond_2

    .line 8
    instance-of p0, p2, Lnet/sf/saxon/style/StylesheetPackage;

    if-eqz p0, :cond_2

    check-cast p2, Lnet/sf/saxon/style/StylesheetPackage;

    .line 9
    invoke-virtual {p2}, Lnet/sf/saxon/style/StylesheetPackage;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object p0

    invoke-static {}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    move-result-object p3

    if-eq p0, p3, :cond_2

    .line 10
    invoke-virtual {p2}, Lnet/sf/saxon/style/StylesheetPackage;->getPackageName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 11
    new-instance p3, Lnet/sf/saxon/om/DocumentKey;

    invoke-virtual {p2}, Lnet/sf/saxon/style/StylesheetPackage;->getPackageVersion()Lnet/sf/saxon/style/PackageVersion;

    move-result-object p2

    invoke-direct {p3, p1, p0, p2}, Lnet/sf/saxon/om/DocumentKey;-><init>(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/style/PackageVersion;)V

    return-object p3

    .line 12
    :cond_2
    new-instance p0, Lnet/sf/saxon/om/DocumentKey;

    invoke-direct {p0, p1}, Lnet/sf/saxon/om/DocumentKey;-><init>(Ljava/lang/String;)V

    return-object p0
.end method

.method public static makeDoc(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/PackageData;Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/s9api/Location;Z)Lnet/sf/saxon/om/NodeInfo;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p4}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-static {p0}, Lnet/sf/saxon/functions/DocumentFn;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x1

    aget-object v2, p0, v1

    const/4 v3, 0x0

    aget-object p0, p0, v3

    sget-object v4, Lnet/sf/saxon/lib/Feature;->RECOGNIZE_URI_QUERY_PARAMETERS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v4}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const/16 v4, 0x3f

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_0

    new-instance v6, Lnet/sf/saxon/functions/URIQueryParameters;

    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Lnet/sf/saxon/functions/URIQueryParameters;-><init>(Ljava/lang/String;Lnet/sf/saxon/Configuration;)V

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    move-object v6, v5

    :goto_0
    invoke-interface {p4}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v3

    if-eqz v3, :cond_18

    invoke-static {p0, p1, p2, p4}, Lnet/sf/saxon/functions/DocumentFn;->computeDocumentKey(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/PackageData;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/om/DocumentKey;

    move-result-object v4

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getGlobalDocumentPool()Lnet/sf/saxon/om/DocumentPool;

    move-result-object v7

    invoke-virtual {v7, v4}, Lnet/sf/saxon/om/DocumentPool;->find(Lnet/sf/saxon/om/DocumentKey;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v7}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0

    :cond_1
    invoke-virtual {v3}, Lnet/sf/saxon/Controller;->getDocumentPool()Lnet/sf/saxon/om/DocumentPool;

    move-result-object v7

    monitor-enter v3

    :try_start_0
    invoke-virtual {v7, v4}, Lnet/sf/saxon/om/DocumentPool;->find(Lnet/sf/saxon/om/DocumentKey;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object v8

    if-eqz v8, :cond_2

    invoke-static {v8, v2, p4, p5}, Lnet/sf/saxon/functions/DocumentFn;->b(Lnet/sf/saxon/om/TreeInfo;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    monitor-exit v3

    return-object p0

    :cond_2
    instance-of v8, v3, Lnet/sf/saxon/trans/XsltController;

    if-eqz v8, :cond_4

    move-object v8, v3

    check-cast v8, Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {v8, v4}, Lnet/sf/saxon/trans/XsltController;->checkUniqueOutputDestination(Lnet/sf/saxon/om/DocumentKey;)Z

    move-result v8

    if-eqz v8, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v7, v4}, Lnet/sf/saxon/om/DocumentPool;->markUnavailable(Lnet/sf/saxon/om/DocumentKey;)V

    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot read a document that was written during the same transformation: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    const-string p1, "XTRE1500"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw p0

    :cond_4
    :goto_1
    invoke-virtual {v7, v4}, Lnet/sf/saxon/om/DocumentPool;->isMarkedUnavailable(Lnet/sf/saxon/om/DocumentKey;)Z

    move-result v8

    if-nez v8, :cond_17

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    invoke-virtual {v4}, Lnet/sf/saxon/om/DocumentKey;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, p1, v8, p4}, Lnet/sf/saxon/functions/DocumentFn;->resolveURI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Ljavax/xml/transform/Source;

    move-result-object p0

    if-eqz p0, :cond_15

    instance-of p1, p0, Lnet/sf/saxon/lib/EmptySource;

    if-eqz p1, :cond_5

    goto/16 :goto_5

    :cond_5
    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getSourceResolver()Lnet/sf/saxon/lib/SourceResolver;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Lnet/sf/saxon/lib/SourceResolver;->resolveSource(Ljavax/xml/transform/Source;Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/lib/ActiveSource;

    move-result-object p0

    invoke-static {p0}, Lnet/sf/saxon/functions/DocumentFn;->sourceIsTree(Ljavax/xml/transform/Source;)Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-virtual {v3, p0}, Lnet/sf/saxon/Controller;->prepareInputTree(Ljavax/xml/transform/Source;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p0

    goto/16 :goto_3

    :cond_6
    invoke-virtual {v3}, Lnet/sf/saxon/Controller;->makeBuilder()Lnet/sf/saxon/event/Builder;

    move-result-object p1

    invoke-virtual {p1, v1}, Lnet/sf/saxon/event/Builder;->setUseEventLocation(Z)V

    instance-of v5, p1, Lnet/sf/saxon/tree/tiny/TinyBuilder;

    if-eqz v5, :cond_7

    move-object v5, p1

    check-cast v5, Lnet/sf/saxon/tree/tiny/TinyBuilder;

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getTreeStatistics()Lnet/sf/saxon/tree/tiny/TreeStatistics;

    move-result-object v8

    iget-object v8, v8, Lnet/sf/saxon/tree/tiny/TreeStatistics;->SOURCE_DOCUMENT_STATISTICS:Lnet/sf/saxon/tree/tiny/Statistics;

    invoke-virtual {v5, v8}, Lnet/sf/saxon/tree/tiny/TinyBuilder;->setStatistics(Lnet/sf/saxon/tree/tiny/Statistics;)V

    :cond_7
    if-nez p3, :cond_9

    new-instance p3, Lnet/sf/saxon/lib/ParseOptions;

    invoke-virtual {p1}, Lnet/sf/saxon/event/Builder;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Lnet/sf/saxon/event/PipelineConfiguration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v5

    invoke-direct {p3, v5}, Lnet/sf/saxon/lib/ParseOptions;-><init>(Lnet/sf/saxon/lib/ParseOptions;)V

    instance-of v5, p2, Lnet/sf/saxon/style/StylesheetPackage;

    if-eqz v5, :cond_8

    move-object v5, p2

    check-cast v5, Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {v5}, Lnet/sf/saxon/style/StylesheetPackage;->getSpaceStrippingRule()Lnet/sf/saxon/om/SpaceStrippingRule;

    move-result-object v5

    invoke-static {}, Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;->getInstance()Lnet/sf/saxon/om/NoElementsSpaceStrippingRule;

    move-result-object v8

    if-eq v5, v8, :cond_8

    invoke-virtual {p3, v5}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    :cond_8
    invoke-virtual {v3}, Lnet/sf/saxon/Controller;->getSchemaValidationMode()I

    move-result v5

    invoke-virtual {p3, v5}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    :cond_9
    if-eqz v6, :cond_a

    invoke-virtual {v6, v0}, Lnet/sf/saxon/functions/URIQueryParameters;->makeParseOptions(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v5

    invoke-virtual {p3, v5}, Lnet/sf/saxon/lib/ParseOptions;->merge(Lnet/sf/saxon/lib/ParseOptions;)V

    :cond_a
    invoke-virtual {p1}, Lnet/sf/saxon/event/Builder;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v5

    invoke-virtual {v5, p3}, Lnet/sf/saxon/event/PipelineConfiguration;->setParseOptions(Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-virtual {p3}, Lnet/sf/saxon/lib/ParseOptions;->isLineNumbering()Z

    move-result v5

    if-eqz v5, :cond_b

    invoke-virtual {p1, v1}, Lnet/sf/saxon/event/Builder;->setLineNumbering(Z)V

    :cond_b
    if-eqz p6, :cond_c

    new-instance p6, Lnet/sf/saxon/lib/StandardErrorHandler;

    invoke-virtual {v3}, Lnet/sf/saxon/Controller;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object v5

    invoke-direct {p6, v5}, Lnet/sf/saxon/lib/StandardErrorHandler;-><init>(Lnet/sf/saxon/lib/ErrorReporter;)V

    invoke-virtual {p6, v1}, Lnet/sf/saxon/lib/StandardErrorHandler;->setSilent(Z)V

    invoke-virtual {p3, p6}, Lnet/sf/saxon/lib/ParseOptions;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    :cond_c
    instance-of p6, p2, Lnet/sf/saxon/style/StylesheetPackage;

    if-eqz p6, :cond_d

    check-cast p2, Lnet/sf/saxon/style/StylesheetPackage;

    invoke-virtual {p2}, Lnet/sf/saxon/style/StylesheetPackage;->isStripsTypeAnnotations()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-virtual {v0, p1}, Lnet/sf/saxon/Configuration;->getAnnotationStripper(Lnet/sf/saxon/event/Receiver;)Lnet/sf/saxon/event/Receiver;

    move-result-object p2

    goto :goto_2

    :cond_d
    move-object p2, p1

    :goto_2
    invoke-virtual {v3}, Lnet/sf/saxon/Controller;->getPathMapForDocumentProjection()Lnet/sf/saxon/expr/parser/PathMap;

    move-result-object p6

    if-eqz p6, :cond_e

    invoke-virtual {v4}, Lnet/sf/saxon/om/DocumentKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p6, v1}, Lnet/sf/saxon/expr/parser/PathMap;->getRootForDocument(Ljava/lang/String;)Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;

    move-result-object p6

    if-eqz p6, :cond_e

    invoke-virtual {p6}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->isReturnable()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {p6}, Lnet/sf/saxon/expr/parser/PathMap$PathMapNode;->hasUnknownDependencies()Z

    move-result v1

    if-nez v1, :cond_e

    invoke-virtual {v0, p6}, Lnet/sf/saxon/Configuration;->makeDocumentProjector(Lnet/sf/saxon/expr/parser/PathMap$PathMapRoot;)Lnet/sf/saxon/event/FilterFactory;

    move-result-object p6

    invoke-virtual {p3, p6}, Lnet/sf/saxon/lib/ParseOptions;->addFilter(Lnet/sf/saxon/event/FilterFactory;)V

    :cond_e
    invoke-virtual {p1}, Lnet/sf/saxon/event/Builder;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object p6

    invoke-interface {p2, p6}, Lnet/sf/saxon/event/Receiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V
    :try_end_1
    .catch Ljavax/xml/transform/TransformerException; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {p0, p2, p3}, Lnet/sf/saxon/event/Sender;->send(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V

    invoke-virtual {p1}, Lnet/sf/saxon/event/Builder;->getCurrentRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p2

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getTreeInfo()Lnet/sf/saxon/om/TreeInfo;

    move-result-object p2

    invoke-virtual {p1}, Lnet/sf/saxon/event/Builder;->reset()V
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual {p3}, Lnet/sf/saxon/lib/ParseOptions;->isPleaseCloseAfterUse()Z

    move-result p1

    if-eqz p1, :cond_f

    invoke-static {p0}, Lnet/sf/saxon/lib/ParseOptions;->close(Ljavax/xml/transform/Source;)V

    :cond_f
    move-object p0, p2

    :goto_3
    monitor-enter v3
    :try_end_3
    .catch Ljavax/xml/transform/TransformerException; {:try_start_3 .. :try_end_3} :catch_1

    :try_start_4
    invoke-virtual {v7, v4}, Lnet/sf/saxon/om/DocumentPool;->find(Lnet/sf/saxon/om/DocumentKey;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-static {p1, v2, p4, p5}, Lnet/sf/saxon/functions/DocumentFn;->b(Lnet/sf/saxon/om/TreeInfo;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    monitor-exit v3

    return-object p0

    :cond_10
    invoke-virtual {v3, p0, v4}, Lnet/sf/saxon/Controller;->registerDocument(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/om/DocumentKey;)V

    instance-of p1, v3, Lnet/sf/saxon/trans/XsltController;

    if-eqz p1, :cond_11

    move-object p1, v3

    check-cast p1, Lnet/sf/saxon/trans/XsltController;

    invoke-virtual {p1, v4}, Lnet/sf/saxon/trans/XsltController;->addUnavailableOutputDestination(Lnet/sf/saxon/om/DocumentKey;)V

    :cond_11
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-static {p0, v2, p4, p5}, Lnet/sf/saxon/functions/DocumentFn;->b(Lnet/sf/saxon/om/TreeInfo;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/s9api/Location;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0
    :try_end_5
    .catch Ljavax/xml/transform/TransformerException; {:try_start_5 .. :try_end_5} :catch_1

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_6
    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw p0
    :try_end_7
    .catch Ljavax/xml/transform/TransformerException; {:try_start_7 .. :try_end_7} :catch_1

    :catchall_1
    move-exception p1

    goto :goto_4

    :catch_0
    move-exception p1

    :try_start_8
    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_12

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object p2

    const-string p4, "SXXP0003"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_13

    :cond_12
    const-string p2, "FODC0002"

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    :cond_13
    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :goto_4
    :try_start_9
    invoke-virtual {p3}, Lnet/sf/saxon/lib/ParseOptions;->isPleaseCloseAfterUse()Z

    move-result p2

    if-eqz p2, :cond_14

    invoke-static {p0}, Lnet/sf/saxon/lib/ParseOptions;->close(Ljavax/xml/transform/Source;)V

    :cond_14
    throw p1
    :try_end_9
    .catch Ljavax/xml/transform/TransformerException; {:try_start_9 .. :try_end_9} :catch_1

    :cond_15
    :goto_5
    return-object v5

    :catch_1
    move-exception p0

    invoke-virtual {v7, v4}, Lnet/sf/saxon/om/DocumentPool;->markUnavailable(Lnet/sf/saxon/om/DocumentKey;)V

    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p1

    invoke-virtual {p1, p5}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    invoke-virtual {p0}, Ljavax/xml/transform/TransformerException;->getException()Ljava/lang/Throwable;

    move-result-object p0

    instance-of p0, p0, Ljava/net/URISyntaxException;

    if-eqz p0, :cond_16

    const-string p0, "FODC0005"

    goto :goto_6

    :cond_16
    const-string p0, "FODC0002"

    :goto_6
    invoke-virtual {p1, p0}, Lnet/sf/saxon/trans/XPathException;->maybeSetErrorCode(Ljava/lang/String;)V

    throw p1

    :cond_17
    :try_start_a
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Document has been marked not available: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    const-string p1, "FODC0002"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, p5}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw p0

    :catchall_2
    move-exception p0

    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    throw p0

    :cond_18
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "doc() function is not available in this environment"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static preLoadDoc(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/PackageData;Lnet/sf/saxon/Configuration;Ljavax/xml/transform/SourceLocator;)Lnet/sf/saxon/om/NodeInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/16 v0, 0x23

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_4

    sget-object v0, Lnet/sf/saxon/lib/Feature;->RECOGNIZE_URI_QUERY_PARAMETERS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p3, v0}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const/16 v0, 0x3f

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_0

    new-instance v2, Lnet/sf/saxon/functions/URIQueryParameters;

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p3}, Lnet/sf/saxon/functions/URIQueryParameters;-><init>(Ljava/lang/String;Lnet/sf/saxon/Configuration;)V

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lnet/sf/saxon/functions/DocumentFn;->computeDocumentKey(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/PackageData;Z)Lnet/sf/saxon/om/DocumentKey;

    move-result-object p2

    invoke-virtual {p3}, Lnet/sf/saxon/Configuration;->getGlobalDocumentPool()Lnet/sf/saxon/om/DocumentPool;

    move-result-object v3

    invoke-virtual {v3, p2}, Lnet/sf/saxon/om/DocumentPool;->find(Lnet/sf/saxon/om/DocumentKey;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0

    :cond_1
    new-instance v3, Lnet/sf/saxon/lib/ResourceRequest;

    invoke-direct {v3}, Lnet/sf/saxon/lib/ResourceRequest;-><init>()V

    iput-object p0, v3, Lnet/sf/saxon/lib/ResourceRequest;->relativeUri:Ljava/lang/String;

    iput-object p1, v3, Lnet/sf/saxon/lib/ResourceRequest;->baseUri:Ljava/lang/String;

    invoke-virtual {p2}, Lnet/sf/saxon/om/DocumentKey;->getAbsoluteURI()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v3, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    const/4 p0, 0x2

    :try_start_0
    new-array p0, p0, [Lnet/sf/saxon/lib/ResourceResolver;

    invoke-virtual {p3}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p1

    aput-object p1, p0, v1

    new-instance p1, Lnet/sf/saxon/lib/DirectResourceResolver;

    invoke-direct {p1, p3}, Lnet/sf/saxon/lib/DirectResourceResolver;-><init>(Lnet/sf/saxon/Configuration;)V

    aput-object p1, p0, v0

    invoke-virtual {v3, p0}, Lnet/sf/saxon/lib/ResourceRequest;->resolve([Lnet/sf/saxon/lib/ResourceResolver;)Ljavax/xml/transform/Source;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p3}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object p1

    if-eqz v2, :cond_2

    invoke-virtual {v2, p3}, Lnet/sf/saxon/functions/URIQueryParameters;->makeParseOptions(Lnet/sf/saxon/Configuration;)Lnet/sf/saxon/lib/ParseOptions;

    move-result-object p4

    invoke-virtual {p1, p4}, Lnet/sf/saxon/lib/ParseOptions;->merge(Lnet/sf/saxon/lib/ParseOptions;)V

    :cond_2
    invoke-virtual {p3, p0, p1}, Lnet/sf/saxon/Configuration;->buildDocumentTree(Ljavax/xml/transform/Source;Lnet/sf/saxon/lib/ParseOptions;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object p0

    invoke-virtual {p3}, Lnet/sf/saxon/Configuration;->getGlobalDocumentPool()Lnet/sf/saxon/om/DocumentPool;

    move-result-object p1

    invoke-virtual {p1, p0, p2}, Lnet/sf/saxon/om/DocumentPool;->add(Lnet/sf/saxon/om/TreeInfo;Lnet/sf/saxon/om/DocumentKey;)V

    invoke-interface {p0}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    const-string p2, "Exception thrown by ResourceResolver"

    invoke-direct {p1, p2, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p2, Lnet/sf/saxon/lib/Feature;->TRACE_EXTERNAL_FUNCTIONS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p3, p2}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    invoke-virtual {p1, p4}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw p1

    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Fragment identifier not supported for preloaded documents"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static resolveURI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Ljavax/xml/transform/Source;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lnet/sf/saxon/functions/ResolveURI;->escapeSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const-string v2, "FODC0005"

    if-nez p1, :cond_2

    :try_start_0
    new-instance v3, Ljava/net/URI;

    invoke-direct {v3, p0}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/net/URI;->isAbsolute()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Relative URI passed to document() function ("

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "); but no base URI is available"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "XTDE1162"

    invoke-direct {p1, p2, p3}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid URI passed to document() function: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0, v2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    new-instance v3, Lnet/sf/saxon/lib/ResourceRequest;

    invoke-direct {v3}, Lnet/sf/saxon/lib/ResourceRequest;-><init>()V

    iput-object p0, v3, Lnet/sf/saxon/lib/ResourceRequest;->relativeUri:Ljava/lang/String;

    if-eqz p1, :cond_3

    iput-object p1, v3, Lnet/sf/saxon/lib/ResourceRequest;->baseUri:Ljava/lang/String;

    iput-object p2, v3, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    goto :goto_1

    :cond_3
    iput-object p0, v3, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    :goto_1
    const-string p2, "https://www.iana.org/assignments/media-types/application/xml"

    iput-object p2, v3, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    const-string p2, "source document"

    iput-object p2, v3, Lnet/sf/saxon/lib/ResourceRequest;->purpose:Ljava/lang/String;

    const/4 p2, 0x3

    :try_start_1
    new-array p2, p2, [Lnet/sf/saxon/lib/ResourceResolver;

    const/4 v4, 0x0

    aput-object v1, p2, v4

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, p2, v4

    new-instance v1, Lnet/sf/saxon/lib/DirectResourceResolver;

    invoke-direct {v1, v0}, Lnet/sf/saxon/lib/DirectResourceResolver;-><init>(Lnet/sf/saxon/Configuration;)V

    const/4 v4, 0x2

    aput-object v1, p2, v4

    invoke-virtual {v3, p2}, Lnet/sf/saxon/lib/ResourceRequest;->resolve([Lnet/sf/saxon/lib/ResourceResolver;)Ljavax/xml/transform/Source;

    move-result-object p0
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p2

    new-instance p3, Lnet/sf/saxon/trans/XPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception thrown by URIResolver resolving `"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "` against `"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Lnet/sf/saxon/lib/Feature;->TRACE_EXTERNAL_FUNCTIONS:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, p0}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    throw p3

    :catch_2
    move-exception p0

    invoke-virtual {p0, v2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lnet/sf/saxon/trans/XPathException;->maybeSetContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p0
.end method

.method public static sendDoc(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/PackageData;Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/s9api/Location;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "FODC0005"

    invoke-interface {p5}, Lnet/sf/saxon/event/Receiver;->getPipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v1

    invoke-virtual {v1}, Lnet/sf/saxon/Controller;->makePipelineConfiguration()Lnet/sf/saxon/event/PipelineConfiguration;

    move-result-object v1

    invoke-virtual {v1, p3}, Lnet/sf/saxon/event/PipelineConfiguration;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    invoke-interface {p5, v1}, Lnet/sf/saxon/event/Receiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    :cond_0
    invoke-static {p0}, Lnet/sf/saxon/functions/DocumentFn;->a(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aget-object v4, v2, v3

    const/4 v5, 0x0

    if-eqz v4, :cond_1

    aget-object p0, v2, v5

    new-instance v2, Lnet/sf/saxon/event/IDFilter;

    invoke-direct {v2, p5, v4}, Lnet/sf/saxon/event/IDFilter;-><init>(Lnet/sf/saxon/event/Receiver;Ljava/lang/String;)V

    move-object p5, v2

    :cond_1
    invoke-static {p0, p1, p2, v3}, Lnet/sf/saxon/functions/DocumentFn;->computeDocumentKey(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/PackageData;Z)Lnet/sf/saxon/om/DocumentKey;

    move-result-object p2

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v4

    invoke-virtual {v2}, Lnet/sf/saxon/Controller;->getDocumentPool()Lnet/sf/saxon/om/DocumentPool;

    move-result-object v6

    invoke-virtual {v6, p2}, Lnet/sf/saxon/om/DocumentPool;->find(Lnet/sf/saxon/om/DocumentKey;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-interface {v6}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->asActiveSource()Lnet/sf/saxon/lib/ActiveSource;

    move-result-object p0

    goto :goto_0

    :cond_2
    :try_start_0
    new-instance v6, Lnet/sf/saxon/lib/ResourceRequest;

    invoke-direct {v6}, Lnet/sf/saxon/lib/ResourceRequest;-><init>()V

    iput-object p1, v6, Lnet/sf/saxon/lib/ResourceRequest;->baseUri:Ljava/lang/String;

    iput-object p0, v6, Lnet/sf/saxon/lib/ResourceRequest;->relativeUri:Ljava/lang/String;

    invoke-virtual {p2}, Lnet/sf/saxon/om/DocumentKey;->getAbsoluteURI()Ljava/lang/String;

    move-result-object p0

    iput-object p0, v6, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    iput-boolean v3, v6, Lnet/sf/saxon/lib/ResourceRequest;->streamable:Z

    const-string p0, "https://www.iana.org/assignments/media-types/application/xml"

    iput-object p0, v6, Lnet/sf/saxon/lib/ResourceRequest;->nature:Ljava/lang/String;

    const-string p0, "source document"

    iput-object p0, v6, Lnet/sf/saxon/lib/ResourceRequest;->purpose:Ljava/lang/String;

    const/4 p0, 0x3

    new-array p0, p0, [Lnet/sf/saxon/lib/ResourceResolver;

    invoke-interface {p3}, Lnet/sf/saxon/expr/XPathContext;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p1

    aput-object p1, p0, v5

    invoke-virtual {v4}, Lnet/sf/saxon/Configuration;->getResourceResolver()Lnet/sf/saxon/lib/ResourceResolver;

    move-result-object p1

    aput-object p1, p0, v3

    new-instance p1, Lnet/sf/saxon/lib/DirectResourceResolver;

    invoke-direct {p1, v4}, Lnet/sf/saxon/lib/DirectResourceResolver;-><init>(Lnet/sf/saxon/Configuration;)V

    const/4 p2, 0x2

    aput-object p1, p0, p2

    invoke-virtual {v6, p0}, Lnet/sf/saxon/lib/ResourceRequest;->resolve([Lnet/sf/saxon/lib/ResourceResolver;)Ljavax/xml/transform/Source;

    move-result-object p0

    if-eqz p0, :cond_5

    invoke-static {p0}, Lnet/sf/saxon/functions/DocumentFn;->sourceIsTree(Ljavax/xml/transform/Source;)Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v2, p0}, Lnet/sf/saxon/Controller;->prepareInputTree(Ljavax/xml/transform/Source;)Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->getRoot()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p0

    invoke-interface {p0}, Lnet/sf/saxon/om/NodeInfo;->asActiveSource()Lnet/sf/saxon/lib/ActiveSource;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_3
    :goto_0
    invoke-virtual {v2}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->isTiming()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v2}, Lnet/sf/saxon/Controller;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/Configuration;->getLogger()Lnet/sf/saxon/lib/Logger;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Streaming input document "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p0}, Ljavax/xml/transform/Source;->getSystemId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lnet/sf/saxon/lib/Logger;->info(Ljava/lang/String;)V

    :cond_4
    invoke-interface {p5, v1}, Lnet/sf/saxon/event/Receiver;->setPipelineConfiguration(Lnet/sf/saxon/event/PipelineConfiguration;)V

    :try_start_1
    invoke-static {p0, p5, p6}, Lnet/sf/saxon/event/Sender;->send(Ljavax/xml/transform/Source;Lnet/sf/saxon/event/Receiver;Lnet/sf/saxon/lib/ParseOptions;)V
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    invoke-virtual {p0, p4}, Lnet/sf/saxon/trans/XPathException;->maybeSetLocation(Lnet/sf/saxon/s9api/Location;)V

    const-string p1, "FODC0002"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->maybeSetErrorCode(Ljava/lang/String;)V

    throw p0

    :cond_5
    :try_start_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to resolve streamed document URI "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v6, Lnet/sf/saxon/lib/ResourceRequest;->uri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p4}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    throw p0
    :try_end_2
    .catch Ljavax/xml/transform/TransformerException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception p0

    invoke-static {p0}, Lnet/sf/saxon/trans/XPathException;->makeXPathException(Ljava/lang/Exception;)Lnet/sf/saxon/trans/XPathException;

    move-result-object p0

    invoke-virtual {p0, p4}, Ljavax/xml/transform/TransformerException;->setLocator(Ljavax/xml/transform/SourceLocator;)V

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XPathException;->maybeSetErrorCode(Ljava/lang/String;)V

    throw p0
.end method

.method public static sourceIsTree(Ljavax/xml/transform/Source;)Z
    .locals 2

    instance-of v0, p0, Lnet/sf/saxon/om/NodeSource;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    instance-of v0, p0, Lnet/sf/saxon/om/NodeInfo;

    if-eqz v0, :cond_1

    return v1

    :cond_1
    instance-of p0, p0, Ljavax/xml/transform/dom/DOMSource;

    if-eqz p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public call(Lnet/sf/saxon/expr/XPathContext;[Lnet/sf/saxon/om/Sequence;)Lnet/sf/saxon/om/Sequence;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getArity()I

    move-result v0

    const/4 v1, 0x0

    aget-object v1, p2, v1

    invoke-interface {v1}, Lnet/sf/saxon/om/Sequence;->iterate()Lnet/sf/saxon/om/SequenceIterator;

    move-result-object v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    aget-object p2, p2, v0

    invoke-interface {p2}, Lnet/sf/saxon/om/Sequence;->head()Lnet/sf/saxon/om/Item;

    move-result-object p2

    check-cast p2, Lnet/sf/saxon/om/NodeInfo;

    invoke-interface {p2}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The second argument to document() is a node with no base URI"

    const-string p2, "XTDE1162"

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    new-instance v0, Lnet/sf/saxon/functions/DocumentFn$a;

    invoke-direct {v0, p1}, Lnet/sf/saxon/functions/DocumentFn$a;-><init>(Lnet/sf/saxon/expr/XPathContext;)V

    iput-object p2, v0, Lnet/sf/saxon/functions/DocumentFn$a;->e:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getStaticBaseUriString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lnet/sf/saxon/functions/DocumentFn$a;->f:Ljava/lang/String;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/SystemFunction;->getRetainedStaticContext()Lnet/sf/saxon/expr/parser/RetainedStaticContext;

    move-result-object p1

    invoke-virtual {p1}, Lnet/sf/saxon/expr/parser/RetainedStaticContext;->getPackageData()Lnet/sf/saxon/expr/PackageData;

    move-result-object p1

    iput-object p1, v0, Lnet/sf/saxon/functions/DocumentFn$a;->h:Lnet/sf/saxon/expr/PackageData;

    iget-object p0, p0, Lnet/sf/saxon/functions/DocumentFn;->h:Lnet/sf/saxon/s9api/Location;

    iput-object p0, v0, Lnet/sf/saxon/functions/DocumentFn$a;->g:Lnet/sf/saxon/s9api/Location;

    new-instance p0, Lnet/sf/saxon/expr/ItemMappingIterator;

    invoke-direct {p0, v1, v0}, Lnet/sf/saxon/expr/ItemMappingIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Lnet/sf/saxon/expr/ItemMappingFunction;)V

    new-instance p1, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;

    invoke-static {}, Lnet/sf/saxon/expr/sort/GlobalOrderComparer;->getInstance()Lnet/sf/saxon/expr/sort/GlobalOrderComparer;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lnet/sf/saxon/expr/sort/DocumentOrderIterator;-><init>(Lnet/sf/saxon/om/SequenceIterator;Ljava/util/Comparator;)V

    invoke-static {p1}, Lnet/sf/saxon/om/SequenceTool;->toLazySequence(Lnet/sf/saxon/om/SequenceIterator;)Lnet/sf/saxon/om/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public getCardinality([Lnet/sf/saxon/expr/Expression;)I
    .locals 0

    const/4 p0, 0x0

    aget-object p0, p1, p0

    invoke-virtual {p0}, Lnet/sf/saxon/expr/Expression;->getCardinality()I

    move-result p0

    invoke-static {p0}, Lnet/sf/saxon/value/Cardinality;->allowsMany(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0xe000

    return p0

    :cond_0
    const/16 p0, 0x6000

    return p0
.end method

.method public getSpecialProperties([Lnet/sf/saxon/expr/Expression;)I
    .locals 0

    const/high16 p0, 0x8a0000

    return p0
.end method

.method public varargs makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;
    .locals 1

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Lnet/sf/saxon/expr/Expression;->getLocation()Lnet/sf/saxon/s9api/Location;

    move-result-object v0

    iput-object v0, p0, Lnet/sf/saxon/functions/DocumentFn;->h:Lnet/sf/saxon/s9api/Location;

    invoke-static {p0, p1}, Lnet/sf/saxon/functions/Doc;->maybePreEvaluate(Lnet/sf/saxon/functions/SystemFunction;[Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lnet/sf/saxon/functions/SystemFunction;->makeFunctionCall([Lnet/sf/saxon/expr/Expression;)Lnet/sf/saxon/expr/Expression;

    move-result-object v0

    :cond_0
    return-object v0
.end method
