.class public Lorg/xmlresolver/CatalogManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/xmlresolver/XMLCatalogResolver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xmlresolver/CatalogManager$b;
    }
.end annotation


# instance fields
.field protected catalogLoader:Lorg/xmlresolver/loaders/CatalogLoader;

.field protected final logger:Lorg/xmlresolver/logging/ResolverLogger;

.field protected final resolverConfiguration:Lorg/xmlresolver/ResolverConfiguration;


# direct methods
.method public constructor <init>(Lorg/xmlresolver/CatalogManager;Lorg/xmlresolver/ResolverConfiguration;)V
    .locals 0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iget-object p1, p1, Lorg/xmlresolver/CatalogManager;->catalogLoader:Lorg/xmlresolver/loaders/CatalogLoader;

    iput-object p1, p0, Lorg/xmlresolver/CatalogManager;->catalogLoader:Lorg/xmlresolver/loaders/CatalogLoader;

    .line 15
    iput-object p2, p0, Lorg/xmlresolver/CatalogManager;->resolverConfiguration:Lorg/xmlresolver/ResolverConfiguration;

    .line 16
    sget-object p1, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER:Lorg/xmlresolver/ResolverFeature;

    invoke-interface {p2, p1}, Lorg/xmlresolver/ResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xmlresolver/logging/ResolverLogger;

    iput-object p1, p0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    return-void
.end method

.method public constructor <init>(Lorg/xmlresolver/ResolverConfiguration;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/xmlresolver/CatalogManager;->resolverConfiguration:Lorg/xmlresolver/ResolverConfiguration;

    .line 3
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->CATALOG_LOADER_CLASS:Lorg/xmlresolver/ResolverFeature;

    invoke-interface {p1, v0}, Lorg/xmlresolver/ResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v2, ""

    .line 4
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    :cond_0
    invoke-virtual {v0}, Lorg/xmlresolver/ResolverFeature;->getDefaultValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    .line 6
    :cond_1
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 7
    const-class v3, Lorg/xmlresolver/ResolverConfiguration;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 8
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/xmlresolver/loaders/CatalogLoader;

    iput-object v0, p0, Lorg/xmlresolver/CatalogManager;->catalogLoader:Lorg/xmlresolver/loaders/CatalogLoader;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    sget-object v1, Lorg/xmlresolver/ResolverFeature;->PREFER_PUBLIC:Lorg/xmlresolver/ResolverFeature;

    invoke-interface {p1, v1}, Lorg/xmlresolver/ResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/xmlresolver/loaders/CatalogLoader;->setPreferPublic(Z)V

    .line 10
    iget-object v0, p0, Lorg/xmlresolver/CatalogManager;->catalogLoader:Lorg/xmlresolver/loaders/CatalogLoader;

    sget-object v1, Lorg/xmlresolver/ResolverFeature;->ARCHIVED_CATALOGS:Lorg/xmlresolver/ResolverFeature;

    invoke-interface {p1, v1}, Lorg/xmlresolver/ResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/xmlresolver/loaders/CatalogLoader;->setArchivedCatalogs(Z)V

    .line 11
    sget-object v0, Lorg/xmlresolver/ResolverFeature;->RESOLVER_LOGGER:Lorg/xmlresolver/ResolverFeature;

    invoke-interface {p1, v0}, Lorg/xmlresolver/ResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/xmlresolver/logging/ResolverLogger;

    iput-object p1, p0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    return-void

    :catch_0
    move-exception p0

    .line 12
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to instantiate catalog loader: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lorg/xmlresolver/utils/URIUtils;->isWindows()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lorg/xmlresolver/CatalogManager;->resolverConfiguration:Lorg/xmlresolver/ResolverConfiguration;

    sget-object v0, Lorg/xmlresolver/ResolverFeature;->FIX_WINDOWS_SYSTEM_IDENTIFIERS:Lorg/xmlresolver/ResolverFeature;

    invoke-interface {p0, v0}, Lorg/xmlresolver/ResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "\\"

    const-string v0, "/"

    invoke-virtual {p1, p0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/CatalogManager$b;
    .locals 3

    if-eqz p1, :cond_0

    invoke-static {p1}, Lorg/xmlresolver/utils/URIUtils;->normalizeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    const-string v0, "urn:publicid:"

    if-eqz p2, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2}, Lorg/xmlresolver/utils/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p1}, Lorg/xmlresolver/utils/PublicId;->decodeURN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_2

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "error"

    const-string v2, "urn:publicid: system identifier differs from public identifier; using public identifier"

    invoke-interface {p0, v0, v2, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    move-object p2, p1

    :goto_0
    move-object p1, v1

    :cond_3
    new-instance p0, Lorg/xmlresolver/CatalogManager$b;

    invoke-direct {p0, p1, p2, v1}, Lorg/xmlresolver/CatalogManager$b;-><init>(Ljava/lang/String;Ljava/lang/String;Lorg/xmlresolver/CatalogManager$a;)V

    return-object p0
.end method

.method public catalogs()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/net/URI;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lorg/xmlresolver/CatalogManager;->resolverConfiguration:Lorg/xmlresolver/ResolverConfiguration;

    sget-object v1, Lorg/xmlresolver/ResolverFeature;->CATALOG_FILES:Lorg/xmlresolver/ResolverFeature;

    invoke-interface {p0, v1}, Lorg/xmlresolver/ResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {}, Lorg/xmlresolver/utils/URIUtils;->cwd()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getResolverConfiguration()Lorg/xmlresolver/ResolverConfiguration;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/CatalogManager;->resolverConfiguration:Lorg/xmlresolver/ResolverConfiguration;

    return-object p0
.end method

.method public loadCatalog(Ljava/net/URI;)Lorg/xmlresolver/catalog/entry/EntryCatalog;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/xmlresolver/CatalogManager;->catalogLoader:Lorg/xmlresolver/loaders/CatalogLoader;

    invoke-interface {p0, p1}, Lorg/xmlresolver/loaders/CatalogLoader;->loadCatalog(Ljava/net/URI;)Lorg/xmlresolver/catalog/entry/EntryCatalog;

    move-result-object p0

    return-object p0
.end method

.method public loadCatalog(Ljava/net/URI;Lorg/xml/sax/InputSource;)Lorg/xmlresolver/catalog/entry/EntryCatalog;
    .locals 0

    .line 2
    iget-object p0, p0, Lorg/xmlresolver/CatalogManager;->catalogLoader:Lorg/xmlresolver/loaders/CatalogLoader;

    invoke-interface {p0, p1, p2}, Lorg/xmlresolver/loaders/CatalogLoader;->loadCatalog(Ljava/net/URI;Lorg/xml/sax/InputSource;)Lorg/xmlresolver/catalog/entry/EntryCatalog;

    move-result-object p0

    return-object p0
.end method

.method public lookupDoctype(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .locals 1

    invoke-virtual {p0, p2}, Lorg/xmlresolver/CatalogManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lorg/xmlresolver/CatalogManager;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/CatalogManager$b;

    move-result-object p2

    new-instance p3, Lorg/xmlresolver/catalog/query/QueryDoctype;

    invoke-static {p2}, Lorg/xmlresolver/CatalogManager$b;->a(Lorg/xmlresolver/CatalogManager$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lorg/xmlresolver/CatalogManager$b;->b(Lorg/xmlresolver/CatalogManager$b;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, v0, p2}, Lorg/xmlresolver/catalog/query/QueryDoctype;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lorg/xmlresolver/catalog/query/QueryCatalog;->search(Lorg/xmlresolver/CatalogManager;)Lorg/xmlresolver/catalog/query/QueryResult;

    move-result-object p0

    invoke-virtual {p0}, Lorg/xmlresolver/catalog/query/QueryResult;->uri()Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public lookupDocument()Ljava/net/URI;
    .locals 1

    new-instance v0, Lorg/xmlresolver/catalog/query/QueryDocument;

    invoke-direct {v0}, Lorg/xmlresolver/catalog/query/QueryDocument;-><init>()V

    invoke-virtual {v0, p0}, Lorg/xmlresolver/catalog/query/QueryCatalog;->search(Lorg/xmlresolver/CatalogManager;)Lorg/xmlresolver/catalog/query/QueryResult;

    move-result-object p0

    invoke-virtual {p0}, Lorg/xmlresolver/catalog/query/QueryResult;->uri()Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public lookupEntity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .locals 1

    invoke-virtual {p0, p2}, Lorg/xmlresolver/CatalogManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lorg/xmlresolver/CatalogManager;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/CatalogManager$b;

    move-result-object p2

    new-instance p3, Lorg/xmlresolver/catalog/query/QueryEntity;

    invoke-static {p2}, Lorg/xmlresolver/CatalogManager$b;->a(Lorg/xmlresolver/CatalogManager$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lorg/xmlresolver/CatalogManager$b;->b(Lorg/xmlresolver/CatalogManager$b;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, v0, p2}, Lorg/xmlresolver/catalog/query/QueryEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lorg/xmlresolver/catalog/query/QueryCatalog;->search(Lorg/xmlresolver/CatalogManager;)Lorg/xmlresolver/catalog/query/QueryResult;

    move-result-object p0

    invoke-virtual {p0}, Lorg/xmlresolver/catalog/query/QueryResult;->uri()Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .locals 1

    new-instance v0, Lorg/xmlresolver/catalog/query/QueryUri;

    invoke-direct {v0, p1, p2, p3}, Lorg/xmlresolver/catalog/query/QueryUri;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/xmlresolver/catalog/query/QueryCatalog;->search(Lorg/xmlresolver/CatalogManager;)Lorg/xmlresolver/catalog/query/QueryResult;

    move-result-object p0

    invoke-virtual {p0}, Lorg/xmlresolver/catalog/query/QueryResult;->uri()Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public lookupNotation(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .locals 1

    invoke-virtual {p0, p2}, Lorg/xmlresolver/CatalogManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2, p3}, Lorg/xmlresolver/CatalogManager;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/CatalogManager$b;

    move-result-object p2

    new-instance p3, Lorg/xmlresolver/catalog/query/QueryNotation;

    invoke-static {p2}, Lorg/xmlresolver/CatalogManager$b;->a(Lorg/xmlresolver/CatalogManager$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2}, Lorg/xmlresolver/CatalogManager$b;->b(Lorg/xmlresolver/CatalogManager$b;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p3, p1, v0, p2}, Lorg/xmlresolver/catalog/query/QueryNotation;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p0}, Lorg/xmlresolver/catalog/query/QueryCatalog;->search(Lorg/xmlresolver/CatalogManager;)Lorg/xmlresolver/catalog/query/QueryResult;

    move-result-object p0

    invoke-virtual {p0}, Lorg/xmlresolver/catalog/query/QueryResult;->uri()Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public lookupPublic(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .locals 1

    invoke-virtual {p0, p1}, Lorg/xmlresolver/CatalogManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lorg/xmlresolver/CatalogManager;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/CatalogManager$b;

    move-result-object p1

    new-instance p2, Lorg/xmlresolver/catalog/query/QueryPublic;

    invoke-static {p1}, Lorg/xmlresolver/CatalogManager$b;->a(Lorg/xmlresolver/CatalogManager$b;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lorg/xmlresolver/CatalogManager$b;->b(Lorg/xmlresolver/CatalogManager$b;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, v0, p1}, Lorg/xmlresolver/catalog/query/QueryPublic;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Lorg/xmlresolver/catalog/query/QueryCatalog;->search(Lorg/xmlresolver/CatalogManager;)Lorg/xmlresolver/catalog/query/QueryResult;

    move-result-object p0

    invoke-virtual {p0}, Lorg/xmlresolver/catalog/query/QueryResult;->uri()Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public lookupSystem(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    invoke-virtual {p0, p1}, Lorg/xmlresolver/CatalogManager;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/xmlresolver/CatalogManager;->b(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/CatalogManager$b;

    move-result-object v1

    invoke-static {v1}, Lorg/xmlresolver/CatalogManager$b;->a(Lorg/xmlresolver/CatalogManager$b;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Lorg/xmlresolver/catalog/query/QuerySystem;

    invoke-direct {v0, p1}, Lorg/xmlresolver/catalog/query/QuerySystem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lorg/xmlresolver/catalog/query/QueryCatalog;->search(Lorg/xmlresolver/CatalogManager;)Lorg/xmlresolver/catalog/query/QueryResult;

    move-result-object p0

    invoke-virtual {p0}, Lorg/xmlresolver/catalog/query/QueryResult;->uri()Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public lookupURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/xmlresolver/CatalogManager;->lookupNamespaceURI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p0

    return-object p0
.end method

.method public normalizedForComparison(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "classpath:/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "classpath:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    iget-object p0, p0, Lorg/xmlresolver/CatalogManager;->resolverConfiguration:Lorg/xmlresolver/ResolverConfiguration;

    sget-object v0, Lorg/xmlresolver/ResolverFeature;->MERGE_HTTPS:Lorg/xmlresolver/ResolverFeature;

    invoke-interface {p0, v0}, Lorg/xmlresolver/ResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "http:"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "https:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method
