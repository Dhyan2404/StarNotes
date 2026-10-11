.class public Lorg/xmlresolver/catalog/entry/EntryCatalog;
.super Lorg/xmlresolver/catalog/entry/Entry;
.source "SourceFile"


# static fields
.field protected static final none:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/xmlresolver/catalog/entry/Entry;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected final entries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/xmlresolver/catalog/entry/Entry;",
            ">;"
        }
    .end annotation
.end field

.field protected locator:Lorg/xml/sax/Locator;

.field public final preferPublic:Z

.field protected final typedEntries:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lorg/xmlresolver/catalog/entry/Entry$Type;",
            "Ljava/util/ArrayList<",
            "Lorg/xmlresolver/catalog/entry/Entry;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lorg/xmlresolver/catalog/entry/EntryCatalog;->none:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/xmlresolver/catalog/entry/Entry;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;->entries:Ljava/util/ArrayList;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;->typedEntries:Ljava/util/HashMap;

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;->locator:Lorg/xml/sax/Locator;

    iput-boolean p4, p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;->preferPublic:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized add(Lorg/xmlresolver/catalog/entry/Entry;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;->typedEntries:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/xmlresolver/catalog/entry/Entry;->getType()Lorg/xmlresolver/catalog/entry/Entry$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;->typedEntries:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/xmlresolver/catalog/entry/Entry;->getType()Lorg/xmlresolver/catalog/entry/Entry$Type;

    move-result-object v1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;->typedEntries:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/xmlresolver/catalog/entry/Entry;->getType()Lorg/xmlresolver/catalog/entry/Entry$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public addDelegatePublic(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlresolver/catalog/entry/EntryDelegatePublic;
    .locals 8

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    new-instance v7, Lorg/xmlresolver/catalog/entry/EntryDelegatePublic;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/Entry;->config:Lorg/xmlresolver/ResolverConfiguration;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/xmlresolver/catalog/entry/EntryDelegatePublic;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v7}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->add(Lorg/xmlresolver/catalog/entry/Entry;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Invalid delegatePublic entry (missing publicIdStartString or catalog attribute)"

    invoke-virtual {p0, p2, p1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, 0x0

    :goto_0
    return-object v7
.end method

.method public addDelegateSystem(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryDelegateSystem;
    .locals 7

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    new-instance v6, Lorg/xmlresolver/catalog/entry/EntryDelegateSystem;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/Entry;->config:Lorg/xmlresolver/ResolverConfiguration;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/xmlresolver/catalog/entry/EntryDelegateSystem;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->add(Lorg/xmlresolver/catalog/entry/Entry;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Invalid delegateSystem entry (missing systemIdStartString or catalog attribute)"

    invoke-virtual {p0, p2, p1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_0
    return-object v6
.end method

.method public addDelegateUri(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryDelegateUri;
    .locals 7

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    new-instance v6, Lorg/xmlresolver/catalog/entry/EntryDelegateUri;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/Entry;->config:Lorg/xmlresolver/ResolverConfiguration;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/xmlresolver/catalog/entry/EntryDelegateUri;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->add(Lorg/xmlresolver/catalog/entry/Entry;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Invalid delegateURI entry (missing uriStartString or catalog attribute)"

    invoke-virtual {p0, p2, p1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_0
    return-object v6
.end method

.method public addDoctype(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryDoctype;
    .locals 7

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    new-instance v6, Lorg/xmlresolver/catalog/entry/EntryDoctype;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/Entry;->config:Lorg/xmlresolver/ResolverConfiguration;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/xmlresolver/catalog/entry/EntryDoctype;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->add(Lorg/xmlresolver/catalog/entry/Entry;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Invalid doctype entry (missing name or uri attribute)"

    invoke-virtual {p0, p2, p1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_0
    return-object v6
.end method

.method public addDocument(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryDocument;
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Lorg/xmlresolver/catalog/entry/EntryDocument;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/Entry;->config:Lorg/xmlresolver/ResolverConfiguration;

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/xmlresolver/catalog/entry/EntryDocument;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->add(Lorg/xmlresolver/catalog/entry/Entry;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Invalid document entry (missing uri attribute)"

    invoke-virtual {p0, p2, p1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public addDtdDecl(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryDtddecl;
    .locals 7

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    new-instance v6, Lorg/xmlresolver/catalog/entry/EntryDtddecl;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/Entry;->config:Lorg/xmlresolver/ResolverConfiguration;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/xmlresolver/catalog/entry/EntryDtddecl;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->add(Lorg/xmlresolver/catalog/entry/Entry;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Invalid dtddecl entry (missing publicId or uri attribute)"

    invoke-virtual {p0, p2, p1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_0
    return-object v6
.end method

.method public addEntity(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryEntity;
    .locals 7

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    new-instance v6, Lorg/xmlresolver/catalog/entry/EntryEntity;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/Entry;->config:Lorg/xmlresolver/ResolverConfiguration;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/xmlresolver/catalog/entry/EntryEntity;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->add(Lorg/xmlresolver/catalog/entry/Entry;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Invalid entity entry (missing name or uri attribute)"

    invoke-virtual {p0, p2, p1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_0
    return-object v6
.end method

.method public addGroup(Ljava/net/URI;Ljava/lang/String;Z)Lorg/xmlresolver/catalog/entry/EntryGroup;
    .locals 2

    new-instance v0, Lorg/xmlresolver/catalog/entry/EntryGroup;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/Entry;->config:Lorg/xmlresolver/ResolverConfiguration;

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/xmlresolver/catalog/entry/EntryGroup;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Z)V

    invoke-virtual {p0, v0}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->add(Lorg/xmlresolver/catalog/entry/Entry;)V

    return-object v0
.end method

.method public addLinktype(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryLinktype;
    .locals 7

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    new-instance v6, Lorg/xmlresolver/catalog/entry/EntryLinktype;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/Entry;->config:Lorg/xmlresolver/ResolverConfiguration;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/xmlresolver/catalog/entry/EntryLinktype;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->add(Lorg/xmlresolver/catalog/entry/Entry;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Invalid linktype entry (missing name or uri attribute)"

    invoke-virtual {p0, p2, p1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_0
    return-object v6
.end method

.method public addNextCatalog(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryNextCatalog;
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Lorg/xmlresolver/catalog/entry/EntryNextCatalog;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/Entry;->config:Lorg/xmlresolver/ResolverConfiguration;

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/xmlresolver/catalog/entry/EntryNextCatalog;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->add(Lorg/xmlresolver/catalog/entry/Entry;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Invalid nextCatalog entry (missing catalog attribute)"

    invoke-virtual {p0, p2, p1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public addNotation(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryNotation;
    .locals 7

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    new-instance v6, Lorg/xmlresolver/catalog/entry/EntryNotation;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/Entry;->config:Lorg/xmlresolver/ResolverConfiguration;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/xmlresolver/catalog/entry/EntryNotation;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->add(Lorg/xmlresolver/catalog/entry/Entry;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Invalid notation entry (missing name or uri attribute)"

    invoke-virtual {p0, p2, p1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_0
    return-object v6
.end method

.method public addPublic(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlresolver/catalog/entry/EntryPublic;
    .locals 8

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    new-instance v7, Lorg/xmlresolver/catalog/entry/EntryPublic;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/Entry;->config:Lorg/xmlresolver/ResolverConfiguration;

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move v6, p5

    invoke-direct/range {v0 .. v6}, Lorg/xmlresolver/catalog/entry/EntryPublic;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-virtual {p0, v7}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->add(Lorg/xmlresolver/catalog/entry/Entry;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Invalid public entry (missing publicId or uri attribute)"

    invoke-virtual {p0, p2, p1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v7, 0x0

    :goto_0
    return-object v7
.end method

.method public addRewriteSystem(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryRewriteSystem;
    .locals 7

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    new-instance v6, Lorg/xmlresolver/catalog/entry/EntryRewriteSystem;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/Entry;->config:Lorg/xmlresolver/ResolverConfiguration;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/xmlresolver/catalog/entry/EntryRewriteSystem;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->add(Lorg/xmlresolver/catalog/entry/Entry;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Invalid rewriteSystem entry (missing systemIdStartString or prefix attribute)"

    invoke-virtual {p0, p2, p1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_0
    return-object v6
.end method

.method public addRewriteUri(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryRewriteUri;
    .locals 7

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    new-instance v6, Lorg/xmlresolver/catalog/entry/EntryRewriteUri;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/Entry;->config:Lorg/xmlresolver/ResolverConfiguration;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/xmlresolver/catalog/entry/EntryRewriteUri;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->add(Lorg/xmlresolver/catalog/entry/Entry;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Invalid rewriteURI entry (missing uriStartString or prefix attribute)"

    invoke-virtual {p0, p2, p1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_0
    return-object v6
.end method

.method public addSgmlDecl(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntrySgmldecl;
    .locals 2

    if-eqz p3, :cond_0

    new-instance v0, Lorg/xmlresolver/catalog/entry/EntrySgmldecl;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/Entry;->config:Lorg/xmlresolver/ResolverConfiguration;

    invoke-direct {v0, v1, p1, p2, p3}, Lorg/xmlresolver/catalog/entry/EntrySgmldecl;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->add(Lorg/xmlresolver/catalog/entry/Entry;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Invalid sgmldecl entry (uri attribute)"

    invoke-virtual {p0, p2, p1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public addSystem(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntrySystem;
    .locals 7

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    new-instance v6, Lorg/xmlresolver/catalog/entry/EntrySystem;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/Entry;->config:Lorg/xmlresolver/ResolverConfiguration;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/xmlresolver/catalog/entry/EntrySystem;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->add(Lorg/xmlresolver/catalog/entry/Entry;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Invalid system entry (missing systemId or uri attribute)"

    invoke-virtual {p0, p2, p1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_0
    return-object v6
.end method

.method public addSystemSuffix(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntrySystemSuffix;
    .locals 7

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    new-instance v6, Lorg/xmlresolver/catalog/entry/EntrySystemSuffix;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/Entry;->config:Lorg/xmlresolver/ResolverConfiguration;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/xmlresolver/catalog/entry/EntrySystemSuffix;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->add(Lorg/xmlresolver/catalog/entry/Entry;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Invalid systemSuffix entry (missing systemIdSuffix or uri attribute)"

    invoke-virtual {p0, p2, p1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_0
    return-object v6
.end method

.method public addUri(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryUri;
    .locals 9

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    new-instance v8, Lorg/xmlresolver/catalog/entry/EntryUri;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/Entry;->config:Lorg/xmlresolver/ResolverConfiguration;

    move-object v0, v8

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lorg/xmlresolver/catalog/entry/EntryUri;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v8}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->add(Lorg/xmlresolver/catalog/entry/Entry;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Invalid uri entry (missing name or uri attribute)"

    invoke-virtual {p0, p2, p1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v8, 0x0

    :goto_0
    return-object v8
.end method

.method public addUriSuffix(Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlresolver/catalog/entry/EntryUriSuffix;
    .locals 7

    if-eqz p3, :cond_0

    if-eqz p4, :cond_0

    new-instance v6, Lorg/xmlresolver/catalog/entry/EntryUriSuffix;

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/Entry;->config:Lorg/xmlresolver/ResolverConfiguration;

    move-object v0, v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/xmlresolver/catalog/entry/EntryUriSuffix;-><init>(Lorg/xmlresolver/ResolverConfiguration;Ljava/net/URI;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v6}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->add(Lorg/xmlresolver/catalog/entry/Entry;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Object;

    const-string p2, "Invalid uriSuffix entry (missing uriStartString or uri attribute)"

    invoke-virtual {p0, p2, p1}, Lorg/xmlresolver/catalog/entry/EntryCatalog;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v6, 0x0

    :goto_0
    return-object v6
.end method

.method public declared-synchronized entries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/xmlresolver/catalog/entry/Entry;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;->entries:Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized entries(Lorg/xmlresolver/catalog/entry/Entry$Type;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlresolver/catalog/entry/Entry$Type;",
            ")",
            "Ljava/util/List<",
            "Lorg/xmlresolver/catalog/entry/Entry;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;->typedEntries:Ljava/util/HashMap;

    sget-object v1, Lorg/xmlresolver/catalog/entry/EntryCatalog;->none:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public varargs error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/xmlresolver/catalog/entry/Entry;->baseURI:Ljava/net/URI;

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

    const-string v0, "error"

    invoke-interface {p0, v0, p1, p2}, Lorg/xmlresolver/logging/ResolverLogger;->log(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public getType()Lorg/xmlresolver/catalog/entry/Entry$Type;
    .locals 0

    sget-object p0, Lorg/xmlresolver/catalog/entry/Entry$Type;->CATALOG:Lorg/xmlresolver/catalog/entry/Entry$Type;

    return-object p0
.end method

.method public declared-synchronized remove(Lorg/xmlresolver/catalog/entry/Entry;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;->entries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;->typedEntries:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/xmlresolver/catalog/entry/Entry;->getType()Lorg/xmlresolver/catalog/entry/Entry$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;->typedEntries:Ljava/util/HashMap;

    invoke-virtual {p1}, Lorg/xmlresolver/catalog/entry/Entry;->getType()Lorg/xmlresolver/catalog/entry/Entry$Type;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setLocator(Lorg/xml/sax/Locator;)V
    .locals 0

    iput-object p1, p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;->locator:Lorg/xml/sax/Locator;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "catalog prefer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lorg/xmlresolver/catalog/entry/EntryCatalog;->preferPublic:Z

    if-eqz p0, :cond_0

    const-string p0, "public"

    goto :goto_0

    :cond_0
    const-string p0, "system"

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
