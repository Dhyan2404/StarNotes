.class public abstract Lnet/sf/saxon/resource/AbstractResourceCollection;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/ResourceCollection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;,
        Lnet/sf/saxon/resource/AbstractResourceCollection$b;,
        Lnet/sf/saxon/resource/AbstractResourceCollection$c;
    }
.end annotation


# instance fields
.field protected collectionURI:Ljava/lang/String;

.field protected config:Lnet/sf/saxon/Configuration;

.field protected noExceptions:Z

.field protected params:Lnet/sf/saxon/functions/URIQueryParameters;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->params:Lnet/sf/saxon/functions/URIQueryParameters;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->noExceptions:Z

    iput-object p1, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->config:Lnet/sf/saxon/Configuration;

    return-void
.end method

.method public static checkNotNull(Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    const-string v0, "No default collection has been defined"

    invoke-direct {p0, v0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string v0, "FODC0002"

    invoke-virtual {p0, v0}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p0
.end method

.method public static setupErrorHandlingForCollection(Lnet/sf/saxon/lib/ParseOptions;ILnet/sf/saxon/lib/ErrorReporter;)V
    .locals 1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    new-instance p1, Lnet/sf/saxon/resource/AbstractResourceCollection$c;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lnet/sf/saxon/resource/AbstractResourceCollection$c;-><init>(Lnet/sf/saxon/resource/AbstractResourceCollection$a;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    new-instance p1, Lnet/sf/saxon/resource/AbstractResourceCollection$b;

    invoke-direct {p1, p2}, Lnet/sf/saxon/resource/AbstractResourceCollection$b;-><init>(Lnet/sf/saxon/lib/ErrorReporter;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/lib/ParseOptions;->setErrorReporter(Lnet/sf/saxon/lib/ErrorReporter;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/16 p0, 0x2e

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/16 v1, 0x5c

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-le p0, v0, :cond_0

    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p0, v0, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCollectionURI()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->collectionURI:Ljava/lang/String;

    return-object p0
.end method

.method public getInputDetails(Ljava/lang/String;)Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    const-string v0, "file"

    new-instance v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    invoke-direct {v1}, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;-><init>()V

    :try_start_0
    iput-object p1, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->resourceUri:Ljava/lang/String;

    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->params:Lnet/sf/saxon/functions/URIQueryParameters;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Lnet/sf/saxon/functions/URIQueryParameters;->getContentType()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->params:Lnet/sf/saxon/functions/URIQueryParameters;

    invoke-virtual {v3}, Lnet/sf/saxon/functions/URIQueryParameters;->getContentType()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->contentType:Ljava/lang/String;

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/resource/AbstractResourceCollection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->contentType:Ljava/lang/String;

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v3

    invoke-static {v3}, Lnet/sf/saxon/resource/ResourceLoader;->urlConnection(Ljava/net/URL;)Ljava/net/URLConnection;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->contentType:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/net/URLConnection;->getContentEncoding()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->encoding:Ljava/lang/String;

    iget-object v3, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->contentType:Ljava/lang/String;

    const-string v4, " "

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    const-string v7, "charset="

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    const-string v7, "="

    const/4 v8, 0x2

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    aget-object v6, v6, v7

    iput-object v6, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->encoding:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iput-object v6, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->contentType:Ljava/lang/String;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    iget-object v3, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->contentType:Ljava/lang/String;

    if-eqz v3, :cond_4

    iget-object v4, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {v4, v3}, Lnet/sf/saxon/Configuration;->getResourceFactoryForMediaType(Ljava/lang/String;)Lnet/sf/saxon/lib/ResourceFactory;

    move-result-object v3

    if-nez v3, :cond_7

    :cond_4
    invoke-virtual {v2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    new-instance v2, Ljava/io/BufferedInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x400

    cmp-long v0, v3, v5

    if-gtz v0, :cond_6

    invoke-static {v2, p1}, Lnet/sf/saxon/resource/BinaryResource;->readBinaryFromStream(Ljava/io/InputStream;Ljava/lang/String;)[B

    move-result-object p1

    iput-object p1, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->binaryContent:[B

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    new-instance v2, Ljava/io/ByteArrayInputStream;

    iget-object p1, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->binaryContent:[B

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    goto :goto_3

    :cond_5
    invoke-virtual {v2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p1

    invoke-static {p1}, Lnet/sf/saxon/resource/ResourceLoader;->urlStream(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v2

    :cond_6
    :goto_3
    invoke-virtual {p0, v2}, Lnet/sf/saxon/resource/AbstractResourceCollection;->guessContentTypeFromContent(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->contentType:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_7
    iget-object p1, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->params:Lnet/sf/saxon/functions/URIQueryParameters;

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Lnet/sf/saxon/functions/URIQueryParameters;->getOnError()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->params:Lnet/sf/saxon/functions/URIQueryParameters;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/URIQueryParameters;->getOnError()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    iput p0, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->onError:I
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_8
    return-object v1

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public guessContentTypeFromContent(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 0

    :try_start_0
    invoke-static {p1}, Lnet/sf/saxon/query/InputStreamMarker;->ensureMarkSupported(Ljava/io/InputStream;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Ljava/net/URLConnection;->guessContentTypeFromStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {p1}, Ljava/net/URLConnection;->guessContentTypeFromName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lnet/sf/saxon/resource/AbstractResourceCollection;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->getMediaTypeForFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public isStable(Lnet/sf/saxon/expr/XPathContext;)Z
    .locals 1

    iget-object p0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->params:Lnet/sf/saxon/functions/URIQueryParameters;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p0}, Lnet/sf/saxon/functions/URIQueryParameters;->getStable()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p0

    sget-object p1, Lnet/sf/saxon/lib/Feature;->STABLE_COLLECTION_URI:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {p0, p1}, Lnet/sf/saxon/Configuration;->getBooleanProperty(Lnet/sf/saxon/lib/Feature;)Z

    move-result p0

    return p0

    :cond_1
    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public makeResource(Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;)Lnet/sf/saxon/lib/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 5
    invoke-virtual {p0, p2}, Lnet/sf/saxon/resource/AbstractResourceCollection;->getInputDetails(Ljava/lang/String;)Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    move-result-object p2

    .line 6
    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/resource/AbstractResourceCollection;->makeResource(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)Lnet/sf/saxon/lib/Resource;

    move-result-object p0

    return-object p0
.end method

.method public makeResource(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)Lnet/sf/saxon/lib/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    .line 1
    iget-object p0, p2, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->contentType:Ljava/lang/String;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/sf/saxon/Configuration;->getResourceFactoryForMediaType(Ljava/lang/String;)Lnet/sf/saxon/lib/ResourceFactory;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    .line 3
    sget-object p0, Lnet/sf/saxon/resource/BinaryResource;->FACTORY:Lnet/sf/saxon/lib/ResourceFactory;

    .line 4
    :cond_1
    invoke-interface {p0, p1, p2}, Lnet/sf/saxon/lib/ResourceFactory;->makeResource(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)Lnet/sf/saxon/lib/Resource;

    move-result-object p0

    return-object p0
.end method

.method public makeTypedResource(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/lib/Resource;)Lnet/sf/saxon/lib/Resource;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-interface {p2}, Lnet/sf/saxon/lib/Resource;->getContentType()Ljava/lang/String;

    move-result-object v0

    iget-object p0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/Configuration;->getResourceFactoryForMediaType(Ljava/lang/String;)Lnet/sf/saxon/lib/ResourceFactory;

    move-result-object p0

    if-nez p0, :cond_0

    return-object p2

    :cond_0
    instance-of v1, p2, Lnet/sf/saxon/resource/BinaryResource;

    if-eqz v1, :cond_1

    new-instance v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    invoke-direct {v1}, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;-><init>()V

    move-object v2, p2

    check-cast v2, Lnet/sf/saxon/resource/BinaryResource;

    invoke-virtual {v2}, Lnet/sf/saxon/resource/BinaryResource;->getData()[B

    move-result-object v2

    iput-object v2, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->binaryContent:[B

    iput-object v0, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->contentType:Ljava/lang/String;

    invoke-interface {p2}, Lnet/sf/saxon/lib/Resource;->getResourceURI()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->resourceUri:Ljava/lang/String;

    invoke-interface {p0, p1, v1}, Lnet/sf/saxon/lib/ResourceFactory;->makeResource(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)Lnet/sf/saxon/lib/Resource;

    move-result-object p0

    return-object p0

    :cond_1
    instance-of v1, p2, Lnet/sf/saxon/resource/UnparsedTextResource;

    if-eqz v1, :cond_2

    new-instance v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    invoke-direct {v1}, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;-><init>()V

    move-object v2, p2

    check-cast v2, Lnet/sf/saxon/resource/UnparsedTextResource;

    invoke-virtual {v2}, Lnet/sf/saxon/resource/UnparsedTextResource;->getContent()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->characterContent:Ljava/lang/String;

    iput-object v0, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->contentType:Ljava/lang/String;

    invoke-interface {p2}, Lnet/sf/saxon/lib/Resource;->getResourceURI()Ljava/lang/String;

    move-result-object p2

    iput-object p2, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->resourceUri:Ljava/lang/String;

    invoke-interface {p0, p1, v1}, Lnet/sf/saxon/lib/ResourceFactory;->makeResource(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)Lnet/sf/saxon/lib/Resource;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p2
.end method

.method public optionsFromQueryParameters(Lnet/sf/saxon/functions/URIQueryParameters;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/lib/ParseOptions;
    .locals 2

    new-instance p0, Lnet/sf/saxon/lib/ParseOptions;

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/Configuration;->getParseOptions()Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/sf/saxon/lib/ParseOptions;-><init>(Lnet/sf/saxon/lib/ParseOptions;)V

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lnet/sf/saxon/functions/URIQueryParameters;->getValidationMode()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/lib/ParseOptions;->setSchemaValidationMode(I)V

    :cond_0
    invoke-virtual {p1}, Lnet/sf/saxon/functions/URIQueryParameters;->getXInclude()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/lib/ParseOptions;->setXIncludeAware(Z)V

    :cond_1
    invoke-virtual {p1}, Lnet/sf/saxon/functions/URIQueryParameters;->getSpaceStrippingRule()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/om/SpaceStrippingRule;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    :cond_2
    invoke-virtual {p1}, Lnet/sf/saxon/functions/URIQueryParameters;->getXMLReaderMaker()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/sf/saxon/trans/Maker;

    invoke-virtual {p0, v0}, Lnet/sf/saxon/lib/ParseOptions;->setXMLReaderMaker(Lnet/sf/saxon/trans/Maker;)V

    :cond_3
    invoke-virtual {p1}, Lnet/sf/saxon/functions/URIQueryParameters;->getOnError()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Lnet/sf/saxon/functions/URIQueryParameters;->getOnError()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    goto :goto_0

    :cond_4
    const/4 p1, 0x1

    :goto_0
    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object v0

    if-nez v0, :cond_5

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p2

    invoke-virtual {p2}, Lnet/sf/saxon/Configuration;->makeErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p2

    goto :goto_1

    :cond_5
    invoke-virtual {v0}, Lnet/sf/saxon/Controller;->getErrorReporter()Lnet/sf/saxon/lib/ErrorReporter;

    move-result-object p2

    :goto_1
    invoke-static {p0, p1, p2}, Lnet/sf/saxon/resource/AbstractResourceCollection;->setupErrorHandlingForCollection(Lnet/sf/saxon/lib/ParseOptions;ILnet/sf/saxon/lib/ErrorReporter;)V

    :cond_6
    return-object p0
.end method

.method public registerContentType(Ljava/lang/String;Lnet/sf/saxon/lib/ResourceFactory;)V
    .locals 0

    iget-object p0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->config:Lnet/sf/saxon/Configuration;

    invoke-virtual {p0, p1, p2}, Lnet/sf/saxon/Configuration;->registerMediaType(Ljava/lang/String;Lnet/sf/saxon/lib/ResourceFactory;)V

    return-void
.end method

.method public stripWhitespace(Lnet/sf/saxon/om/SpaceStrippingRule;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method
