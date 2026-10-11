.class public Lorg/xmlresolver/loaders/XmlLoader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xmlresolver/loaders/CatalogLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xmlresolver/loaders/XmlLoader$a;
    }
.end annotation


# static fields
.field public static c:Lorg/xmlresolver/Resolver;


# instance fields
.field public a:Z

.field public b:Z

.field protected final catalogMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/net/URI;",
            "Lorg/xmlresolver/catalog/entry/EntryCatalog;",
            ">;"
        }
    .end annotation
.end field

.field protected final config:Lorg/xmlresolver/ResolverConfiguration;

.field protected final logger:Lorg/xmlresolver/logging/ResolverLogger;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lorg/xmlresolver/ResolverConfiguration;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/xmlresolver/loaders/XmlLoader;->a:Z

    iput-boolean v0, p0, Lorg/xmlresolver/loaders/XmlLoader;->b:Z

    iput-object p1, p0, Lorg/xmlresolver/loaders/XmlLoader;->config:Lorg/xmlresolver/ResolverConfiguration;

    sget-object v0, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER:Lorg/xmlresolver/ResolverFeature;

    invoke-interface {p1, v0}, Lorg/xmlresolver/ResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xmlresolver/logging/ResolverLogger;

    iput-object p1, p0, Lorg/xmlresolver/loaders/XmlLoader;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/xmlresolver/loaders/XmlLoader;->catalogMap:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized getLoaderResolver()Lorg/xmlresolver/Resolver;
    .locals 4

    const-class v0, Lorg/xmlresolver/loaders/XmlLoader;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lorg/xmlresolver/loaders/XmlLoader;->c:Lorg/xmlresolver/Resolver;

    if-nez v1, :cond_0

    new-instance v1, Lorg/xmlresolver/XMLResolverConfiguration;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/xmlresolver/XMLResolverConfiguration;-><init>(Ljava/util/List;Ljava/util/List;)V

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->PREFER_PUBLIC:Lorg/xmlresolver/ResolverFeature;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lorg/xmlresolver/XMLResolverConfiguration;->setFeature(Lorg/xmlresolver/ResolverFeature;Ljava/lang/Object;)V

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->CATALOG_FILES:Lorg/xmlresolver/ResolverFeature;

    const-string v3, "classpath:/org/xmlresolver/catalog.xml"

    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/xmlresolver/XMLResolverConfiguration;->setFeature(Lorg/xmlresolver/ResolverFeature;Ljava/lang/Object;)V

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->CACHE_DIRECTORY:Lorg/xmlresolver/ResolverFeature;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lorg/xmlresolver/XMLResolverConfiguration;->setFeature(Lorg/xmlresolver/ResolverFeature;Ljava/lang/Object;)V

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->CACHE_UNDER_HOME:Lorg/xmlresolver/ResolverFeature;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Lorg/xmlresolver/XMLResolverConfiguration;->setFeature(Lorg/xmlresolver/ResolverFeature;Ljava/lang/Object;)V

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->ALLOW_CATALOG_PI:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v1, v2, v3}, Lorg/xmlresolver/XMLResolverConfiguration;->setFeature(Lorg/xmlresolver/ResolverFeature;Ljava/lang/Object;)V

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->CLASSPATH_CATALOGS:Lorg/xmlresolver/ResolverFeature;

    invoke-virtual {v1, v2, v3}, Lorg/xmlresolver/XMLResolverConfiguration;->setFeature(Lorg/xmlresolver/ResolverFeature;Ljava/lang/Object;)V

    new-instance v2, Lorg/xmlresolver/Resolver;

    invoke-direct {v2, v1}, Lorg/xmlresolver/Resolver;-><init>(Lorg/xmlresolver/XMLResolverConfiguration;)V

    sput-object v2, Lorg/xmlresolver/loaders/XmlLoader;->c:Lorg/xmlresolver/Resolver;

    :cond_0
    sget-object v1, Lorg/xmlresolver/loaders/XmlLoader;->c:Lorg/xmlresolver/Resolver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/net/URI;)Ljava/net/URI;
    .locals 11

    const-string v0, "error"

    invoke-virtual {p1}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "file"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return-object v2

    :cond_0
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    new-instance v5, Ljava/util/zip/ZipInputStream;

    invoke-virtual {v4}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v6, 0x1

    move-object v7, v2

    :goto_0
    const-string v8, "catalog.xml"

    const-string v9, "/"

    if-eqz v4, :cond_6

    if-eqz v6, :cond_2

    :try_start_1
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_1

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    :cond_1
    move v6, v3

    goto :goto_1

    :cond_2
    if-eqz v7, :cond_4

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    if-ltz v9, :cond_3

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    :cond_3
    move-object v7, v2

    :cond_4
    :goto_1
    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_5

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v4}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    move-result-object v4

    goto :goto_0

    :cond_6
    invoke-virtual {v5}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_0

    const-string v4, "/org/xmlresolver/catalog.xml"

    const-string v5, "/catalog.xml"

    if-eqz v7, :cond_8

    :try_start_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_7
    move-object v5, v2

    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    :cond_8
    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    goto :goto_3

    :cond_9
    move-object v5, v2

    :goto_3
    const-string v6, "org/xmlresolver/catalog.xml"

    invoke-virtual {v1, v6}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    goto :goto_4

    :cond_a
    move-object v4, v5

    :goto_4
    if-eqz v4, :cond_b

    new-instance v1, Ljava/net/URI;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jar:file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    return-object v1

    :cond_b
    iget-object v1, p0, Lorg/xmlresolver/loaders/XmlLoader;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find catalog in archived catalog: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v4, v5}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v1

    iget-object p0, p0, Lorg/xmlresolver/loaders/XmlLoader;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to load archived catalog: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ": "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-interface {p0, v0, p1, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_5
    return-object v2
.end method

.method public getArchivedCatalogs()Z
    .locals 0

    iget-boolean p0, p0, Lorg/xmlresolver/loaders/XmlLoader;->b:Z

    return p0
.end method

.method public getPreferPublic()Z
    .locals 0

    iget-boolean p0, p0, Lorg/xmlresolver/loaders/XmlLoader;->a:Z

    return p0
.end method

.method public loadCatalog(Ljava/net/URI;)Lorg/xmlresolver/catalog/entry/EntryCatalog;
    .locals 6

    const-string v0, "Failed to load catalog: %s: %s"

    .line 1
    iget-object v1, p0, Lorg/xmlresolver/loaders/XmlLoader;->catalogMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    iget-object p0, p0, Lorg/xmlresolver/loaders/XmlLoader;->catalogMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;

    return-object p0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 3
    :try_start_0
    new-instance v3, Lorg/xmlresolver/Resource;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/xmlresolver/Resource;-><init>(Ljava/lang/String;)V

    .line 4
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-virtual {v3}, Lorg/xmlresolver/Resource;->body()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v4, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 5
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0, p1, v4}, Lorg/xmlresolver/loaders/XmlLoader;->loadCatalog(Ljava/net/URI;Lorg/xml/sax/InputSource;)Lorg/xmlresolver/catalog/entry/EntryCatalog;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v3

    .line 7
    iget-object v4, p0, Lorg/xmlresolver/loaders/XmlLoader;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "error"

    invoke-interface {v4, v5, v0, v3}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 8
    iget-object v0, p0, Lorg/xmlresolver/loaders/XmlLoader;->catalogMap:Ljava/util/HashMap;

    new-instance v3, Lorg/xmlresolver/catalog/entry/EntryCatalog;

    iget-object v4, p0, Lorg/xmlresolver/loaders/XmlLoader;->config:Lorg/xmlresolver/ResolverConfiguration;

    invoke-direct {v3, v4, p1, v2, v1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Z)V

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object p0, p0, Lorg/xmlresolver/loaders/XmlLoader;->catalogMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;

    return-object p0

    :catch_1
    move-exception v3

    .line 10
    iget-object v4, p0, Lorg/xmlresolver/loaders/XmlLoader;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {p1, v3}, [Ljava/lang/Object;

    move-result-object v3

    const-string v5, "warning"

    invoke-interface {v4, v5, v0, v3}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lorg/xmlresolver/loaders/XmlLoader;->catalogMap:Ljava/util/HashMap;

    new-instance v3, Lorg/xmlresolver/catalog/entry/EntryCatalog;

    iget-object v4, p0, Lorg/xmlresolver/loaders/XmlLoader;->config:Lorg/xmlresolver/ResolverConfiguration;

    invoke-direct {v3, v4, p1, v2, v1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Z)V

    invoke-virtual {v0, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    iget-object p0, p0, Lorg/xmlresolver/loaders/XmlLoader;->catalogMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;

    return-object p0
.end method

.method public loadCatalog(Ljava/net/URI;Lorg/xml/sax/InputSource;)Lorg/xmlresolver/catalog/entry/EntryCatalog;
    .locals 7

    .line 13
    iget-object v0, p0, Lorg/xmlresolver/loaders/XmlLoader;->catalogMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object p0, p0, Lorg/xmlresolver/loaders/XmlLoader;->catalogMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;

    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->isAbsolute()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Lorg/xmlresolver/loaders/XmlLoader;->catalogMap:Ljava/util/HashMap;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 17
    :try_start_0
    new-instance v3, Lorg/xmlresolver/loaders/XmlLoader$a;

    iget-object v4, p0, Lorg/xmlresolver/loaders/XmlLoader;->config:Lorg/xmlresolver/ResolverConfiguration;

    iget-boolean v5, p0, Lorg/xmlresolver/loaders/XmlLoader;->a:Z

    invoke-direct {v3, v4, p1, v5}, Lorg/xmlresolver/loaders/XmlLoader$a;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Z)V

    .line 18
    iget-object v4, p0, Lorg/xmlresolver/loaders/XmlLoader;->config:Lorg/xmlresolver/ResolverConfiguration;

    sget-object v5, Lorg/xmlresolver/ResolverFeature;->XMLREADER_SUPPLIER:Lorg/xmlresolver/ResolverFeature;

    invoke-interface {v4, v5}, Lorg/xmlresolver/ResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/function/Supplier;

    if-eqz v4, :cond_1

    .line 19
    invoke-interface {v4}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xml/sax/XMLReader;

    .line 20
    invoke-interface {v4, v3}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 21
    invoke-interface {v4, p2}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    goto :goto_0

    .line 22
    :cond_1
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v4

    const/4 v5, 0x1

    .line 23
    invoke-virtual {v4, v5}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 24
    invoke-virtual {v4, v2}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 25
    invoke-virtual {v4, v2}, Ljavax/xml/parsers/SAXParserFactory;->setXIncludeAware(Z)V

    .line 26
    invoke-virtual {v4}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v4

    .line 27
    invoke-virtual {v4, p2, v3}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 28
    :goto_0
    invoke-virtual {v3}, Lorg/xmlresolver/loaders/XmlLoader$a;->a()Lorg/xmlresolver/catalog/entry/EntryCatalog;

    move-result-object p2

    .line 29
    iget-object v3, p0, Lorg/xmlresolver/loaders/XmlLoader;->catalogMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p2

    .line 30
    :try_start_1
    iget-object v3, p0, Lorg/xmlresolver/loaders/XmlLoader;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v4, "error"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failed to load catalog: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-array v5, v2, [Ljava/lang/Object;

    invoke-interface {v3, v4, p2, v5}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iget-object p2, p0, Lorg/xmlresolver/loaders/XmlLoader;->catalogMap:Ljava/util/HashMap;

    new-instance v3, Lorg/xmlresolver/catalog/entry/EntryCatalog;

    iget-object v4, p0, Lorg/xmlresolver/loaders/XmlLoader;->config:Lorg/xmlresolver/ResolverConfiguration;

    invoke-direct {v3, v4, p1, v1, v2}, Lorg/xmlresolver/catalog/entry/EntryCatalog;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Z)V

    invoke-virtual {p2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    iget-boolean p2, p0, Lorg/xmlresolver/loaders/XmlLoader;->b:Z

    if-eqz p2, :cond_2

    .line 33
    invoke-virtual {p0, p1}, Lorg/xmlresolver/loaders/XmlLoader;->a(Ljava/net/URI;)Ljava/net/URI;

    move-result-object v1

    .line 34
    :cond_2
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_3

    .line 35
    invoke-virtual {p0, v1}, Lorg/xmlresolver/loaders/XmlLoader;->loadCatalog(Ljava/net/URI;)Lorg/xmlresolver/catalog/entry/EntryCatalog;

    move-result-object p2

    .line 36
    iget-object v0, p0, Lorg/xmlresolver/loaders/XmlLoader;->catalogMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    :cond_3
    iget-object p0, p0, Lorg/xmlresolver/loaders/XmlLoader;->catalogMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;

    return-object p0

    .line 38
    :goto_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    .line 39
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Catalog URIs must be absolute: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setArchivedCatalogs(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/xmlresolver/loaders/XmlLoader;->b:Z

    return-void
.end method

.method public setPreferPublic(Z)V
    .locals 0

    iput-boolean p1, p0, Lorg/xmlresolver/loaders/XmlLoader;->a:Z

    return-void
.end method
