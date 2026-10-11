.class public Lorg/xmlresolver/CatalogResolver;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xmlresolver/ResourceResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xmlresolver/CatalogResolver$a;
    }
.end annotation


# instance fields
.field public final a:Lorg/xmlresolver/logging/ResolverLogger;

.field public b:Lorg/xmlresolver/XMLResolverConfiguration;

.field public c:Lorg/xmlresolver/cache/ResourceCache;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/xmlresolver/XMLResolverConfiguration;

    invoke-direct {v0}, Lorg/xmlresolver/XMLResolverConfiguration;-><init>()V

    invoke-direct {p0, v0}, Lorg/xmlresolver/CatalogResolver;-><init>(Lorg/xmlresolver/XMLResolverConfiguration;)V

    return-void
.end method

.method public constructor <init>(Lorg/xmlresolver/XMLResolverConfiguration;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lorg/xmlresolver/CatalogResolver;->c:Lorg/xmlresolver/cache/ResourceCache;

    .line 4
    iput-object p1, p0, Lorg/xmlresolver/CatalogResolver;->b:Lorg/xmlresolver/XMLResolverConfiguration;

    .line 5
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CACHE:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {p1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xmlresolver/cache/ResourceCache;

    iput-object v0, p0, Lorg/xmlresolver/CatalogResolver;->c:Lorg/xmlresolver/cache/ResourceCache;

    .line 6
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {p1, v0}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xmlresolver/logging/ResolverLogger;

    iput-object p1, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    return-void
.end method


# virtual methods
.method public final a(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/SAXParserFactory;->setXIncludeAware(Z)V

    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    if-nez p4, :cond_0

    invoke-virtual {v2}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p4

    :cond_0
    if-eqz p4, :cond_2

    const-string v3, "text/html"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "application/html+xml"

    invoke-virtual {p4, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_2

    :cond_1
    new-instance p4, Lorg/xml/sax/InputSource;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {p4, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Lorg/xmlresolver/CatalogResolver$a;

    invoke-virtual {v2}, Ljava/net/URLConnection;->getURL()Ljava/net/URL;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v2

    invoke-direct {v3, v2, p2, p3}, Lorg/xmlresolver/CatalogResolver$a;-><init>(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object p2

    invoke-virtual {p2, p4, v3}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    invoke-virtual {v3}, Lorg/xmlresolver/CatalogResolver$a;->a()Ljava/net/URI;

    move-result-object p0
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_2
    return-object v0

    :catch_0
    move-exception p2

    iget-object p0, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "error"

    const-string p3, "RDDL parse failed: %s: %s"

    invoke-interface {p0, p2, p3, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 12

    const/4 v0, 0x1

    if-eqz p1, :cond_b

    const-string v1, ""

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, "all"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    return v3

    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    const-string v7, "http:"

    const-string v8, "https:"

    if-ge v4, v1, :cond_9

    aget-object v9, p1, v4

    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    return v3

    :cond_2
    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-nez v11, :cond_3

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_3
    if-nez v5, :cond_5

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    move v5, v3

    goto :goto_2

    :cond_5
    :goto_1
    move v5, v0

    :goto_2
    if-nez v6, :cond_7

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_3

    :cond_6
    move v6, v3

    goto :goto_4

    :cond_7
    :goto_3
    move v6, v0

    :goto_4
    invoke-virtual {p2, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_8

    return v3

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_9
    iget-object p0, p0, Lorg/xmlresolver/CatalogResolver;->b:Lorg/xmlresolver/XMLResolverConfiguration;

    sget-object p1, Lorg/xmlresolver/ResolverFeature;->MERGE_HTTPS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {p0, p1}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_b

    if-eqz v5, :cond_a

    if-nez v6, :cond_a

    invoke-virtual {p2, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_a

    return v3

    :cond_a
    if-eqz v6, :cond_b

    if-nez v5, :cond_b

    invoke-virtual {p2, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_b

    return v3

    :cond_b
    :goto_5
    return v0
.end method

.method public final c(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;
    .locals 7

    const/4 v0, 0x0

    const-string v1, "resolveDoctype: %s"

    const-string v2, "request"

    const/4 v3, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v2, v1, v4}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v5, "resolveDoctype: %s (%s)"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v4, v2, v5, v6}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/net/URI;->isAbsolute()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/xmlresolver/CatalogResolver;->b:Lorg/xmlresolver/XMLResolverConfiguration;

    sget-object v5, Lorg/xmlresolver/ResolverFeature;->ACCESS_EXTERNAL_ENTITY:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v4, v5}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4, p2}, Lorg/xmlresolver/CatalogResolver;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v4, "resolveEntity (access denied): null"

    new-array v5, v0, [Ljava/lang/Object;

    invoke-interface {p2, v2, v4, v5}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    :catch_0
    :cond_1
    :goto_0
    iget-object p2, p0, Lorg/xmlresolver/CatalogResolver;->b:Lorg/xmlresolver/XMLResolverConfiguration;

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->CATALOG_MANAGER:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {p2, v2}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/xmlresolver/CatalogManager;

    invoke-virtual {p2, p1, v3, v3}, Lorg/xmlresolver/CatalogManager;->lookupDoctype(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    const-string p2, "response"

    if-nez p1, :cond_2

    iget-object p0, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    const-string p1, "resolveDoctype: null"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-interface {p0, p2, p1, v0}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v3

    :cond_2
    iget-object v0, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, p2, v1, v2}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/xmlresolver/CatalogResolver;->c:Lorg/xmlresolver/cache/ResourceCache;

    invoke-virtual {p2, p1, v3}, Lorg/xmlresolver/cache/ResourceCache;->cachedSystem(Ljava/net/URI;Ljava/lang/String;)Lorg/xmlresolver/cache/CacheEntry;

    move-result-object p2

    invoke-virtual {p0, v3, p1, p2}, Lorg/xmlresolver/CatalogResolver;->d(Ljava/lang/String;Ljava/net/URI;Lorg/xmlresolver/cache/CacheEntry;)Lorg/xmlresolver/ResolvedResourceImpl;

    move-result-object p0

    return-object p0
.end method

.method public final d(Ljava/lang/String;Ljava/net/URI;Lorg/xmlresolver/cache/CacheEntry;)Lorg/xmlresolver/ResolvedResourceImpl;
    .locals 6

    iget-object v0, p0, Lorg/xmlresolver/CatalogResolver;->b:Lorg/xmlresolver/XMLResolverConfiguration;

    sget-object v1, Lorg/xmlresolver/ResolverFeature;->THROW_URI_EXCEPTIONS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0, v1}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "Resolution failed: %s: %s"

    const-string v3, "error"

    if-nez p3, :cond_0

    :try_start_0
    invoke-static {p1}, Lorg/xmlresolver/utils/URIUtils;->newURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/CatalogResolver;->e(Ljava/net/URI;Ljava/net/URI;)Lorg/xmlresolver/ResolvedResourceImpl;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance p1, Ljava/io/FileInputStream;

    iget-object v4, p3, Lorg/xmlresolver/cache/CacheEntry;->file:Ljava/io/File;

    invoke-direct {p1, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v4, Lorg/xmlresolver/ResolvedResourceImpl;

    iget-object v5, p3, Lorg/xmlresolver/cache/CacheEntry;->file:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v5

    invoke-virtual {p3}, Lorg/xmlresolver/cache/CacheEntry;->contentType()Ljava/lang/String;

    move-result-object p3

    invoke-direct {v4, p2, v5, p1, p3}, Lorg/xmlresolver/ResolvedResourceImpl;-><init>(Ljava/net/URI;Ljava/net/URI;Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception p1

    iget-object p0, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, v3, v2, p2}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    throw p1

    :catch_1
    move-exception p1

    iget-object p0, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p3

    filled-new-array {p2, p3}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p0, v3, v2, p2}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_2

    return-object v1

    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public final e(Ljava/net/URI;Ljava/net/URI;)Lorg/xmlresolver/ResolvedResourceImpl;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/URISyntaxException;
        }
    .end annotation

    iget-object v0, p0, Lorg/xmlresolver/CatalogResolver;->b:Lorg/xmlresolver/XMLResolverConfiguration;

    sget-object v1, Lorg/xmlresolver/ResolverFeature;->MASK_JAR_URIS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0, v1}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "classpath"

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "jar"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, p2

    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    const-string v2, "data"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_7

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_6

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    add-int/2addr v0, v3

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, ";base64"

    invoke-virtual {v4, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-static {}, Ljava/util/Base64;->getDecoder()Ljava/util/Base64$Decoder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/util/Base64$Decoder;->decode(Ljava/lang/String;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result p0

    add-int/lit8 p0, p0, -0x7

    invoke-virtual {v4, v1, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_2
    const-string v0, ";charset="

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_3

    add-int/lit8 v0, v0, 0x9

    invoke-virtual {v4, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, ";"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_4

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    const-string v0, "UTF-8"

    :cond_4
    :goto_1
    invoke-static {p0, v0}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    const-string p0, ""

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    goto :goto_2

    :cond_5
    move-object v2, v4

    :goto_2
    move-object p0, v2

    :goto_3
    new-instance v1, Lorg/xmlresolver/ResolvedResourceImpl;

    invoke-direct {v1, p1, p2, v0, p0}, Lorg/xmlresolver/ResolvedResourceImpl;-><init>(Ljava/net/URI;Ljava/net/URI;Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v1

    :cond_6
    new-instance p0, Ljava/net/URISyntaxException;

    invoke-virtual {p2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "Comma separator missing"

    invoke-direct {p0, p1, p2}, Ljava/net/URISyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    throw p0

    :cond_7
    invoke-virtual {p2}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p2}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_8
    iget-object p0, p0, Lorg/xmlresolver/CatalogResolver;->b:Lorg/xmlresolver/XMLResolverConfiguration;

    sget-object v1, Lorg/xmlresolver/ResolverFeature;->CLASSLOADER:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {p0, v1}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/ClassLoader;

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object p0

    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object p0

    new-instance v0, Lorg/xmlresolver/ResolvedResourceImpl;

    invoke-direct {v0, p1, p2, p0, v2}, Lorg/xmlresolver/ResolvedResourceImpl;-><init>(Ljava/net/URI;Ljava/net/URI;Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0

    :cond_9
    new-instance p0, Ljava/io/IOException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Not found: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    invoke-virtual {p2}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object p0

    invoke-virtual {p0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    new-instance v0, Lorg/xmlresolver/ResolvedResourceImpl;

    invoke-virtual {p0}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {p0}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p1, p2, v1, p0}, Lorg/xmlresolver/ResolvedResourceImpl;-><init>(Ljava/net/URI;Ljava/net/URI;Ljava/io/InputStream;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic getConfiguration()Lorg/xmlresolver/ResolverConfiguration;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/xmlresolver/CatalogResolver;->getConfiguration()Lorg/xmlresolver/XMLResolverConfiguration;

    move-result-object p0

    return-object p0
.end method

.method public getConfiguration()Lorg/xmlresolver/XMLResolverConfiguration;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/xmlresolver/CatalogResolver;->b:Lorg/xmlresolver/XMLResolverConfiguration;

    return-object p0
.end method

.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    const-string v5, "resolveEntity: null"

    const-string v6, "request"

    const/4 v7, 0x0

    const/4 v8, 0x0

    if-nez v0, :cond_0

    if-nez v2, :cond_0

    if-nez v3, :cond_0

    if-nez v4, :cond_0

    iget-object v0, v1, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    new-array v1, v7, [Ljava/lang/Object;

    invoke-interface {v0, v6, v5, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v8

    :cond_0
    const-string v9, "resolveEntity (access denied): null"

    if-eqz v3, :cond_2

    invoke-static {}, Lorg/xmlresolver/utils/URIUtils;->isWindows()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, v1, Lorg/xmlresolver/CatalogResolver;->b:Lorg/xmlresolver/XMLResolverConfiguration;

    sget-object v11, Lorg/xmlresolver/ResolverFeature;->FIX_WINDOWS_SYSTEM_IDENTIFIERS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v10, v11}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_1

    const-string v10, "\\"

    const-string v11, "/"

    invoke-virtual {v3, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    if-eqz v4, :cond_1

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    :try_start_0
    new-instance v10, Ljava/net/URI;

    invoke-direct {v10, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URI;->isAbsolute()Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v1, Lorg/xmlresolver/CatalogResolver;->b:Lorg/xmlresolver/XMLResolverConfiguration;

    sget-object v11, Lorg/xmlresolver/ResolverFeature;->ACCESS_EXTERNAL_ENTITY:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v10, v11}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1, v10, v3}, Lorg/xmlresolver/CatalogResolver;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    iget-object v10, v1, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    new-array v11, v7, [Ljava/lang/Object;

    invoke-interface {v10, v6, v9, v11}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v8

    :catch_0
    :cond_2
    if-eqz v0, :cond_3

    if-nez v2, :cond_3

    if-nez v3, :cond_3

    iget-object v2, v1, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v3, "resolveEntity: name: %s (%s)"

    filled-new-array {v0, v4}, [Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v2, v6, v3, v5}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v1, v0, v4}, Lorg/xmlresolver/CatalogResolver;->c(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;

    move-result-object v0

    return-object v0

    :cond_3
    if-eqz v0, :cond_4

    iget-object v10, v1, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v11, "resolveEntity: %s %s (baseURI: %s, publicId: %s)"

    filled-new-array {v0, v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10, v6, v11, v12}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    iget-object v10, v1, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v11, "resolveEntity: %s (baseURI: %s, publicId: %s)"

    filled-new-array {v3, v4, v2}, [Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v10, v6, v11, v12}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    iget-object v10, v1, Lorg/xmlresolver/CatalogResolver;->b:Lorg/xmlresolver/XMLResolverConfiguration;

    sget-object v11, Lorg/xmlresolver/ResolverFeature;->CATALOG_MANAGER:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v10, v11}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/xmlresolver/CatalogManager;

    invoke-virtual {v10, v0, v3, v2}, Lorg/xmlresolver/CatalogManager;->lookupEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v11

    if-nez v11, :cond_5

    if-eqz v3, :cond_5

    iget-object v12, v1, Lorg/xmlresolver/CatalogResolver;->b:Lorg/xmlresolver/XMLResolverConfiguration;

    sget-object v13, Lorg/xmlresolver/ResolverFeature;->URI_FOR_SYSTEM:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v12, v13}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_5

    invoke-virtual {v10, v3}, Lorg/xmlresolver/CatalogManager;->lookupURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v11

    :cond_5
    const-string v12, "error"

    const-string v13, "response"

    if-eqz v11, :cond_6

    iget-object v0, v1, Lorg/xmlresolver/CatalogResolver;->c:Lorg/xmlresolver/cache/ResourceCache;

    invoke-virtual {v0, v11, v2}, Lorg/xmlresolver/cache/ResourceCache;->cachedSystem(Ljava/net/URI;Ljava/lang/String;)Lorg/xmlresolver/cache/CacheEntry;

    move-result-object v0

    invoke-virtual {v1, v3, v11, v0}, Lorg/xmlresolver/CatalogResolver;->d(Ljava/lang/String;Ljava/net/URI;Lorg/xmlresolver/cache/CacheEntry;)Lorg/xmlresolver/ResolvedResourceImpl;

    move-result-object v0

    move-object/from16 v16, v5

    move-object v7, v8

    goto/16 :goto_4

    :cond_6
    iget-object v14, v1, Lorg/xmlresolver/CatalogResolver;->b:Lorg/xmlresolver/XMLResolverConfiguration;

    sget-object v15, Lorg/xmlresolver/ResolverFeature;->THROW_URI_EXCEPTIONS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v14, v15}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    const-string v15, "resolveURI: null"

    const-string v8, "URI exception: %s (base: %s)"

    if-eqz v3, :cond_7

    :try_start_1
    new-instance v7, Ljava/net/URI;

    invoke-direct {v7, v3}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_2

    :catch_2
    move-exception v0

    const/4 v2, 0x0

    const/4 v5, 0x0

    goto/16 :goto_3

    :cond_7
    const/4 v7, 0x0

    :goto_1
    if-eqz v4, :cond_d

    new-instance v7, Ljava/net/URI;

    invoke-direct {v7, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    if-eqz v3, :cond_8

    invoke-virtual {v7, v3}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    :cond_8
    iget-object v11, v1, Lorg/xmlresolver/CatalogResolver;->b:Lorg/xmlresolver/XMLResolverConfiguration;

    move-object/from16 v16, v5

    sget-object v5, Lorg/xmlresolver/ResolverFeature;->ACCESS_EXTERNAL_ENTITY:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v11, v5}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v5, v11}, Lorg/xmlresolver/CatalogResolver;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v0, v1, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    const/4 v2, 0x0

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v0, v6, v9, v5}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v1, 0x0

    return-object v1

    :cond_9
    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v0, v5, v2}, Lorg/xmlresolver/CatalogManager;->lookupEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    if-nez v0, :cond_a

    iget-object v5, v1, Lorg/xmlresolver/CatalogResolver;->b:Lorg/xmlresolver/XMLResolverConfiguration;

    sget-object v6, Lorg/xmlresolver/ResolverFeature;->URI_FOR_SYSTEM:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v5, v6}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v10, v0}, Lorg/xmlresolver/CatalogManager;->lookupURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    :cond_a
    move-object v11, v0

    if-eqz v11, :cond_e

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lorg/xmlresolver/CatalogResolver;->c:Lorg/xmlresolver/cache/ResourceCache;

    invoke-virtual {v5, v11, v2}, Lorg/xmlresolver/cache/ResourceCache;->cachedSystem(Ljava/net/URI;Ljava/lang/String;)Lorg/xmlresolver/cache/CacheEntry;

    move-result-object v5

    invoke-virtual {v1, v0, v11, v5}, Lorg/xmlresolver/CatalogResolver;->d(Ljava/lang/String;Ljava/net/URI;Lorg/xmlresolver/cache/CacheEntry;)Lorg/xmlresolver/ResolvedResourceImpl;

    move-result-object v0
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    :goto_2
    iget-object v2, v1, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v12, v8, v3}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v14, :cond_b

    iget-object v0, v1, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    const/4 v2, 0x0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {v0, v13, v15, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v5, 0x0

    return-object v5

    :cond_b
    throw v0

    :goto_3
    iget-object v6, v1, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v6, v12, v8, v3}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v14, :cond_c

    iget-object v0, v1, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-interface {v0, v13, v15, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_d
    move-object/from16 v16, v5

    :cond_e
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_f

    iget-object v1, v1, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v2, "resolveEntity: %s"

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v13, v2, v3}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    :cond_f
    if-nez v7, :cond_10

    iget-object v0, v1, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    move-object/from16 v3, v16

    invoke-interface {v0, v13, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    const/4 v1, 0x0

    return-object v1

    :cond_10
    move-object/from16 v3, v16

    iget-object v0, v1, Lorg/xmlresolver/CatalogResolver;->b:Lorg/xmlresolver/XMLResolverConfiguration;

    sget-object v4, Lorg/xmlresolver/ResolverFeature;->THROW_URI_EXCEPTIONS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0, v4}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :try_start_2
    const-string v0, "data"

    invoke-virtual {v7}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-virtual {v1, v7, v7}, Lorg/xmlresolver/CatalogResolver;->e(Ljava/net/URI;Ljava/net/URI;)Lorg/xmlresolver/ResolvedResourceImpl;

    move-result-object v0

    return-object v0

    :cond_11
    iget-object v0, v1, Lorg/xmlresolver/CatalogResolver;->c:Lorg/xmlresolver/cache/ResourceCache;

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/xmlresolver/cache/ResourceCache;->cacheURI(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v1, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v5, "resolveEntity: cached %s"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v0, v13, v5, v6}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v5, v1, Lorg/xmlresolver/CatalogResolver;->c:Lorg/xmlresolver/cache/ResourceCache;

    invoke-virtual {v5, v7, v2}, Lorg/xmlresolver/cache/ResourceCache;->cachedSystem(Ljava/net/URI;Ljava/lang/String;)Lorg/xmlresolver/cache/CacheEntry;

    move-result-object v2

    invoke-virtual {v1, v0, v7, v2}, Lorg/xmlresolver/CatalogResolver;->d(Ljava/lang/String;Ljava/net/URI;Lorg/xmlresolver/cache/CacheEntry;)Lorg/xmlresolver/ResolvedResourceImpl;

    move-result-object v0
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    return-object v0

    :catch_3
    move-exception v0

    iget-object v2, v1, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v5, "I/O exception: %s"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v12, v5, v6}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v4, :cond_12

    goto :goto_6

    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_4
    move-exception v0

    iget-object v2, v1, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v5, "URI argument exception: %s"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v12, v5, v6}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v4, :cond_13

    goto :goto_6

    :cond_13
    throw v0

    :catch_5
    move-exception v0

    iget-object v2, v1, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v5, "URI syntax exception: %s"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v12, v5, v6}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v4, :cond_15

    :cond_14
    :goto_6
    iget-object v0, v1, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {v0, v13, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_15
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public resolveNamespace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;
    .locals 10

    const-string v0, "resolveNamespace (access denied): null"

    iget-object v1, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v2, "resolveNamespace: %s (base: %s, nature: %s, purpose: %s)"

    filled-new-array {p1, p2, p3, p4}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "request"

    invoke-interface {v1, v4, v2, v3}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/xmlresolver/CatalogResolver;->b:Lorg/xmlresolver/XMLResolverConfiguration;

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->CATALOG_MANAGER:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v1, v2}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xmlresolver/CatalogManager;

    iget-object v2, p0, Lorg/xmlresolver/CatalogResolver;->b:Lorg/xmlresolver/XMLResolverConfiguration;

    sget-object v3, Lorg/xmlresolver/ResolverFeature;->THROW_URI_EXCEPTIONS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v2, v3}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x0

    :try_start_0
    new-instance v6, Ljava/net/URI;

    invoke-direct {v6, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-virtual {v6}, Ljava/net/URI;->isAbsolute()Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/xmlresolver/CatalogResolver;->b:Lorg/xmlresolver/XMLResolverConfiguration;

    sget-object v8, Lorg/xmlresolver/ResolverFeature;->ACCESS_EXTERNAL_DOCUMENT:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v7, v8}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p0, v7, p1}, Lorg/xmlresolver/CatalogResolver;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    iget-object v7, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    new-array v8, v3, [Ljava/lang/Object;

    invoke-interface {v7, v4, v0, v8}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v5

    :catch_0
    move-exception v7

    goto :goto_0

    :catch_1
    move-exception v7

    goto :goto_1

    :catch_2
    move-exception v7

    move-object v6, v5

    :goto_0
    if-nez v2, :cond_0

    goto :goto_2

    :cond_0
    throw v7

    :catch_3
    move-exception v7

    move-object v6, v5

    :goto_1
    if-nez v2, :cond_10

    :cond_1
    :goto_2
    invoke-virtual {v1, p1, p3, p4}, Lorg/xmlresolver/CatalogManager;->lookupNamespaceURI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7

    if-nez v7, :cond_5

    if-eqz p2, :cond_5

    :try_start_2
    new-instance v8, Ljava/net/URI;

    invoke-direct {v8, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, p1}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6}, Ljava/net/URI;->isAbsolute()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/xmlresolver/CatalogResolver;->b:Lorg/xmlresolver/XMLResolverConfiguration;

    sget-object v8, Lorg/xmlresolver/ResolverFeature;->ACCESS_EXTERNAL_DOCUMENT:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {p2, v8}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2, p1}, Lorg/xmlresolver/CatalogResolver;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    new-array v1, v3, [Ljava/lang/Object;

    invoke-interface {p2, v4, v0, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_2
    invoke-virtual {v1, p1, p3, p4}, Lorg/xmlresolver/CatalogManager;->lookupNamespaceURI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v7
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4

    goto :goto_3

    :catch_4
    move-exception p2

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    throw p2

    :catch_5
    move-exception p2

    if-nez v2, :cond_4

    goto :goto_3

    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_5
    :goto_3
    if-nez v7, :cond_6

    move-object p2, v5

    goto :goto_4

    :cond_6
    iget-object p2, p0, Lorg/xmlresolver/CatalogResolver;->c:Lorg/xmlresolver/cache/ResourceCache;

    invoke-virtual {p2, v7, p3, p4}, Lorg/xmlresolver/cache/ResourceCache;->cachedNamespaceUri(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/cache/CacheEntry;

    move-result-object p2

    :goto_4
    iget-object v0, p0, Lorg/xmlresolver/CatalogResolver;->b:Lorg/xmlresolver/XMLResolverConfiguration;

    sget-object v1, Lorg/xmlresolver/ResolverFeature;->PARSE_RDDL:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v0, v1}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v1, "resolveNamespace: %s"

    const-string v4, "resolveNamespace: null"

    const-string v8, "response"

    if-eqz v0, :cond_d

    if-eqz p3, :cond_d

    if-eqz p4, :cond_d

    if-eqz p2, :cond_7

    iget-object v0, p2, Lorg/xmlresolver/cache/CacheEntry;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {p2}, Lorg/xmlresolver/cache/CacheEntry;->contentType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, p3, p4, v2}, Lorg/xmlresolver/CatalogResolver;->a(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object p2, p0, Lorg/xmlresolver/CatalogResolver;->c:Lorg/xmlresolver/cache/ResourceCache;

    invoke-virtual {p2, v0}, Lorg/xmlresolver/cache/ResourceCache;->cachedUri(Ljava/net/URI;)Lorg/xmlresolver/cache/CacheEntry;

    move-result-object p2

    goto :goto_5

    :cond_7
    const-string v0, "error"

    if-eqz v7, :cond_8

    :try_start_3
    invoke-virtual {p0, v7, p3, p4, v5}, Lorg/xmlresolver/CatalogResolver;->a(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    goto :goto_5

    :cond_8
    invoke-static {p1}, Lorg/xmlresolver/utils/URIUtils;->newURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v9

    invoke-virtual {p0, v9, p3, p4, v5}, Lorg/xmlresolver/CatalogResolver;->a(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0
    :try_end_3
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_6

    :cond_9
    :goto_5
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p0, p3, p1}, Lorg/xmlresolver/CatalogResolver;->resolveURI(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;

    move-result-object p3

    if-eqz p3, :cond_a

    iget-object p0, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    invoke-virtual {p3}, Lorg/xmlresolver/ResolvedResource;->getLocalURI()Ljava/net/URI;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v8, v1, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p3

    :cond_a
    iget-object p3, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object p4

    invoke-interface {p3, v8, v1, p4}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p0, p1, v0, p2}, Lorg/xmlresolver/CatalogResolver;->d(Ljava/lang/String;Ljava/net/URI;Lorg/xmlresolver/cache/CacheEntry;)Lorg/xmlresolver/ResolvedResourceImpl;

    move-result-object p0

    return-object p0

    :catch_6
    move-exception p2

    iget-object p3, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URI argument exception: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p4, v3, [Ljava/lang/Object;

    invoke-interface {p3, v0, p1, p4}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v2, :cond_b

    iget-object p0, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    new-array p1, v3, [Ljava/lang/Object;

    invoke-interface {p0, v8, v4, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_b
    throw p2

    :catch_7
    move-exception p2

    iget-object p3, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "URI syntax exception: "

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p4, v3, [Ljava/lang/Object;

    invoke-interface {p3, v0, p1, p4}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v2, :cond_c

    iget-object p0, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    new-array p1, v3, [Ljava/lang/Object;

    invoke-interface {p0, v8, v4, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_d
    if-eqz v7, :cond_f

    iget-object p1, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object p2

    invoke-interface {p1, v8, v1, p2}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v6, :cond_e

    goto :goto_6

    :cond_e
    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_6
    iget-object p1, p0, Lorg/xmlresolver/CatalogResolver;->c:Lorg/xmlresolver/cache/ResourceCache;

    invoke-virtual {p1, v7, p3, p4}, Lorg/xmlresolver/cache/ResourceCache;->cachedNamespaceUri(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/cache/CacheEntry;

    move-result-object p1

    invoke-virtual {p0, v5, v7, p1}, Lorg/xmlresolver/CatalogResolver;->d(Ljava/lang/String;Ljava/net/URI;Lorg/xmlresolver/cache/CacheEntry;)Lorg/xmlresolver/ResolvedResourceImpl;

    move-result-object p0

    return-object p0

    :cond_f
    iget-object p0, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    new-array p1, v3, [Ljava/lang/Object;

    invoke-interface {p0, v8, v4, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_10
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p0
.end method

.method public resolveURI(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/ResolvedResource;
    .locals 13

    const-string v0, "resolveURI (access denied): null"

    iget-object v1, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v2, "resolveURI: %s (base URI: %s)"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object v3

    const-string v4, "request"

    invoke-interface {v1, v4, v2, v3}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lorg/xmlresolver/CatalogResolver;->b:Lorg/xmlresolver/XMLResolverConfiguration;

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->THROW_URI_EXCEPTIONS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v1, v2}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const-string v2, ""

    const-string v3, "resolveURI: null"

    const/4 v5, 0x0

    const-string v6, "response"

    const/4 v7, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    :cond_0
    if-eqz p2, :cond_f

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto/16 :goto_2

    :cond_1
    move-object p1, p2

    move-object p2, v7

    :cond_2
    :try_start_0
    new-instance v2, Ljava/net/URI;

    invoke-direct {v2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URI;->isAbsolute()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/xmlresolver/CatalogResolver;->b:Lorg/xmlresolver/XMLResolverConfiguration;

    sget-object v8, Lorg/xmlresolver/ResolverFeature;->ACCESS_EXTERNAL_DOCUMENT:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v2, v8}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2, p1}, Lorg/xmlresolver/CatalogResolver;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    new-array v8, v5, [Ljava/lang/Object;

    invoke-interface {v2, v4, v0, v8}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v7

    :catch_0
    :cond_3
    iget-object v2, p0, Lorg/xmlresolver/CatalogResolver;->b:Lorg/xmlresolver/XMLResolverConfiguration;

    sget-object v8, Lorg/xmlresolver/ResolverFeature;->CATALOG_MANAGER:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v2, v8}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xmlresolver/CatalogManager;

    invoke-virtual {v2, p1}, Lorg/xmlresolver/CatalogManager;->lookupURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v8

    const-string v9, "resolveURI: %s"

    if-eqz v8, :cond_4

    iget-object p2, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {p2, v6, v9, v0}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p2, p0, Lorg/xmlresolver/CatalogResolver;->c:Lorg/xmlresolver/cache/ResourceCache;

    invoke-virtual {p2, v8}, Lorg/xmlresolver/cache/ResourceCache;->cachedUri(Ljava/net/URI;)Lorg/xmlresolver/cache/CacheEntry;

    move-result-object p2

    invoke-virtual {p0, p1, v8, p2}, Lorg/xmlresolver/CatalogResolver;->d(Ljava/lang/String;Ljava/net/URI;Lorg/xmlresolver/cache/CacheEntry;)Lorg/xmlresolver/ResolvedResourceImpl;

    move-result-object p0

    return-object p0

    :cond_4
    const-string v8, "error"

    if-eqz p2, :cond_9

    :try_start_1
    new-instance v10, Ljava/net/URI;

    invoke-direct {v10, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_6

    iget-object v11, p0, Lorg/xmlresolver/CatalogResolver;->b:Lorg/xmlresolver/XMLResolverConfiguration;

    sget-object v12, Lorg/xmlresolver/ResolverFeature;->ACCESS_EXTERNAL_DOCUMENT:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v11, v12}, Lorg/xmlresolver/XMLResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {p0, v11, v10}, Lorg/xmlresolver/CatalogResolver;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    iget-object v2, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    new-array v9, v5, [Ljava/lang/Object;

    invoke-interface {v2, v4, v0, v9}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v7

    :cond_5
    invoke-virtual {v2, v10}, Lorg/xmlresolver/CatalogManager;->lookupURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v2, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2, v6, v9, v4}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, p0, Lorg/xmlresolver/CatalogResolver;->c:Lorg/xmlresolver/cache/ResourceCache;

    invoke-virtual {v2, v0}, Lorg/xmlresolver/cache/ResourceCache;->cachedUri(Ljava/net/URI;)Lorg/xmlresolver/cache/CacheEntry;

    move-result-object v2

    invoke-virtual {p0, v10, v0, v2}, Lorg/xmlresolver/CatalogResolver;->d(Ljava/lang/String;Ljava/net/URI;Lorg/xmlresolver/cache/CacheEntry;)Lorg/xmlresolver/ResolvedResourceImpl;

    move-result-object p0
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :cond_6
    move-object p1, v10

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v2, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v4, "URI argument exception: %s (base URI: %s)"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v2, v8, v4, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_7

    iget-object p0, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    new-array p1, v5, [Ljava/lang/Object;

    invoke-interface {p0, v6, v3, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v7

    :cond_7
    throw v0

    :catch_2
    move-exception v0

    iget-object v2, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v4, "URI syntax exception: %s (base URI: %s)"

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v2, v8, v4, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_8

    iget-object p0, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    new-array p1, v5, [Ljava/lang/Object;

    invoke-interface {p0, v6, v3, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v7

    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_9
    :goto_0
    :try_start_2
    const-string p2, "data:"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_a

    new-instance p2, Ljava/net/URI;

    invoke-direct {p2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p2}, Lorg/xmlresolver/CatalogResolver;->e(Ljava/net/URI;Ljava/net/URI;)Lorg/xmlresolver/ResolvedResourceImpl;

    move-result-object p0

    return-object p0

    :cond_a
    iget-object p2, p0, Lorg/xmlresolver/CatalogResolver;->c:Lorg/xmlresolver/cache/ResourceCache;

    invoke-virtual {p2, p1}, Lorg/xmlresolver/cache/ResourceCache;->cacheURI(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_b

    new-instance p2, Ljava/net/URI;

    invoke-direct {p2, p1}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v2, "resolveURI: cached %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0, v6, v2, v4}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/xmlresolver/CatalogResolver;->c:Lorg/xmlresolver/cache/ResourceCache;

    invoke-virtual {v0, p2}, Lorg/xmlresolver/cache/ResourceCache;->cachedUri(Ljava/net/URI;)Lorg/xmlresolver/cache/CacheEntry;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/xmlresolver/CatalogResolver;->d(Ljava/lang/String;Ljava/net/URI;Lorg/xmlresolver/cache/CacheEntry;)Lorg/xmlresolver/ResolvedResourceImpl;

    move-result-object p0

    return-object p0

    :cond_b
    iget-object p2, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    new-array v0, v5, [Ljava/lang/Object;

    invoke-interface {p2, v6, v3, v0}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    return-object v7

    :catch_3
    move-exception p2

    iget-object v0, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v2, "I/O exception: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v8, v2, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_c

    goto :goto_1

    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :catch_4
    move-exception p2

    iget-object v0, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v2, "URI argument exception: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v8, v2, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_d

    goto :goto_1

    :cond_d
    throw p2

    :catch_5
    move-exception p2

    iget-object v0, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v2, "URI syntax exception: %s"

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, v8, v2, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v1, :cond_e

    :goto_1
    iget-object p0, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    new-array p1, v5, [Ljava/lang/Object;

    invoke-interface {p0, v6, v3, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v7

    :cond_e
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw p0

    :cond_f
    :goto_2
    iget-object p0, p0, Lorg/xmlresolver/CatalogResolver;->a:Lorg/xmlresolver/logging/ResolverLogger;

    new-array p1, v5, [Ljava/lang/Object;

    invoke-interface {p0, v6, v3, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v7
.end method
