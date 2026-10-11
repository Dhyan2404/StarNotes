.class public Lnet/sf/saxon/resource/DirectoryCollection;
.super Lnet/sf/saxon/resource/AbstractResourceCollection;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/sf/saxon/resource/DirectoryCollection$a;
    }
.end annotation


# instance fields
.field public final a:Ljava/io/File;

.field public b:Lnet/sf/saxon/om/SpaceStrippingRule;


# direct methods
.method public constructor <init>(Lnet/sf/saxon/Configuration;Ljava/lang/String;Ljava/io/File;Lnet/sf/saxon/functions/URIQueryParameters;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lnet/sf/saxon/resource/AbstractResourceCollection;-><init>(Lnet/sf/saxon/Configuration;)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->collectionURI:Ljava/lang/String;

    iput-object p3, p0, Lnet/sf/saxon/resource/DirectoryCollection;->a:Ljava/io/File;

    if-nez p4, :cond_0

    new-instance p2, Lnet/sf/saxon/functions/URIQueryParameters;

    const-string p3, ""

    invoke-direct {p2, p3, p1}, Lnet/sf/saxon/functions/URIQueryParameters;-><init>(Ljava/lang/String;Lnet/sf/saxon/Configuration;)V

    iput-object p2, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->params:Lnet/sf/saxon/functions/URIQueryParameters;

    goto :goto_0

    :cond_0
    iput-object p4, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->params:Lnet/sf/saxon/functions/URIQueryParameters;

    :goto_0
    return-void
.end method

.method public static synthetic b(Lnet/sf/saxon/resource/DirectoryCollection;Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/expr/XPathContext;ZLjava/lang/String;)Lnet/sf/saxon/lib/Resource;
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lnet/sf/saxon/resource/DirectoryCollection;->c(Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/expr/XPathContext;ZLjava/lang/String;)Lnet/sf/saxon/lib/Resource;

    move-result-object p0

    return-object p0
.end method

.method private synthetic c(Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/expr/XPathContext;ZLjava/lang/String;)Lnet/sf/saxon/lib/Resource;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p4}, Lnet/sf/saxon/resource/AbstractResourceCollection;->getInputDetails(Ljava/lang/String;)Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;

    move-result-object v1

    iput-object p4, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->resourceUri:Ljava/lang/String;

    iput-object p1, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->parseOptions:Lnet/sf/saxon/lib/ParseOptions;

    iget-object p1, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->params:Lnet/sf/saxon/functions/URIQueryParameters;

    invoke-virtual {p1}, Lnet/sf/saxon/functions/URIQueryParameters;->getContentType()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->isPresent()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->params:Lnet/sf/saxon/functions/URIQueryParameters;

    invoke-virtual {p1}, Lnet/sf/saxon/functions/URIQueryParameters;->getContentType()Ljava/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, v1, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->contentType:Ljava/lang/String;

    :cond_0
    invoke-virtual {p0, p2, v1}, Lnet/sf/saxon/resource/AbstractResourceCollection;->makeResource(Lnet/sf/saxon/expr/XPathContext;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;)Lnet/sf/saxon/lib/Resource;

    move-result-object p1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    invoke-virtual {p0, p1, v1, p2}, Lnet/sf/saxon/resource/DirectoryCollection;->d(Lnet/sf/saxon/lib/Resource;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/resource/MetadataResource;

    move-result-object p0
    :try_end_0
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_1
    return-object p1

    :cond_2
    return-object v0

    :catch_0
    move-exception p1

    iget-object p0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->params:Lnet/sf/saxon/functions/URIQueryParameters;

    invoke-virtual {p0}, Lnet/sf/saxon/functions/URIQueryParameters;->getOnError()Ljava/util/Optional;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v1, 0x1

    if-ne p3, v1, :cond_3

    new-instance p0, Lnet/sf/saxon/resource/FailedResource;

    invoke-direct {p0, p4, p1}, Lnet/sf/saxon/resource/FailedResource;-><init>(Ljava/lang/String;Lnet/sf/saxon/trans/XPathException;)V

    return-object p0

    :cond_3
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 p3, 0x2

    if-ne p0, p3, :cond_4

    invoke-interface {p2}, Lnet/sf/saxon/expr/XPathContext;->getController()Lnet/sf/saxon/Controller;

    move-result-object p0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "collection(): failed to parse "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lnet/sf/saxon/trans/XPathException;->getErrorCodeLocalPart()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p2, p1, v0}, Lnet/sf/saxon/Controller;->warning(Ljava/lang/String;Ljava/lang/String;Lnet/sf/saxon/s9api/Location;)V

    :cond_4
    return-object v0
.end method


# virtual methods
.method public final d(Lnet/sf/saxon/lib/Resource;Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/resource/MetadataResource;
    .locals 4

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-interface {p1}, Lnet/sf/saxon/lib/Resource;->getResourceURI()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iget-object v1, p2, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->contentType:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, "content-type"

    invoke-static {v1}, Lnet/sf/saxon/value/StringValue;->makeStringValue(Ljava/lang/CharSequence;)Lnet/sf/saxon/value/StringValue;

    move-result-object v1

    invoke-interface {p0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object p2, p2, Lnet/sf/saxon/resource/AbstractResourceCollection$InputDetails;->encoding:Ljava/lang/String;

    if-eqz p2, :cond_1

    const-string v1, "encoding"

    invoke-static {p2}, Lnet/sf/saxon/value/StringValue;->makeStringValue(Ljava/lang/CharSequence;)Lnet/sf/saxon/value/StringValue;

    move-result-object p2

    invoke-interface {p0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    const-string p2, "file"

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/io/File;

    invoke-direct {p2, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    const-string v0, "path"

    invoke-virtual {p2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/value/StringValue;->makeStringValue(Ljava/lang/CharSequence;)Lnet/sf/saxon/value/StringValue;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "absolute-path"

    invoke-virtual {p2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/value/StringValue;->makeStringValue(Ljava/lang/CharSequence;)Lnet/sf/saxon/value/StringValue;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "canonical-path"

    invoke-virtual {p2}, Ljava/io/File;->getCanonicalPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnet/sf/saxon/value/StringValue;->makeStringValue(Ljava/lang/CharSequence;)Lnet/sf/saxon/value/StringValue;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "can-read"

    invoke-virtual {p2}, Ljava/io/File;->canRead()Z

    move-result v1

    invoke-static {v1}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "can-write"

    invoke-virtual {p2}, Ljava/io/File;->canWrite()Z

    move-result v1

    invoke-static {v1}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "can-execute"

    invoke-virtual {p2}, Ljava/io/File;->canExecute()Z

    move-result v1

    invoke-static {v1}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "is-hidden"

    invoke-virtual {p2}, Ljava/io/File;->isHidden()Z

    move-result v1

    invoke-static {v1}, Lnet/sf/saxon/value/BooleanValue;->get(Z)Lnet/sf/saxon/value/BooleanValue;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v0, "last-modified"

    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-static {v1, v2}, Lnet/sf/saxon/value/DateTimeValue;->fromJavaTime(J)Lnet/sf/saxon/value/DateTimeValue;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lnet/sf/saxon/trans/XPathException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_0
    :try_start_2
    const-string v0, "length"

    new-instance v1, Lnet/sf/saxon/value/Int64Value;

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Lnet/sf/saxon/value/Int64Value;-><init>(J)V

    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    :cond_2
    new-instance p2, Lnet/sf/saxon/resource/MetadataResource;

    invoke-interface {p1}, Lnet/sf/saxon/lib/Resource;->getResourceURI()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1, p0, p3}, Lnet/sf/saxon/resource/MetadataResource;-><init>(Ljava/lang/String;Lnet/sf/saxon/lib/Resource;Ljava/util/Map;Lnet/sf/saxon/expr/XPathContext;)V

    return-object p2
.end method

.method public directoryContents(Ljava/io/File;Lnet/sf/saxon/functions/URIQueryParameters;)Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Lnet/sf/saxon/functions/URIQueryParameters;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 p0, 0x0

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lnet/sf/saxon/functions/URIQueryParameters;->getFilenameFilter()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/FilenameFilter;

    :cond_0
    invoke-virtual {p2}, Lnet/sf/saxon/functions/URIQueryParameters;->getRecurse()Ljava/util/Optional;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    :cond_1
    new-instance p2, Ljava/util/Stack;

    invoke-direct {p2}, Ljava/util/Stack;-><init>()V

    invoke-virtual {p1, p0}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lnet/sf/saxon/resource/DirectoryCollection$a;

    invoke-direct {p1, p2, v0, p0}, Lnet/sf/saxon/resource/DirectoryCollection$a;-><init>(Ljava/util/Stack;ZLjava/io/FilenameFilter;)V

    return-object p1
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

    iget-object p1, p0, Lnet/sf/saxon/resource/DirectoryCollection;->a:Ljava/io/File;

    iget-object v0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->params:Lnet/sf/saxon/functions/URIQueryParameters;

    invoke-virtual {p0, p1, v0}, Lnet/sf/saxon/resource/DirectoryCollection;->directoryContents(Ljava/io/File;Lnet/sf/saxon/functions/URIQueryParameters;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public getResources(Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Iterator;
    .locals 5
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

    iget-object v0, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->params:Lnet/sf/saxon/functions/URIQueryParameters;

    invoke-virtual {p0, v0, p1}, Lnet/sf/saxon/resource/AbstractResourceCollection;->optionsFromQueryParameters(Lnet/sf/saxon/functions/URIQueryParameters;Lnet/sf/saxon/expr/XPathContext;)Lnet/sf/saxon/lib/ParseOptions;

    move-result-object v0

    iget-object v1, p0, Lnet/sf/saxon/resource/DirectoryCollection;->b:Lnet/sf/saxon/om/SpaceStrippingRule;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/lib/ParseOptions;->setSpaceStrippingRule(Lnet/sf/saxon/om/SpaceStrippingRule;)V

    iget-object v1, p0, Lnet/sf/saxon/resource/AbstractResourceCollection;->params:Lnet/sf/saxon/functions/URIQueryParameters;

    invoke-virtual {v1}, Lnet/sf/saxon/functions/URIQueryParameters;->getMetaData()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lnet/sf/saxon/resource/DirectoryCollection;->getResourceURIs(Lnet/sf/saxon/expr/XPathContext;)Ljava/util/Iterator;

    move-result-object v2

    new-instance v3, Lnet/sf/saxon/tree/jiter/MappingJavaIterator;

    new-instance v4, Lcom/sunia/HTREnginev2/m5f;

    invoke-direct {v4, p0, v0, p1, v1}, Lcom/sunia/HTREnginev2/m5f;-><init>(Lnet/sf/saxon/resource/DirectoryCollection;Lnet/sf/saxon/lib/ParseOptions;Lnet/sf/saxon/expr/XPathContext;Z)V

    invoke-direct {v3, v2, v4}, Lnet/sf/saxon/tree/jiter/MappingJavaIterator;-><init>(Ljava/util/Iterator;Ljava/util/function/Function;)V

    return-object v3
.end method

.method public stripWhitespace(Lnet/sf/saxon/om/SpaceStrippingRule;)Z
    .locals 0

    iput-object p1, p0, Lnet/sf/saxon/resource/DirectoryCollection;->b:Lnet/sf/saxon/om/SpaceStrippingRule;

    const/4 p0, 0x1

    return p0
.end method
