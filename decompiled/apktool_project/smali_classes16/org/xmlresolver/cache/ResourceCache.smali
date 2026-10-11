.class public Lorg/xmlresolver/cache/ResourceCache;
.super Lorg/xmlresolver/CatalogManager;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/xmlresolver/cache/ResourceCache$c;,
        Lorg/xmlresolver/cache/ResourceCache$a;,
        Lorg/xmlresolver/cache/ResourceCache$b;
    }
.end annotation


# static fields
.field public static final cacheSize:J = 0x3e8L

.field public static final cacheSpace:J = 0x9c4000L

.field public static final defaultPattern:Ljava/lang/String; = ".*"

.field public static final deleteWait:J = 0x93a80L

.field public static final excludedPatterns:[Ljava/lang/String;

.field public static final maxAge:J = -0x1L


# instance fields
.field public a:Z

.field public b:Ljava/io/File;

.field public c:Ljava/io/File;

.field public d:Ljava/io/File;

.field public e:Ljava/io/File;

.field public final f:Lorg/xmlresolver/ResolverConfiguration;

.field public final g:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/xmlresolver/cache/CacheInfo;",
            ">;"
        }
    .end annotation
.end field

.field public h:Lorg/xmlresolver/cache/CacheParser;

.field public i:Lorg/xmlresolver/cache/CacheEntryCatalog;

.field public j:Lorg/xmlresolver/cache/CacheInfo;

.field public k:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const-string v0, "^classpath:"

    const-string v1, "^path:"

    const-string v2, "^file:"

    const-string v3, "^jar:file:"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/xmlresolver/cache/ResourceCache;->excludedPatterns:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/xmlresolver/ResolverConfiguration;)V
    .locals 2

    invoke-direct {p0, p1}, Lorg/xmlresolver/CatalogManager;-><init>(Lorg/xmlresolver/ResolverConfiguration;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/xmlresolver/cache/ResourceCache;->a:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    iput-object v0, p0, Lorg/xmlresolver/cache/ResourceCache;->c:Ljava/io/File;

    iput-object v0, p0, Lorg/xmlresolver/cache/ResourceCache;->d:Ljava/io/File;

    iput-object v0, p0, Lorg/xmlresolver/cache/ResourceCache;->e:Ljava/io/File;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/xmlresolver/cache/ResourceCache;->g:Ljava/util/ArrayList;

    iput-object v0, p0, Lorg/xmlresolver/cache/ResourceCache;->h:Lorg/xmlresolver/cache/CacheParser;

    iput-object v0, p0, Lorg/xmlresolver/cache/ResourceCache;->i:Lorg/xmlresolver/cache/CacheEntryCatalog;

    iput-object v0, p0, Lorg/xmlresolver/cache/ResourceCache;->j:Lorg/xmlresolver/cache/CacheInfo;

    iput-object v0, p0, Lorg/xmlresolver/cache/ResourceCache;->k:Ljava/lang/String;

    iput-object p1, p0, Lorg/xmlresolver/cache/ResourceCache;->f:Lorg/xmlresolver/ResolverConfiguration;

    invoke-virtual {p0}, Lorg/xmlresolver/cache/ResourceCache;->reset()V

    return-void
.end method

.method public static synthetic c(Lorg/xmlresolver/cache/ResourceCache;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    return-object p0
.end method

.method public static synthetic d(Lorg/xmlresolver/cache/ResourceCache;)Lorg/xmlresolver/logging/ResolverLogger;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    return-object p0
.end method

.method public static synthetic e(Lorg/xmlresolver/cache/ResourceCache;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lorg/xmlresolver/cache/ResourceCache;->k:Ljava/lang/String;

    return-object p1
.end method

.method public static synthetic f(Lorg/xmlresolver/cache/ResourceCache;)Lorg/xmlresolver/cache/CacheParser;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/cache/ResourceCache;->h:Lorg/xmlresolver/cache/CacheParser;

    return-object p0
.end method

.method public static synthetic g(Lorg/xmlresolver/cache/ResourceCache;Lorg/xmlresolver/cache/CacheInfo;)Lorg/xmlresolver/cache/CacheInfo;
    .locals 0

    iput-object p1, p0, Lorg/xmlresolver/cache/ResourceCache;->j:Lorg/xmlresolver/cache/CacheInfo;

    return-object p1
.end method

.method public static synthetic h(Lorg/xmlresolver/cache/ResourceCache;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/cache/ResourceCache;->g:Ljava/util/ArrayList;

    return-object p0
.end method

.method public static synthetic i(Lorg/xmlresolver/cache/ResourceCache;)Lorg/xmlresolver/logging/ResolverLogger;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    return-object p0
.end method

.method public static synthetic j(Lorg/xmlresolver/cache/ResourceCache;)Lorg/xmlresolver/logging/ResolverLogger;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    return-object p0
.end method

.method public static synthetic k(Lorg/xmlresolver/cache/ResourceCache;)Lorg/xmlresolver/logging/ResolverLogger;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    return-object p0
.end method

.method public static synthetic l(Lorg/xmlresolver/cache/ResourceCache;)Lorg/xmlresolver/logging/ResolverLogger;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    return-object p0
.end method

.method public static synthetic m(Lorg/xmlresolver/cache/ResourceCache;)Lorg/xmlresolver/cache/CacheEntryCatalog;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/cache/ResourceCache;->i:Lorg/xmlresolver/cache/CacheEntryCatalog;

    return-object p0
.end method


# virtual methods
.method public addCacheInfo(Ljava/lang/String;Z)Lorg/xmlresolver/cache/CacheInfo;
    .locals 11

    const-wide/32 v3, 0x93a80

    const-wide/16 v5, 0x3e8

    const-wide/32 v7, 0x9c4000

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    .line 1
    invoke-virtual/range {v0 .. v10}, Lorg/xmlresolver/cache/ResourceCache;->addCacheInfo(Ljava/lang/String;ZJJJJ)Lorg/xmlresolver/cache/CacheInfo;

    move-result-object p0

    return-object p0
.end method

.method public addCacheInfo(Ljava/lang/String;ZJJJJ)Lorg/xmlresolver/cache/CacheInfo;
    .locals 13

    move-object v0, p0

    .line 2
    new-instance v12, Lorg/xmlresolver/cache/CacheInfo;

    move-object v1, v12

    move-object v2, p1

    move v3, p2

    move-wide/from16 v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-direct/range {v1 .. v11}, Lorg/xmlresolver/cache/CacheInfo;-><init>(Ljava/lang/String;ZJJJJ)V

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p0, p1, v1}, Lorg/xmlresolver/cache/ResourceCache;->w(Ljava/lang/String;Z)V

    .line 4
    iget-object v1, v0, Lorg/xmlresolver/cache/ResourceCache;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {p0}, Lorg/xmlresolver/cache/ResourceCache;->y()V

    return-object v12
.end method

.method public cacheURI(Ljava/lang/String;)Z
    .locals 4

    invoke-virtual {p0}, Lorg/xmlresolver/cache/ResourceCache;->u()V

    iget-object v0, p0, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lorg/xmlresolver/utils/URIUtils;->cwd()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/net/URI;->resolve(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    iget-object v2, p0, Lorg/xmlresolver/cache/ResourceCache;->g:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lorg/xmlresolver/cache/ResourceCache;->g:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xmlresolver/cache/CacheInfo;

    iget-object v3, v2, Lorg/xmlresolver/cache/CacheInfo;->uriPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v3, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    iget-object v0, p0, Lorg/xmlresolver/cache/ResourceCache;->j:Lorg/xmlresolver/cache/CacheInfo;

    :cond_3
    iget-object p0, p0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    iget-boolean v1, v0, Lorg/xmlresolver/cache/CacheInfo;->cache:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    filled-new-array {v1, p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v1, "cache"

    const-string v2, "Cache cacheURI: %s (%s)"

    invoke-interface {p0, v1, v2, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-boolean p0, v0, Lorg/xmlresolver/cache/CacheInfo;->cache:Z

    return p0
.end method

.method public cachedNamespaceUri(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/cache/CacheEntry;
    .locals 3

    invoke-virtual {p0, p1, p2, p3}, Lorg/xmlresolver/cache/ResourceCache;->r(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/cache/CacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lorg/xmlresolver/cache/CacheEntry;->expired:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xmlresolver/cache/ResourceCache;->cacheURI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Lorg/xmlresolver/ResourceConnection;

    iget-object v2, p0, Lorg/xmlresolver/CatalogManager;->resolverConfiguration:Lorg/xmlresolver/ResolverConfiguration;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/xmlresolver/ResourceConnection;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/xmlresolver/ResourceConnection;->getStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v1}, Lorg/xmlresolver/ResourceConnection;->getStatusCode()I

    move-result p1

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_1

    invoke-virtual {p0, v1, p2, p3}, Lorg/xmlresolver/cache/ResourceCache;->n(Lorg/xmlresolver/ResourceConnection;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/cache/CacheEntry;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "error"

    const-string p3, "Apache HTTP library classes apparently unavailable, not attempting to cache"

    invoke-interface {p0, p2, p3, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public cachedSystem(Ljava/net/URI;Ljava/lang/String;)Lorg/xmlresolver/cache/CacheEntry;
    .locals 3

    invoke-virtual {p0, p1}, Lorg/xmlresolver/cache/ResourceCache;->s(Ljava/net/URI;)Lorg/xmlresolver/cache/CacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v1, v0, Lorg/xmlresolver/cache/CacheEntry;->expired:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/xmlresolver/cache/ResourceCache;->cacheURI(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :try_start_0
    new-instance v1, Lorg/xmlresolver/ResourceConnection;

    iget-object v2, p0, Lorg/xmlresolver/CatalogManager;->resolverConfiguration:Lorg/xmlresolver/ResolverConfiguration;

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, v2, p1}, Lorg/xmlresolver/ResourceConnection;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/lang/String;)V

    invoke-virtual {v1}, Lorg/xmlresolver/ResourceConnection;->getStatusCode()I

    move-result p1

    const/16 v2, 0xc8

    if-ne p1, v2, :cond_1

    invoke-virtual {v1}, Lorg/xmlresolver/ResourceConnection;->getStream()Ljava/io/InputStream;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, v1, p2}, Lorg/xmlresolver/cache/ResourceCache;->o(Lorg/xmlresolver/ResourceConnection;Ljava/lang/String;)Lorg/xmlresolver/cache/CacheEntry;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, p0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "error"

    const-string v0, "Apache HTTP library classes apparently unavailable, not attempting to cache"

    invoke-interface {p0, p2, v0, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0

    :cond_1
    :goto_0
    return-object v0
.end method

.method public cachedUri(Ljava/net/URI;)Lorg/xmlresolver/cache/CacheEntry;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lorg/xmlresolver/cache/ResourceCache;->cachedNamespaceUri(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/cache/CacheEntry;

    move-result-object p0

    return-object p0
.end method

.method public directory()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public entries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/xmlresolver/cache/CacheEntry;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lorg/xmlresolver/cache/ResourceCache;->u()V

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/xmlresolver/cache/ResourceCache;->i:Lorg/xmlresolver/cache/CacheEntryCatalog;

    iget-object p0, p0, Lorg/xmlresolver/cache/CacheEntryCatalog;->cached:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public expired(Ljava/net/URI;)Z
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const-string v3, "xmlresolver.offline"

    invoke-static {v3}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    const-string v4, "false"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "0"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "no"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    return v2

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lorg/xmlresolver/cache/ResourceCache;->u()V

    iget-object v3, v0, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    const/4 v4, 0x1

    if-nez v3, :cond_2

    return v4

    :cond_2
    iget-object v3, v0, Lorg/xmlresolver/cache/ResourceCache;->i:Lorg/xmlresolver/cache/CacheEntryCatalog;

    iget-object v3, v3, Lorg/xmlresolver/cache/CacheEntryCatalog;->cached:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/xmlresolver/cache/CacheEntry;

    iget-object v7, v5, Lorg/xmlresolver/cache/CacheEntry;->file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    :goto_0
    if-nez v5, :cond_5

    return v4

    :cond_5
    move v3, v2

    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_7

    iget-object v7, v0, Lorg/xmlresolver/cache/ResourceCache;->g:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v3, v7, :cond_7

    iget-object v7, v0, Lorg/xmlresolver/cache/ResourceCache;->g:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/xmlresolver/cache/CacheInfo;

    iget-object v8, v7, Lorg/xmlresolver/cache/CacheInfo;->uriPattern:Ljava/util/regex/Pattern;

    iget-object v9, v5, Lorg/xmlresolver/cache/CacheEntry;->uri:Ljava/net/URI;

    invoke-virtual {v9}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v1, v7

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    if-nez v1, :cond_8

    iget-object v1, v0, Lorg/xmlresolver/cache/ResourceCache;->j:Lorg/xmlresolver/cache/CacheInfo;

    :cond_8
    iget-boolean v3, v1, Lorg/xmlresolver/cache/CacheInfo;->cache:Z

    if-nez v3, :cond_9

    new-instance v2, Lorg/xmlresolver/cache/CacheInfo;

    iget-object v8, v1, Lorg/xmlresolver/cache/CacheInfo;->pattern:Ljava/lang/String;

    const/4 v9, 0x0

    const-wide/32 v10, 0x93a80

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const-wide/16 v16, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v17}, Lorg/xmlresolver/cache/CacheInfo;-><init>(Ljava/lang/String;ZJJJJ)V

    invoke-virtual {v0, v2}, Lorg/xmlresolver/cache/ResourceCache;->t(Lorg/xmlresolver/cache/CacheInfo;)V

    return v4

    :cond_9
    iget-object v3, v0, Lorg/xmlresolver/cache/ResourceCache;->i:Lorg/xmlresolver/cache/CacheEntryCatalog;

    iget-object v3, v3, Lorg/xmlresolver/cache/CacheEntryCatalog;->cached:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide/16 v7, 0x0

    move v9, v2

    move-wide v10, v7

    :cond_a
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/xmlresolver/cache/CacheEntry;

    iget-object v13, v12, Lorg/xmlresolver/cache/CacheEntry;->entry:Lorg/xmlresolver/catalog/entry/Entry;

    invoke-virtual {v13}, Lorg/xmlresolver/catalog/entry/Entry;->getType()Lorg/xmlresolver/catalog/entry/Entry$Type;

    move-result-object v13

    sget-object v14, Lorg/xmlresolver/catalog/entry/Entry$Type;->PUBLIC:Lorg/xmlresolver/catalog/entry/Entry$Type;

    if-eq v13, v14, :cond_a

    iget-boolean v13, v12, Lorg/xmlresolver/cache/CacheEntry;->expired:Z

    if-eqz v13, :cond_b

    goto :goto_2

    :cond_b
    iget-object v13, v1, Lorg/xmlresolver/cache/CacheInfo;->uriPattern:Ljava/util/regex/Pattern;

    iget-object v14, v12, Lorg/xmlresolver/cache/CacheEntry;->uri:Ljava/net/URI;

    invoke-virtual {v14}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_a

    add-int/lit8 v9, v9, 0x1

    iget-object v12, v12, Lorg/xmlresolver/cache/CacheEntry;->file:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v12

    add-long/2addr v10, v12

    goto :goto_2

    :cond_c
    int-to-long v12, v9

    iget-wide v14, v1, Lorg/xmlresolver/cache/CacheInfo;->cacheSize:J

    cmp-long v3, v12, v14

    const-string v9, "cache"

    if-gtz v3, :cond_d

    iget-wide v12, v1, Lorg/xmlresolver/cache/CacheInfo;->cacheSpace:J

    cmp-long v3, v10, v12

    if-lez v3, :cond_e

    :cond_d
    iget-object v3, v0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v10, "Too many cache entries, or cache size too large: expiring oldest entries"

    new-array v11, v2, [Ljava/lang/Object;

    invoke-interface {v3, v9, v10, v11}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Lorg/xmlresolver/cache/ResourceCache;->t(Lorg/xmlresolver/cache/CacheInfo;)V

    :cond_e
    iget-boolean v3, v5, Lorg/xmlresolver/cache/CacheEntry;->expired:Z

    if-eqz v3, :cond_f

    return v4

    :cond_f
    iget-wide v10, v5, Lorg/xmlresolver/cache/CacheEntry;->time:J

    invoke-virtual {v5}, Lorg/xmlresolver/cache/CacheEntry;->etag()Ljava/lang/String;

    move-result-object v3

    new-instance v12, Lorg/xmlresolver/ResourceConnection;

    iget-object v13, v0, Lorg/xmlresolver/CatalogManager;->resolverConfiguration:Lorg/xmlresolver/ResolverConfiguration;

    iget-object v14, v5, Lorg/xmlresolver/cache/CacheEntry;->uri:Ljava/net/URI;

    invoke-virtual {v14}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v13, v14, v4}, Lorg/xmlresolver/ResourceConnection;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/lang/String;Z)V

    invoke-virtual {v12}, Lorg/xmlresolver/ResourceConnection;->close()V

    invoke-virtual {v12}, Lorg/xmlresolver/ResourceConnection;->getEtag()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12}, Lorg/xmlresolver/ResourceConnection;->getLastModified()J

    move-result-wide v14

    const-string v6, ""

    invoke-virtual {v6, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    const/4 v6, 0x0

    goto :goto_3

    :cond_10
    move-object v6, v13

    :goto_3
    cmp-long v13, v14, v7

    if-gez v13, :cond_14

    if-eqz v6, :cond_11

    if-nez v3, :cond_14

    :cond_11
    iget-wide v13, v1, Lorg/xmlresolver/cache/CacheInfo;->maxAge:J

    cmp-long v1, v13, v7

    if-ltz v1, :cond_13

    new-instance v15, Ljava/util/Date;

    invoke-direct {v15}, Ljava/util/Date;-><init>()V

    invoke-virtual {v15}, Ljava/util/Date;->getTime()J

    move-result-wide v15

    const-wide/16 v17, 0x3e8

    mul-long v13, v13, v17

    sub-long/2addr v15, v13

    if-eqz v1, :cond_12

    cmp-long v1, v10, v15

    if-gez v1, :cond_13

    :cond_12
    return v4

    :cond_13
    invoke-virtual {v12}, Lorg/xmlresolver/ResourceConnection;->getDate()J

    move-result-wide v14

    :cond_14
    invoke-virtual {v12}, Lorg/xmlresolver/ResourceConnection;->getStatusCode()I

    move-result v1

    const/16 v13, 0xc8

    if-eq v1, v13, :cond_15

    iget-object v0, v0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, v5, Lorg/xmlresolver/cache/CacheEntry;->uri:Ljava/net/URI;

    invoke-virtual {v12}, Lorg/xmlresolver/ResourceConnection;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v1, v3}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Not expired: %s (HTTP %d)"

    invoke-interface {v0, v9, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_15
    if-eqz v6, :cond_16

    if-eqz v3, :cond_16

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_16

    move v1, v4

    goto :goto_4

    :cond_16
    move v1, v2

    :goto_4
    cmp-long v3, v14, v7

    if-gez v3, :cond_18

    if-eqz v1, :cond_17

    iget-object v0, v0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, v5, Lorg/xmlresolver/cache/CacheEntry;->uri:Ljava/net/URI;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "Expired: %s (no last-modified header, etags differ)"

    invoke-interface {v0, v9, v2, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v4

    :cond_17
    iget-object v0, v0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, v5, Lorg/xmlresolver/cache/CacheEntry;->uri:Ljava/net/URI;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Not expired: %s (no last-modified header, etags identical)"

    invoke-interface {v0, v9, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_18
    cmp-long v3, v14, v10

    if-gtz v3, :cond_1a

    if-eqz v1, :cond_19

    goto :goto_5

    :cond_19
    iget-object v0, v0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v1, v5, Lorg/xmlresolver/cache/CacheEntry;->uri:Ljava/net/URI;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v3, "Not expired: %s"

    invoke-interface {v0, v9, v3, v1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return v2

    :cond_1a
    :goto_5
    iget-object v1, v0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v2, v5, Lorg/xmlresolver/cache/CacheEntry;->uri:Ljava/net/URI;

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    const-string v3, "Expired: %s"

    invoke-interface {v1, v9, v3, v2}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, v0, Lorg/xmlresolver/cache/ResourceCache;->i:Lorg/xmlresolver/cache/CacheEntryCatalog;

    invoke-virtual {v0, v5}, Lorg/xmlresolver/cache/CacheEntryCatalog;->expire(Lorg/xmlresolver/cache/CacheEntry;)V

    return v4
.end method

.method public getCacheInfo(Ljava/lang/String;)Lorg/xmlresolver/cache/CacheInfo;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    iget-object p0, p0, Lorg/xmlresolver/cache/ResourceCache;->g:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xmlresolver/cache/CacheInfo;

    iget-object v2, v1, Lorg/xmlresolver/cache/CacheInfo;->pattern:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method public getCacheInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/xmlresolver/cache/CacheInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lorg/xmlresolver/cache/ResourceCache;->g:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getDefaultCacheInfo()Lorg/xmlresolver/cache/CacheInfo;
    .locals 0

    iget-object p0, p0, Lorg/xmlresolver/cache/ResourceCache;->j:Lorg/xmlresolver/cache/CacheInfo;

    return-object p0
.end method

.method public lookupNamespaceURI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    invoke-virtual {p0}, Lorg/xmlresolver/cache/ResourceCache;->u()V

    iget-object v0, p0, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/xmlresolver/CatalogManager;->lookupNamespaceURI(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xmlresolver/cache/ResourceCache;->expired(Ljava/net/URI;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    return-object v1
.end method

.method public lookupPublic(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    invoke-virtual {p0}, Lorg/xmlresolver/cache/ResourceCache;->u()V

    iget-object v0, p0, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/xmlresolver/CatalogManager;->lookupPublic(Ljava/lang/String;Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xmlresolver/cache/ResourceCache;->expired(Ljava/net/URI;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    return-object v1
.end method

.method public lookupSystem(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    invoke-virtual {p0}, Lorg/xmlresolver/cache/ResourceCache;->u()V

    iget-object v0, p0, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lorg/xmlresolver/CatalogManager;->lookupSystem(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xmlresolver/cache/ResourceCache;->expired(Ljava/net/URI;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    return-object v1
.end method

.method public lookupURI(Ljava/lang/String;)Ljava/net/URI;
    .locals 2

    invoke-virtual {p0}, Lorg/xmlresolver/cache/ResourceCache;->u()V

    iget-object v0, p0, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-super {p0, p1}, Lorg/xmlresolver/CatalogManager;->lookupURI(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/xmlresolver/cache/ResourceCache;->expired(Ljava/net/URI;)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, p1

    :goto_0
    return-object v1
.end method

.method public final n(Lorg/xmlresolver/ResourceConnection;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/cache/CacheEntry;
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    const-string v11, ""

    invoke-virtual/range {p0 .. p0}, Lorg/xmlresolver/cache/ResourceCache;->u()V

    iget-object v1, v0, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-string v14, "cache"

    if-nez v1, :cond_0

    iget-object v0, v0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v1, "Attempting to cache URI, but no cache is available"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-interface {v0, v14, v1, v2}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v13

    :cond_0
    new-instance v15, Lorg/xmlresolver/cache/ResourceCache$b;

    invoke-direct {v15, v0}, Lorg/xmlresolver/cache/ResourceCache$b;-><init>(Lorg/xmlresolver/cache/ResourceCache;)V

    :try_start_0
    invoke-virtual {v15}, Lorg/xmlresolver/cache/ResourceCache$b;->a()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    invoke-virtual/range {p1 .. p1}, Lorg/xmlresolver/ResourceConnection;->getUri()Ljava/net/URI;

    move-result-object v7

    if-nez v9, :cond_1

    if-nez v10, :cond_1

    iget-object v1, v0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v2, "Caching resource for uri: %s"

    filled-new-array {v7}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v14, v2, v3}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    iget-object v1, v0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v2, "Caching resource for namespace: %s (nature: %s, purpose: %s)"

    filled-new-array {v7, v9, v10}, [Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v14, v2, v3}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/xmlresolver/ResourceConnection;->getContentType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lorg/xmlresolver/ResourceConnection;->getStream()Ljava/io/InputStream;

    move-result-object v1

    :try_start_1
    invoke-virtual {v0, v7}, Lorg/xmlresolver/cache/ResourceCache;->p(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v2

    new-instance v6, Ljava/io/File;

    iget-object v3, v0, Lorg/xmlresolver/cache/ResourceCache;->d:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".xml"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v6, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v5, Ljava/io/File;

    iget-object v3, v0, Lorg/xmlresolver/cache/ResourceCache;->c:Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Lorg/xmlresolver/cache/ResourceCache;->v(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v5, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v0, v1, v5}, Lorg/xmlresolver/cache/ResourceCache;->x(Ljava/io/InputStream;Ljava/io/File;)V

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    iget-object v1, v0, Lorg/xmlresolver/cache/ResourceCache;->i:Lorg/xmlresolver/cache/CacheEntryCatalog;

    invoke-virtual {v6}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v16

    invoke-virtual {v7}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v17
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-wide/from16 v18, v2

    move-object/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v16, v5

    move-object/from16 v5, p2

    move-object v13, v6

    move-object/from16 v6, p3

    move-object v9, v7

    move-object v12, v8

    move-wide/from16 v7, v18

    :try_start_3
    invoke-virtual/range {v1 .. v8}, Lorg/xmlresolver/cache/CacheEntryCatalog;->addUri(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlresolver/catalog/entry/EntryUri;

    move-result-object v1

    const-string v2, "contentType"

    invoke-virtual {v1, v2, v12}, Lorg/xmlresolver/catalog/entry/Entry;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "time"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v4, v18

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/xmlresolver/catalog/entry/Entry;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/xmlresolver/ResourceConnection;->getRedirect()Ljava/net/URI;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual/range {p1 .. p1}, Lorg/xmlresolver/ResourceConnection;->getRedirect()Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_3

    const-string v3, "redir"

    invoke-virtual {v1, v3, v2}, Lorg/xmlresolver/catalog/entry/Entry;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lorg/xmlresolver/ResourceConnection;->getEtag()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    const-string v3, "etag"

    invoke-virtual {v1, v3, v2}, Lorg/xmlresolver/catalog/entry/Entry;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    const-string v2, "filesize"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/xmlresolver/catalog/entry/Entry;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "filemodified"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->lastModified()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/xmlresolver/catalog/entry/Entry;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lorg/xmlresolver/cache/ResourceCache;->i:Lorg/xmlresolver/cache/CacheEntryCatalog;

    invoke-virtual {v2, v1, v13}, Lorg/xmlresolver/cache/CacheEntryCatalog;->writeCacheEntry(Lorg/xmlresolver/catalog/entry/Entry;Ljava/io/File;)V
    :try_end_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catch_0
    move-object/from16 v16, v5

    move-object v9, v7

    :catch_1
    move-object/from16 v13, v16

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_2
    move-object v9, v7

    const/4 v13, 0x0

    :goto_2
    :try_start_4
    iget-object v1, v0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v2, "error"

    const-string v3, "Failed to cache resource \'%s\' to \'%s\'"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v9, v4, v5

    invoke-virtual {v13}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v4, v6

    invoke-interface {v1, v2, v3, v4}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    :catch_3
    move-object v9, v7

    :catch_4
    iget-object v1, v0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v2, "Failed to obtain SHA-256 digest?"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v14, v2, v3}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_3
    invoke-virtual {v15}, Lorg/xmlresolver/cache/ResourceCache$b;->c()V

    move-object/from16 v1, p2

    move-object v2, v9

    invoke-virtual {v0, v2, v1, v10}, Lorg/xmlresolver/cache/ResourceCache;->r(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/cache/CacheEntry;

    move-result-object v0

    return-object v0

    :goto_4
    invoke-virtual {v15}, Lorg/xmlresolver/cache/ResourceCache$b;->c()V

    throw v0

    :catch_5
    move-object v0, v13

    return-object v0
.end method

.method public final declared-synchronized o(Lorg/xmlresolver/ResourceConnection;Ljava/lang/String;)Lorg/xmlresolver/cache/CacheEntry;
    .locals 20

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lorg/xmlresolver/cache/ResourceCache;->u()V

    iget-object v0, v1, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v0, :cond_0

    iget-object v0, v1, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v4, "cache"

    const-string v5, "Attempting to cache system ID, but no cache is available"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v4, v5, v2}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit p0

    return-object v3

    :cond_0
    :try_start_1
    new-instance v4, Lorg/xmlresolver/cache/ResourceCache$b;

    invoke-direct {v4, v1}, Lorg/xmlresolver/cache/ResourceCache$b;-><init>(Lorg/xmlresolver/cache/ResourceCache;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v0, 0x1

    :try_start_2
    invoke-virtual {v4}, Lorg/xmlresolver/cache/ResourceCache$b;->a()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-virtual/range {p1 .. p1}, Lorg/xmlresolver/ResourceConnection;->getUri()Ljava/net/URI;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lorg/xmlresolver/ResourceConnection;->getContentType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lorg/xmlresolver/ResourceConnection;->getStream()Ljava/io/InputStream;

    move-result-object v7

    iget-object v8, v1, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v9, "cache"

    const-string v10, "Caching systemId: %s"

    filled-new-array {v5}, [Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v8, v9, v10, v11}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-virtual {v1, v5}, Lorg/xmlresolver/cache/ResourceCache;->p(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/io/File;

    iget-object v10, v1, Lorg/xmlresolver/cache/ResourceCache;->d:Ljava/io/File;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ".xml"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v9, v10, v11}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v10, Ljava/io/File;

    iget-object v11, v1, Lorg/xmlresolver/cache/ResourceCache;->c:Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5, v6}, Lorg/xmlresolver/cache/ResourceCache;->v(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v10, v11, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {v1, v7, v10}, Lorg/xmlresolver/cache/ResourceCache;->x(Ljava/io/InputStream;Ljava/io/File;)V

    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    invoke-virtual {v8}, Ljava/util/Date;->getTime()J

    move-result-wide v14

    iget-object v12, v1, Lorg/xmlresolver/cache/ResourceCache;->i:Lorg/xmlresolver/cache/CacheEntryCatalog;

    invoke-virtual {v9}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v13

    invoke-virtual {v5}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v8

    move-wide/from16 v18, v14

    move-object v14, v8

    move-object v15, v7

    move-wide/from16 v16, v18

    invoke-virtual/range {v12 .. v17}, Lorg/xmlresolver/cache/CacheEntryCatalog;->addSystem(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlresolver/catalog/entry/EntrySystem;

    move-result-object v8

    const-string v11, "contentType"

    invoke-virtual {v8, v11, v6}, Lorg/xmlresolver/catalog/entry/Entry;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "time"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v14, v18

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Lorg/xmlresolver/catalog/entry/Entry;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/xmlresolver/ResourceConnection;->getRedirect()Ljava/net/URI;

    move-result-object v11

    if-eqz v11, :cond_1

    invoke-virtual/range {p1 .. p1}, Lorg/xmlresolver/ResourceConnection;->getRedirect()Ljava/net/URI;

    move-result-object v11

    invoke-virtual {v11}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_0

    :cond_1
    move-object v11, v3

    :goto_0
    if-eqz v11, :cond_2

    const-string v12, "redir"

    invoke-virtual {v8, v12, v11}, Lorg/xmlresolver/catalog/entry/Entry;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/xmlresolver/ResourceConnection;->getEtag()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    const-string v12, "etag"

    invoke-virtual {v8, v12, v11}, Lorg/xmlresolver/catalog/entry/Entry;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    const-string v11, "filesize"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ""

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v11, v2}, Lorg/xmlresolver/catalog/entry/Entry;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "filemodified"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    invoke-virtual {v3, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v2, v3}, Lorg/xmlresolver/catalog/entry/Entry;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v1, Lorg/xmlresolver/cache/ResourceCache;->i:Lorg/xmlresolver/cache/CacheEntryCatalog;

    invoke-virtual {v2, v8, v9}, Lorg/xmlresolver/cache/CacheEntryCatalog;->writeCacheEntry(Lorg/xmlresolver/catalog/entry/Entry;Ljava/io/File;)V

    if-eqz p2, :cond_7

    invoke-static/range {p2 .. p2}, Lorg/xmlresolver/utils/PublicId;->encodeURN(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/xmlresolver/cache/ResourceCache;->p(Ljava/net/URI;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/io/File;

    iget-object v8, v1, Lorg/xmlresolver/cache/ResourceCache;->d:Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".xml"

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v8, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object v12, v1, Lorg/xmlresolver/cache/ResourceCache;->i:Lorg/xmlresolver/cache/CacheEntryCatalog;

    invoke-virtual {v3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v13

    move-wide v8, v14

    move-object/from16 v14, p2

    move-object v15, v7

    move-wide/from16 v16, v8

    invoke-virtual/range {v12 .. v17}, Lorg/xmlresolver/cache/CacheEntryCatalog;->addPublic(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlresolver/catalog/entry/EntryPublic;

    move-result-object v2

    const-string v7, "contentType"

    invoke-virtual {v2, v7, v6}, Lorg/xmlresolver/catalog/entry/Entry;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "time"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, ""

    invoke-virtual {v7, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/xmlresolver/catalog/entry/Entry;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Lorg/xmlresolver/ResourceConnection;->getRedirect()Ljava/net/URI;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-virtual/range {p1 .. p1}, Lorg/xmlresolver/ResourceConnection;->getRedirect()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v6}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_4
    const/4 v6, 0x0

    :goto_1
    if-eqz v6, :cond_5

    const-string v7, "redir"

    invoke-virtual {v2, v7, v6}, Lorg/xmlresolver/catalog/entry/Entry;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    invoke-virtual/range {p1 .. p1}, Lorg/xmlresolver/ResourceConnection;->getEtag()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    const-string v7, "etag"

    invoke-virtual {v2, v7, v6}, Lorg/xmlresolver/catalog/entry/Entry;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    const-string v6, "filesize"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/xmlresolver/catalog/entry/Entry;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v6, "filemodified"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Lorg/xmlresolver/catalog/entry/Entry;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, v1, Lorg/xmlresolver/cache/ResourceCache;->i:Lorg/xmlresolver/cache/CacheEntryCatalog;

    invoke-virtual {v6, v2, v3}, Lorg/xmlresolver/cache/CacheEntryCatalog;->writeCacheEntry(Lorg/xmlresolver/catalog/entry/Entry;Ljava/io/File;)V
    :try_end_5
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_7
    :goto_2
    :try_start_6
    invoke-virtual {v4}, Lorg/xmlresolver/cache/ResourceCache$b;->c()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :catch_0
    move-object v3, v10

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    const/4 v3, 0x0

    :goto_3
    :try_start_7
    iget-object v2, v1, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v6, "error"

    const-string v7, "Failed to cache resource \'%s\' to \'%s\'"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v0

    invoke-interface {v2, v6, v7, v8}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_2
    iget-object v0, v1, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v2, "cache"

    const-string v3, "Failed to obtain SHA-256 digest?"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3, v6}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :goto_4
    :try_start_8
    invoke-virtual {v1, v5}, Lorg/xmlresolver/cache/ResourceCache;->s(Ljava/net/URI;)Lorg/xmlresolver/cache/CacheEntry;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    monitor-exit p0

    return-object v0

    :goto_5
    :try_start_9
    invoke-virtual {v4}, Lorg/xmlresolver/cache/ResourceCache$b;->c()V

    throw v0

    :catch_3
    iget-object v2, v1, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v3, "error"

    const-string v4, "Failed to obtain directory lock to cache resource: %s"

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual/range {p1 .. p1}, Lorg/xmlresolver/ResourceConnection;->getUri()Ljava/net/URI;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v0, v6

    invoke-interface {v2, v3, v4, v0}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final p(Ljava/net/URI;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    const-string p0, "SHA-256"

    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0

    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    new-instance p1, Ljava/lang/StringBuilder;

    array-length v0, p0

    const/4 v1, 0x2

    mul-int/2addr v0, v1

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v4, v1, :cond_0

    const-string v4, "0"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final q()V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    new-instance v3, Ljava/io/File;

    iget-object v4, v0, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    const-string v5, "cleanup"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    const-string v5, "cache"

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    sub-long v7, v1, v7

    goto :goto_0

    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/OutputStreamWriter;

    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    const-string v7, "The timestamp on this file indicates when the cache was last pruned.\n"

    invoke-virtual {v4, v7}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/OutputStreamWriter;->close()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/32 v7, 0x5265c01

    :goto_0
    const-wide/32 v9, 0x5265c00

    cmp-long v4, v7, v9

    if-lez v4, :cond_9

    iget-object v4, v0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v7, "Cleaning up expired cache entries"

    new-array v8, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v7, v8}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v4, v0, Lorg/xmlresolver/cache/ResourceCache;->e:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    const-string v7, "Failed to delete expired cache entry: "

    if-eqz v4, :cond_2

    array-length v8, v4

    move v9, v6

    :goto_1
    if-ge v9, v8, :cond_2

    aget-object v10, v4, v9

    invoke-virtual {v10}, Ljava/io/File;->lastModified()J

    move-result-wide v11

    sub-long v11, v1, v11

    const-wide/32 v13, 0x240c8400

    cmp-long v11, v11, v13

    if-lez v11, :cond_1

    iget-object v11, v0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    const-string v13, "Deleting expired entry: %s"

    invoke-interface {v11, v5, v13, v12}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, v0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    new-array v12, v6, [Ljava/lang/Object;

    invoke-interface {v11, v5, v10, v12}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_2
    iget-object v4, v0, Lorg/xmlresolver/cache/ResourceCache;->c:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    const-string v8, "."

    if-eqz v4, :cond_4

    array-length v9, v4

    move v10, v6

    :goto_2
    if-ge v10, v9, :cond_4

    aget-object v11, v4, v10

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v13

    invoke-virtual {v12, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/io/File;

    iget-object v14, v0, Lorg/xmlresolver/cache/ResourceCache;->d:Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".xml"

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v13

    if-nez v13, :cond_3

    new-instance v13, Ljava/io/File;

    iget-object v14, v0, Lorg/xmlresolver/cache/ResourceCache;->e:Ljava/io/File;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v13, v14, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    invoke-virtual {v11}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v12

    filled-new-array {v12}, [Ljava/lang/Object;

    move-result-object v12

    const-string v13, "Deleting expired data: %s"

    invoke-interface {v6, v5, v13, v12}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v13, v12, [Ljava/lang/Object;

    invoke-interface {v6, v5, v11, v13}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    add-int/lit8 v10, v10, 0x1

    const/4 v6, 0x0

    goto :goto_2

    :cond_4
    iget-object v4, v0, Lorg/xmlresolver/cache/ResourceCache;->d:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_8

    array-length v6, v4

    const/4 v9, 0x0

    :goto_3
    if-ge v9, v6, :cond_8

    aget-object v10, v4, v9

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    const/4 v13, 0x0

    invoke-virtual {v11, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lorg/xmlresolver/cache/ResourceCache;->c:Ljava/io/File;

    invoke-virtual {v12}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v12

    if-eqz v12, :cond_6

    move v14, v13

    move v15, v14

    :goto_4
    if-nez v14, :cond_5

    array-length v13, v12

    if-ge v15, v13, :cond_5

    aget-object v13, v12, v15

    invoke-virtual {v13}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v14

    move-object/from16 v16, v4

    const/4 v4, 0x0

    invoke-virtual {v13, v4, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v4, v16

    const/4 v13, 0x0

    goto :goto_4

    :cond_5
    move-object/from16 v16, v4

    goto :goto_5

    :cond_6
    move-object/from16 v16, v4

    const/4 v14, 0x0

    :goto_5
    if-nez v14, :cond_7

    iget-object v4, v0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    invoke-virtual {v10}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    filled-new-array {v11}, [Ljava/lang/Object;

    move-result-object v11

    const-string v12, "Deleting dangling entry: %s"

    invoke-interface {v4, v5, v12, v11}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v10}, Ljava/io/File;->delete()Z

    move-result v4

    if-nez v4, :cond_7

    iget-object v4, v0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v12, v11, [Ljava/lang/Object;

    invoke-interface {v4, v5, v10, v12}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v4, v16

    goto :goto_3

    :cond_8
    invoke-virtual {v3, v1, v2}, Ljava/io/File;->setLastModified(J)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v0, v0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v1, "Failed to update last modified time of cache cleanup file"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v5, v1, v2}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_9
    return-void

    :catch_0
    iget-object v0, v0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create cache cleanup file"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v5, v1, v2}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final r(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/cache/CacheEntry;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/xmlresolver/cache/ResourceCache;->u()V

    iget-object v1, p0, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object p0, p0, Lorg/xmlresolver/cache/ResourceCache;->i:Lorg/xmlresolver/cache/CacheEntryCatalog;

    iget-object p0, p0, Lorg/xmlresolver/cache/CacheEntryCatalog;->cached:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xmlresolver/cache/CacheEntry;

    iget-object v2, v1, Lorg/xmlresolver/cache/CacheEntry;->entry:Lorg/xmlresolver/catalog/entry/Entry;

    invoke-virtual {v2}, Lorg/xmlresolver/catalog/entry/Entry;->getType()Lorg/xmlresolver/catalog/entry/Entry$Type;

    move-result-object v2

    sget-object v3, Lorg/xmlresolver/catalog/entry/Entry$Type;->URI:Lorg/xmlresolver/catalog/entry/Entry$Type;

    if-ne v2, v3, :cond_2

    iget-object v2, v1, Lorg/xmlresolver/cache/CacheEntry;->uri:Ljava/net/URI;

    invoke-virtual {p1, v2}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v1, Lorg/xmlresolver/cache/CacheEntry;->entry:Lorg/xmlresolver/catalog/entry/Entry;

    check-cast v2, Lorg/xmlresolver/catalog/entry/EntryUri;

    if-eqz p2, :cond_3

    iget-object v3, v2, Lorg/xmlresolver/catalog/entry/EntryUri;->nature:Ljava/lang/String;

    if-eqz v3, :cond_3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_3
    if-eqz p3, :cond_4

    iget-object v2, v2, Lorg/xmlresolver/catalog/entry/EntryUri;->purpose:Ljava/lang/String;

    if-eqz v2, :cond_4

    invoke-virtual {p3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_4
    return-object v1

    :cond_5
    return-object v0
.end method

.method public removeCacheInfo(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/xmlresolver/cache/ResourceCache;->w(Ljava/lang/String;Z)V

    return-void
.end method

.method public reset()V
    .locals 25

    move-object/from16 v11, p0

    const-string v12, "error"

    iget-object v0, v11, Lorg/xmlresolver/cache/ResourceCache;->f:Lorg/xmlresolver/ResolverConfiguration;

    sget-object v1, Lorg/xmlresolver/ResolverFeature;->CACHE_ENABLED:Lorg/xmlresolver/ResolverFeature;

    invoke-interface {v0, v1}, Lorg/xmlresolver/ResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-object v1, v11, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    iput-object v1, v11, Lorg/xmlresolver/cache/ResourceCache;->h:Lorg/xmlresolver/cache/CacheParser;

    new-instance v0, Lorg/xmlresolver/cache/CacheInfo;

    const-string v14, ".*"

    const/4 v15, 0x0

    const-wide/32 v16, 0x93a80

    const-wide/16 v18, 0x3e8

    const-wide/32 v20, 0x9c4000

    const-wide/16 v22, -0x1

    move-object v13, v0

    invoke-direct/range {v13 .. v23}, Lorg/xmlresolver/cache/CacheInfo;-><init>(Ljava/lang/String;ZJJJJ)V

    iput-object v0, v11, Lorg/xmlresolver/cache/ResourceCache;->j:Lorg/xmlresolver/cache/CacheInfo;

    return-void

    :cond_0
    new-instance v0, Lorg/xmlresolver/cache/CacheParser;

    iget-object v2, v11, Lorg/xmlresolver/cache/ResourceCache;->f:Lorg/xmlresolver/ResolverConfiguration;

    invoke-direct {v0, v2}, Lorg/xmlresolver/cache/CacheParser;-><init>(Lorg/xmlresolver/ResolverConfiguration;)V

    iput-object v0, v11, Lorg/xmlresolver/cache/ResourceCache;->h:Lorg/xmlresolver/cache/CacheParser;

    new-instance v0, Lorg/xmlresolver/cache/CacheInfo;

    const-string v14, ".*"

    const/4 v15, 0x1

    const-wide/32 v16, 0x93a80

    const-wide/16 v18, 0x3e8

    const-wide/32 v20, 0x9c4000

    const-wide/16 v22, -0x1

    move-object v13, v0

    invoke-direct/range {v13 .. v23}, Lorg/xmlresolver/cache/CacheInfo;-><init>(Ljava/lang/String;ZJJJJ)V

    iput-object v0, v11, Lorg/xmlresolver/cache/ResourceCache;->j:Lorg/xmlresolver/cache/CacheInfo;

    iget-object v0, v11, Lorg/xmlresolver/cache/ResourceCache;->f:Lorg/xmlresolver/ResolverConfiguration;

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->CACHE_DIRECTORY:Lorg/xmlresolver/ResolverFeature;

    invoke-interface {v0, v2}, Lorg/xmlresolver/ResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_2

    iget-object v2, v11, Lorg/xmlresolver/cache/ResourceCache;->f:Lorg/xmlresolver/ResolverConfiguration;

    sget-object v3, Lorg/xmlresolver/ResolverFeature;->CACHE_UNDER_HOME:Lorg/xmlresolver/ResolverFeature;

    invoke-interface {v2, v3}, Lorg/xmlresolver/ResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v0, "user.home"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".xmlresolver.org/cache"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/.xmlresolver.org/cache"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    :goto_0
    if-nez v0, :cond_3

    return-void

    :cond_3
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v13, 0x1

    const/4 v14, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v2

    iput-object v2, v11, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    iget-object v3, v11, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v4, "cache"

    const-string v5, "Cache dir: %s"

    new-array v6, v13, [Ljava/lang/Object;

    aput-object v2, v6, v14

    invoke-interface {v3, v4, v5, v6}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v2, v11, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, v11, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_4
    iget-object v2, v11, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, v11, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v3, "Cannot create cache directory: %s"

    new-array v4, v13, [Ljava/lang/Object;

    iget-object v5, v11, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    aput-object v5, v4, v14

    invoke-interface {v2, v12, v3, v4}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v1, v11, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    iget-object v2, v11, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v3, "IOException getting cache directory: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v2, v12, v3, v0}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v1, v11, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    :cond_5
    :goto_1
    iget-object v0, v11, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    if-nez v0, :cond_6

    return-void

    :cond_6
    new-instance v0, Ljava/io/File;

    iget-object v1, v11, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    const-string v2, "control.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_9

    :try_start_1
    iget-object v1, v11, Lorg/xmlresolver/cache/ResourceCache;->f:Lorg/xmlresolver/ResolverConfiguration;

    sget-object v2, Lorg/xmlresolver/ResolverFeature;->XMLREADER_SUPPLIER:Lorg/xmlresolver/ResolverFeature;

    invoke-interface {v1, v2}, Lorg/xmlresolver/ResolverConfiguration;->getFeature(Lorg/xmlresolver/ResolverFeature;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/function/Supplier;

    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lorg/xml/sax/XMLReader;

    new-instance v9, Lorg/xmlresolver/cache/ResourceCache$a;

    const-wide/32 v3, 0x93a80

    const-wide/16 v5, 0x3e8

    const-wide/32 v7, 0x9c4000

    const-wide/16 v16, -0x1

    move-object v1, v9

    move-object/from16 v2, p0

    move-object v13, v9

    move-wide/from16 v9, v16

    invoke-direct/range {v1 .. v10}, Lorg/xmlresolver/cache/ResourceCache$a;-><init>(Lorg/xmlresolver/cache/ResourceCache;JJJJ)V

    invoke-interface {v15, v13}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-interface {v15, v1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    sget-object v0, Lorg/xmlresolver/cache/ResourceCache;->excludedPatterns:[Ljava/lang/String;

    array-length v1, v0
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    move v2, v14

    move v3, v2

    :goto_2
    if-ge v2, v1, :cond_8

    :try_start_3
    aget-object v4, v0, v2

    invoke-virtual {v11, v4}, Lorg/xmlresolver/cache/ResourceCache;->getCacheInfo(Ljava/lang/String;)Lorg/xmlresolver/cache/CacheInfo;

    move-result-object v5
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v5, :cond_7

    :try_start_4
    iget-object v3, v11, Lorg/xmlresolver/cache/ResourceCache;->g:Ljava/util/ArrayList;

    new-instance v5, Lorg/xmlresolver/cache/CacheInfo;

    invoke-direct {v5, v4, v14}, Lorg/xmlresolver/cache/CacheInfo;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    const/4 v3, 0x1

    goto :goto_3

    :catch_1
    move-exception v0

    const/4 v13, 0x1

    goto :goto_4

    :cond_7
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :catch_2
    move-exception v0

    move v13, v3

    goto :goto_4

    :cond_8
    move/from16 v18, v3

    const/4 v13, 0x1

    goto :goto_6

    :catch_3
    move-exception v0

    move v13, v14

    :goto_4
    const/16 v18, 0x1

    goto :goto_5

    :catch_4
    move-exception v0

    move v13, v14

    move/from16 v18, v13

    :goto_5
    iget-object v1, v11, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v2, "Failed to parse cache control file: %s"

    invoke-interface {v1, v12, v2, v0}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move/from16 v24, v18

    move/from16 v18, v13

    move/from16 v13, v24

    goto :goto_6

    :cond_9
    move v13, v14

    const/16 v18, 0x1

    :goto_6
    if-nez v13, :cond_a

    sget-object v0, Lorg/xmlresolver/cache/ResourceCache;->excludedPatterns:[Ljava/lang/String;

    array-length v1, v0

    move v2, v14

    :goto_7
    if-ge v2, v1, :cond_a

    aget-object v3, v0, v2

    iget-object v4, v11, Lorg/xmlresolver/cache/ResourceCache;->g:Ljava/util/ArrayList;

    new-instance v5, Lorg/xmlresolver/cache/CacheInfo;

    invoke-direct {v5, v3, v14}, Lorg/xmlresolver/cache/CacheInfo;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_a
    if-eqz v18, :cond_b

    invoke-virtual/range {p0 .. p0}, Lorg/xmlresolver/cache/ResourceCache;->y()V

    :cond_b
    return-void
.end method

.method public final s(Ljava/net/URI;)Lorg/xmlresolver/cache/CacheEntry;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    invoke-virtual {p0}, Lorg/xmlresolver/cache/ResourceCache;->u()V

    iget-object v1, p0, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    if-nez v1, :cond_1

    return-object v0

    :cond_1
    iget-object p0, p0, Lorg/xmlresolver/cache/ResourceCache;->i:Lorg/xmlresolver/cache/CacheEntryCatalog;

    iget-object p0, p0, Lorg/xmlresolver/cache/CacheEntryCatalog;->cached:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xmlresolver/cache/CacheEntry;

    iget-object v2, v1, Lorg/xmlresolver/cache/CacheEntry;->entry:Lorg/xmlresolver/catalog/entry/Entry;

    invoke-virtual {v2}, Lorg/xmlresolver/catalog/entry/Entry;->getType()Lorg/xmlresolver/catalog/entry/Entry$Type;

    move-result-object v2

    sget-object v3, Lorg/xmlresolver/catalog/entry/Entry$Type;->SYSTEM:Lorg/xmlresolver/catalog/entry/Entry$Type;

    if-ne v2, v3, :cond_2

    iget-object v2, v1, Lorg/xmlresolver/cache/CacheEntry;->uri:Ljava/net/URI;

    invoke-virtual {p1, v2}, Ljava/net/URI;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_3
    return-object v0
.end method

.method public final t(Lorg/xmlresolver/cache/CacheInfo;)V
    .locals 8

    new-instance v0, Lorg/xmlresolver/cache/ResourceCache$b;

    invoke-direct {v0, p0}, Lorg/xmlresolver/cache/ResourceCache$b;-><init>(Lorg/xmlresolver/cache/ResourceCache;)V

    :try_start_0
    invoke-virtual {v0}, Lorg/xmlresolver/cache/ResourceCache$b;->a()V

    iget-object v1, p0, Lorg/xmlresolver/cache/ResourceCache;->i:Lorg/xmlresolver/cache/CacheEntryCatalog;

    iget-object v2, p1, Lorg/xmlresolver/cache/CacheInfo;->uriPattern:Ljava/util/regex/Pattern;

    iget-wide v3, p1, Lorg/xmlresolver/cache/CacheInfo;->cacheSize:J

    iget-wide v5, p1, Lorg/xmlresolver/cache/CacheInfo;->cacheSpace:J

    iget-object v7, p0, Lorg/xmlresolver/cache/ResourceCache;->e:Ljava/io/File;

    invoke-virtual/range {v1 .. v7}, Lorg/xmlresolver/cache/CacheEntryCatalog;->flushCache(Ljava/util/regex/Pattern;JJLjava/io/File;)V

    invoke-virtual {v0}, Lorg/xmlresolver/cache/ResourceCache$b;->c()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    iget-object p0, p0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string v0, "error"

    const-string v1, "Failed to obtain lock to expire cache"

    invoke-interface {p0, v0, v1, p1}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public final declared-synchronized u()V
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lorg/xmlresolver/cache/ResourceCache;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/xmlresolver/cache/ResourceCache;->a:Z

    iget-object v1, p0, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    new-instance v1, Lorg/xmlresolver/cache/CacheEntryCatalog;

    iget-object v2, p0, Lorg/xmlresolver/CatalogManager;->resolverConfiguration:Lorg/xmlresolver/ResolverConfiguration;

    iget-object v3, p0, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4, v0}, Lorg/xmlresolver/cache/CacheEntryCatalog;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Z)V

    iput-object v1, p0, Lorg/xmlresolver/cache/ResourceCache;->i:Lorg/xmlresolver/cache/CacheEntryCatalog;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    const-string v3, "data"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/xmlresolver/cache/ResourceCache;->c:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    const-string v3, "entry"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/xmlresolver/cache/ResourceCache;->d:Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    const-string v3, "expired"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lorg/xmlresolver/cache/ResourceCache;->e:Ljava/io/File;

    iget-object v1, p0, Lorg/xmlresolver/cache/ResourceCache;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/xmlresolver/cache/ResourceCache;->c:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lorg/xmlresolver/cache/ResourceCache;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lorg/xmlresolver/cache/ResourceCache;->d:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lorg/xmlresolver/cache/ResourceCache;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lorg/xmlresolver/cache/ResourceCache;->e:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    iget-object v0, p0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v1, "cache"

    const-string v3, "Failed to setup data, entry, and expired directories in cache"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3, v2}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-object v4, p0, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_5
    :try_start_3
    new-instance v1, Lorg/xmlresolver/cache/ResourceCache$b;

    invoke-direct {v1, p0}, Lorg/xmlresolver/cache/ResourceCache$b;-><init>(Lorg/xmlresolver/cache/ResourceCache;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v1}, Lorg/xmlresolver/cache/ResourceCache$b;->a()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-virtual {p0}, Lorg/xmlresolver/cache/ResourceCache;->q()V

    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    invoke-virtual {v3, v2}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    invoke-virtual {v3, v2}, Ljavax/xml/parsers/SAXParserFactory;->setXIncludeAware(Z)V

    new-instance v0, Lorg/xmlresolver/cache/ResourceCache$c;

    iget-object v4, p0, Lorg/xmlresolver/cache/ResourceCache;->d:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lorg/xmlresolver/cache/ResourceCache$c;-><init>(Lorg/xmlresolver/cache/ResourceCache;Ljava/net/URI;)V

    iget-object v4, p0, Lorg/xmlresolver/cache/ResourceCache;->d:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_7

    array-length v5, v4

    move v6, v2

    :goto_0
    if-ge v6, v5, :cond_7

    aget-object v7, v4, v6

    invoke-virtual {v7}, Ljava/io/File;->canRead()Z

    move-result v8
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v8, :cond_6

    :try_start_6
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v8

    new-instance v9, Lorg/xml/sax/InputSource;

    invoke-virtual {v7}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v10}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v10

    invoke-virtual {v0, v10}, Lorg/xmlresolver/cache/ResourceCache$c;->a(Ljava/net/URI;)V

    invoke-virtual {v8, v9, v0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V
    :try_end_6
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xml/sax/SAXException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v8

    :try_start_7
    iget-object v9, p0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v10, "cache"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Failed to read cache entry: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ": "

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v8, v2, [Ljava/lang/Object;

    invoke-interface {v9, v10, v7, v8}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    invoke-virtual {v1}, Lorg/xmlresolver/cache/ResourceCache$b;->c()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    monitor-exit p0

    return-void

    :catch_1
    move-exception v0

    :try_start_8
    iget-object v1, p0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    const-string v3, "cache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to obtain lock on cache: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v3, v0, v2}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final v(Ljava/net/URI;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Ljava/net/URI;->toASCIIString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x5

    if-gt v0, v1, :cond_0

    return-object p0

    :cond_0
    const-string p0, ".bin"

    if-nez p2, :cond_1

    return-object p0

    :cond_1
    const-string v0, "application/xml-dtd"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ".dtd"

    if-eqz v0, :cond_2

    return-object v1

    :cond_2
    const-string v0, "application/xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p0, ".xml"

    return-object p0

    :cond_3
    const-string v0, "text/html"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "application/html+xml"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "text/plain"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_5

    return-object v1

    :cond_5
    const-string p0, ".txt"

    :cond_6
    return-object p0

    :cond_7
    :goto_0
    const-string p0, ".html"

    return-object p0
.end method

.method public final w(Ljava/lang/String;Z)V
    .locals 2

    invoke-virtual {p0, p1}, Lorg/xmlresolver/cache/ResourceCache;->getCacheInfo(Ljava/lang/String;)Lorg/xmlresolver/cache/CacheInfo;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/xmlresolver/cache/ResourceCache;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lorg/xmlresolver/cache/ResourceCache;->getCacheInfo(Ljava/lang/String;)Lorg/xmlresolver/cache/CacheInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    invoke-virtual {p0}, Lorg/xmlresolver/cache/ResourceCache;->y()V

    :cond_1
    return-void
.end method

.method public final x(Ljava/io/InputStream;Ljava/io/File;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p0, Ljava/io/FileOutputStream;

    invoke-direct {p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 p2, 0x2000

    new-array p2, p2, [B

    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, p2, v1, v0}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    return-void
.end method

.method public final y()V
    .locals 8

    const-string v0, "\'"

    iget-object v1, p0, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    if-nez v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/xmlresolver/cache/ResourceCache;->b:Ljava/io/File;

    const-string v3, "control.xml"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/nio/file/OpenOption;

    invoke-static {v3, v4}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    const-string v3, "<cache-control version=\'2\' xmlns=\'http://xmlresolver.org/ns/catalog\'>"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object v3, p0, Lorg/xmlresolver/cache/ResourceCache;->g:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/xmlresolver/cache/CacheInfo;

    iget-boolean v5, v4, Lorg/xmlresolver/cache/CacheInfo;->cache:Z

    if-eqz v5, :cond_1

    const-string v5, "<cache "

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v5, "<no-cache "

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uri=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Lorg/xmlresolver/cache/CacheInfo;->pattern:Ljava/lang/String;

    invoke-static {v6}, Lorg/xmlresolver/cache/CacheEntryCatalog;->xmlEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " delete-wait=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lorg/xmlresolver/cache/CacheInfo;->deleteWait:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " size=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lorg/xmlresolver/cache/CacheInfo;->cacheSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " space=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lorg/xmlresolver/cache/CacheInfo;->cacheSpace:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " max-age=\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lorg/xmlresolver/cache/CacheInfo;->maxAge:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "\'/>"

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "</cache-control>\n"

    invoke-virtual {v2, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/PrintStream;->close()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object p0, p0, Lorg/xmlresolver/CatalogManager;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v1, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "cache"

    const-string v2, "Failed to write cache control file: %s: %s"

    invoke-interface {p0, v1, v2, v0}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_2
    return-void
.end method
