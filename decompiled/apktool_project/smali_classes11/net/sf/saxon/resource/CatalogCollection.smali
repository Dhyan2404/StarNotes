.class public Lnet/sf/saxon/resource/CatalogCollection;
.super Lnet/sf/saxon/resource/AbstractResourceCollection;
.source "SourceFile"


# instance fields
.field public a:Z

.field public b:Lnet/sf/saxon/om/SpaceStrippingRule;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lnet/sf/saxon/resource/AbstractResourceCollection;-><init>(Lnet/sf/saxon/Configuration;)V

    iput-object p2, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->collectionURI:Ljava/lang/String;

    return-void
.end method

.method public static synthetic b(Lnet/sf/saxon/resource/CatalogCollection;Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;)Lnet/sf/saxon/lib/Resource;
    .locals 0

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/resource/CatalogCollection;->c(Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;)Lnet/sf/saxon/lib/Resource;

    move-result-object p0

    return-object p0
.end method

.method private synthetic c(Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;)Lnet/sf/saxon/lib/Resource;
    .locals 3

    :try_start_0
    const-string v0, "data:"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    :try_start_1
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/sf/saxon/resource/DataURIScheme;->decode(Ljava/net/URI;)Lnet/sf/saxon/lib/Resource;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/resource/AbstractResourceCollection;->makeTypedResource(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/lib/Resource;)Lnet/sf/saxon/lib/Resource;

    move-result-object p0
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_0
    move-exception v0

    :try_start_2
    new-instance v1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {v1, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    invoke-virtual {p0, p2}, Lnet/sf/saxon/resource/AbstractResourceCollection;->getInputDetails(Ljava/lang/String;)Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/lib/ParseOptions;

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/sf/saxon/lib/ParseOptions;-><init>(Lnet/sf/saxon/lib/ParseOptions;)V

    iput-object v1, v0, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->parseOptions:Lnet/sf/saxon/lib/ParseOptions;

    iget-object v2, p0, Lnet/sf/saxon/resource/CatalogCollection;->b:Lnet/sf/saxon/om/SpaceStrippingRule;

    invoke-virtual {v1, v2}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    iput-object p2, v0, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->resourceUri:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/resource/AbstractResourceCollection;->makeResource(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)Lnet/sf/saxon/lib/Resource;

    move-result-object p0
    :try_end_2
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_2 .. :try_end_2} :catch_1

    return-object p0

    :catch_1
    move-exception v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v2

    iget-object p0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->params:Lnet/sf/saxon/functions/URIQueryParameters;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lnet/sf/saxon/functions/URIQueryParameters;->getOnError()Ljava/util/Optional;

    move-result-object v2

    :cond_1
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-ne p0, v1, :cond_2

    new-instance p0, Lnet/sf/saxon/resource/FailedResource;

    invoke-direct {p0, p2, v0}, Lnet/sf/saxon/resource/FailedResource;-><init>(Ljava/lang/String;Lnet/sf/saxon/trans/XPathException;)V

    return-object p0

    :cond_2
    invoke-virtual {v2}, Ljava/util/Optional;->isPresent()Z

    move-result p0

    const/4 v1, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v2, 0x2

    if-ne p0, v2, :cond_3

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "collection(): failed to parse "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2, v1}, Lnet/sf/saxon/Controller;->warning(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_3
    return-object v1
.end method

.method public static makeStringFromStream(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x400

    new-array v1, v1, [B

    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public catalogContents(Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Iterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p1, v0, v0, p2}, Lnet/sf/saxon/functions/DocumentFn;->resolveURI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Ljavax/xml/transform/Source;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/lib/ParseOptions;

    invoke-direct {v1}, Lnet/sf/saxon/lib/ParseOptions;-><init>()V

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    invoke-virtual {v1, v2}, Lnet/sf/saxon/lib/ParseOptions;->setDTDValidationMode(I)V

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lnet/sf/saxon/Configuration;->buildDocumentTree(Ljavax/xml/transform/Source;Lnet/sf/saxon/lib/ParseOptions;)Lnet/sf/saxon/om/TreeInfo;

    move-result-object v0

    const-string v1, "FODC0004"

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lnet/sf/saxon/om/TreeInfo;->getRootNode()Lnet/sf/saxon/om/NodeInfo;

    move-result-object p1

    sget-object v0, Lnet/sf/saxon/pattern/NodeKindTest;->ELEMENT:Lnet/sf/saxon/pattern/NodeKindTest;

    const/4 v2, 0x3

    invoke-interface {p1, v2, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p1

    invoke-interface {p1}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v3

    const-string v4, ")"

    if-eqz v3, :cond_7

    const-string v5, "collection"

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-interface {p1}, Lnet/sf/saxon/om/SequenceIterator;->close()V

    const-string p1, "stable"

    const-string v5, ""

    invoke-interface {v3, v5, p1}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string v6, "true"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lnet/sf/saxon/resource/CatalogCollection;->a:Z

    goto :goto_0

    :cond_1
    const-string v6, "false"

    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    iput-boolean p1, p0, Lnet/sf/saxon/resource/CatalogCollection;->a:Z

    goto :goto_0

    :cond_2
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "The \'stable\' attribute of element <collection> must be true or false"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p0

    :cond_3
    :goto_0
    invoke-interface {v3, v2, v0}, Lnet/sf/saxon/om/NodeInfo;->iterateAxis(ILnet/sf/saxon/pattern/NodePredicate;)Lnet/sf/saxon/tree/iter/AxisIterator;

    move-result-object p0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :goto_1
    invoke-interface {p0}, Lnet/sf/saxon/tree/iter/AxisIterator;->next()Lnet/sf/saxon/om/NodeInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    const-string v2, "doc"

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "href"

    invoke-interface {v0, v5, v2}, Lnet/sf/saxon/om/NodeInfo;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    :try_start_0
    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lnet/sf/saxon/functions/ResolveURI;->makeAbsolute(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catch_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid base URI or href URI in collection catalog: ("

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lnet/sf/saxon/om/NodeInfo;->getBaseURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p0

    :cond_4
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "A <doc> element in the collection catalog has no @href attribute"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p0

    :cond_5
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string p1, "Children of <collection> element must be <doc> elements"

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p0

    :cond_6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_2
    if-nez v3, :cond_8

    const-string p0, "No outermost element found in collection catalog"

    goto :goto_3

    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Outermost element of collection catalog should be Q{}collection (found Q{"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeInfo;->getURI()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v3}, Lnet/sf/saxon/om/NodeInfo;->getLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_3
    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p1

    :cond_9
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to load collection catalog "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p0
.end method

.method public getResourceURIs(Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->collectionURI:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sf/saxon/resource/AbstractResourceCollection;->checkNotNull(Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    iget-object v0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->collectionURI:Ljava/lang/String;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/resource/CatalogCollection;->catalogContents(Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getResources(Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/sf/saxon/expr/XPathContext;",
            ")",
            "Ljava/util/Iterator<",
            "+",
            "Lnet/sf/saxon/lib/Resource;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    iget-object v0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->collectionURI:Ljava/lang/String;

    invoke-static {v0, p1}, Lnet/sf/saxon/resource/AbstractResourceCollection;->checkNotNull(Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/resource/CatalogCollection;->getResourceURIs(Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Iterator;

    move-result-object v0

    new-instance v1, Lnet/sf/saxon/tree/jiter/MappingJavaIterator;

    new-instance v2, Lcom/sunia/HTREnginev2/eod;

    invoke-direct {v2, p0, p1}, Lcom/sunia/HTREnginev2/eod;-><init>(Lnet/sf/saxon/resource/CatalogCollection;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-direct {v1, v0, v2}, Lnet/sf/saxon/tree/jiter/MappingJavaIterator;-><init>(Ljava/util/Iterator;Ljava/util/function/Function;)V

    return-object v1
.end method

.method public isStable(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 0

    iget-boolean p0, p0, Lnet/sf/saxon/resource/CatalogCollection;->a:Z

    return p0
.end method
