.class public Lnet/sf/saxon/resource/StandardCollectionFinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lnet/sf/saxon/lib/CollectionFinder;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkFileExists(Ljava/io/File;Ljava/net/URI;Lnet/sf/saxon/expr/XPathContext;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The file or directory "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not exist"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p1, "FODC0002"

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p0
.end method


# virtual methods
.method public findCollection(Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;)Lnet/sf/saxon/lib/ResourceCollection;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/sf/saxon/trans/XPathException;
        }
    .end annotation

    invoke-static {p2, p1}, Lnet/sf/saxon/resource/AbstractResourceCollection;->checkNotNull(Ljava/lang/String;Lnet/sf/saxon/expr/XPathContext;)V

    :try_start_0
    new-instance v0, Ljava/net/URI;

    invoke-static {p2}, Lnet/sf/saxon/functions/ResolveURI;->escapeSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/net/URI;->getQuery()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x3f

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    new-instance v2, Lnet/sf/saxon/functions/URIQueryParameters;

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lnet/sf/saxon/functions/URIQueryParameters;-><init>(Ljava/lang/String;Lnet/sf/saxon/Configuration;)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lnet/sf/saxon/functions/ResolveURI;->escapeSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    :try_start_1
    new-instance v0, Ljava/net/URI;

    invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "file"

    invoke-virtual {v0}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-static {v1, v0, p1}, Lnet/sf/saxon/resource/StandardCollectionFinder;->checkFileExists(Ljava/io/File;Ljava/net/URI;Lnet/sf/saxon/expr/XPathContext;)V

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Lnet/sf/saxon/resource/DirectoryCollection;

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-direct {p0, p1, p2, v1, v2}, Lnet/sf/saxon/resource/DirectoryCollection;-><init>(Lnet/sf/saxon/Configuration;Ljava/lang/String;Ljava/io/File;Lnet/sf/saxon/functions/URIQueryParameters;)V

    return-object p0

    :cond_1
    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object v0

    sget-object v1, Lnet/sf/saxon/lib/Feature;->ZIP_URI_PATTERN:Lnet/sf/saxon/lib/Feature;

    invoke-virtual {v0, v1}, Lnet/sf/saxon/Configuration;->getConfigurationProperty(Lnet/sf/saxon/lib/Feature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    const-string v0, "^jar:|\\.jar$|\\.zip$|\\.docx$|\\.xlsx$"

    :cond_2
    invoke-virtual {p0, p2}, Lnet/sf/saxon/resource/StandardCollectionFinder;->isJarFileURI(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_4

    const-string p0, ""

    invoke-static {v0, p0}, Lnet/sf/saxon/regex/ARegularExpression;->compile(Ljava/lang/String;Ljava/lang/String;)Lnet/sf/saxon/regex/ARegularExpression;

    move-result-object p0

    invoke-static {p2}, Lnet/sf/saxon/str/StringView;->of(Ljava/lang/String;)Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {v0}, Lnet/sf/saxon/str/UnicodeString;->tidy()Lnet/sf/saxon/str/UnicodeString;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/sf/saxon/regex/ARegularExpression;->containsMatch(Lnet/sf/saxon/str/UnicodeString;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_1

    :cond_3
    new-instance p0, Lnet/sf/saxon/resource/CatalogCollection;

    invoke-interface {p1}, Lnet/sf/saxon/expr/XPathContext;->getConfiguration()Lnet/sf/saxon/Configuration;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lnet/sf/saxon/resource/CatalogCollection;-><init>(Lnet/sf/saxon/Configuration;Ljava/lang/String;)V

    return-object p0

    :cond_4
    :goto_1
    new-instance p0, Lnet/sf/saxon/resource/JarCollection;

    invoke-direct {p0, p1, p2, v2}, Lnet/sf/saxon/resource/JarCollection;-><init>(Lnet/sf/saxon/expr/XPathContext;Ljava/lang/String;Lnet/sf/saxon/functions/URIQueryParameters;)V

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Lnet/sf/saxon/trans/XPathException;

    invoke-direct {p1, p0}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    :catch_1
    new-instance p0, Lnet/sf/saxon/trans/XPathException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid relative URI "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x4

    invoke-static {p2, v1}, Lnet/sf/saxon/trans/Err;->wrap(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " passed to collection() function"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p2}, Lnet/sf/saxon/trans/XPathException;-><init>(Ljava/lang/String;)V

    const-string p2, "FODC0004"

    invoke-virtual {p0, p2}, Lnet/sf/saxon/trans/XPathException;->setErrorCode(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lnet/sf/saxon/trans/XPathException;->setXPathContext(Lnet/sf/saxon/expr/XPathContext;)V

    throw p0
.end method

.method public isJarFileURI(Ljava/lang/String;)Z
    .locals 0

    const-string p0, ".jar"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".zip"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, ".docx"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_1

    const-string p0, "jar:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
