.class public Lorg/xmlresolver/cache/CacheEntryCatalog;
.super Lorg/xmlresolver/catalog/entry/EntryCatalog;
.source "SourceFile"


# instance fields
.field public final a:Ljava/net/URI;

.field public final cached:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/xmlresolver/cache/CacheEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/xmlresolver/catalog/entry/EntryCatalog;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Z)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/xmlresolver/cache/CacheEntryCatalog;->cached:Ljava/util/ArrayList;

    iput-object p2, p0, Lorg/xmlresolver/cache/CacheEntryCatalog;->a:Ljava/net/URI;

    return-void
.end method

.method public static xmlEscape(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "&"

    const-string v1, "&amp;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, ">"

    const-string v1, "&gt;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\'"

    const-string v1, "&apos;"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public add(Lorg/xmlresolver/catalog/entry/Entry;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempt to add entry to cache catalog"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public add(Lorg/xmlresolver/catalog/entry/Entry;Ljava/lang/Long;)V
    .locals 6

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lorg/xmlresolver/cache/CacheEntryCatalog;->cached:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 3
    iget-object v1, p0, Lorg/xmlresolver/cache/CacheEntryCatalog;->cached:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/xmlresolver/cache/CacheEntry;

    iget-wide v1, v1, Lorg/xmlresolver/cache/CacheEntry;->time:J

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    sget-object v1, Lorg/xmlresolver/cache/CacheEntryCatalog$a;->a:[I

    invoke-virtual {p1}, Lorg/xmlresolver/catalog/entry/Entry;->getType()Lorg/xmlresolver/catalog/entry/Entry$Type;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    .line 5
    iget-object v1, p0, Lorg/xmlresolver/cache/CacheEntryCatalog;->cached:Ljava/util/ArrayList;

    new-instance v2, Lorg/xmlresolver/cache/CacheEntry;

    move-object v3, p1

    check-cast v3, Lorg/xmlresolver/catalog/entry/EntryPublic;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lorg/xmlresolver/cache/CacheEntry;-><init>(Lorg/xmlresolver/catalog/entry/EntryPublic;J)V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 6
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Attempt to cache unknown entry type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7
    :cond_3
    iget-object v1, p0, Lorg/xmlresolver/cache/CacheEntryCatalog;->cached:Ljava/util/ArrayList;

    new-instance v2, Lorg/xmlresolver/cache/CacheEntry;

    move-object v3, p1

    check-cast v3, Lorg/xmlresolver/catalog/entry/EntrySystem;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lorg/xmlresolver/cache/CacheEntry;-><init>(Lorg/xmlresolver/catalog/entry/EntrySystem;J)V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_2

    .line 8
    :cond_4
    iget-object v1, p0, Lorg/xmlresolver/cache/CacheEntryCatalog;->cached:Ljava/util/ArrayList;

    new-instance v2, Lorg/xmlresolver/cache/CacheEntry;

    move-object v3, p1

    check-cast v3, Lorg/xmlresolver/catalog/entry/EntryUri;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-direct {v2, v3, v4, v5}, Lorg/xmlresolver/cache/CacheEntry;-><init>(Lorg/xmlresolver/catalog/entry/EntryUri;J)V

    invoke-virtual {v1, v0, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 9
    :goto_2
    invoke-super {p0, p1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->add(Lorg/xmlresolver/catalog/entry/Entry;)V

    return-void
.end method

.method public addPublic(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlresolver/catalog/entry/EntryPublic;
    .locals 8

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    new-instance v7, Lorg/xmlresolver/catalog/entry/EntryPublic;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/Entry;->config:Lorg/xmlresolver/ResolverConfiguration;

    const/4 v3, 0x0

    const/4 v6, 0x1

    move-object v0, v7

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v6}, Lorg/xmlresolver/catalog/entry/EntryPublic;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v7, p1}, Lorg/xmlresolver/cache/CacheEntryCatalog;->add(Lorg/xmlresolver/catalog/entry/Entry;Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Invalid public entry (missing publicId or uri attribute)"

    invoke-virtual {p0, p2, p1}, Lorg/xmlresolver/cache/CacheEntryCatalog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, 0x0

    :goto_0
    return-object v7
.end method

.method public addSystem(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlresolver/catalog/entry/EntrySystem;
    .locals 7

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    new-instance v6, Lorg/xmlresolver/catalog/entry/EntrySystem;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/Entry;->config:Lorg/xmlresolver/ResolverConfiguration;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v2, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/xmlresolver/catalog/entry/EntrySystem;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Lorg/xmlresolver/cache/CacheEntryCatalog;->add(Lorg/xmlresolver/catalog/entry/Entry;Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Invalid system entry (missing systemId or uri attribute)"

    invoke-virtual {p0, p2, p1}, Lorg/xmlresolver/cache/CacheEntryCatalog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_0
    return-object v6
.end method

.method public addUri(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlresolver/catalog/entry/EntryUri;
    .locals 10

    move-object v0, p0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    new-instance v9, Lorg/xmlresolver/catalog/entry/EntryUri;

    iget-object v2, v0, Lorg/xmlresolver/catalog/entry/Entry;->config:Lorg/xmlresolver/ResolverConfiguration;

    const/4 v4, 0x0

    move-object v1, v9

    move-object v3, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v1 .. v8}, Lorg/xmlresolver/catalog/entry/EntryUri;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v9, v1}, Lorg/xmlresolver/cache/CacheEntryCatalog;->add(Lorg/xmlresolver/catalog/entry/Entry;Ljava/lang/Long;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "Invalid uri entry (missing name or uri attribute)"

    invoke-virtual {p0, v2, v1}, Lorg/xmlresolver/cache/CacheEntryCatalog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v9, 0x0

    :goto_0
    return-object v9
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/xmlresolver/cache/CacheEntryCatalog;->a:Ljava/net/URI;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;->locator:Lorg/xml/sax/Locator;

    const-string v2, ":"

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;->locator:Lorg/xml/sax/Locator;

    invoke-interface {v1}, Lorg/xml/sax/Locator;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/util/Formatter;

    invoke-direct {v1, v0}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;)V

    invoke-virtual {v1, p1, p2}, Ljava/util/Formatter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Formatter;

    iget-object p0, p0, Lorg/xmlresolver/catalog/entry/Entry;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "cache"

    invoke-interface {p0, v0, p1, p2}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public expire(Lorg/xmlresolver/cache/CacheEntry;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lorg/xmlresolver/cache/CacheEntry;->expired:Z

    iget-object v0, p0, Lorg/xmlresolver/cache/CacheEntryCatalog;->cached:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object p1, p1, Lorg/xmlresolver/cache/CacheEntry;->entry:Lorg/xmlresolver/catalog/entry/Entry;

    invoke-super {p0, p1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->remove(Lorg/xmlresolver/catalog/entry/Entry;)V

    return-void
.end method

.method public flushCache(Ljava/util/regex/Pattern;JJLjava/io/File;)V
    .locals 16

    move-object/from16 v1, p0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, v1, Lorg/xmlresolver/cache/CacheEntryCatalog;->cached:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    move v0, v6

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/xmlresolver/cache/CacheEntry;

    iget-object v10, v9, Lorg/xmlresolver/cache/CacheEntry;->uri:Ljava/net/URI;

    invoke-virtual {v10}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v10

    move-object/from16 v11, p1

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/regex/Matcher;->find()Z

    move-result v10

    const/4 v12, 0x1

    if-eqz v10, :cond_1

    add-int/lit8 v0, v0, 0x1

    iget-object v10, v9, Lorg/xmlresolver/cache/CacheEntry;->file:Ljava/io/File;

    invoke-virtual {v10}, Ljava/io/File;->length()J

    move-result-wide v13

    add-long/2addr v7, v13

    int-to-long v13, v0

    cmp-long v10, v13, p2

    if-gtz v10, :cond_0

    cmp-long v10, v7, p4

    if-gtz v10, :cond_0

    move v10, v12

    goto :goto_1

    :cond_0
    move v10, v6

    :goto_1
    move-wide v13, v7

    goto :goto_2

    :cond_1
    move-wide v13, v7

    move v10, v12

    :goto_2
    move v7, v0

    if-eqz v10, :cond_3

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v9, Lorg/xmlresolver/cache/CacheEntry;->entry:Lorg/xmlresolver/catalog/entry/Entry;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, v9, Lorg/xmlresolver/cache/CacheEntry;->entry:Lorg/xmlresolver/catalog/entry/Entry;

    invoke-virtual {v0}, Lorg/xmlresolver/catalog/entry/Entry;->getType()Lorg/xmlresolver/catalog/entry/Entry$Type;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, v9, Lorg/xmlresolver/cache/CacheEntry;->entry:Lorg/xmlresolver/catalog/entry/Entry;

    invoke-virtual {v0}, Lorg/xmlresolver/catalog/entry/Entry;->getType()Lorg/xmlresolver/catalog/entry/Entry$Type;

    move-result-object v0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v3, v0, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-object v0, v9, Lorg/xmlresolver/cache/CacheEntry;->entry:Lorg/xmlresolver/catalog/entry/Entry;

    invoke-virtual {v0}, Lorg/xmlresolver/catalog/entry/Entry;->getType()Lorg/xmlresolver/catalog/entry/Entry$Type;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    iget-object v8, v9, Lorg/xmlresolver/cache/CacheEntry;->entry:Lorg/xmlresolver/catalog/entry/Entry;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v15, p6

    goto :goto_3

    :cond_3
    iget-object v0, v1, Lorg/xmlresolver/catalog/entry/Entry;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v8, v9, Lorg/xmlresolver/cache/CacheEntry;->file:Ljava/io/File;

    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    iget-object v10, v9, Lorg/xmlresolver/cache/CacheEntry;->uri:Ljava/net/URI;

    filled-new-array {v8, v10}, [Ljava/lang/Object;

    move-result-object v8

    const-string v10, "cache"

    const-string v15, "Expiring %s (%s)"

    invoke-interface {v0, v10, v15, v8}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iput-boolean v12, v9, Lorg/xmlresolver/cache/CacheEntry;->expired:Z

    new-instance v0, Ljava/io/File;

    iget-object v8, v9, Lorg/xmlresolver/cache/CacheEntry;->entry:Lorg/xmlresolver/catalog/entry/Entry;

    iget-object v8, v8, Lorg/xmlresolver/catalog/entry/Entry;->baseURI:Ljava/net/URI;

    invoke-direct {v0, v8}, Ljava/io/File;-><init>(Ljava/net/URI;)V

    invoke-virtual {v0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v8

    new-instance v10, Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v15, p6

    invoke-direct {v10, v15, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    :try_start_0
    new-array v10, v12, [Ljava/nio/file/CopyOption;

    sget-object v12, Ljava/nio/file/StandardCopyOption;->REPLACE_EXISTING:Ljava/nio/file/StandardCopyOption;

    aput-object v12, v10, v6

    invoke-static {v8, v0, v10}, Ljava/nio/file/Files;->move(Ljava/nio/file/Path;Ljava/nio/file/Path;[Ljava/nio/file/CopyOption;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    iget-object v8, v1, Lorg/xmlresolver/catalog/entry/Entry;->logger:Lorg/xmlresolver/logging/ResolverLogger;

    iget-object v9, v9, Lorg/xmlresolver/cache/CacheEntry;->file:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    filled-new-array {v9, v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v9, "error"

    const-string v10, "Attempt to expire cache entry failed: %s: %s"

    invoke-interface {v8, v9, v10, v0}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_3
    move v0, v7

    move-wide v7, v13

    goto/16 :goto_0

    :cond_4
    iget-object v0, v1, Lorg/xmlresolver/cache/CacheEntryCatalog;->cached:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lorg/xmlresolver/cache/CacheEntryCatalog;->cached:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v1, Lorg/xmlresolver/catalog/entry/EntryCatalog;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v1, Lorg/xmlresolver/catalog/entry/EntryCatalog;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, v1, Lorg/xmlresolver/catalog/entry/EntryCatalog;->typedEntries:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/xmlresolver/catalog/entry/Entry$Type;

    iget-object v4, v1, Lorg/xmlresolver/catalog/entry/EntryCatalog;->typedEntries:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v4, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    :cond_5
    return-void
.end method

.method public writeCacheEntry(Lorg/xmlresolver/catalog/entry/Entry;Ljava/io/File;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    :try_start_0
    sget-object p2, Lorg/xmlresolver/cache/CacheEntryCatalog$a;->a:[I

    invoke-virtual {p1}, Lorg/xmlresolver/catalog/entry/Entry;->getType()Lorg/xmlresolver/catalog/entry/Entry$Type;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p2, p2, v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    const-string v2, "\'"

    if-eq p2, v1, :cond_2

    const/4 v1, 0x2

    const-string v3, "        uri=\'"

    const-string v4, "        xmlns:xr=\'http://xmlresolver.org/ns/catalog\'"

    if-eq p2, v1, :cond_1

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    :try_start_1
    const-string p2, "Attempt to cache unexpected entry type."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, p2, v1}, Lorg/xmlresolver/cache/CacheEntryCatalog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    move-object p0, p1

    check-cast p0, Lorg/xmlresolver/catalog/entry/EntryPublic;

    const-string p2, "<public xmlns=\'urn:oasis:names:tc:entity:xmlns:xml:catalog\'"

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        publicId=\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/EntryPublic;->publicId:Ljava/lang/String;

    invoke-static {v1}, Lorg/xmlresolver/cache/CacheEntryCatalog;->xmlEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/xmlresolver/catalog/entry/EntryResource;->uri:Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/xmlresolver/cache/CacheEntryCatalog;->xmlEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    move-object p0, p1

    check-cast p0, Lorg/xmlresolver/catalog/entry/EntrySystem;

    const-string p2, "<system xmlns=\'urn:oasis:names:tc:entity:xmlns:xml:catalog\'"

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        systemId=\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/EntrySystem;->systemId:Ljava/lang/String;

    invoke-static {v1}, Lorg/xmlresolver/cache/CacheEntryCatalog;->xmlEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/xmlresolver/catalog/entry/EntryResource;->uri:Ljava/net/URI;

    invoke-virtual {p0}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lorg/xmlresolver/cache/CacheEntryCatalog;->xmlEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    move-object p0, p1

    check-cast p0, Lorg/xmlresolver/catalog/entry/EntryUri;

    const-string p2, "<uri xmlns=\'urn:oasis:names:tc:entity:xmlns:xml:catalog\'"

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string p2, "     xmlns:xr=\'http://xmlresolver.org/ns/catalog\'"

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     name=\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/EntryUri;->name:Ljava/lang/String;

    invoke-static {v1}, Lorg/xmlresolver/cache/CacheEntryCatalog;->xmlEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     uri=\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/EntryResource;->uri:Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/xmlresolver/cache/CacheEntryCatalog;->xmlEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lorg/xmlresolver/catalog/entry/EntryUri;->nature:Ljava/lang/String;

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     nature=\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/EntryUri;->nature:Ljava/lang/String;

    invoke-static {v1}, Lorg/xmlresolver/cache/CacheEntryCatalog;->xmlEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_3
    iget-object p2, p0, Lorg/xmlresolver/catalog/entry/EntryUri;->purpose:Ljava/lang/String;

    if-eqz p2, :cond_4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     purpose=\'"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lorg/xmlresolver/catalog/entry/EntryUri;->purpose:Ljava/lang/String;

    invoke-static {p0}, Lorg/xmlresolver/cache/CacheEntryCatalog;->xmlEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    :goto_0
    invoke-virtual {p1}, Lorg/xmlresolver/catalog/entry/Entry;->getProperties()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_5
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/xmlresolver/catalog/entry/Entry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "     xr:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "=\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Lorg/xmlresolver/catalog/entry/Entry;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/xmlresolver/cache/CacheEntryCatalog;->xmlEscape(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const-string p0, "/>"

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2
    throw p0
.end method
